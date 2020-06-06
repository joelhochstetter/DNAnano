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
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
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
	<22.870302, 16.591410, -1.282440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.635056, 16.901665, -1.374095>,  <22.493908, 17.087818, -1.429088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.635056, 16.901665, -1.374095>,  <22.870302, 16.591410, -1.282440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.635056, 16.901665, -1.374095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751251, -0.418961, 0.509994,
		0.299572, 0.472075, 0.829097,
		-0.588115, 0.775640, -0.229137,
		22.458622, 17.134357, -1.442836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.570036, 16.987627, -0.696666>,  <22.870302, 16.591410, -1.282440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.570036, 16.987627, -0.696666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.336437, 16.977306, -1.021204>,  <22.196278, 16.971113, -1.215927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.336437, 16.977306, -1.021204>,  <22.570036, 16.987627, -0.696666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.336437, 16.977306, -1.021204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746515, -0.375515, 0.549275,
		-0.318845, 0.926457, 0.200039,
		-0.583998, -0.025802, -0.811345,
		22.161238, 16.969566, -1.264608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.933344, 17.295059, -0.545532>,  <22.570036, 16.987627, -0.696666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.933344, 17.295059, -0.545532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.859070, 17.052322, -0.854663>,  <21.814505, 16.906679, -1.040142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.859070, 17.052322, -0.854663>,  <21.933344, 17.295059, -0.545532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.859070, 17.052322, -0.854663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761885, -0.407768, 0.503246,
		-0.620526, 0.682251, -0.386628,
		-0.185686, -0.606843, -0.772828,
		21.803364, 16.870270, -1.086512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.260229, 17.193518, -0.771127>,  <21.933344, 17.295059, -0.545532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.260229, 17.193518, -0.771127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.500149, 16.874996, -0.802468>,  <21.644100, 16.683884, -0.821273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.500149, 16.874996, -0.802468>,  <21.260229, 17.193518, -0.771127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.500149, 16.874996, -0.802468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652523, -0.543461, 0.528076,
		-0.463091, -0.265614, -0.845575,
		0.599801, -0.796304, -0.078352,
		21.680088, 16.636105, -0.825974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.913425, 16.593136, -1.157198>,  <21.260229, 17.193518, -0.771127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.913425, 16.593136, -1.157198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.184814, 16.479866, -0.886056>,  <21.347649, 16.411903, -0.723371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.184814, 16.479866, -0.886056>,  <20.913425, 16.593136, -1.157198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.184814, 16.479866, -0.886056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690192, -0.561751, 0.456148,
		0.251615, -0.777334, -0.576578,
		0.678472, -0.283176, 0.677854,
		21.388357, 16.394913, -0.682699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.841488, 15.835099, -1.085072>,  <20.913425, 16.593136, -1.157198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.841488, 15.835099, -1.085072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.000168, 15.987804, -0.751153>,  <21.095375, 16.079428, -0.550802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.000168, 15.987804, -0.751153>,  <20.841488, 15.835099, -1.085072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.000168, 15.987804, -0.751153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663055, -0.509741, 0.548198,
		0.634813, -0.770986, 0.050917,
		0.396699, 0.381764, 0.834797,
		21.119177, 16.102333, -0.500714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.834686, 15.411978, -0.569153>,  <20.841488, 15.835099, -1.085072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.834686, 15.411978, -0.569153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.860294, 15.751247, -0.358819>,  <20.875660, 15.954809, -0.232619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.860294, 15.751247, -0.358819>,  <20.834686, 15.411978, -0.569153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.860294, 15.751247, -0.358819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480102, -0.435755, 0.761328,
		0.874874, -0.301194, 0.379313,
		0.064020, 0.848175, 0.525834,
		20.879499, 16.005699, -0.201069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.928030, 15.261710, 0.216730>,  <20.834686, 15.411978, -0.569153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.928030, 15.261710, 0.216730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.753830, 15.619892, 0.179852>,  <20.649309, 15.834801, 0.157726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.753830, 15.619892, 0.179852>,  <20.928030, 15.261710, 0.216730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.753830, 15.619892, 0.179852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536663, -0.176041, 0.825229,
		0.722725, 0.408866, 0.557223,
		-0.435502, 0.895454, -0.092194,
		20.623178, 15.888529, 0.152194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.957527, 15.652022, 0.919321>,  <20.928030, 15.261710, 0.216730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.957527, 15.652022, 0.919321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.634140, 15.749489, 0.705029>,  <20.440107, 15.807969, 0.576454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.634140, 15.749489, 0.705029>,  <20.957527, 15.652022, 0.919321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.634140, 15.749489, 0.705029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571819, -0.109768, 0.813003,
		0.139296, 0.963627, 0.228077,
		-0.808468, 0.243667, -0.535730,
		20.391600, 15.822589, 0.544310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.692881, 16.323093, 1.134823>,  <20.957527, 15.652022, 0.919321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.692881, 16.323093, 1.134823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.453426, 16.029175, 1.007253>,  <20.309753, 15.852823, 0.930712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.453426, 16.029175, 1.007253>,  <20.692881, 16.323093, 1.134823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.453426, 16.029175, 1.007253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466599, -0.003748, 0.884461,
		-0.651094, 0.678277, -0.340612,
		-0.598633, -0.734796, -0.318924,
		20.273836, 15.808736, 0.911576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.004135, 16.605835, 1.104080>,  <20.692881, 16.323093, 1.134823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.004135, 16.605835, 1.104080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.018959, 16.220135, 1.209035>,  <20.027853, 15.988714, 1.272007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.018959, 16.220135, 1.209035>,  <20.004135, 16.605835, 1.104080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.018959, 16.220135, 1.209035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588558, 0.191136, 0.785536,
		-0.807605, -0.183539, -0.560435,
		0.037058, -0.964251, 0.262386,
		20.030077, 15.930860, 1.287750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.351303, 16.449665, 1.145695>,  <20.004135, 16.605835, 1.104080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.351303, 16.449665, 1.145695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.545296, 16.180408, 1.369005>,  <19.661692, 16.018854, 1.502991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.545296, 16.180408, 1.369005>,  <19.351303, 16.449665, 1.145695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.545296, 16.180408, 1.369005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477661, 0.330843, 0.813869,
		-0.732552, -0.661378, -0.161081,
		0.484983, -0.673143, 0.558274,
		19.690790, 15.978466, 1.536487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.942551, 16.317503, 1.623170>,  <19.351303, 16.449665, 1.145695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.942551, 16.317503, 1.623170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.270649, 16.185863, 1.810312>,  <19.467508, 16.106880, 1.922597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.270649, 16.185863, 1.810312>,  <18.942551, 16.317503, 1.623170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.270649, 16.185863, 1.810312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362726, 0.333179, 0.870300,
		-0.442294, -0.883564, 0.153916,
		0.820247, -0.329099, 0.467854,
		19.516724, 16.087133, 1.950668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.726065, 16.040197, 2.272810>,  <18.942551, 16.317503, 1.623170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.726065, 16.040197, 2.272810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.099293, 16.158550, 2.354624>,  <19.323229, 16.229563, 2.403712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.099293, 16.158550, 2.354624>,  <18.726065, 16.040197, 2.272810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.099293, 16.158550, 2.354624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320920, 0.427980, 0.844893,
		0.162451, -0.853983, 0.494289,
		0.933070, 0.295881, 0.204534,
		19.379213, 16.247314, 2.415984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.999239, 15.857384, 2.987568>,  <18.726065, 16.040197, 2.272810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.999239, 15.857384, 2.987568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.178886, 16.189449, 2.855435>,  <19.286674, 16.388689, 2.776155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.178886, 16.189449, 2.855435>,  <18.999239, 15.857384, 2.987568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.178886, 16.189449, 2.855435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235582, 0.466663, 0.852483,
		0.861855, -0.305046, 0.405159,
		0.449119, 0.830164, -0.330333,
		19.313622, 16.438499, 2.756335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.444105, 16.045416, 3.558123>,  <18.999239, 15.857384, 2.987568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.444105, 16.045416, 3.558123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.342651, 16.360489, 3.333544>,  <19.281780, 16.549534, 3.198796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.342651, 16.360489, 3.333544>,  <19.444105, 16.045416, 3.558123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.342651, 16.360489, 3.333544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313452, 0.482180, 0.818077,
		0.915105, 0.383478, 0.124605,
		-0.253633, 0.787684, -0.561448,
		19.266562, 16.596794, 3.165109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.732616, 16.667986, 3.833288>,  <19.444105, 16.045416, 3.558123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.732616, 16.667986, 3.833288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.402390, 16.751492, 3.623581>,  <19.204254, 16.801596, 3.497757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.402390, 16.751492, 3.623581>,  <19.732616, 16.667986, 3.833288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.402390, 16.751492, 3.623581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341675, 0.554468, 0.758830,
		0.449106, 0.805594, -0.386421,
		-0.825567, 0.208765, -0.524267,
		19.154718, 16.814121, 3.466301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.667934, 17.434998, 3.727302>,  <19.732616, 16.667986, 3.833288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.667934, 17.434998, 3.727302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.327953, 17.225323, 3.748492>,  <19.123964, 17.099518, 3.761207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.327953, 17.225323, 3.748492>,  <19.667934, 17.434998, 3.727302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.327953, 17.225323, 3.748492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206270, 0.423605, 0.882050,
		-0.484800, 0.738774, -0.468169,
		-0.849954, -0.524187, 0.052977,
		19.072968, 17.068068, 3.764386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.112326, 17.938032, 3.860236>,  <19.667934, 17.434998, 3.727302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.112326, 17.938032, 3.860236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.020134, 17.567421, 3.979182>,  <18.964819, 17.345055, 4.050550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.020134, 17.567421, 3.979182>,  <19.112326, 17.938032, 3.860236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.020134, 17.567421, 3.979182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239153, 0.350155, 0.905648,
		-0.943231, 0.137617, -0.302285,
		-0.230479, -0.926528, 0.297365,
		18.950991, 17.289463, 4.068391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.356169, 17.927923, 4.032992>,  <19.112326, 17.938032, 3.860236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.356169, 17.927923, 4.032992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.623405, 17.692577, 4.215194>,  <18.783747, 17.551371, 4.324514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.623405, 17.692577, 4.215194>,  <18.356169, 17.927923, 4.032992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.623405, 17.692577, 4.215194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095691, 0.539149, 0.836757,
		-0.737900, -0.602618, 0.303899,
		0.668092, -0.588363, 0.455503,
		18.823833, 17.516069, 4.351845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.128780, 17.534811, 4.761188>,  <18.356169, 17.927923, 4.032992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.128780, 17.534811, 4.761188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.527885, 17.561054, 4.756029>,  <18.767349, 17.576801, 4.752934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.527885, 17.561054, 4.756029>,  <18.128780, 17.534811, 4.761188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.527885, 17.561054, 4.756029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006117, 0.281635, 0.959502,
		0.066583, -0.957276, 0.281406,
		0.997762, 0.065608, -0.012896,
		18.827213, 17.580736, 4.752160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.303062, 17.249130, 5.357228>,  <18.128780, 17.534811, 4.761188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.303062, 17.249130, 5.357228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.620365, 17.472595, 5.260364>,  <18.810747, 17.606674, 5.202245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.620365, 17.472595, 5.260364>,  <18.303062, 17.249130, 5.357228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.620365, 17.472595, 5.260364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172863, 0.174719, 0.969325,
		0.583835, -0.810783, 0.042025,
		0.793256, 0.558662, -0.242161,
		18.858341, 17.640194, 5.187715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.790373, 17.078495, 5.953627>,  <18.303062, 17.249130, 5.357228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.790373, 17.078495, 5.953627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.894535, 17.424103, 5.781274>,  <18.957031, 17.631468, 5.677862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.894535, 17.424103, 5.781274>,  <18.790373, 17.078495, 5.953627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.894535, 17.424103, 5.781274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462643, 0.280043, 0.841152,
		0.847438, -0.418384, -0.326809,
		0.260404, 0.864020, -0.430882,
		18.972656, 17.683310, 5.652009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.467817, 17.278305, 6.308129>,  <18.790373, 17.078495, 5.953627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.467817, 17.278305, 6.308129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.346115, 17.618999, 6.137497>,  <19.273094, 17.823416, 6.035118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.346115, 17.618999, 6.137497>,  <19.467817, 17.278305, 6.308129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.346115, 17.618999, 6.137497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414465, 0.521567, 0.745779,
		0.857699, 0.050104, -0.511705,
		-0.304255, 0.851738, -0.426581,
		19.254839, 17.874521, 6.009522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.130634, 17.627632, 6.195786>,  <19.467817, 17.278305, 6.308129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.130634, 17.627632, 6.195786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.788929, 17.826881, 6.255257>,  <19.583906, 17.946432, 6.290939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.788929, 17.826881, 6.255257>,  <20.130634, 17.627632, 6.195786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.788929, 17.826881, 6.255257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422111, 0.497767, 0.757661,
		0.303404, 0.710001, -0.635488,
		-0.854265, 0.498124, 0.148675,
		19.532650, 17.976318, 6.299859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.089836, 17.816320, 5.477252>,  <20.130634, 17.627632, 6.195786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.089836, 17.816320, 5.477252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.803272, 18.001282, 5.686227>,  <19.631334, 18.112259, 5.811612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.803272, 18.001282, 5.686227>,  <20.089836, 17.816320, 5.477252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.803272, 18.001282, 5.686227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041284, 0.719413, -0.693355,
		-0.696459, -0.518293, -0.496303,
		-0.716408, 0.462404, 0.522439,
		19.588350, 18.140003, 5.842958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.640486, 18.168371, 5.053134>,  <20.089836, 17.816320, 5.477252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.640486, 18.168371, 5.053134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.701786, 18.311157, 5.421719>,  <19.738565, 18.396830, 5.642869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.701786, 18.311157, 5.421719>,  <19.640486, 18.168371, 5.053134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.701786, 18.311157, 5.421719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423583, 0.818736, -0.387618,
		-0.892800, 0.449718, -0.025734,
		0.153249, 0.356966, 0.921461,
		19.747761, 18.418247, 5.698157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.501717, 18.780630, 4.914001>,  <19.640486, 18.168371, 5.053134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.501717, 18.780630, 4.914001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.757366, 18.780457, 5.221642>,  <19.910755, 18.780354, 5.406228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.757366, 18.780457, 5.221642>,  <19.501717, 18.780630, 4.914001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.757366, 18.780457, 5.221642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581806, 0.654297, -0.483111,
		-0.503014, 0.756237, 0.418428,
		0.639123, -0.000432, 0.769104,
		19.949102, 18.780327, 5.452374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.496555, 19.458557, 5.344389>,  <19.501717, 18.780630, 4.914001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.496555, 19.458557, 5.344389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.842651, 19.258503, 5.358388>,  <20.050308, 19.138472, 5.366787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.842651, 19.258503, 5.358388>,  <19.496555, 19.458557, 5.344389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.842651, 19.258503, 5.358388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485194, 0.817722, -0.309705,
		0.126276, 0.284949, 0.950189,
		0.865240, -0.500134, 0.034997,
		20.102224, 19.108463, 5.368887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.973490, 19.867575, 5.772976>,  <19.496555, 19.458557, 5.344389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.973490, 19.867575, 5.772976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.193382, 19.625156, 5.543017>,  <20.325317, 19.479706, 5.405042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.193382, 19.625156, 5.543017>,  <19.973490, 19.867575, 5.772976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.193382, 19.625156, 5.543017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573023, 0.774353, -0.268368,
		0.607816, -0.181898, 0.772964,
		0.549732, -0.606044, -0.574896,
		20.358301, 19.443342, 5.370549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.730417, 19.972918, 5.870904>,  <19.973490, 19.867575, 5.772976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.730417, 19.972918, 5.870904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.732407, 19.777817, 5.521717>,  <20.733601, 19.660757, 5.312204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.732407, 19.777817, 5.521717>,  <20.730417, 19.972918, 5.870904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.732407, 19.777817, 5.521717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822750, 0.498187, -0.273665,
		0.568382, -0.716874, 0.403774,
		0.004972, -0.487751, -0.872969,
		20.733898, 19.631491, 5.259827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.958042, 20.027636, 6.560714>,  <20.730417, 19.972918, 5.870904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.958042, 20.027636, 6.560714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.088280, 19.721458, 6.338693>,  <21.166422, 19.537752, 6.205480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.088280, 19.721458, 6.338693>,  <20.958042, 20.027636, 6.560714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.088280, 19.721458, 6.338693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708889, -0.190839, 0.679011,
		-0.625670, -0.614555, 0.480478,
		0.325596, -0.765443, -0.555054,
		21.185959, 19.491825, 6.172176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.059080, 19.424294, 6.900512>,  <20.958042, 20.027636, 6.560714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.059080, 19.424294, 6.900512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.320541, 19.362583, 6.604152>,  <21.477419, 19.325558, 6.426335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.320541, 19.362583, 6.604152>,  <21.059080, 19.424294, 6.900512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.320541, 19.362583, 6.604152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679073, -0.312576, 0.664195,
		-0.334061, -0.937280, -0.099548,
		0.653653, -0.154281, -0.740901,
		21.516638, 19.316299, 6.381882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.402111, 18.829498, 7.055338>,  <21.059080, 19.424294, 6.900512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.402111, 18.829498, 7.055338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.653889, 18.982689, 6.784894>,  <21.804956, 19.074604, 6.622627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.653889, 18.982689, 6.784894>,  <21.402111, 18.829498, 7.055338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.653889, 18.982689, 6.784894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769787, -0.188695, 0.609772,
		0.105950, -0.904280, -0.413584,
		0.629446, 0.382977, -0.676111,
		21.842722, 19.097582, 6.582061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.924568, 18.432863, 7.358686>,  <21.402111, 18.829498, 7.055338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.924568, 18.432863, 7.358686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.095562, 18.737194, 7.163383>,  <22.198158, 18.919792, 7.046200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.095562, 18.737194, 7.163383>,  <21.924568, 18.432863, 7.358686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.095562, 18.737194, 7.163383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587122, 0.177035, 0.789903,
		0.687420, -0.624339, -0.371019,
		0.427484, 0.760828, -0.488260,
		22.223806, 18.965443, 7.016904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.657320, 18.395632, 7.413512>,  <21.924568, 18.432863, 7.358686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.657320, 18.395632, 7.413512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.558064, 18.774132, 7.330530>,  <22.498508, 19.001232, 7.280741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.558064, 18.774132, 7.330530>,  <22.657320, 18.395632, 7.413512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.558064, 18.774132, 7.330530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647670, 0.321307, 0.690858,
		0.720381, 0.037070, -0.692587,
		-0.248143, 0.946249, -0.207454,
		22.483620, 19.058006, 7.268294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.274626, 18.785778, 7.248350>,  <22.657320, 18.395632, 7.413512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.274626, 18.785778, 7.248350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.004623, 19.065624, 7.342073>,  <22.842621, 19.233532, 7.398308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.004623, 19.065624, 7.342073>,  <23.274626, 18.785778, 7.248350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.004623, 19.065624, 7.342073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695081, 0.496489, 0.519962,
		0.247442, 0.513842, -0.821425,
		-0.675007, 0.699617, 0.234310,
		22.802122, 19.275509, 7.412366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.543661, 19.414101, 7.087609>,  <23.274626, 18.785778, 7.248350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.543661, 19.414101, 7.087609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.274330, 19.476875, 7.376609>,  <23.112732, 19.514540, 7.550008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.274330, 19.476875, 7.376609>,  <23.543661, 19.414101, 7.087609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.274330, 19.476875, 7.376609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714203, 0.390742, 0.580720,
		-0.191175, 0.907024, -0.375180,
		-0.673325, 0.156936, 0.722499,
		23.072332, 19.523956, 7.593359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.735807, 20.008642, 7.433261>,  <23.543661, 19.414101, 7.087609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.735807, 20.008642, 7.433261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.468300, 19.855473, 7.688170>,  <23.307795, 19.763571, 7.841116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.468300, 19.855473, 7.688170>,  <23.735807, 20.008642, 7.433261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.468300, 19.855473, 7.688170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433240, 0.495867, 0.752608,
		-0.604195, 0.779413, -0.165722,
		-0.668769, -0.382924, 0.637273,
		23.267670, 19.740595, 7.879353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.519352, 20.534506, 7.851527>,  <23.735807, 20.008642, 7.433261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.519352, 20.534506, 7.851527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.460773, 20.208233, 8.075389>,  <23.425627, 20.012468, 8.209706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.460773, 20.208233, 8.075389>,  <23.519352, 20.534506, 7.851527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.460773, 20.208233, 8.075389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256715, 0.515034, 0.817825,
		-0.955327, 0.263441, 0.133972,
		-0.146448, -0.815683, 0.559655,
		23.416840, 19.963528, 8.243285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.166960, 20.796761, 8.342507>,  <23.519352, 20.534506, 7.851527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.166960, 20.796761, 8.342507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.316425, 20.461399, 8.501230>,  <23.406105, 20.260181, 8.596464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.316425, 20.461399, 8.501230>,  <23.166960, 20.796761, 8.342507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.316425, 20.461399, 8.501230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046205, 0.444087, 0.894792,
		-0.926413, -0.316017, 0.204678,
		0.373664, -0.838403, 0.396806,
		23.428524, 20.209879, 8.620272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.951471, 20.799589, 8.984720>,  <23.166960, 20.796761, 8.342507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.951471, 20.799589, 8.984720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.220142, 20.503437, 8.995168>,  <23.381346, 20.325745, 9.001436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.220142, 20.503437, 8.995168>,  <22.951471, 20.799589, 8.984720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.220142, 20.503437, 8.995168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043210, -0.003956, 0.999058,
		-0.739581, -0.672175, -0.034649,
		0.671679, -0.740381, 0.026119,
		23.421646, 20.281322, 9.003003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.712534, 20.159939, 9.473994>,  <22.951471, 20.799589, 8.984720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.712534, 20.159939, 9.473994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.111904, 20.161221, 9.451609>,  <23.351526, 20.161989, 9.438177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.111904, 20.161221, 9.451609>,  <22.712534, 20.159939, 9.473994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.111904, 20.161221, 9.451609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055830, 0.032541, 0.997910,
		0.005010, -0.999465, 0.032311,
		0.998428, 0.003195, -0.055963,
		23.411432, 20.162182, 9.434819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.930355, 19.812307, 10.078771>,  <22.712534, 20.159939, 9.473994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.930355, 19.812307, 10.078771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.266682, 20.002708, 9.975657>,  <23.468477, 20.116949, 9.913788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.266682, 20.002708, 9.975657>,  <22.930355, 19.812307, 10.078771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.266682, 20.002708, 9.975657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123072, 0.295648, 0.947336,
		0.527148, -0.828260, 0.190002,
		0.840814, 0.476002, -0.257786,
		23.518927, 20.145510, 9.898321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.366764, 19.453396, 10.509900>,  <22.930355, 19.812307, 10.078771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.366764, 19.453396, 10.509900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.529854, 19.800953, 10.397627>,  <23.627708, 20.009487, 10.330263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.529854, 19.800953, 10.397627>,  <23.366764, 19.453396, 10.509900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.529854, 19.800953, 10.397627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246575, 0.191202, 0.950075,
		0.879182, -0.456578, -0.136290,
		0.407724, 0.868895, -0.280683,
		23.652172, 20.061621, 10.313422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.897196, 19.467896, 10.886418>,  <23.366764, 19.453396, 10.509900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.897196, 19.467896, 10.886418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.867207, 19.848259, 10.766315>,  <23.849213, 20.076477, 10.694252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.867207, 19.848259, 10.766315>,  <23.897196, 19.467896, 10.886418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.867207, 19.848259, 10.766315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145831, 0.308326, 0.940037,
		0.986465, 0.026691, -0.161788,
		-0.074974, 0.950906, -0.300260,
		23.844715, 20.133532, 10.676236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.412725, 19.848927, 11.314880>,  <23.897196, 19.467896, 10.886418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.412725, 19.848927, 11.314880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.177826, 20.143517, 11.180572>,  <24.036886, 20.320271, 11.099986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.177826, 20.143517, 11.180572>,  <24.412725, 19.848927, 11.314880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.177826, 20.143517, 11.180572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036447, 0.390356, 0.919942,
		0.808584, 0.552474, -0.202395,
		-0.587251, 0.736474, -0.335771,
		24.001650, 20.364458, 11.079840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.690634, 20.488909, 11.616068>,  <24.412725, 19.848927, 11.314880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.690634, 20.488909, 11.616068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.313046, 20.570724, 11.512465>,  <24.086493, 20.619814, 11.450303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.313046, 20.570724, 11.512465>,  <24.690634, 20.488909, 11.616068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.313046, 20.570724, 11.512465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140207, 0.461916, 0.875771,
		0.298769, 0.863016, -0.407357,
		-0.943970, 0.204539, -0.259008,
		24.029854, 20.632086, 11.434762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.577459, 21.176889, 11.825930>,  <24.690634, 20.488909, 11.616068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.577459, 21.176889, 11.825930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.217270, 21.004620, 11.801714>,  <24.001156, 20.901258, 11.787185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.217270, 21.004620, 11.801714>,  <24.577459, 21.176889, 11.825930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.217270, 21.004620, 11.801714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304536, 0.525023, 0.794738,
		-0.310488, 0.734078, -0.603926,
		-0.900475, -0.430674, -0.060539,
		23.947128, 20.875418, 11.783552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.006445, 21.724459, 11.966184>,  <24.577459, 21.176889, 11.825930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.006445, 21.724459, 11.966184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.847359, 21.365032, 12.040369>,  <23.751907, 21.149376, 12.084880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.847359, 21.365032, 12.040369>,  <24.006445, 21.724459, 11.966184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.847359, 21.365032, 12.040369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520797, 0.387511, 0.760661,
		-0.755375, 0.205940, -0.622092,
		-0.397718, -0.898568, 0.185463,
		23.728043, 21.095463, 12.096008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.295740, 21.827923, 12.014340>,  <24.006445, 21.724459, 11.966184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.295740, 21.827923, 12.014340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.387405, 21.501968, 12.227298>,  <23.442404, 21.306395, 12.355072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.387405, 21.501968, 12.227298>,  <23.295740, 21.827923, 12.014340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.387405, 21.501968, 12.227298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320800, 0.453164, 0.831703,
		-0.919006, -0.361385, -0.157568,
		0.229161, -0.814888, 0.532393,
		23.456154, 21.257502, 12.387015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.895733, 21.844019, 12.490548>,  <23.295740, 21.827923, 12.014340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.895733, 21.844019, 12.490548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.093575, 21.558426, 12.688776>,  <23.212280, 21.387070, 12.807713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.093575, 21.558426, 12.688776>,  <22.895733, 21.844019, 12.490548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.093575, 21.558426, 12.688776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294575, 0.398733, 0.868469,
		-0.817674, -0.575532, -0.013106,
		0.494606, -0.713985, 0.495571,
		23.241957, 21.344231, 12.837447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.504059, 21.715034, 12.980275>,  <22.895733, 21.844019, 12.490548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.504059, 21.715034, 12.980275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.841759, 21.541611, 13.106307>,  <23.044378, 21.437557, 13.181926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.841759, 21.541611, 13.106307>,  <22.504059, 21.715034, 12.980275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.841759, 21.541611, 13.106307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170186, 0.340595, 0.924679,
		-0.508216, -0.834280, 0.213761,
		0.844247, -0.433558, 0.315079,
		23.095034, 21.411543, 13.200830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.243532, 21.446798, 13.630724>,  <22.504059, 21.715034, 12.980275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.243532, 21.446798, 13.630724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.643238, 21.461922, 13.633128>,  <22.883062, 21.470995, 13.634571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.643238, 21.461922, 13.633128>,  <22.243532, 21.446798, 13.630724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.643238, 21.461922, 13.633128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017187, 0.302786, 0.952904,
		0.034207, -0.952309, 0.303213,
		0.999267, 0.037807, 0.006010,
		22.943018, 21.473265, 13.634932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.440533, 21.191383, 14.327449>,  <22.243532, 21.446798, 13.630724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.440533, 21.191383, 14.327449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.770885, 21.365677, 14.184312>,  <22.969097, 21.470253, 14.098430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.770885, 21.365677, 14.184312>,  <22.440533, 21.191383, 14.327449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.770885, 21.365677, 14.184312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161989, 0.424532, 0.890804,
		0.540072, -0.793666, 0.280029,
		0.825883, 0.435737, -0.357843,
		23.018650, 21.496397, 14.076959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.065037, 20.978275, 14.687624>,  <22.440533, 21.191383, 14.327449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.065037, 20.978275, 14.687624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.148643, 21.345268, 14.552247>,  <23.198807, 21.565464, 14.471022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.148643, 21.345268, 14.552247>,  <23.065037, 20.978275, 14.687624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.148643, 21.345268, 14.552247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169890, 0.306755, 0.936503,
		0.963042, -0.253242, -0.091754,
		0.209016, 0.917480, -0.338441,
		23.211348, 21.620512, 14.450715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.732792, 21.340483, 14.986339>,  <23.065037, 20.978275, 14.687624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.732792, 21.340483, 14.986339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.534065, 21.661743, 14.854812>,  <23.414829, 21.854500, 14.775896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.534065, 21.661743, 14.854812>,  <23.732792, 21.340483, 14.986339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.534065, 21.661743, 14.854812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077584, 0.418471, 0.904910,
		0.864380, 0.424065, -0.270216,
		-0.496818, 0.803151, -0.328817,
		23.385019, 21.902689, 14.756166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.071245, 21.978014, 15.291790>,  <23.732792, 21.340483, 14.986339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.071245, 21.978014, 15.291790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.716087, 22.109898, 15.163457>,  <23.502993, 22.189028, 15.086457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.716087, 22.109898, 15.163457>,  <24.071245, 21.978014, 15.291790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.716087, 22.109898, 15.163457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099153, 0.543853, 0.833302,
		0.449233, 0.771697, -0.450193,
		-0.887895, 0.329709, -0.320833,
		23.449718, 22.208811, 15.067207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.980068, 22.742565, 15.366633>,  <24.071245, 21.978014, 15.291790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.980068, 22.742565, 15.366633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.603348, 22.611362, 15.337188>,  <23.377316, 22.532640, 15.319521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.603348, 22.611362, 15.337188>,  <23.980068, 22.742565, 15.366633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.603348, 22.611362, 15.337188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266913, 0.596513, 0.756921,
		-0.204363, 0.732519, -0.649347,
		-0.941803, -0.328006, -0.073614,
		23.320807, 22.512960, 15.315104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.522150, 23.343828, 15.458295>,  <23.980068, 22.742565, 15.366633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.522150, 23.343828, 15.458295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.286522, 23.031971, 15.543290>,  <23.145145, 22.844856, 15.594287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.286522, 23.031971, 15.543290>,  <23.522150, 23.343828, 15.458295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.286522, 23.031971, 15.543290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379310, 0.498961, 0.779206,
		-0.713527, 0.378408, -0.589650,
		-0.589070, -0.779644, 0.212488,
		23.109800, 22.798079, 15.607037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.840435, 23.664865, 15.532918>,  <23.522150, 23.343828, 15.458295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.840435, 23.664865, 15.532918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.830521, 23.309986, 15.717208>,  <22.824572, 23.097059, 15.827782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.830521, 23.309986, 15.717208>,  <22.840435, 23.664865, 15.532918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.830521, 23.309986, 15.717208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525202, 0.403697, 0.749127,
		-0.850616, -0.223404, -0.475965,
		-0.024788, -0.887197, 0.460724,
		22.823084, 23.043827, 15.855425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.214426, 23.684351, 15.858045>,  <22.840435, 23.664865, 15.532918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.214426, 23.684351, 15.858045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.378761, 23.364410, 16.033064>,  <22.477362, 23.172445, 16.138075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.378761, 23.364410, 16.033064>,  <22.214426, 23.684351, 15.858045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.378761, 23.364410, 16.033064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580242, 0.140786, 0.802184,
		-0.703229, -0.583452, -0.406267,
		0.410839, -0.799852, 0.437548,
		22.502012, 23.124454, 16.164328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.746170, 23.419600, 16.234009>,  <22.214426, 23.684351, 15.858045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.746170, 23.419600, 16.234009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.064648, 23.232784, 16.387867>,  <22.255733, 23.120695, 16.480181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.064648, 23.232784, 16.387867>,  <21.746170, 23.419600, 16.234009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.064648, 23.232784, 16.387867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345244, 0.171381, 0.922732,
		-0.496872, -0.867470, -0.024790,
		0.796193, -0.467038, 0.384643,
		22.303507, 23.092672, 16.503260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.468174, 23.039122, 16.797495>,  <21.746170, 23.419600, 16.234009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.468174, 23.039122, 16.797495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.859745, 23.110409, 16.837372>,  <22.094688, 23.153181, 16.861298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.859745, 23.110409, 16.837372>,  <21.468174, 23.039122, 16.797495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.859745, 23.110409, 16.837372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154750, 0.328902, 0.931599,
		0.133237, -0.927396, 0.349550,
		0.978928, 0.178216, 0.099693,
		22.153423, 23.163874, 16.867279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.547775, 22.730543, 17.378845>,  <21.468174, 23.039122, 16.797495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.547775, 22.730543, 17.378845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.854557, 22.987144, 17.372498>,  <22.038626, 23.141106, 17.368689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.854557, 22.987144, 17.372498>,  <21.547775, 22.730543, 17.378845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.854557, 22.987144, 17.372498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075604, 0.114893, 0.990497,
		0.637230, -0.758468, 0.136618,
		0.766956, 0.641503, -0.015870,
		22.084644, 23.179596, 17.367737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.980461, 22.560915, 17.907345>,  <21.547775, 22.730543, 17.378845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.980461, 22.560915, 17.907345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.113091, 22.929104, 17.824602>,  <22.192669, 23.150017, 17.774956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.113091, 22.929104, 17.824602>,  <21.980461, 22.560915, 17.907345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.113091, 22.929104, 17.824602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072833, 0.193633, 0.978367,
		0.940614, -0.339467, -0.002837,
		0.331574, 0.920472, -0.206858,
		22.212563, 23.205246, 17.762545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.643044, 22.642635, 18.277855>,  <21.980461, 22.560915, 17.907345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.643044, 22.642635, 18.277855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.471760, 22.996078, 18.202093>,  <22.368990, 23.208145, 18.156635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.471760, 22.996078, 18.202093>,  <22.643044, 22.642635, 18.277855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.471760, 22.996078, 18.202093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077029, 0.173142, 0.981880,
		0.900391, 0.435039, -0.006077,
		-0.428208, 0.883608, -0.189406,
		22.343298, 23.261162, 18.145271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.789730, 23.044361, 18.845882>,  <22.643044, 22.642635, 18.277855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.789730, 23.044361, 18.845882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.505226, 23.280769, 18.693668>,  <22.334524, 23.422615, 18.602341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.505226, 23.280769, 18.693668>,  <22.789730, 23.044361, 18.845882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.505226, 23.280769, 18.693668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233978, 0.311426, 0.921015,
		0.662848, 0.744115, -0.083218,
		-0.711258, 0.591021, -0.380534,
		22.291849, 23.458076, 18.579508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.957830, 23.768961, 19.020485>,  <22.789730, 23.044361, 18.845882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.957830, 23.768961, 19.020485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.565346, 23.723946, 18.957800>,  <22.329855, 23.696936, 18.920189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.565346, 23.723946, 18.957800>,  <22.957830, 23.768961, 19.020485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.565346, 23.723946, 18.957800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184248, 0.305628, 0.934154,
		-0.057233, 0.945477, -0.320621,
		-0.981212, -0.112539, -0.156710,
		22.270983, 23.690184, 18.910788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.645338, 24.307938, 19.307058>,  <22.957830, 23.768961, 19.020485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.645338, 24.307938, 19.307058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.323151, 24.072453, 19.279823>,  <22.129839, 23.931162, 19.263483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.323151, 24.072453, 19.279823>,  <22.645338, 24.307938, 19.307058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.323151, 24.072453, 19.279823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302907, 0.310216, 0.901118,
		-0.509380, 0.746446, -0.428195,
		-0.805469, -0.588714, -0.068086,
		22.081511, 23.895838, 19.259398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.979504, 24.732250, 19.221363>,  <22.645338, 24.307938, 19.307058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.979504, 24.732250, 19.221363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.915657, 24.374424, 19.388348>,  <21.877348, 24.159727, 19.488539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.915657, 24.374424, 19.388348>,  <21.979504, 24.732250, 19.221363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.915657, 24.374424, 19.388348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181301, 0.442253, 0.878375,
		-0.970387, 0.064519, -0.232777,
		-0.159619, -0.894566, 0.417460,
		21.867771, 24.106054, 19.513586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.390491, 24.882107, 19.591213>,  <21.979504, 24.732250, 19.221363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.390491, 24.882107, 19.591213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.547352, 24.545425, 19.739676>,  <21.641468, 24.343416, 19.828753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.547352, 24.545425, 19.739676>,  <21.390491, 24.882107, 19.591213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.547352, 24.545425, 19.739676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382926, 0.217491, 0.897811,
		-0.836413, -0.494201, -0.237021,
		0.392149, -0.841703, 0.371155,
		21.664997, 24.292915, 19.851023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.789825, 24.623550, 19.923862>,  <21.390491, 24.882107, 19.591213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.789825, 24.623550, 19.923862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.138638, 24.474216, 20.050470>,  <21.347925, 24.384617, 20.126434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.138638, 24.474216, 20.050470>,  <20.789825, 24.623550, 19.923862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.138638, 24.474216, 20.050470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270537, 0.171261, 0.947354,
		-0.407888, -0.911751, 0.048343,
		0.872030, -0.373336, 0.316518,
		21.400248, 24.362215, 20.145426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.583265, 24.227982, 20.467588>,  <20.789825, 24.623550, 19.923862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.583265, 24.227982, 20.467588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.978264, 24.251369, 20.526144>,  <21.215263, 24.265402, 20.561277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.978264, 24.251369, 20.526144>,  <20.583265, 24.227982, 20.467588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.978264, 24.251369, 20.526144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152797, 0.126702, 0.980102,
		0.038756, -0.990216, 0.134051,
		0.987498, 0.058467, 0.146391,
		21.274513, 24.268911, 20.570061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.709921, 23.787607, 21.082041>,  <20.583265, 24.227982, 20.467588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.709921, 23.787607, 21.082041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.027122, 24.030449, 21.061762>,  <21.217443, 24.176155, 21.049595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.027122, 24.030449, 21.061762>,  <20.709921, 23.787607, 21.082041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.027122, 24.030449, 21.061762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135602, 0.257027, 0.956843,
		0.593936, -0.751904, 0.286148,
		0.793002, 0.607106, -0.050698,
		21.265022, 24.212580, 21.046553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.126980, 23.616503, 21.758995>,  <20.709921, 23.787607, 21.082041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.126980, 23.616503, 21.758995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.243469, 23.972382, 21.618351>,  <21.313364, 24.185909, 21.533964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.243469, 23.972382, 21.618351>,  <21.126980, 23.616503, 21.758995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.243469, 23.972382, 21.618351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126967, 0.328345, 0.935986,
		0.948192, -0.317225, -0.017340,
		0.291225, 0.889695, -0.351611,
		21.330837, 24.239290, 21.512867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.757439, 23.817865, 22.169672>,  <21.126980, 23.616503, 21.758995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.757439, 23.817865, 22.169672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.577915, 24.144245, 22.023905>,  <21.470201, 24.340073, 21.936445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.577915, 24.144245, 22.023905>,  <21.757439, 23.817865, 22.169672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.577915, 24.144245, 22.023905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158088, 0.473859, 0.866294,
		0.879534, 0.331189, -0.341663,
		-0.448807, 0.815948, -0.364418,
		21.443274, 24.389030, 21.914579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.271332, 24.373646, 22.157991>,  <21.757439, 23.817865, 22.169672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.271332, 24.373646, 22.157991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.894394, 24.499466, 22.203678>,  <21.668232, 24.574959, 22.231091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.894394, 24.499466, 22.203678>,  <22.271332, 24.373646, 22.157991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.894394, 24.499466, 22.203678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244932, 0.415739, 0.875882,
		0.228027, 0.853357, -0.468813,
		-0.942344, 0.314552, 0.114215,
		21.611691, 24.593832, 22.237942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.293467, 25.106991, 22.215782>,  <22.271332, 24.373646, 22.157991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.293467, 25.106991, 22.215782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.988594, 24.955345, 22.425678>,  <21.805672, 24.864357, 22.551617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.988594, 24.955345, 22.425678>,  <22.293467, 25.106991, 22.215782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.988594, 24.955345, 22.425678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385881, 0.384775, 0.838477,
		-0.519787, 0.841558, -0.146974,
		-0.762179, -0.379115, 0.524742,
		21.759941, 24.841610, 22.583101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.921011, 25.645771, 22.584314>,  <22.293467, 25.106991, 22.215782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.921011, 25.645771, 22.584314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.878918, 25.297039, 22.775661>,  <21.853662, 25.087799, 22.890471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.878918, 25.297039, 22.775661>,  <21.921011, 25.645771, 22.584314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.878918, 25.297039, 22.775661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449287, 0.387465, 0.804992,
		-0.887168, 0.299638, 0.350928,
		-0.105233, -0.871830, 0.478370,
		21.847347, 25.035490, 22.919172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.595497, 25.652861, 23.267118>,  <21.921011, 25.645771, 22.584314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.595497, 25.652861, 23.267118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.817558, 25.320671, 23.285538>,  <21.950794, 25.121357, 23.296589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.817558, 25.320671, 23.285538>,  <21.595497, 25.652861, 23.267118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.817558, 25.320671, 23.285538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326747, 0.268667, 0.906121,
		-0.764880, -0.487990, 0.420506,
		0.555154, -0.830472, 0.046049,
		21.984104, 25.071529, 23.299353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.525635, 25.253191, 24.024992>,  <21.595497, 25.652861, 23.267118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.525635, 25.253191, 24.024992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.880043, 25.149704, 23.871094>,  <22.092688, 25.087612, 23.778755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.880043, 25.149704, 23.871094>,  <21.525635, 25.253191, 24.024992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.880043, 25.149704, 23.871094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433045, 0.165312, 0.886083,
		-0.165642, -0.951702, 0.258507,
		0.886022, -0.258718, -0.384747,
		22.145849, 25.072088, 23.755669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.761150, 25.540924, 24.121563>,  <21.525635, 25.253191, 24.024992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.761150, 25.540924, 24.121563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.445930, 25.298325, 24.079348>,  <20.256798, 25.152765, 24.054018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.445930, 25.298325, 24.079348>,  <20.761150, 25.540924, 24.121563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.445930, 25.298325, 24.079348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225290, 0.443671, -0.867410,
		0.572907, -0.659785, -0.486273,
		-0.788050, -0.606498, -0.105539,
		20.209515, 25.116375, 24.047686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.445225, 25.807470, 23.532503>,  <20.761150, 25.540924, 24.121563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.445225, 25.807470, 23.532503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.214630, 25.484299, 23.581348>,  <20.076273, 25.290396, 23.610655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.214630, 25.484299, 23.581348>,  <20.445225, 25.807470, 23.532503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.214630, 25.484299, 23.581348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442191, 0.182803, -0.878094,
		0.687116, -0.560208, -0.462643,
		-0.576488, -0.807930, 0.122112,
		20.041683, 25.241920, 23.617983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.412800, 25.288860, 23.025116>,  <20.445225, 25.807470, 23.532503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.412800, 25.288860, 23.025116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.055767, 25.280464, 23.205273>,  <19.841547, 25.275427, 23.313368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.055767, 25.280464, 23.205273>,  <20.412800, 25.288860, 23.025116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.055767, 25.280464, 23.205273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423496, 0.381861, -0.821482,
		-0.154743, -0.923981, -0.349733,
		-0.892583, -0.020992, 0.450393,
		19.787992, 25.274166, 23.340391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.724539, 24.854511, 22.832628>,  <20.412800, 25.288860, 23.025116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.724539, 24.854511, 22.832628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.672176, 25.245556, 22.898520>,  <19.640759, 25.480183, 22.938053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.672176, 25.245556, 22.898520>,  <19.724539, 24.854511, 22.832628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.672176, 25.245556, 22.898520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298573, 0.119566, -0.946867,
		-0.945366, -0.173135, 0.276237,
		-0.130907, 0.977613, 0.164727,
		19.632904, 25.538839, 22.947937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.025936, 25.027496, 22.785295>,  <19.724539, 24.854511, 22.832628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.025936, 25.027496, 22.785295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.218990, 25.365891, 22.694635>,  <19.334824, 25.568928, 22.640240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.218990, 25.365891, 22.694635>,  <19.025936, 25.027496, 22.785295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.218990, 25.365891, 22.694635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191357, -0.150673, -0.969887,
		-0.854660, 0.511474, 0.089165,
		0.482637, 0.845986, -0.226649,
		19.363781, 25.619686, 22.626640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.598459, 25.586115, 22.490820>,  <19.025936, 25.027496, 22.785295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.598459, 25.586115, 22.490820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.979919, 25.596790, 22.370926>,  <19.208796, 25.603195, 22.298988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.979919, 25.596790, 22.370926>,  <18.598459, 25.586115, 22.490820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.979919, 25.596790, 22.370926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282371, -0.264950, -0.921991,
		-0.104024, 0.963893, -0.245132,
		0.953649, 0.026691, -0.299737,
		19.266014, 25.604797, 22.281004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.576380, 26.041079, 21.873604>,  <18.598459, 25.586115, 22.490820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.576380, 26.041079, 21.873604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.919151, 25.835663, 21.855928>,  <19.124813, 25.712414, 21.845324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.919151, 25.835663, 21.855928>,  <18.576380, 26.041079, 21.873604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.919151, 25.835663, 21.855928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049384, 0.003533, -0.998774,
		0.513065, 0.858059, -0.022333,
		0.856928, -0.513539, -0.044187,
		19.176229, 25.681601, 21.842672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.009394, 26.334469, 21.248627>,  <18.576380, 26.041079, 21.873604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.009394, 26.334469, 21.248627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.155182, 25.967735, 21.313835>,  <19.242655, 25.747694, 21.352961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.155182, 25.967735, 21.313835>,  <19.009394, 26.334469, 21.248627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.155182, 25.967735, 21.313835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053736, -0.195476, -0.979235,
		0.929664, 0.348141, -0.120512,
		0.364469, -0.916835, 0.163020,
		19.264523, 25.692684, 21.362741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.543501, 26.256660, 20.757099>,  <19.009394, 26.334469, 21.248627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.543501, 26.256660, 20.757099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.443207, 25.888432, 20.876886>,  <19.383030, 25.667494, 20.948759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.443207, 25.888432, 20.876886>,  <19.543501, 26.256660, 20.757099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.443207, 25.888432, 20.876886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138674, -0.272003, -0.952252,
		0.958072, -0.280291, -0.059458,
		-0.250735, -0.920571, 0.299467,
		19.367987, 25.612261, 20.966726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.981884, 25.884342, 20.287943>,  <19.543501, 26.256660, 20.757099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.981884, 25.884342, 20.287943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.718925, 25.625755, 20.442818>,  <19.561152, 25.470604, 20.535742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.718925, 25.625755, 20.442818>,  <19.981884, 25.884342, 20.287943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.718925, 25.625755, 20.442818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120600, -0.416936, -0.900900,
		0.743833, -0.638941, 0.196128,
		-0.657395, -0.646466, 0.387187,
		19.521708, 25.431816, 20.558973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.134293, 25.202204, 19.937962>,  <19.981884, 25.884342, 20.287943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.134293, 25.202204, 19.937962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.768108, 25.138092, 20.085608>,  <19.548397, 25.099625, 20.174194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.768108, 25.138092, 20.085608>,  <20.134293, 25.202204, 19.937962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.768108, 25.138092, 20.085608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222480, -0.562731, -0.796138,
		0.335315, -0.810953, 0.479499,
		-0.915460, -0.160279, 0.369113,
		19.493471, 25.090008, 20.196341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.025253, 24.470337, 19.719507>,  <20.134293, 25.202204, 19.937962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.025253, 24.470337, 19.719507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.667225, 24.634327, 19.789669>,  <19.452408, 24.732721, 19.831766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.667225, 24.634327, 19.789669>,  <20.025253, 24.470337, 19.719507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.667225, 24.634327, 19.789669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363532, -0.443066, -0.819474,
		-0.258249, -0.797252, 0.545615,
		-0.895071, 0.409977, 0.175405,
		19.398703, 24.757320, 19.842291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.595312, 23.881720, 19.666830>,  <20.025253, 24.470337, 19.719507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.595312, 23.881720, 19.666830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.415997, 24.235668, 19.616173>,  <19.308407, 24.448038, 19.585779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.415997, 24.235668, 19.616173>,  <19.595312, 23.881720, 19.666830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.415997, 24.235668, 19.616173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143444, -0.211052, -0.966892,
		-0.882304, -0.415282, 0.221543,
		-0.448290, 0.884872, -0.126642,
		19.281509, 24.501129, 19.578180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.093201, 23.694374, 19.239368>,  <19.595312, 23.881720, 19.666830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.093201, 23.694374, 19.239368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.126045, 24.092709, 19.223526>,  <19.145752, 24.331709, 19.214022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.126045, 24.092709, 19.223526>,  <19.093201, 23.694374, 19.239368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.126045, 24.092709, 19.223526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102661, -0.031076, -0.994231,
		-0.991322, 0.085705, 0.099682,
		0.082113, 0.995836, -0.039605,
		19.150679, 24.391459, 19.211645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.442356, 23.887636, 18.917053>,  <19.093201, 23.694374, 19.239368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.442356, 23.887636, 18.917053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.668564, 24.211880, 18.856255>,  <18.804289, 24.406425, 18.819775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.668564, 24.211880, 18.856255>,  <18.442356, 23.887636, 18.917053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.668564, 24.211880, 18.856255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272585, 0.009768, -0.962082,
		-0.778388, 0.585506, 0.226484,
		0.565517, 0.810609, -0.151997,
		18.838219, 24.455063, 18.810656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.121796, 24.477337, 18.571825>,  <18.442356, 23.887636, 18.917053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.121796, 24.477337, 18.571825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.514271, 24.509205, 18.501486>,  <18.749756, 24.528326, 18.459282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.514271, 24.509205, 18.501486>,  <18.121796, 24.477337, 18.571825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.514271, 24.509205, 18.501486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187600, 0.178508, -0.965889,
		-0.045564, 0.980707, 0.190096,
		0.981188, 0.079671, -0.175848,
		18.808628, 24.533106, 18.448732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.159534, 24.922541, 18.022938>,  <18.121796, 24.477337, 18.571825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.159534, 24.922541, 18.022938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.526970, 24.764454, 18.022224>,  <18.747431, 24.669601, 18.021797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.526970, 24.764454, 18.022224>,  <18.159534, 24.922541, 18.022938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.526970, 24.764454, 18.022224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070945, -0.160451, -0.984491,
		0.388801, 0.904467, -0.175427,
		0.918586, -0.395216, -0.001784,
		18.802546, 24.645889, 18.021688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.482037, 25.154312, 17.282131>,  <18.159534, 24.922541, 18.022938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.482037, 25.154312, 17.282131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.720314, 24.866879, 17.425680>,  <18.863279, 24.694418, 17.511810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.720314, 24.866879, 17.425680>,  <18.482037, 25.154312, 17.282131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.720314, 24.866879, 17.425680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141762, -0.345723, -0.927566,
		0.790604, 0.603417, -0.104077,
		0.595691, -0.718584, 0.358872,
		18.899021, 24.651304, 17.533342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.080191, 25.238430, 16.897213>,  <18.482037, 25.154312, 17.282131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.080191, 25.238430, 16.897213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.089237, 24.867966, 17.047794>,  <19.094666, 24.645687, 17.138144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.089237, 24.867966, 17.047794>,  <19.080191, 25.238430, 16.897213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.089237, 24.867966, 17.047794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148732, -0.369243, -0.917354,
		0.988619, 0.076738, 0.129399,
		0.022617, -0.926159, 0.376454,
		19.096022, 24.590118, 17.160730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.798195, 24.922091, 16.773016>,  <19.080191, 25.238430, 16.897213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.798195, 24.922091, 16.773016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.538593, 24.622196, 16.824692>,  <19.382833, 24.442259, 16.855698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.538593, 24.622196, 16.824692>,  <19.798195, 24.922091, 16.773016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.538593, 24.622196, 16.824692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307550, -0.413865, -0.856813,
		0.695852, -0.516342, 0.499181,
		-0.649002, -0.749738, 0.129188,
		19.343893, 24.397274, 16.863449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.154907, 24.278738, 16.696983>,  <19.798195, 24.922091, 16.773016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.154907, 24.278738, 16.696983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.768478, 24.213634, 16.616770>,  <19.536621, 24.174572, 16.568642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.768478, 24.213634, 16.616770>,  <20.154907, 24.278738, 16.696983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.768478, 24.213634, 16.616770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243973, -0.320343, -0.915346,
		0.084744, -0.933214, 0.349184,
		-0.966073, -0.162762, -0.200532,
		19.478657, 24.164806, 16.556610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.107521, 23.654726, 16.289951>,  <20.154907, 24.278738, 16.696983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.107521, 23.654726, 16.289951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.760662, 23.833145, 16.201321>,  <19.552547, 23.940197, 16.148142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.760662, 23.833145, 16.201321>,  <20.107521, 23.654726, 16.289951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.760662, 23.833145, 16.201321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130417, -0.226003, -0.965357,
		-0.480673, -0.866004, 0.137806,
		-0.867148, 0.446049, -0.221575,
		19.500517, 23.966959, 16.134848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.778872, 23.155956, 15.861035>,  <20.107521, 23.654726, 16.289951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.778872, 23.155956, 15.861035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.607807, 23.511677, 15.796224>,  <19.505169, 23.725109, 15.757337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.607807, 23.511677, 15.796224>,  <19.778872, 23.155956, 15.861035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.607807, 23.511677, 15.796224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081446, -0.140611, -0.986709,
		-0.900264, -0.435172, -0.012296,
		-0.427659, 0.889300, -0.162030,
		19.479509, 23.778467, 15.747615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.360247, 23.068089, 15.232180>,  <19.778872, 23.155956, 15.861035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.360247, 23.068089, 15.232180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.374859, 23.465908, 15.271243>,  <19.383627, 23.704599, 15.294682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.374859, 23.465908, 15.271243>,  <19.360247, 23.068089, 15.232180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.374859, 23.465908, 15.271243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041173, 0.096144, -0.994516,
		-0.998484, 0.040352, -0.037436,
		0.036531, 0.994549, 0.097660,
		19.385818, 23.764273, 15.300541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.902161, 23.370491, 14.802751>,  <19.360247, 23.068089, 15.232180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.902161, 23.370491, 14.802751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.183327, 23.650051, 14.855578>,  <19.352028, 23.817787, 14.887276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.183327, 23.650051, 14.855578>,  <18.902161, 23.370491, 14.802751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.183327, 23.650051, 14.855578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076967, 0.109852, -0.990964,
		-0.707095, 0.706731, 0.023424,
		0.702918, 0.698902, 0.132070,
		19.394201, 23.859722, 14.895200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.616899, 23.906225, 14.522447>,  <18.902161, 23.370491, 14.802751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.616899, 23.906225, 14.522447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.007938, 23.990227, 14.528102>,  <19.242561, 24.040627, 14.531495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.007938, 23.990227, 14.528102>,  <18.616899, 23.906225, 14.522447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.007938, 23.990227, 14.528102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009384, 0.110592, -0.993822,
		-0.210269, 0.971426, 0.110085,
		0.977599, 0.210002, 0.014138,
		19.301218, 24.053228, 14.532343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.691696, 24.341005, 14.019504>,  <18.616899, 23.906225, 14.522447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.691696, 24.341005, 14.019504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.070400, 24.225178, 14.075788>,  <19.297623, 24.155682, 14.109558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.070400, 24.225178, 14.075788>,  <18.691696, 24.341005, 14.019504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.070400, 24.225178, 14.075788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128223, -0.061752, -0.989821,
		0.295309, 0.955164, -0.021335,
		0.946758, -0.289567, 0.140710,
		19.354427, 24.138308, 14.118001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.989460, 24.815149, 13.603797>,  <18.691696, 24.341005, 14.019504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.989460, 24.815149, 13.603797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.217323, 24.491871, 13.663541>,  <19.354042, 24.297905, 13.699388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.217323, 24.491871, 13.663541>,  <18.989460, 24.815149, 13.603797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.217323, 24.491871, 13.663541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034010, -0.158393, -0.986790,
		0.821176, 0.567215, -0.062743,
		0.569660, -0.808195, 0.149359,
		19.388222, 24.249413, 13.708348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.607960, 24.849201, 13.128525>,  <18.989460, 24.815149, 13.603797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.607960, 24.849201, 13.128525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.560043, 24.466900, 13.235992>,  <19.531294, 24.237518, 13.300473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.560043, 24.466900, 13.235992>,  <19.607960, 24.849201, 13.128525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.560043, 24.466900, 13.235992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342622, -0.293789, -0.892355,
		0.931805, -0.014845, 0.362656,
		-0.119792, -0.955755, 0.268668,
		19.524105, 24.180174, 13.316593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.123262, 24.659616, 12.741835>,  <19.607960, 24.849201, 13.128525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.123262, 24.659616, 12.741835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.923355, 24.320984, 12.815078>,  <19.803410, 24.117804, 12.859024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.923355, 24.320984, 12.815078>,  <20.123262, 24.659616, 12.741835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.923355, 24.320984, 12.815078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319407, -0.376635, -0.869555,
		0.805115, -0.376090, 0.458635,
		-0.499769, -0.846583, 0.183108,
		19.773424, 24.067009, 12.870010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.571865, 24.062653, 12.639555>,  <20.123262, 24.659616, 12.741835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.571865, 24.062653, 12.639555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.202213, 23.913788, 12.604956>,  <19.980423, 23.824469, 12.584196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.202213, 23.913788, 12.604956>,  <20.571865, 24.062653, 12.639555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.202213, 23.913788, 12.604956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273541, -0.486365, -0.829834,
		0.266764, -0.790534, 0.551265,
		-0.924128, -0.372163, -0.086499,
		19.924974, 23.802139, 12.579006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.615946, 23.191355, 12.656811>,  <20.571865, 24.062653, 12.639555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.615946, 23.191355, 12.656811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.262592, 23.313210, 12.514359>,  <20.050581, 23.386322, 12.428887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.262592, 23.313210, 12.514359>,  <20.615946, 23.191355, 12.656811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.262592, 23.313210, 12.514359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071539, -0.663346, -0.744885,
		-0.463158, -0.683497, 0.564196,
		-0.883384, 0.304638, -0.356130,
		19.997578, 23.404600, 12.407519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.320913, 22.585472, 12.515417>,  <20.615946, 23.191355, 12.656811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.320913, 22.585472, 12.515417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.144390, 22.869194, 12.295549>,  <20.038475, 23.039427, 12.163629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.144390, 22.869194, 12.295549>,  <20.320913, 22.585472, 12.515417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.144390, 22.869194, 12.295549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140503, -0.550370, -0.823014,
		-0.886287, -0.440434, 0.143224,
		-0.441310, 0.709303, -0.549668,
		20.011997, 23.081985, 12.130649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.926081, 22.155853, 12.032487>,  <20.320913, 22.585472, 12.515417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.926081, 22.155853, 12.032487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.975964, 22.522686, 11.881011>,  <20.005894, 22.742786, 11.790125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.975964, 22.522686, 11.881011>,  <19.926081, 22.155853, 12.032487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.975964, 22.522686, 11.881011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080708, -0.389782, -0.917364,
		-0.988905, 0.083841, -0.122625,
		0.124710, 0.917083, -0.378690,
		20.013376, 22.797812, 11.767404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.678621, 22.004751, 11.384330>,  <19.926081, 22.155853, 12.032487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.678621, 22.004751, 11.384330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.885071, 22.347332, 11.380240>,  <20.008942, 22.552881, 11.377787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.885071, 22.347332, 11.380240>,  <19.678621, 22.004751, 11.384330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.885071, 22.347332, 11.380240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382972, -0.241435, -0.891651,
		-0.766124, 0.456289, -0.452608,
		0.516126, 0.856452, -0.010223,
		20.039909, 22.604267, 11.377173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.400341, 22.396814, 10.730282>,  <19.678621, 22.004751, 11.384330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.400341, 22.396814, 10.730282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.766415, 22.517876, 10.836745>,  <19.986059, 22.590513, 10.900623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.766415, 22.517876, 10.836745>,  <19.400341, 22.396814, 10.730282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.766415, 22.517876, 10.836745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318591, -0.138769, -0.937679,
		-0.246859, 0.942944, -0.223422,
		0.915183, 0.302655, 0.266158,
		20.040970, 22.608671, 10.916593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.592306, 22.806084, 10.191179>,  <19.400341, 22.396814, 10.730282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.592306, 22.806084, 10.191179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.932522, 22.723412, 10.384619>,  <20.136652, 22.673809, 10.500682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.932522, 22.723412, 10.384619>,  <19.592306, 22.806084, 10.191179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.932522, 22.723412, 10.384619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419380, -0.288310, -0.860812,
		0.317338, 0.934966, -0.158542,
		0.850539, -0.206679, 0.483598,
		20.187683, 22.661407, 10.529698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.141912, 23.106318, 9.777670>,  <19.592306, 22.806084, 10.191179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.141912, 23.106318, 9.777670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.309914, 22.809521, 9.986686>,  <20.410715, 22.631443, 10.112095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.309914, 22.809521, 9.986686>,  <20.141912, 23.106318, 9.777670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.309914, 22.809521, 9.986686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334445, -0.408711, -0.849177,
		0.843648, 0.531419, 0.076494,
		0.420005, -0.741990, 0.522538,
		20.435915, 22.586924, 10.143447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.824127, 23.020010, 9.489208>,  <20.141912, 23.106318, 9.777670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.824127, 23.020010, 9.489208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.732964, 22.679424, 9.678126>,  <20.678265, 22.475073, 9.791477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.732964, 22.679424, 9.678126>,  <20.824127, 23.020010, 9.489208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.732964, 22.679424, 9.678126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317529, -0.523538, -0.790622,
		0.920452, -0.030223, 0.389684,
		-0.227910, -0.851466, 0.472295,
		20.664591, 22.423985, 9.819815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.404896, 22.608122, 9.288848>,  <20.824127, 23.020010, 9.489208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.404896, 22.608122, 9.288848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.111355, 22.359795, 9.399151>,  <20.935230, 22.210798, 9.465333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.111355, 22.359795, 9.399151>,  <21.404896, 22.608122, 9.288848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.111355, 22.359795, 9.399151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141500, -0.536735, -0.831801,
		0.664407, -0.571401, 0.481731,
		-0.733854, -0.620819, 0.275758,
		20.891199, 22.173550, 9.481878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.663622, 22.030933, 9.067459>,  <21.404896, 22.608122, 9.288848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.663622, 22.030933, 9.067459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.288635, 21.911106, 9.138352>,  <21.063643, 21.839209, 9.180888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.288635, 21.911106, 9.138352>,  <21.663622, 22.030933, 9.067459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.288635, 21.911106, 9.138352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076615, -0.674296, -0.734476,
		0.339535, -0.674968, 0.655083,
		-0.937468, -0.299569, 0.177234,
		21.007395, 21.821236, 9.191523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.704340, 21.403524, 9.079386>,  <21.663622, 22.030933, 9.067459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.704340, 21.403524, 9.079386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.316517, 21.460678, 8.999845>,  <21.083822, 21.494970, 8.952120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.316517, 21.460678, 8.999845>,  <21.704340, 21.403524, 9.079386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.316517, 21.460678, 8.999845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071583, -0.611229, -0.788210,
		-0.234165, -0.778449, 0.582394,
		-0.969558, 0.142882, -0.198853,
		21.025650, 21.503542, 8.940188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.431549, 20.723469, 8.916945>,  <21.704340, 21.403524, 9.079386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.431549, 20.723469, 8.916945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.159798, 20.980724, 8.775629>,  <20.996746, 21.135078, 8.690840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.159798, 20.980724, 8.775629>,  <21.431549, 20.723469, 8.916945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.159798, 20.980724, 8.775629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157323, -0.597930, -0.785957,
		-0.716723, -0.478383, 0.507403,
		-0.679380, 0.643139, -0.353290,
		20.955984, 21.173666, 8.669642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.754234, 20.348598, 8.767025>,  <21.431549, 20.723469, 8.916945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.754234, 20.348598, 8.767025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.800999, 20.679016, 8.546487>,  <20.829058, 20.877268, 8.414165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.800999, 20.679016, 8.546487>,  <20.754234, 20.348598, 8.767025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.800999, 20.679016, 8.546487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215389, -0.520849, -0.826029,
		-0.969505, 0.215324, 0.117029,
		0.116909, 0.826046, -0.551345,
		20.836071, 20.926830, 8.381083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.243307, 20.256790, 8.344452>,  <20.754234, 20.348598, 8.767025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.243307, 20.256790, 8.344452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.466434, 20.540245, 8.171629>,  <20.600311, 20.710318, 8.067935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.466434, 20.540245, 8.171629>,  <20.243307, 20.256790, 8.344452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.466434, 20.540245, 8.171629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330816, -0.287595, -0.898805,
		-0.761182, 0.644302, 0.074002,
		0.557819, 0.708635, -0.432058,
		20.633780, 20.752836, 8.042011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.508917, 20.109989, 8.401039>,  <20.243307, 20.256790, 8.344452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.508917, 20.109989, 8.401039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.136330, 19.997467, 8.308745>,  <18.912777, 19.929955, 8.253369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.136330, 19.997467, 8.308745>,  <19.508917, 20.109989, 8.401039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.136330, 19.997467, 8.308745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362777, 0.669977, 0.647706,
		-0.027616, 0.687022, -0.726112,
		-0.931467, -0.281304, -0.230734,
		18.856890, 19.913076, 8.239525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.089590, 20.752665, 8.308129>,  <19.508917, 20.109989, 8.401039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.089590, 20.752665, 8.308129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.823639, 20.465359, 8.390139>,  <18.664068, 20.292974, 8.439344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.823639, 20.465359, 8.390139>,  <19.089590, 20.752665, 8.308129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.823639, 20.465359, 8.390139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376982, 0.559626, 0.738040,
		-0.644845, 0.413416, -0.642855,
		-0.664876, -0.718266, 0.205022,
		18.624176, 20.249880, 8.451645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.422070, 21.182920, 8.485033>,  <19.089590, 20.752665, 8.308129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.422070, 21.182920, 8.485033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.394447, 20.804264, 8.610958>,  <18.377874, 20.577070, 8.686513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.394447, 20.804264, 8.610958>,  <18.422070, 21.182920, 8.485033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.394447, 20.804264, 8.610958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240308, 0.322058, 0.915714,
		-0.968238, -0.012417, -0.249724,
		-0.069055, -0.946639, 0.314812,
		18.373732, 20.520273, 8.705401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.795956, 21.168747, 8.735298>,  <18.422070, 21.182920, 8.485033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.795956, 21.168747, 8.735298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.956623, 20.843361, 8.903555>,  <18.053024, 20.648130, 9.004509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.956623, 20.843361, 8.903555>,  <17.795956, 21.168747, 8.735298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.956623, 20.843361, 8.903555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393592, 0.261393, 0.881339,
		-0.826890, -0.519569, -0.215179,
		0.401671, -0.813463, 0.420641,
		18.077124, 20.599321, 9.029747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.308393, 20.979605, 9.226979>,  <17.795956, 21.168747, 8.735298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.308393, 20.979605, 9.226979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.636330, 20.801399, 9.370855>,  <17.833092, 20.694475, 9.457181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.636330, 20.801399, 9.370855>,  <17.308393, 20.979605, 9.226979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.636330, 20.801399, 9.370855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345453, 0.116126, 0.931223,
		-0.456642, -0.887712, -0.058700,
		0.819841, -0.445514, 0.359691,
		17.882282, 20.667746, 9.478763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.123486, 20.452400, 9.708859>,  <17.308393, 20.979605, 9.226979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.123486, 20.452400, 9.708859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.496876, 20.511795, 9.839441>,  <17.720911, 20.547432, 9.917790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.496876, 20.511795, 9.839441>,  <17.123486, 20.452400, 9.708859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.496876, 20.511795, 9.839441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324062, -0.040731, 0.945159,
		0.153642, -0.988075, 0.010098,
		0.933476, 0.148488, 0.326455,
		17.776918, 20.556341, 9.937378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.175190, 20.137718, 10.393847>,  <17.123486, 20.452400, 9.708859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.175190, 20.137718, 10.393847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.497128, 20.372944, 10.425873>,  <17.690290, 20.514078, 10.445088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.497128, 20.372944, 10.425873>,  <17.175190, 20.137718, 10.393847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.497128, 20.372944, 10.425873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154748, 0.077701, 0.984894,
		0.572958, -0.805075, 0.153538,
		0.804843, 0.588063, 0.080065,
		17.738581, 20.549362, 10.449892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.575268, 19.873167, 10.922364>,  <17.175190, 20.137718, 10.393847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.575268, 19.873167, 10.922364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.660061, 20.263054, 10.894107>,  <17.710938, 20.496986, 10.877152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.660061, 20.263054, 10.894107>,  <17.575268, 19.873167, 10.922364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.660061, 20.263054, 10.894107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154041, 0.104708, 0.982500,
		0.965056, -0.197392, 0.172343,
		0.211984, 0.974717, -0.070642,
		17.723656, 20.555470, 10.872914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.840895, 20.039846, 11.547381>,  <17.575268, 19.873167, 10.922364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.840895, 20.039846, 11.547381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.767067, 20.395523, 11.379921>,  <17.722771, 20.608929, 11.279445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.767067, 20.395523, 11.379921>,  <17.840895, 20.039846, 11.547381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.767067, 20.395523, 11.379921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013643, 0.423611, 0.905741,
		0.982725, 0.172882, -0.066054,
		-0.184567, 0.889194, -0.418652,
		17.711697, 20.662281, 11.254326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.350471, 20.496967, 11.822977>,  <17.840895, 20.039846, 11.547381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.350471, 20.496967, 11.822977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.047962, 20.716148, 11.679984>,  <17.866457, 20.847658, 11.594188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.047962, 20.716148, 11.679984>,  <18.350471, 20.496967, 11.822977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.047962, 20.716148, 11.679984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102008, 0.440959, 0.891712,
		0.646253, 0.710846, -0.277590,
		-0.756275, 0.547954, -0.357483,
		17.821079, 20.880535, 11.572740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.448236, 21.133307, 12.173562>,  <18.350471, 20.496967, 11.822977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.448236, 21.133307, 12.173562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.075089, 21.141769, 12.029728>,  <17.851200, 21.146847, 11.943427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.075089, 21.141769, 12.029728>,  <18.448236, 21.133307, 12.173562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.075089, 21.141769, 12.029728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319776, 0.410884, 0.853767,
		0.165811, 0.911442, -0.376537,
		-0.932872, 0.021156, -0.359586,
		17.795227, 21.148117, 11.921852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.283857, 21.817673, 12.081055>,  <18.448236, 21.133307, 12.173562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.283857, 21.817673, 12.081055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.944225, 21.607071, 12.098279>,  <17.740446, 21.480709, 12.108613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.944225, 21.607071, 12.098279>,  <18.283857, 21.817673, 12.081055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.944225, 21.607071, 12.098279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311868, 0.565389, 0.763592,
		-0.426382, 0.634922, -0.644261,
		-0.849080, -0.526507, 0.043060,
		17.689501, 21.449120, 12.111197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.657270, 22.290215, 12.039540>,  <18.283857, 21.817673, 12.081055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.657270, 22.290215, 12.039540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.547337, 21.945389, 12.209864>,  <17.481377, 21.738493, 12.312057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.547337, 21.945389, 12.209864>,  <17.657270, 22.290215, 12.039540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.547337, 21.945389, 12.209864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303355, 0.497987, 0.812394,
		-0.912383, 0.094101, -0.398375,
		-0.274833, -0.862064, 0.425809,
		17.464888, 21.686769, 12.337606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.021397, 22.530262, 12.371861>,  <17.657270, 22.290215, 12.039540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.021397, 22.530262, 12.371861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.104809, 22.182693, 12.551414>,  <17.154856, 21.974154, 12.659145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.104809, 22.182693, 12.551414>,  <17.021397, 22.530262, 12.371861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.104809, 22.182693, 12.551414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244136, 0.398194, 0.884217,
		-0.947055, -0.293975, -0.129099,
		0.208531, -0.868919, 0.448881,
		17.167368, 21.922018, 12.686078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.376081, 22.217278, 12.688778>,  <17.021397, 22.530262, 12.371861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.376081, 22.217278, 12.688778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.710892, 22.095154, 12.870404>,  <16.911777, 22.021879, 12.979380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.710892, 22.095154, 12.870404>,  <16.376081, 22.217278, 12.688778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.710892, 22.095154, 12.870404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399542, 0.225939, 0.888435,
		-0.373839, -0.925061, 0.067133,
		0.837024, -0.305310, 0.454066,
		16.962000, 22.003561, 13.006624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.157824, 21.918924, 13.393815>,  <16.376081, 22.217278, 12.688778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.157824, 21.918924, 13.393815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.549721, 21.980232, 13.445374>,  <16.784859, 22.017017, 13.476309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.549721, 21.980232, 13.445374>,  <16.157824, 21.918924, 13.393815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.549721, 21.980232, 13.445374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140388, 0.066642, 0.987851,
		0.142823, -0.985934, 0.086810,
		0.979741, 0.153275, 0.128895,
		16.843643, 22.026213, 13.484042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.239525, 21.731541, 14.147254>,  <16.157824, 21.918924, 13.393815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.239525, 21.731541, 14.147254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.601982, 21.884239, 14.074395>,  <16.819456, 21.975859, 14.030680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.601982, 21.884239, 14.074395>,  <16.239525, 21.731541, 14.147254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.601982, 21.884239, 14.074395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090519, 0.245636, 0.965126,
		0.413176, -0.891028, 0.188025,
		0.906141, 0.381748, -0.182146,
		16.873825, 21.998764, 14.019752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.641285, 21.460411, 14.722791>,  <16.239525, 21.731541, 14.147254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.641285, 21.460411, 14.722791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.832260, 21.780540, 14.577720>,  <16.946846, 21.972618, 14.490677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.832260, 21.780540, 14.577720>,  <16.641285, 21.460411, 14.722791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.832260, 21.780540, 14.577720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144319, 0.335728, 0.930838,
		0.866732, -0.496760, 0.044788,
		0.477439, 0.800323, -0.362678,
		16.975492, 22.020638, 14.468916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.417995, 21.427347, 15.038690>,  <16.641285, 21.460411, 14.722791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.417995, 21.427347, 15.038690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.356693, 21.797832, 14.900912>,  <17.319912, 22.020124, 14.818246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.356693, 21.797832, 14.900912>,  <17.417995, 21.427347, 15.038690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.356693, 21.797832, 14.900912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355961, 0.376904, 0.855123,
		0.921848, 0.008443, -0.387459,
		-0.153255, 0.926214, -0.344443,
		17.310717, 22.075697, 14.797580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.001694, 21.826166, 15.228031>,  <17.417995, 21.427347, 15.038690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.001694, 21.826166, 15.228031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.688911, 22.068119, 15.167815>,  <17.501242, 22.213291, 15.131685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.688911, 22.068119, 15.167815>,  <18.001694, 21.826166, 15.228031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.688911, 22.068119, 15.167815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252445, 0.528127, 0.810773,
		0.569926, 0.595986, -0.565671,
		-0.781956, 0.604882, -0.150540,
		17.454325, 22.249584, 15.122653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.250505, 22.438240, 15.277040>,  <18.001694, 21.826166, 15.228031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.250505, 22.438240, 15.277040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.864399, 22.450855, 15.380784>,  <17.632734, 22.458424, 15.443030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.864399, 22.450855, 15.380784>,  <18.250505, 22.438240, 15.277040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.864399, 22.450855, 15.380784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257615, 0.280344, 0.924685,
		-0.043547, 0.959381, -0.278731,
		-0.965266, 0.031538, 0.259359,
		17.574820, 22.460316, 15.458591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.151720, 23.059294, 15.629429>,  <18.250505, 22.438240, 15.277040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.151720, 23.059294, 15.629429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.838642, 22.836441, 15.740420>,  <17.650795, 22.702730, 15.807015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.838642, 22.836441, 15.740420>,  <18.151720, 23.059294, 15.629429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.838642, 22.836441, 15.740420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173569, 0.232753, 0.956922,
		-0.597715, 0.797140, -0.085474,
		-0.782695, -0.557131, 0.277479,
		17.603834, 22.669302, 15.823664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.789629, 23.392109, 16.198517>,  <18.151720, 23.059294, 15.629429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.789629, 23.392109, 16.198517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.675674, 23.009544, 16.224184>,  <17.607302, 22.780006, 16.239584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.675674, 23.009544, 16.224184>,  <17.789629, 23.392109, 16.198517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.675674, 23.009544, 16.224184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020806, 0.073096, 0.997108,
		-0.958336, 0.282727, -0.040723,
		-0.284886, -0.956411, 0.064168,
		17.590208, 22.722622, 16.243435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.087782, 23.350937, 16.524166>,  <17.789629, 23.392109, 16.198517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.087782, 23.350937, 16.524166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.290375, 23.012192, 16.589033>,  <17.411930, 22.808945, 16.627954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.290375, 23.012192, 16.589033>,  <17.087782, 23.350937, 16.524166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.290375, 23.012192, 16.589033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226873, 0.050563, 0.972611,
		-0.831869, -0.529401, -0.166521,
		0.506481, -0.846864, 0.162169,
		17.442320, 22.758133, 16.637684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.691689, 22.997871, 16.957872>,  <17.087782, 23.350937, 16.524166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.691689, 22.997871, 16.957872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.048431, 22.820442, 16.993265>,  <17.262478, 22.713984, 17.014502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.048431, 22.820442, 16.993265>,  <16.691689, 22.997871, 16.957872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.048431, 22.820442, 16.993265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133536, -0.071310, 0.988475,
		-0.432153, -0.893396, -0.122832,
		0.891858, -0.443575, 0.088483,
		17.315989, 22.687370, 17.019810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.627169, 22.496206, 17.496187>,  <16.691689, 22.997871, 16.957872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.627169, 22.496206, 17.496187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.023010, 22.553719, 17.497253>,  <17.260515, 22.588226, 17.497892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.023010, 22.553719, 17.497253>,  <16.627169, 22.496206, 17.496187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.023010, 22.553719, 17.497253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001484, -0.008317, 0.999964,
		0.143801, -0.989574, -0.008017,
		0.989606, 0.143784, 0.002665,
		17.319893, 22.596853, 17.498053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.903147, 22.057573, 17.977980>,  <16.627169, 22.496206, 17.496187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.903147, 22.057573, 17.977980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.195805, 22.325340, 17.926477>,  <17.371399, 22.486000, 17.895576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.195805, 22.325340, 17.926477>,  <16.903147, 22.057573, 17.977980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.195805, 22.325340, 17.926477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284891, -0.128676, 0.949884,
		0.619301, -0.731658, -0.284856,
		0.731644, 0.669417, -0.128754,
		17.415298, 22.526165, 17.887852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.549551, 21.775814, 18.228256>,  <16.903147, 22.057573, 17.977980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.549551, 21.775814, 18.228256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.581528, 22.174393, 18.238865>,  <17.600714, 22.413540, 18.245230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.581528, 22.174393, 18.238865>,  <17.549551, 21.775814, 18.228256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.581528, 22.174393, 18.238865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328323, -0.051444, 0.943164,
		0.941177, -0.066690, -0.331269,
		0.079941, 0.996447, 0.026522,
		17.605511, 22.473328, 18.246820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.090523, 21.803432, 18.637188>,  <17.549551, 21.775814, 18.228256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.090523, 21.803432, 18.637188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.916393, 22.163067, 18.655697>,  <17.811916, 22.378847, 18.666801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.916393, 22.163067, 18.655697>,  <18.090523, 21.803432, 18.637188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.916393, 22.163067, 18.655697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273542, 0.083127, 0.958261,
		0.857711, 0.429810, -0.282124,
		-0.435323, 0.899085, 0.046272,
		17.785797, 22.432793, 18.669579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.628511, 22.251057, 18.906050>,  <18.090523, 21.803432, 18.637188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.628511, 22.251057, 18.906050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.275871, 22.425995, 18.977057>,  <18.064287, 22.530958, 19.019661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.275871, 22.425995, 18.977057>,  <18.628511, 22.251057, 18.906050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.275871, 22.425995, 18.977057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283277, 0.189425, 0.940145,
		0.377540, 0.879119, -0.290886,
		-0.881600, 0.437343, 0.177519,
		18.011391, 22.557198, 19.030312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.773035, 22.738689, 19.539032>,  <18.628511, 22.251057, 18.906050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.773035, 22.738689, 19.539032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.373524, 22.734642, 19.519680>,  <18.133818, 22.732214, 19.508070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.373524, 22.734642, 19.519680>,  <18.773035, 22.738689, 19.539032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.373524, 22.734642, 19.519680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048271, -0.010621, 0.998778,
		-0.010621, 0.999892, 0.010120,
		-0.998778, -0.010120, -0.048378,
		18.073891, 22.731606, 19.505167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.592503, 23.327827, 20.021202>,  <18.773035, 22.738689, 19.539032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.592503, 23.327827, 20.021202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.317505, 23.040791, 19.976631>,  <18.152506, 22.868568, 19.949888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.317505, 23.040791, 19.976631>,  <18.592503, 23.327827, 20.021202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.317505, 23.040791, 19.976631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091885, -0.238166, 0.966868,
		-0.720355, 0.654476, 0.229674,
		-0.687492, -0.717592, -0.111427,
		18.111258, 22.825514, 19.943203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.202465, 23.430935, 20.509588>,  <18.592503, 23.327827, 20.021202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.202465, 23.430935, 20.509588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.097755, 23.058868, 20.406624>,  <18.034929, 22.835629, 20.344845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.097755, 23.058868, 20.406624>,  <18.202465, 23.430935, 20.509588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.097755, 23.058868, 20.406624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044214, -0.254874, 0.965963,
		-0.964116, 0.264246, 0.025593,
		-0.261774, -0.930168, -0.257412,
		18.019222, 22.779818, 20.329401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.484831, 23.330658, 20.827971>,  <18.202465, 23.430935, 20.509588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.484831, 23.330658, 20.827971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.655743, 22.976311, 20.755672>,  <17.758289, 22.763702, 20.712294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.655743, 22.976311, 20.755672>,  <17.484831, 23.330658, 20.827971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.655743, 22.976311, 20.755672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098822, -0.244473, 0.964607,
		-0.898702, -0.394295, -0.192002,
		0.427279, -0.885869, -0.180743,
		17.783926, 22.710550, 20.701450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.038403, 22.783966, 21.186319>,  <17.484831, 23.330658, 20.827971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.038403, 22.783966, 21.186319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.406528, 22.631577, 21.150822>,  <17.627405, 22.540142, 21.129522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.406528, 22.631577, 21.150822>,  <17.038403, 22.783966, 21.186319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.406528, 22.631577, 21.150822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035105, -0.306394, 0.951257,
		-0.389597, -0.872342, -0.295353,
		0.920316, -0.380976, -0.088746,
		17.682623, 22.517284, 21.124197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.975672, 22.211864, 21.502426>,  <17.038403, 22.783966, 21.186319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.975672, 22.211864, 21.502426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.372509, 22.260479, 21.489910>,  <17.610611, 22.289648, 21.482401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.372509, 22.260479, 21.489910>,  <16.975672, 22.211864, 21.502426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.372509, 22.260479, 21.489910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060236, -0.242433, 0.968296,
		0.110098, -0.962525, -0.247837,
		0.992094, 0.121536, -0.031288,
		17.670137, 22.296940, 21.480524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.248184, 21.656210, 21.956514>,  <16.975672, 22.211864, 21.502426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.248184, 21.656210, 21.956514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.549618, 21.915707, 21.914101>,  <17.730478, 22.071404, 21.888653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.549618, 21.915707, 21.914101>,  <17.248184, 21.656210, 21.956514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.549618, 21.915707, 21.914101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080502, 0.069013, 0.994363,
		0.652402, -0.757874, -0.000217,
		0.753586, 0.648741, -0.106034,
		17.775694, 22.110329, 21.882290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.792805, 21.423326, 22.320164>,  <17.248184, 21.656210, 21.956514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.792805, 21.423326, 22.320164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.823948, 21.820702, 22.286650>,  <17.842634, 22.059126, 22.266541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.823948, 21.820702, 22.286650>,  <17.792805, 21.423326, 22.320164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.823948, 21.820702, 22.286650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160609, 0.070446, 0.984501,
		0.983942, -0.090110, -0.154070,
		0.077860, 0.993437, -0.083787,
		17.847305, 22.118732, 22.261513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.732964, 20.665955, 22.109224>,  <17.792805, 21.423326, 22.320164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.732964, 20.665955, 22.109224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.604179, 20.370323, 22.345901>,  <17.526909, 20.192944, 22.487907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.604179, 20.370323, 22.345901>,  <17.732964, 20.665955, 22.109224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.604179, 20.370323, 22.345901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243761, -0.539188, -0.806137,
		0.914834, -0.403777, -0.006561,
		-0.321962, -0.739081, 0.591693,
		17.507591, 20.148600, 22.523409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.071194, 20.105766, 21.893167>,  <17.732964, 20.665955, 22.109224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.071194, 20.105766, 21.893167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.736610, 19.968563, 22.064131>,  <17.535860, 19.886242, 22.166710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.736610, 19.968563, 22.064131>,  <18.071194, 20.105766, 21.893167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.736610, 19.968563, 22.064131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252847, -0.450387, -0.856282,
		0.486212, -0.824316, 0.290002,
		-0.836460, -0.343009, 0.427410,
		17.485672, 19.865660, 22.192354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.917595, 19.450388, 21.575941>,  <18.071194, 20.105766, 21.893167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.917595, 19.450388, 21.575941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.571083, 19.536171, 21.756416>,  <17.363176, 19.587641, 21.864700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.571083, 19.536171, 21.756416>,  <17.917595, 19.450388, 21.575941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.571083, 19.536171, 21.756416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499445, -0.391155, -0.773015,
		0.010707, -0.894990, 0.445957,
		-0.866280, 0.214455, 0.451187,
		17.311199, 19.600508, 21.891771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.508394, 18.807646, 21.481459>,  <17.917595, 19.450388, 21.575941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.508394, 18.807646, 21.481459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.275494, 19.122185, 21.564058>,  <17.135754, 19.310907, 21.613619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.275494, 19.122185, 21.564058>,  <17.508394, 18.807646, 21.481459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.275494, 19.122185, 21.564058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538899, -0.183105, -0.822229,
		-0.608746, -0.590026, 0.530375,
		-0.582251, 0.786347, 0.206500,
		17.100819, 19.358089, 21.626009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.839081, 18.563089, 21.361231>,  <17.508394, 18.807646, 21.481459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.839081, 18.563089, 21.361231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.810612, 18.961922, 21.372307>,  <16.793530, 19.201221, 21.378952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.810612, 18.961922, 21.372307>,  <16.839081, 18.563089, 21.361231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.810612, 18.961922, 21.372307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561050, -0.017064, -0.827606,
		-0.824717, -0.074439, 0.560626,
		-0.071172, 0.997079, 0.027691,
		16.789261, 19.261045, 21.380613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.188782, 18.660242, 21.192844>,  <16.839081, 18.563089, 21.361231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.188782, 18.660242, 21.192844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.379581, 19.000908, 21.105999>,  <16.494062, 19.205307, 21.053892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.379581, 19.000908, 21.105999>,  <16.188782, 18.660242, 21.192844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.379581, 19.000908, 21.105999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353657, -0.040156, -0.934513,
		-0.804610, 0.522547, 0.282042,
		0.477001, 0.851664, -0.217112,
		16.522682, 19.256407, 21.040865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.688675, 19.064617, 20.807953>,  <16.188782, 18.660242, 21.192844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.688675, 19.064617, 20.807953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.053516, 19.220394, 20.756723>,  <16.272421, 19.313860, 20.725986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.053516, 19.220394, 20.756723>,  <15.688675, 19.064617, 20.807953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.053516, 19.220394, 20.756723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195944, 0.139717, -0.970611,
		-0.360102, 0.910393, 0.203745,
		0.912103, 0.389441, -0.128074,
		16.327147, 19.337227, 20.718302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.567159, 19.695211, 20.402231>,  <15.688675, 19.064617, 20.807953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.567159, 19.695211, 20.402231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.957267, 19.625980, 20.347256>,  <16.191332, 19.584442, 20.314270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.957267, 19.625980, 20.347256>,  <15.567159, 19.695211, 20.402231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.957267, 19.625980, 20.347256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096790, 0.224584, -0.969636,
		0.198690, 0.958961, 0.202279,
		0.975271, -0.173078, -0.137440,
		16.249847, 19.574057, 20.306025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.806806, 20.240030, 19.964922>,  <15.567159, 19.695211, 20.402231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.806806, 20.240030, 19.964922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.098743, 19.971165, 19.915085>,  <16.273907, 19.809845, 19.885181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.098743, 19.971165, 19.915085>,  <15.806806, 20.240030, 19.964922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.098743, 19.971165, 19.915085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028535, 0.152145, -0.987946,
		0.683017, 0.724602, 0.091862,
		0.729845, -0.672163, -0.124594,
		16.317698, 19.769516, 19.877707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.293127, 20.629772, 19.604235>,  <15.806806, 20.240030, 19.964922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.293127, 20.629772, 19.604235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.340912, 20.236408, 19.549635>,  <16.369583, 20.000389, 19.516874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.340912, 20.236408, 19.549635>,  <16.293127, 20.629772, 19.604235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.340912, 20.236408, 19.549635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088048, 0.126451, -0.988057,
		0.988927, 0.130052, -0.071481,
		0.119460, -0.983411, -0.136502,
		16.376749, 19.941385, 19.508684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.685364, 20.653593, 19.098455>,  <16.293127, 20.629772, 19.604235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.685364, 20.653593, 19.098455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.542690, 20.280025, 19.088854>,  <16.457087, 20.055885, 19.083094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.542690, 20.280025, 19.088854>,  <16.685364, 20.653593, 19.098455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.542690, 20.280025, 19.088854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033711, 0.038544, -0.998688,
		0.933617, -0.355405, -0.045231,
		-0.356682, -0.933917, -0.024004,
		16.435686, 19.999851, 19.081652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.129280, 20.368067, 18.606667>,  <16.685364, 20.653593, 19.098455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.129280, 20.368067, 18.606667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.805386, 20.133427, 18.612726>,  <16.611050, 19.992643, 18.616362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.805386, 20.133427, 18.612726>,  <17.129280, 20.368067, 18.606667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.805386, 20.133427, 18.612726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121474, -0.192828, -0.973684,
		0.574084, -0.786586, 0.227396,
		-0.809735, -0.586600, 0.015149,
		16.562466, 19.957447, 18.617271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.221704, 19.802187, 18.127949>,  <17.129280, 20.368067, 18.606667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.221704, 19.802187, 18.127949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.823170, 19.834648, 18.138718>,  <16.584049, 19.854126, 18.145178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.823170, 19.834648, 18.138718>,  <17.221704, 19.802187, 18.127949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.823170, 19.834648, 18.138718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035860, -0.110791, -0.993197,
		-0.077614, -0.990525, 0.113295,
		-0.996339, 0.081149, 0.026922,
		16.524269, 19.858994, 18.146793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.024797, 19.421812, 17.547880>,  <17.221704, 19.802187, 18.127949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.024797, 19.421812, 17.547880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.669495, 19.580013, 17.641325>,  <16.456312, 19.674934, 17.697392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.669495, 19.580013, 17.641325>,  <17.024797, 19.421812, 17.547880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.669495, 19.580013, 17.641325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351587, -0.258103, -0.899872,
		-0.295608, -0.881453, 0.368316,
		-0.888258, 0.395505, 0.233610,
		16.403017, 19.698664, 17.711409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.533375, 18.833370, 17.507900>,  <17.024797, 19.421812, 17.547880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.533375, 18.833370, 17.507900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.344589, 19.180584, 17.446241>,  <16.231318, 19.388912, 17.409246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.344589, 19.180584, 17.446241>,  <16.533375, 18.833370, 17.507900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.344589, 19.180584, 17.446241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257453, -0.302925, -0.917581,
		-0.843188, -0.393382, 0.366449,
		-0.471966, 0.868036, -0.154145,
		16.202999, 19.440994, 17.399998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.927556, 18.656900, 17.137587>,  <16.533375, 18.833370, 17.507900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.927556, 18.656900, 17.137587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.027348, 19.033508, 17.046986>,  <16.087223, 19.259472, 16.992624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.027348, 19.033508, 17.046986>,  <15.927556, 18.656900, 17.137587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.027348, 19.033508, 17.046986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192060, -0.181145, -0.964520,
		-0.949144, 0.284129, 0.135636,
		0.249478, 0.941519, -0.226503,
		16.102192, 19.315964, 16.979034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.469519, 18.782495, 16.705446>,  <15.927556, 18.656900, 17.137587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.469519, 18.782495, 16.705446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.729457, 19.084759, 16.672741>,  <15.885420, 19.266117, 16.653118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.729457, 19.084759, 16.672741>,  <15.469519, 18.782495, 16.705446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.729457, 19.084759, 16.672741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113280, -0.010080, -0.993512,
		-0.751578, 0.654891, 0.079051,
		0.649845, 0.755656, -0.081762,
		15.924411, 19.311455, 16.648212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.200508, 19.285143, 16.230801>,  <15.469519, 18.782495, 16.705446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.200508, 19.285143, 16.230801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.589528, 19.378021, 16.236883>,  <15.822940, 19.433748, 16.240534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.589528, 19.378021, 16.236883>,  <15.200508, 19.285143, 16.230801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.589528, 19.378021, 16.236883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021307, -0.023780, -0.999490,
		-0.231717, 0.972378, -0.028075,
		0.972550, 0.232197, 0.015208,
		15.881293, 19.447680, 16.241446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.269721, 19.758921, 15.672188>,  <15.200508, 19.285143, 16.230801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.269721, 19.758921, 15.672188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.649856, 19.667271, 15.756438>,  <15.877936, 19.612282, 15.806989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.649856, 19.667271, 15.756438>,  <15.269721, 19.758921, 15.672188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.649856, 19.667271, 15.756438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260155, 0.213373, -0.941696,
		0.170823, 0.949723, 0.262384,
		0.950336, -0.229124, 0.210626,
		15.934957, 19.598534, 15.819626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.586354, 20.177164, 15.306915>,  <15.269721, 19.758921, 15.672188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.586354, 20.177164, 15.306915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.869260, 19.910725, 15.401647>,  <16.039003, 19.750860, 15.458486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.869260, 19.910725, 15.401647>,  <15.586354, 20.177164, 15.306915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.869260, 19.910725, 15.401647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429389, 0.138632, -0.892416,
		0.561606, 0.732866, 0.384065,
		0.707265, -0.666099, 0.236828,
		16.081440, 19.710896, 15.472695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.161409, 20.534172, 15.124824>,  <15.586354, 20.177164, 15.306915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.161409, 20.534172, 15.124824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.229641, 20.140205, 15.113204>,  <16.270580, 19.903826, 15.106233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.229641, 20.140205, 15.113204>,  <16.161409, 20.534172, 15.124824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.229641, 20.140205, 15.113204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371292, 0.091557, -0.923991,
		0.912713, 0.146829, 0.381309,
		0.170580, -0.984915, -0.029049,
		16.280815, 19.844730, 15.104489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.794670, 20.512192, 14.886025>,  <16.161409, 20.534172, 15.124824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.794670, 20.512192, 14.886025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.634613, 20.151661, 14.819697>,  <16.538580, 19.935343, 14.779901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.634613, 20.151661, 14.819697>,  <16.794670, 20.512192, 14.886025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.634613, 20.151661, 14.819697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340243, 0.021900, -0.940083,
		0.850954, -0.432585, 0.297907,
		-0.400141, -0.901327, -0.165820,
		16.514570, 19.881262, 14.769952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.253899, 20.098402, 14.405408>,  <16.794670, 20.512192, 14.886025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.253899, 20.098402, 14.405408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.891285, 19.932690, 14.372996>,  <16.673716, 19.833263, 14.353549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.891285, 19.932690, 14.372996>,  <17.253899, 20.098402, 14.405408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.891285, 19.932690, 14.372996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122903, -0.075394, -0.989551,
		0.403841, -0.907021, 0.119264,
		-0.906535, -0.414280, -0.081029,
		16.619324, 19.808407, 14.348688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.319950, 19.479046, 13.929147>,  <17.253899, 20.098402, 14.405408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.319950, 19.479046, 13.929147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.934505, 19.585808, 13.934999>,  <16.703238, 19.649864, 13.938509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.934505, 19.585808, 13.934999>,  <17.319950, 19.479046, 13.929147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.934505, 19.585808, 13.934999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118598, -0.377853, -0.918238,
		-0.239551, -0.886561, 0.395758,
		-0.963613, 0.266901, 0.014630,
		16.645422, 19.665878, 13.939387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.977951, 18.889311, 13.761100>,  <17.319950, 19.479046, 13.929147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.977951, 18.889311, 13.761100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.740067, 19.196140, 13.664838>,  <16.597336, 19.380238, 13.607080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.740067, 19.196140, 13.664838>,  <16.977951, 18.889311, 13.761100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.740067, 19.196140, 13.664838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122244, -0.382149, -0.915980,
		-0.794590, -0.515327, 0.321039,
		-0.594713, 0.767073, -0.240656,
		16.561653, 19.426262, 13.592641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.385412, 18.572329, 13.577427>,  <16.977951, 18.889311, 13.761100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.385412, 18.572329, 13.577427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.352135, 18.926533, 13.394583>,  <16.332169, 19.139055, 13.284877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.352135, 18.926533, 13.394583>,  <16.385412, 18.572329, 13.577427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.352135, 18.926533, 13.394583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341407, -0.456268, -0.821743,
		-0.936226, 0.087696, 0.340279,
		-0.083194, 0.885511, -0.457110,
		16.327177, 19.192186, 13.257450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.716033, 18.580698, 13.371005>,  <16.385412, 18.572329, 13.577427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.716033, 18.580698, 13.371005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.909503, 18.851208, 13.148758>,  <16.025585, 19.013514, 13.015409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.909503, 18.851208, 13.148758>,  <15.716033, 18.580698, 13.371005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.909503, 18.851208, 13.148758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416909, -0.380153, -0.825634,
		-0.769575, 0.630980, 0.098075,
		0.483675, 0.676276, -0.555617,
		16.054605, 19.054090, 12.982073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.188580, 18.751966, 12.813190>,  <15.716033, 18.580698, 13.371005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.188580, 18.751966, 12.813190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.548846, 18.868896, 12.684600>,  <15.765006, 18.939054, 12.607446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.548846, 18.868896, 12.684600>,  <15.188580, 18.751966, 12.813190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.548846, 18.868896, 12.684600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220144, -0.330877, -0.917637,
		-0.374616, 0.897255, -0.233656,
		0.900666, 0.292323, -0.321478,
		15.819046, 18.956593, 12.588157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.063300, 19.091408, 12.294371>,  <15.188580, 18.751966, 12.813190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.063300, 19.091408, 12.294371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.432742, 18.944046, 12.251979>,  <15.654408, 18.855629, 12.226543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.432742, 18.944046, 12.251979>,  <15.063300, 19.091408, 12.294371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.432742, 18.944046, 12.251979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199421, -0.225638, -0.953582,
		0.327391, 0.901868, -0.281868,
		0.923605, -0.368405, -0.105980,
		15.709824, 18.833525, 12.220185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.310834, 19.412687, 11.717777>,  <15.063300, 19.091408, 12.294371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.310834, 19.412687, 11.717777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.519328, 19.073868, 11.759395>,  <15.644424, 18.870577, 11.784366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.519328, 19.073868, 11.759395>,  <15.310834, 19.412687, 11.717777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.519328, 19.073868, 11.759395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045034, -0.149046, -0.987804,
		0.852224, 0.510193, -0.115834,
		0.521235, -0.847047, 0.104044,
		15.675698, 18.819754, 11.790608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.768341, 19.417452, 11.238710>,  <15.310834, 19.412687, 11.717777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.768341, 19.417452, 11.238710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.739617, 19.031139, 11.338400>,  <15.722383, 18.799353, 11.398213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.739617, 19.031139, 11.338400>,  <15.768341, 19.417452, 11.238710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.739617, 19.031139, 11.338400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267044, -0.259363, -0.928126,
		0.961005, -0.000095, 0.276530,
		-0.071810, -0.965780, 0.249224,
		15.718074, 18.741405, 11.413167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.029375, 19.074621, 10.654703>,  <15.768341, 19.417452, 11.238710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.029375, 19.074621, 10.654703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.893300, 18.755554, 10.853902>,  <15.811655, 18.564114, 10.973421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.893300, 18.755554, 10.853902>,  <16.029375, 19.074621, 10.654703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.893300, 18.755554, 10.853902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310541, -0.595168, -0.741174,
		0.887601, -0.097489, 0.450177,
		-0.340187, -0.797666, 0.497998,
		15.791244, 18.516254, 11.003302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.510357, 18.619831, 10.673315>,  <16.029375, 19.074621, 10.654703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.510357, 18.619831, 10.673315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.184814, 18.392380, 10.721140>,  <15.989489, 18.255909, 10.749835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.184814, 18.392380, 10.721140>,  <16.510357, 18.619831, 10.673315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.184814, 18.392380, 10.721140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268637, -0.550666, -0.790317,
		0.515238, -0.611086, 0.600919,
		-0.813858, -0.568630, 0.119563,
		15.940657, 18.221790, 10.757009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.792223, 17.974716, 10.668826>,  <16.510357, 18.619831, 10.673315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.792223, 17.974716, 10.668826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.401329, 17.936714, 10.592941>,  <16.166794, 17.913912, 10.547411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.401329, 17.936714, 10.592941>,  <16.792223, 17.974716, 10.668826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.401329, 17.936714, 10.592941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208316, -0.599305, -0.772941,
		-0.040260, -0.794863, 0.605452,
		-0.977233, -0.095006, -0.189711,
		16.108160, 17.908213, 10.536028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.659298, 17.307449, 10.559701>,  <16.792223, 17.974716, 10.668826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.659298, 17.307449, 10.559701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.363663, 17.491081, 10.362524>,  <16.186281, 17.601259, 10.244218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.363663, 17.491081, 10.362524>,  <16.659298, 17.307449, 10.559701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.363663, 17.491081, 10.362524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300300, -0.430495, -0.851172,
		-0.602964, -0.777124, 0.180313,
		-0.739090, 0.459078, -0.492943,
		16.141935, 17.628805, 10.214642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.395803, 16.712814, 10.283335>,  <16.659298, 17.307449, 10.559701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.395803, 16.712814, 10.283335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.252003, 17.029140, 10.085196>,  <16.165722, 17.218935, 9.966311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.252003, 17.029140, 10.085196>,  <16.395803, 16.712814, 10.283335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.252003, 17.029140, 10.085196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224113, -0.442129, -0.868502,
		-0.905831, -0.423244, -0.018285,
		-0.359504, 0.790814, -0.495349,
		16.144152, 17.266384, 9.936591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.116711, 16.430658, 9.744581>,  <16.395803, 16.712814, 10.283335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.116711, 16.430658, 9.744581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.197529, 16.806549, 9.634244>,  <16.246019, 17.032084, 9.568042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.197529, 16.806549, 9.634244>,  <16.116711, 16.430658, 9.744581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.197529, 16.806549, 9.634244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112407, -0.302042, -0.946644,
		-0.972904, 0.160259, -0.166658,
		0.202046, 0.939727, -0.275843,
		16.258142, 17.088467, 9.551491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.729111, 16.510162, 9.130908>,  <16.116711, 16.430658, 9.744581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.729111, 16.510162, 9.130908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.971122, 16.827671, 9.106043>,  <16.116329, 17.018177, 9.091124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.971122, 16.827671, 9.106043>,  <15.729111, 16.510162, 9.130908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.971122, 16.827671, 9.106043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005990, -0.073535, -0.997275,
		-0.796181, 0.603752, -0.039736,
		0.605028, 0.793774, -0.062163,
		16.152630, 17.065804, 9.087394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.437195, 16.918425, 8.619116>,  <15.729111, 16.510162, 9.130908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.437195, 16.918425, 8.619116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.814561, 17.046131, 8.654982>,  <16.040979, 17.122755, 8.676501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.814561, 17.046131, 8.654982>,  <15.437195, 16.918425, 8.619116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.814561, 17.046131, 8.654982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031924, 0.181691, -0.982837,
		-0.330077, 0.930085, 0.161217,
		0.943414, 0.319265, 0.089664,
		16.097586, 17.141911, 8.681881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.449821, 17.525806, 8.237453>,  <15.437195, 16.918425, 8.619116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.449821, 17.525806, 8.237453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.828568, 17.398872, 8.258377>,  <16.055817, 17.322712, 8.270932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.828568, 17.398872, 8.258377>,  <15.449821, 17.525806, 8.237453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.828568, 17.398872, 8.258377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151073, 0.295257, -0.943398,
		0.283930, 0.901177, 0.327511,
		0.946869, -0.317337, 0.052312,
		16.112629, 17.303671, 8.274071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.899860, 18.069565, 8.010880>,  <15.449821, 17.525806, 8.237453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.899860, 18.069565, 8.010880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.066872, 17.709461, 7.961555>,  <16.167078, 17.493399, 7.931960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.066872, 17.709461, 7.961555>,  <15.899860, 18.069565, 8.010880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.066872, 17.709461, 7.961555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108753, 0.184242, -0.976846,
		0.902133, 0.394449, 0.174832,
		0.417527, -0.900258, -0.123314,
		16.192129, 17.439384, 7.924562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.477793, 18.145126, 7.617856>,  <15.899860, 18.069565, 8.010880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.477793, 18.145126, 7.617856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.386421, 17.766708, 7.525927>,  <16.331598, 17.539658, 7.470769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.386421, 17.766708, 7.525927>,  <16.477793, 18.145126, 7.617856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.386421, 17.766708, 7.525927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124869, 0.205644, -0.970628,
		0.965519, -0.250418, 0.071156,
		-0.228430, -0.946045, -0.229822,
		16.317892, 17.482895, 7.456980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.053024, 17.938942, 7.173674>,  <16.477793, 18.145126, 7.617856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.053024, 17.938942, 7.173674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.702690, 17.753468, 7.120140>,  <16.492491, 17.642183, 7.088019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.702690, 17.753468, 7.120140>,  <17.053024, 17.938942, 7.173674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.702690, 17.753468, 7.120140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094086, 0.107945, -0.989695,
		0.473354, -0.879400, -0.050916,
		-0.875833, -0.463686, -0.133836,
		16.439939, 17.614363, 7.079989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.114202, 17.465668, 6.636046>,  <17.053024, 17.938942, 7.173674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.114202, 17.465668, 6.636046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.718906, 17.526695, 6.631944>,  <16.481730, 17.563313, 6.629482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.718906, 17.526695, 6.631944>,  <17.114202, 17.465668, 6.636046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.718906, 17.526695, 6.631944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016439, 0.039325, -0.999091,
		-0.152030, -0.987510, -0.041370,
		-0.988239, 0.152572, -0.010255,
		16.422434, 17.572466, 6.628867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.861742, 16.976599, 6.070101>,  <17.114202, 17.465668, 6.636046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.861742, 16.976599, 6.070101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.591904, 17.260117, 6.152596>,  <16.430000, 17.430227, 6.202094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.591904, 17.260117, 6.152596>,  <16.861742, 16.976599, 6.070101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.591904, 17.260117, 6.152596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182294, 0.110777, -0.976984,
		-0.715326, -0.696664, 0.054479,
		-0.674594, 0.708793, 0.206239,
		16.389524, 17.472755, 6.214468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.962065, 17.287954, 5.423761>,  <16.861742, 16.976599, 6.070101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.962065, 17.287954, 5.423761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.592365, 17.135258, 5.426333>,  <16.370546, 17.043640, 5.427877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.592365, 17.135258, 5.426333>,  <16.962065, 17.287954, 5.423761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.592365, 17.135258, 5.426333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224011, 0.528565, -0.818803,
		0.309171, -0.758217, -0.574039,
		-0.924247, -0.381741, 0.006432,
		16.315092, 17.020735, 5.428263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.764250, 17.240896, 4.699201>,  <16.962065, 17.287954, 5.423761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.764250, 17.240896, 4.699201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.436840, 17.230507, 4.928754>,  <16.240395, 17.224274, 5.066485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.436840, 17.230507, 4.928754>,  <16.764250, 17.240896, 4.699201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.436840, 17.230507, 4.928754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447094, 0.656088, -0.607993,
		-0.360724, -0.754237, -0.548639,
		-0.818526, -0.025975, 0.573882,
		16.191282, 17.222713, 5.100918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.151857, 16.838478, 4.400040>,  <16.764250, 17.240896, 4.699201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.151857, 16.838478, 4.400040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.022717, 17.142982, 4.624983>,  <15.945232, 17.325686, 4.759949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.022717, 17.142982, 4.624983>,  <16.151857, 16.838478, 4.400040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.022717, 17.142982, 4.624983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387090, 0.436001, -0.812444,
		-0.863671, -0.479982, 0.153913,
		-0.322852, 0.761263, 0.562358,
		15.925861, 17.371361, 4.793690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.389254, 16.868078, 4.436050>,  <16.151857, 16.838478, 4.400040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.389254, 16.868078, 4.436050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.589629, 17.213284, 4.462177>,  <15.709855, 17.420406, 4.477853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.589629, 17.213284, 4.462177>,  <15.389254, 16.868078, 4.436050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.589629, 17.213284, 4.462177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494834, 0.347510, -0.796477,
		-0.710069, 0.366666, 0.601131,
		0.500940, 0.863014, 0.065317,
		15.739911, 17.472187, 4.481772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.175568, 17.590467, 4.655446>,  <15.389254, 16.868078, 4.436050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.175568, 17.590467, 4.655446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.448733, 17.691509, 4.381272>,  <15.612633, 17.752134, 4.216768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.448733, 17.691509, 4.381272>,  <15.175568, 17.590467, 4.655446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.448733, 17.691509, 4.381272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701905, 0.486858, -0.519903,
		0.202379, 0.836158, 0.509787,
		0.682915, 0.252604, -0.685433,
		15.653607, 17.767290, 4.175642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.861935, 18.044094, 4.237956>,  <15.175568, 17.590467, 4.655446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.861935, 18.044094, 4.237956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.189063, 17.984444, 4.015630>,  <15.385340, 17.948654, 3.882234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.189063, 17.984444, 4.015630>,  <14.861935, 18.044094, 4.237956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.189063, 17.984444, 4.015630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451097, 0.433592, -0.780070,
		0.357325, 0.888684, 0.287331,
		0.817820, -0.149125, -0.555816,
		15.434409, 17.939707, 3.848885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.294641, 17.822382, 4.548266>,  <14.861935, 18.044094, 4.237956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.294641, 17.822382, 4.548266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.321673, 17.982491, 4.913827>,  <14.337893, 18.078556, 5.133163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.321673, 17.982491, 4.913827>,  <14.294641, 17.822382, 4.548266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.321673, 17.982491, 4.913827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318126, 0.876828, -0.360511,
		-0.945637, -0.266373, 0.186593,
		0.067579, 0.400273, 0.913901,
		14.341948, 18.102571, 5.187997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.629368, 18.160124, 4.855110>,  <14.294641, 17.822382, 4.548266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.629368, 18.160124, 4.855110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.953122, 18.338516, 5.007949>,  <14.147374, 18.445551, 5.099652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.953122, 18.338516, 5.007949>,  <13.629368, 18.160124, 4.855110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.953122, 18.338516, 5.007949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346453, 0.887948, -0.302521,
		-0.474201, 0.112477, 0.873203,
		0.809385, 0.445979, 0.382098,
		14.195938, 18.472309, 5.122578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.572176, 18.830057, 5.263693>,  <13.629368, 18.160124, 4.855110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.572176, 18.830057, 5.263693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.938239, 18.813339, 5.103323>,  <14.157877, 18.803308, 5.007101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.938239, 18.813339, 5.103323>,  <13.572176, 18.830057, 5.263693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.938239, 18.813339, 5.103323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115228, 0.925985, -0.359548,
		0.386276, 0.375241, 0.842606,
		0.915157, -0.041793, -0.400924,
		14.212787, 18.800802, 4.983046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.889847, 19.522177, 5.309382>,  <13.572176, 18.830057, 5.263693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.889847, 19.522177, 5.309382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.042975, 19.310932, 5.006187>,  <14.134852, 19.184185, 4.824271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.042975, 19.310932, 5.006187>,  <13.889847, 19.522177, 5.309382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.042975, 19.310932, 5.006187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194800, 0.755896, -0.625040,
		0.903051, 0.386935, 0.186497,
		0.382822, -0.528113, -0.757987,
		14.157822, 19.152498, 4.778791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.470407, 19.932983, 4.991167>,  <13.889847, 19.522177, 5.309382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.470407, 19.932983, 4.991167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.322415, 19.666130, 4.732539>,  <14.233620, 19.506020, 4.577363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.322415, 19.666130, 4.732539>,  <14.470407, 19.932983, 4.991167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.322415, 19.666130, 4.732539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081948, 0.716675, -0.692575,
		0.925418, -0.203255, -0.319826,
		-0.369981, -0.667131, -0.646568,
		14.211421, 19.465990, 4.538568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.741069, 20.172718, 4.341417>,  <14.470407, 19.932983, 4.991167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.741069, 20.172718, 4.341417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.425858, 19.944515, 4.248866>,  <14.236732, 19.807592, 4.193336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.425858, 19.944515, 4.248866>,  <14.741069, 20.172718, 4.341417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.425858, 19.944515, 4.248866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269123, 0.657245, -0.703990,
		0.553704, -0.492493, -0.671463,
		-0.788026, -0.570508, -0.231378,
		14.189451, 19.773363, 4.179453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.626640, 20.071016, 3.520776>,  <14.741069, 20.172718, 4.341417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.626640, 20.071016, 3.520776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.280835, 20.048470, 3.720552>,  <14.073352, 20.034941, 3.840417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.280835, 20.048470, 3.720552>,  <14.626640, 20.071016, 3.520776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.280835, 20.048470, 3.720552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348728, 0.782862, -0.515283,
		-0.361947, -0.619637, -0.696451,
		-0.864513, -0.056367, 0.499439,
		14.021482, 20.031559, 3.870384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.038241, 19.999367, 3.001709>,  <14.626640, 20.071016, 3.520776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.038241, 19.999367, 3.001709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.969520, 20.196507, 3.342903>,  <13.928287, 20.314791, 3.547620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.969520, 20.196507, 3.342903>,  <14.038241, 19.999367, 3.001709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.969520, 20.196507, 3.342903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209541, 0.827764, -0.520479,
		-0.962588, -0.268156, -0.038942,
		-0.171804, 0.492847, 0.852986,
		13.917978, 20.344360, 3.598799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.326515, 20.298878, 3.014065>,  <14.038241, 19.999367, 3.001709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.326515, 20.298878, 3.014065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.627965, 20.491814, 3.192682>,  <13.808835, 20.607574, 3.299852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.627965, 20.491814, 3.192682>,  <13.326515, 20.298878, 3.014065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.627965, 20.491814, 3.192682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085742, 0.745686, -0.660758,
		-0.651689, 0.459675, 0.603324,
		0.753624, 0.482339, 0.446542,
		13.854053, 20.636515, 3.326645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.078871, 20.954163, 3.207856>,  <13.326515, 20.298878, 3.014065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.078871, 20.954163, 3.207856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.466166, 20.924156, 3.112456>,  <13.698545, 20.906153, 3.055215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.466166, 20.924156, 3.112456>,  <13.078871, 20.954163, 3.207856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.466166, 20.924156, 3.112456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112191, 0.722132, -0.682597,
		0.223437, 0.687675, 0.690781,
		0.968240, -0.075018, -0.238502,
		13.756639, 20.901651, 3.040905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.394583, 21.628227, 3.285403>,  <13.078871, 20.954163, 3.207856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.394583, 21.628227, 3.285403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.573190, 21.410225, 3.001546>,  <13.680354, 21.279423, 2.831232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.573190, 21.410225, 3.001546>,  <13.394583, 21.628227, 3.285403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.573190, 21.410225, 3.001546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420455, 0.572280, -0.704069,
		0.789836, 0.612751, 0.026382,
		0.446517, -0.545006, -0.709641,
		13.707145, 21.246723, 2.788654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.999593, 22.004923, 2.934289>,  <13.394583, 21.628227, 3.285403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.999593, 22.004923, 2.934289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.748467, 21.743462, 2.765249>,  <13.597793, 21.586586, 2.663825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.748467, 21.743462, 2.765249>,  <13.999593, 22.004923, 2.934289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.748467, 21.743462, 2.765249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431552, 0.744154, -0.509899,
		0.647776, -0.137747, -0.749274,
		-0.627813, -0.653651, -0.422600,
		13.560123, 21.547367, 2.638469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.947850, 22.073797, 2.200024>,  <13.999593, 22.004923, 2.934289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.947850, 22.073797, 2.200024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.593684, 21.905018, 2.277996>,  <13.381185, 21.803751, 2.324780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.593684, 21.905018, 2.277996>,  <13.947850, 22.073797, 2.200024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.593684, 21.905018, 2.277996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415979, 0.532258, -0.737335,
		0.207363, -0.733935, -0.646792,
		-0.885416, -0.421948, 0.194931,
		13.328059, 21.778433, 2.336476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.639649, 22.175867, 1.641017>,  <13.947850, 22.073797, 2.200024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.639649, 22.175867, 1.641017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.325164, 22.050320, 1.853942>,  <13.136473, 21.974991, 1.981696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.325164, 22.050320, 1.853942>,  <13.639649, 22.175867, 1.641017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.325164, 22.050320, 1.853942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617896, 0.411276, -0.670117,
		-0.008598, -0.855768, -0.517288,
		-0.786213, -0.313868, 0.532312,
		13.089300, 21.956160, 2.013635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.191521, 21.856510, 1.164395>,  <13.639649, 22.175867, 1.641017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.191521, 21.856510, 1.164395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.000699, 22.042637, 1.462630>,  <12.886206, 22.154312, 1.641571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.000699, 22.042637, 1.462630>,  <13.191521, 21.856510, 1.164395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.000699, 22.042637, 1.462630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631330, 0.408751, -0.659048,
		-0.611426, -0.785113, 0.098773,
		-0.477054, 0.465317, 0.745587,
		12.857583, 22.182232, 1.686306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.818601, 21.815929, 0.876591>,  <13.191521, 21.856510, 1.164395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.818601, 21.815929, 0.876591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.969171, 21.779148, 0.507842>,  <14.059512, 21.757080, 0.286593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.969171, 21.779148, 0.507842>,  <13.818601, 21.815929, 0.876591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.969171, 21.779148, 0.507842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845764, -0.440252, -0.301434,
		-0.378138, 0.893153, -0.243491,
		0.376424, -0.091952, -0.921873,
		14.082098, 21.751562, 0.231280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.329706, 21.994389, 0.354767>,  <13.818601, 21.815929, 0.876591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.329706, 21.994389, 0.354767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.577348, 21.746056, 0.162402>,  <13.725933, 21.597055, 0.046982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.577348, 21.746056, 0.162402>,  <13.329706, 21.994389, 0.354767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.577348, 21.746056, 0.162402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769413, -0.356942, -0.529713,
		0.157204, 0.697969, -0.698661,
		0.619104, -0.620832, -0.480914,
		13.763079, 21.559807, 0.018128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.917036, 21.741705, -0.110765>,  <13.329706, 21.994389, 0.354767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.917036, 21.741705, -0.110765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.255540, 21.544731, -0.192106>,  <13.458642, 21.426546, -0.240910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.255540, 21.544731, -0.192106>,  <12.917036, 21.741705, -0.110765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.255540, 21.544731, -0.192106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500555, -0.604177, -0.620012,
		0.182456, 0.626479, -0.757782,
		0.846259, -0.492437, -0.203352,
		13.509418, 21.396999, -0.253112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.902138, 21.809267, -0.855855>,  <12.917036, 21.741705, -0.110765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.902138, 21.809267, -0.855855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.095611, 21.483601, -0.727366>,  <13.211695, 21.288200, -0.650273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.095611, 21.483601, -0.727366>,  <12.902138, 21.809267, -0.855855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.095611, 21.483601, -0.727366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382988, -0.526887, -0.758756,
		0.787002, 0.243972, -0.566662,
		0.483682, -0.814167, 0.321222,
		13.240715, 21.239351, -0.631000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.337943, 21.591999, -1.444328>,  <12.902138, 21.809267, -0.855855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.337943, 21.591999, -1.444328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.243703, 21.307285, -1.179646>,  <13.187159, 21.136457, -1.020837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.243703, 21.307285, -1.179646>,  <13.337943, 21.591999, -1.444328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.243703, 21.307285, -1.179646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268300, -0.606773, -0.748225,
		0.934081, -0.353818, -0.048016,
		-0.235601, -0.711786, 0.661705,
		13.173022, 21.093750, -0.981135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.619825, 20.876148, -1.604052>,  <13.337943, 21.591999, -1.444328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.619825, 20.876148, -1.604052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.263181, 20.843346, -1.425927>,  <13.049194, 20.823664, -1.319052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.263181, 20.843346, -1.425927>,  <13.619825, 20.876148, -1.604052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.263181, 20.843346, -1.425927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285544, -0.661426, -0.693528,
		0.351416, -0.745514, 0.566318,
		-0.891612, -0.082008, 0.445313,
		12.995697, 20.818743, -1.292333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.162871, 21.475187, -1.741679>,  <13.619825, 20.876148, -1.604052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.162871, 21.475187, -1.741679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.410115, 21.323616, -1.466185>,  <14.558461, 21.232674, -1.300889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.410115, 21.323616, -1.466185>,  <14.162871, 21.475187, -1.741679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.410115, 21.323616, -1.466185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576339, -0.814272, 0.069241,
		0.534579, -0.439743, -0.721701,
		0.618109, -0.378930, 0.688733,
		14.595548, 21.209936, -1.259566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.451314, 20.814295, -1.901677>,  <14.162871, 21.475187, -1.741679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.451314, 20.814295, -1.901677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.431073, 20.854691, -1.504237>,  <14.418928, 20.878927, -1.265773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.431073, 20.854691, -1.504237>,  <14.451314, 20.814295, -1.901677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.431073, 20.854691, -1.504237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726902, -0.685962, 0.032701,
		0.684874, -0.720595, 0.108121,
		-0.050603, 0.100990, 0.993600,
		14.415893, 20.884987, -1.206157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.587452, 20.155544, -1.599837>,  <14.451314, 20.814295, -1.901677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.587452, 20.155544, -1.599837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.345588, 20.389610, -1.383701>,  <14.200469, 20.530050, -1.254019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.345588, 20.389610, -1.383701>,  <14.587452, 20.155544, -1.599837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.345588, 20.389610, -1.383701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710946, -0.702379, -0.034925,
		0.359086, -0.405270, 0.840722,
		-0.604660, 0.585166, 0.540340,
		14.164190, 20.565161, -1.221599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<21.113420, 18.761927, 15.838861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.330666, 19.093784, 15.787137>,  <21.461012, 19.292898, 15.756104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.330666, 19.093784, 15.787137>,  <21.113420, 18.761927, 15.838861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.330666, 19.093784, 15.787137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084951, -0.207503, -0.974539,
		-0.835351, 0.518300, -0.183176,
		0.543113, 0.829643, -0.129308,
		21.493599, 19.342678, 15.748344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.805170, 19.093960, 15.315261>,  <21.113420, 18.761927, 15.838861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.805170, 19.093960, 15.315261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.172626, 19.251225, 15.330880>,  <21.393101, 19.345583, 15.340252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.172626, 19.251225, 15.330880>,  <20.805170, 19.093960, 15.315261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.172626, 19.251225, 15.330880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080154, -0.088675, -0.992830,
		-0.386879, 0.915184, -0.112974,
		0.918640, 0.393160, 0.039049,
		21.448219, 19.369173, 15.342595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.840555, 19.723555, 14.823265>,  <20.805170, 19.093960, 15.315261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.840555, 19.723555, 14.823265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.201458, 19.562431, 14.884814>,  <21.417999, 19.465757, 14.921744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.201458, 19.562431, 14.884814>,  <20.840555, 19.723555, 14.823265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.201458, 19.562431, 14.884814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134838, -0.075391, -0.987995,
		0.409574, 0.912174, -0.013708,
		0.902257, -0.402809, 0.153874,
		21.472136, 19.441589, 14.930977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.137453, 19.874239, 14.224479>,  <20.840555, 19.723555, 14.823265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.137453, 19.874239, 14.224479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.440994, 19.659584, 14.372079>,  <21.623119, 19.530792, 14.460639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.440994, 19.659584, 14.372079>,  <21.137453, 19.874239, 14.224479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.440994, 19.659584, 14.372079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381044, -0.093638, -0.919803,
		0.528152, 0.838602, 0.133425,
		0.758855, -0.536636, 0.369000,
		21.668652, 19.498592, 14.482779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.814211, 20.143749, 13.997437>,  <21.137453, 19.874239, 14.224479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.814211, 20.143749, 13.997437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.874584, 19.755318, 14.071441>,  <21.910809, 19.522259, 14.115843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.874584, 19.755318, 14.071441>,  <21.814211, 20.143749, 13.997437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.874584, 19.755318, 14.071441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551467, -0.072612, -0.831031,
		0.820429, 0.227456, 0.524557,
		0.150934, -0.971077, 0.185007,
		21.919865, 19.463995, 14.126943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.606953, 19.963057, 14.009536>,  <21.814211, 20.143749, 13.997437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.606953, 19.963057, 14.009536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.388840, 19.642532, 13.911090>,  <22.257973, 19.450218, 13.852022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.388840, 19.642532, 13.911090>,  <22.606953, 19.963057, 14.009536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.388840, 19.642532, 13.911090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551802, -0.122107, -0.824988,
		0.631018, -0.585656, 0.508747,
		-0.545280, -0.801310, -0.246115,
		22.225256, 19.402140, 13.837255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.020536, 19.557486, 13.597871>,  <22.606953, 19.963057, 14.009536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.020536, 19.557486, 13.597871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.673729, 19.364166, 13.549376>,  <22.465645, 19.248175, 13.520280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.673729, 19.364166, 13.549376>,  <23.020536, 19.557486, 13.597871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.673729, 19.364166, 13.549376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324683, -0.363425, -0.873214,
		0.377963, -0.796458, 0.472016,
		-0.867020, -0.483298, -0.121235,
		22.413622, 19.219177, 13.513006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.209288, 18.881321, 13.331295>,  <23.020536, 19.557486, 13.597871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.209288, 18.881321, 13.331295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.829868, 18.925785, 13.212703>,  <22.602217, 18.952463, 13.141547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.829868, 18.925785, 13.212703>,  <23.209288, 18.881321, 13.331295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.829868, 18.925785, 13.212703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234773, -0.381369, -0.894114,
		-0.212456, -0.917715, 0.335650,
		-0.948549, 0.111158, -0.296479,
		22.545303, 18.959133, 13.123759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.021799, 18.228273, 12.998662>,  <23.209288, 18.881321, 13.331295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.021799, 18.228273, 12.998662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.733788, 18.468784, 12.860082>,  <22.560982, 18.613091, 12.776934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.733788, 18.468784, 12.860082>,  <23.021799, 18.228273, 12.998662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.733788, 18.468784, 12.860082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218873, -0.276993, -0.935612,
		-0.658525, -0.749495, 0.067840,
		-0.720028, 0.601276, -0.346451,
		22.517778, 18.649166, 12.756146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.655924, 17.876736, 12.510584>,  <23.021799, 18.228273, 12.998662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.655924, 17.876736, 12.510584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.559891, 18.254143, 12.419251>,  <22.502272, 18.480587, 12.364452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.559891, 18.254143, 12.419251>,  <22.655924, 17.876736, 12.510584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.559891, 18.254143, 12.419251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132125, -0.264780, -0.955214,
		-0.961719, -0.199161, 0.188231,
		-0.240081, 0.943518, -0.228330,
		22.487865, 18.537199, 12.350753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.053701, 17.869736, 12.124757>,  <22.655924, 17.876736, 12.510584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.053701, 17.869736, 12.124757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.208637, 18.226482, 12.031343>,  <22.301600, 18.440531, 11.975294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.208637, 18.226482, 12.031343>,  <22.053701, 17.869736, 12.124757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.208637, 18.226482, 12.031343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180348, -0.175115, -0.967889,
		-0.904125, 0.417019, 0.093018,
		0.387339, 0.891869, -0.233535,
		22.324839, 18.494043, 11.961282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.468464, 18.233404, 11.748812>,  <22.053701, 17.869736, 12.124757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.468464, 18.233404, 11.748812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.839931, 18.366684, 11.683633>,  <22.062813, 18.446651, 11.644526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.839931, 18.366684, 11.683633>,  <21.468464, 18.233404, 11.748812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.839931, 18.366684, 11.683633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118769, -0.149047, -0.981671,
		-0.351378, 0.931001, -0.098842,
		0.928670, 0.333199, -0.162946,
		22.118532, 18.466644, 11.634749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.489614, 18.886053, 11.418489>,  <21.468464, 18.233404, 11.748812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.489614, 18.886053, 11.418489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.854389, 18.746830, 11.331560>,  <22.073254, 18.663296, 11.279403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.854389, 18.746830, 11.331560>,  <21.489614, 18.886053, 11.418489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.854389, 18.746830, 11.331560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301198, -0.208125, -0.930572,
		0.278662, 0.914079, -0.294631,
		0.911936, -0.348057, -0.217322,
		22.127970, 18.642412, 11.266363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.592819, 19.209358, 10.786267>,  <21.489614, 18.886053, 11.418489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.592819, 19.209358, 10.786267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.875919, 18.926781, 10.788390>,  <22.045778, 18.757235, 10.789664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.875919, 18.926781, 10.788390>,  <21.592819, 19.209358, 10.786267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.875919, 18.926781, 10.788390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233340, -0.240847, -0.942096,
		0.666817, 0.665528, -0.335301,
		0.707748, -0.706445, 0.005307,
		22.088243, 18.714848, 10.789982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.892399, 19.241932, 10.115966>,  <21.592819, 19.209358, 10.786267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.892399, 19.241932, 10.115966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.019051, 18.883083, 10.239201>,  <22.095041, 18.667774, 10.313142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.019051, 18.883083, 10.239201>,  <21.892399, 19.241932, 10.115966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.019051, 18.883083, 10.239201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302925, -0.403425, -0.863415,
		0.898879, 0.180053, -0.399496,
		0.316627, -0.897123, 0.308088,
		22.114038, 18.613947, 10.331627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.215639, 18.959419, 9.587997>,  <21.892399, 19.241932, 10.115966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.215639, 18.959419, 9.587997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.104858, 18.644638, 9.808543>,  <22.038389, 18.455769, 9.940870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.104858, 18.644638, 9.808543>,  <22.215639, 18.959419, 9.587997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.104858, 18.644638, 9.808543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348946, -0.452266, -0.820788,
		0.895284, -0.419715, -0.149348,
		-0.276952, -0.786952, 0.551364,
		22.021772, 18.408552, 9.973952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.215715, 18.365028, 9.108088>,  <22.215639, 18.959419, 9.587997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.215715, 18.365028, 9.108088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.992283, 18.237297, 9.414296>,  <21.858223, 18.160658, 9.598021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.992283, 18.237297, 9.414296>,  <22.215715, 18.365028, 9.108088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.992283, 18.237297, 9.414296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675881, -0.359756, -0.643242,
		0.480804, -0.876702, -0.014874,
		-0.558580, -0.319327, 0.765519,
		21.824709, 18.141499, 9.643951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.059381, 17.700348, 8.978690>,  <22.215715, 18.365028, 9.108088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.059381, 17.700348, 8.978690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.774078, 17.835796, 9.224159>,  <21.602896, 17.917067, 9.371441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.774078, 17.835796, 9.224159>,  <22.059381, 17.700348, 8.978690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.774078, 17.835796, 9.224159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699301, -0.284694, -0.655689,
		-0.047322, -0.896819, 0.439859,
		-0.713260, 0.338622, 0.613674,
		21.560101, 17.937384, 9.408261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.615438, 17.246513, 8.823124>,  <22.059381, 17.700348, 8.978690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.615438, 17.246513, 8.823124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.398037, 17.509830, 9.031454>,  <21.267597, 17.667820, 9.156452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.398037, 17.509830, 9.031454>,  <21.615438, 17.246513, 8.823124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.398037, 17.509830, 9.031454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744141, -0.090757, -0.661829,
		-0.388408, -0.747272, 0.539188,
		-0.543502, 0.658291, 0.520825,
		21.234987, 17.707317, 9.187701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.918707, 16.930330, 8.928251>,  <21.615438, 17.246513, 8.823124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.918707, 16.930330, 8.928251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.881233, 17.327774, 8.953428>,  <20.858749, 17.566240, 8.968534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.881233, 17.327774, 8.953428>,  <20.918707, 16.930330, 8.928251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.881233, 17.327774, 8.953428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687133, -0.018779, -0.726289,
		-0.720466, -0.111291, 0.684502,
		-0.093684, 0.993610, 0.062942,
		20.853128, 17.625856, 8.972311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.099087, 17.102255, 9.032923>,  <20.918707, 16.930330, 8.928251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.099087, 17.102255, 9.032923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.296661, 17.421185, 8.894183>,  <20.415205, 17.612541, 8.810939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.296661, 17.421185, 8.894183>,  <20.099087, 17.102255, 9.032923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.296661, 17.421185, 8.894183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721348, 0.153035, -0.675454,
		-0.485474, 0.583829, 0.650737,
		0.493935, 0.797323, -0.346849,
		20.444841, 17.660381, 8.790129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.593208, 17.707621, 9.056387>,  <20.099087, 17.102255, 9.032923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.593208, 17.707621, 9.056387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.892426, 17.775921, 8.799863>,  <20.071955, 17.816900, 8.645948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.892426, 17.775921, 8.799863>,  <19.593208, 17.707621, 9.056387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.892426, 17.775921, 8.799863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663630, 0.184703, -0.724900,
		-0.005325, 0.967848, 0.251481,
		0.748042, 0.170751, -0.641309,
		20.116838, 17.827147, 8.607470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.169065, 17.206821, 9.230257>,  <19.593208, 17.707621, 9.056387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.169065, 17.206821, 9.230257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.909595, 16.948071, 9.069871>,  <18.753914, 16.792820, 8.973639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.909595, 16.948071, 9.069871>,  <19.169065, 17.206821, 9.230257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.909595, 16.948071, 9.069871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465706, -0.079321, 0.881377,
		-0.601946, 0.758459, -0.249801,
		-0.648674, -0.646876, -0.400966,
		18.714993, 16.754007, 8.949581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.471977, 17.375526, 9.453993>,  <19.169065, 17.206821, 9.230257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.471977, 17.375526, 9.453993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.460476, 16.992596, 9.338964>,  <18.453575, 16.762836, 9.269946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.460476, 16.992596, 9.338964>,  <18.471977, 17.375526, 9.453993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.460476, 16.992596, 9.338964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448329, -0.244781, 0.859700,
		-0.893406, 0.153646, -0.422159,
		-0.028753, -0.957327, -0.287573,
		18.451851, 16.705397, 9.252692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.874039, 17.183796, 9.687531>,  <18.471977, 17.375526, 9.453993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.874039, 17.183796, 9.687531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.056377, 16.832047, 9.632532>,  <18.165781, 16.620996, 9.599532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.056377, 16.832047, 9.632532>,  <17.874039, 17.183796, 9.687531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.056377, 16.832047, 9.632532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406665, -0.343190, 0.846667,
		-0.791725, -0.330034, -0.514052,
		0.455846, -0.879374, -0.137499,
		18.193130, 16.568233, 9.591283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.374544, 16.724453, 9.772784>,  <17.874039, 17.183796, 9.687531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.374544, 16.724453, 9.772784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.721725, 16.539642, 9.845654>,  <17.930035, 16.428757, 9.889377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.721725, 16.539642, 9.845654>,  <17.374544, 16.724453, 9.772784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.721725, 16.539642, 9.845654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384172, -0.392125, 0.835853,
		-0.314747, -0.795470, -0.517843,
		0.867955, -0.462023, 0.182177,
		17.982111, 16.401035, 9.900307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.186539, 16.070440, 10.101372>,  <17.374544, 16.724453, 9.772784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.186539, 16.070440, 10.101372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.564781, 16.127960, 10.218097>,  <17.791727, 16.162472, 10.288132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.564781, 16.127960, 10.218097>,  <17.186539, 16.070440, 10.101372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.564781, 16.127960, 10.218097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226215, -0.353992, 0.907478,
		0.233795, -0.924127, -0.302207,
		0.945604, 0.143800, 0.291813,
		17.848463, 16.171101, 10.305641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.461672, 15.448814, 10.428532>,  <17.186539, 16.070440, 10.101372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.461672, 15.448814, 10.428532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.679382, 15.750019, 10.576444>,  <17.810009, 15.930742, 10.665191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.679382, 15.750019, 10.576444>,  <17.461672, 15.448814, 10.428532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.679382, 15.750019, 10.576444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131261, -0.358917, 0.924094,
		0.828574, -0.551499, -0.096508,
		0.544275, 0.753012, 0.369780,
		17.842665, 15.975923, 10.687378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.636942, 15.199703, 11.046021>,  <17.461672, 15.448814, 10.428532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.636942, 15.199703, 11.046021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.770283, 15.568333, 11.125599>,  <17.850288, 15.789510, 11.173346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.770283, 15.568333, 11.125599>,  <17.636942, 15.199703, 11.046021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.770283, 15.568333, 11.125599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092774, -0.177925, 0.979661,
		0.938226, -0.345030, 0.026186,
		0.333353, 0.921573, 0.198943,
		17.870289, 15.844805, 11.185282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.136942, 15.179478, 11.662295>,  <17.636942, 15.199703, 11.046021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.136942, 15.179478, 11.662295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.020962, 15.562115, 11.650588>,  <17.951374, 15.791698, 11.643563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.020962, 15.562115, 11.650588>,  <18.136942, 15.179478, 11.662295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.020962, 15.562115, 11.650588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195285, -0.029198, 0.980312,
		0.936906, 0.289959, 0.195275,
		-0.289952, 0.956594, -0.029269,
		17.933977, 15.849092, 11.641808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.600817, 15.507416, 12.068670>,  <18.136942, 15.179478, 11.662295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.600817, 15.507416, 12.068670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.290028, 15.759228, 12.069728>,  <18.103554, 15.910315, 12.070362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.290028, 15.759228, 12.069728>,  <18.600817, 15.507416, 12.068670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.290028, 15.759228, 12.069728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000141, -0.004373, 0.999991,
		0.629536, 0.776964, 0.003487,
		-0.776972, 0.629530, 0.002643,
		18.056936, 15.948087, 12.070520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.790878, 16.083239, 12.498506>,  <18.600817, 15.507416, 12.068670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.790878, 16.083239, 12.498506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.396729, 16.151058, 12.505362>,  <18.160238, 16.191750, 12.509476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.396729, 16.151058, 12.505362>,  <18.790878, 16.083239, 12.498506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.396729, 16.151058, 12.505362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088937, 0.425848, 0.900413,
		0.145365, 0.888767, -0.434698,
		-0.985373, 0.169549, 0.017141,
		18.101116, 16.201923, 12.510504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.770803, 16.736839, 12.777805>,  <18.790878, 16.083239, 12.498506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.770803, 16.736839, 12.777805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.423470, 16.540562, 12.806696>,  <18.215069, 16.422796, 12.824030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.423470, 16.540562, 12.806696>,  <18.770803, 16.736839, 12.777805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.423470, 16.540562, 12.806696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105288, 0.324673, 0.939948,
		-0.484675, 0.808585, -0.333588,
		-0.868335, -0.490692, 0.072227,
		18.162970, 16.393354, 12.828364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.190969, 17.259995, 13.086451>,  <18.770803, 16.736839, 12.777805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.190969, 17.259995, 13.086451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.119949, 16.879387, 13.186920>,  <18.077337, 16.651022, 13.247202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.119949, 16.879387, 13.186920>,  <18.190969, 17.259995, 13.086451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.119949, 16.879387, 13.186920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202722, 0.285120, 0.936809,
		-0.963005, 0.115412, -0.243517,
		-0.177551, -0.951518, 0.251175,
		18.066685, 16.593931, 13.262273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.469755, 17.208849, 13.484936>,  <18.190969, 17.259995, 13.086451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.469755, 17.208849, 13.484936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.676037, 16.874809, 13.561522>,  <17.799807, 16.674385, 13.607474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.676037, 16.874809, 13.561522>,  <17.469755, 17.208849, 13.484936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.676037, 16.874809, 13.561522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050414, 0.193511, 0.979802,
		-0.855282, -0.514941, 0.057694,
		0.515705, -0.835098, 0.191467,
		17.830748, 16.624279, 13.618962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.054754, 16.962334, 14.014075>,  <17.469755, 17.208849, 13.484936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.054754, 16.962334, 14.014075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.427124, 16.817059, 14.029433>,  <17.650545, 16.729893, 14.038648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.427124, 16.817059, 14.029433>,  <17.054754, 16.962334, 14.014075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.427124, 16.817059, 14.029433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116403, 0.394716, 0.911400,
		-0.346165, -0.843975, 0.409727,
		0.930924, -0.363188, 0.038395,
		17.706402, 16.708103, 14.040952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.107983, 16.866327, 14.688322>,  <17.054754, 16.962334, 14.014075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.107983, 16.866327, 14.688322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.477161, 16.836586, 14.537250>,  <17.698668, 16.818741, 14.446606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.477161, 16.836586, 14.537250>,  <17.107983, 16.866327, 14.688322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.477161, 16.836586, 14.537250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376474, 0.378891, 0.845405,
		0.080241, -0.922450, 0.377688,
		0.922946, -0.074353, -0.377681,
		17.754045, 16.814280, 14.423945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.508722, 16.597034, 15.251352>,  <17.107983, 16.866327, 14.688322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.508722, 16.597034, 15.251352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.746235, 16.807236, 15.007623>,  <17.888742, 16.933355, 14.861385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.746235, 16.807236, 15.007623>,  <17.508722, 16.597034, 15.251352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.746235, 16.807236, 15.007623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443828, 0.417745, 0.792784,
		0.671151, -0.741173, 0.014817,
		0.593780, 0.525501, -0.609323,
		17.924368, 16.964886, 14.824826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.092249, 16.621645, 15.688669>,  <17.508722, 16.597034, 15.251352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.092249, 16.621645, 15.688669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.156708, 16.892746, 15.401704>,  <18.195383, 17.055407, 15.229525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.156708, 16.892746, 15.401704>,  <18.092249, 16.621645, 15.688669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.156708, 16.892746, 15.401704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579206, 0.523619, 0.624775,
		0.799094, -0.516212, -0.308179,
		0.161148, 0.677753, -0.717414,
		18.205051, 17.096071, 15.186480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.746481, 16.791866, 15.778603>,  <18.092249, 16.621645, 15.688669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.746481, 16.791866, 15.778603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.607136, 17.100407, 15.565564>,  <18.523529, 17.285532, 15.437741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.607136, 17.100407, 15.565564>,  <18.746481, 16.791866, 15.778603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.607136, 17.100407, 15.565564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450196, 0.636048, 0.626712,
		0.822172, -0.021449, -0.568836,
		-0.348364, 0.771352, -0.532596,
		18.502626, 17.331812, 15.405786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<19.380478, 17.169855, 15.648641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.062222, 17.411835, 15.636020>,  <18.871267, 17.557022, 15.628448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.062222, 17.411835, 15.636020>,  <19.380478, 17.169855, 15.648641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.062222, 17.411835, 15.636020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396671, 0.559662, 0.727620,
		0.457831, 0.566408, -0.685254,
		-0.795640, 0.604948, -0.031553,
		18.823530, 17.593319, 15.626554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.618124, 17.785891, 15.694497>,  <19.380478, 17.169855, 15.648641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.618124, 17.785891, 15.694497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.237736, 17.852520, 15.798732>,  <19.009502, 17.892498, 15.861273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.237736, 17.852520, 15.798732>,  <19.618124, 17.785891, 15.694497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.237736, 17.852520, 15.798732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302604, 0.675215, 0.672693,
		-0.063900, 0.718567, -0.692516,
		-0.950972, 0.166573, 0.260588,
		18.952444, 17.902493, 15.876908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.601997, 18.504784, 15.879807>,  <19.618124, 17.785891, 15.694497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.601997, 18.504784, 15.879807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.271843, 18.346825, 16.041197>,  <19.073750, 18.252048, 16.138031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.271843, 18.346825, 16.041197>,  <19.601997, 18.504784, 15.879807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.271843, 18.346825, 16.041197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022237, 0.691368, 0.722160,
		-0.564129, 0.605034, -0.561865,
		-0.825387, -0.394897, 0.403476,
		19.024227, 18.228355, 16.162239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.199421, 19.031065, 16.019747>,  <19.601997, 18.504784, 15.879807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.199421, 19.031065, 16.019747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.088058, 18.742191, 16.273026>,  <19.021240, 18.568867, 16.424994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.088058, 18.742191, 16.273026>,  <19.199421, 19.031065, 16.019747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.088058, 18.742191, 16.273026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127688, 0.625581, 0.769639,
		-0.951937, 0.295125, -0.081952,
		-0.278408, -0.722184, 0.633198,
		19.004536, 18.525536, 16.462984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.828577, 19.397152, 16.483335>,  <19.199421, 19.031065, 16.019747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.828577, 19.397152, 16.483335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.902611, 19.048489, 16.664864>,  <18.947031, 18.839291, 16.773781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.902611, 19.048489, 16.664864>,  <18.828577, 19.397152, 16.483335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.902611, 19.048489, 16.664864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068526, 0.472121, 0.878866,
		-0.980330, -0.131566, 0.147114,
		0.185085, -0.871661, 0.453819,
		18.958136, 18.786991, 16.801010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.567513, 19.510778, 17.152599>,  <18.828577, 19.397152, 16.483335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.567513, 19.510778, 17.152599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.811195, 19.195084, 17.183519>,  <18.957405, 19.005667, 17.202072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.811195, 19.195084, 17.183519>,  <18.567513, 19.510778, 17.152599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.811195, 19.195084, 17.183519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239433, 0.275988, 0.930861,
		-0.756002, -0.548578, 0.357103,
		0.609206, -0.789235, 0.077300,
		18.993958, 18.958313, 17.206709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.521580, 19.250111, 17.800350>,  <18.567513, 19.510778, 17.152599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.521580, 19.250111, 17.800350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.865582, 19.067181, 17.709801>,  <19.071983, 18.957422, 17.655472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.865582, 19.067181, 17.709801>,  <18.521580, 19.250111, 17.800350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.865582, 19.067181, 17.709801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318006, 0.133382, 0.938659,
		-0.399076, -0.879241, 0.260141,
		0.860006, -0.457323, -0.226374,
		19.123583, 18.929983, 17.641888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.584774, 18.708155, 18.216251>,  <18.521580, 19.250111, 17.800350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.584774, 18.708155, 18.216251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.959423, 18.790798, 18.103081>,  <19.184214, 18.840384, 18.035179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.959423, 18.790798, 18.103081>,  <18.584774, 18.708155, 18.216251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.959423, 18.790798, 18.103081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296329, -0.036424, 0.954391,
		0.186879, -0.977746, -0.095340,
		0.936625, 0.206608, -0.282927,
		19.240410, 18.852779, 18.018202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.923132, 18.264359, 18.613901>,  <18.584774, 18.708155, 18.216251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.923132, 18.264359, 18.613901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.204010, 18.527309, 18.504520>,  <19.372538, 18.685080, 18.438892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.204010, 18.527309, 18.504520>,  <18.923132, 18.264359, 18.613901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.204010, 18.527309, 18.504520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350168, 0.015546, 0.936558,
		0.619924, -0.753401, -0.219277,
		0.702194, 0.657378, -0.273454,
		19.414669, 18.724524, 18.422483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.595934, 18.065805, 18.921139>,  <18.923132, 18.264359, 18.613901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.595934, 18.065805, 18.921139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.661476, 18.455338, 18.858133>,  <19.700802, 18.689056, 18.820330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.661476, 18.455338, 18.858133>,  <19.595934, 18.065805, 18.921139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.661476, 18.455338, 18.858133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362803, 0.088993, 0.927607,
		0.917347, -0.209138, -0.338726,
		0.163853, 0.973828, -0.157513,
		19.710632, 18.747486, 18.810879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.243032, 18.161129, 19.225634>,  <19.595934, 18.065805, 18.921139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.243032, 18.161129, 19.225634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.051743, 18.509853, 19.183214>,  <19.936970, 18.719088, 19.157763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.051743, 18.509853, 19.183214>,  <20.243032, 18.161129, 19.225634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.051743, 18.509853, 19.183214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280423, 0.266009, 0.922281,
		0.832265, 0.411319, -0.371688,
		-0.478224, 0.871812, -0.106047,
		19.908276, 18.771397, 19.151400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.589607, 18.712738, 19.713671>,  <20.243032, 18.161129, 19.225634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.589607, 18.712738, 19.713671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.240704, 18.887550, 19.625885>,  <20.031361, 18.992437, 19.573214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.240704, 18.887550, 19.625885>,  <20.589607, 18.712738, 19.713671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.240704, 18.887550, 19.625885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002231, 0.452318, 0.891854,
		0.489038, 0.777438, -0.395514,
		-0.872259, 0.437033, -0.219467,
		19.979025, 19.018660, 19.560045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.675190, 19.406734, 19.867308>,  <20.589607, 18.712738, 19.713671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.675190, 19.406734, 19.867308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.283115, 19.331280, 19.891478>,  <20.047871, 19.286007, 19.905979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.283115, 19.331280, 19.891478>,  <20.675190, 19.406734, 19.867308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.283115, 19.331280, 19.891478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004898, 0.281892, 0.959434,
		-0.198019, 0.940720, -0.275382,
		-0.980186, -0.188637, 0.060427,
		19.989059, 19.274689, 19.909605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.305124, 20.046762, 20.134380>,  <20.675190, 19.406734, 19.867308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.305124, 20.046762, 20.134380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.061127, 19.736610, 20.199734>,  <19.914728, 19.550520, 20.238947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.061127, 19.736610, 20.199734>,  <20.305124, 20.046762, 20.134380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.061127, 19.736610, 20.199734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037506, 0.234209, 0.971462,
		-0.791518, 0.586459, -0.171948,
		-0.609994, -0.775379, 0.163385,
		19.878128, 19.503996, 20.248749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.606058, 20.254902, 20.441175>,  <20.305124, 20.046762, 20.134380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.606058, 20.254902, 20.441175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.664169, 19.868721, 20.527702>,  <19.699036, 19.637012, 20.579618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.664169, 19.868721, 20.527702>,  <19.606058, 20.254902, 20.441175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.664169, 19.868721, 20.527702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165729, 0.191801, 0.967340,
		-0.975412, -0.176383, -0.132140,
		0.145277, -0.965454, 0.216317,
		19.707752, 19.579084, 20.592598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.002075, 19.976110, 20.844620>,  <19.606058, 20.254902, 20.441175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.002075, 19.976110, 20.844620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.291035, 19.711487, 20.925100>,  <19.464411, 19.552713, 20.973389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.291035, 19.711487, 20.925100>,  <19.002075, 19.976110, 20.844620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.291035, 19.711487, 20.925100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100014, 0.187950, 0.977073,
		-0.684208, -0.725957, 0.069609,
		0.722397, -0.661560, 0.201203,
		19.507753, 19.513020, 20.985460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.728893, 19.607468, 21.425705>,  <19.002075, 19.976110, 20.844620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.728893, 19.607468, 21.425705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.126232, 19.564526, 21.409054>,  <19.364635, 19.538761, 21.399063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.126232, 19.564526, 21.409054>,  <18.728893, 19.607468, 21.425705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.126232, 19.564526, 21.409054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054220, 0.117168, 0.991631,
		-0.101580, -0.987292, 0.122210,
		0.993349, -0.107356, -0.041629,
		19.424236, 19.532318, 21.396564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.824425, 19.147118, 22.023342>,  <18.728893, 19.607468, 21.425705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.824425, 19.147118, 22.023342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.180969, 19.287251, 21.908283>,  <19.394896, 19.371330, 21.839247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.180969, 19.287251, 21.908283>,  <18.824425, 19.147118, 22.023342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.180969, 19.287251, 21.908283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344798, -0.112067, 0.931963,
		0.294263, -0.929896, -0.220687,
		0.891361, 0.350335, -0.287649,
		19.448378, 19.392351, 21.821989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.345364, 18.672413, 22.343960>,  <18.824425, 19.147118, 22.023342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.345364, 18.672413, 22.343960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.517826, 19.020275, 22.247787>,  <19.621304, 19.228992, 22.190084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.517826, 19.020275, 22.247787>,  <19.345364, 18.672413, 22.343960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.517826, 19.020275, 22.247787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398217, 0.055707, 0.915598,
		0.809647, -0.490508, -0.322293,
		0.431154, 0.869654, -0.240431,
		19.647173, 19.281172, 22.175657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.044851, 18.648233, 22.580366>,  <19.345364, 18.672413, 22.343960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.044851, 18.648233, 22.580366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.949413, 19.035988, 22.557184>,  <19.892151, 19.268641, 22.543276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.949413, 19.035988, 22.557184>,  <20.044851, 18.648233, 22.580366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.949413, 19.035988, 22.557184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286314, 0.127243, 0.949649,
		0.927953, 0.209990, -0.307909,
		-0.238596, 0.969388, -0.057953,
		19.877834, 19.326805, 22.539799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.565842, 19.033554, 22.935099>,  <20.044851, 18.648233, 22.580366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.565842, 19.033554, 22.935099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.260891, 19.292191, 22.945669>,  <20.077921, 19.447372, 22.952011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.260891, 19.292191, 22.945669>,  <20.565842, 19.033554, 22.935099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.260891, 19.292191, 22.945669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227917, 0.230066, 0.946110,
		0.605668, 0.727316, -0.322767,
		-0.762378, 0.646593, 0.026424,
		20.032177, 19.486168, 22.953596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.929430, 19.582655, 23.262310>,  <20.565842, 19.033554, 22.935099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.929430, 19.582655, 23.262310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.542225, 19.678535, 23.291971>,  <20.309902, 19.736063, 23.309767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.542225, 19.678535, 23.291971>,  <20.929430, 19.582655, 23.262310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.542225, 19.678535, 23.291971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172393, 0.420663, 0.890687,
		0.182304, 0.874978, -0.448529,
		-0.968011, 0.239699, 0.074151,
		20.251822, 19.750444, 23.314217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.936552, 20.216816, 23.444710>,  <20.929430, 19.582655, 23.262310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.936552, 20.216816, 23.444710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.581375, 20.069870, 23.555418>,  <20.368269, 19.981703, 23.621843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.581375, 20.069870, 23.555418>,  <20.936552, 20.216816, 23.444710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.581375, 20.069870, 23.555418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105280, 0.423432, 0.899789,
		-0.447748, 0.828098, -0.337306,
		-0.887940, -0.367367, 0.276773,
		20.314993, 19.959660, 23.638451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.443186, 20.628254, 23.734020>,  <20.936552, 20.216816, 23.444710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.443186, 20.628254, 23.734020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.394936, 20.268097, 23.901230>,  <20.365986, 20.052002, 24.001554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.394936, 20.268097, 23.901230>,  <20.443186, 20.628254, 23.734020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.394936, 20.268097, 23.901230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007248, 0.421885, 0.906621,
		-0.992672, 0.106332, -0.057416,
		-0.120626, -0.900393, 0.418023,
		20.358747, 19.997980, 24.026636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.512978, 21.023024, 23.134682>,  <20.443186, 20.628254, 23.734020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.512978, 21.023024, 23.134682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.653625, 21.397480, 23.134586>,  <20.738014, 21.622154, 23.134529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.653625, 21.397480, 23.134586>,  <20.512978, 21.023024, 23.134682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.653625, 21.397480, 23.134586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055698, 0.020665, -0.998234,
		-0.934484, 0.351013, 0.059407,
		0.351621, 0.936143, -0.000240,
		20.759111, 21.678322, 23.134514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.079086, 21.442127, 22.849363>,  <20.512978, 21.023024, 23.134682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.079086, 21.442127, 22.849363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.432533, 21.611870, 22.770222>,  <20.644602, 21.713715, 22.722736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.432533, 21.611870, 22.770222>,  <20.079086, 21.442127, 22.849363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.432533, 21.611870, 22.770222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290464, 0.165390, -0.942484,
		-0.367226, 0.890263, 0.269401,
		0.883615, 0.424356, -0.197854,
		20.697618, 21.739176, 22.710865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.946165, 22.067080, 22.469568>,  <20.079086, 21.442127, 22.849363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.946165, 22.067080, 22.469568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.337593, 22.002728, 22.418163>,  <20.572451, 21.964117, 22.387321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.337593, 22.002728, 22.418163>,  <19.946165, 22.067080, 22.469568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.337593, 22.002728, 22.418163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079444, 0.280799, -0.956473,
		0.189963, 0.946187, 0.262001,
		0.978572, -0.160880, -0.128510,
		20.631165, 21.954464, 22.379610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.108826, 22.604280, 22.059229>,  <19.946165, 22.067080, 22.469568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.108826, 22.604280, 22.059229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.402222, 22.335876, 22.015888>,  <20.578259, 22.174835, 21.989883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.402222, 22.335876, 22.015888>,  <20.108826, 22.604280, 22.059229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.402222, 22.335876, 22.015888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037516, 0.119198, -0.992161,
		0.678664, 0.731805, 0.062257,
		0.733490, -0.671009, -0.108350,
		20.622269, 22.134573, 21.983383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.725420, 22.930567, 21.755426>,  <20.108826, 22.604280, 22.059229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.725420, 22.930567, 21.755426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.776859, 22.539196, 21.690756>,  <20.807722, 22.304373, 21.651953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.776859, 22.539196, 21.690756>,  <20.725420, 22.930567, 21.755426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.776859, 22.539196, 21.690756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350864, 0.197376, -0.915389,
		0.927554, 0.060991, 0.368678,
		0.128599, -0.978429, -0.161677,
		20.815439, 22.245667, 21.642252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.398190, 22.895037, 21.389889>,  <20.725420, 22.930567, 21.755426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.398190, 22.895037, 21.389889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.228249, 22.539207, 21.322760>,  <21.126284, 22.325710, 21.282482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.228249, 22.539207, 21.322760>,  <21.398190, 22.895037, 21.389889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.228249, 22.539207, 21.322760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250577, 0.062583, -0.966072,
		0.869892, -0.452489, 0.196317,
		-0.424851, -0.889571, -0.167824,
		21.100794, 22.272337, 21.272413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.939651, 22.433416, 21.048235>,  <21.398190, 22.895037, 21.389889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.939651, 22.433416, 21.048235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.585766, 22.263683, 20.971060>,  <21.373434, 22.161842, 20.924755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.585766, 22.263683, 20.971060>,  <21.939651, 22.433416, 21.048235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.585766, 22.263683, 20.971060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242768, -0.066101, -0.967830,
		0.397930, -0.903090, 0.161496,
		-0.884712, -0.424334, -0.192938,
		21.320353, 22.136383, 20.913177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.097513, 21.755594, 20.667698>,  <21.939651, 22.433416, 21.048235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.097513, 21.755594, 20.667698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.709118, 21.812687, 20.590958>,  <21.476080, 21.846943, 20.544912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.709118, 21.812687, 20.590958>,  <22.097513, 21.755594, 20.667698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.709118, 21.812687, 20.590958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123011, -0.389858, -0.912622,
		-0.205058, -0.909746, 0.360990,
		-0.970989, 0.142734, -0.191852,
		21.417822, 21.855507, 20.533401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.793800, 21.109756, 20.413168>,  <22.097513, 21.755594, 20.667698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.793800, 21.109756, 20.413168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.562962, 21.408276, 20.280504>,  <21.424459, 21.587387, 20.200905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.562962, 21.408276, 20.280504>,  <21.793800, 21.109756, 20.413168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.562962, 21.408276, 20.280504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166393, -0.290146, -0.942406,
		-0.799546, -0.599045, 0.043264,
		-0.577096, 0.746298, -0.331662,
		21.389833, 21.632166, 20.181005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.331112, 20.756470, 20.049936>,  <21.793800, 21.109756, 20.413168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.331112, 20.756470, 20.049936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.332794, 21.134262, 19.918522>,  <21.333803, 21.360937, 19.839674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.332794, 21.134262, 19.918522>,  <21.331112, 20.756470, 20.049936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.332794, 21.134262, 19.918522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230008, -0.318815, -0.919485,
		-0.973179, 0.079431, 0.215899,
		0.004204, 0.944483, -0.328534,
		21.334055, 21.417606, 19.819962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.801950, 20.733986, 19.648422>,  <21.331112, 20.756470, 20.049936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.801950, 20.733986, 19.648422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.052071, 21.023304, 19.531225>,  <21.202143, 21.196896, 19.460907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.052071, 21.023304, 19.531225>,  <20.801950, 20.733986, 19.648422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.052071, 21.023304, 19.531225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003377, -0.372933, -0.927852,
		-0.780378, 0.581175, -0.230752,
		0.625299, 0.723296, -0.292991,
		21.239660, 21.240294, 19.443329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.596432, 20.892956, 18.967642>,  <20.801950, 20.733986, 19.648422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.596432, 20.892956, 18.967642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.965435, 21.045734, 18.945387>,  <21.186836, 21.137402, 18.932034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.965435, 21.045734, 18.945387>,  <20.596432, 20.892956, 18.967642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.965435, 21.045734, 18.945387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000017, -0.144185, -0.989551,
		-0.385976, 0.912868, -0.133018,
		0.922509, 0.381945, -0.055636,
		21.242188, 21.160318, 18.928696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.548868, 21.311409, 18.289181>,  <20.596432, 20.892956, 18.967642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.548868, 21.311409, 18.289181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.927410, 21.236233, 18.394320>,  <21.154535, 21.191126, 18.457403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.927410, 21.236233, 18.394320>,  <20.548868, 21.311409, 18.289181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.927410, 21.236233, 18.394320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204751, -0.280520, -0.937756,
		0.249978, 0.941268, -0.226990,
		0.946355, -0.187942, 0.262849,
		21.211317, 21.179850, 18.473175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.930098, 21.465456, 17.681208>,  <20.548868, 21.311409, 18.289181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.930098, 21.465456, 17.681208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.162727, 21.232868, 17.908773>,  <21.302305, 21.093315, 18.045313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.162727, 21.232868, 17.908773>,  <20.930098, 21.465456, 17.681208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.162727, 21.232868, 17.908773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212436, -0.566525, -0.796191,
		0.785267, 0.583901, -0.205950,
		0.581572, -0.581471, 0.568915,
		21.337198, 21.058428, 18.079449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.579449, 21.436304, 17.345928>,  <20.930098, 21.465456, 17.681208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.579449, 21.436304, 17.345928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.549080, 21.110256, 17.575645>,  <21.530859, 20.914627, 17.713476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.549080, 21.110256, 17.575645>,  <21.579449, 21.436304, 17.345928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.549080, 21.110256, 17.575645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264530, -0.571783, -0.776588,
		0.961384, 0.092959, 0.259034,
		-0.075921, -0.815122, 0.574293,
		21.526304, 20.865719, 17.747934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.180468, 21.077709, 17.193432>,  <21.579449, 21.436304, 17.345928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.180468, 21.077709, 17.193432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.934849, 20.804771, 17.352100>,  <21.787477, 20.641008, 17.447302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.934849, 20.804771, 17.352100>,  <22.180468, 21.077709, 17.193432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.934849, 20.804771, 17.352100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228005, -0.634510, -0.738519,
		0.755618, -0.363044, 0.545198,
		-0.614049, -0.682346, 0.396671,
		21.750633, 20.600067, 17.471102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.579304, 20.328169, 17.264223>,  <22.180468, 21.077709, 17.193432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.579304, 20.328169, 17.264223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.184177, 20.265945, 17.266211>,  <21.947102, 20.228611, 17.267403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.184177, 20.265945, 17.266211>,  <22.579304, 20.328169, 17.264223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.184177, 20.265945, 17.266211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109378, -0.716557, -0.688899,
		0.110726, -0.679961, 0.724840,
		-0.987814, -0.155560, 0.004968,
		21.887833, 20.219276, 17.267700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.645914, 19.703735, 17.020184>,  <22.579304, 20.328169, 17.264223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.645914, 19.703735, 17.020184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.256252, 19.788898, 16.990009>,  <22.022455, 19.839996, 16.971905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.256252, 19.788898, 16.990009>,  <22.645914, 19.703735, 17.020184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.256252, 19.788898, 16.990009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050006, -0.528957, -0.847174,
		-0.220272, -0.821508, 0.525933,
		-0.974156, 0.212909, -0.075434,
		21.964006, 19.852772, 16.967379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.279577, 19.058746, 16.873928>,  <22.645914, 19.703735, 17.020184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.279577, 19.058746, 16.873928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.036388, 19.348766, 16.744514>,  <21.890474, 19.522778, 16.666866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.036388, 19.348766, 16.744514>,  <22.279577, 19.058746, 16.873928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.036388, 19.348766, 16.744514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089234, -0.467313, -0.879577,
		-0.788927, -0.505889, 0.348813,
		-0.607973, 0.725048, -0.323534,
		21.853996, 19.566280, 16.647455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.842005, 18.703569, 16.417339>,  <22.279577, 19.058746, 16.873928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.842005, 18.703569, 16.417339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.790237, 19.082439, 16.299963>,  <21.759176, 19.309761, 16.229538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.790237, 19.082439, 16.299963>,  <21.842005, 18.703569, 16.417339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.790237, 19.082439, 16.299963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081800, -0.305119, -0.948795,
		-0.988210, -0.098788, 0.116967,
		-0.129419, 0.947177, -0.293441,
		21.751411, 19.366592, 16.211931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<17.562233, 15.446855, 13.566134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.729465, 15.794899, 13.461740>,  <17.829805, 16.003725, 13.399103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.729465, 15.794899, 13.461740>,  <17.562233, 15.446855, 13.566134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.729465, 15.794899, 13.461740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259810, -0.160767, -0.952183,
		-0.870463, 0.465898, 0.158850,
		0.418082, 0.870111, -0.260987,
		17.854891, 16.055933, 13.383444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.001652, 15.848541, 13.082003>,  <17.562233, 15.446855, 13.566134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.001652, 15.848541, 13.082003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.361149, 16.011551, 13.017271>,  <17.576847, 16.109356, 12.978432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.361149, 16.011551, 13.017271>,  <17.001652, 15.848541, 13.082003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.361149, 16.011551, 13.017271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188404, 0.025640, -0.981757,
		-0.395940, 0.912835, 0.099823,
		0.898741, 0.407524, -0.161830,
		17.630772, 16.133808, 12.968722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.854261, 16.315718, 12.582620>,  <17.001652, 15.848541, 13.082003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.854261, 16.315718, 12.582620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.251087, 16.272961, 12.556135>,  <17.489182, 16.247307, 12.540245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.251087, 16.272961, 12.556135>,  <16.854261, 16.315718, 12.582620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.251087, 16.272961, 12.556135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064570, 0.018738, -0.997737,
		0.107892, 0.994094, 0.011687,
		0.992063, -0.106893, -0.066210,
		17.548706, 16.240892, 12.536272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.005922, 16.660921, 12.025916>,  <16.854261, 16.315718, 12.582620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.005922, 16.660921, 12.025916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.340744, 16.442429, 12.038410>,  <17.541637, 16.311333, 12.045907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.340744, 16.442429, 12.038410>,  <17.005922, 16.660921, 12.025916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.340744, 16.442429, 12.038410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153077, 0.179003, -0.971867,
		0.525272, 0.818285, 0.233450,
		0.837052, -0.546231, 0.031236,
		17.591860, 16.278559, 12.047781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.468300, 17.017897, 11.617249>,  <17.005922, 16.660921, 12.025916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.468300, 17.017897, 11.617249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.593113, 16.637917, 11.623353>,  <17.668001, 16.409929, 11.627015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.593113, 16.637917, 11.623353>,  <17.468300, 17.017897, 11.617249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.593113, 16.637917, 11.623353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303098, 0.084313, -0.949222,
		0.900425, 0.300815, 0.314236,
		0.312034, -0.949948, 0.015259,
		17.686724, 16.352932, 11.627931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.151632, 17.053755, 11.521808>,  <17.468300, 17.017897, 11.617249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.151632, 17.053755, 11.521808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.072273, 16.673725, 11.425479>,  <18.024658, 16.445707, 11.367682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.072273, 16.673725, 11.425479>,  <18.151632, 17.053755, 11.521808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.072273, 16.673725, 11.425479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520337, 0.106122, -0.847341,
		0.830594, -0.293421, 0.473305,
		-0.198400, -0.950075, -0.240822,
		18.012753, 16.388702, 11.353232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.692469, 16.882750, 11.061286>,  <18.151632, 17.053755, 11.521808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.692469, 16.882750, 11.061286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.440689, 16.588840, 10.960170>,  <18.289621, 16.412495, 10.899500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.440689, 16.588840, 10.960170>,  <18.692469, 16.882750, 11.061286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.440689, 16.588840, 10.960170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299285, 0.070976, -0.951521,
		0.717094, -0.674590, 0.175231,
		-0.629449, -0.734773, -0.252791,
		18.251854, 16.368408, 10.884333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.066982, 16.352404, 10.651419>,  <18.692469, 16.882750, 11.061286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.066982, 16.352404, 10.651419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.686016, 16.300312, 10.541185>,  <18.457436, 16.269056, 10.475045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.686016, 16.300312, 10.541185>,  <19.066982, 16.352404, 10.651419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.686016, 16.300312, 10.541185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279619, -0.013433, -0.960017,
		0.121323, -0.991393, 0.049209,
		-0.952415, -0.130232, -0.275583,
		18.400291, 16.261242, 10.458510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.064608, 15.728536, 10.091656>,  <19.066982, 16.352404, 10.651419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.064608, 15.728536, 10.091656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.731731, 15.941574, 10.029946>,  <18.532005, 16.069397, 9.992921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.731731, 15.941574, 10.029946>,  <19.064608, 15.728536, 10.091656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.731731, 15.941574, 10.029946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116066, -0.104744, -0.987703,
		-0.542207, -0.839862, 0.025350,
		-0.832190, 0.532598, -0.154273,
		18.482075, 16.101353, 9.983665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.795158, 15.414586, 9.483456>,  <19.064608, 15.728536, 10.091656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.795158, 15.414586, 9.483456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.624939, 15.776402, 9.494177>,  <18.522808, 15.993491, 9.500609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.624939, 15.776402, 9.494177>,  <18.795158, 15.414586, 9.483456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.624939, 15.776402, 9.494177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116308, 0.084043, -0.989651,
		-0.897431, -0.418026, -0.140970,
		-0.425547, 0.904539, 0.026803,
		18.497274, 16.047764, 9.502218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.425739, 15.460563, 8.930750>,  <18.795158, 15.414586, 9.483456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.425739, 15.460563, 8.930750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.440235, 15.846439, 9.035101>,  <18.448933, 16.077965, 9.097712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.440235, 15.846439, 9.035101>,  <18.425739, 15.460563, 8.930750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.440235, 15.846439, 9.035101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098840, 0.256309, -0.961528,
		-0.994443, 0.060629, -0.086062,
		0.036238, 0.964691, 0.260877,
		18.451107, 16.135847, 9.113364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.917440, 15.884622, 8.582636>,  <18.425739, 15.460563, 8.930750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.917440, 15.884622, 8.582636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.185307, 16.165485, 8.679401>,  <18.346025, 16.334003, 8.737461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.185307, 16.165485, 8.679401>,  <17.917440, 15.884622, 8.582636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.185307, 16.165485, 8.679401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116214, 0.222651, -0.967947,
		-0.733516, 0.676312, 0.067500,
		0.669663, 0.702160, 0.241915,
		18.386206, 16.376133, 8.751976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.852579, 16.434946, 8.114382>,  <17.917440, 15.884622, 8.582636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.852579, 16.434946, 8.114382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.225578, 16.507877, 8.239093>,  <18.449377, 16.551636, 8.313919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.225578, 16.507877, 8.239093>,  <17.852579, 16.434946, 8.114382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.225578, 16.507877, 8.239093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206511, 0.439046, -0.874409,
		-0.296313, 0.879770, 0.371757,
		0.932498, 0.182327, 0.311777,
		18.505327, 16.562576, 8.332626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.953674, 17.153597, 8.070262>,  <17.852579, 16.434946, 8.114382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.953674, 17.153597, 8.070262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.324795, 17.009319, 8.032147>,  <18.547468, 16.922752, 8.009279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.324795, 17.009319, 8.032147>,  <17.953674, 17.153597, 8.070262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.324795, 17.009319, 8.032147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034609, 0.337523, -0.940681,
		0.371461, 0.869469, 0.325639,
		0.927803, -0.360696, -0.095286,
		18.603136, 16.901110, 8.003562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.322010, 16.833277, 8.466971>,  <17.953674, 17.153597, 8.070262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.322010, 16.833277, 8.466971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.968224, 17.006805, 8.398252>,  <16.755951, 17.110922, 8.357019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.968224, 17.006805, 8.398252>,  <17.322010, 16.833277, 8.466971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.968224, 17.006805, 8.398252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093203, 0.196515, 0.976061,
		0.457197, 0.879307, -0.133378,
		-0.884468, 0.433821, -0.171800,
		16.702883, 17.136951, 8.346711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.388031, 17.486845, 8.673304>,  <17.322010, 16.833277, 8.466971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.388031, 17.486845, 8.673304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.008274, 17.363838, 8.698871>,  <16.780420, 17.290033, 8.714211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.008274, 17.363838, 8.698871>,  <17.388031, 17.486845, 8.673304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.008274, 17.363838, 8.698871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045736, 0.336683, 0.940507,
		-0.310743, 0.889987, -0.333709,
		-0.949393, -0.307519, 0.063918,
		16.723455, 17.271582, 8.718046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.061827, 17.981827, 9.141631>,  <17.388031, 17.486845, 8.673304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.061827, 17.981827, 9.141631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.789089, 17.691433, 9.105780>,  <16.625446, 17.517197, 9.084269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.789089, 17.691433, 9.105780>,  <17.061827, 17.981827, 9.141631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.789089, 17.691433, 9.105780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430785, 0.299490, 0.851310,
		-0.591197, 0.619071, -0.516950,
		-0.681843, -0.725987, -0.089629,
		16.584536, 17.473637, 9.078891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.366636, 18.291199, 9.110855>,  <17.061827, 17.981827, 9.141631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.366636, 18.291199, 9.110855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.343227, 17.916485, 9.248847>,  <16.329182, 17.691656, 9.331642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.343227, 17.916485, 9.248847>,  <16.366636, 18.291199, 9.110855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.343227, 17.916485, 9.248847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479939, 0.329416, 0.813108,
		-0.875348, -0.117984, -0.468877,
		-0.058522, -0.936785, 0.344979,
		16.325670, 17.635450, 9.352341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.709332, 18.286722, 9.213108>,  <16.366636, 18.291199, 9.110855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.709332, 18.286722, 9.213108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.862664, 17.993786, 9.438225>,  <15.954663, 17.818024, 9.573295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.862664, 17.993786, 9.438225>,  <15.709332, 18.286722, 9.213108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.862664, 17.993786, 9.438225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551174, 0.307562, 0.775637,
		-0.741125, -0.607520, -0.285751,
		0.383329, -0.732342, 0.562792,
		15.977663, 17.774084, 9.607062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.181540, 18.274517, 9.795428>,  <15.709332, 18.286722, 9.213108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.181540, 18.274517, 9.795428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.466350, 18.028786, 9.931440>,  <15.637236, 17.881348, 10.013047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.466350, 18.028786, 9.931440>,  <15.181540, 18.274517, 9.795428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.466350, 18.028786, 9.931440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257568, 0.221990, 0.940414,
		-0.653207, -0.757180, -0.000169,
		0.712025, -0.614329, 0.340031,
		15.679957, 17.844486, 10.033449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.794042, 17.794640, 10.206636>,  <15.181540, 18.274517, 9.795428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.794042, 17.794640, 10.206636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.178630, 17.863747, 10.292171>,  <15.409383, 17.905210, 10.343493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.178630, 17.863747, 10.292171>,  <14.794042, 17.794640, 10.206636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.178630, 17.863747, 10.292171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262466, 0.345517, 0.900960,
		0.081772, -0.922371, 0.377550,
		0.961470, 0.172768, 0.213837,
		15.467071, 17.915577, 10.356322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.840095, 17.617228, 10.901049>,  <14.794042, 17.794640, 10.206636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.840095, 17.617228, 10.901049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.180129, 17.818695, 10.839509>,  <15.384150, 17.939575, 10.802586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.180129, 17.818695, 10.839509>,  <14.840095, 17.617228, 10.901049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.180129, 17.818695, 10.839509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100514, 0.441929, 0.891401,
		0.516964, -0.742302, 0.426304,
		0.850085, 0.503672, -0.153849,
		15.435155, 17.969795, 10.793354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.208586, 17.553726, 11.533562>,  <14.840095, 17.617228, 10.901049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.208586, 17.553726, 11.533562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.350415, 17.873753, 11.339997>,  <15.435513, 18.065769, 11.223859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.350415, 17.873753, 11.339997>,  <15.208586, 17.553726, 11.533562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.350415, 17.873753, 11.339997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209710, 0.436306, 0.875019,
		0.911208, -0.411739, -0.013080,
		0.354572, 0.800068, -0.483912,
		15.456787, 18.113773, 11.194824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.982247, 17.526672, 11.680020>,  <15.208586, 17.553726, 11.533562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.982247, 17.526672, 11.680020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.893044, 17.909760, 11.607310>,  <15.839522, 18.139612, 11.563684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.893044, 17.909760, 11.607310>,  <15.982247, 17.526672, 11.680020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.893044, 17.909760, 11.607310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392000, 0.258834, 0.882803,
		0.892527, 0.125616, -0.433148,
		-0.223007, 0.957719, -0.181775,
		15.826142, 18.197075, 11.552778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.599514, 17.839333, 11.930241>,  <15.982247, 17.526672, 11.680020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.599514, 17.839333, 11.930241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.331326, 18.131378, 11.877467>,  <16.170412, 18.306604, 11.845803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.331326, 18.131378, 11.877467>,  <16.599514, 17.839333, 11.930241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.331326, 18.131378, 11.877467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428316, 0.526088, 0.734695,
		0.605818, 0.436083, -0.665445,
		-0.670471, 0.730112, -0.131933,
		16.130184, 18.350412, 11.837888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.947397, 18.546362, 11.990675>,  <16.599514, 17.839333, 11.930241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.947397, 18.546362, 11.990675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.563084, 18.614887, 12.077892>,  <16.332495, 18.656002, 12.130222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.563084, 18.614887, 12.077892>,  <16.947397, 18.546362, 11.990675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.563084, 18.614887, 12.077892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277269, 0.603456, 0.747638,
		-0.003501, 0.778777, -0.627292,
		-0.960786, 0.171311, 0.218043,
		16.274847, 18.666281, 12.143305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.918430, 19.241716, 12.007883>,  <16.947397, 18.546362, 11.990675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.918430, 19.241716, 12.007883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.596401, 19.122864, 12.213240>,  <16.403183, 19.051552, 12.336453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.596401, 19.122864, 12.213240>,  <16.918430, 19.241716, 12.007883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.596401, 19.122864, 12.213240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214099, 0.661595, 0.718647,
		-0.553191, 0.688479, -0.469016,
		-0.805073, -0.297133, 0.513391,
		16.354879, 19.033724, 12.367257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.710114, 19.892071, 12.204128>,  <16.918430, 19.241716, 12.007883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.710114, 19.892071, 12.204128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.512344, 19.643383, 12.447113>,  <16.393682, 19.494171, 12.592904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.512344, 19.643383, 12.447113>,  <16.710114, 19.892071, 12.204128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.512344, 19.643383, 12.447113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119622, 0.643540, 0.756007,
		-0.860951, 0.446453, -0.243810,
		-0.494423, -0.621720, 0.607462,
		16.364017, 19.456867, 12.629352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.635519, 20.687206, 12.083879>,  <16.710114, 19.892071, 12.204128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.635519, 20.687206, 12.083879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.938816, 20.947884, 12.091488>,  <17.120794, 21.104290, 12.096054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.938816, 20.947884, 12.091488>,  <16.635519, 20.687206, 12.083879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.938816, 20.947884, 12.091488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152854, -0.149327, -0.976902,
		-0.633799, 0.743638, -0.212840,
		0.758244, 0.651693, 0.019024,
		17.166290, 21.143391, 12.097196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.509628, 21.178295, 11.549881>,  <16.635519, 20.687206, 12.083879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.509628, 21.178295, 11.549881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.895920, 21.213428, 11.647576>,  <17.127695, 21.234509, 11.706194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.895920, 21.213428, 11.647576>,  <16.509628, 21.178295, 11.549881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.895920, 21.213428, 11.647576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259550, -0.323206, -0.910040,
		-0.000993, 0.942244, -0.334927,
		0.965729, 0.087834, 0.244238,
		17.185638, 21.239779, 11.720848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.874887, 21.532671, 11.014232>,  <16.509628, 21.178295, 11.549881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.874887, 21.532671, 11.014232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.161098, 21.316795, 11.191661>,  <17.332825, 21.187269, 11.298119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.161098, 21.316795, 11.191661>,  <16.874887, 21.532671, 11.014232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.161098, 21.316795, 11.191661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499820, -0.048107, -0.864792,
		0.488059, 0.840488, 0.235327,
		0.715526, -0.539691, 0.443572,
		17.375757, 21.154888, 11.324733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.489805, 21.894989, 10.783787>,  <16.874887, 21.532671, 11.014232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.489805, 21.894989, 10.783787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.584507, 21.532272, 10.923315>,  <17.641327, 21.314642, 11.007031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.584507, 21.532272, 10.923315>,  <17.489805, 21.894989, 10.783787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.584507, 21.532272, 10.923315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535233, -0.177905, -0.825757,
		0.810847, 0.382200, 0.443226,
		0.236753, -0.906793, 0.348820,
		17.655533, 21.260235, 11.027961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.219242, 21.741777, 10.746714>,  <17.489805, 21.894989, 10.783787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.219242, 21.741777, 10.746714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.041969, 21.383297, 10.754837>,  <17.935606, 21.168209, 10.759711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.041969, 21.383297, 10.754837>,  <18.219242, 21.741777, 10.746714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.041969, 21.383297, 10.754837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606000, -0.316214, -0.729913,
		0.660571, -0.311177, 0.683238,
		-0.443182, -0.896202, 0.020308,
		17.909016, 21.114437, 10.760929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.703426, 21.408260, 10.449574>,  <18.219242, 21.741777, 10.746714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.703426, 21.408260, 10.449574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.396732, 21.152370, 10.428134>,  <18.212717, 20.998837, 10.415270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.396732, 21.152370, 10.428134>,  <18.703426, 21.408260, 10.449574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.396732, 21.152370, 10.428134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354815, -0.352714, -0.865852,
		0.535001, -0.682895, 0.497421,
		-0.766734, -0.639724, -0.053599,
		18.166712, 20.960453, 10.412054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.071566, 20.885973, 10.076007>,  <18.703426, 21.408260, 10.449574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.071566, 20.885973, 10.076007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.683239, 20.791309, 10.060496>,  <18.450243, 20.734510, 10.051190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.683239, 20.791309, 10.060496>,  <19.071566, 20.885973, 10.076007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.683239, 20.791309, 10.060496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139367, -0.425177, -0.894316,
		0.195161, -0.873623, 0.445752,
		-0.970819, -0.236659, -0.038776,
		18.391993, 20.720312, 10.048863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.029444, 20.214018, 9.885941>,  <19.071566, 20.885973, 10.076007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.029444, 20.214018, 9.885941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.662041, 20.326241, 9.774488>,  <18.441599, 20.393574, 9.707617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.662041, 20.326241, 9.774488>,  <19.029444, 20.214018, 9.885941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.662041, 20.326241, 9.774488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086574, -0.544879, -0.834034,
		-0.385811, -0.790188, 0.476186,
		-0.918507, 0.280554, -0.278630,
		18.386488, 20.410406, 9.690899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.704475, 19.659849, 9.602246>,  <19.029444, 20.214018, 9.885941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.704475, 19.659849, 9.602246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.490067, 19.956268, 9.440492>,  <18.361422, 20.134119, 9.343439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.490067, 19.956268, 9.440492>,  <18.704475, 19.659849, 9.602246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.490067, 19.956268, 9.440492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095120, -0.422950, -0.901147,
		-0.838829, -0.521499, 0.156222,
		-0.536021, 0.741048, -0.404387,
		18.329260, 20.178583, 9.319176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.111826, 19.391111, 9.250288>,  <18.704475, 19.659849, 9.602246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.111826, 19.391111, 9.250288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.218288, 19.738495, 9.082986>,  <18.282166, 19.946924, 8.982604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.218288, 19.738495, 9.082986>,  <18.111826, 19.391111, 9.250288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.218288, 19.738495, 9.082986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013759, -0.437286, -0.899217,
		-0.963831, 0.233579, -0.128336,
		0.266158, 0.868459, -0.418256,
		18.298136, 19.999033, 8.957509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.604221, 19.563303, 8.687959>,  <18.111826, 19.391111, 9.250288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.604221, 19.563303, 8.687959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.958691, 19.736855, 8.622908>,  <18.171371, 19.840986, 8.583878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.958691, 19.736855, 8.622908>,  <17.604221, 19.563303, 8.687959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.958691, 19.736855, 8.622908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047372, -0.433973, -0.899679,
		-0.460928, 0.789567, -0.405129,
		0.886172, 0.433879, -0.162627,
		18.224543, 19.867018, 8.574120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.573563, 19.653358, 7.970695>,  <17.604221, 19.563303, 8.687959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.573563, 19.653358, 7.970695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.959400, 19.706692, 8.061717>,  <18.190903, 19.738691, 8.116330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.959400, 19.706692, 8.061717>,  <17.573563, 19.653358, 7.970695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.959400, 19.706692, 8.061717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263248, -0.539507, -0.799770,
		0.016132, 0.831357, -0.555505,
		0.964593, 0.133334, 0.227556,
		18.248777, 19.746693, 8.129984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.292236, 22.612411, 15.712795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.684910, 22.580032, 15.643806>,  <16.920513, 22.560606, 15.602412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.684910, 22.580032, 15.643806>,  <16.292236, 22.612411, 15.712795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.684910, 22.580032, 15.643806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169511, 0.042197, -0.984625,
		0.086979, 0.995825, 0.027703,
		0.981683, -0.080946, -0.172473,
		16.979414, 22.555748, 15.592064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.474100, 23.116869, 15.158602>,  <16.292236, 22.612411, 15.712795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.474100, 23.116869, 15.158602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.760536, 22.837975, 15.145469>,  <16.932398, 22.670637, 15.137589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.760536, 22.837975, 15.145469>,  <16.474100, 23.116869, 15.158602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.760536, 22.837975, 15.145469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130056, -0.087063, -0.987677,
		0.685785, 0.711535, -0.153025,
		0.716090, -0.697236, -0.032833,
		16.975363, 22.628803, 15.135619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.769228, 23.220860, 14.442112>,  <16.474100, 23.116869, 15.158602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.769228, 23.220860, 14.442112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.932716, 22.874798, 14.558358>,  <17.030809, 22.667160, 14.628106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.932716, 22.874798, 14.558358>,  <16.769228, 23.220860, 14.442112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.932716, 22.874798, 14.558358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078292, -0.284016, -0.955618,
		0.909296, 0.413332, -0.048348,
		0.408719, -0.865154, 0.290615,
		17.055332, 22.615252, 14.645543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.513306, 23.123529, 14.075900>,  <16.769228, 23.220860, 14.442112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.513306, 23.123529, 14.075900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.348560, 22.772976, 14.175756>,  <17.249714, 22.562643, 14.235668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.348560, 22.772976, 14.175756>,  <17.513306, 23.123529, 14.075900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.348560, 22.772976, 14.175756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015426, -0.280618, -0.959696,
		0.911116, -0.391411, 0.129095,
		-0.411862, -0.876385, 0.249638,
		17.225002, 22.510061, 14.250647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.006577, 22.586546, 13.871209>,  <17.513306, 23.123529, 14.075900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.006577, 22.586546, 13.871209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.652771, 22.400352, 13.883597>,  <17.440487, 22.288637, 13.891030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.652771, 22.400352, 13.883597>,  <18.006577, 22.586546, 13.871209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.652771, 22.400352, 13.883597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262106, -0.550781, -0.792427,
		0.385920, -0.692795, 0.609180,
		-0.884514, -0.465484, 0.030972,
		17.387417, 22.260708, 13.892889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.126015, 21.898079, 13.701589>,  <18.006577, 22.586546, 13.871209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.126015, 21.898079, 13.701589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.739586, 21.967182, 13.624793>,  <17.507729, 22.008644, 13.578715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.739586, 21.967182, 13.624793>,  <18.126015, 21.898079, 13.701589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.739586, 21.967182, 13.624793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068371, -0.545771, -0.835140,
		-0.249059, -0.819932, 0.515442,
		-0.966072, 0.172758, -0.191988,
		17.449764, 22.019011, 13.567197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.922169, 21.283859, 13.478057>,  <18.126015, 21.898079, 13.701589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.922169, 21.283859, 13.478057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.607445, 21.489117, 13.340879>,  <17.418610, 21.612272, 13.258574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.607445, 21.489117, 13.340879>,  <17.922169, 21.283859, 13.478057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.607445, 21.489117, 13.340879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008517, -0.564623, -0.825305,
		-0.617138, -0.646436, 0.448621,
		-0.786809, 0.513148, -0.342945,
		17.371401, 21.643061, 13.237997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.469543, 20.738073, 13.216579>,  <17.922169, 21.283859, 13.478057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.469543, 20.738073, 13.216579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.393803, 21.094334, 13.051226>,  <17.348358, 21.308090, 12.952014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.393803, 21.094334, 13.051226>,  <17.469543, 20.738073, 13.216579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.393803, 21.094334, 13.051226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056694, -0.430215, -0.900944,
		-0.980271, -0.147161, 0.131958,
		-0.189354, 0.890651, -0.413384,
		17.336996, 21.361528, 12.927211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.882505, 20.627424, 12.817265>,  <17.469543, 20.738073, 13.216579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.882505, 20.627424, 12.817265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.087212, 20.941654, 12.678143>,  <17.210035, 21.130192, 12.594669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.087212, 20.941654, 12.678143>,  <16.882505, 20.627424, 12.817265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.087212, 20.941654, 12.678143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115347, -0.338342, -0.933927,
		-0.851346, 0.518070, -0.082538,
		0.511766, 0.785575, -0.347804,
		17.240742, 21.177326, 12.573801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.170750, 20.364630, 12.743873>,  <16.882505, 20.627424, 12.817265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.170750, 20.364630, 12.743873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.232944, 20.000031, 12.896186>,  <16.270262, 19.781271, 12.987574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.232944, 20.000031, 12.896186>,  <16.170750, 20.364630, 12.743873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.232944, 20.000031, 12.896186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055827, 0.392964, 0.917858,
		-0.986259, -0.121458, 0.111987,
		0.155488, -0.911497, 0.380784,
		16.279591, 19.726582, 13.010421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.713553, 20.381947, 13.265876>,  <16.170750, 20.364630, 12.743873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.713553, 20.381947, 13.265876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.988715, 20.105610, 13.354893>,  <16.153812, 19.939808, 13.408303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.988715, 20.105610, 13.354893>,  <15.713553, 20.381947, 13.265876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.988715, 20.105610, 13.354893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104295, 0.209345, 0.972264,
		-0.718269, -0.692034, 0.071958,
		0.687904, -0.690842, 0.222542,
		16.195087, 19.898357, 13.421656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.415778, 19.987682, 13.873294>,  <15.713553, 20.381947, 13.265876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.415778, 19.987682, 13.873294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.799151, 19.873966, 13.882974>,  <16.029175, 19.805737, 13.888782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.799151, 19.873966, 13.882974>,  <15.415778, 19.987682, 13.873294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.799151, 19.873966, 13.882974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028582, -0.011277, 0.999528,
		-0.283884, -0.958672, -0.018934,
		0.958433, -0.284291, 0.024200,
		16.086681, 19.788679, 13.890234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.448153, 19.285345, 14.260704>,  <15.415778, 19.987682, 13.873294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.448153, 19.285345, 14.260704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.813294, 19.446480, 14.287303>,  <16.032379, 19.543159, 14.303263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.813294, 19.446480, 14.287303>,  <15.448153, 19.285345, 14.260704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.813294, 19.446480, 14.287303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010577, -0.186149, 0.982465,
		0.408150, -0.896143, -0.174187,
		0.912853, 0.402835, 0.066499,
		16.087151, 19.567329, 14.307253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.871327, 18.766041, 14.616213>,  <15.448153, 19.285345, 14.260704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.871327, 18.766041, 14.616213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.085320, 19.103233, 14.638780>,  <16.213715, 19.305548, 14.652320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.085320, 19.103233, 14.638780>,  <15.871327, 18.766041, 14.616213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.085320, 19.103233, 14.638780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077822, -0.115660, 0.990236,
		0.841273, -0.525366, -0.127478,
		0.534980, 0.842979, 0.056416,
		16.245813, 19.356127, 14.655704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.550982, 18.532661, 14.982250>,  <15.871327, 18.766041, 14.616213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.550982, 18.532661, 14.982250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.457516, 18.919556, 15.021962>,  <16.401436, 19.151691, 15.045790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.457516, 18.919556, 15.021962>,  <16.550982, 18.532661, 14.982250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.457516, 18.919556, 15.021962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019597, -0.106772, 0.994090,
		0.972119, 0.230340, 0.043904,
		-0.233667, 0.967235, 0.099281,
		16.387415, 19.209726, 15.051746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.942627, 18.685518, 15.538613>,  <16.550982, 18.532661, 14.982250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.942627, 18.685518, 15.538613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.670692, 18.976254, 15.499568>,  <16.507532, 19.150694, 15.476141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.670692, 18.976254, 15.499568>,  <16.942627, 18.685518, 15.538613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.670692, 18.976254, 15.499568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042184, 0.094126, 0.994666,
		0.732149, 0.680328, -0.033329,
		-0.679837, 0.726838, -0.097613,
		16.466742, 19.194305, 15.470284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.197405, 19.161371, 15.953222>,  <16.942627, 18.685518, 15.538613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.197405, 19.161371, 15.953222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.825314, 19.299744, 15.904223>,  <16.602058, 19.382767, 15.874824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.825314, 19.299744, 15.904223>,  <17.197405, 19.161371, 15.953222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.825314, 19.299744, 15.904223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053267, 0.202986, 0.977732,
		0.363094, 0.916039, -0.170397,
		-0.930228, 0.345932, -0.122498,
		16.546246, 19.403522, 15.867475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.130808, 19.801968, 16.325603>,  <17.197405, 19.161371, 15.953222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.130808, 19.801968, 16.325603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.744617, 19.703739, 16.290848>,  <16.512903, 19.644802, 16.269995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.744617, 19.703739, 16.290848>,  <17.130808, 19.801968, 16.325603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.744617, 19.703739, 16.290848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148995, 0.246986, 0.957496,
		-0.213673, 0.937386, -0.275048,
		-0.965476, -0.245572, -0.086891,
		16.454975, 19.630068, 16.264780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.738436, 20.303215, 16.536606>,  <17.130808, 19.801968, 16.325603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.738436, 20.303215, 16.536606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.473312, 20.005600, 16.570295>,  <16.314240, 19.827030, 16.590509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.473312, 20.005600, 16.570295>,  <16.738436, 20.303215, 16.536606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.473312, 20.005600, 16.570295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246043, 0.322640, 0.913984,
		-0.707213, 0.585072, -0.396913,
		-0.662807, -0.744039, 0.084222,
		16.274471, 19.782389, 16.595562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.142458, 20.579466, 16.865963>,  <16.738436, 20.303215, 16.536606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.142458, 20.579466, 16.865963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.135174, 20.180580, 16.894905>,  <16.130804, 19.941250, 16.912270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.135174, 20.180580, 16.894905>,  <16.142458, 20.579466, 16.865963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.135174, 20.180580, 16.894905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288194, 0.074529, 0.954667,
		-0.957399, -0.003468, -0.288748,
		-0.018209, -0.997213, 0.072353,
		16.129711, 19.881416, 16.916611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.598732, 20.549952, 17.293959>,  <16.142458, 20.579466, 16.865963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.598732, 20.549952, 17.293959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.773217, 20.190926, 17.319548>,  <15.877908, 19.975510, 17.334902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.773217, 20.190926, 17.319548>,  <15.598732, 20.549952, 17.293959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.773217, 20.190926, 17.319548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105673, 0.019505, 0.994210,
		-0.893618, -0.440447, -0.086340,
		0.436212, -0.897567, 0.063974,
		15.904081, 19.921656, 17.338739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.217196, 20.024748, 17.684921>,  <15.598732, 20.549952, 17.293959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.217196, 20.024748, 17.684921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.608315, 19.945099, 17.711014>,  <15.842988, 19.897308, 17.726669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.608315, 19.945099, 17.711014>,  <15.217196, 20.024748, 17.684921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.608315, 19.945099, 17.711014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046515, 0.097263, 0.994171,
		-0.204309, -0.975136, 0.085841,
		0.977801, -0.199125, 0.065230,
		15.901656, 19.885361, 17.730583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.264996, 20.051960, 18.450184>,  <15.217196, 20.024748, 17.684921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.264996, 20.051960, 18.450184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.638946, 19.961933, 18.340382>,  <15.863316, 19.907917, 18.274500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.638946, 19.961933, 18.340382>,  <15.264996, 20.051960, 18.450184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.638946, 19.961933, 18.340382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298037, 0.077597, 0.951395,
		-0.192827, -0.971248, 0.139622,
		0.934875, -0.225068, -0.274506,
		15.919408, 19.894413, 18.258030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<23.467348, 22.685127, 17.039373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.136387, 22.836864, 16.873724>,  <22.937809, 22.927908, 16.774334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.136387, 22.836864, 16.873724>,  <23.467348, 22.685127, 17.039373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.136387, 22.836864, 16.873724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203666, -0.484519, -0.850742,
		-0.523378, -0.788250, 0.323632,
		-0.827403, 0.379346, -0.414126,
		22.888166, 22.950668, 16.749487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.064650, 22.135897, 16.805986>,  <23.467348, 22.685127, 17.039373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.064650, 22.135897, 16.805986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.905083, 22.432121, 16.589678>,  <22.809343, 22.609856, 16.459892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.905083, 22.432121, 16.589678>,  <23.064650, 22.135897, 16.805986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.905083, 22.432121, 16.589678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006693, -0.587357, -0.809300,
		-0.916962, -0.326464, 0.229351,
		-0.398918, 0.740563, -0.540769,
		22.785408, 22.654289, 16.427446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.636421, 21.850918, 16.329271>,  <23.064650, 22.135897, 16.805986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.636421, 21.850918, 16.329271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.698067, 22.220398, 16.188971>,  <22.735054, 22.442085, 16.104790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.698067, 22.220398, 16.188971>,  <22.636421, 21.850918, 16.329271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.698067, 22.220398, 16.188971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005247, -0.355752, -0.934565,
		-0.988039, 0.142187, -0.059672,
		0.154112, 0.923701, -0.350751,
		22.744301, 22.497509, 16.083746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.200157, 21.891478, 15.776864>,  <22.636421, 21.850918, 16.329271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.200157, 21.891478, 15.776864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.504810, 22.147717, 15.737781>,  <22.687603, 22.301460, 15.714331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.504810, 22.147717, 15.737781>,  <22.200157, 21.891478, 15.776864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.504810, 22.147717, 15.737781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105270, -0.271094, -0.956779,
		-0.639400, 0.718429, -0.273910,
		0.761633, 0.640599, -0.097708,
		22.733301, 22.339897, 15.708468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.057442, 22.314085, 15.136760>,  <22.200157, 21.891478, 15.776864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.057442, 22.314085, 15.136760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.450966, 22.358810, 15.192779>,  <22.687080, 22.385647, 15.226390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.450966, 22.358810, 15.192779>,  <22.057442, 22.314085, 15.136760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.450966, 22.358810, 15.192779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169392, -0.325105, -0.930383,
		-0.058500, 0.939044, -0.338783,
		0.983811, 0.111815, 0.140047,
		22.746109, 22.392355, 15.234793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.269485, 22.559900, 14.508285>,  <22.057442, 22.314085, 15.136760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.269485, 22.559900, 14.508285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.606686, 22.445236, 14.690351>,  <22.809006, 22.376438, 14.799590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.606686, 22.445236, 14.690351>,  <22.269485, 22.559900, 14.508285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.606686, 22.445236, 14.690351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332426, -0.387613, -0.859796,
		0.422896, 0.876118, -0.231466,
		0.843002, -0.286658, 0.455164,
		22.859587, 22.359240, 14.826900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.752893, 22.756027, 14.064594>,  <22.269485, 22.559900, 14.508285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.752893, 22.756027, 14.064594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.913342, 22.484898, 14.311059>,  <23.009611, 22.322220, 14.458938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.913342, 22.484898, 14.311059>,  <22.752893, 22.756027, 14.064594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.913342, 22.484898, 14.311059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230387, -0.576375, -0.784037,
		0.886579, 0.456451, -0.075035,
		0.401122, -0.677824, 0.616162,
		23.033678, 22.281551, 14.495908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.522055, 22.747944, 13.902186>,  <22.752893, 22.756027, 14.064594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.522055, 22.747944, 13.902186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.429661, 22.395447, 14.067138>,  <23.374224, 22.183949, 14.166108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.429661, 22.395447, 14.067138>,  <23.522055, 22.747944, 13.902186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.429661, 22.395447, 14.067138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104257, -0.443818, -0.890032,
		0.967355, -0.162592, 0.194391,
		-0.230987, -0.881243, 0.412378,
		23.360365, 22.131073, 14.190851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.951170, 22.251497, 13.581910>,  <23.522055, 22.747944, 13.902186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.951170, 22.251497, 13.581910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.682575, 22.008644, 13.751849>,  <23.521418, 21.862932, 13.853812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.682575, 22.008644, 13.751849>,  <23.951170, 22.251497, 13.581910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.682575, 22.008644, 13.751849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094845, -0.639034, -0.763309,
		0.734921, -0.472258, 0.486687,
		-0.671488, -0.607131, 0.424848,
		23.481129, 21.826506, 13.879304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.231703, 21.603424, 13.763514>,  <23.951170, 22.251497, 13.581910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.231703, 21.603424, 13.763514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.837772, 21.567432, 13.704156>,  <23.601414, 21.545837, 13.668541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.837772, 21.567432, 13.704156>,  <24.231703, 21.603424, 13.763514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.837772, 21.567432, 13.704156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171912, -0.622817, -0.763246,
		-0.023744, -0.777176, 0.628836,
		-0.984826, -0.089981, -0.148394,
		23.542324, 21.540438, 13.659637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.139313, 20.859753, 13.736297>,  <24.231703, 21.603424, 13.763514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.139313, 20.859753, 13.736297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.822914, 21.041714, 13.572642>,  <23.633076, 21.150890, 13.474450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.822914, 21.041714, 13.572642>,  <24.139313, 20.859753, 13.736297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.822914, 21.041714, 13.572642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047141, -0.621413, -0.782064,
		-0.609997, -0.637900, 0.470093,
		-0.791000, 0.454896, -0.409131,
		23.585615, 21.178185, 13.449902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.073942, 20.416035, 13.219414>,  <24.139313, 20.859753, 13.736297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.073942, 20.416035, 13.219414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.814999, 20.704567, 13.120940>,  <23.659632, 20.877687, 13.061856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.814999, 20.704567, 13.120940>,  <24.073942, 20.416035, 13.219414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.814999, 20.704567, 13.120940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080844, -0.386160, -0.918882,
		-0.757886, -0.574944, 0.308299,
		-0.647359, 0.721332, -0.246184,
		23.620790, 20.920967, 13.047085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.530373, 20.086922, 12.992632>,  <24.073942, 20.416035, 13.219414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.530373, 20.086922, 12.992632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.509129, 20.441154, 12.808058>,  <23.496382, 20.653694, 12.697313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.509129, 20.441154, 12.808058>,  <23.530373, 20.086922, 12.992632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.509129, 20.441154, 12.808058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010601, -0.461563, -0.887044,
		-0.998532, -0.052002, 0.015125,
		-0.053109, 0.885582, -0.461437,
		23.493196, 20.706829, 12.669627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.068928, 20.020748, 12.315259>,  <23.530373, 20.086922, 12.992632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.068928, 20.020748, 12.315259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.292610, 20.344635, 12.244101>,  <23.426821, 20.538967, 12.201406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.292610, 20.344635, 12.244101>,  <23.068928, 20.020748, 12.315259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.292610, 20.344635, 12.244101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068558, -0.168681, -0.983283,
		-0.826188, 0.562056, -0.038815,
		0.559208, 0.809716, -0.177896,
		23.460373, 20.587549, 12.190732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.267632, 19.827410, 12.134552>,  <23.068928, 20.020748, 12.315259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.267632, 19.827410, 12.134552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.317642, 19.433323, 12.181394>,  <22.347649, 19.196871, 12.209498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.317642, 19.433323, 12.181394>,  <22.267632, 19.827410, 12.134552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.317642, 19.433323, 12.181394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370149, 0.063190, 0.926821,
		-0.920520, -0.159223, -0.356777,
		0.125026, -0.985218, 0.117104,
		22.355150, 19.137758, 12.216525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.635468, 19.553352, 12.275767>,  <22.267632, 19.827410, 12.134552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.635468, 19.553352, 12.275767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.884556, 19.282745, 12.433016>,  <22.034008, 19.120380, 12.527365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.884556, 19.282745, 12.433016>,  <21.635468, 19.553352, 12.275767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.884556, 19.282745, 12.433016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258865, 0.296002, 0.919441,
		-0.738382, -0.674320, 0.009200,
		0.622721, -0.676517, 0.393120,
		22.071373, 19.079790, 12.550952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.305258, 19.200556, 12.719101>,  <21.635468, 19.553352, 12.275767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.305258, 19.200556, 12.719101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.671875, 19.136787, 12.865816>,  <21.891846, 19.098526, 12.953845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.671875, 19.136787, 12.865816>,  <21.305258, 19.200556, 12.719101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.671875, 19.136787, 12.865816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353398, 0.106533, 0.929387,
		-0.187239, -0.981446, 0.041303,
		0.916543, -0.159421, 0.366789,
		21.946838, 19.088963, 12.975853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.347239, 18.611235, 13.146237>,  <21.305258, 19.200556, 12.719101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.347239, 18.611235, 13.146237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.667900, 18.825241, 13.252903>,  <21.860296, 18.953646, 13.316902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.667900, 18.825241, 13.252903>,  <21.347239, 18.611235, 13.146237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.667900, 18.825241, 13.252903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204355, -0.173939, 0.963319,
		0.561777, -0.826741, -0.030105,
		0.801652, 0.535018, 0.266664,
		21.908396, 18.985746, 13.332902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.659851, 18.285606, 13.620784>,  <21.347239, 18.611235, 13.146237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.659851, 18.285606, 13.620784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.843052, 18.634865, 13.687541>,  <21.952972, 18.844419, 13.727595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.843052, 18.634865, 13.687541>,  <21.659851, 18.285606, 13.620784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.843052, 18.634865, 13.687541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217650, -0.071883, 0.973376,
		0.861895, -0.482133, 0.157117,
		0.458002, 0.873144, 0.166892,
		21.980453, 18.896809, 13.737609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.016396, 18.207125, 14.292395>,  <21.659851, 18.285606, 13.620784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.016396, 18.207125, 14.292395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.994244, 18.603931, 14.247069>,  <21.980953, 18.842014, 14.219874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.994244, 18.603931, 14.247069>,  <22.016396, 18.207125, 14.292395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.994244, 18.603931, 14.247069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111446, 0.106637, 0.988033,
		0.992226, 0.067343, 0.104650,
		-0.055378, 0.992015, -0.113313,
		21.977631, 18.901535, 14.213076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.483196, 18.543516, 14.806260>,  <22.016396, 18.207125, 14.292395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.483196, 18.543516, 14.806260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.228996, 18.838608, 14.715142>,  <22.076475, 19.015663, 14.660472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.228996, 18.838608, 14.715142>,  <22.483196, 18.543516, 14.806260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.228996, 18.838608, 14.715142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160487, 0.162375, 0.973590,
		0.755236, 0.655277, 0.015206,
		-0.635502, 0.737731, -0.227795,
		22.038345, 19.059927, 14.646804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.689146, 19.015142, 15.281618>,  <22.483196, 18.543516, 14.806260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.689146, 19.015142, 15.281618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.332661, 19.147057, 15.157048>,  <22.118771, 19.226204, 15.082307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.332661, 19.147057, 15.157048>,  <22.689146, 19.015142, 15.281618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.332661, 19.147057, 15.157048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107892, 0.512746, 0.851734,
		0.440570, 0.792675, -0.421383,
		-0.891211, 0.329784, -0.311424,
		22.065298, 19.245993, 15.063622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.677246, 19.793375, 15.340814>,  <22.689146, 19.015142, 15.281618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.677246, 19.793375, 15.340814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.295704, 19.673363, 15.345555>,  <22.066778, 19.601355, 15.348400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.295704, 19.673363, 15.345555>,  <22.677246, 19.793375, 15.340814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.295704, 19.673363, 15.345555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113068, 0.395478, 0.911489,
		-0.278165, 0.868088, -0.411153,
		-0.953855, -0.300033, 0.011855,
		22.009548, 19.583353, 15.349112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.257114, 20.360237, 15.547505>,  <22.677246, 19.793375, 15.340814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.257114, 20.360237, 15.547505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.034668, 20.034943, 15.616071>,  <21.901199, 19.839766, 15.657210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.034668, 20.034943, 15.616071>,  <22.257114, 20.360237, 15.547505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.034668, 20.034943, 15.616071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223323, 0.344882, 0.911693,
		-0.800537, 0.468728, -0.373409,
		-0.556118, -0.813234, 0.171413,
		21.867832, 19.790972, 15.667495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.629496, 20.584637, 15.785361>,  <22.257114, 20.360237, 15.547505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.629496, 20.584637, 15.785361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.687149, 20.212440, 15.920066>,  <21.721741, 19.989122, 16.000889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.687149, 20.212440, 15.920066>,  <21.629496, 20.584637, 15.785361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.687149, 20.212440, 15.920066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213812, 0.302993, 0.928698,
		-0.966183, -0.205860, -0.155279,
		0.144133, -0.930493, 0.336762,
		21.730389, 19.933292, 16.021095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.071775, 20.477720, 16.215855>,  <21.629496, 20.584637, 15.785361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.071775, 20.477720, 16.215855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.303509, 20.180317, 16.349461>,  <21.442549, 20.001875, 16.429625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.303509, 20.180317, 16.349461>,  <21.071775, 20.477720, 16.215855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.303509, 20.180317, 16.349461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314656, 0.174020, 0.933118,
		-0.751906, -0.645688, -0.133134,
		0.579334, -0.743508, 0.334017,
		21.477308, 19.957264, 16.449665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.712587, 20.155540, 16.745403>,  <21.071775, 20.477720, 16.215855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.712587, 20.155540, 16.745403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.089729, 20.056602, 16.834709>,  <21.316013, 19.997240, 16.888292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.089729, 20.056602, 16.834709>,  <20.712587, 20.155540, 16.745403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.089729, 20.056602, 16.834709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161740, 0.246081, 0.955659,
		-0.291321, -0.937157, 0.192012,
		0.942854, -0.247347, 0.223264,
		21.372585, 19.982399, 16.901688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.676523, 19.800550, 17.344393>,  <20.712587, 20.155540, 16.745403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.676523, 19.800550, 17.344393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.044735, 19.951061, 17.302372>,  <21.265663, 20.041368, 17.277159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.044735, 19.951061, 17.302372>,  <20.676523, 19.800550, 17.344393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.044735, 19.951061, 17.302372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025843, 0.326971, 0.944681,
		0.389814, -0.866893, 0.310711,
		0.920531, 0.376280, -0.105055,
		21.320894, 20.063944, 17.270855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.417856, 19.068922, 17.594961>,  <20.676523, 19.800550, 17.344393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.417856, 19.068922, 17.594961> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.056965, 18.982273, 17.744123>,  <19.840429, 18.930285, 17.833620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.056965, 18.982273, 17.744123>,  <20.417856, 19.068922, 17.594961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.056965, 18.982273, 17.744123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222531, -0.506834, -0.832826,
		0.369409, -0.834383, 0.409075,
		-0.902229, -0.216621, 0.372905,
		19.786297, 18.917286, 17.855995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.240578, 18.435398, 17.293196>,  <20.417856, 19.068922, 17.594961>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.240578, 18.435398, 17.293196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.893738, 18.602772, 17.401308>,  <19.685635, 18.703196, 17.466175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.893738, 18.602772, 17.401308>,  <20.240578, 18.435398, 17.293196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.893738, 18.602772, 17.401308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459551, -0.462559, -0.758190,
		-0.192232, -0.781634, 0.593376,
		-0.867099, 0.418435, 0.270282,
		19.633608, 18.728302, 17.482393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.781649, 17.872185, 17.358633>,  <20.240578, 18.435398, 17.293196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.781649, 17.872185, 17.358633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.563778, 18.202648, 17.300964>,  <19.433056, 18.400927, 17.266363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.563778, 18.202648, 17.300964>,  <19.781649, 17.872185, 17.358633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.563778, 18.202648, 17.300964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461790, -0.438955, -0.770759,
		-0.700054, -0.353240, 0.620602,
		-0.544679, 0.826160, -0.144169,
		19.400373, 18.450497, 17.257713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.134470, 17.701082, 17.436638>,  <19.781649, 17.872185, 17.358633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.134470, 17.701082, 17.436638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.096527, 18.025784, 17.206141>,  <19.073761, 18.220604, 17.067842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.096527, 18.025784, 17.206141>,  <19.134470, 17.701082, 17.436638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.096527, 18.025784, 17.206141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557932, -0.522748, -0.644551,
		-0.824448, 0.260366, 0.502489,
		-0.094856, 0.811754, -0.576245,
		19.068069, 18.269310, 17.033266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.481945, 17.579359, 17.115341>,  <19.134470, 17.701082, 17.436638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.481945, 17.579359, 17.115341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.646862, 17.885002, 16.916885>,  <18.745813, 18.068388, 16.797812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.646862, 17.885002, 16.916885>,  <18.481945, 17.579359, 17.115341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.646862, 17.885002, 16.916885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386135, -0.346689, -0.854814,
		-0.825175, 0.544012, 0.152110,
		0.412295, 0.764106, -0.496141,
		18.770550, 18.114233, 16.768044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.966333, 17.701906, 16.720915>,  <18.481945, 17.579359, 17.115341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.966333, 17.701906, 16.720915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.290443, 17.856876, 16.545027>,  <18.484909, 17.949858, 16.439493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.290443, 17.856876, 16.545027>,  <17.966333, 17.701906, 16.720915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.290443, 17.856876, 16.545027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178127, -0.552005, -0.814593,
		-0.558321, 0.738372, -0.378266,
		0.810277, 0.387425, -0.439720,
		18.533527, 17.973104, 16.413111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.751778, 18.190603, 16.252287>,  <17.966333, 17.701906, 16.720915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.751778, 18.190603, 16.252287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.122292, 18.101315, 16.130850>,  <18.344601, 18.047741, 16.057987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.122292, 18.101315, 16.130850>,  <17.751778, 18.190603, 16.252287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.122292, 18.101315, 16.130850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368959, -0.373530, -0.851084,
		0.076582, 0.900359, -0.428356,
		0.926285, -0.223223, -0.303591,
		18.400177, 18.034348, 16.039772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.874903, 18.461540, 15.529677>,  <17.751778, 18.190603, 16.252287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.874903, 18.461540, 15.529677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.157860, 18.182495, 15.575173>,  <18.327633, 18.015068, 15.602470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.157860, 18.182495, 15.575173>,  <17.874903, 18.461540, 15.529677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.157860, 18.182495, 15.575173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349933, -0.485463, -0.801169,
		0.614121, 0.526939, -0.587530,
		0.707392, -0.697611, 0.113740,
		18.370077, 17.973211, 15.609295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.156746, 18.432615, 14.842978>,  <17.874903, 18.461540, 15.529677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.156746, 18.432615, 14.842978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.247944, 18.080280, 15.008941>,  <18.302662, 17.868879, 15.108518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.247944, 18.080280, 15.008941>,  <18.156746, 18.432615, 14.842978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.247944, 18.080280, 15.008941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214148, -0.461059, -0.861142,
		0.949821, 0.107484, -0.293748,
		0.227994, -0.880836, 0.414906,
		18.316341, 17.816029, 15.133412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.430983, 18.039259, 14.291451>,  <18.156746, 18.432615, 14.842978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.430983, 18.039259, 14.291451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.376583, 17.750431, 14.562779>,  <18.343943, 17.577135, 14.725577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.376583, 17.750431, 14.562779>,  <18.430983, 18.039259, 14.291451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.376583, 17.750431, 14.562779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235741, -0.641432, -0.730062,
		0.962253, -0.259197, -0.082987,
		-0.135999, -0.722068, 0.678324,
		18.335783, 17.533812, 14.766276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.802097, 17.421640, 14.037895>,  <18.430983, 18.039259, 14.291451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.802097, 17.421640, 14.037895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.514118, 17.297203, 14.286056>,  <18.341331, 17.222540, 14.434952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.514118, 17.297203, 14.286056>,  <18.802097, 17.421640, 14.037895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.514118, 17.297203, 14.286056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288864, -0.678487, -0.675435,
		0.631059, -0.665488, 0.398610,
		-0.719946, -0.311095, 0.620401,
		18.298134, 17.203875, 14.472176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.984631, 16.726593, 14.014990>,  <18.802097, 17.421640, 14.037895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.984631, 16.726593, 14.014990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.607998, 16.745190, 14.148412>,  <18.382017, 16.756348, 14.228465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.607998, 16.745190, 14.148412>,  <18.984631, 16.726593, 14.014990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.607998, 16.745190, 14.148412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252704, -0.752246, -0.608496,
		0.222625, -0.657241, 0.720051,
		-0.941583, 0.046493, 0.333556,
		18.325523, 16.759138, 14.248479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.800344, 16.017666, 14.091211>,  <18.984631, 16.726593, 14.014990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.800344, 16.017666, 14.091211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.472775, 16.245087, 14.059943>,  <18.276234, 16.381540, 14.041183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.472775, 16.245087, 14.059943>,  <18.800344, 16.017666, 14.091211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.472775, 16.245087, 14.059943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317309, -0.562057, -0.763811,
		-0.478202, -0.600699, 0.640689,
		-0.818924, 0.568553, -0.078170,
		18.227097, 16.415653, 14.036492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.384922, 15.501990, 13.925460>,  <18.800344, 16.017666, 14.091211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.384922, 15.501990, 13.925460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.245682, 15.856689, 13.803803>,  <18.162138, 16.069510, 13.730809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.245682, 15.856689, 13.803803>,  <18.384922, 15.501990, 13.925460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.245682, 15.856689, 13.803803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375152, -0.429090, -0.821671,
		-0.859120, -0.171926, 0.482032,
		-0.348101, 0.886749, -0.304142,
		18.141251, 16.122715, 13.712561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<15.421650, 19.360636, 18.763897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.778871, 19.534290, 18.716593>,  <15.993203, 19.638483, 18.688210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.778871, 19.534290, 18.716593>,  <15.421650, 19.360636, 18.763897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.778871, 19.534290, 18.716593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280571, -0.331811, 0.900656,
		0.351768, -0.837512, -0.418130,
		0.893050, 0.434137, -0.118261,
		16.046785, 19.664532, 18.681114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.833797, 18.874588, 19.012133>,  <15.421650, 19.360636, 18.763897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.833797, 18.874588, 19.012133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.043072, 19.215408, 19.018927>,  <16.168636, 19.419901, 19.023003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.043072, 19.215408, 19.018927>,  <15.833797, 18.874588, 19.012133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.043072, 19.215408, 19.018927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164329, -0.120418, 0.979028,
		0.836225, -0.509423, -0.203017,
		0.523186, 0.852049, 0.016984,
		16.200027, 19.471024, 19.024021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.598179, 18.681673, 19.241783>,  <15.833797, 18.874588, 19.012133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.598179, 18.681673, 19.241783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.492825, 19.054043, 19.342979>,  <16.429611, 19.277466, 19.403698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.492825, 19.054043, 19.342979>,  <16.598179, 18.681673, 19.241783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.492825, 19.054043, 19.342979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299226, -0.170478, 0.938830,
		0.917110, 0.322978, -0.233655,
		-0.263388, 0.930926, 0.252990,
		16.413809, 19.333321, 19.418877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.184563, 18.863163, 19.664375>,  <16.598179, 18.681673, 19.241783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.184563, 18.863163, 19.664375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.898037, 19.132896, 19.736116>,  <16.726122, 19.294737, 19.779161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.898037, 19.132896, 19.736116>,  <17.184563, 18.863163, 19.664375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.898037, 19.132896, 19.736116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181987, -0.067593, 0.980975,
		0.673626, 0.735328, -0.074302,
		-0.716316, 0.674332, 0.179352,
		16.683142, 19.335196, 19.789923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.560617, 19.263939, 20.123144>,  <17.184563, 18.863163, 19.664375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.560617, 19.263939, 20.123144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.167881, 19.321205, 20.172928>,  <16.932240, 19.355566, 20.202797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.167881, 19.321205, 20.172928>,  <17.560617, 19.263939, 20.123144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.167881, 19.321205, 20.172928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118492, -0.049498, 0.991721,
		0.148142, 0.988460, 0.031635,
		-0.981842, 0.143167, 0.124457,
		16.873329, 19.364155, 20.210264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.457762, 19.835678, 20.369064>,  <17.560617, 19.263939, 20.123144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.457762, 19.835678, 20.369064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.090733, 19.717152, 20.475090>,  <16.870516, 19.646036, 20.538706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.090733, 19.717152, 20.475090>,  <17.457762, 19.835678, 20.369064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.090733, 19.717152, 20.475090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219109, 0.179417, 0.959062,
		-0.331744, 0.938086, -0.099702,
		-0.917571, -0.296317, 0.265064,
		16.815460, 19.628256, 20.554609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.131054, 20.394133, 20.820118>,  <17.457762, 19.835678, 20.369064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.131054, 20.394133, 20.820118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.948147, 20.044067, 20.883364>,  <16.838404, 19.834028, 20.921310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.948147, 20.044067, 20.883364>,  <17.131054, 20.394133, 20.820118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.948147, 20.044067, 20.883364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138730, 0.105420, 0.984703,
		-0.878443, 0.472206, 0.073206,
		-0.457265, -0.875162, 0.158115,
		16.810966, 19.781519, 20.930798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.686745, 20.586819, 21.264465>,  <17.131054, 20.394133, 20.820118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.686745, 20.586819, 21.264465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.714073, 20.190159, 21.308208>,  <16.730471, 19.952162, 21.334455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.714073, 20.190159, 21.308208>,  <16.686745, 20.586819, 21.264465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.714073, 20.190159, 21.308208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328704, 0.125870, 0.936008,
		-0.941959, -0.028003, 0.334559,
		0.068322, -0.991651, 0.109360,
		16.734570, 19.892664, 21.341017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.267181, 20.279232, 21.884851>,  <16.686745, 20.586819, 21.264465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.267181, 20.279232, 21.884851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.542511, 19.998707, 21.810694>,  <16.707708, 19.830391, 21.766199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.542511, 19.998707, 21.810694>,  <16.267181, 20.279232, 21.884851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.542511, 19.998707, 21.810694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297400, 0.039719, 0.953927,
		-0.661639, -0.711744, 0.235910,
		0.688322, -0.701315, -0.185393,
		16.749008, 19.788313, 21.755075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.203886, 19.846436, 22.499832>,  <16.267181, 20.279232, 21.884851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.203886, 19.846436, 22.499832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.555698, 19.795345, 22.316481>,  <16.766787, 19.764690, 22.206469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.555698, 19.795345, 22.316481>,  <16.203886, 19.846436, 22.499832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.555698, 19.795345, 22.316481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461672, -0.004284, 0.887040,
		-0.115260, -0.991800, 0.055199,
		0.879530, -0.127724, -0.458381,
		16.819557, 19.757029, 22.178967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.507093, 19.298477, 22.810341>,  <16.203886, 19.846436, 22.499832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.507093, 19.298477, 22.810341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.818283, 19.470970, 22.627563>,  <17.004997, 19.574467, 22.517897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.818283, 19.470970, 22.627563>,  <16.507093, 19.298477, 22.810341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.818283, 19.470970, 22.627563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462255, 0.099716, 0.881122,
		0.425533, -0.896714, -0.121763,
		0.777973, 0.431232, -0.456943,
		17.051676, 19.600340, 22.490480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.077423, 19.036383, 23.086071>,  <16.507093, 19.298477, 22.810341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.077423, 19.036383, 23.086071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.206429, 19.390381, 22.951746>,  <17.283833, 19.602779, 22.871151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.206429, 19.390381, 22.951746>,  <17.077423, 19.036383, 23.086071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.206429, 19.390381, 22.951746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510567, 0.136092, 0.848999,
		0.797061, -0.445269, -0.407958,
		0.322513, 0.884994, -0.335813,
		17.303183, 19.655880, 22.851002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.818293, 19.048613, 23.004704>,  <17.077423, 19.036383, 23.086071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.818293, 19.048613, 23.004704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.674831, 19.417946, 23.059586>,  <17.588755, 19.639545, 23.092516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.674831, 19.417946, 23.059586>,  <17.818293, 19.048613, 23.004704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.674831, 19.417946, 23.059586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403424, 0.020768, 0.914777,
		0.841794, 0.383439, -0.379943,
		-0.358652, 0.923332, 0.137207,
		17.567236, 19.694946, 23.100748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.366457, 19.482563, 23.349091>,  <17.818293, 19.048613, 23.004704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.366457, 19.482563, 23.349091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.997192, 19.625217, 23.406481>,  <17.775633, 19.710810, 23.440914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.997192, 19.625217, 23.406481>,  <18.366457, 19.482563, 23.349091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.997192, 19.625217, 23.406481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197421, 0.119594, 0.972996,
		0.329845, 0.926558, -0.180812,
		-0.923162, 0.356634, 0.143475,
		17.720243, 19.732208, 23.449524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.969088, 19.960081, 23.465179>,  <18.366457, 19.482563, 23.349091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.969088, 19.960081, 23.465179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.364326, 19.939819, 23.407080>,  <19.601469, 19.927662, 23.372219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.364326, 19.939819, 23.407080>,  <18.969088, 19.960081, 23.465179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.364326, 19.939819, 23.407080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150774, -0.131636, -0.979765,
		0.030510, 0.990003, -0.137707,
		0.988097, -0.050655, -0.145250,
		19.660755, 19.924623, 23.363504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.964254, 20.233786, 22.855993>,  <18.969088, 19.960081, 23.465179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.964254, 20.233786, 22.855993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.306377, 20.029621, 22.891615>,  <19.511652, 19.907124, 22.912989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.306377, 20.029621, 22.891615>,  <18.964254, 20.233786, 22.855993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.306377, 20.029621, 22.891615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030338, -0.220921, -0.974820,
		0.517232, 0.831069, -0.204440,
		0.855307, -0.510410, 0.089054,
		19.562969, 19.876497, 22.918331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.482830, 20.594107, 22.466032>,  <18.964254, 20.233786, 22.855993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.482830, 20.594107, 22.466032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.596745, 20.211674, 22.493746>,  <19.665094, 19.982214, 22.510374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.596745, 20.211674, 22.493746>,  <19.482830, 20.594107, 22.466032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.596745, 20.211674, 22.493746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179373, -0.017851, -0.983619,
		0.941659, 0.292550, 0.166412,
		0.284787, -0.956084, 0.069285,
		19.682180, 19.924849, 22.514532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.128206, 20.450630, 22.079773>,  <19.482830, 20.594107, 22.466032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.128206, 20.450630, 22.079773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.965343, 20.086811, 22.113110>,  <19.867626, 19.868519, 22.133112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.965343, 20.086811, 22.113110>,  <20.128206, 20.450630, 22.079773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.965343, 20.086811, 22.113110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026282, -0.102878, -0.994347,
		0.912981, -0.402663, 0.065791,
		-0.407155, -0.909549, 0.083343,
		19.843197, 19.813946, 22.138113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.568066, 20.052608, 21.621689>,  <20.128206, 20.450630, 22.079773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.568066, 20.052608, 21.621689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.233624, 19.843342, 21.687685>,  <20.032959, 19.717781, 21.727283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.233624, 19.843342, 21.687685>,  <20.568066, 20.052608, 21.621689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.233624, 19.843342, 21.687685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041232, -0.359852, -0.932098,
		0.547017, -0.772529, 0.322445,
		-0.836105, -0.523169, 0.164993,
		19.982792, 19.686392, 21.737183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.700998, 19.396822, 21.327168>,  <20.568066, 20.052608, 21.621689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.700998, 19.396822, 21.327168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.303501, 19.433197, 21.353098>,  <20.065002, 19.455021, 21.368656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.303501, 19.433197, 21.353098>,  <20.700998, 19.396822, 21.327168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.303501, 19.433197, 21.353098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095732, -0.394760, -0.913783,
		-0.057505, -0.914273, 0.400997,
		-0.993745, 0.090935, 0.064825,
		20.005377, 19.460478, 21.372545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.394272, 18.629240, 21.207468>,  <20.700998, 19.396822, 21.327168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.394272, 18.629240, 21.207468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.122879, 18.912838, 21.130539>,  <19.960043, 19.082996, 21.084381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.122879, 18.912838, 21.130539>,  <20.394272, 18.629240, 21.207468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.122879, 18.912838, 21.130539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059820, -0.314252, -0.947453,
		-0.732176, -0.631327, 0.255627,
		-0.678483, 0.708994, -0.192322,
		19.919334, 19.125536, 21.072842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.807354, 18.269426, 20.856342>,  <20.394272, 18.629240, 21.207468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.807354, 18.269426, 20.856342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.775040, 18.660568, 20.779116>,  <19.755651, 18.895254, 20.732779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.775040, 18.660568, 20.779116>,  <19.807354, 18.269426, 20.856342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.775040, 18.660568, 20.779116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298170, -0.208540, -0.931454,
		-0.951088, -0.017681, 0.308414,
		-0.080786, 0.977854, -0.193068,
		19.750803, 18.953924, 20.721195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.188665, 18.421677, 20.418600>,  <19.807354, 18.269426, 20.856342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.188665, 18.421677, 20.418600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.362198, 18.778381, 20.367138>,  <19.466318, 18.992403, 20.336260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.362198, 18.778381, 20.367138>,  <19.188665, 18.421677, 20.418600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.362198, 18.778381, 20.367138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090634, -0.098875, -0.990964,
		-0.896423, 0.441573, 0.037929,
		0.433833, 0.891761, -0.128655,
		19.492348, 19.045910, 20.328541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.750181, 18.899429, 19.985212>,  <19.188665, 18.421677, 20.418600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.750181, 18.899429, 19.985212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.128674, 19.025726, 19.957052>,  <19.355768, 19.101505, 19.940157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.128674, 19.025726, 19.957052>,  <18.750181, 18.899429, 19.985212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.128674, 19.025726, 19.957052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079878, 0.017158, -0.996657,
		-0.313479, 0.948690, 0.041457,
		0.946230, 0.315742, -0.070401,
		19.412542, 19.120449, 19.935932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.757896, 19.433176, 19.491911>,  <18.750181, 18.899429, 19.985212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.757896, 19.433176, 19.491911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.141499, 19.319843, 19.494167>,  <19.371660, 19.251842, 19.495522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.141499, 19.319843, 19.494167>,  <18.757896, 19.433176, 19.491911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.141499, 19.319843, 19.494167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026725, -0.110232, -0.993547,
		0.282127, 0.952665, -0.113285,
		0.959005, -0.283334, 0.005640,
		19.429199, 19.234842, 19.495859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.206526, 19.894621, 19.088676>,  <18.757896, 19.433176, 19.491911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.206526, 19.894621, 19.088676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.419865, 19.557671, 19.119511>,  <19.547869, 19.355501, 19.138010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.419865, 19.557671, 19.119511>,  <19.206526, 19.894621, 19.088676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.419865, 19.557671, 19.119511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045024, -0.062728, -0.997014,
		0.844696, 0.535227, 0.004471,
		0.533349, -0.842376, 0.077084,
		19.579870, 19.304958, 19.142635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.622929, 20.000771, 18.500843>,  <19.206526, 19.894621, 19.088676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.622929, 20.000771, 18.500843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.683468, 19.613789, 18.581961>,  <19.719791, 19.381599, 18.630630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.683468, 19.613789, 18.581961>,  <19.622929, 20.000771, 18.500843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.683468, 19.613789, 18.581961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112581, -0.186952, -0.975897,
		0.982048, 0.170531, 0.080622,
		0.151348, -0.967454, 0.202795,
		19.728872, 19.323553, 18.642799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.293438, 19.721233, 18.153234>,  <19.622929, 20.000771, 18.500843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.293438, 19.721233, 18.153234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.025227, 19.434689, 18.230408>,  <19.864300, 19.262762, 18.276711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.025227, 19.434689, 18.230408>,  <20.293438, 19.721233, 18.153234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.025227, 19.434689, 18.230408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057757, -0.208862, -0.976238,
		0.739634, -0.665736, 0.098673,
		-0.670526, -0.716360, 0.192932,
		19.824068, 19.219780, 18.288288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.987848, 19.683256, 18.006819>,  <20.293438, 19.721233, 18.153234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.987848, 19.683256, 18.006819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.227627, 19.964832, 17.854437>,  <21.371494, 20.133778, 17.763008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.227627, 19.964832, 17.854437>,  <20.987848, 19.683256, 18.006819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.227627, 19.964832, 17.854437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060969, 0.514724, 0.855186,
		0.798088, -0.489413, 0.351469,
		0.599448, 0.703942, -0.380956,
		21.407461, 20.176016, 17.740150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.578636, 19.728521, 18.436357>,  <20.987848, 19.683256, 18.006819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.578636, 19.728521, 18.436357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.573582, 20.072601, 18.232437>,  <21.570549, 20.279049, 18.110085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.573582, 20.072601, 18.232437>,  <21.578636, 19.728521, 18.436357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.573582, 20.072601, 18.232437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089669, 0.506815, 0.857378,
		0.995891, 0.056547, 0.070730,
		-0.012635, 0.860198, -0.509803,
		21.569792, 20.330662, 18.079496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.013103, 20.236271, 18.796225>,  <21.578636, 19.728521, 18.436357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.013103, 20.236271, 18.796225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.804043, 20.491936, 18.570549>,  <21.678606, 20.645334, 18.435144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.804043, 20.491936, 18.570549>,  <22.013103, 20.236271, 18.796225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.804043, 20.491936, 18.570549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001227, 0.661205, 0.750204,
		0.852546, 0.392787, -0.344795,
		-0.522651, 0.639160, -0.564189,
		21.647247, 20.683683, 18.401293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.365570, 20.919762, 18.919310>,  <22.013103, 20.236271, 18.796225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.365570, 20.919762, 18.919310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.001930, 20.996601, 18.771454>,  <21.783747, 21.042706, 18.682741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.001930, 20.996601, 18.771454>,  <22.365570, 20.919762, 18.919310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.001930, 20.996601, 18.771454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133905, 0.705478, 0.695967,
		0.394466, 0.682202, -0.615628,
		-0.909102, 0.192100, -0.369637,
		21.729200, 21.054232, 18.660563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.389423, 21.699745, 18.875332>,  <22.365570, 20.919762, 18.919310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.389423, 21.699745, 18.875332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.022572, 21.541824, 18.897257>,  <21.802460, 21.447073, 18.910412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.022572, 21.541824, 18.897257>,  <22.389423, 21.699745, 18.875332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.022572, 21.541824, 18.897257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231899, 0.640369, 0.732223,
		-0.324183, 0.658833, -0.678855,
		-0.917130, -0.394800, 0.054814,
		21.747433, 21.423384, 18.913700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.983202, 22.228756, 19.016594>,  <22.389423, 21.699745, 18.875332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.983202, 22.228756, 19.016594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.735893, 21.939960, 19.140837>,  <21.587507, 21.766684, 19.215382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.735893, 21.939960, 19.140837>,  <21.983202, 22.228756, 19.016594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.735893, 21.939960, 19.140837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334732, 0.599438, 0.727069,
		-0.711123, 0.345556, -0.612287,
		-0.618271, -0.721987, 0.310605,
		21.550411, 21.723364, 19.234018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.375031, 22.555824, 19.248766>,  <21.983202, 22.228756, 19.016594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.375031, 22.555824, 19.248766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.330406, 22.203583, 19.432978>,  <21.303633, 21.992237, 19.543505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.330406, 22.203583, 19.432978>,  <21.375031, 22.555824, 19.248766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.330406, 22.203583, 19.432978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327526, 0.470112, 0.819586,
		-0.938233, -0.059403, -0.340867,
		-0.111559, -0.880606, 0.460530,
		21.296938, 21.939402, 19.571136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.978714, 23.160347, 19.188110>,  <21.375031, 22.555824, 19.248766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.978714, 23.160347, 19.188110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.307293, 23.388443, 19.185204>,  <21.504440, 23.525301, 19.183458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.307293, 23.388443, 19.185204>,  <20.978714, 23.160347, 19.188110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.307293, 23.388443, 19.185204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072553, -0.117138, -0.990462,
		-0.565654, 0.813083, -0.137595,
		0.821445, 0.570241, -0.007268,
		21.553726, 23.559515, 19.183023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.015600, 23.536043, 18.640690>,  <20.978714, 23.160347, 19.188110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.015600, 23.536043, 18.640690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.404026, 23.567841, 18.730774>,  <21.637081, 23.586918, 18.784824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.404026, 23.567841, 18.730774>,  <21.015600, 23.536043, 18.640690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.404026, 23.567841, 18.730774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226907, -0.012913, -0.973831,
		-0.074503, 0.996752, -0.030577,
		0.971062, 0.079491, 0.225208,
		21.695345, 23.591688, 18.798336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.262329, 24.106211, 18.186411>,  <21.015600, 23.536043, 18.640690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.262329, 24.106211, 18.186411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.597031, 23.909428, 18.282597>,  <21.797852, 23.791359, 18.340307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.597031, 23.909428, 18.282597>,  <21.262329, 24.106211, 18.186411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.597031, 23.909428, 18.282597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271741, -0.008182, -0.962336,
		0.475394, 0.870582, 0.126838,
		0.836754, -0.491956, 0.240462,
		21.848057, 23.761841, 18.354734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.873400, 24.478247, 17.976671>,  <21.262329, 24.106211, 18.186411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.873400, 24.478247, 17.976671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.018745, 24.108315, 18.021673>,  <22.105953, 23.886356, 18.048674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.018745, 24.108315, 18.021673>,  <21.873400, 24.478247, 17.976671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.018745, 24.108315, 18.021673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254023, -0.017833, -0.967034,
		0.896347, 0.379965, 0.228448,
		0.363365, -0.924829, 0.112505,
		22.127754, 23.830866, 18.055424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.447824, 24.479654, 17.610218>,  <21.873400, 24.478247, 17.976671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.447824, 24.479654, 17.610218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.386074, 24.087494, 17.659180>,  <22.349024, 23.852198, 17.688557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.386074, 24.087494, 17.659180>,  <22.447824, 24.479654, 17.610218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.386074, 24.087494, 17.659180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153796, -0.146225, -0.977223,
		0.975969, -0.132033, 0.173355,
		-0.154375, -0.980401, 0.122405,
		22.339762, 23.793373, 17.695902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.911047, 24.142263, 17.213726>,  <22.447824, 24.479654, 17.610218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.911047, 24.142263, 17.213726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.663418, 23.829685, 17.244946>,  <22.514841, 23.642138, 17.263678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.663418, 23.829685, 17.244946>,  <22.911047, 24.142263, 17.213726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.663418, 23.829685, 17.244946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316857, -0.339472, -0.885641,
		0.718575, -0.523547, 0.457764,
		-0.619073, -0.781445, 0.078047,
		22.477695, 23.595251, 17.268360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.388588, 23.519646, 17.130806>,  <22.911047, 24.142263, 17.213726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.388588, 23.519646, 17.130806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.017769, 23.397282, 17.044088>,  <22.795277, 23.323864, 16.992058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.017769, 23.397282, 17.044088>,  <23.388588, 23.519646, 17.130806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.017769, 23.397282, 17.044088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334150, -0.411809, -0.847795,
		0.170071, -0.858389, 0.483987,
		-0.927049, -0.305910, -0.216794,
		22.739655, 23.305510, 16.979050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<18.055115, 23.380318, 21.917446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.985435, 23.006474, 22.041487>,  <17.943628, 22.782167, 22.115911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.985435, 23.006474, 22.041487>,  <18.055115, 23.380318, 21.917446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.985435, 23.006474, 22.041487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072959, -0.326299, -0.942447,
		0.982004, -0.141546, 0.125028,
		-0.174196, -0.934609, 0.310100,
		17.933176, 22.726091, 22.134518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.721548, 23.022947, 21.760937>,  <18.055115, 23.380318, 21.917446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.721548, 23.022947, 21.760937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.437160, 22.743763, 21.795277>,  <18.266527, 22.576252, 21.815880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.437160, 22.743763, 21.795277>,  <18.721548, 23.022947, 21.760937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.437160, 22.743763, 21.795277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092409, -0.213750, -0.972508,
		0.697124, -0.683491, 0.216468,
		-0.710970, -0.697962, 0.085849,
		18.223869, 22.534374, 21.821032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.951973, 22.463272, 21.479155>,  <18.721548, 23.022947, 21.760937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.951973, 22.463272, 21.479155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.553383, 22.430065, 21.474260>,  <18.314230, 22.410141, 21.471325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.553383, 22.430065, 21.474260>,  <18.951973, 22.463272, 21.479155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.553383, 22.430065, 21.474260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015675, -0.040932, -0.999039,
		0.082436, -0.995707, 0.042089,
		-0.996473, -0.083017, -0.012234,
		18.254440, 22.405161, 21.470591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.823732, 21.944317, 20.872620>,  <18.951973, 22.463272, 21.479155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.823732, 21.944317, 20.872620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.476959, 22.123455, 20.960131>,  <18.268896, 22.230938, 21.012638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.476959, 22.123455, 20.960131>,  <18.823732, 21.944317, 20.872620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.476959, 22.123455, 20.960131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189746, 0.109345, -0.975725,
		-0.460894, -0.887401, -0.009819,
		-0.866933, 0.447843, 0.218777,
		18.216879, 22.257809, 21.025764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.289570, 21.514248, 20.501308>,  <18.823732, 21.944317, 20.872620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.289570, 21.514248, 20.501308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.125526, 21.873428, 20.565174>,  <18.027100, 22.088938, 20.603493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.125526, 21.873428, 20.565174>,  <18.289570, 21.514248, 20.501308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.125526, 21.873428, 20.565174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260308, 0.052536, -0.964095,
		-0.874100, -0.436944, 0.212199,
		-0.410108, 0.897953, 0.159662,
		18.002495, 22.142815, 20.613073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.704731, 21.578896, 20.028654>,  <18.289570, 21.514248, 20.501308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.704731, 21.578896, 20.028654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.806717, 21.951469, 20.132519>,  <17.867908, 22.175014, 20.194838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.806717, 21.951469, 20.132519>,  <17.704731, 21.578896, 20.028654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.806717, 21.951469, 20.132519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205367, 0.314570, -0.926752,
		-0.944890, 0.182962, 0.271490,
		0.254963, 0.931435, 0.259660,
		17.883205, 22.230900, 20.210417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.121632, 22.011143, 19.970982>,  <17.704731, 21.578896, 20.028654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.121632, 22.011143, 19.970982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.439537, 22.251591, 19.937511>,  <17.630280, 22.395861, 19.917429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.439537, 22.251591, 19.937511>,  <17.121632, 22.011143, 19.970982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.439537, 22.251591, 19.937511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311343, 0.285464, -0.906408,
		-0.520975, 0.746433, 0.414033,
		0.794764, 0.601122, -0.083677,
		17.677967, 22.431927, 19.912409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.790836, 22.598269, 19.619722>,  <17.121632, 22.011143, 19.970982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.790836, 22.598269, 19.619722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.187752, 22.632195, 19.583570>,  <17.425901, 22.652550, 19.561880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.187752, 22.632195, 19.583570>,  <16.790836, 22.598269, 19.619722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.187752, 22.632195, 19.583570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116817, 0.396280, -0.910668,
		-0.041425, 0.914204, 0.403132,
		0.992289, 0.084817, -0.090378,
		17.485439, 22.657639, 19.556458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.833031, 23.156223, 19.075439>,  <16.790836, 22.598269, 19.619722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.833031, 23.156223, 19.075439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.191147, 22.978230, 19.083899>,  <17.406015, 22.871433, 19.088974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.191147, 22.978230, 19.083899>,  <16.833031, 23.156223, 19.075439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.191147, 22.978230, 19.083899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143096, 0.242302, -0.959590,
		0.421880, 0.862135, 0.280606,
		0.895288, -0.444986, 0.021145,
		17.459734, 22.844734, 19.090242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.339146, 23.638321, 18.677204>,  <16.833031, 23.156223, 19.075439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.339146, 23.638321, 18.677204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.443825, 23.252289, 18.672613>,  <17.506632, 23.020670, 18.669859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.443825, 23.252289, 18.672613>,  <17.339146, 23.638321, 18.677204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.443825, 23.252289, 18.672613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211260, 0.068885, -0.974999,
		0.941744, 0.252732, 0.221911,
		0.261700, -0.965081, -0.011479,
		17.522335, 22.962765, 18.669168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.932722, 23.668287, 18.374928>,  <17.339146, 23.638321, 18.677204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.932722, 23.668287, 18.374928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.815769, 23.287952, 18.334087>,  <17.745598, 23.059752, 18.309584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.815769, 23.287952, 18.334087>,  <17.932722, 23.668287, 18.374928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.815769, 23.287952, 18.334087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232216, 0.032978, -0.972105,
		0.927679, -0.307935, 0.211157,
		-0.292382, -0.950835, -0.102101,
		17.728054, 23.002701, 18.303457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.388912, 23.396185, 17.835440>,  <17.932722, 23.668287, 18.374928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.388912, 23.396185, 17.835440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.097984, 23.122566, 17.857672>,  <17.923428, 22.958395, 17.871012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.097984, 23.122566, 17.857672>,  <18.388912, 23.396185, 17.835440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.097984, 23.122566, 17.857672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012317, -0.067964, -0.997612,
		0.686190, -0.726265, 0.041006,
		-0.727318, -0.684047, 0.055581,
		17.879789, 22.917353, 17.874346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.170469, 23.381332, 17.626522>,  <18.388912, 23.396185, 17.835440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.170469, 23.381332, 17.626522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.175415, 23.750984, 17.473770>,  <19.178383, 23.972775, 17.382120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.175415, 23.750984, 17.473770>,  <19.170469, 23.381332, 17.626522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.175415, 23.750984, 17.473770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064156, 0.380387, 0.922599,
		0.997863, -0.035907, -0.054585,
		0.012364, 0.924130, -0.381878,
		19.179125, 24.028223, 17.359207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.680914, 23.653463, 17.937088>,  <19.170469, 23.381332, 17.626522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.680914, 23.653463, 17.937088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.424244, 23.942192, 17.833378>,  <19.270241, 24.115429, 17.771151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.424244, 23.942192, 17.833378>,  <19.680914, 23.653463, 17.937088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.424244, 23.942192, 17.833378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173894, 0.466169, 0.867437,
		0.747001, 0.511528, -0.424651,
		-0.641677, 0.721821, -0.259277,
		19.231741, 24.158739, 17.755594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.006247, 24.217606, 18.000734>,  <19.680914, 23.653463, 17.937088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.006247, 24.217606, 18.000734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.629662, 24.352184, 18.009201>,  <19.403709, 24.432932, 18.014280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.629662, 24.352184, 18.009201>,  <20.006247, 24.217606, 18.000734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.629662, 24.352184, 18.009201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174718, 0.433278, 0.884163,
		0.288303, 0.836106, -0.466699,
		-0.941464, 0.336448, 0.021167,
		19.347221, 24.453119, 18.015551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.053608, 24.842375, 18.373079>,  <20.006247, 24.217606, 18.000734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.053608, 24.842375, 18.373079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.661850, 24.761631, 18.375551>,  <19.426796, 24.713184, 18.377035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.661850, 24.761631, 18.375551>,  <20.053608, 24.842375, 18.373079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.661850, 24.761631, 18.375551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033506, 0.192600, 0.980705,
		-0.199153, 0.960291, -0.195395,
		-0.979395, -0.201857, 0.006182,
		19.368031, 24.701075, 18.377405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.668882, 25.434490, 18.681055>,  <20.053608, 24.842375, 18.373079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.668882, 25.434490, 18.681055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.415230, 25.128956, 18.729109>,  <19.263039, 24.945635, 18.757940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.415230, 25.128956, 18.729109>,  <19.668882, 25.434490, 18.681055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.415230, 25.128956, 18.729109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135756, 0.262939, 0.955214,
		-0.761214, 0.589423, -0.270433,
		-0.634132, -0.763835, 0.120135,
		19.224991, 24.899805, 18.765150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.031033, 25.667931, 19.030575>,  <19.668882, 25.434490, 18.681055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.031033, 25.667931, 19.030575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.067348, 25.274860, 19.095203>,  <19.089138, 25.039019, 19.133980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.067348, 25.274860, 19.095203>,  <19.031033, 25.667931, 19.030575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.067348, 25.274860, 19.095203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145296, 0.147433, 0.978342,
		-0.985214, -0.112297, -0.129394,
		0.090788, -0.982677, 0.161569,
		19.094585, 24.980057, 19.143675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.452614, 25.495478, 19.401888>,  <19.031033, 25.667931, 19.030575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.452614, 25.495478, 19.401888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.706852, 25.197437, 19.482725>,  <18.859394, 25.018612, 19.531227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.706852, 25.197437, 19.482725>,  <18.452614, 25.495478, 19.401888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.706852, 25.197437, 19.482725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084179, 0.193324, 0.977517,
		-0.767420, -0.638317, 0.060154,
		0.635595, -0.745102, 0.202093,
		18.897530, 24.973907, 19.543352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.299261, 25.437677, 20.010841>,  <18.452614, 25.495478, 19.401888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.299261, 25.437677, 20.010841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.622868, 25.205299, 19.975069>,  <18.817032, 25.065872, 19.953606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.622868, 25.205299, 19.975069>,  <18.299261, 25.437677, 20.010841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.622868, 25.205299, 19.975069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151530, 0.059124, 0.986683,
		-0.567921, -0.811793, 0.135863,
		0.809015, -0.580945, -0.089433,
		18.865572, 25.031015, 19.948238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.316683, 25.053263, 20.621326>,  <18.299261, 25.437677, 20.010841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.316683, 25.053263, 20.621326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.696461, 25.032516, 20.497480>,  <18.924328, 25.020069, 20.423174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.696461, 25.032516, 20.497480>,  <18.316683, 25.053263, 20.621326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.696461, 25.032516, 20.497480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312943, 0.078312, 0.946538,
		-0.024850, -0.995579, 0.090585,
		0.949447, -0.051869, -0.309613,
		18.981295, 25.016956, 20.404596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.639482, 24.475748, 20.996086>,  <18.316683, 25.053263, 20.621326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.639482, 24.475748, 20.996086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.883087, 24.763222, 20.861864>,  <19.029251, 24.935705, 20.781330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.883087, 24.763222, 20.861864>,  <18.639482, 24.475748, 20.996086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.883087, 24.763222, 20.861864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443803, 0.041869, 0.895146,
		0.657375, -0.694077, -0.293454,
		0.609013, 0.718682, -0.335557,
		19.065792, 24.978827, 20.761196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.204006, 24.410383, 21.361616>,  <18.639482, 24.475748, 20.996086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.204006, 24.410383, 21.361616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.267765, 24.779606, 21.221581>,  <19.306021, 25.001139, 21.137560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.267765, 24.779606, 21.221581>,  <19.204006, 24.410383, 21.361616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.267765, 24.779606, 21.221581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460806, 0.244053, 0.853285,
		0.873069, -0.297333, -0.386449,
		0.159396, 0.923055, -0.350088,
		19.315584, 25.056522, 21.116554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.864653, 24.533007, 21.536436>,  <19.204006, 24.410383, 21.361616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.864653, 24.533007, 21.536436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.684971, 24.885979, 21.480539>,  <19.577162, 25.097763, 21.447001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.684971, 24.885979, 21.480539>,  <19.864653, 24.533007, 21.536436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.684971, 24.885979, 21.480539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322106, 0.305850, 0.895937,
		0.833344, 0.357448, -0.421627,
		-0.449206, 0.882432, -0.139742,
		19.550209, 25.150709, 21.438616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.265928, 25.046722, 21.716784>,  <19.864653, 24.533007, 21.536436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.265928, 25.046722, 21.716784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.927990, 25.259792, 21.736780>,  <19.725227, 25.387634, 21.748777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.927990, 25.259792, 21.736780>,  <20.265928, 25.046722, 21.716784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.927990, 25.259792, 21.736780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363405, 0.502771, 0.784320,
		0.392653, 0.680794, -0.618339,
		-0.844844, 0.532673, 0.049989,
		19.674538, 25.419594, 21.751778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.508068, 25.724388, 21.828390>,  <20.265928, 25.046722, 21.716784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.508068, 25.724388, 21.828390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.136192, 25.674397, 21.966988>,  <19.913067, 25.644402, 22.050146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.136192, 25.674397, 21.966988>,  <20.508068, 25.724388, 21.828390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.136192, 25.674397, 21.966988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279488, 0.373369, 0.884580,
		-0.239921, 0.919226, -0.312188,
		-0.929690, -0.124977, 0.346492,
		19.857285, 25.636904, 22.070934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.034273, 25.415749, 21.339046>,  <20.508068, 25.724388, 21.828390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.034273, 25.415749, 21.339046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.196247, 25.101448, 21.526073>,  <21.293432, 24.912868, 21.638290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.196247, 25.101448, 21.526073>,  <21.034273, 25.415749, 21.339046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.196247, 25.101448, 21.526073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296159, -0.371090, -0.880103,
		0.865053, 0.494860, 0.082440,
		0.404935, -0.785752, 0.467570,
		21.317728, 24.865723, 21.666344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.665897, 25.405699, 21.039423>,  <21.034273, 25.415749, 21.339046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.665897, 25.405699, 21.039423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.576012, 25.048195, 21.194702>,  <21.522081, 24.833693, 21.287868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.576012, 25.048195, 21.194702>,  <21.665897, 25.405699, 21.039423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.576012, 25.048195, 21.194702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374320, -0.446995, -0.812453,
		0.899661, -0.037259, 0.434997,
		-0.224713, -0.893760, 0.388197,
		21.508598, 24.780067, 21.311161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.317217, 24.954941, 20.964291>,  <21.665897, 25.405699, 21.039423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.317217, 24.954941, 20.964291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.987564, 24.729359, 20.985312>,  <21.789772, 24.594009, 20.997925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.987564, 24.729359, 20.985312>,  <22.317217, 24.954941, 20.964291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.987564, 24.729359, 20.985312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288706, -0.498093, -0.817650,
		0.487293, -0.658680, 0.573311,
		-0.824133, -0.563953, 0.052552,
		21.740324, 24.560173, 21.001078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.482111, 24.217274, 20.969110>,  <22.317217, 24.954941, 20.964291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.482111, 24.217274, 20.969110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.108829, 24.242500, 20.827600>,  <21.884861, 24.257637, 20.742695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.108829, 24.242500, 20.827600>,  <22.482111, 24.217274, 20.969110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.108829, 24.242500, 20.827600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246848, -0.602948, -0.758630,
		-0.261154, -0.795284, 0.547104,
		-0.933202, 0.063068, -0.353776,
		21.828869, 24.261421, 20.721468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.503050, 23.720501, 20.505913>,  <22.482111, 24.217274, 20.969110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.503050, 23.720501, 20.505913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.171371, 23.920052, 20.405075>,  <21.972364, 24.039782, 20.344572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.171371, 23.920052, 20.405075>,  <22.503050, 23.720501, 20.505913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.171371, 23.920052, 20.405075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009672, -0.438134, -0.898857,
		-0.558873, -0.747768, 0.358475,
		-0.829197, 0.498880, -0.252094,
		21.922611, 24.069715, 20.329447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.956060, 23.174074, 20.404854>,  <22.503050, 23.720501, 20.505913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.956060, 23.174074, 20.404854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.858681, 23.513046, 20.216133>,  <21.800253, 23.716429, 20.102901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.858681, 23.513046, 20.216133>,  <21.956060, 23.174074, 20.404854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.858681, 23.513046, 20.216133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055311, -0.497776, -0.865541,
		-0.968335, -0.184619, 0.168056,
		-0.243449, 0.847428, -0.471802,
		21.785646, 23.767275, 20.074593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.287159, 23.024618, 19.833715>,  <21.956060, 23.174074, 20.404854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.287159, 23.024618, 19.833715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.487549, 23.356632, 19.735683>,  <21.607782, 23.555841, 19.676865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.487549, 23.356632, 19.735683>,  <21.287159, 23.024618, 19.833715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.487549, 23.356632, 19.735683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027973, -0.298560, -0.953981,
		-0.865009, 0.471066, -0.172791,
		0.500976, 0.830035, -0.245080,
		21.637842, 23.605642, 19.662159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.636049, 22.594030, 19.786104>,  <21.287159, 23.024618, 19.833715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.636049, 22.594030, 19.786104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.889305, 22.306004, 19.899691>,  <21.041258, 22.133186, 19.967842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.889305, 22.306004, 19.899691>,  <20.636049, 22.594030, 19.786104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.889305, 22.306004, 19.899691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267487, 0.140719, 0.953231,
		-0.726352, -0.679484, -0.103514,
		0.633139, -0.720070, 0.283965,
		21.079247, 22.089983, 19.984880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.247196, 22.166405, 20.206667>,  <20.636049, 22.594030, 19.786104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.247196, 22.166405, 20.206667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.624554, 22.090298, 20.315334>,  <20.850969, 22.044634, 20.380535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.624554, 22.090298, 20.315334>,  <20.247196, 22.166405, 20.206667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.624554, 22.090298, 20.315334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287629, -0.061460, 0.955768,
		-0.165159, -0.979806, -0.112708,
		0.943394, -0.190272, 0.271669,
		20.907572, 22.033216, 20.396835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.094021, 21.665110, 20.723967>,  <20.247196, 22.166405, 20.206667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.094021, 21.665110, 20.723967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.472725, 21.789211, 20.758339>,  <20.699947, 21.863672, 20.778963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.472725, 21.789211, 20.758339>,  <20.094021, 21.665110, 20.723967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.472725, 21.789211, 20.758339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020654, -0.324906, 0.945521,
		0.321273, -0.893408, -0.314017,
		0.946761, 0.310256, 0.085931,
		20.756754, 21.882288, 20.784119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.510416, 21.130117, 20.973801>,  <20.094021, 21.665110, 20.723967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.510416, 21.130117, 20.973801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.677917, 21.478958, 21.075058>,  <20.778418, 21.688263, 21.135813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.677917, 21.478958, 21.075058>,  <20.510416, 21.130117, 20.973801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.677917, 21.478958, 21.075058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149326, -0.341098, 0.928092,
		0.895739, -0.350839, -0.273063,
		0.418752, 0.872103, 0.253145,
		20.803543, 21.740589, 21.151001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.026375, 20.948669, 21.493166>,  <20.510416, 21.130117, 20.973801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.026375, 20.948669, 21.493166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.983795, 21.344849, 21.528219>,  <20.958246, 21.582556, 21.549252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.983795, 21.344849, 21.528219>,  <21.026375, 20.948669, 21.493166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.983795, 21.344849, 21.528219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258880, -0.057487, 0.964197,
		0.960026, 0.125326, -0.250288,
		-0.106451, 0.990449, 0.087634,
		20.951860, 21.641983, 21.554510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.597132, 21.192551, 21.887411>,  <21.026375, 20.948669, 21.493166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.597132, 21.192551, 21.887411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.323505, 21.483383, 21.910763>,  <21.159330, 21.657883, 21.924774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.323505, 21.483383, 21.910763>,  <21.597132, 21.192551, 21.887411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.323505, 21.483383, 21.910763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341575, 0.248588, 0.906383,
		0.644502, 0.639965, -0.418404,
		-0.684064, 0.727082, 0.058380,
		21.118286, 21.701508, 21.928276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.892262, 21.683966, 22.248718>,  <21.597132, 21.192551, 21.887411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.892262, 21.683966, 22.248718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.503273, 21.768162, 22.288712>,  <21.269880, 21.818680, 22.312708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.503273, 21.768162, 22.288712>,  <21.892262, 21.683966, 22.248718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.503273, 21.768162, 22.288712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116613, 0.068098, 0.990840,
		0.201753, 0.975221, -0.090769,
		-0.972470, 0.210490, 0.099984,
		21.211533, 21.831308, 22.318707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.806522, 22.274858, 22.580814>,  <21.892262, 21.683966, 22.248718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.806522, 22.274858, 22.580814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.430202, 22.146534, 22.624592>,  <21.204411, 22.069540, 22.650858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.430202, 22.146534, 22.624592>,  <21.806522, 22.274858, 22.580814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.430202, 22.146534, 22.624592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085765, 0.087072, 0.992503,
		-0.327935, 0.943132, -0.054403,
		-0.940799, -0.320811, 0.109442,
		21.147963, 22.050291, 22.657425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.455250, 22.725416, 22.970257>,  <21.806522, 22.274858, 22.580814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.455250, 22.725416, 22.970257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.257893, 22.383907, 23.036758>,  <21.139479, 22.179003, 23.076660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.257893, 22.383907, 23.036758>,  <21.455250, 22.725416, 22.970257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.257893, 22.383907, 23.036758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136502, 0.264772, 0.954601,
		-0.859030, 0.448298, -0.247177,
		-0.493391, -0.853771, 0.166254,
		21.109875, 22.127775, 23.086634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<20.962994, 18.186979, 7.735735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.687355, 18.098461, 8.011756>,  <20.521971, 18.045351, 8.177369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.687355, 18.098461, 8.011756>,  <20.962994, 18.186979, 7.735735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.687355, 18.098461, 8.011756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683023, 0.119819, 0.720502,
		-0.242125, 0.967818, 0.068582,
		-0.689098, -0.221295, 0.690053,
		20.480625, 18.032072, 8.218772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.055391, 18.697262, 8.368453>,  <20.962994, 18.186979, 7.735735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.055391, 18.697262, 8.368453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.864979, 18.377831, 8.515786>,  <20.750731, 18.186172, 8.604186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.864979, 18.377831, 8.515786>,  <21.055391, 18.697262, 8.368453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.864979, 18.377831, 8.515786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484130, 0.111690, 0.867839,
		-0.734174, 0.591440, 0.333446,
		-0.476032, -0.798576, 0.368334,
		20.722170, 18.138258, 8.626287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.706560, 18.900225, 9.043180>,  <21.055391, 18.697262, 8.368453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.706560, 18.900225, 9.043180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.762634, 18.505177, 9.015029>,  <20.796278, 18.268148, 8.998138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.762634, 18.505177, 9.015029>,  <20.706560, 18.900225, 9.043180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.762634, 18.505177, 9.015029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558746, 0.020228, 0.829092,
		-0.817405, -0.155551, 0.554665,
		0.140186, -0.987621, -0.070379,
		20.804689, 18.208891, 8.993916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.650490, 18.691494, 9.755632>,  <20.706560, 18.900225, 9.043180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.650490, 18.691494, 9.755632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.839008, 18.391220, 9.570438>,  <20.952120, 18.211056, 9.459322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.839008, 18.391220, 9.570438>,  <20.650490, 18.691494, 9.755632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.839008, 18.391220, 9.570438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605264, -0.106534, 0.788863,
		-0.641510, -0.652016, 0.404153,
		0.471296, -0.750683, -0.462985,
		20.980396, 18.166016, 9.431543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.625919, 18.180407, 10.252625>,  <20.650490, 18.691494, 9.755632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.625919, 18.180407, 10.252625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.913677, 18.114151, 9.982801>,  <21.086332, 18.074398, 9.820907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.913677, 18.114151, 9.982801>,  <20.625919, 18.180407, 10.252625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.913677, 18.114151, 9.982801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673294, -0.072395, 0.735822,
		-0.170717, -0.983525, 0.059445,
		0.719396, -0.165641, -0.674561,
		21.129496, 18.064459, 9.780434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.017242, 17.613188, 10.534958>,  <20.625919, 18.180407, 10.252625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.017242, 17.613188, 10.534958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.269409, 17.780071, 10.273114>,  <21.420710, 17.880201, 10.116008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.269409, 17.780071, 10.273114>,  <21.017242, 17.613188, 10.534958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.269409, 17.780071, 10.273114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689312, 0.086919, 0.719231,
		0.356968, -0.904644, -0.232793,
		0.630414, 0.417210, -0.654610,
		21.458534, 17.905233, 10.076732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.687382, 17.421041, 10.725657>,  <21.017242, 17.613188, 10.534958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.687382, 17.421041, 10.725657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.777161, 17.732529, 10.491318>,  <21.831028, 17.919422, 10.350714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.777161, 17.732529, 10.491318>,  <21.687382, 17.421041, 10.725657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.777161, 17.732529, 10.491318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652798, 0.326209, 0.683698,
		0.723518, -0.535895, -0.435130,
		0.224446, 0.778720, -0.585849,
		21.844494, 17.966145, 10.315563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.398964, 17.442749, 10.770923>,  <21.687382, 17.421041, 10.725657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.398964, 17.442749, 10.770923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.284924, 17.810104, 10.661173>,  <22.216499, 18.030518, 10.595323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.284924, 17.810104, 10.661173>,  <22.398964, 17.442749, 10.770923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.284924, 17.810104, 10.661173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652692, 0.395648, 0.646108,
		0.701933, 0.005124, -0.712224,
		-0.285101, 0.918388, -0.274374,
		22.199394, 18.085621, 10.578860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.039930, 17.820387, 10.842060>,  <22.398964, 17.442749, 10.770923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.039930, 17.820387, 10.842060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.734543, 18.078384, 10.828809>,  <22.551310, 18.233183, 10.820858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.734543, 18.078384, 10.828809>,  <23.039930, 17.820387, 10.842060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.734543, 18.078384, 10.828809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377962, 0.487804, 0.786887,
		0.523698, 0.588243, -0.616207,
		-0.763469, 0.644994, -0.033128,
		22.505503, 18.271883, 10.818871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.341516, 18.241114, 11.155273>,  <23.039930, 17.820387, 10.842060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.341516, 18.241114, 11.155273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.970493, 18.390038, 11.142481>,  <22.747879, 18.479391, 11.134805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.970493, 18.390038, 11.142481>,  <23.341516, 18.241114, 11.155273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.970493, 18.390038, 11.142481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153972, 0.458777, 0.875109,
		0.340483, 0.806790, -0.482868,
		-0.927558, 0.372308, -0.031982,
		22.692226, 18.501730, 11.132886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.309669, 19.003067, 11.400141>,  <23.341516, 18.241114, 11.155273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.309669, 19.003067, 11.400141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.946503, 18.848213, 11.464409>,  <22.728603, 18.755301, 11.502970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.946503, 18.848213, 11.464409>,  <23.309669, 19.003067, 11.400141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.946503, 18.848213, 11.464409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034414, 0.313181, 0.949070,
		-0.417739, 0.867204, -0.271019,
		-0.907915, -0.387137, 0.160671,
		22.674128, 18.732073, 11.512610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.847534, 19.632038, 11.640617>,  <23.309669, 19.003067, 11.400141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.847534, 19.632038, 11.640617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.704033, 19.273659, 11.745361>,  <22.617933, 19.058630, 11.808208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.704033, 19.273659, 11.745361>,  <22.847534, 19.632038, 11.640617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.704033, 19.273659, 11.745361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024500, 0.289476, 0.956872,
		-0.933111, 0.336863, -0.125801,
		-0.358751, -0.895950, 0.261860,
		22.596407, 19.004873, 11.823919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.791479, 20.303745, 11.648355>,  <22.847534, 19.632038, 11.640617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.791479, 20.303745, 11.648355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.149399, 20.479099, 11.682189>,  <23.364151, 20.584312, 11.702489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.149399, 20.479099, 11.682189>,  <22.791479, 20.303745, 11.648355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.149399, 20.479099, 11.682189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138966, -0.093428, -0.985880,
		-0.424292, 0.893918, -0.144520,
		0.894799, 0.438385, 0.084583,
		23.417839, 20.610615, 11.707564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.781096, 20.840080, 11.213281>,  <22.791479, 20.303745, 11.648355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.781096, 20.840080, 11.213281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.172859, 20.780476, 11.267770>,  <23.407917, 20.744713, 11.300463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.172859, 20.780476, 11.267770>,  <22.781096, 20.840080, 11.213281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.172859, 20.780476, 11.267770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110599, -0.168479, -0.979481,
		0.168903, 0.974377, -0.148529,
		0.979408, -0.149010, 0.136222,
		23.466682, 20.735773, 11.308637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.091658, 21.236137, 10.665519>,  <22.781096, 20.840080, 11.213281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.091658, 21.236137, 10.665519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.372902, 20.982441, 10.794126>,  <23.541649, 20.830223, 10.871290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.372902, 20.982441, 10.794126>,  <23.091658, 21.236137, 10.665519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.372902, 20.982441, 10.794126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263884, -0.187135, -0.946227,
		0.660302, 0.750147, 0.035789,
		0.703112, -0.634240, 0.321517,
		23.583836, 20.792170, 10.890581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.830307, 21.428881, 10.480100>,  <23.091658, 21.236137, 10.665519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.830307, 21.428881, 10.480100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.844002, 21.031700, 10.525484>,  <23.852219, 20.793392, 10.552714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.844002, 21.031700, 10.525484>,  <23.830307, 21.428881, 10.480100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.844002, 21.031700, 10.525484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376319, -0.092363, -0.921875,
		0.925858, 0.074260, 0.370504,
		0.034238, -0.992953, 0.113460,
		23.854273, 20.733814, 10.559522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.270956, 21.223743, 10.009495>,  <23.830307, 21.428881, 10.480100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.270956, 21.223743, 10.009495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.085400, 20.879444, 10.093324>,  <23.974066, 20.672865, 10.143621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.085400, 20.879444, 10.093324>,  <24.270956, 21.223743, 10.009495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.085400, 20.879444, 10.093324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176589, -0.321664, -0.930241,
		0.868115, -0.394520, 0.301215,
		-0.463889, -0.860747, 0.209573,
		23.946234, 20.621220, 10.156196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.678093, 20.750000, 9.676176>,  <24.270956, 21.223743, 10.009495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.678093, 20.750000, 9.676176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.329880, 20.564613, 9.742353>,  <24.120953, 20.453381, 9.782060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.329880, 20.564613, 9.742353>,  <24.678093, 20.750000, 9.676176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.329880, 20.564613, 9.742353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038723, -0.270637, -0.961902,
		0.490586, -0.843773, 0.217652,
		-0.870532, -0.463467, 0.165445,
		24.068720, 20.425573, 9.791986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.682463, 20.165426, 9.280861>,  <24.678093, 20.750000, 9.676176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.682463, 20.165426, 9.280861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.285583, 20.193310, 9.322213>,  <24.047457, 20.210039, 9.347025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.285583, 20.193310, 9.322213>,  <24.682463, 20.165426, 9.280861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.285583, 20.193310, 9.322213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124594, -0.522221, -0.843660,
		-0.004822, -0.849957, 0.526830,
		-0.992196, 0.069708, 0.103381,
		23.987925, 20.214222, 9.353228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.397234, 19.437971, 9.056259>,  <24.682463, 20.165426, 9.280861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.397234, 19.437971, 9.056259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.103992, 19.710007, 9.053885>,  <23.928047, 19.873228, 9.052460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.103992, 19.710007, 9.053885>,  <24.397234, 19.437971, 9.056259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.103992, 19.710007, 9.053885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358885, -0.394244, -0.846034,
		-0.577721, -0.618100, 0.533096,
		-0.733103, 0.680091, -0.005936,
		23.884062, 19.914034, 9.052104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.870605, 19.045185, 8.941941>,  <24.397234, 19.437971, 9.056259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.870605, 19.045185, 8.941941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.734417, 19.409321, 8.847824>,  <23.652704, 19.627802, 8.791354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.734417, 19.409321, 8.847824>,  <23.870605, 19.045185, 8.941941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.734417, 19.409321, 8.847824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512003, -0.389388, -0.765657,
		-0.788628, -0.140213, 0.598671,
		-0.340470, 0.910339, -0.235293,
		23.632277, 19.682423, 8.777236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.228403, 18.852335, 8.819469>,  <23.870605, 19.045185, 8.941941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.228403, 18.852335, 8.819469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.292934, 19.207260, 8.646656>,  <23.331654, 19.420216, 8.542968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.292934, 19.207260, 8.646656>,  <23.228403, 18.852335, 8.819469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.292934, 19.207260, 8.646656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716816, -0.195545, -0.669282,
		-0.678343, 0.417662, 0.604491,
		0.161328, 0.887311, -0.432033,
		23.341333, 19.473454, 8.517046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.517363, 19.172916, 8.778274>,  <23.228403, 18.852335, 8.819469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.517363, 19.172916, 8.778274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.749252, 19.358284, 8.510195>,  <22.888386, 19.469503, 8.349347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.749252, 19.358284, 8.510195>,  <22.517363, 19.172916, 8.778274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.749252, 19.358284, 8.510195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696264, -0.145506, -0.702883,
		-0.423246, 0.874112, 0.238308,
		0.579723, 0.463418, -0.670198,
		22.923170, 19.497309, 8.309135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.154264, 19.749601, 8.478659>,  <22.517363, 19.172916, 8.778274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.154264, 19.749601, 8.478659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.451496, 19.664818, 8.224758>,  <22.629835, 19.613947, 8.072418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.451496, 19.664818, 8.224758>,  <22.154264, 19.749601, 8.478659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.451496, 19.664818, 8.224758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667856, -0.174683, -0.723501,
		0.042473, 0.961539, -0.271363,
		0.743077, -0.211961, -0.634751,
		22.674419, 19.601229, 8.034333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.938307, 20.121786, 7.832171>,  <22.154264, 19.749601, 8.478659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.938307, 20.121786, 7.832171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.214973, 19.861977, 7.705862>,  <22.380974, 19.706091, 7.630076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.214973, 19.861977, 7.705862>,  <21.938307, 20.121786, 7.832171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.214973, 19.861977, 7.705862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553517, -0.195899, -0.809471,
		0.463912, 0.734671, -0.495020,
		0.691668, -0.649525, -0.315773,
		22.422474, 19.667120, 7.611130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.920975, 20.197109, 7.142982>,  <21.938307, 20.121786, 7.832171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.920975, 20.197109, 7.142982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.103912, 19.848602, 7.214233>,  <22.213675, 19.639498, 7.256984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.103912, 19.848602, 7.214233>,  <21.920975, 20.197109, 7.142982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.103912, 19.848602, 7.214233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505925, -0.419644, -0.753617,
		0.731352, 0.254544, -0.632718,
		0.457345, -0.871267, 0.178128,
		22.241116, 19.587223, 7.267672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.334503, 20.446190, 7.028384>,  <21.920975, 20.197109, 7.142982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.334503, 20.446190, 7.028384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.998840, 20.663097, 7.011627>,  <20.797441, 20.793242, 7.001574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.998840, 20.663097, 7.011627>,  <21.334503, 20.446190, 7.028384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.998840, 20.663097, 7.011627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243595, 0.443590, 0.862490,
		0.486285, 0.713562, -0.504337,
		-0.839159, 0.542270, -0.041891,
		20.747093, 20.825779, 6.999060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.460272, 21.238323, 7.051041>,  <21.334503, 20.446190, 7.028384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.460272, 21.238323, 7.051041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.110603, 21.140072, 7.218606>,  <20.900803, 21.081121, 7.319145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.110603, 21.140072, 7.218606>,  <21.460272, 21.238323, 7.051041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.110603, 21.140072, 7.218606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254316, 0.503329, 0.825822,
		-0.413696, 0.828448, -0.377530,
		-0.874173, -0.245627, 0.418913,
		20.848351, 21.066383, 7.344280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.135798, 21.807474, 7.411128>,  <21.460272, 21.238323, 7.051041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.135798, 21.807474, 7.411128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.974121, 21.490925, 7.594587>,  <20.877115, 21.300995, 7.704663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.974121, 21.490925, 7.594587>,  <21.135798, 21.807474, 7.411128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.974121, 21.490925, 7.594587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015256, 0.495532, 0.868456,
		-0.914548, 0.358019, -0.188217,
		-0.404191, -0.791373, 0.458649,
		20.852863, 21.253513, 7.732182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.750719, 22.102325, 7.893054>,  <21.135798, 21.807474, 7.411128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.750719, 22.102325, 7.893054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.802147, 21.725739, 8.017706>,  <20.833004, 21.499786, 8.092497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.802147, 21.725739, 8.017706>,  <20.750719, 22.102325, 7.893054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.802147, 21.725739, 8.017706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189134, 0.285190, 0.939625,
		-0.973498, -0.179745, -0.141397,
		0.128568, -0.941466, 0.311628,
		20.840717, 21.443298, 8.111195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.044130, 21.945543, 8.145487>,  <20.750719, 22.102325, 7.893054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.044130, 21.945543, 8.145487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.343151, 21.739056, 8.312666>,  <20.522564, 21.615164, 8.412973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.343151, 21.739056, 8.312666>,  <20.044130, 21.945543, 8.145487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.343151, 21.739056, 8.312666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223553, 0.396987, 0.890183,
		-0.625450, -0.758893, 0.181366,
		0.747553, -0.516220, 0.417948,
		20.567417, 21.584190, 8.438050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.777136, 21.755581, 8.744627>,  <20.044130, 21.945543, 8.145487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.777136, 21.755581, 8.744627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.164577, 21.677834, 8.806628>,  <20.397043, 21.631186, 8.843829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.164577, 21.677834, 8.806628>,  <19.777136, 21.755581, 8.744627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.164577, 21.677834, 8.806628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066253, 0.399121, 0.914501,
		-0.239616, -0.896060, 0.373713,
		0.968604, -0.194370, 0.155003,
		20.455158, 21.619522, 8.853129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.772160, 21.468882, 9.359263>,  <19.777136, 21.755581, 8.744627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.772160, 21.468882, 9.359263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.152252, 21.576061, 9.295691>,  <20.380308, 21.640369, 9.257546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.152252, 21.576061, 9.295691>,  <19.772160, 21.468882, 9.359263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.152252, 21.576061, 9.295691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008890, 0.486621, 0.873568,
		0.311413, -0.831506, 0.460021,
		0.950233, 0.267951, -0.158933,
		20.437323, 21.656446, 9.248011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.036318, 21.330042, 9.954432>,  <19.772160, 21.468882, 9.359263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.036318, 21.330042, 9.954432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.302746, 21.579281, 9.790434>,  <20.462603, 21.728825, 9.692035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.302746, 21.579281, 9.790434>,  <20.036318, 21.330042, 9.954432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.302746, 21.579281, 9.790434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084356, 0.483219, 0.871426,
		0.741102, -0.615017, 0.269297,
		0.666072, 0.623099, -0.409995,
		20.502567, 21.766211, 9.667436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.555067, 21.344345, 10.512330>,  <20.036318, 21.330042, 9.954432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.555067, 21.344345, 10.512330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.567810, 21.683380, 10.300450>,  <20.575457, 21.886801, 10.173323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.567810, 21.683380, 10.300450>,  <20.555067, 21.344345, 10.512330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.567810, 21.683380, 10.300450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087485, 0.525569, 0.846241,
		0.995656, -0.073299, -0.057408,
		0.031857, 0.847588, -0.529699,
		20.577368, 21.937656, 10.141541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.078983, 21.681835, 10.808930>,  <20.555067, 21.344345, 10.512330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.078983, 21.681835, 10.808930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.863804, 21.963852, 10.624096>,  <20.734695, 22.133062, 10.513195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.863804, 21.963852, 10.624096>,  <21.078983, 21.681835, 10.808930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.863804, 21.963852, 10.624096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070783, 0.508445, 0.858180,
		0.839999, 0.494366, -0.223613,
		-0.537950, 0.705043, -0.462086,
		20.702419, 22.175365, 10.485470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.359201, 22.330553, 11.037908>,  <21.078983, 21.681835, 10.808930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.359201, 22.330553, 11.037908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.999794, 22.425095, 10.889960>,  <20.784149, 22.481819, 10.801191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.999794, 22.425095, 10.889960>,  <21.359201, 22.330553, 11.037908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.999794, 22.425095, 10.889960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206435, 0.516095, 0.831283,
		0.387363, 0.823276, -0.414929,
		-0.898518, 0.236352, -0.369869,
		20.730238, 22.496000, 10.778999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.233322, 23.075275, 11.148910>,  <21.359201, 22.330553, 11.037908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.233322, 23.075275, 11.148910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.869240, 22.925457, 11.078214>,  <20.650789, 22.835566, 11.035796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.869240, 22.925457, 11.078214>,  <21.233322, 23.075275, 11.148910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.869240, 22.925457, 11.078214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364503, 0.521878, 0.771220,
		-0.196623, 0.766392, -0.611541,
		-0.910207, -0.374548, -0.176739,
		20.596178, 22.813093, 11.025192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.805817, 23.661905, 11.166553>,  <21.233322, 23.075275, 11.148910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.805817, 23.661905, 11.166553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.572071, 23.344135, 11.232770>,  <20.431824, 23.153473, 11.272500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.572071, 23.344135, 11.232770>,  <20.805817, 23.661905, 11.166553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.572071, 23.344135, 11.232770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510191, 0.518306, 0.686341,
		-0.631049, 0.316616, -0.708189,
		-0.584365, -0.794426, 0.165541,
		20.396761, 23.105808, 11.282433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.076712, 23.981298, 11.169688>,  <20.805817, 23.661905, 11.166553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.076712, 23.981298, 11.169688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.071712, 23.625454, 11.352306>,  <20.068712, 23.411947, 11.461878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.071712, 23.625454, 11.352306>,  <20.076712, 23.981298, 11.169688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.071712, 23.625454, 11.352306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588859, 0.375559, 0.715682,
		-0.808139, -0.259896, -0.528550,
		-0.012499, -0.889612, 0.456546,
		20.067963, 23.358570, 11.489270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.382933, 23.955853, 11.353563>,  <20.076712, 23.981298, 11.169688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.382933, 23.955853, 11.353563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.558270, 23.686314, 11.591482>,  <19.663471, 23.524590, 11.734234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.558270, 23.686314, 11.591482>,  <19.382933, 23.955853, 11.353563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.558270, 23.686314, 11.591482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461489, 0.399138, 0.792285,
		-0.771287, -0.621786, -0.136014,
		0.438343, -0.673848, 0.594797,
		19.689772, 23.484159, 11.769921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.851627, 23.832977, 11.859123>,  <19.382933, 23.955853, 11.353563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.851627, 23.832977, 11.859123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.201534, 23.717014, 12.014421>,  <19.411478, 23.647436, 12.107601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.201534, 23.717014, 12.014421>,  <18.851627, 23.832977, 11.859123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.201534, 23.717014, 12.014421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292456, 0.322958, 0.900093,
		-0.386329, -0.900918, 0.197729,
		0.874768, -0.289905, 0.388247,
		19.463964, 23.630043, 12.130896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.727953, 23.388248, 12.386136>,  <18.851627, 23.832977, 11.859123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.727953, 23.388248, 12.386136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.088127, 23.553421, 12.440835>,  <19.304232, 23.652525, 12.473655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.088127, 23.553421, 12.440835>,  <18.727953, 23.388248, 12.386136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.088127, 23.553421, 12.440835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197417, 0.107807, 0.974374,
		0.387610, -0.904357, 0.178594,
		0.900436, 0.412935, 0.136748,
		19.358257, 23.677301, 12.481859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.840771, 23.116041, 13.044419>,  <18.727953, 23.388248, 12.386136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.840771, 23.116041, 13.044419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.126247, 23.391373, 12.992499>,  <19.297533, 23.556572, 12.961348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.126247, 23.391373, 12.992499>,  <18.840771, 23.116041, 13.044419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.126247, 23.391373, 12.992499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058835, 0.243560, 0.968099,
		0.697983, -0.683289, 0.214325,
		0.713693, 0.688327, -0.129799,
		19.340355, 23.597870, 12.953560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.410583, 22.883085, 13.486347>,  <18.840771, 23.116041, 13.044419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.410583, 22.883085, 13.486347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.434422, 23.279285, 13.436773>,  <19.448725, 23.517006, 13.407029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.434422, 23.279285, 13.436773>,  <19.410583, 22.883085, 13.486347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.434422, 23.279285, 13.436773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126459, 0.115663, 0.985206,
		0.990180, -0.074385, -0.118365,
		0.059594, 0.990499, -0.123934,
		19.452299, 23.576435, 13.399593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.990047, 23.115587, 13.990191>,  <19.410583, 22.883085, 13.486347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.990047, 23.115587, 13.990191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.857651, 23.476681, 13.880269>,  <19.778214, 23.693336, 13.814316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.857651, 23.476681, 13.880269>,  <19.990047, 23.115587, 13.990191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.857651, 23.476681, 13.880269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017051, 0.296893, 0.954759,
		0.943479, 0.311332, -0.113662,
		-0.330992, 0.902733, -0.274804,
		19.758352, 23.747501, 13.797828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.574791, 23.674816, 14.197523>,  <19.990047, 23.115587, 13.990191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.574791, 23.674816, 14.197523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.199738, 23.813461, 14.186954>,  <19.974705, 23.896648, 14.180612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.199738, 23.813461, 14.186954>,  <20.574791, 23.674816, 14.197523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.199738, 23.813461, 14.186954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060383, 0.237255, 0.969569,
		0.342335, 0.907507, -0.243388,
		-0.937636, 0.346613, -0.026423,
		19.918447, 23.917446, 14.179027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.578602, 24.314363, 14.622973>,  <20.574791, 23.674816, 14.197523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.578602, 24.314363, 14.622973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.193516, 24.214657, 14.580937>,  <19.962463, 24.154833, 14.555716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.193516, 24.214657, 14.580937>,  <20.578602, 24.314363, 14.622973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.193516, 24.214657, 14.580937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154204, 0.186494, 0.970279,
		-0.222259, 0.950309, -0.217979,
		-0.962716, -0.249266, -0.105091,
		19.904701, 24.139877, 14.549410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.195383, 24.882298, 14.927425>,  <20.578602, 24.314363, 14.622973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.195383, 24.882298, 14.927425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.985069, 24.542587, 14.946515>,  <19.858881, 24.338760, 14.957969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.985069, 24.542587, 14.946515>,  <20.195383, 24.882298, 14.927425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.985069, 24.542587, 14.946515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172310, 0.161284, 0.971749,
		-0.832981, 0.502709, -0.231139,
		-0.525786, -0.849277, 0.047725,
		19.827333, 24.287804, 14.960833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.561611, 25.018742, 15.354784>,  <20.195383, 24.882298, 14.927425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.561611, 25.018742, 15.354784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.491024, 24.625874, 15.328856>,  <19.448671, 24.390152, 15.313300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.491024, 24.625874, 15.328856>,  <19.561611, 25.018742, 15.354784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.491024, 24.625874, 15.328856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378087, 0.006835, 0.925745,
		-0.908796, 0.187870, -0.372552,
		-0.176466, -0.982170, -0.064820,
		19.438084, 24.331223, 15.309411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.788763, 24.821938, 15.504800>,  <19.561611, 25.018742, 15.354784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.788763, 24.821938, 15.504800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.022083, 24.507072, 15.584937>,  <19.162075, 24.318153, 15.633019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.022083, 24.507072, 15.584937>,  <18.788763, 24.821938, 15.504800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.022083, 24.507072, 15.584937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249977, 0.060711, 0.966346,
		-0.772834, -0.613751, -0.161360,
		0.583300, -0.787162, 0.200343,
		19.197073, 24.270924, 15.645040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.312260, 24.380365, 15.889674>,  <18.788763, 24.821938, 15.504800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.312260, 24.380365, 15.889674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.683125, 24.257473, 15.975448>,  <18.905643, 24.183739, 16.026911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.683125, 24.257473, 15.975448>,  <18.312260, 24.380365, 15.889674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.683125, 24.257473, 15.975448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221812, 0.011138, 0.975026,
		-0.301947, -0.951570, -0.057821,
		0.927161, -0.307231, 0.214433,
		18.961273, 24.165304, 16.039778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.184940, 23.936499, 16.539499>,  <18.312260, 24.380365, 15.889674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.184940, 23.936499, 16.539499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.581894, 23.985775, 16.538799>,  <18.820066, 24.015341, 16.538380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.581894, 23.985775, 16.538799>,  <18.184940, 23.936499, 16.539499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.581894, 23.985775, 16.538799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006107, 0.063383, 0.997971,
		0.123054, -0.990356, 0.063653,
		0.992381, 0.123193, -0.001752,
		18.879608, 24.022732, 16.538275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.540667, 23.372227, 16.924789>,  <18.184940, 23.936499, 16.539499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.540667, 23.372227, 16.924789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.770042, 23.699856, 16.917995>,  <18.907669, 23.896433, 16.913919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.770042, 23.699856, 16.917995>,  <18.540667, 23.372227, 16.924789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.770042, 23.699856, 16.917995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010895, 0.028355, 0.999539,
		0.819174, -0.572991, 0.025183,
		0.573441, 0.819071, -0.016985,
		18.942076, 23.945578, 16.912899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.606215, 22.750120, 17.362835>,  <18.540667, 23.372227, 16.924789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.606215, 22.750120, 17.362835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.222832, 22.653435, 17.423412>,  <17.992802, 22.595423, 17.459759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.222832, 22.653435, 17.423412>,  <18.606215, 22.750120, 17.362835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.222832, 22.653435, 17.423412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124853, -0.121865, -0.984663,
		0.256464, -0.962665, 0.086623,
		-0.958456, -0.241715, 0.151445,
		17.935295, 22.580921, 17.468845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.466635, 22.076752, 17.036209>,  <18.606215, 22.750120, 17.362835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.466635, 22.076752, 17.036209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.120449, 22.277119, 17.039139>,  <17.912737, 22.397339, 17.040897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.120449, 22.277119, 17.039139>,  <18.466635, 22.076752, 17.036209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.120449, 22.277119, 17.039139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100922, -0.160007, -0.981943,
		-0.490701, -0.850576, 0.189034,
		-0.865464, 0.500918, 0.007326,
		17.860809, 22.427393, 17.041336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.856089, 21.565981, 16.792740>,  <18.466635, 22.076752, 17.036209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.856089, 21.565981, 16.792740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.727509, 21.940823, 16.738327>,  <17.650360, 22.165728, 16.705679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.727509, 21.940823, 16.738327>,  <17.856089, 21.565981, 16.792740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.727509, 21.940823, 16.738327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176191, -0.200337, -0.963754,
		-0.930390, -0.285833, 0.229508,
		-0.321451, 0.937104, -0.136031,
		17.631073, 22.221954, 16.697517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.324646, 21.478218, 16.364201>,  <17.856089, 21.565981, 16.792740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.324646, 21.478218, 16.364201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.429146, 21.863758, 16.343250>,  <17.491846, 22.095081, 16.330681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.429146, 21.863758, 16.343250>,  <17.324646, 21.478218, 16.364201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.429146, 21.863758, 16.343250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143436, -0.014894, -0.989547,
		-0.954554, 0.266033, 0.134359,
		0.261251, 0.963849, -0.052376,
		17.507521, 22.152912, 16.327538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.692839, 21.825439, 16.195801>,  <17.324646, 21.478218, 16.364201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.692839, 21.825439, 16.195801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.962547, 22.103260, 16.095436>,  <17.124372, 22.269953, 16.035217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.962547, 22.103260, 16.095436>,  <16.692839, 21.825439, 16.195801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.962547, 22.103260, 16.095436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365228, 0.018331, -0.930738,
		-0.641844, 0.719211, 0.266029,
		0.674273, 0.694550, -0.250910,
		17.164829, 22.311625, 16.020163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
