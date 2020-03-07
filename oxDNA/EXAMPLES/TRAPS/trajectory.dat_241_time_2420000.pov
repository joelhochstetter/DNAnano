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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.590733, 53.143936, 49.498928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481480, 52.833599, 49.726425>,  <36.415928, 52.647396, 49.862923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481480, 52.833599, 49.726425>,  <36.590733, 53.143936, 49.498928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481480, 52.833599, 49.726425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657147, 0.281297, 0.699307,
		-0.702536, 0.564753, 0.433009,
		-0.273132, -0.775839, 0.568747,
		36.399540, 52.600849, 49.897049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202652, 53.333668, 50.043720>,  <36.590733, 53.143936, 49.498928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202652, 53.333668, 50.043720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430103, 53.007366, 50.086082>,  <36.566574, 52.811584, 50.111500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430103, 53.007366, 50.086082>,  <36.202652, 53.333668, 50.043720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430103, 53.007366, 50.086082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529379, 0.461434, 0.711924,
		-0.629620, -0.348755, 0.694225,
		0.568626, -0.815750, 0.105904,
		36.600693, 52.762642, 50.117855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315605, 54.054741, 49.983810>,  <36.202652, 53.333668, 50.043720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315605, 54.054741, 49.983810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223179, 54.380226, 50.197159>,  <36.167721, 54.575516, 50.325169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223179, 54.380226, 50.197159>,  <36.315605, 54.054741, 49.983810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223179, 54.380226, 50.197159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724286, -0.222171, 0.652725,
		0.649628, 0.537136, -0.538022,
		-0.231069, 0.813711, 0.533368,
		36.153858, 54.624340, 50.357170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923737, 54.180775, 50.289177>,  <36.315605, 54.054741, 49.983810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923737, 54.180775, 50.289177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655472, 54.390991, 50.498566>,  <36.494514, 54.517120, 50.624199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655472, 54.390991, 50.498566>,  <36.923737, 54.180775, 50.289177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655472, 54.390991, 50.498566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634628, 0.041190, 0.771720,
		0.384012, 0.849768, -0.361150,
		-0.670658, 0.525545, 0.523469,
		36.454273, 54.548656, 50.655605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205215, 54.773605, 50.649986>,  <36.923737, 54.180775, 50.289177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205215, 54.773605, 50.649986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884262, 54.662025, 50.861027>,  <36.691689, 54.595078, 50.987652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884262, 54.662025, 50.861027>,  <37.205215, 54.773605, 50.649986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884262, 54.662025, 50.861027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545511, 0.015744, 0.837956,
		-0.242057, 0.960176, 0.139539,
		-0.802388, -0.278953, 0.527597,
		36.643547, 54.578339, 51.019306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222034, 55.137821, 51.262821>,  <37.205215, 54.773605, 50.649986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222034, 55.137821, 51.262821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047451, 54.780098, 51.302238>,  <36.942699, 54.565464, 51.325890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047451, 54.780098, 51.302238>,  <37.222034, 55.137821, 51.262821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047451, 54.780098, 51.302238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573835, -0.192337, 0.796065,
		-0.692976, 0.403998, 0.597134,
		-0.436460, -0.894311, 0.098543,
		36.916512, 54.511806, 51.331802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636669, 54.854359, 51.793056>,  <37.222034, 55.137821, 51.262821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636669, 54.854359, 51.793056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839657, 54.702477, 51.483658>,  <37.961449, 54.611347, 51.298019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839657, 54.702477, 51.483658>,  <37.636669, 54.854359, 51.793056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839657, 54.702477, 51.483658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482586, 0.868921, -0.109938,
		0.713856, -0.317491, 0.624187,
		0.507465, -0.379704, -0.773501,
		37.991898, 54.588566, 51.251606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367687, 55.026115, 51.789875>,  <37.636669, 54.854359, 51.793056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367687, 55.026115, 51.789875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301029, 54.937187, 51.405624>,  <38.261036, 54.883831, 51.175076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301029, 54.937187, 51.405624>,  <38.367687, 55.026115, 51.789875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301029, 54.937187, 51.405624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658583, 0.699968, -0.276247,
		0.733824, -0.678687, 0.029773,
		-0.166645, -0.222325, -0.960625,
		38.251034, 54.870491, 51.117435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995178, 54.939014, 51.461613>,  <38.367687, 55.026115, 51.789875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995178, 54.939014, 51.461613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734539, 55.042217, 51.176277>,  <38.578156, 55.104141, 51.005077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734539, 55.042217, 51.176277>,  <38.995178, 54.939014, 51.461613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734539, 55.042217, 51.176277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650549, 0.673712, -0.350568,
		0.390132, -0.692490, -0.606840,
		-0.651600, 0.258012, -0.713335,
		38.539059, 55.119621, 50.962276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291340, 54.941883, 50.760590>,  <38.995178, 54.939014, 51.461613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291340, 54.941883, 50.760590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007095, 55.220879, 50.797539>,  <38.836548, 55.388275, 50.819710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007095, 55.220879, 50.797539>,  <39.291340, 54.941883, 50.760590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007095, 55.220879, 50.797539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619675, 0.682630, -0.387322,
		-0.333211, -0.217995, -0.917305,
		-0.710614, 0.697491, 0.092373,
		38.793911, 55.430126, 50.825253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868488, 54.756092, 50.335701>,  <39.291340, 54.941883, 50.760590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868488, 54.756092, 50.335701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959232, 54.739426, 50.724915>,  <40.013680, 54.729427, 50.958443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959232, 54.739426, 50.724915>,  <39.868488, 54.756092, 50.335701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959232, 54.739426, 50.724915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883169, -0.412348, -0.223567,
		0.410543, 0.910074, -0.056752,
		0.226864, -0.041662, 0.973035,
		40.027290, 54.726929, 51.016827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568062, 55.048672, 50.452000>,  <39.868488, 54.756092, 50.335701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.568062, 55.048672, 50.452000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474735, 54.761898, 50.714775>,  <40.418739, 54.589836, 50.872440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474735, 54.761898, 50.714775>,  <40.568062, 55.048672, 50.452000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474735, 54.761898, 50.714775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879003, -0.444403, -0.172803,
		0.415834, 0.537136, 0.733871,
		-0.233316, -0.716932, 0.656942,
		40.404739, 54.546818, 50.911858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095509, 54.964611, 50.977848>,  <40.568062, 55.048672, 50.452000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095509, 54.964611, 50.977848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918022, 54.614613, 50.900391>,  <40.811531, 54.404613, 50.853916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918022, 54.614613, 50.900391>,  <41.095509, 54.964611, 50.977848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918022, 54.614613, 50.900391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895342, -0.442102, -0.053928,
		-0.038424, -0.197307, 0.979588,
		-0.443718, -0.874995, -0.193645,
		40.784908, 54.352116, 50.842297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181423, 54.465038, 51.497791>,  <41.095509, 54.964611, 50.977848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.181423, 54.465038, 51.497791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.121571, 54.287106, 51.144581>,  <41.085659, 54.180347, 50.932655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.121571, 54.287106, 51.144581>,  <41.181423, 54.465038, 51.497791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121571, 54.287106, 51.144581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906173, -0.418979, 0.057506,
		-0.395549, -0.791569, 0.465789,
		-0.149636, -0.444831, -0.883025,
		41.076679, 54.153656, 50.879673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309296, 53.839207, 51.752674>,  <41.181423, 54.465038, 51.497791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309296, 53.839207, 51.752674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375229, 53.889324, 51.361343>,  <41.414787, 53.919395, 51.126545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375229, 53.889324, 51.361343>,  <41.309296, 53.839207, 51.752674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375229, 53.889324, 51.361343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980575, -0.127731, 0.148854,
		-0.106313, -0.983863, -0.143918,
		0.164835, 0.125297, -0.978330,
		41.424679, 53.926914, 51.067844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943245, 53.713207, 51.930325>,  <41.309296, 53.839207, 51.752674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943245, 53.713207, 51.930325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.880932, 53.792004, 51.543144>,  <41.843544, 53.839283, 51.310837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.880932, 53.792004, 51.543144>,  <41.943245, 53.713207, 51.930325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.880932, 53.792004, 51.543144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960405, -0.198941, -0.195051,
		-0.230988, -0.960009, -0.158200,
		-0.155779, 0.196990, -0.967950,
		41.834198, 53.851101, 51.252758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570885, 53.623604, 51.699425>,  <41.943245, 53.713207, 51.930325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.570885, 53.623604, 51.699425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.922657, 53.500717, 51.844872>,  <43.133720, 53.426987, 51.932140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.922657, 53.500717, 51.844872>,  <42.570885, 53.623604, 51.699425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.922657, 53.500717, 51.844872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476006, 0.560906, -0.677350,
		0.004137, 0.768767, 0.639516,
		0.879432, -0.307216, 0.363617,
		43.186485, 53.408554, 51.953957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.059986, 54.194088, 51.750534>,  <42.570885, 53.623604, 51.699425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.059986, 54.194088, 51.750534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.273758, 53.859173, 51.704342>,  <43.402023, 53.658226, 51.676628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.273758, 53.859173, 51.704342>,  <43.059986, 54.194088, 51.750534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.273758, 53.859173, 51.704342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389492, 0.365226, -0.845521,
		0.750118, 0.406897, 0.521304,
		0.534434, -0.837284, -0.115480,
		43.434090, 53.607986, 51.669697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.348118, 54.698116, 52.096138>,  <43.059986, 54.194088, 51.750534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.348118, 54.698116, 52.096138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.653633, 54.610390, 52.338966>,  <43.836941, 54.557755, 52.484661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.653633, 54.610390, 52.338966>,  <43.348118, 54.698116, 52.096138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.653633, 54.610390, 52.338966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645196, 0.232103, -0.727908,
		0.018739, 0.947644, 0.318778,
		0.763787, -0.219314, 0.607068,
		43.882771, 54.544594, 52.521088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.748791, 55.312706, 52.274635>,  <43.348118, 54.698116, 52.096138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.748791, 55.312706, 52.274635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.959686, 54.973026, 52.286522>,  <44.086224, 54.769218, 52.293655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.959686, 54.973026, 52.286522>,  <43.748791, 55.312706, 52.274635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.959686, 54.973026, 52.286522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672459, 0.395619, -0.625527,
		0.519437, 0.349790, 0.779636,
		0.527242, -0.849196, 0.029720,
		44.117859, 54.718269, 52.295437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.366829, 55.641911, 52.338905>,  <43.748791, 55.312706, 52.274635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.366829, 55.641911, 52.338905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.391991, 55.261868, 52.216698>,  <44.407085, 55.033840, 52.143375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.391991, 55.261868, 52.216698>,  <44.366829, 55.641911, 52.338905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.391991, 55.261868, 52.216698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757919, 0.244638, -0.604741,
		0.649310, -0.193518, 0.735492,
		0.062901, -0.950107, -0.305517,
		44.410862, 54.976837, 52.125042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.031841, 55.386185, 52.368080>,  <44.366829, 55.641911, 52.338905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.031841, 55.386185, 52.368080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848942, 55.203259, 52.062981>,  <44.739204, 55.093502, 51.879921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848942, 55.203259, 52.062981>,  <45.031841, 55.386185, 52.368080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.848942, 55.203259, 52.062981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719497, 0.313890, -0.619513,
		0.522734, -0.832066, 0.185515,
		-0.457245, -0.457318, -0.762750,
		44.711769, 55.066063, 51.834156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.427635, 54.818745, 51.967785>,  <45.031841, 55.386185, 52.368080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.427635, 54.818745, 51.967785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.151730, 55.004532, 51.745617>,  <44.986187, 55.116005, 51.612316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.151730, 55.004532, 51.745617>,  <45.427635, 54.818745, 51.967785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.151730, 55.004532, 51.745617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721167, 0.372581, -0.584038,
		-0.064328, -0.803401, -0.591954,
		-0.689768, 0.464468, -0.555419,
		44.944798, 55.143871, 51.578991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.467491, 55.286419, 51.502495>,  <45.427635, 54.818745, 51.967785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.467491, 55.286419, 51.502495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.817726, 55.239605, 51.315029>,  <46.027866, 55.211517, 51.202549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.817726, 55.239605, 51.315029>,  <45.467491, 55.286419, 51.502495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.817726, 55.239605, 51.315029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411504, 0.688846, 0.596788,
		0.252992, -0.715398, 0.651306,
		0.875591, -0.117033, -0.468662,
		46.080402, 55.204494, 51.174431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.115559, 55.057190, 51.855362>,  <45.467491, 55.286419, 51.502495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.115559, 55.057190, 51.855362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.211533, 55.314156, 51.564232>,  <46.269119, 55.468334, 51.389553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.211533, 55.314156, 51.564232>,  <46.115559, 55.057190, 51.855362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.211533, 55.314156, 51.564232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562682, 0.518916, 0.643518,
		0.791087, -0.563939, -0.236968,
		0.239939, 0.642416, -0.727826,
		46.283516, 55.506882, 51.345882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.341297, 55.160076, 52.590431>,  <46.115559, 55.057190, 51.855362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.341297, 55.160076, 52.590431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.010880, 55.377266, 52.650871>,  <45.812630, 55.507580, 52.687138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.010880, 55.377266, 52.650871>,  <46.341297, 55.160076, 52.590431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.010880, 55.377266, 52.650871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012888, -0.286228, 0.958075,
		0.563456, 0.789466, 0.243435,
		-0.826045, 0.542971, 0.151103,
		45.763065, 55.540157, 52.696201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.348095, 55.745705, 53.126694>,  <46.341297, 55.160076, 52.590431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.348095, 55.745705, 53.126694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.014297, 55.526680, 53.102081>,  <45.814018, 55.395264, 53.087315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.014297, 55.526680, 53.102081>,  <46.348095, 55.745705, 53.126694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.014297, 55.526680, 53.102081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103389, -0.265280, 0.958612,
		-0.541225, 0.793598, 0.277988,
		-0.834498, -0.547566, -0.061527,
		45.763947, 55.362411, 53.083622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.223103, 56.297688, 53.615852>,  <46.348095, 55.745705, 53.126694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.223103, 56.297688, 53.615852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.235714, 56.697380, 53.625195>,  <46.243279, 56.937195, 53.630802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.235714, 56.697380, 53.625195>,  <46.223103, 56.297688, 53.615852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.235714, 56.697380, 53.625195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851686, -0.039088, 0.522593,
		0.523104, 0.003419, -0.852262,
		0.031527, 0.999230, 0.023360,
		46.245171, 56.997150, 53.632202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.991482, 56.488396, 53.376965>,  <46.223103, 56.297688, 53.615852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.991482, 56.488396, 53.376965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.824772, 56.767609, 53.609875>,  <46.724747, 56.935139, 53.749619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.824772, 56.767609, 53.609875>,  <46.991482, 56.488396, 53.376965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.824772, 56.767609, 53.609875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864662, 0.106805, 0.490869,
		0.280455, 0.708052, -0.648080,
		-0.416779, 0.698037, 0.582271,
		46.699738, 56.977020, 53.784557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.461823, 57.266914, 53.375488>,  <46.991482, 56.488396, 53.376965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.461823, 57.266914, 53.375488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.243832, 57.083958, 53.656570>,  <47.113037, 56.974182, 53.825218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.243832, 57.083958, 53.656570>,  <47.461823, 57.266914, 53.375488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.243832, 57.083958, 53.656570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799665, -0.031576, 0.599616,
		-0.252070, 0.888705, 0.382968,
		-0.544974, -0.457391, 0.702707,
		47.080338, 56.946739, 53.867382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.502823, 57.581966, 54.047703>,  <47.461823, 57.266914, 53.375488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.502823, 57.581966, 54.047703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.427258, 57.190285, 54.077293>,  <47.381920, 56.955276, 54.095047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.427258, 57.190285, 54.077293>,  <47.502823, 57.581966, 54.047703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.427258, 57.190285, 54.077293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772433, -0.101658, 0.626907,
		-0.606349, 0.175574, 0.775574,
		-0.188912, -0.979203, 0.073979,
		47.370583, 56.896523, 54.099487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.575600, 57.373547, 54.733040>,  <47.502823, 57.581966, 54.047703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.575600, 57.373547, 54.733040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.657230, 57.028976, 54.547005>,  <47.706211, 56.822235, 54.435383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.657230, 57.028976, 54.547005>,  <47.575600, 57.373547, 54.733040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.657230, 57.028976, 54.547005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792427, -0.133593, 0.595157,
		-0.574813, -0.490005, 0.655350,
		0.204080, -0.861422, -0.465085,
		47.718456, 56.770550, 54.407478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.902828, 57.067581, 55.133595>,  <47.575600, 57.373547, 54.733040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.902828, 57.067581, 55.133595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.957890, 56.803341, 54.838390>,  <47.990929, 56.644798, 54.661266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.957890, 56.803341, 54.838390>,  <47.902828, 57.067581, 55.133595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.957890, 56.803341, 54.838390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806141, -0.358198, 0.470988,
		-0.575488, -0.659777, 0.483226,
		0.137656, -0.660597, -0.738012,
		47.999187, 56.605164, 54.616985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.180496, 57.068321, 55.891190>,  <47.902828, 57.067581, 55.133595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.180496, 57.068321, 55.891190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.033733, 57.411297, 55.746872>,  <47.945675, 57.617085, 55.660282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.033733, 57.411297, 55.746872>,  <48.180496, 57.068321, 55.891190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.033733, 57.411297, 55.746872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606532, 0.073569, 0.791648,
		0.705335, 0.509296, 0.493073,
		-0.366908, 0.857441, -0.360795,
		47.923660, 57.668530, 55.638634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.728783, 56.525829, 55.681652>,  <48.180496, 57.068321, 55.891190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.728783, 56.525829, 55.681652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.098881, 56.632019, 55.573250>,  <49.320938, 56.695732, 55.508209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.098881, 56.632019, 55.573250>,  <48.728783, 56.525829, 55.681652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.098881, 56.632019, 55.573250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379172, -0.624011, 0.683256,
		0.012272, -0.734938, -0.678023,
		0.925245, 0.265472, -0.271010,
		49.376453, 56.711662, 55.491947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.226807, 55.906067, 55.496059>,  <48.728783, 56.525829, 55.681652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.226807, 55.906067, 55.496059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.400215, 56.244377, 55.620461>,  <49.504261, 56.447365, 55.695103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.400215, 56.244377, 55.620461>,  <49.226807, 55.906067, 55.496059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.400215, 56.244377, 55.620461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555701, -0.522600, 0.646595,
		0.709404, -0.107489, -0.696557,
		0.433523, 0.845775, 0.311003,
		49.530273, 56.498108, 55.713760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.950146, 55.821438, 55.445904>,  <49.226807, 55.906067, 55.496059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.950146, 55.821438, 55.445904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.871658, 56.100658, 55.721359>,  <49.824566, 56.268188, 55.886631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.871658, 56.100658, 55.721359>,  <49.950146, 55.821438, 55.445904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.871658, 56.100658, 55.721359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513773, -0.524981, 0.678552,
		0.835185, 0.486951, -0.255626,
		-0.196223, 0.698050, 0.688639,
		49.812790, 56.310074, 55.927952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.559689, 56.141853, 55.623840>,  <49.950146, 55.821438, 55.445904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.559689, 56.141853, 55.623840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.291721, 56.149582, 55.920715>,  <50.130939, 56.154221, 56.098839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.291721, 56.149582, 55.920715>,  <50.559689, 56.141853, 55.623840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.291721, 56.149582, 55.920715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680125, -0.384900, 0.623925,
		0.297723, 0.922756, 0.244709,
		-0.669919, 0.019324, 0.742183,
		50.090744, 56.155380, 56.143372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.809326, 56.610470, 56.173801>,  <50.559689, 56.141853, 55.623840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.809326, 56.610470, 56.173801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.560223, 56.320965, 56.292686>,  <50.410759, 56.147263, 56.364017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.560223, 56.320965, 56.292686>,  <50.809326, 56.610470, 56.173801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.560223, 56.320965, 56.292686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645985, -0.261304, 0.717234,
		-0.441446, 0.638658, 0.630271,
		-0.622760, -0.723765, 0.297212,
		50.373394, 56.103836, 56.381851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.850178, 56.529320, 56.893929>,  <50.809326, 56.610470, 56.173801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.850178, 56.529320, 56.893929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.682747, 56.187962, 56.769669>,  <50.582287, 55.983147, 56.695114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.682747, 56.187962, 56.769669>,  <50.850178, 56.529320, 56.893929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.682747, 56.187962, 56.769669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551766, -0.510655, 0.659383,
		-0.721350, 0.104600, 0.684626,
		-0.418579, -0.853399, -0.310646,
		50.557175, 55.931942, 56.676476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.375366, 56.151852, 57.339474>,  <50.850178, 56.529320, 56.893929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.375366, 56.151852, 57.339474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.603912, 55.933311, 57.094513>,  <50.741039, 55.802185, 56.947536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.603912, 55.933311, 57.094513>,  <50.375366, 56.151852, 57.339474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.603912, 55.933311, 57.094513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596161, -0.236535, 0.767231,
		-0.564036, -0.803460, 0.190568,
		0.571363, -0.546355, -0.612406,
		50.775322, 55.769405, 56.910789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.516468, 55.380070, 57.621223>,  <50.375366, 56.151852, 57.339474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.516468, 55.380070, 57.621223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.792747, 55.503784, 57.359756>,  <50.958515, 55.578014, 57.202877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.792747, 55.503784, 57.359756>,  <50.516468, 55.380070, 57.621223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.792747, 55.503784, 57.359756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723053, -0.309586, 0.617536,
		-0.011368, -0.899165, -0.437463,
		0.690699, 0.309288, -0.653664,
		50.999958, 55.596569, 57.163658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.855343, 54.767242, 57.449863>,  <50.516468, 55.380070, 57.621223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.855343, 54.767242, 57.449863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.053268, 55.114834, 57.447212>,  <51.172024, 55.323387, 57.445621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.053268, 55.114834, 57.447212>,  <50.855343, 54.767242, 57.449863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.053268, 55.114834, 57.447212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539877, -0.301423, 0.785925,
		0.680952, -0.392460, -0.618287,
		0.494810, 0.868976, -0.006626,
		51.201710, 55.375526, 57.445225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.495670, 54.679813, 57.699917>,  <50.855343, 54.767242, 57.449863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.495670, 54.679813, 57.699917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.432373, 55.071003, 57.754349>,  <51.394394, 55.305717, 57.787010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.432373, 55.071003, 57.754349>,  <51.495670, 54.679813, 57.699917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.432373, 55.071003, 57.754349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494235, -0.040861, 0.868368,
		0.854804, 0.204673, -0.476884,
		-0.158245, 0.977977, 0.136084,
		51.384899, 55.364395, 57.795174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.144466, 55.005653, 58.058002>,  <51.495670, 54.679813, 57.699917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.144466, 55.005653, 58.058002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.843380, 55.258640, 58.131111>,  <51.662727, 55.410431, 58.174976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.843380, 55.258640, 58.131111>,  <52.144466, 55.005653, 58.058002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.843380, 55.258640, 58.131111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422737, 0.251512, 0.870652,
		0.504686, 0.732620, -0.456684,
		-0.752719, 0.632463, 0.182770,
		51.617565, 55.448380, 58.185944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.605553, 55.378002, 57.590992>,  <52.144466, 55.005653, 58.058002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.605553, 55.378002, 57.590992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.372555, 55.620811, 57.807220>,  <52.232758, 55.766499, 57.936958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.372555, 55.620811, 57.807220>,  <52.605553, 55.378002, 57.590992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.372555, 55.620811, 57.807220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618262, -0.100863, 0.779473,
		0.527685, 0.788255, -0.316549,
		-0.582496, 0.607027, 0.540572,
		52.197807, 55.802921, 57.969391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.058617, 55.865173, 57.810715>,  <52.605553, 55.378002, 57.590992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.058617, 55.865173, 57.810715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.738171, 55.829594, 58.047462>,  <52.545902, 55.808247, 58.189510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.738171, 55.829594, 58.047462>,  <53.058617, 55.865173, 57.810715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.738171, 55.829594, 58.047462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594376, -0.002187, 0.804184,
		-0.070233, 0.996034, 0.054619,
		-0.801114, -0.088945, 0.591865,
		52.497837, 55.802910, 58.225021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.412216, 56.141235, 57.220600>,  <53.058617, 55.865173, 57.810715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.412216, 56.141235, 57.220600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.217922, 56.189659, 56.874329>,  <53.101345, 56.218712, 56.666565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.217922, 56.189659, 56.874329>,  <53.412216, 56.141235, 57.220600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.217922, 56.189659, 56.874329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700456, -0.538536, -0.468338,
		-0.522895, -0.833861, 0.176794,
		-0.485739, 0.121055, -0.865681,
		53.072201, 56.225975, 56.614624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.812210, 55.787979, 56.774200>,  <53.412216, 56.141235, 57.220600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.812210, 55.787979, 56.774200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.552021, 55.928337, 56.504753>,  <53.395908, 56.012550, 56.343086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.552021, 55.928337, 56.504753>,  <53.812210, 55.787979, 56.774200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.552021, 55.928337, 56.504753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585461, -0.333358, -0.738991,
		-0.483866, -0.875068, 0.011402,
		-0.650468, 0.350897, -0.673619,
		53.356880, 56.033607, 56.302666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.707970, 55.298264, 56.253384>,  <53.812210, 55.787979, 56.774200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.707970, 55.298264, 56.253384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.596886, 55.639805, 56.077286>,  <53.530235, 55.844730, 55.971626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.596886, 55.639805, 56.077286>,  <53.707970, 55.298264, 56.253384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.596886, 55.639805, 56.077286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715318, -0.122100, -0.688049,
		-0.641244, -0.505995, -0.576866,
		-0.277714, 0.853850, -0.440244,
		53.513573, 55.895962, 55.945213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.006901, 55.122406, 55.578712>,  <53.707970, 55.298264, 56.253384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.006901, 55.122406, 55.578712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.930683, 54.862064, 55.284752>,  <53.884953, 54.705860, 55.108376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.930683, 54.862064, 55.284752>,  <54.006901, 55.122406, 55.578712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.930683, 54.862064, 55.284752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977731, -0.192900, -0.082660,
		-0.087963, -0.734284, 0.673119,
		-0.190540, -0.650858, -0.734900,
		53.873520, 54.666805, 55.064281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.481602, 54.453636, 55.813160>,  <54.006901, 55.122406, 55.578712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.481602, 54.453636, 55.813160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.375046, 54.506088, 55.431198>,  <54.311111, 54.537560, 55.202023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.375046, 54.506088, 55.431198>,  <54.481602, 54.453636, 55.813160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.375046, 54.506088, 55.431198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930272, -0.224296, -0.290320,
		-0.252252, -0.965658, -0.062241,
		-0.266389, 0.131134, -0.954903,
		54.295128, 54.545429, 55.144726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.944294, 53.917995, 55.461388>,  <54.481602, 54.453636, 55.813160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.944294, 53.917995, 55.461388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.787033, 54.223812, 55.257072>,  <54.692677, 54.407303, 55.134483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.787033, 54.223812, 55.257072>,  <54.944294, 53.917995, 55.461388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.787033, 54.223812, 55.257072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860128, 0.109466, -0.498194,
		-0.324978, -0.635207, -0.700644,
		-0.393153, 0.764545, -0.510785,
		54.669086, 54.453175, 55.103836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.965256, 53.781620, 54.730618>,  <54.944294, 53.917995, 55.461388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.965256, 53.781620, 54.730618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.007957, 54.170845, 54.812347>,  <55.033577, 54.404381, 54.861385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.007957, 54.170845, 54.812347>,  <54.965256, 53.781620, 54.730618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.007957, 54.170845, 54.812347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789536, 0.041947, -0.612269,
		-0.604348, 0.226688, -0.763790,
		0.106755, 0.973064, 0.204329,
		55.039986, 54.462765, 54.873646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.793022, 54.289391, 54.112309>,  <54.965256, 53.781620, 54.730618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.793022, 54.289391, 54.112309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.048187, 54.449574, 54.375427>,  <55.201286, 54.545685, 54.533298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.048187, 54.449574, 54.375427>,  <54.793022, 54.289391, 54.112309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.048187, 54.449574, 54.375427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695575, 0.066969, -0.715325,
		-0.330510, 0.913864, -0.235828,
		0.637917, 0.400458, 0.657795,
		55.239563, 54.569710, 54.572765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.244778, 54.795971, 53.769783>,  <54.793022, 54.289391, 54.112309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.244778, 54.795971, 53.769783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.435974, 54.660419, 54.093929>,  <55.550690, 54.579090, 54.288418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.435974, 54.660419, 54.093929>,  <55.244778, 54.795971, 53.769783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.435974, 54.660419, 54.093929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800887, -0.210719, -0.560515,
		0.360705, 0.916929, 0.170682,
		0.477987, -0.338878, 0.810364,
		55.579369, 54.558758, 54.337040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.615288, 55.294987, 53.643764>,  <55.244778, 54.795971, 53.769783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.615288, 55.294987, 53.643764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.759079, 55.486923, 53.963894>,  <54.845356, 55.602085, 54.155972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.759079, 55.486923, 53.963894>,  <54.615288, 55.294987, 53.643764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.759079, 55.486923, 53.963894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198359, 0.798765, -0.568003,
		-0.911826, 0.362938, 0.191959,
		0.359480, 0.479844, 0.800327,
		54.866924, 55.630875, 54.203991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.417229, 55.991451, 53.485603>,  <54.615288, 55.294987, 53.643764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.417229, 55.991451, 53.485603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.744202, 55.990757, 53.716011>,  <54.940384, 55.990341, 53.854256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.744202, 55.990757, 53.716011>,  <54.417229, 55.991451, 53.485603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.744202, 55.990757, 53.716011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379329, 0.754170, -0.536038,
		-0.433491, 0.656676, 0.617140,
		0.817432, -0.001732, 0.576023,
		54.989429, 55.990238, 53.888817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.652248, 56.687344, 53.811424>,  <54.417229, 55.991451, 53.485603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.652248, 56.687344, 53.811424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.972595, 56.449238, 53.785259>,  <55.164803, 56.306374, 53.769558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.972595, 56.449238, 53.785259>,  <54.652248, 56.687344, 53.811424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.972595, 56.449238, 53.785259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435495, 0.653905, -0.618670,
		0.411047, 0.466982, 0.782923,
		0.800865, -0.595261, -0.065417,
		55.212856, 56.270660, 53.765633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.340538, 56.932888, 54.076374>,  <54.652248, 56.687344, 53.811424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.340538, 56.932888, 54.076374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.430618, 56.689430, 53.772049>,  <55.484665, 56.543358, 53.589455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.430618, 56.689430, 53.772049>,  <55.340538, 56.932888, 54.076374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.430618, 56.689430, 53.772049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359050, 0.777761, -0.515918,
		0.905742, -0.156987, 0.393684,
		0.225199, -0.608641, -0.760817,
		55.498177, 56.506840, 53.543804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.166645, 56.926197, 53.901531>,  <55.340538, 56.932888, 54.076374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.166645, 56.926197, 53.901531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.936058, 56.857037, 53.582085>,  <55.797707, 56.815540, 53.390415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.936058, 56.857037, 53.582085>,  <56.166645, 56.926197, 53.901531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.936058, 56.857037, 53.582085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318591, 0.852448, -0.414528,
		0.752451, -0.493394, -0.436325,
		-0.576470, -0.172903, -0.798616,
		55.763119, 56.805164, 53.342499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.230450, 57.340408, 54.588120>,  <56.166645, 56.926197, 53.901531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.230450, 57.340408, 54.588120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.502632, 57.333260, 54.881145>,  <56.665943, 57.328968, 55.056961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.502632, 57.333260, 54.881145>,  <56.230450, 57.340408, 54.588120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.502632, 57.333260, 54.881145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258837, -0.929397, -0.263104,
		0.685548, 0.368647, -0.627792,
		0.680461, -0.017875, 0.732567,
		56.706772, 57.327896, 55.100914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.819992, 56.904018, 54.333164>,  <56.230450, 57.340408, 54.588120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.819992, 56.904018, 54.333164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.812317, 56.892174, 54.732914>,  <56.807713, 56.885067, 54.972763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.812317, 56.892174, 54.732914>,  <56.819992, 56.904018, 54.333164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.812317, 56.892174, 54.732914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080989, -0.996323, -0.027961,
		0.996530, 0.080402, 0.021518,
		-0.019191, -0.029607, 0.999377,
		56.806561, 56.883293, 55.032726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.382404, 56.672203, 54.660084>,  <56.819992, 56.904018, 54.333164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.382404, 56.672203, 54.660084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.092140, 56.594013, 54.923965>,  <56.917984, 56.547100, 55.082294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.092140, 56.594013, 54.923965>,  <57.382404, 56.672203, 54.660084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.092140, 56.594013, 54.923965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253071, -0.967412, -0.008285,
		0.639825, 0.160939, 0.751480,
		-0.725658, -0.195479, 0.659703,
		56.874443, 56.535370, 55.121876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.603016, 56.589245, 55.476265>,  <57.382404, 56.672203, 54.660084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.603016, 56.589245, 55.476265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.001213, 56.624119, 55.461334>,  <58.240131, 56.645042, 55.452377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.001213, 56.624119, 55.461334>,  <57.603016, 56.589245, 55.476265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.001213, 56.624119, 55.461334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094782, 0.900608, -0.424171,
		-0.003368, 0.425797, 0.904813,
		0.995492, 0.087189, -0.037325,
		58.299862, 56.650276, 55.450138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.949818, 56.648575, 56.055061>,  <57.603016, 56.589245, 55.476265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.949818, 56.648575, 56.055061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.889999, 56.296448, 55.874977>,  <57.854111, 56.085171, 55.766926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.889999, 56.296448, 55.874977>,  <57.949818, 56.648575, 56.055061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.889999, 56.296448, 55.874977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858307, 0.110468, -0.501104,
		0.490862, -0.461351, 0.739059,
		-0.149543, -0.880313, -0.450206,
		57.845135, 56.032352, 55.739914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.524281, 56.322041, 56.056458>,  <57.949818, 56.648575, 56.055061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.524281, 56.322041, 56.056458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.323410, 56.117409, 55.777573>,  <58.202888, 55.994629, 55.610241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.323410, 56.117409, 55.777573>,  <58.524281, 56.322041, 56.056458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.323410, 56.117409, 55.777573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807563, 0.010941, -0.589680,
		0.309294, -0.859169, 0.407635,
		-0.502175, -0.511575, -0.697217,
		58.172756, 55.963936, 55.568409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.154079, 56.002357, 55.882599>,  <58.524281, 56.322041, 56.056458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.154079, 56.002357, 55.882599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.972641, 55.935295, 56.232719>,  <58.863777, 55.895058, 56.442791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.972641, 55.935295, 56.232719>,  <59.154079, 56.002357, 55.882599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.972641, 55.935295, 56.232719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222743, -0.929650, -0.293491,
		0.862925, -0.328092, 0.384339,
		-0.453593, -0.167651, 0.875298,
		58.836563, 55.884998, 56.495308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.470364, 56.320072, 56.479443>,  <59.154079, 56.002357, 55.882599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.470364, 56.320072, 56.479443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.690170, 56.490341, 56.191879>,  <59.822056, 56.592503, 56.019341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.690170, 56.490341, 56.191879>,  <59.470364, 56.320072, 56.479443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.690170, 56.490341, 56.191879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417764, 0.885174, 0.204794,
		0.723534, 0.187795, 0.664252,
		0.549519, 0.425676, -0.718908,
		59.855026, 56.618046, 55.976208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.072235, 56.793110, 56.794022>,  <59.470364, 56.320072, 56.479443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.072235, 56.793110, 56.794022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.979027, 56.897038, 56.419174>,  <59.923103, 56.959393, 56.194263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.979027, 56.897038, 56.419174>,  <60.072235, 56.793110, 56.794022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.979027, 56.897038, 56.419174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039621, 0.960312, 0.276100,
		0.971664, 0.101466, -0.213478,
		-0.233020, 0.259818, -0.937121,
		59.909122, 56.974983, 56.138039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.458252, 56.075829, 56.849827>,  <60.072235, 56.793110, 56.794022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.458252, 56.075829, 56.849827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.460106, 55.774834, 56.586388>,  <60.461220, 55.594238, 56.428326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.460106, 55.774834, 56.586388>,  <60.458252, 56.075829, 56.849827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.460106, 55.774834, 56.586388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352651, 0.617519, -0.703070,
		0.935743, -0.228994, 0.268228,
		0.004637, -0.752484, -0.658594,
		60.461498, 55.549088, 56.388809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.886070, 56.515888, 56.447254>,  <60.458252, 56.075829, 56.849827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.886070, 56.515888, 56.447254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.147034, 56.813431, 56.389229>,  <61.303612, 56.991955, 56.354412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.147034, 56.813431, 56.389229>,  <60.886070, 56.515888, 56.447254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.147034, 56.813431, 56.389229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208580, 0.007787, 0.977974,
		0.728601, -0.668296, -0.150073,
		0.652408, 0.743855, -0.145067,
		61.342754, 57.036587, 56.345707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.656059, 56.361012, 56.646286>,  <60.886070, 56.515888, 56.447254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.656059, 56.361012, 56.646286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.536530, 56.739128, 56.698631>,  <61.464809, 56.966000, 56.730038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.536530, 56.739128, 56.698631>,  <61.656059, 56.361012, 56.646286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.536530, 56.739128, 56.698631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288763, -0.041136, 0.956517,
		0.909571, 0.323621, -0.260673,
		-0.298826, 0.945292, 0.130865,
		61.446880, 57.022717, 56.737892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.249794, 56.718456, 57.073418>,  <61.656059, 56.361012, 56.646286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.249794, 56.718456, 57.073418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.890068, 56.889713, 57.109032>,  <61.674232, 56.992466, 57.130398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.890068, 56.889713, 57.109032>,  <62.249794, 56.718456, 57.073418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.890068, 56.889713, 57.109032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026698, -0.149457, 0.988408,
		0.436482, 0.891269, 0.122979,
		-0.899317, 0.428139, 0.089031,
		61.620274, 57.018154, 57.135742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.807022, 57.133911, 57.131248>,  <62.249794, 56.718456, 57.073418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.807022, 57.133911, 57.131248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.597565, 57.441895, 57.277107>,  <62.471889, 57.626682, 57.364624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.597565, 57.441895, 57.277107>,  <62.807022, 57.133911, 57.131248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.597565, 57.441895, 57.277107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077958, 0.382918, -0.920487,
		-0.848363, -0.510434, -0.140488,
		-0.523643, 0.769955, 0.364646,
		62.440472, 57.672882, 57.386501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.272041, 57.240364, 56.638172>,  <62.807022, 57.133911, 57.131248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.272041, 57.240364, 56.638172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.404152, 57.355808, 56.278702>,  <63.483418, 57.425076, 56.063019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.404152, 57.355808, 56.278702>,  <63.272041, 57.240364, 56.638172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.404152, 57.355808, 56.278702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639448, -0.631910, -0.437945,
		-0.694277, 0.719302, -0.024157,
		0.330279, 0.288608, -0.898677,
		63.503235, 57.442390, 56.009098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.756786, 56.781944, 57.054531>,  <63.272041, 57.240364, 56.638172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.756786, 56.781944, 57.054531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.869118, 56.965069, 56.717117>,  <63.936516, 57.074944, 56.514671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.869118, 56.965069, 56.717117>,  <63.756786, 56.781944, 57.054531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.869118, 56.965069, 56.717117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854159, -0.520007, 0.002138,
		-0.437663, -0.721111, -0.537076,
		0.280825, 0.457812, -0.843531,
		63.953365, 57.102413, 56.464058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.904587, 56.316971, 56.406849>,  <63.756786, 56.781944, 57.054531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.904587, 56.316971, 56.406849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.122368, 56.650074, 56.447021>,  <64.253036, 56.849937, 56.471123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.122368, 56.650074, 56.447021>,  <63.904587, 56.316971, 56.406849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.122368, 56.650074, 56.447021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819770, -0.553630, 0.146529,
		0.177623, 0.002550, -0.984095,
		0.544451, 0.832759, 0.100428,
		64.285706, 56.899902, 56.477150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.465019, 55.854923, 56.373928>,  <63.904587, 56.316971, 56.406849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.465019, 55.854923, 56.373928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.552902, 55.831982, 56.763481>,  <64.605629, 55.818218, 56.997211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.552902, 55.831982, 56.763481>,  <64.465019, 55.854923, 56.373928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.552902, 55.831982, 56.763481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836539, -0.502536, -0.218313,
		0.501930, 0.862652, -0.062431,
		0.219702, -0.057352, 0.973880,
		64.618813, 55.814777, 57.055645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.209610, 56.071434, 56.624294>,  <64.465019, 55.854923, 56.373928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.209610, 56.071434, 56.624294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.079994, 55.799896, 56.887863>,  <65.002228, 55.636974, 57.046005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.079994, 55.799896, 56.887863>,  <65.209610, 56.071434, 56.624294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.079994, 55.799896, 56.887863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930658, -0.353844, 0.093118,
		0.169942, 0.643401, 0.746428,
		-0.324031, -0.678845, 0.658919,
		64.982788, 55.596241, 57.085537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.437309, 56.136402, 57.321087>,  <65.209610, 56.071434, 56.624294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.437309, 56.136402, 57.321087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.385490, 55.745598, 57.253357>,  <65.354401, 55.511116, 57.212719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.385490, 55.745598, 57.253357>,  <65.437309, 56.136402, 57.321087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.385490, 55.745598, 57.253357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883681, -0.191224, 0.427248,
		-0.449804, -0.094277, 0.888137,
		-0.129553, -0.977008, -0.169325,
		65.346626, 55.452496, 57.202560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.537590, 55.590935, 57.910847>,  <65.437309, 56.136402, 57.321087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.537590, 55.590935, 57.910847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.630272, 55.406029, 57.568474>,  <65.685883, 55.295086, 57.363049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.630272, 55.406029, 57.568474>,  <65.537590, 55.590935, 57.910847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.630272, 55.406029, 57.568474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880887, -0.273620, 0.386226,
		-0.412741, -0.843468, 0.343811,
		0.231696, -0.462270, -0.855934,
		65.699783, 55.267349, 57.311695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.614571, 56.186184, 58.459991>,  <65.537590, 55.590935, 57.910847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.614571, 56.186184, 58.459991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.820869, 56.486988, 58.624176>,  <65.944649, 56.667473, 58.722687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.820869, 56.486988, 58.624176>,  <65.614571, 56.186184, 58.459991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.820869, 56.486988, 58.624176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643544, 0.656315, -0.393830,
		-0.565559, -0.061036, 0.822446,
		0.515746, 0.752014, 0.410465,
		65.975594, 56.712593, 58.747314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.096298, 56.747826, 58.642174>,  <65.614571, 56.186184, 58.459991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.096298, 56.747826, 58.642174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.439270, 56.952839, 58.660545>,  <65.645058, 57.075848, 58.671570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.439270, 56.952839, 58.660545>,  <65.096298, 56.747826, 58.642174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.439270, 56.952839, 58.660545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485861, 0.835747, -0.255863,
		-0.169526, 0.197070, 0.965621,
		0.857438, 0.512533, 0.045932,
		65.696503, 57.106598, 58.674324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.177216, 57.111023, 58.038429>,  <65.096298, 56.747826, 58.642174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.177216, 57.111023, 58.038429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.133553, 57.035751, 57.648010>,  <65.107353, 56.990589, 57.413757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.133553, 57.035751, 57.648010>,  <65.177216, 57.111023, 58.038429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.133553, 57.035751, 57.648010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436184, 0.873266, -0.217140,
		0.893213, -0.449439, -0.013237,
		-0.109151, -0.188178, -0.976051,
		65.100807, 56.979298, 57.355194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.755173, 57.052788, 57.707462>,  <65.177216, 57.111023, 58.038429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.755173, 57.052788, 57.707462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.493149, 57.188972, 57.437653>,  <65.335938, 57.270683, 57.275768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.493149, 57.188972, 57.437653>,  <65.755173, 57.052788, 57.707462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.493149, 57.188972, 57.437653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496979, 0.866583, -0.045236,
		0.569130, -0.364857, -0.736865,
		-0.655059, 0.340461, -0.674525,
		65.296631, 57.291111, 57.235294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.243568, 57.450298, 58.073101>,  <65.755173, 57.052788, 57.707462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.243568, 57.450298, 58.073101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.515694, 57.562466, 58.343964>,  <66.678970, 57.629768, 58.506481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.515694, 57.562466, 58.343964>,  <66.243568, 57.450298, 58.073101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.515694, 57.562466, 58.343964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573924, -0.778445, -0.254235,
		0.455833, 0.561594, -0.690528,
		0.680314, 0.280421, 0.677153,
		66.719788, 57.646591, 58.547108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.914543, 57.520153, 57.785225>,  <66.243568, 57.450298, 58.073101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.914543, 57.520153, 57.785225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.956688, 57.394859, 58.162750>,  <66.981979, 57.319683, 58.389267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.956688, 57.394859, 58.162750>,  <66.914543, 57.520153, 57.785225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.956688, 57.394859, 58.162750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488826, -0.810200, -0.323460,
		0.865995, 0.495442, 0.067746,
		0.105368, -0.313231, 0.943814,
		66.988297, 57.300892, 58.445896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.542397, 57.215366, 57.709179>,  <66.914543, 57.520153, 57.785225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.542397, 57.215366, 57.709179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.408356, 57.064751, 58.054649>,  <67.327934, 56.974380, 58.261932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.408356, 57.064751, 58.054649>,  <67.542397, 57.215366, 57.709179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.408356, 57.064751, 58.054649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488887, -0.853099, -0.182243,
		0.805420, 0.361171, 0.469950,
		-0.335093, -0.376535, 0.863675,
		67.307831, 56.951790, 58.313751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.073563, 56.842937, 58.041824>,  <67.542397, 57.215366, 57.709179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.073563, 56.842937, 58.041824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.714211, 56.703335, 58.148483>,  <67.498596, 56.619572, 58.212479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.714211, 56.703335, 58.148483>,  <68.073563, 56.842937, 58.041824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.714211, 56.703335, 58.148483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306177, -0.932921, -0.189510,
		0.314900, -0.088612, 0.944979,
		-0.898384, -0.349007, 0.266646,
		67.444695, 56.598633, 58.228477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.775040, 56.850555, 58.012470>,  <68.073563, 56.842937, 58.041824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.775040, 56.850555, 58.012470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.170471, 56.790314, 58.014488>,  <69.407730, 56.754169, 58.015701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.170471, 56.790314, 58.014488>,  <68.775040, 56.850555, 58.012470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.170471, 56.790314, 58.014488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088091, 0.604742, 0.791534,
		-0.122264, -0.782051, 0.611104,
		0.988580, -0.150609, 0.005047,
		69.467049, 56.745132, 58.016003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.870789, 56.820400, 58.760109>,  <68.775040, 56.850555, 58.012470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.870789, 56.820400, 58.760109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.218460, 56.865616, 58.567543>,  <69.427063, 56.892746, 58.452003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.218460, 56.865616, 58.567543>,  <68.870789, 56.820400, 58.760109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.218460, 56.865616, 58.567543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399981, 0.411753, 0.818825,
		0.290783, -0.904258, 0.312671,
		0.869172, 0.113038, -0.481416,
		69.479210, 56.899529, 58.423119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.439949, 56.513496, 59.127605>,  <68.870789, 56.820400, 58.760109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.439949, 56.513496, 59.127605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.597786, 56.825615, 58.933517>,  <69.692490, 57.012886, 58.817062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.597786, 56.825615, 58.933517>,  <69.439949, 56.513496, 59.127605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.597786, 56.825615, 58.933517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385483, 0.338779, 0.858273,
		0.834088, -0.525710, -0.167111,
		0.394589, 0.780294, -0.485223,
		69.716164, 57.059704, 58.787949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.150887, 56.556595, 58.984707>,  <69.439949, 56.513496, 59.127605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.150887, 56.556595, 58.984707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.023277, 56.933395, 59.026398>,  <69.946716, 57.159473, 59.051414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.023277, 56.933395, 59.026398>,  <70.150887, 56.556595, 58.984707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.023277, 56.933395, 59.026398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666871, 0.144967, 0.730936,
		0.673431, 0.302691, -0.674440,
		-0.319019, 0.941999, 0.104230,
		69.927574, 57.215996, 59.057667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.593918, 56.899605, 59.445583>,  <70.150887, 56.556595, 58.984707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.593918, 56.899605, 59.445583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.394661, 57.242241, 59.391769>,  <70.275108, 57.447823, 59.359482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.394661, 57.242241, 59.391769>,  <70.593918, 56.899605, 59.445583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.394661, 57.242241, 59.391769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535832, 0.426090, 0.728925,
		0.681715, 0.291023, -0.671245,
		-0.498145, 0.856594, -0.134532,
		70.245216, 57.499218, 59.351410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.122955, 57.455460, 59.513996>,  <70.593918, 56.899605, 59.445583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.122955, 57.455460, 59.513996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.757187, 57.558170, 59.639160>,  <70.537727, 57.619797, 59.714256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.757187, 57.558170, 59.639160>,  <71.122955, 57.455460, 59.513996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.757187, 57.558170, 59.639160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379884, 0.277482, 0.882435,
		0.139760, 0.925781, -0.351278,
		-0.914415, 0.256774, 0.312908,
		70.482864, 57.635204, 59.733032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.871925, 57.752823, 59.622799>,  <71.122955, 57.455460, 59.513996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.871925, 57.752823, 59.622799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.019264, 58.122635, 59.661934>,  <72.107666, 58.344521, 59.685413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.019264, 58.122635, 59.661934>,  <71.871925, 57.752823, 59.622799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.019264, 58.122635, 59.661934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429739, 0.075996, 0.899750,
		0.824410, -0.373456, 0.425299,
		0.368338, 0.924530, 0.097837,
		72.129768, 58.399994, 59.691284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.269737, 57.837746, 60.324184>,  <71.871925, 57.752823, 59.622799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.269737, 57.837746, 60.324184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.050644, 58.124218, 60.151176>,  <71.919189, 58.296101, 60.047371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.050644, 58.124218, 60.151176>,  <72.269737, 57.837746, 60.324184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.050644, 58.124218, 60.151176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643186, -0.029824, 0.765129,
		0.535070, 0.697279, 0.476972,
		-0.547733, 0.716179, -0.432522,
		71.886322, 58.339073, 60.021420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.081108, 58.290066, 60.831821>,  <72.269737, 57.837746, 60.324184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.081108, 58.290066, 60.831821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.786819, 58.356628, 60.569214>,  <71.610245, 58.396564, 60.411648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.786819, 58.356628, 60.569214>,  <72.081108, 58.290066, 60.831821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.786819, 58.356628, 60.569214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674651, -0.094697, 0.732037,
		0.059645, 0.981499, 0.181936,
		-0.735723, 0.166406, -0.656521,
		71.566101, 58.406551, 60.372257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.818237, 58.097080, 60.929470>,  <72.081108, 58.290066, 60.831821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.818237, 58.097080, 60.929470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.950562, 57.802834, 60.693016>,  <73.029953, 57.626286, 60.551144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.950562, 57.802834, 60.693016>,  <72.818237, 58.097080, 60.929470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.950562, 57.802834, 60.693016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902203, 0.430232, -0.030500,
		0.276761, -0.523233, 0.805996,
		0.330807, -0.735613, -0.591134,
		73.049805, 57.582150, 60.515675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
