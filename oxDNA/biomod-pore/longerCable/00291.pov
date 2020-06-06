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
	<24.700279, 35.062943, 35.004551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.469023, 34.762753, 34.876461>,  <24.330269, 34.582638, 34.799606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.469023, 34.762753, 34.876461>,  <24.700279, 35.062943, 35.004551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.469023, 34.762753, 34.876461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554703, -0.073690, -0.828779,
		0.598379, -0.656780, 0.458893,
		-0.578141, -0.750473, -0.320223,
		24.295580, 34.537609, 34.780396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.445166, 35.056713, 35.001404>,  <24.700279, 35.062943, 35.004551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.445166, 35.056713, 35.001404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.786085, 34.862801, 34.922848>,  <25.990637, 34.746452, 34.875713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.786085, 34.862801, 34.922848>,  <25.445166, 35.056713, 35.001404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.786085, 34.862801, 34.922848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452726, 0.871776, -0.187204,
		0.261959, 0.070645, 0.962490,
		0.852301, -0.484784, -0.196387,
		26.041775, 34.717365, 34.863934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.959192, 35.405682, 35.327423>,  <25.445166, 35.056713, 35.001404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.959192, 35.405682, 35.327423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.159243, 35.203045, 35.046501>,  <26.279272, 35.081463, 34.877949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.159243, 35.203045, 35.046501>,  <25.959192, 35.405682, 35.327423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.159243, 35.203045, 35.046501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508663, 0.828219, -0.235192,
		0.700812, -0.239612, 0.671899,
		0.500125, -0.506595, -0.702308,
		26.309280, 35.051067, 34.835808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.639086, 35.652027, 35.326202>,  <25.959192, 35.405682, 35.327423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.639086, 35.652027, 35.326202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616739, 35.477013, 34.967216>,  <26.603333, 35.372002, 34.751827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616739, 35.477013, 34.967216>,  <26.639086, 35.652027, 35.326202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.616739, 35.477013, 34.967216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445011, 0.793734, -0.414670,
		0.893781, -0.422545, 0.150370,
		-0.055864, -0.437541, -0.897462,
		26.599979, 35.345749, 34.697979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.359455, 35.631214, 35.055935>,  <26.639086, 35.652027, 35.326202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.359455, 35.631214, 35.055935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.100388, 35.597530, 34.753033>,  <26.944946, 35.577320, 34.571293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.100388, 35.597530, 34.753033>,  <27.359455, 35.631214, 35.055935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.100388, 35.597530, 34.753033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452983, 0.756590, -0.471570,
		0.612643, -0.648444, -0.451873,
		-0.647669, -0.084213, -0.757254,
		26.906088, 35.572266, 34.525856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769915, 35.627163, 34.507710>,  <27.359455, 35.631214, 35.055935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769915, 35.627163, 34.507710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.421366, 35.697453, 34.324482>,  <27.212236, 35.739628, 34.214546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.421366, 35.697453, 34.324482>,  <27.769915, 35.627163, 34.507710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.421366, 35.697453, 34.324482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438725, 0.697010, -0.567184,
		0.219607, -0.695195, -0.684453,
		-0.871374, 0.175729, -0.458068,
		27.159954, 35.750172, 34.187061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874758, 35.505119, 33.719364>,  <27.769915, 35.627163, 34.507710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874758, 35.505119, 33.719364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.576893, 35.764629, 33.782059>,  <27.398174, 35.920338, 33.819675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.576893, 35.764629, 33.782059>,  <27.874758, 35.505119, 33.719364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.576893, 35.764629, 33.782059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514852, 0.707792, -0.483692,
		-0.424742, -0.279493, -0.861091,
		-0.744662, 0.648778, 0.156732,
		27.353495, 35.959263, 33.829079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.655294, 35.784492, 33.069935>,  <27.874758, 35.505119, 33.719364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.655294, 35.784492, 33.069935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.612623, 36.047688, 33.368107>,  <27.587021, 36.205605, 33.547012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.612623, 36.047688, 33.368107>,  <27.655294, 35.784492, 33.069935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.612623, 36.047688, 33.368107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570234, 0.654651, -0.496251,
		-0.814526, 0.372132, -0.445046,
		-0.106679, 0.657990, 0.745432,
		27.580620, 36.245083, 33.591736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.359364, 36.472076, 32.839233>,  <27.655294, 35.784492, 33.069935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.359364, 36.472076, 32.839233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633715, 36.491844, 33.129646>,  <27.798326, 36.503704, 33.303894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633715, 36.491844, 33.129646>,  <27.359364, 36.472076, 32.839233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.633715, 36.491844, 33.129646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597948, 0.530358, -0.600981,
		-0.414761, 0.846332, 0.334209,
		0.685880, 0.049424, 0.726034,
		27.839479, 36.506672, 33.347458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.602585, 37.166077, 32.857033>,  <27.359364, 36.472076, 32.839233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.602585, 37.166077, 32.857033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.887440, 36.978745, 33.066235>,  <28.058352, 36.866344, 33.191753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.887440, 36.978745, 33.066235>,  <27.602585, 37.166077, 32.857033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.887440, 36.978745, 33.066235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702041, 0.473796, -0.531654,
		0.001193, 0.745778, 0.666193,
		0.712135, -0.468329, 0.523002,
		28.101080, 36.838245, 33.223137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.030561, 37.699142, 33.149319>,  <27.602585, 37.166077, 32.857033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.030561, 37.699142, 33.149319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.235165, 37.356518, 33.122025>,  <28.357925, 37.150944, 33.105648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.235165, 37.356518, 33.122025>,  <28.030561, 37.699142, 33.149319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.235165, 37.356518, 33.122025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788072, 0.499291, -0.360072,
		0.342496, 0.130403, 0.930426,
		0.511507, -0.856565, -0.068239,
		28.388617, 37.099548, 33.101551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660223, 37.990986, 33.017899>,  <28.030561, 37.699142, 33.149319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.660223, 37.990986, 33.017899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750004, 37.601604, 32.999943>,  <28.803873, 37.367977, 32.989170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750004, 37.601604, 32.999943>,  <28.660223, 37.990986, 33.017899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750004, 37.601604, 32.999943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896414, 0.224317, -0.382263,
		0.382183, 0.045561, 0.922963,
		0.224453, -0.973451, -0.044888,
		28.817339, 37.309570, 32.986477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.834850, 37.608673, 32.454823>,  <28.660223, 37.990986, 33.017899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.834850, 37.608673, 32.454823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093351, 37.772556, 32.197296>,  <29.248453, 37.870888, 32.042782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093351, 37.772556, 32.197296>,  <28.834850, 37.608673, 32.454823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093351, 37.772556, 32.197296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478777, 0.439276, 0.760138,
		0.594246, -0.799485, 0.087725,
		0.646254, 0.409707, -0.643813,
		29.287228, 37.895470, 32.004150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248014, 37.067936, 32.223244>,  <28.834850, 37.608673, 32.454823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.248014, 37.067936, 32.223244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365669, 36.898434, 32.565918>,  <29.436262, 36.796730, 32.771523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365669, 36.898434, 32.565918>,  <29.248014, 37.067936, 32.223244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365669, 36.898434, 32.565918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951996, -0.050389, 0.301935,
		-0.084781, -0.904370, -0.418242,
		0.294136, -0.423763, 0.856685,
		29.453911, 36.771305, 32.822926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.962181, 36.357891, 32.491821>,  <29.248014, 37.067936, 32.223244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.962181, 36.357891, 32.491821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.078403, 36.564846, 32.813789>,  <29.148136, 36.689018, 33.006969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.078403, 36.564846, 32.813789>,  <28.962181, 36.357891, 32.491821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078403, 36.564846, 32.813789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933973, -0.029525, 0.356121,
		0.208017, -0.855243, 0.474645,
		0.290556, 0.517385, 0.804916,
		29.165571, 36.720062, 33.055264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.812553, 35.977169, 33.073544>,  <28.962181, 36.357891, 32.491821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.812553, 35.977169, 33.073544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.795118, 36.358982, 33.191505>,  <28.784657, 36.588070, 33.262283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.795118, 36.358982, 33.191505>,  <28.812553, 35.977169, 33.073544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.795118, 36.358982, 33.191505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915541, -0.156310, 0.370609,
		0.399855, -0.253845, 0.880726,
		-0.043589, 0.954531, 0.294907,
		28.782042, 36.645340, 33.279976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.951813, 36.105907, 33.830757>,  <28.812553, 35.977169, 33.073544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.951813, 36.105907, 33.830757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697203, 36.353626, 33.646885>,  <28.544436, 36.502258, 33.536560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697203, 36.353626, 33.646885>,  <28.951813, 36.105907, 33.830757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697203, 36.353626, 33.646885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756875, -0.387024, 0.526642,
		0.148239, 0.683144, 0.715080,
		-0.636526, 0.619295, -0.459682,
		28.506245, 36.539413, 33.508980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.747070, 36.560486, 34.295380>,  <28.951813, 36.105907, 33.830757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.747070, 36.560486, 34.295380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469101, 36.536110, 34.008781>,  <28.302319, 36.521484, 33.836823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469101, 36.536110, 34.008781>,  <28.747070, 36.560486, 34.295380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.469101, 36.536110, 34.008781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636683, -0.410993, 0.652472,
		-0.334237, 0.909600, 0.246808,
		-0.694924, -0.060942, -0.716496,
		28.260624, 36.517826, 33.793831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133423, 36.707489, 34.618752>,  <28.747070, 36.560486, 34.295380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.133423, 36.707489, 34.618752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.040089, 36.494247, 34.293457>,  <27.984087, 36.366302, 34.098282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.040089, 36.494247, 34.293457>,  <28.133423, 36.707489, 34.618752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.040089, 36.494247, 34.293457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798570, -0.372133, 0.473078,
		-0.554833, 0.759811, -0.338891,
		-0.233337, -0.533108, -0.813234,
		27.970087, 36.334316, 34.049488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.492584, 36.889599, 34.386162>,  <28.133423, 36.707489, 34.618752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.492584, 36.889599, 34.386162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.609842, 36.508488, 34.354473>,  <27.680197, 36.279819, 34.335461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.609842, 36.508488, 34.354473>,  <27.492584, 36.889599, 34.386162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.609842, 36.508488, 34.354473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630126, -0.254863, 0.733475,
		-0.719031, -0.165095, -0.675084,
		0.293147, -0.952779, -0.079224,
		27.697786, 36.222652, 34.330708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.852177, 37.020363, 34.112007>,  <27.492584, 36.889599, 34.386162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.852177, 37.020363, 34.112007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.968719, 36.756218, 33.835159>,  <27.038645, 36.597729, 33.669052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.968719, 36.756218, 33.835159>,  <26.852177, 37.020363, 34.112007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.968719, 36.756218, 33.835159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487033, -0.725118, 0.486829,
		-0.823353, 0.195244, -0.532888,
		0.291356, -0.660367, -0.692118,
		27.056126, 36.558109, 33.627525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.294146, 36.653130, 34.026821>,  <26.852177, 37.020363, 34.112007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.294146, 36.653130, 34.026821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.611374, 36.439209, 33.910187>,  <26.801710, 36.310856, 33.840206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.611374, 36.439209, 33.910187>,  <26.294146, 36.653130, 34.026821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.611374, 36.439209, 33.910187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395141, -0.815999, 0.421911,
		-0.463577, -0.219386, -0.858467,
		0.793070, -0.534804, -0.291590,
		26.849295, 36.278767, 33.822708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.055008, 36.102123, 33.621941>,  <26.294146, 36.653130, 34.026821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.055008, 36.102123, 33.621941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397186, 35.979969, 33.789249>,  <26.602493, 35.906677, 33.889633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397186, 35.979969, 33.789249>,  <26.055008, 36.102123, 33.621941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.397186, 35.979969, 33.789249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476187, -0.781341, 0.403425,
		0.203612, -0.544284, -0.813816,
		0.855446, -0.305387, 0.418271,
		26.653820, 35.888351, 33.914730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.620962, 35.576706, 33.900497>,  <26.055008, 36.102123, 33.621941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.620962, 35.576706, 33.900497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.418118, 35.913551, 33.973911>,  <25.296412, 36.115658, 34.017960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.418118, 35.913551, 33.973911>,  <25.620962, 35.576706, 33.900497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.418118, 35.913551, 33.973911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404321, 0.420494, -0.812225,
		-0.761160, -0.337681, -0.553721,
		-0.507110, 0.842114, 0.183531,
		25.265985, 36.166187, 34.028969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.114891, 35.395527, 33.513683>,  <25.620962, 35.576706, 33.900497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.114891, 35.395527, 33.513683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.343853, 35.473366, 33.832302>,  <26.481230, 35.520069, 34.023472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.343853, 35.473366, 33.832302>,  <26.114891, 35.395527, 33.513683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.343853, 35.473366, 33.832302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289000, -0.861218, 0.418070,
		0.767353, -0.469507, -0.436729,
		0.572406, 0.194593, 0.796546,
		26.515575, 35.531742, 34.071266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.441128, 34.780350, 33.534340>,  <26.114891, 35.395527, 33.513683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.441128, 34.780350, 33.534340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.515375, 34.938713, 33.894073>,  <26.559923, 35.033733, 34.109913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.515375, 34.938713, 33.894073>,  <26.441128, 34.780350, 33.534340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.515375, 34.938713, 33.894073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255108, -0.864439, 0.433203,
		0.948929, -0.309837, -0.059455,
		0.185617, 0.395912, 0.899333,
		26.571060, 35.057487, 34.163872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.985838, 34.368759, 33.935486>,  <26.441128, 34.780350, 33.534340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.985838, 34.368759, 33.935486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.783424, 34.579529, 34.208626>,  <26.661976, 34.705990, 34.372509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.783424, 34.579529, 34.208626>,  <26.985838, 34.368759, 33.935486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.783424, 34.579529, 34.208626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244412, -0.846844, 0.472353,
		0.827160, 0.072130, 0.557317,
		-0.506032, 0.526927, 0.682847,
		26.631615, 34.737606, 34.413479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.248188, 34.163548, 34.566238>,  <26.985838, 34.368759, 33.935486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.248188, 34.163548, 34.566238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865841, 34.280849, 34.573414>,  <26.636433, 34.351231, 34.577717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865841, 34.280849, 34.573414>,  <27.248188, 34.163548, 34.566238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.865841, 34.280849, 34.573414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258749, -0.869175, 0.421406,
		0.139167, 0.398168, 0.906694,
		-0.955867, 0.293252, 0.017936,
		26.579081, 34.368824, 34.578796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.967731, 34.442684, 34.661133>,  <27.248188, 34.163548, 34.566238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.967731, 34.442684, 34.661133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304659, 34.432491, 34.445782>,  <28.506815, 34.426376, 34.316570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304659, 34.432491, 34.445782>,  <27.967731, 34.442684, 34.661133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304659, 34.432491, 34.445782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230843, -0.885573, 0.403078,
		-0.487047, -0.463801, -0.740050,
		0.842316, -0.025483, -0.538381,
		28.557354, 34.424847, 34.284267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.968390, 33.790264, 34.305790>,  <27.967731, 34.442684, 34.661133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.968390, 33.790264, 34.305790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.344879, 33.921677, 34.337189>,  <28.570774, 34.000523, 34.356030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.344879, 33.921677, 34.337189>,  <27.968390, 33.790264, 34.305790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.344879, 33.921677, 34.337189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246305, -0.826573, 0.506075,
		0.231143, -0.456997, -0.858910,
		0.941226, 0.328529, 0.078496,
		28.627247, 34.020237, 34.360737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369204, 33.271835, 34.018806>,  <27.968390, 33.790264, 34.305790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369204, 33.271835, 34.018806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592728, 33.473446, 34.282227>,  <28.726841, 33.594410, 34.440281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592728, 33.473446, 34.282227>,  <28.369204, 33.271835, 34.018806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592728, 33.473446, 34.282227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217354, -0.855366, 0.470220,
		0.800306, -0.119624, -0.587537,
		0.558809, 0.504023, 0.658554,
		28.760370, 33.624653, 34.479794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.947655, 32.952454, 34.025967>,  <28.369204, 33.271835, 34.018806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.947655, 32.952454, 34.025967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903049, 33.103867, 34.393505>,  <28.876286, 33.194714, 34.614029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903049, 33.103867, 34.393505>,  <28.947655, 32.952454, 34.025967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.903049, 33.103867, 34.393505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282203, -0.874485, 0.394510,
		0.952852, 0.303294, -0.009307,
		-0.111514, 0.378536, 0.918844,
		28.869595, 33.217426, 34.669159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464741, 32.697701, 34.428181>,  <28.947655, 32.952454, 34.025967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464741, 32.697701, 34.428181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173632, 32.772545, 34.692101>,  <28.998966, 32.817451, 34.850452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173632, 32.772545, 34.692101>,  <29.464741, 32.697701, 34.428181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173632, 32.772545, 34.692101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004457, -0.960753, 0.277371,
		0.685805, 0.204804, 0.698375,
		-0.727772, 0.187109, 0.659802,
		28.955299, 32.828678, 34.890041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603050, 32.440212, 35.040184>,  <29.464741, 32.697701, 34.428181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603050, 32.440212, 35.040184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.204678, 32.470291, 35.060040>,  <28.965654, 32.488338, 35.071953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.204678, 32.470291, 35.060040>,  <29.603050, 32.440212, 35.040184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204678, 32.470291, 35.060040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065797, -0.983337, 0.169469,
		0.061557, 0.165513, 0.984285,
		-0.995932, 0.075195, 0.049641,
		28.905897, 32.492851, 35.074932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279663, 32.159740, 35.589329>,  <29.603050, 32.440212, 35.040184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.279663, 32.159740, 35.589329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.005562, 32.119770, 35.300762>,  <28.841101, 32.095787, 35.127621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.005562, 32.119770, 35.300762>,  <29.279663, 32.159740, 35.589329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.005562, 32.119770, 35.300762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007165, -0.991419, 0.130524,
		-0.728270, 0.084273, 0.680089,
		-0.685253, -0.099930, -0.721417,
		28.799986, 32.089790, 35.084335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.007957, 31.879610, 36.180798>,  <29.279663, 32.159740, 35.589329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.007957, 31.879610, 36.180798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.753088, 32.030083, 35.911724>,  <28.600166, 32.120365, 35.750282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.753088, 32.030083, 35.911724>,  <29.007957, 31.879610, 36.180798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.753088, 32.030083, 35.911724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575903, -0.812418, 0.091179,
		-0.512198, 0.445495, 0.734294,
		-0.637173, 0.376180, -0.672681,
		28.561935, 32.142937, 35.709919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.312267, 31.910358, 36.523315>,  <29.007957, 31.879610, 36.180798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.312267, 31.910358, 36.523315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.315733, 31.863335, 36.126102>,  <28.317812, 31.835119, 35.887775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.315733, 31.863335, 36.126102>,  <28.312267, 31.910358, 36.523315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.315733, 31.863335, 36.126102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364238, -0.925213, 0.106354,
		-0.931265, 0.360777, -0.050838,
		0.008666, -0.117560, -0.993028,
		28.318333, 31.828066, 35.828194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.628752, 31.656719, 36.350563>,  <28.312267, 31.910358, 36.523315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.628752, 31.656719, 36.350563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822304, 31.607512, 36.003986>,  <27.938435, 31.577988, 35.796040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822304, 31.607512, 36.003986>,  <27.628752, 31.656719, 36.350563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.822304, 31.607512, 36.003986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416759, -0.902986, -0.104538,
		-0.769528, 0.411683, -0.488204,
		0.483878, -0.123019, -0.866446,
		27.967466, 31.570606, 35.744053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.086781, 31.465048, 35.835758>,  <27.628752, 31.656719, 36.350563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.086781, 31.465048, 35.835758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.443466, 31.297075, 35.768223>,  <27.657476, 31.196291, 35.727699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.443466, 31.297075, 35.768223>,  <27.086781, 31.465048, 35.835758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.443466, 31.297075, 35.768223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441066, -0.889944, -0.116019,
		-0.101539, 0.177925, -0.978791,
		0.891712, -0.419931, -0.168840,
		27.710979, 31.171097, 35.717571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197830, 31.137545, 35.098385>,  <27.086781, 31.465048, 35.835758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.197830, 31.137545, 35.098385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405674, 30.969604, 35.396038>,  <27.530380, 30.868839, 35.574631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405674, 30.969604, 35.396038>,  <27.197830, 31.137545, 35.098385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.405674, 30.969604, 35.396038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469288, -0.868045, -0.162073,
		0.713985, -0.264998, -0.648075,
		0.519609, -0.419851, 0.744131,
		27.561556, 30.843649, 35.619278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.658749, 30.399385, 34.924286>,  <27.197830, 31.137545, 35.098385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.658749, 30.399385, 34.924286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505367, 30.429585, 35.292473>,  <27.413338, 30.447704, 35.513386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505367, 30.429585, 35.292473>,  <27.658749, 30.399385, 34.924286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505367, 30.429585, 35.292473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600215, -0.777854, -0.186240,
		0.701930, -0.623894, 0.343585,
		-0.383453, 0.075497, 0.920469,
		27.390331, 30.452234, 35.568615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.310270, 30.547272, 35.161854>,  <27.658749, 30.399385, 34.924286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.310270, 30.547272, 35.161854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.534586, 30.859465, 35.272385>,  <28.669176, 31.046782, 35.338703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.534586, 30.859465, 35.272385>,  <28.310270, 30.547272, 35.161854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.534586, 30.859465, 35.272385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560429, -0.603493, 0.567200,
		0.609454, -0.163217, -0.775839,
		0.560790, 0.780485, 0.276330,
		28.702824, 31.093611, 35.355282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032431, 30.499794, 35.001598>,  <28.310270, 30.547272, 35.161854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.032431, 30.499794, 35.001598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.990641, 30.716885, 35.334953>,  <28.965567, 30.847139, 35.534966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.990641, 30.716885, 35.334953>,  <29.032431, 30.499794, 35.001598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.990641, 30.716885, 35.334953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505185, -0.692849, 0.514537,
		0.856664, 0.474770, -0.201793,
		-0.104475, 0.542728, 0.833386,
		28.959299, 30.879704, 35.584969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722372, 31.107523, 34.770290>,  <29.032431, 30.499794, 35.001598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722372, 31.107523, 34.770290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508099, 31.258001, 35.072685>,  <28.379534, 31.348288, 35.254124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508099, 31.258001, 35.072685>,  <28.722372, 31.107523, 34.770290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.508099, 31.258001, 35.072685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214868, 0.926535, -0.308812,
		-0.816624, -0.002988, -0.577162,
		-0.535684, 0.376197, 0.755989,
		28.347393, 31.370861, 35.299480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351057, 31.678593, 34.536961>,  <28.722372, 31.107523, 34.770290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351057, 31.678593, 34.536961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352667, 31.718369, 34.934975>,  <28.353634, 31.742235, 35.173782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352667, 31.718369, 34.934975>,  <28.351057, 31.678593, 34.536961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.352667, 31.718369, 34.934975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161731, 0.981879, -0.098780,
		-0.986827, 0.161326, -0.012129,
		0.004027, 0.099441, 0.995035,
		28.353874, 31.748201, 35.233486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.791407, 32.170288, 34.763901>,  <28.351057, 31.678593, 34.536961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.791407, 32.170288, 34.763901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.106062, 32.139370, 35.008923>,  <28.294855, 32.120819, 35.155937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.106062, 32.139370, 35.008923>,  <27.791407, 32.170288, 34.763901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.106062, 32.139370, 35.008923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226289, 0.959188, -0.169563,
		-0.574450, 0.271999, 0.772025,
		0.786638, -0.077295, 0.612556,
		28.342054, 32.116180, 35.192688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.666323, 32.631096, 35.320087>,  <27.791407, 32.170288, 34.763901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.666323, 32.631096, 35.320087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.057943, 32.587593, 35.251236>,  <28.292915, 32.561493, 35.209927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.057943, 32.587593, 35.251236>,  <27.666323, 32.631096, 35.320087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.057943, 32.587593, 35.251236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087711, 0.988212, -0.125477,
		0.183743, 0.107751, 0.977051,
		0.979053, -0.108754, -0.172126,
		28.351660, 32.554966, 35.199596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991575, 33.228970, 35.658024>,  <27.666323, 32.631096, 35.320087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.991575, 33.228970, 35.658024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.287531, 33.103134, 35.420166>,  <28.465105, 33.027634, 35.277451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.287531, 33.103134, 35.420166>,  <27.991575, 33.228970, 35.658024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.287531, 33.103134, 35.420166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299067, 0.945589, -0.128142,
		0.602598, -0.083026, 0.793714,
		0.739888, -0.314592, -0.594640,
		28.509497, 33.008755, 35.241776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638212, 33.494102, 35.914314>,  <27.991575, 33.228970, 35.658024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638212, 33.494102, 35.914314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676416, 33.419933, 35.523113>,  <28.699339, 33.375431, 35.288391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676416, 33.419933, 35.523113>,  <28.638212, 33.494102, 35.914314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676416, 33.419933, 35.523113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201081, 0.965837, -0.163479,
		0.974907, -0.181045, 0.129532,
		0.095509, -0.185423, -0.978006,
		28.705069, 33.364307, 35.229710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.249561, 33.674820, 35.684727>,  <28.638212, 33.494102, 35.914314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.249561, 33.674820, 35.684727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.016142, 33.724495, 35.363716>,  <28.876091, 33.754299, 35.171108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.016142, 33.724495, 35.363716>,  <29.249561, 33.674820, 35.684727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.016142, 33.724495, 35.363716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310936, 0.947097, -0.079535,
		0.750194, -0.295947, -0.591290,
		-0.583547, 0.124187, -0.802528,
		28.841078, 33.761749, 35.122959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304937, 34.483521, 35.517872>,  <29.249561, 33.674820, 35.684727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.304937, 34.483521, 35.517872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.171906, 34.265823, 35.209797>,  <29.092087, 34.135204, 35.024952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.171906, 34.265823, 35.209797>,  <29.304937, 34.483521, 35.517872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.171906, 34.265823, 35.209797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054956, 0.804103, -0.591944,
		0.941472, -0.239195, -0.237519,
		-0.332580, -0.544246, -0.770186,
		29.072132, 34.102551, 34.978741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.824179, 34.245735, 34.936493>,  <29.304937, 34.483521, 35.517872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.824179, 34.245735, 34.936493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452919, 34.348591, 34.828850>,  <29.230164, 34.410305, 34.764263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452919, 34.348591, 34.828850>,  <29.824179, 34.245735, 34.936493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452919, 34.348591, 34.828850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365395, 0.767205, -0.527145,
		0.070911, -0.587600, -0.806039,
		-0.928148, 0.257143, -0.269109,
		29.174475, 34.425735, 34.748116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957020, 34.238617, 34.356541>,  <29.824179, 34.245735, 34.936493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957020, 34.238617, 34.356541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646214, 34.482830, 34.417858>,  <29.459730, 34.629356, 34.454647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646214, 34.482830, 34.417858>,  <29.957020, 34.238617, 34.356541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646214, 34.482830, 34.417858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309723, 0.582811, -0.751268,
		-0.548014, -0.536267, -0.641948,
		-0.777015, 0.610531, 0.153295,
		29.413109, 34.665989, 34.463848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474863, 34.234867, 33.811928>,  <29.957020, 34.238617, 34.356541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.474863, 34.234867, 33.811928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544027, 34.575932, 34.009136>,  <29.585526, 34.780571, 34.127460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544027, 34.575932, 34.009136>,  <29.474863, 34.234867, 33.811928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544027, 34.575932, 34.009136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621243, 0.294013, -0.726370,
		-0.764303, 0.431882, -0.478873,
		0.172911, 0.852663, 0.493018,
		29.595901, 34.831730, 34.157043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.990742, 34.383324, 33.332886>,  <29.474863, 34.234867, 33.811928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.990742, 34.383324, 33.332886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666969, 34.608257, 33.400536>,  <29.472706, 34.743217, 33.441128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666969, 34.608257, 33.400536>,  <29.990742, 34.383324, 33.332886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666969, 34.608257, 33.400536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586828, -0.764152, -0.267777,
		-0.021341, -0.315996, 0.948521,
		-0.809430, 0.562333, 0.169128,
		29.424141, 34.776958, 33.451275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575108, 33.941711, 32.991879>,  <29.990742, 34.383324, 33.332886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575108, 33.941711, 32.991879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843607, 33.850044, 32.709911>,  <31.004707, 33.795044, 32.540733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843607, 33.850044, 32.709911>,  <30.575108, 33.941711, 32.991879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843607, 33.850044, 32.709911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410921, 0.676441, -0.611205,
		0.616901, 0.699937, 0.359892,
		0.671250, -0.229166, -0.704916,
		31.044983, 33.781296, 32.498436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711369, 34.559372, 32.738605>,  <30.575108, 33.941711, 32.991879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711369, 34.559372, 32.738605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.824211, 34.288673, 32.466595>,  <30.891916, 34.126255, 32.303391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.824211, 34.288673, 32.466595>,  <30.711369, 34.559372, 32.738605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.824211, 34.288673, 32.466595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488577, 0.508672, -0.708904,
		0.825656, 0.532231, -0.187143,
		0.282106, -0.676745, -0.680024,
		30.908842, 34.085651, 32.262589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105055, 34.865284, 32.232468>,  <30.711369, 34.559372, 32.738605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105055, 34.865284, 32.232468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880981, 34.557949, 32.108627>,  <30.746538, 34.373547, 32.034321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880981, 34.557949, 32.108627>,  <31.105055, 34.865284, 32.232468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880981, 34.557949, 32.108627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521290, 0.617441, -0.589088,
		0.643780, -0.168603, -0.746405,
		-0.560182, -0.768336, -0.309605,
		30.712927, 34.327450, 32.015747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718706, 35.112228, 31.700163>,  <31.105055, 34.865284, 32.232468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718706, 35.112228, 31.700163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346645, 35.225258, 31.606380>,  <30.123409, 35.293076, 31.550112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346645, 35.225258, 31.606380>,  <30.718706, 35.112228, 31.700163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346645, 35.225258, 31.606380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197145, -0.154344, -0.968149,
		-0.309765, -0.946746, 0.087854,
		-0.930150, 0.282579, -0.234456,
		30.067600, 35.310032, 31.536043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704742, 34.746815, 31.086092>,  <30.718706, 35.112228, 31.700163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704742, 34.746815, 31.086092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.331036, 34.888691, 31.071447>,  <30.106812, 34.973816, 31.062660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.331036, 34.888691, 31.071447>,  <30.704742, 34.746815, 31.086092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.331036, 34.888691, 31.071447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081952, -0.313513, -0.946041,
		-0.347032, -0.880854, 0.321972,
		-0.934266, 0.354693, -0.036611,
		30.050756, 34.995098, 31.060465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199993, 34.274662, 30.891258>,  <30.704742, 34.746815, 31.086092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199993, 34.274662, 30.891258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.012808, 34.611748, 30.784790>,  <29.900497, 34.813999, 30.720909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.012808, 34.611748, 30.784790>,  <30.199993, 34.274662, 30.891258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.012808, 34.611748, 30.784790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095336, -0.347563, -0.932797,
		-0.878591, -0.411140, 0.242988,
		-0.467964, 0.842713, -0.266169,
		29.872419, 34.864563, 30.704939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106255, 33.696922, 31.439121>,  <30.199993, 34.274662, 30.891258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106255, 33.696922, 31.439121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435635, 33.896202, 31.330509>,  <30.633263, 34.015770, 31.265341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435635, 33.896202, 31.330509>,  <30.106255, 33.696922, 31.439121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435635, 33.896202, 31.330509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447244, -0.275441, 0.850944,
		0.349147, -0.822150, -0.449628,
		0.823450, 0.498197, -0.271532,
		30.682669, 34.045662, 31.249050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.641741, 33.160168, 31.399033>,  <30.106255, 33.696922, 31.439121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.641741, 33.160168, 31.399033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732023, 33.541973, 31.476959>,  <30.786194, 33.771057, 31.523716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732023, 33.541973, 31.476959>,  <30.641741, 33.160168, 31.399033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732023, 33.541973, 31.476959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659325, -0.296889, 0.690758,
		0.717180, -0.027461, -0.696347,
		0.225707, 0.954517, 0.194817,
		30.799736, 33.828327, 31.535404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288057, 33.267937, 31.296722>,  <30.641741, 33.160168, 31.399033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288057, 33.267937, 31.296722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.174805, 33.523567, 31.582777>,  <31.106853, 33.676945, 31.754410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.174805, 33.523567, 31.582777>,  <31.288057, 33.267937, 31.296722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.174805, 33.523567, 31.582777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743450, -0.324817, 0.584616,
		0.605902, 0.697191, -0.383154,
		-0.283134, 0.639076, 0.715134,
		31.089865, 33.715290, 31.797318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852371, 33.609409, 31.523121>,  <31.288057, 33.267937, 31.296722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852371, 33.609409, 31.523121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602119, 33.620647, 31.834967>,  <31.451967, 33.627388, 32.022076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602119, 33.620647, 31.834967>,  <31.852371, 33.609409, 31.523121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602119, 33.620647, 31.834967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742997, -0.283152, 0.606449,
		0.237785, 0.958664, 0.156277,
		-0.625630, 0.028091, 0.779614,
		31.414431, 33.629074, 32.068851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094223, 34.071709, 31.992704>,  <31.852371, 33.609409, 31.523121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094223, 34.071709, 31.992704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904350, 33.759632, 32.155666>,  <31.790426, 33.572388, 32.253445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904350, 33.759632, 32.155666>,  <32.094223, 34.071709, 31.992704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904350, 33.759632, 32.155666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802350, -0.193294, 0.564687,
		-0.361815, 0.594928, 0.717740,
		-0.474683, -0.780191, 0.407404,
		31.761946, 33.525574, 32.277889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412670, 34.017639, 31.289042>,  <32.094223, 34.071709, 31.992704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412670, 34.017639, 31.289042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590282, 34.356747, 31.173027>,  <32.696850, 34.560211, 31.103418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590282, 34.356747, 31.173027>,  <32.412670, 34.017639, 31.289042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590282, 34.356747, 31.173027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182822, -0.231164, -0.955583,
		-0.877162, 0.477333, 0.052348,
		0.444030, 0.847772, -0.290036,
		32.723492, 34.611076, 31.086016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272408, 34.118988, 30.581684>,  <32.412670, 34.017639, 31.289042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272408, 34.118988, 30.581684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553905, 34.400051, 30.623657>,  <32.722805, 34.568691, 30.648842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553905, 34.400051, 30.623657>,  <32.272408, 34.118988, 30.581684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553905, 34.400051, 30.623657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146187, 0.001322, -0.989256,
		-0.695251, 0.711522, -0.101790,
		0.703743, 0.702662, 0.104934,
		32.765030, 34.610851, 30.655138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179756, 34.623386, 29.971659>,  <32.272408, 34.118988, 30.581684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179756, 34.623386, 29.971659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547241, 34.691296, 30.114288>,  <32.767731, 34.732040, 30.199867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547241, 34.691296, 30.114288>,  <32.179756, 34.623386, 29.971659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547241, 34.691296, 30.114288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348339, 0.077089, -0.934193,
		-0.186091, 0.982463, 0.011683,
		0.918711, 0.169775, 0.356576,
		32.822853, 34.742229, 30.221262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455700, 35.236877, 29.648628>,  <32.179756, 34.623386, 29.971659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455700, 35.236877, 29.648628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776287, 35.025478, 29.760586>,  <32.968639, 34.898640, 29.827761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776287, 35.025478, 29.760586>,  <32.455700, 35.236877, 29.648628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776287, 35.025478, 29.760586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398407, 0.122799, -0.908951,
		0.446011, 0.840004, 0.308978,
		0.801465, -0.528501, 0.279893,
		33.016727, 34.866928, 29.844553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092175, 35.668491, 29.574034>,  <32.455700, 35.236877, 29.648628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092175, 35.668491, 29.574034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222996, 35.290497, 29.571615>,  <33.301487, 35.063702, 29.570164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222996, 35.290497, 29.571615>,  <33.092175, 35.668491, 29.574034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222996, 35.290497, 29.571615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460737, 0.165035, -0.872058,
		0.825082, 0.282421, 0.489365,
		0.327050, -0.944988, -0.006046,
		33.321110, 35.007000, 29.569801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721714, 35.843899, 29.148144>,  <33.092175, 35.668491, 29.574034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721714, 35.843899, 29.148144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664974, 35.448410, 29.167366>,  <33.630932, 35.211117, 29.178900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664974, 35.448410, 29.167366>,  <33.721714, 35.843899, 29.148144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664974, 35.448410, 29.167366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631756, -0.127793, -0.764561,
		0.762079, -0.078092, 0.642757,
		-0.141846, -0.988722, 0.048053,
		33.622421, 35.151794, 29.181782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363426, 35.509415, 29.167294>,  <33.721714, 35.843899, 29.148144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363426, 35.509415, 29.167294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134235, 35.212132, 29.029112>,  <33.996723, 35.033760, 28.946203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134235, 35.212132, 29.029112>,  <34.363426, 35.509415, 29.167294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134235, 35.212132, 29.029112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656293, -0.163602, -0.736555,
		0.490898, -0.648746, 0.581504,
		-0.572973, -0.743211, -0.345456,
		33.962345, 34.989170, 28.925474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856537, 34.978165, 29.033539>,  <34.363426, 35.509415, 29.167294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856537, 34.978165, 29.033539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518314, 34.910645, 28.830940>,  <34.315380, 34.870132, 28.709381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518314, 34.910645, 28.830940>,  <34.856537, 34.978165, 29.033539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518314, 34.910645, 28.830940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529426, -0.142748, -0.836260,
		0.068858, -0.975259, 0.210068,
		-0.845557, -0.168798, -0.506498,
		34.264648, 34.860004, 28.678991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948452, 34.386639, 28.638792>,  <34.856537, 34.978165, 29.033539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948452, 34.386639, 28.638792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641197, 34.573990, 28.464167>,  <34.456844, 34.686401, 28.359392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641197, 34.573990, 28.464167>,  <34.948452, 34.386639, 28.638792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641197, 34.573990, 28.464167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451574, -0.087082, -0.887974,
		-0.453926, -0.879225, -0.144617,
		-0.768135, 0.468380, -0.436564,
		34.410755, 34.714504, 28.333197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950539, 34.014545, 27.944103>,  <34.948452, 34.386639, 28.638792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950539, 34.014545, 27.944103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720577, 34.338676, 27.898764>,  <34.582600, 34.533157, 27.871561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720577, 34.338676, 27.898764>,  <34.950539, 34.014545, 27.944103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720577, 34.338676, 27.898764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219366, 0.019190, -0.975454,
		-0.788265, -0.585659, -0.188791,
		-0.574906, 0.810331, -0.113347,
		34.548107, 34.581776, 27.864759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476128, 33.935925, 27.359009>,  <34.950539, 34.014545, 27.944103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476128, 33.935925, 27.359009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508781, 34.331398, 27.409355>,  <34.528374, 34.568684, 27.439564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508781, 34.331398, 27.409355>,  <34.476128, 33.935925, 27.359009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508781, 34.331398, 27.409355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024501, 0.124259, -0.991947,
		-0.996361, 0.084057, -0.014081,
		0.081630, 0.988683, 0.125866,
		34.533272, 34.628002, 27.447115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126961, 34.128368, 26.889811>,  <34.476128, 33.935925, 27.359009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126961, 34.128368, 26.889811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332729, 34.458374, 26.983387>,  <34.456192, 34.656376, 27.039534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332729, 34.458374, 26.983387>,  <34.126961, 34.128368, 26.889811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332729, 34.458374, 26.983387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070212, 0.312411, -0.947348,
		-0.854657, 0.470912, 0.218638,
		0.514423, 0.825009, 0.233941,
		34.487057, 34.705875, 27.053570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723877, 34.679474, 26.522556>,  <34.126961, 34.128368, 26.889811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723877, 34.679474, 26.522556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102528, 34.792240, 26.585052>,  <34.329720, 34.859901, 26.622551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102528, 34.792240, 26.585052>,  <33.723877, 34.679474, 26.522556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102528, 34.792240, 26.585052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030104, 0.405292, -0.913691,
		-0.320910, 0.869632, 0.375176,
		0.946631, 0.281918, 0.156242,
		34.386517, 34.876816, 26.631926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686470, 35.315632, 26.230347>,  <33.723877, 34.679474, 26.522556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686470, 35.315632, 26.230347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075508, 35.229385, 26.265144>,  <34.308929, 35.177635, 26.286022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075508, 35.229385, 26.265144>,  <33.686470, 35.315632, 26.230347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075508, 35.229385, 26.265144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170641, 0.407820, -0.896975,
		0.157929, 0.887238, 0.433437,
		0.972595, -0.215621, 0.086992,
		34.367287, 35.164700, 26.291243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913300, 35.877644, 26.062283>,  <33.686470, 35.315632, 26.230347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913300, 35.877644, 26.062283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229465, 35.636585, 26.018337>,  <34.419163, 35.491951, 25.991970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229465, 35.636585, 26.018337>,  <33.913300, 35.877644, 26.062283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229465, 35.636585, 26.018337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231272, 0.459649, -0.857459,
		0.567241, 0.652337, 0.502687,
		0.790412, -0.602643, -0.109864,
		34.466591, 35.455791, 25.985378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416737, 36.295586, 26.126381>,  <33.913300, 35.877644, 26.062283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416737, 36.295586, 26.126381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556465, 35.981972, 25.921143>,  <34.640305, 35.793804, 25.797998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556465, 35.981972, 25.921143>,  <34.416737, 36.295586, 26.126381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556465, 35.981972, 25.921143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275277, 0.609302, -0.743622,
		0.895653, 0.118522, 0.428670,
		0.349325, -0.784030, -0.513097,
		34.661263, 35.746761, 25.767214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961586, 36.549019, 25.898090>,  <34.416737, 36.295586, 26.126381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961586, 36.549019, 25.898090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930473, 36.237366, 25.649284>,  <34.911808, 36.050373, 25.500000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930473, 36.237366, 25.649284>,  <34.961586, 36.549019, 25.898090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930473, 36.237366, 25.649284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307572, 0.574722, -0.758349,
		0.948340, -0.250299, 0.194938,
		-0.077779, -0.779131, -0.622017,
		34.907139, 36.003628, 25.462679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632690, 36.522312, 25.364845>,  <34.961586, 36.549019, 25.898090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632690, 36.522312, 25.364845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375362, 36.265060, 25.198706>,  <35.220966, 36.110710, 25.099022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375362, 36.265060, 25.198706>,  <35.632690, 36.522312, 25.364845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375362, 36.265060, 25.198706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015729, 0.531301, -0.847037,
		0.765434, -0.551451, -0.331682,
		-0.643322, -0.643134, -0.415349,
		35.182365, 36.072121, 25.074100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931404, 36.271664, 24.778862>,  <35.632690, 36.522312, 25.364845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931404, 36.271664, 24.778862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533520, 36.252110, 24.742725>,  <35.294788, 36.240379, 24.721043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533520, 36.252110, 24.742725>,  <35.931404, 36.271664, 24.778862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533520, 36.252110, 24.742725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064053, 0.392393, -0.917565,
		0.080303, -0.918498, -0.387186,
		-0.994710, -0.048883, -0.090343,
		35.235107, 36.237446, 24.715622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874855, 35.931526, 24.119196>,  <35.931404, 36.271664, 24.778862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874855, 35.931526, 24.119196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533363, 36.117905, 24.212185>,  <35.328468, 36.229733, 24.267979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533363, 36.117905, 24.212185>,  <35.874855, 35.931526, 24.119196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533363, 36.117905, 24.212185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059998, 0.531491, -0.844936,
		-0.517251, -0.707398, -0.481705,
		-0.853728, 0.465946, 0.232472,
		35.277245, 36.257687, 24.281927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385063, 35.790096, 23.557264>,  <35.874855, 35.931526, 24.119196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385063, 35.790096, 23.557264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261604, 36.127300, 23.733475>,  <35.187527, 36.329624, 23.839201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261604, 36.127300, 23.733475>,  <35.385063, 35.790096, 23.557264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261604, 36.127300, 23.733475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058277, 0.445507, -0.893380,
		-0.949389, -0.301414, -0.088378,
		-0.308651, 0.843014, 0.440525,
		35.169010, 36.380203, 23.865633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905739, 36.029137, 23.168076>,  <35.385063, 35.790096, 23.557264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905739, 36.029137, 23.168076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950497, 36.359032, 23.389811>,  <34.977352, 36.556969, 23.522852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950497, 36.359032, 23.389811>,  <34.905739, 36.029137, 23.168076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950497, 36.359032, 23.389811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003549, 0.557505, -0.830166,
		-0.993714, 0.094855, 0.059452,
		0.111890, 0.824737, 0.554337,
		34.984062, 36.606453, 23.556112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379845, 36.398708, 22.931496>,  <34.905739, 36.029137, 23.168076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379845, 36.398708, 22.931496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628716, 36.665035, 23.096214>,  <34.778038, 36.824833, 23.195045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628716, 36.665035, 23.096214>,  <34.379845, 36.398708, 22.931496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628716, 36.665035, 23.096214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188316, 0.637846, -0.746787,
		-0.759887, 0.387089, 0.522240,
		0.622181, 0.665819, 0.411796,
		34.815369, 36.864780, 23.219753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029488, 37.053864, 22.930183>,  <34.379845, 36.398708, 22.931496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029488, 37.053864, 22.930183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426998, 37.091110, 22.905754>,  <34.665504, 37.113457, 22.891096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426998, 37.091110, 22.905754>,  <34.029488, 37.053864, 22.930183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426998, 37.091110, 22.905754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106681, 0.638815, -0.761928,
		-0.031930, 0.763705, 0.644775,
		0.993781, 0.093113, -0.061076,
		34.725132, 37.119045, 22.887432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080353, 37.777229, 22.823767>,  <34.029488, 37.053864, 22.930183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080353, 37.777229, 22.823767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434002, 37.621086, 22.721050>,  <34.646191, 37.527401, 22.659420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434002, 37.621086, 22.721050>,  <34.080353, 37.777229, 22.823767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434002, 37.621086, 22.721050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170538, 0.781251, -0.600470,
		0.435017, 0.487098, 0.757295,
		0.884125, -0.390362, -0.256789,
		34.699238, 37.503979, 22.644014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425556, 38.326862, 22.681744>,  <34.080353, 37.777229, 22.823767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425556, 38.326862, 22.681744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663174, 38.051895, 22.514618>,  <34.805744, 37.886913, 22.414343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663174, 38.051895, 22.514618>,  <34.425556, 38.326862, 22.681744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663174, 38.051895, 22.514618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213238, 0.635373, -0.742180,
		0.775657, 0.351792, 0.524022,
		0.594042, -0.687419, -0.417816,
		34.841385, 37.845669, 22.389273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115532, 38.616817, 22.597092>,  <34.425556, 38.326862, 22.681744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115532, 38.616817, 22.597092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130848, 38.314182, 22.335981>,  <35.140038, 38.132603, 22.179316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130848, 38.314182, 22.335981>,  <35.115532, 38.616817, 22.597092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130848, 38.314182, 22.335981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416090, 0.605998, -0.677964,
		0.908517, -0.245656, 0.338009,
		0.038287, -0.756584, -0.652775,
		35.142334, 38.087208, 22.140148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781040, 38.617691, 22.421337>,  <35.115532, 38.616817, 22.597092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781040, 38.617691, 22.421337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624977, 38.397301, 22.126257>,  <35.531338, 38.265068, 21.949209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624977, 38.397301, 22.126257>,  <35.781040, 38.617691, 22.421337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624977, 38.397301, 22.126257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352868, 0.650549, -0.672511,
		0.850448, -0.522695, -0.059393,
		-0.390156, -0.550977, -0.737700,
		35.507931, 38.232006, 21.904947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260635, 38.584564, 21.880787>,  <35.781040, 38.617691, 22.421337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260635, 38.584564, 21.880787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914295, 38.510139, 21.695023>,  <35.706490, 38.465485, 21.583565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914295, 38.510139, 21.695023>,  <36.260635, 38.584564, 21.880787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914295, 38.510139, 21.695023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271769, 0.604445, -0.748858,
		0.420048, -0.774614, -0.472793,
		-0.865853, -0.186065, -0.464411,
		35.654541, 38.454319, 21.555698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397724, 38.535591, 21.146917>,  <36.260635, 38.584564, 21.880787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397724, 38.535591, 21.146917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016335, 38.646164, 21.195045>,  <35.787502, 38.712505, 21.223923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016335, 38.646164, 21.195045>,  <36.397724, 38.535591, 21.146917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016335, 38.646164, 21.195045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018715, 0.452597, -0.891519,
		-0.300896, -0.847788, -0.436712,
		-0.953473, 0.276428, 0.120318,
		35.730293, 38.729092, 21.231140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082489, 38.304989, 20.513445>,  <36.397724, 38.535591, 21.146917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082489, 38.304989, 20.513445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864815, 38.589714, 20.691069>,  <35.734211, 38.760548, 20.797642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864815, 38.589714, 20.691069>,  <36.082489, 38.304989, 20.513445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864815, 38.589714, 20.691069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197041, 0.622922, -0.757062,
		-0.815501, -0.324482, -0.479239,
		-0.544182, 0.711814, 0.444057,
		35.701561, 38.803257, 20.824286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673073, 38.579998, 20.044731>,  <36.082489, 38.304989, 20.513445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673073, 38.579998, 20.044731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689564, 38.866882, 20.322985>,  <35.699459, 39.039013, 20.489937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689564, 38.866882, 20.322985>,  <35.673073, 38.579998, 20.044731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689564, 38.866882, 20.322985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284249, 0.659040, -0.696326,
		-0.957864, 0.226443, -0.176695,
		0.041229, 0.717210, 0.695636,
		35.701931, 39.082047, 20.531675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517906, 39.055946, 19.542883>,  <35.673073, 38.579998, 20.044731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517906, 39.055946, 19.542883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652069, 39.261642, 19.858618>,  <35.732567, 39.385059, 20.048059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652069, 39.261642, 19.858618>,  <35.517906, 39.055946, 19.542883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652069, 39.261642, 19.858618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401007, 0.680241, -0.613568,
		-0.852463, 0.522326, 0.021944,
		0.335410, 0.514245, 0.789337,
		35.752693, 39.415916, 20.095419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328850, 39.783371, 19.355190>,  <35.517906, 39.055946, 19.542883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328850, 39.783371, 19.355190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608200, 39.816429, 19.639568>,  <35.775810, 39.836266, 19.810196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608200, 39.816429, 19.639568>,  <35.328850, 39.783371, 19.355190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608200, 39.816429, 19.639568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490385, 0.668277, -0.559400,
		-0.521343, 0.739307, 0.426176,
		0.698372, 0.082649, 0.710947,
		35.817711, 39.841225, 19.852852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352566, 40.483124, 19.520639>,  <35.328850, 39.783371, 19.355190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352566, 40.483124, 19.520639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690987, 40.297897, 19.626291>,  <35.894039, 40.186760, 19.689682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690987, 40.297897, 19.626291>,  <35.352566, 40.483124, 19.520639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690987, 40.297897, 19.626291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526377, 0.647189, -0.551429,
		0.084409, 0.605568, 0.791305,
		0.846051, -0.463070, 0.264128,
		35.944801, 40.158978, 19.705530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753967, 41.037514, 19.815002>,  <35.352566, 40.483124, 19.520639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753967, 41.037514, 19.815002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999928, 40.752113, 19.680655>,  <36.147503, 40.580872, 19.600046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999928, 40.752113, 19.680655>,  <35.753967, 41.037514, 19.815002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999928, 40.752113, 19.680655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458810, 0.670085, -0.583506,
		0.641395, 0.204698, 0.739399,
		0.614903, -0.713502, -0.335872,
		36.184399, 40.538063, 19.579893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394184, 41.033470, 20.156916>,  <35.753967, 41.037514, 19.815002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394184, 41.033470, 20.156916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426243, 40.885368, 19.786728>,  <36.445477, 40.796509, 19.564615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426243, 40.885368, 19.786728>,  <36.394184, 41.033470, 20.156916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426243, 40.885368, 19.786728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389101, 0.866415, -0.312930,
		0.917702, -0.335019, 0.213507,
		0.080148, -0.370252, -0.925467,
		36.450287, 40.774292, 19.509089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089222, 41.194134, 19.883226>,  <36.394184, 41.033470, 20.156916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089222, 41.194134, 19.883226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907360, 41.081673, 19.545174>,  <36.798244, 41.014198, 19.342342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907360, 41.081673, 19.545174>,  <37.089222, 41.194134, 19.883226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907360, 41.081673, 19.545174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158930, 0.908035, -0.387575,
		0.876372, -0.310530, -0.368161,
		-0.454657, -0.281148, -0.845129,
		36.770962, 40.997330, 19.291636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521805, 41.361992, 19.204155>,  <37.089222, 41.194134, 19.883226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521805, 41.361992, 19.204155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125854, 41.383430, 19.151577>,  <36.888287, 41.396294, 19.120031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125854, 41.383430, 19.151577>,  <37.521805, 41.361992, 19.204155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125854, 41.383430, 19.151577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098910, 0.924596, -0.367884,
		0.101816, -0.377160, -0.920535,
		-0.989874, 0.053594, -0.131444,
		36.828892, 41.399509, 19.112144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555500, 41.832012, 18.661139>,  <37.521805, 41.361992, 19.204155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555500, 41.832012, 18.661139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169743, 41.866802, 18.761036>,  <36.938286, 41.887676, 18.820974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169743, 41.866802, 18.761036>,  <37.555500, 41.832012, 18.661139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169743, 41.866802, 18.761036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013711, 0.926654, -0.375664,
		-0.264100, -0.365714, -0.892471,
		-0.964398, 0.086976, 0.249744,
		36.880424, 41.892895, 18.835958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300137, 42.158035, 18.056305>,  <37.555500, 41.832012, 18.661139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300137, 42.158035, 18.056305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034931, 42.230358, 18.346882>,  <36.875809, 42.273750, 18.521229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034931, 42.230358, 18.346882>,  <37.300137, 42.158035, 18.056305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034931, 42.230358, 18.346882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033197, 0.962340, -0.269813,
		-0.747869, -0.203006, -0.632044,
		-0.663015, 0.180803, 0.726444,
		36.836025, 42.284599, 18.564816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789749, 42.571327, 17.728889>,  <37.300137, 42.158035, 18.056305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789749, 42.571327, 17.728889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752804, 42.649899, 18.119352>,  <36.730637, 42.697041, 18.353630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752804, 42.649899, 18.119352>,  <36.789749, 42.571327, 17.728889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752804, 42.649899, 18.119352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243612, 0.946097, -0.213435,
		-0.965465, -0.257517, -0.039533,
		-0.092365, 0.196433, 0.976157,
		36.725094, 42.708828, 18.412199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195946, 43.034580, 17.700161>,  <36.789749, 42.571327, 17.728889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195946, 43.034580, 17.700161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364296, 43.082710, 18.059801>,  <36.465305, 43.111588, 18.275585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364296, 43.082710, 18.059801>,  <36.195946, 43.034580, 17.700161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364296, 43.082710, 18.059801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338707, 0.940323, 0.032712,
		-0.841509, -0.318300, 0.436518,
		0.420880, 0.120325, 0.899101,
		36.490559, 43.118809, 18.329531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769585, 43.392086, 17.967571>,  <36.195946, 43.034580, 17.700161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769585, 43.392086, 17.967571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085602, 43.475998, 18.197987>,  <36.275211, 43.526344, 18.336235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085602, 43.475998, 18.197987>,  <35.769585, 43.392086, 17.967571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085602, 43.475998, 18.197987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330741, 0.937007, 0.112375,
		-0.516177, -0.279301, 0.809662,
		0.790045, 0.209783, 0.576038,
		36.322617, 43.538933, 18.370798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914391, 44.124744, 17.703169>,  <35.769585, 43.392086, 17.967571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914391, 44.124744, 17.703169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737942, 44.466129, 17.814169>,  <35.632072, 44.670959, 17.880770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737942, 44.466129, 17.814169>,  <35.914391, 44.124744, 17.703169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737942, 44.466129, 17.814169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408466, 0.466264, -0.784699,
		-0.799101, -0.232802, -0.554293,
		-0.441127, 0.853464, 0.277500,
		35.605602, 44.722168, 17.897419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764378, 44.511818, 17.050083>,  <35.914391, 44.124744, 17.703169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764378, 44.511818, 17.050083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764656, 44.787983, 17.339449>,  <35.764824, 44.953682, 17.513069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764656, 44.787983, 17.339449>,  <35.764378, 44.511818, 17.050083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764656, 44.787983, 17.339449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490694, 0.630097, -0.601828,
		-0.871332, 0.355395, -0.338343,
		0.000698, 0.690414, 0.723414,
		35.764866, 44.995106, 17.556473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359520, 45.166454, 16.898010>,  <35.764378, 44.511818, 17.050083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359520, 45.166454, 16.898010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654564, 45.258636, 17.151884>,  <35.831589, 45.313946, 17.304209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654564, 45.258636, 17.151884>,  <35.359520, 45.166454, 16.898010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654564, 45.258636, 17.151884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387804, 0.624887, -0.677587,
		-0.552759, 0.745927, 0.371550,
		0.737607, 0.230454, 0.634686,
		35.875847, 45.327774, 17.342289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504852, 45.839710, 16.841017>,  <35.359520, 45.166454, 16.898010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504852, 45.839710, 16.841017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862095, 45.708698, 16.964355>,  <36.076443, 45.630089, 17.038359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862095, 45.708698, 16.964355>,  <35.504852, 45.839710, 16.841017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862095, 45.708698, 16.964355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449773, 0.638557, -0.624459,
		0.007634, 0.696396, 0.717617,
		0.893110, -0.327532, 0.308345,
		36.130028, 45.610439, 17.056858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020992, 46.135361, 16.300175>,  <35.504852, 45.839710, 16.841017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020992, 46.135361, 16.300175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223225, 46.414612, 16.502954>,  <36.344566, 46.582165, 16.624622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223225, 46.414612, 16.502954>,  <36.020992, 46.135361, 16.300175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223225, 46.414612, 16.502954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157532, -0.652399, 0.741322,
		0.848275, -0.294939, -0.439820,
		0.505583, 0.698131, 0.506951,
		36.374901, 46.624050, 16.655041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689560, 45.888149, 16.554928>,  <36.020992, 46.135361, 16.300175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689560, 45.888149, 16.554928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563156, 46.182598, 16.794346>,  <36.487312, 46.359268, 16.937996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563156, 46.182598, 16.794346>,  <36.689560, 45.888149, 16.554928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563156, 46.182598, 16.794346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030070, -0.638327, 0.769177,
		0.948279, 0.225071, 0.223854,
		-0.316012, 0.736126, 0.598544,
		36.468353, 46.403435, 16.973909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139557, 45.899075, 17.206335>,  <36.689560, 45.888149, 16.554928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139557, 45.899075, 17.206335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764076, 46.029530, 17.251020>,  <36.538788, 46.107803, 17.277832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764076, 46.029530, 17.251020>,  <37.139557, 45.899075, 17.206335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764076, 46.029530, 17.251020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171151, -0.722184, 0.670193,
		0.299249, 0.609990, 0.733732,
		-0.938700, 0.326133, 0.111713,
		36.482468, 46.127369, 17.284534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870155, 45.513931, 17.665937>,  <37.139557, 45.899075, 17.206335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870155, 45.513931, 17.665937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530182, 45.706856, 17.581089>,  <36.326199, 45.822609, 17.530180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530182, 45.706856, 17.581089>,  <36.870155, 45.513931, 17.665937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530182, 45.706856, 17.581089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510728, -0.655178, 0.556685,
		0.129519, 0.581479, 0.803185,
		-0.849930, 0.482310, -0.212120,
		36.275204, 45.851547, 17.517452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516506, 45.636829, 18.296442>,  <36.870155, 45.513931, 17.665937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516506, 45.636829, 18.296442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246288, 45.615772, 18.002266>,  <36.084160, 45.603138, 17.825760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246288, 45.615772, 18.002266>,  <36.516506, 45.636829, 18.296442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246288, 45.615772, 18.002266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593809, -0.552428, 0.584991,
		-0.437077, 0.831896, 0.341925,
		-0.675541, -0.052647, -0.735441,
		36.043625, 45.599979, 17.781633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880375, 45.815590, 18.524561>,  <36.516506, 45.636829, 18.296442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880375, 45.815590, 18.524561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820614, 45.553146, 18.228668>,  <35.784760, 45.395679, 18.051132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820614, 45.553146, 18.228668>,  <35.880375, 45.815590, 18.524561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820614, 45.553146, 18.228668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479556, -0.606171, 0.634494,
		-0.864700, 0.449536, -0.224079,
		-0.149398, -0.656105, -0.739734,
		35.775795, 45.356316, 18.006748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156929, 45.661087, 18.551088>,  <35.880375, 45.815590, 18.524561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156929, 45.661087, 18.551088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348701, 45.362072, 18.367207>,  <35.463764, 45.182663, 18.256878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348701, 45.362072, 18.367207>,  <35.156929, 45.661087, 18.551088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348701, 45.362072, 18.367207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347170, -0.642661, 0.682978,
		-0.805988, -0.167846, -0.567636,
		0.479433, -0.747539, -0.459706,
		35.492531, 45.137810, 18.229294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689919, 45.091568, 18.571125>,  <35.156929, 45.661087, 18.551088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689919, 45.091568, 18.571125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057919, 44.941822, 18.524744>,  <35.278721, 44.851974, 18.496916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057919, 44.941822, 18.524744>,  <34.689919, 45.091568, 18.571125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057919, 44.941822, 18.524744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150323, -0.610314, 0.777766,
		-0.361936, -0.698117, -0.617766,
		0.920003, -0.374367, -0.115952,
		35.333920, 44.829514, 18.489958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585411, 44.383469, 18.630985>,  <34.689919, 45.091568, 18.571125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585411, 44.383469, 18.630985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959076, 44.463978, 18.748857>,  <35.183273, 44.512283, 18.819580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959076, 44.463978, 18.748857>,  <34.585411, 44.383469, 18.630985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959076, 44.463978, 18.748857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148052, -0.532758, 0.833216,
		0.324693, -0.821985, -0.467883,
		0.934160, 0.201269, 0.294680,
		35.239323, 44.524357, 18.837261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829914, 43.702808, 18.934521>,  <34.585411, 44.383469, 18.630985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829914, 43.702808, 18.934521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072266, 43.985886, 19.079891>,  <35.217678, 44.155731, 19.167114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072266, 43.985886, 19.079891>,  <34.829914, 43.702808, 18.934521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072266, 43.985886, 19.079891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198903, -0.307561, 0.930507,
		0.770290, -0.636062, -0.045583,
		0.605880, 0.707694, 0.363426,
		35.254028, 44.198193, 19.188919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347008, 43.364887, 19.327818>,  <34.829914, 43.702808, 18.934521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347008, 43.364887, 19.327818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362350, 43.743980, 19.454517>,  <35.371555, 43.971436, 19.530537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362350, 43.743980, 19.454517>,  <35.347008, 43.364887, 19.327818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362350, 43.743980, 19.454517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167990, -0.318586, 0.932889,
		0.985042, 0.017432, -0.171429,
		0.038352, 0.947734, 0.316749,
		35.373856, 44.028301, 19.549541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892097, 43.417908, 19.727703>,  <35.347008, 43.364887, 19.327818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892097, 43.417908, 19.727703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682369, 43.736153, 19.849089>,  <35.556534, 43.927097, 19.921921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682369, 43.736153, 19.849089>,  <35.892097, 43.417908, 19.727703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682369, 43.736153, 19.849089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088611, -0.303466, 0.948713,
		0.846897, 0.524320, 0.088614,
		-0.524321, 0.795610, 0.303466,
		35.525074, 43.974834, 19.940128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268726, 43.901897, 20.117441>,  <35.892097, 43.417908, 19.727703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268726, 43.901897, 20.117441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891636, 43.966625, 20.234118>,  <35.665382, 44.005463, 20.304123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891636, 43.966625, 20.234118>,  <36.268726, 43.901897, 20.117441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891636, 43.966625, 20.234118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259762, -0.192459, 0.946300,
		0.209265, 0.967871, 0.139403,
		-0.942726, 0.161816, 0.291691,
		35.608818, 44.015171, 20.321625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233700, 44.305569, 20.730717>,  <36.268726, 43.901897, 20.117441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233700, 44.305569, 20.730717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868000, 44.143532, 20.733427>,  <35.648579, 44.046310, 20.735054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868000, 44.143532, 20.733427>,  <36.233700, 44.305569, 20.730717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868000, 44.143532, 20.733427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003023, 0.009909, 0.999946,
		-0.405137, 0.914223, -0.007834,
		-0.914251, -0.405091, 0.006778,
		35.593723, 44.022003, 20.735460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889980, 44.637875, 21.304684>,  <36.233700, 44.305569, 20.730717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889980, 44.637875, 21.304684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661621, 44.323486, 21.209745>,  <35.524605, 44.134853, 21.152782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661621, 44.323486, 21.209745>,  <35.889980, 44.637875, 21.304684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661621, 44.323486, 21.209745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136203, -0.194416, 0.971417,
		-0.809645, 0.586906, 0.003941,
		-0.570897, -0.785966, -0.237346,
		35.490353, 44.087696, 21.138542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373566, 44.668633, 21.783882>,  <35.889980, 44.637875, 21.304684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373566, 44.668633, 21.783882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346989, 44.296917, 21.638554>,  <35.331043, 44.073887, 21.551357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346989, 44.296917, 21.638554>,  <35.373566, 44.668633, 21.783882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346989, 44.296917, 21.638554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208398, -0.343170, 0.915863,
		-0.975785, 0.136566, -0.170862,
		-0.066441, -0.929292, -0.363320,
		35.327057, 44.018127, 21.529558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833893, 44.429714, 22.152943>,  <35.373566, 44.668633, 21.783882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833893, 44.429714, 22.152943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012123, 44.100510, 22.012024>,  <35.119061, 43.902985, 21.927473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012123, 44.100510, 22.012024>,  <34.833893, 44.429714, 22.152943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012123, 44.100510, 22.012024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178585, -0.467325, 0.865861,
		-0.877252, -0.322889, -0.355205,
		0.445573, -0.823013, -0.352298,
		35.145794, 43.853607, 21.906334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417187, 43.821644, 22.407818>,  <34.833893, 44.429714, 22.152943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417187, 43.821644, 22.407818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770279, 43.658855, 22.313873>,  <34.982136, 43.561184, 22.257507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770279, 43.658855, 22.313873>,  <34.417187, 43.821644, 22.407818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770279, 43.658855, 22.313873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093615, -0.642138, 0.760852,
		-0.460455, -0.649643, -0.604935,
		0.882733, -0.406968, -0.234859,
		35.035099, 43.536766, 22.243416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340340, 43.115582, 22.543159>,  <34.417187, 43.821644, 22.407818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340340, 43.115582, 22.543159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735790, 43.155804, 22.498411>,  <34.973061, 43.179939, 22.471563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735790, 43.155804, 22.498411>,  <34.340340, 43.115582, 22.543159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735790, 43.155804, 22.498411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150403, -0.672902, 0.724280,
		-0.002444, -0.732865, -0.680370,
		0.988622, 0.100560, -0.111870,
		35.032375, 43.185970, 22.464849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513023, 42.430141, 22.580608>,  <34.340340, 43.115582, 22.543159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513023, 42.430141, 22.580608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806740, 42.684593, 22.675392>,  <34.982971, 42.837265, 22.732262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806740, 42.684593, 22.675392>,  <34.513023, 42.430141, 22.580608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806740, 42.684593, 22.675392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227926, -0.559840, 0.796636,
		0.639426, -0.530954, -0.556077,
		0.734291, 0.636134, 0.236959,
		35.027027, 42.875435, 22.746479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083855, 41.931145, 22.677254>,  <34.513023, 42.430141, 22.580608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083855, 41.931145, 22.677254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170029, 42.272526, 22.867075>,  <35.221733, 42.477356, 22.980968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170029, 42.272526, 22.867075>,  <35.083855, 41.931145, 22.677254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170029, 42.272526, 22.867075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155987, -0.509801, 0.846033,
		0.963979, -0.108240, -0.242956,
		0.215434, 0.853456, 0.474554,
		35.234657, 42.528564, 23.009441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708641, 41.841015, 23.118700>,  <35.083855, 41.931145, 22.677254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708641, 41.841015, 23.118700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505558, 42.146515, 23.278164>,  <35.383709, 42.329815, 23.373842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505558, 42.146515, 23.278164>,  <35.708641, 41.841015, 23.118700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505558, 42.146515, 23.278164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005539, -0.465617, 0.884969,
		0.861514, 0.447094, 0.240626,
		-0.507704, 0.763746, 0.398659,
		35.353249, 42.375637, 23.397762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026123, 41.930790, 23.705667>,  <35.708641, 41.841015, 23.118700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026123, 41.930790, 23.705667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661858, 42.093040, 23.737045>,  <35.443298, 42.190392, 23.755873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661858, 42.093040, 23.737045>,  <36.026123, 41.930790, 23.705667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661858, 42.093040, 23.737045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143185, -0.487979, 0.861031,
		0.387538, 0.772879, 0.502466,
		-0.910666, 0.405628, 0.078446,
		35.388657, 42.214729, 23.760580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923744, 42.036705, 24.397739>,  <36.026123, 41.930790, 23.705667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923744, 42.036705, 24.397739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539749, 42.049561, 24.286465>,  <35.309353, 42.057274, 24.219700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539749, 42.049561, 24.286465>,  <35.923744, 42.036705, 24.397739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539749, 42.049561, 24.286465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259916, -0.472010, 0.842408,
		-0.104229, 0.881007, 0.461479,
		-0.959990, 0.032142, -0.278185,
		35.251751, 42.059204, 24.203009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501476, 42.377510, 24.910690>,  <35.923744, 42.036705, 24.397739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501476, 42.377510, 24.910690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241642, 42.133652, 24.728977>,  <35.085739, 41.987339, 24.619949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241642, 42.133652, 24.728977>,  <35.501476, 42.377510, 24.910690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241642, 42.133652, 24.728977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335937, -0.305869, 0.890837,
		-0.682042, 0.731288, -0.006112,
		-0.649589, -0.609642, -0.454281,
		35.046764, 41.950760, 24.592693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929192, 42.369896, 25.369286>,  <35.501476, 42.377510, 24.910690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929192, 42.369896, 25.369286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837017, 42.103710, 25.085299>,  <34.781712, 41.943996, 24.914907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837017, 42.103710, 25.085299>,  <34.929192, 42.369896, 25.369286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837017, 42.103710, 25.085299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440979, -0.578967, 0.685809,
		-0.867431, 0.471115, -0.160042,
		-0.230436, -0.665468, -0.709966,
		34.767887, 41.904068, 24.872309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204178, 42.130054, 25.455976>,  <34.929192, 42.369896, 25.369286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204178, 42.130054, 25.455976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416233, 41.846809, 25.269417>,  <34.543465, 41.676861, 25.157480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416233, 41.846809, 25.269417>,  <34.204178, 42.130054, 25.455976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416233, 41.846809, 25.269417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340469, -0.681537, 0.647756,
		-0.776555, -0.184604, -0.602399,
		0.530135, -0.708116, -0.466399,
		34.575275, 41.634373, 25.129498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659218, 41.521511, 25.326273>,  <34.204178, 42.130054, 25.455976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659218, 41.521511, 25.326273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998180, 41.330193, 25.234062>,  <34.201557, 41.215401, 25.178736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998180, 41.330193, 25.234062>,  <33.659218, 41.521511, 25.326273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998180, 41.330193, 25.234062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355509, -0.833612, 0.422734,
		-0.394359, -0.276273, -0.876444,
		0.847404, -0.478292, -0.230525,
		34.252403, 41.186707, 25.164904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579735, 40.799488, 24.954535>,  <33.659218, 41.521511, 25.326273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579735, 40.799488, 24.954535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937740, 40.783875, 25.132267>,  <34.152542, 40.774506, 25.238907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937740, 40.783875, 25.132267>,  <33.579735, 40.799488, 24.954535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937740, 40.783875, 25.132267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248781, -0.870511, 0.424638,
		0.370216, -0.490597, -0.788831,
		0.895013, -0.039039, 0.444329,
		34.206245, 40.772163, 25.265566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680084, 40.111336, 25.059942>,  <33.579735, 40.799488, 24.954535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680084, 40.111336, 25.059942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923492, 40.289360, 25.322733>,  <34.069538, 40.396175, 25.480408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923492, 40.289360, 25.322733>,  <33.680084, 40.111336, 25.059942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923492, 40.289360, 25.322733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329921, -0.611068, 0.719547,
		0.721699, -0.654613, -0.225016,
		0.608524, 0.445059, 0.656978,
		34.106049, 40.422878, 25.519827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941967, 39.577999, 25.417822>,  <33.680084, 40.111336, 25.059942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941967, 39.577999, 25.417822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047161, 39.882412, 25.655027>,  <34.110275, 40.065060, 25.797350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047161, 39.882412, 25.655027>,  <33.941967, 39.577999, 25.417822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047161, 39.882412, 25.655027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197195, -0.559276, 0.805186,
		0.944434, -0.328688, 0.002994,
		0.262981, 0.761035, 0.593014,
		34.126057, 40.110722, 25.832932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434925, 39.376514, 25.905693>,  <33.941967, 39.577999, 25.417822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434925, 39.376514, 25.905693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268097, 39.692898, 26.084772>,  <34.167999, 39.882729, 26.192219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268097, 39.692898, 26.084772>,  <34.434925, 39.376514, 25.905693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268097, 39.692898, 26.084772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095847, -0.528112, 0.843748,
		0.903807, 0.308990, 0.296070,
		-0.417068, 0.790963, 0.447696,
		34.142975, 39.930187, 26.219082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797150, 39.389565, 26.641890>,  <34.434925, 39.376514, 25.905693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797150, 39.389565, 26.641890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454414, 39.595055, 26.659397>,  <34.248772, 39.718349, 26.669901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454414, 39.595055, 26.659397>,  <34.797150, 39.389565, 26.641890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454414, 39.595055, 26.659397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163551, -0.351327, 0.921857,
		0.488955, 0.782725, 0.385051,
		-0.856839, 0.513722, 0.043768,
		34.197361, 39.749172, 26.672527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789360, 39.633167, 27.318439>,  <34.797150, 39.389565, 26.641890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789360, 39.633167, 27.318439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413929, 39.618225, 27.181221>,  <34.188671, 39.609261, 27.098890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413929, 39.618225, 27.181221>,  <34.789360, 39.633167, 27.318439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413929, 39.618225, 27.181221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283518, -0.483210, 0.828327,
		-0.196705, 0.874708, 0.442938,
		-0.938576, -0.037355, -0.343046,
		34.132355, 39.607018, 27.078308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407513, 40.082008, 27.831131>,  <34.789360, 39.633167, 27.318439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407513, 40.082008, 27.831131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133881, 39.841351, 27.666178>,  <33.969700, 39.696957, 27.567205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133881, 39.841351, 27.666178>,  <34.407513, 40.082008, 27.831131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133881, 39.841351, 27.666178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216932, -0.371968, 0.902541,
		-0.696402, 0.706869, 0.123940,
		-0.684080, -0.601645, -0.412382,
		33.928658, 39.660858, 27.542463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914669, 40.080601, 28.243818>,  <34.407513, 40.082008, 27.831131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914669, 40.080601, 28.243818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795361, 39.772404, 28.018473>,  <33.723778, 39.587486, 27.883265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795361, 39.772404, 28.018473>,  <33.914669, 40.080601, 28.243818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795361, 39.772404, 28.018473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251324, -0.506003, 0.825104,
		-0.920800, 0.387689, -0.042719,
		-0.298268, -0.770492, -0.563363,
		33.705879, 39.541256, 27.849464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310143, 39.936298, 28.484011>,  <33.914669, 40.080601, 28.243818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310143, 39.936298, 28.484011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450825, 39.612247, 28.296392>,  <33.535233, 39.417816, 28.183823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450825, 39.612247, 28.296392>,  <33.310143, 39.936298, 28.484011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450825, 39.612247, 28.296392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044444, -0.514940, 0.856073,
		-0.935056, -0.280236, -0.217111,
		0.351702, -0.810126, -0.469043,
		33.556335, 39.369209, 28.155680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842007, 39.417747, 28.710049>,  <33.310143, 39.936298, 28.484011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842007, 39.417747, 28.710049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141918, 39.202454, 28.556099>,  <33.321865, 39.073277, 28.463730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141918, 39.202454, 28.556099>,  <32.842007, 39.417747, 28.710049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141918, 39.202454, 28.556099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023022, -0.602526, 0.797767,
		-0.661287, -0.589289, -0.464153,
		0.749780, -0.538239, -0.384876,
		33.366852, 39.040981, 28.440636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704536, 38.753601, 28.979286>,  <32.842007, 39.417747, 28.710049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704536, 38.753601, 28.979286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081371, 38.740746, 28.845751>,  <33.307472, 38.733032, 28.765631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081371, 38.740746, 28.845751>,  <32.704536, 38.753601, 28.979286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081371, 38.740746, 28.845751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225219, -0.676943, 0.700732,
		-0.248507, -0.735334, -0.630499,
		0.942083, -0.032137, -0.333836,
		33.363995, 38.731106, 28.745600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729069, 38.142834, 28.760700>,  <32.704536, 38.753601, 28.979286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729069, 38.142834, 28.760700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099098, 38.261761, 28.855221>,  <33.321117, 38.333118, 28.911932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099098, 38.261761, 28.855221>,  <32.729069, 38.142834, 28.760700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099098, 38.261761, 28.855221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085503, -0.769269, 0.633178,
		0.370033, -0.565533, -0.737054,
		0.925076, 0.297317, 0.236301,
		33.376621, 38.350956, 28.926111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159985, 37.535896, 28.714073>,  <32.729069, 38.142834, 28.760700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159985, 37.535896, 28.714073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330227, 37.806747, 28.954193>,  <33.432373, 37.969257, 29.098265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330227, 37.806747, 28.954193>,  <33.159985, 37.535896, 28.714073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330227, 37.806747, 28.954193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157613, -0.708712, 0.687667,
		0.891078, -0.198058, -0.408353,
		0.425602, 0.677127, 0.600301,
		33.457909, 38.009884, 29.134283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705318, 37.176922, 28.888491>,  <33.159985, 37.535896, 28.714073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705318, 37.176922, 28.888491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713184, 37.475479, 29.154575>,  <33.717903, 37.654613, 29.314226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713184, 37.475479, 29.154575>,  <33.705318, 37.176922, 28.888491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713184, 37.475479, 29.154575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039931, -0.665397, 0.745421,
		0.999009, 0.011906, -0.042888,
		0.019662, 0.746395, 0.665213,
		33.719082, 37.699398, 29.354139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295105, 37.074837, 29.348248>,  <33.705318, 37.176922, 28.888491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295105, 37.074837, 29.348248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043556, 37.298405, 29.564442>,  <33.892628, 37.432545, 29.694159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043556, 37.298405, 29.564442>,  <34.295105, 37.074837, 29.348248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043556, 37.298405, 29.564442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070614, -0.651219, 0.755597,
		0.774294, 0.513342, 0.370067,
		-0.628874, 0.558922, 0.540484,
		33.854893, 37.466080, 29.726587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574333, 37.047127, 29.950994>,  <34.295105, 37.074837, 29.348248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574333, 37.047127, 29.950994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206921, 37.187546, 30.023726>,  <33.986473, 37.271797, 30.067364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206921, 37.187546, 30.023726>,  <34.574333, 37.047127, 29.950994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206921, 37.187546, 30.023726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063811, -0.585541, 0.808127,
		0.390161, 0.730689, 0.560240,
		-0.918533, 0.351049, 0.181830,
		33.931362, 37.292862, 30.078274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612240, 37.102978, 30.667292>,  <34.574333, 37.047127, 29.950994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612240, 37.102978, 30.667292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219627, 37.123188, 30.593494>,  <33.984058, 37.135315, 30.549217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219627, 37.123188, 30.593494>,  <34.612240, 37.102978, 30.667292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219627, 37.123188, 30.593494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187148, -0.453195, 0.871545,
		-0.039573, 0.889978, 0.454282,
		-0.981534, 0.050529, -0.184492,
		33.925167, 37.138348, 30.538147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138561, 37.493717, 31.072409>,  <34.612240, 37.102978, 30.667292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138561, 37.493717, 31.072409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506279, 37.615513, 31.172155>,  <35.726910, 37.688591, 31.232004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506279, 37.615513, 31.172155>,  <35.138561, 37.493717, 31.072409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506279, 37.615513, 31.172155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081842, 0.471851, -0.877871,
		-0.384967, 0.827431, 0.408850,
		0.919294, 0.304490, 0.249366,
		35.782066, 37.706860, 31.246965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298401, 38.142570, 30.649315>,  <35.138561, 37.493717, 31.072409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298401, 38.142570, 30.649315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665348, 38.043446, 30.773914>,  <35.885517, 37.983971, 30.848673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665348, 38.043446, 30.773914>,  <35.298401, 38.142570, 30.649315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665348, 38.043446, 30.773914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398044, 0.573114, -0.716311,
		-0.001015, 0.781109, 0.624394,
		0.917366, -0.247809, 0.311498,
		35.940559, 37.969101, 30.867363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621735, 38.805355, 30.599894>,  <35.298401, 38.142570, 30.649315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621735, 38.805355, 30.599894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919605, 38.538628, 30.611336>,  <36.098328, 38.378593, 30.618202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919605, 38.538628, 30.611336>,  <35.621735, 38.805355, 30.599894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919605, 38.538628, 30.611336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500925, 0.530062, -0.684184,
		0.441062, 0.523824, 0.728748,
		0.744674, -0.666816, 0.028606,
		36.143009, 38.338581, 30.619917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206009, 39.162743, 30.703897>,  <35.621735, 38.805355, 30.599894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206009, 39.162743, 30.703897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331066, 38.822987, 30.533821>,  <36.406101, 38.619133, 30.431774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331066, 38.822987, 30.533821>,  <36.206009, 39.162743, 30.703897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331066, 38.822987, 30.533821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584240, 0.524899, -0.618986,
		0.748945, -0.054895, 0.660354,
		0.312640, -0.849392, -0.425193,
		36.424858, 38.568169, 30.406263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906330, 39.334526, 30.393211>,  <36.206009, 39.162743, 30.703897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906330, 39.334526, 30.393211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834305, 38.987682, 30.207439>,  <36.791092, 38.779575, 30.095976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834305, 38.987682, 30.207439>,  <36.906330, 39.334526, 30.393211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834305, 38.987682, 30.207439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471461, 0.338303, -0.814417,
		0.863309, -0.365604, 0.347895,
		-0.180060, -0.867113, -0.464428,
		36.780285, 38.727547, 30.068111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518810, 39.238495, 30.042204>,  <36.906330, 39.334526, 30.393211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518810, 39.238495, 30.042204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.240063, 39.011444, 29.866858>,  <37.072815, 38.875214, 29.761650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.240063, 39.011444, 29.866858>,  <37.518810, 39.238495, 30.042204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240063, 39.011444, 29.866858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252713, 0.377678, -0.890784,
		0.671197, -0.731543, -0.119746,
		-0.696872, -0.567630, -0.438367,
		37.031002, 38.841156, 29.735348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844368, 38.811176, 29.486933>,  <37.518810, 39.238495, 30.042204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844368, 38.811176, 29.486933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457249, 38.831631, 29.388346>,  <37.224976, 38.843903, 29.329193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457249, 38.831631, 29.388346>,  <37.844368, 38.811176, 29.486933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457249, 38.831631, 29.388346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246597, 0.389090, -0.887581,
		0.050513, -0.919780, -0.389171,
		-0.967801, 0.051134, -0.246469,
		37.166908, 38.846970, 29.314405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882935, 38.792507, 28.772896>,  <37.844368, 38.811176, 29.486933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882935, 38.792507, 28.772896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511105, 38.916470, 28.852753>,  <37.288006, 38.990849, 28.900667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511105, 38.916470, 28.852753>,  <37.882935, 38.792507, 28.772896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511105, 38.916470, 28.852753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014051, 0.570946, -0.820868,
		-0.368375, -0.760250, -0.535089,
		-0.929571, 0.309905, 0.199640,
		37.232235, 39.009441, 28.912645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543110, 38.711887, 28.239508>,  <37.882935, 38.792507, 28.772896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543110, 38.711887, 28.239508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317127, 38.986195, 28.423050>,  <37.181538, 39.150780, 28.533176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317127, 38.986195, 28.423050>,  <37.543110, 38.711887, 28.239508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317127, 38.986195, 28.423050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033082, 0.574489, -0.817844,
		-0.824456, -0.446868, -0.347249,
		-0.564959, 0.685763, 0.458858,
		37.147640, 39.191925, 28.560707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063953, 38.939068, 27.669743>,  <37.543110, 38.711887, 28.239508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063953, 38.939068, 27.669743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075073, 39.196030, 27.976086>,  <37.081745, 39.350208, 28.159891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075073, 39.196030, 27.976086>,  <37.063953, 38.939068, 27.669743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075073, 39.196030, 27.976086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099284, 0.760592, -0.641594,
		-0.994671, 0.093872, -0.042638,
		0.027798, 0.642408, 0.765859,
		37.083412, 39.388752, 28.205843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550629, 39.382668, 27.500618>,  <37.063953, 38.939068, 27.669743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550629, 39.382668, 27.500618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759254, 39.581436, 27.778046>,  <36.884430, 39.700699, 27.944502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759254, 39.581436, 27.778046>,  <36.550629, 39.382668, 27.500618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759254, 39.581436, 27.778046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077377, 0.837090, -0.541565,
		-0.849696, 0.228795, 0.475048,
		0.521565, 0.496923, 0.693569,
		36.915726, 39.730515, 27.986116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139961, 39.959606, 27.810406>,  <36.550629, 39.382668, 27.500618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139961, 39.959606, 27.810406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.529694, 40.049114, 27.820240>,  <36.763535, 40.102821, 27.826141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.529694, 40.049114, 27.820240>,  <36.139961, 39.959606, 27.810406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529694, 40.049114, 27.820240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178760, 0.835443, -0.519691,
		-0.136834, 0.501956, 0.854000,
		0.974331, 0.223772, 0.024587,
		36.821995, 40.116245, 27.827616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141041, 40.641632, 27.890085>,  <36.139961, 39.959606, 27.810406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141041, 40.641632, 27.890085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522980, 40.587452, 27.784319>,  <36.752144, 40.554943, 27.720860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522980, 40.587452, 27.784319>,  <36.141041, 40.641632, 27.890085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522980, 40.587452, 27.784319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008823, 0.876693, -0.480970,
		0.296960, 0.461586, 0.835914,
		0.954849, -0.135454, -0.264415,
		36.809433, 40.546814, 27.704994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503086, 41.260159, 28.082251>,  <36.141041, 40.641632, 27.890085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503086, 41.260159, 28.082251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722206, 41.081219, 27.799465>,  <36.853680, 40.973854, 27.629795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722206, 41.081219, 27.799465>,  <36.503086, 41.260159, 28.082251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722206, 41.081219, 27.799465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067382, 0.865881, -0.495692,
		0.833891, 0.223904, 0.504474,
		0.547801, -0.447345, -0.706963,
		36.886547, 40.947014, 27.587376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990772, 41.819366, 27.913408>,  <36.503086, 41.260159, 28.082251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990772, 41.819366, 27.913408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978390, 41.570557, 27.600454>,  <36.970963, 41.421272, 27.412682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978390, 41.570557, 27.600454>,  <36.990772, 41.819366, 27.913408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978390, 41.570557, 27.600454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175647, 0.767195, -0.616896,
		0.983967, -0.156519, 0.085508,
		-0.030954, -0.622024, -0.782386,
		36.969105, 41.383949, 27.365738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572235, 41.994041, 27.476368>,  <36.990772, 41.819366, 27.913408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572235, 41.994041, 27.476368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301758, 41.818535, 27.239643>,  <37.139469, 41.713230, 27.097609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301758, 41.818535, 27.239643>,  <37.572235, 41.994041, 27.476368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301758, 41.818535, 27.239643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221102, 0.645415, -0.731132,
		0.702763, -0.625238, -0.339413,
		-0.676194, -0.438768, -0.591815,
		37.098900, 41.686905, 27.062099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816765, 42.122982, 26.817661>,  <37.572235, 41.994041, 27.476368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816765, 42.122982, 26.817661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453117, 41.999012, 26.706337>,  <37.234928, 41.924629, 26.639542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453117, 41.999012, 26.706337>,  <37.816765, 42.122982, 26.817661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453117, 41.999012, 26.706337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005500, 0.659159, -0.751983,
		0.416507, -0.685170, -0.597547,
		-0.909115, -0.309920, -0.278313,
		37.180382, 41.906036, 26.622843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800766, 41.950340, 26.015333>,  <37.816765, 42.122982, 26.817661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800766, 41.950340, 26.015333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426868, 42.026035, 26.135632>,  <37.202530, 42.071453, 26.207811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426868, 42.026035, 26.135632>,  <37.800766, 41.950340, 26.015333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426868, 42.026035, 26.135632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082168, 0.708328, -0.701085,
		-0.345699, -0.680045, -0.646553,
		-0.934741, 0.189238, 0.300746,
		37.146446, 42.082806, 26.225855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364887, 41.840694, 25.427687>,  <37.800766, 41.950340, 26.015333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364887, 41.840694, 25.427687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142487, 42.095737, 25.640974>,  <37.009045, 42.248764, 25.768946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142487, 42.095737, 25.640974>,  <37.364887, 41.840694, 25.427687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142487, 42.095737, 25.640974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153310, 0.709181, -0.688156,
		-0.816920, -0.300869, -0.492057,
		-0.556002, 0.637605, 0.533218,
		36.975685, 42.287018, 25.800940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135410, 42.331207, 24.903412>,  <37.364887, 41.840694, 25.427687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135410, 42.331207, 24.903412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041508, 42.519142, 25.243797>,  <36.985165, 42.631905, 25.448029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041508, 42.519142, 25.243797>,  <37.135410, 42.331207, 24.903412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041508, 42.519142, 25.243797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113046, 0.856294, -0.503966,
		-0.965457, -0.214510, -0.147911,
		-0.234761, 0.469837, 0.850965,
		36.971081, 42.660091, 25.499086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440548, 42.608677, 24.897774>,  <37.135410, 42.331207, 24.903412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440548, 42.608677, 24.897774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650173, 42.830425, 25.156393>,  <36.775948, 42.963474, 25.311563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650173, 42.830425, 25.156393>,  <36.440548, 42.608677, 24.897774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650173, 42.830425, 25.156393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049703, 0.777759, -0.626594,
		-0.850226, 0.296242, 0.435151,
		0.524066, 0.554375, 0.646547,
		36.807392, 42.996738, 25.350357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263985, 43.323631, 24.965145>,  <36.440548, 42.608677, 24.897774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263985, 43.323631, 24.965145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659264, 43.296017, 25.019838>,  <36.896431, 43.279449, 25.052654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659264, 43.296017, 25.019838>,  <36.263985, 43.323631, 24.965145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659264, 43.296017, 25.019838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152462, 0.529229, -0.834669,
		-0.014743, 0.845666, 0.533509,
		0.988199, -0.069035, 0.136735,
		36.955723, 43.275307, 25.060858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455902, 43.929855, 24.742407>,  <36.263985, 43.323631, 24.965145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455902, 43.929855, 24.742407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801868, 43.729267, 24.733938>,  <37.009449, 43.608913, 24.728857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801868, 43.729267, 24.733938>,  <36.455902, 43.929855, 24.742407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801868, 43.729267, 24.733938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255342, 0.475937, -0.841596,
		0.432113, 0.722503, 0.539692,
		0.864915, -0.501471, -0.021173,
		37.061344, 43.578827, 24.727587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930954, 44.410027, 24.632376>,  <36.455902, 43.929855, 24.742407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930954, 44.410027, 24.632376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065605, 44.061405, 24.489782>,  <37.146397, 43.852234, 24.404226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065605, 44.061405, 24.489782>,  <36.930954, 44.410027, 24.632376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065605, 44.061405, 24.489782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131687, 0.418428, -0.898653,
		0.932386, 0.255564, 0.255625,
		0.336624, -0.871554, -0.356482,
		37.166592, 43.799938, 24.382837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565285, 44.591797, 24.413475>,  <36.930954, 44.410027, 24.632376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565285, 44.591797, 24.413475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495705, 44.248871, 24.219671>,  <37.453957, 44.043114, 24.103390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495705, 44.248871, 24.219671>,  <37.565285, 44.591797, 24.413475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495705, 44.248871, 24.219671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250608, 0.437272, -0.863707,
		0.952332, -0.271668, 0.138784,
		-0.173955, -0.857316, -0.484510,
		37.443520, 43.991676, 24.074318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146023, 44.410362, 24.012211>,  <37.565285, 44.591797, 24.413475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146023, 44.410362, 24.012211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854542, 44.186993, 23.853638>,  <37.679653, 44.052971, 23.758493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854542, 44.186993, 23.853638>,  <38.146023, 44.410362, 24.012211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854542, 44.186993, 23.853638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184256, 0.397662, -0.898841,
		0.659577, -0.728033, -0.186885,
		-0.728703, -0.558420, -0.396433,
		37.635929, 44.019466, 23.734707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516544, 44.096966, 23.397669>,  <38.146023, 44.410362, 24.012211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516544, 44.096966, 23.397669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122894, 44.095699, 23.326698>,  <37.886703, 44.094940, 23.284117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122894, 44.095699, 23.326698>,  <38.516544, 44.096966, 23.397669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122894, 44.095699, 23.326698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169172, 0.285123, -0.943443,
		0.053577, -0.958486, -0.280062,
		-0.984129, -0.003168, -0.177425,
		37.827656, 44.094749, 23.273470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525993, 43.939354, 22.778809>,  <38.516544, 44.096966, 23.397669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525993, 43.939354, 22.778809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151993, 44.079872, 22.798256>,  <37.927593, 44.164181, 22.809923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151993, 44.079872, 22.798256>,  <38.525993, 43.939354, 22.778809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151993, 44.079872, 22.798256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007873, 0.157615, -0.987469,
		-0.354553, -0.922904, -0.150136,
		-0.935003, 0.351292, 0.048616,
		37.871490, 44.185261, 22.812841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069183, 43.647854, 22.255466>,  <38.525993, 43.939354, 22.778809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069183, 43.647854, 22.255466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864536, 43.981129, 22.339413>,  <37.741749, 44.181095, 22.389780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864536, 43.981129, 22.339413>,  <38.069183, 43.647854, 22.255466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864536, 43.981129, 22.339413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034539, 0.224113, -0.973951,
		-0.858521, -0.505535, -0.085882,
		-0.511613, 0.833192, 0.209866,
		37.711052, 44.231087, 22.402372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566570, 43.726250, 21.771200>,  <38.069183, 43.647854, 22.255466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566570, 43.726250, 21.771200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628838, 44.089878, 21.925789>,  <37.666199, 44.308056, 22.018543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628838, 44.089878, 21.925789>,  <37.566570, 43.726250, 21.771200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628838, 44.089878, 21.925789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059774, 0.381857, -0.922287,
		-0.985999, 0.166674, 0.005105,
		0.155670, 0.909068, 0.386473,
		37.675537, 44.362598, 22.041731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171612, 44.130417, 21.345770>,  <37.566570, 43.726250, 21.771200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171612, 44.130417, 21.345770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426491, 44.384155, 21.520851>,  <37.579418, 44.536400, 21.625900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426491, 44.384155, 21.520851>,  <37.171612, 44.130417, 21.345770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426491, 44.384155, 21.520851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271423, 0.346840, -0.897793,
		-0.721324, 0.690874, 0.048830,
		0.637198, 0.634346, 0.437703,
		37.617649, 44.574459, 21.652163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082447, 44.821865, 21.162329>,  <37.171612, 44.130417, 21.345770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082447, 44.821865, 21.162329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463310, 44.834778, 21.283890>,  <37.691830, 44.842525, 21.356827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463310, 44.834778, 21.283890>,  <37.082447, 44.821865, 21.162329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463310, 44.834778, 21.283890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265395, 0.405742, -0.874608,
		-0.151538, 0.913417, 0.377763,
		0.952156, 0.032280, 0.303901,
		37.748959, 44.844463, 21.375061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328491, 45.493134, 20.961683>,  <37.082447, 44.821865, 21.162329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328491, 45.493134, 20.961683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664219, 45.285007, 21.024685>,  <37.865658, 45.160133, 21.062487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664219, 45.285007, 21.024685>,  <37.328491, 45.493134, 20.961683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664219, 45.285007, 21.024685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341305, 0.278838, -0.897642,
		0.423138, 0.807169, 0.411621,
		0.839324, -0.520315, 0.157504,
		37.916016, 45.128914, 21.071936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879517, 45.955360, 20.963409>,  <37.328491, 45.493134, 20.961683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879517, 45.955360, 20.963409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055523, 45.604149, 20.888086>,  <38.161125, 45.393421, 20.842894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055523, 45.604149, 20.888086>,  <37.879517, 45.955360, 20.963409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055523, 45.604149, 20.888086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144107, 0.276021, -0.950287,
		0.886352, 0.391003, 0.247983,
		0.440014, -0.878025, -0.188306,
		38.187527, 45.340740, 20.831594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434895, 46.158638, 20.508120>,  <37.879517, 45.955360, 20.963409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434895, 46.158638, 20.508120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351097, 45.772999, 20.442854>,  <38.300819, 45.541615, 20.403694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351097, 45.772999, 20.442854>,  <38.434895, 46.158638, 20.508120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351097, 45.772999, 20.442854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172412, 0.127832, -0.976695,
		0.962489, -0.232745, 0.139442,
		-0.209496, -0.964100, -0.163165,
		38.288250, 45.483768, 20.393904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905972, 45.996777, 20.035408>,  <38.434895, 46.158638, 20.508120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905972, 45.996777, 20.035408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691898, 45.661888, 19.990435>,  <38.563454, 45.460957, 19.963451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691898, 45.661888, 19.990435>,  <38.905972, 45.996777, 20.035408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691898, 45.661888, 19.990435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199861, 0.003824, -0.979817,
		0.820751, -0.546855, 0.165281,
		-0.535186, -0.837219, -0.112434,
		38.531342, 45.410721, 19.956705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310783, 45.639786, 19.659264>,  <38.905972, 45.996777, 20.035408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310783, 45.639786, 19.659264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947891, 45.480568, 19.604876>,  <38.730156, 45.385036, 19.572243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947891, 45.480568, 19.604876>,  <39.310783, 45.639786, 19.659264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947891, 45.480568, 19.604876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201222, -0.126839, -0.971299,
		0.369371, -0.908556, 0.195167,
		-0.907235, -0.398042, -0.135971,
		38.675720, 45.361156, 19.564085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294544, 44.980759, 19.351357>,  <39.310783, 45.639786, 19.659264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294544, 44.980759, 19.351357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954178, 45.158310, 19.238993>,  <38.749958, 45.264839, 19.171576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954178, 45.158310, 19.238993>,  <39.294544, 44.980759, 19.351357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954178, 45.158310, 19.238993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159937, -0.290449, -0.943430,
		-0.500356, -0.847710, 0.176157,
		-0.850919, 0.443876, -0.280909,
		38.698902, 45.291473, 19.154720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487770, 44.509476, 18.829399>,  <39.294544, 44.980759, 19.351357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487770, 44.509476, 18.829399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801434, 44.273743, 18.751654>,  <39.989632, 44.132301, 18.705006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801434, 44.273743, 18.751654>,  <39.487770, 44.509476, 18.829399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801434, 44.273743, 18.751654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215531, -0.552362, 0.805259,
		-0.581924, -0.589563, -0.560161,
		0.784162, -0.589331, -0.194364,
		40.036682, 44.096943, 18.693344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301308, 43.724754, 18.800529>,  <39.487770, 44.509476, 18.829399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301308, 43.724754, 18.800529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695721, 43.716457, 18.866625>,  <39.932369, 43.711479, 18.906282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695721, 43.716457, 18.866625>,  <39.301308, 43.724754, 18.800529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695721, 43.716457, 18.866625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133184, -0.693885, 0.707662,
		0.099982, -0.719787, -0.686957,
		0.986035, -0.020738, 0.165241,
		39.991531, 43.710236, 18.916197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543480, 43.025158, 18.797279>,  <39.301308, 43.724754, 18.800529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543480, 43.025158, 18.797279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778324, 43.215725, 19.059067>,  <39.919231, 43.330063, 19.216139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778324, 43.215725, 19.059067>,  <39.543480, 43.025158, 18.797279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778324, 43.215725, 19.059067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304892, -0.618801, 0.723966,
		0.749893, -0.624591, -0.218050,
		0.587112, 0.476415, 0.654468,
		39.954456, 43.358650, 19.255407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818390, 42.509472, 19.085615>,  <39.543480, 43.025158, 18.797279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818390, 42.509472, 19.085615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913311, 42.809113, 19.333012>,  <39.970264, 42.988895, 19.481449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913311, 42.809113, 19.333012>,  <39.818390, 42.509472, 19.085615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913311, 42.809113, 19.333012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215129, -0.580346, 0.785441,
		0.947315, -0.319444, 0.023436,
		0.237303, 0.749102, 0.618493,
		39.984501, 43.033844, 19.518560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423077, 42.307499, 19.457003>,  <39.818390, 42.509472, 19.085615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423077, 42.307499, 19.457003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244949, 42.592392, 19.674047>,  <40.138073, 42.763329, 19.804274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244949, 42.592392, 19.674047>,  <40.423077, 42.307499, 19.457003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244949, 42.592392, 19.674047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173010, -0.663041, 0.728316,
		0.878501, 0.230452, 0.418483,
		-0.445314, 0.712228, 0.542611,
		40.111355, 42.806061, 19.836830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624798, 42.167648, 20.200661>,  <40.423077, 42.307499, 19.457003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624798, 42.167648, 20.200661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306030, 42.409279, 20.200024>,  <40.114769, 42.554256, 20.199642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306030, 42.409279, 20.200024>,  <40.624798, 42.167648, 20.200661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306030, 42.409279, 20.200024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422805, -0.555892, 0.715695,
		0.431451, 0.571028, 0.698411,
		-0.796923, 0.604079, -0.001593,
		40.066952, 42.590504, 20.199545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563892, 42.446793, 20.885921>,  <40.624798, 42.167648, 20.200661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563892, 42.446793, 20.885921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198269, 42.474430, 20.726059>,  <39.978897, 42.491013, 20.630140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198269, 42.474430, 20.726059>,  <40.563892, 42.446793, 20.885921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198269, 42.474430, 20.726059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390082, -0.419611, 0.819611,
		-0.111068, 0.905070, 0.410502,
		-0.914057, 0.069097, -0.399657,
		39.924053, 42.495159, 20.606161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060989, 42.734200, 21.379711>,  <40.563892, 42.446793, 20.885921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060989, 42.734200, 21.379711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828918, 42.533604, 21.122992>,  <39.689674, 42.413246, 20.968960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828918, 42.533604, 21.122992>,  <40.060989, 42.734200, 21.379711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828918, 42.533604, 21.122992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567610, -0.316176, 0.760165,
		-0.584135, 0.805322, -0.101211,
		-0.580177, -0.501487, -0.641798,
		39.654865, 42.383156, 20.930452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500088, 42.686249, 21.717384>,  <40.060989, 42.734200, 21.379711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500088, 42.686249, 21.717384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443748, 42.406544, 21.437042>,  <39.409946, 42.238720, 21.268837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443748, 42.406544, 21.437042>,  <39.500088, 42.686249, 21.717384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443748, 42.406544, 21.437042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541268, -0.538360, 0.645909,
		-0.828970, 0.470324, -0.302660,
		-0.140847, -0.699259, -0.700856,
		39.401493, 42.196766, 21.226786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761551, 42.529530, 21.623074>,  <39.500088, 42.686249, 21.717384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761551, 42.529530, 21.623074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925968, 42.197903, 21.471449>,  <39.024620, 41.998928, 21.380474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925968, 42.197903, 21.471449>,  <38.761551, 42.529530, 21.623074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925968, 42.197903, 21.471449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658822, -0.557558, 0.505056,
		-0.630076, 0.042136, -0.775389,
		0.411043, -0.829068, -0.379064,
		39.049282, 41.949181, 21.357731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237896, 42.117168, 21.613230>,  <38.761551, 42.529530, 21.623074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237896, 42.117168, 21.613230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521496, 41.840809, 21.556681>,  <38.691654, 41.674995, 21.522751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521496, 41.840809, 21.556681>,  <38.237896, 42.117168, 21.613230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521496, 41.840809, 21.556681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371843, -0.536585, 0.757502,
		-0.599214, -0.484498, -0.637342,
		0.708996, -0.690897, -0.141372,
		38.734196, 41.633541, 21.514269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965759, 41.574585, 21.892685>,  <38.237896, 42.117168, 21.613230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965759, 41.574585, 21.892685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351730, 41.469837, 21.885239>,  <38.583313, 41.406990, 21.880770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351730, 41.469837, 21.885239>,  <37.965759, 41.574585, 21.892685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351730, 41.469837, 21.885239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138379, -0.567595, 0.811596,
		-0.223098, -0.780552, -0.583923,
		0.964924, -0.261868, -0.018617,
		38.641209, 41.391277, 21.879654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950603, 40.909008, 22.160370>,  <37.965759, 41.574585, 21.892685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950603, 40.909008, 22.160370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327473, 41.030464, 22.217094>,  <38.553593, 41.103340, 22.251129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327473, 41.030464, 22.217094>,  <37.950603, 40.909008, 22.160370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327473, 41.030464, 22.217094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015439, -0.462031, 0.886729,
		0.334771, -0.833263, -0.440001,
		0.942173, 0.303645, 0.141810,
		38.610123, 41.121559, 22.259638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377552, 40.335857, 22.370140>,  <37.950603, 40.909008, 22.160370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377552, 40.335857, 22.370140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597889, 40.648727, 22.486605>,  <38.730091, 40.836449, 22.556484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597889, 40.648727, 22.486605>,  <38.377552, 40.335857, 22.370140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597889, 40.648727, 22.486605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242191, -0.483653, 0.841085,
		0.798695, -0.392790, -0.455853,
		0.550845, 0.782174, 0.291161,
		38.763142, 40.883381, 22.573954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978058, 39.979221, 22.590368>,  <38.377552, 40.335857, 22.370140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978058, 39.979221, 22.590368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964725, 40.341724, 22.758934>,  <38.956726, 40.559227, 22.860073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964725, 40.341724, 22.758934>,  <38.978058, 39.979221, 22.590368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964725, 40.341724, 22.758934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214512, -0.405334, 0.888645,
		0.976152, 0.120018, -0.180892,
		-0.033332, 0.906256, 0.421413,
		38.954727, 40.613602, 22.885357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515591, 40.037331, 23.069208>,  <38.978058, 39.979221, 22.590368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515591, 40.037331, 23.069208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245369, 40.313168, 23.173574>,  <39.083237, 40.478672, 23.236195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245369, 40.313168, 23.173574>,  <39.515591, 40.037331, 23.069208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245369, 40.313168, 23.173574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035540, -0.323012, 0.945728,
		0.736449, 0.648167, 0.193705,
		-0.675558, 0.689596, 0.260917,
		39.042702, 40.520046, 23.251850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800362, 40.306091, 23.597733>,  <39.515591, 40.037331, 23.069208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800362, 40.306091, 23.597733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411339, 40.391628, 23.634398>,  <39.177925, 40.442951, 23.656397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411339, 40.391628, 23.634398>,  <39.800362, 40.306091, 23.597733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411339, 40.391628, 23.634398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030908, -0.271722, 0.961879,
		0.230598, 0.938317, 0.257656,
		-0.972558, 0.213843, 0.091660,
		39.119572, 40.455780, 23.661896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839142, 40.634151, 24.181623>,  <39.800362, 40.306091, 23.597733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839142, 40.634151, 24.181623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448441, 40.561592, 24.135952>,  <39.214020, 40.518055, 24.108549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448441, 40.561592, 24.135952>,  <39.839142, 40.634151, 24.181623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448441, 40.561592, 24.135952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072181, -0.223210, 0.972094,
		-0.201827, 0.957742, 0.204928,
		-0.976758, -0.181403, -0.114180,
		39.155415, 40.507172, 24.101698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390652, 41.062405, 24.611877>,  <39.839142, 40.634151, 24.181623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.390652, 41.062405, 24.611877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131416, 40.772629, 24.517923>,  <38.975876, 40.598763, 24.461552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131416, 40.772629, 24.517923>,  <39.390652, 41.062405, 24.611877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131416, 40.772629, 24.517923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074619, -0.246536, 0.966257,
		-0.757899, 0.643748, 0.105721,
		-0.648090, -0.724436, -0.234885,
		38.936989, 40.555298, 24.447458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863483, 41.145741, 25.160379>,  <39.390652, 41.062405, 24.611877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863483, 41.145741, 25.160379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836803, 40.781769, 24.996637>,  <38.820793, 40.563385, 24.898392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836803, 40.781769, 24.996637>,  <38.863483, 41.145741, 25.160379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836803, 40.781769, 24.996637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098805, -0.402228, 0.910192,
		-0.992869, 0.101160, -0.063075,
		-0.066704, -0.909934, -0.409354,
		38.816792, 40.508789, 24.873831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368271, 40.884491, 25.545969>,  <38.863483, 41.145741, 25.160379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368271, 40.884491, 25.545969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556690, 40.574409, 25.377600>,  <38.669743, 40.388359, 25.276579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556690, 40.574409, 25.377600>,  <38.368271, 40.884491, 25.545969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556690, 40.574409, 25.377600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011519, -0.471731, 0.881667,
		-0.882033, -0.420155, -0.213277,
		0.471046, -0.775203, -0.420922,
		38.698006, 40.341850, 25.251324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975002, 40.264027, 25.814766>,  <38.368271, 40.884491, 25.545969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975002, 40.264027, 25.814766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346115, 40.184654, 25.688370>,  <38.568783, 40.137032, 25.612532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346115, 40.184654, 25.688370>,  <37.975002, 40.264027, 25.814766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346115, 40.184654, 25.688370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212768, -0.414344, 0.884900,
		-0.306519, -0.888226, -0.342201,
		0.927780, -0.198429, -0.315990,
		38.624451, 40.125126, 25.593573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063820, 39.575600, 26.142170>,  <37.975002, 40.264027, 25.814766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063820, 39.575600, 26.142170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426098, 39.718269, 26.050516>,  <38.643463, 39.803871, 25.995523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426098, 39.718269, 26.050516>,  <38.063820, 39.575600, 26.142170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426098, 39.718269, 26.050516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363416, -0.374922, 0.852855,
		0.218287, -0.855695, -0.469187,
		0.905692, 0.356677, -0.229133,
		38.697807, 39.825272, 25.981775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523388, 38.996502, 25.958765>,  <38.063820, 39.575600, 26.142170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523388, 38.996502, 25.958765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743401, 39.305950, 26.084612>,  <38.875408, 39.491619, 26.160120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743401, 39.305950, 26.084612>,  <38.523388, 38.996502, 25.958765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743401, 39.305950, 26.084612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176101, -0.475688, 0.861806,
		0.816368, -0.418613, -0.397877,
		0.550028, 0.773617, 0.314619,
		38.908409, 39.538036, 26.178997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076534, 38.656258, 26.226461>,  <38.523388, 38.996502, 25.958765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076534, 38.656258, 26.226461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108963, 39.027161, 26.372675>,  <39.128422, 39.249702, 26.460403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108963, 39.027161, 26.372675>,  <39.076534, 38.656258, 26.226461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108963, 39.027161, 26.372675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431877, -0.363206, 0.825569,
		0.898281, 0.090932, -0.429910,
		0.081075, 0.927261, 0.365532,
		39.133286, 39.305340, 26.482334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745159, 38.695045, 26.629131>,  <39.076534, 38.656258, 26.226461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745159, 38.695045, 26.629131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566124, 39.031326, 26.751036>,  <39.458702, 39.233093, 26.824179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566124, 39.031326, 26.751036>,  <39.745159, 38.695045, 26.629131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566124, 39.031326, 26.751036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414993, -0.106605, 0.903558,
		0.792112, 0.530900, -0.301170,
		-0.447592, 0.840703, 0.304763,
		39.431847, 39.283539, 26.842464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155643, 38.976559, 27.012806>,  <39.745159, 38.695045, 26.629131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155643, 38.976559, 27.012806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816616, 39.134739, 27.154366>,  <39.613197, 39.229649, 27.239302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816616, 39.134739, 27.154366>,  <40.155643, 38.976559, 27.012806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816616, 39.134739, 27.154366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253116, -0.284887, 0.924538,
		0.466429, 0.873189, 0.141367,
		-0.847570, 0.395449, 0.353898,
		39.562344, 39.253372, 27.260534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300808, 39.387177, 27.566216>,  <40.155643, 38.976559, 27.012806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300808, 39.387177, 27.566216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917896, 39.279579, 27.608650>,  <39.688148, 39.215023, 27.634111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917896, 39.279579, 27.608650>,  <40.300808, 39.387177, 27.566216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917896, 39.279579, 27.608650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147562, -0.138944, 0.979245,
		-0.248667, 0.953068, 0.172701,
		-0.957283, -0.268990, 0.106086,
		39.630711, 39.198883, 27.640476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050331, 39.856174, 28.096323>,  <40.300808, 39.387177, 27.566216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050331, 39.856174, 28.096323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.800892, 39.544270, 28.074085>,  <39.651230, 39.357124, 28.060743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.800892, 39.544270, 28.074085>,  <40.050331, 39.856174, 28.096323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800892, 39.544270, 28.074085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036721, -0.100253, 0.994284,
		-0.780882, 0.617993, 0.091151,
		-0.623599, -0.779765, -0.055592,
		39.613811, 39.310341, 28.057407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667519, 39.905682, 28.662558>,  <40.050331, 39.856174, 28.096323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667519, 39.905682, 28.662558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621056, 39.526962, 28.542505>,  <39.593178, 39.299732, 28.470474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621056, 39.526962, 28.542505>,  <39.667519, 39.905682, 28.662558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621056, 39.526962, 28.542505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016398, -0.303962, 0.952543,
		-0.993095, 0.105727, 0.050834,
		-0.116161, -0.946799, -0.300130,
		39.586208, 39.242924, 28.452467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155270, 39.632824, 29.117661>,  <39.667519, 39.905682, 28.662558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155270, 39.632824, 29.117661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307076, 39.291187, 28.975395>,  <39.398159, 39.086205, 28.890036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307076, 39.291187, 28.975395>,  <39.155270, 39.632824, 29.117661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307076, 39.291187, 28.975395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190118, -0.448211, 0.873477,
		-0.905442, -0.263877, -0.332480,
		0.379512, -0.854093, -0.355662,
		39.420929, 39.034958, 28.868696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746471, 39.014954, 29.337738>,  <39.155270, 39.632824, 29.117661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746471, 39.014954, 29.337738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094471, 38.840050, 29.246605>,  <39.303268, 38.735107, 29.191925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094471, 38.840050, 29.246605>,  <38.746471, 39.014954, 29.337738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094471, 38.840050, 29.246605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019775, -0.492660, 0.869997,
		-0.492660, -0.752390, -0.437260,
		-0.869997, 0.437260, 0.227835,
		39.355469, 38.708874, 29.178255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622749, 38.359688, 29.530346>,  <38.746471, 39.014954, 29.337738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622749, 38.359688, 29.530346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020107, 38.388184, 29.494368>,  <39.258522, 38.405281, 29.472780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020107, 38.388184, 29.494368>,  <38.622749, 38.359688, 29.530346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020107, 38.388184, 29.494368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114215, -0.688595, 0.716095,
		-0.010923, -0.721639, -0.692184,
		0.993396, 0.071236, -0.089944,
		39.318127, 38.409554, 29.467384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867149, 37.734184, 29.520176>,  <38.622749, 38.359688, 29.530346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867149, 37.734184, 29.520176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207481, 37.923958, 29.610518>,  <39.411678, 38.037823, 29.664722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207481, 37.923958, 29.610518>,  <38.867149, 37.734184, 29.520176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207481, 37.923958, 29.610518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121423, -0.595724, 0.793958,
		0.511224, -0.648097, -0.564465,
		0.850827, 0.474430, 0.225855,
		39.462730, 38.066288, 29.678274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362827, 37.222569, 29.527493>,  <38.867149, 37.734184, 29.520176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362827, 37.222569, 29.527493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504936, 37.530857, 29.739063>,  <39.590202, 37.715832, 29.866005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504936, 37.530857, 29.739063>,  <39.362827, 37.222569, 29.527493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504936, 37.530857, 29.739063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102232, -0.594485, 0.797582,
		0.929154, -0.229288, -0.289999,
		0.355276, 0.770724, 0.528928,
		39.611519, 37.762074, 29.897741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927475, 36.893974, 29.874859>,  <39.362827, 37.222569, 29.527493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927475, 36.893974, 29.874859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838615, 37.233646, 30.066500>,  <39.785301, 37.437450, 30.181484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838615, 37.233646, 30.066500>,  <39.927475, 36.893974, 29.874859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838615, 37.233646, 30.066500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184168, -0.445988, 0.875887,
		0.957462, 0.282810, -0.057318,
		-0.222147, 0.849184, 0.479101,
		39.771973, 37.488403, 30.210230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461189, 36.928913, 30.414492>,  <39.927475, 36.893974, 29.874859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461189, 36.928913, 30.414492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147366, 37.156956, 30.512018>,  <39.959072, 37.293781, 30.570534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147366, 37.156956, 30.512018>,  <40.461189, 36.928913, 30.414492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147366, 37.156956, 30.512018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103052, -0.267860, 0.957931,
		0.611430, 0.776680, 0.151401,
		-0.784560, 0.570105, 0.243816,
		39.911999, 37.327988, 30.585163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672516, 37.391106, 30.903440>,  <40.461189, 36.928913, 30.414492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672516, 37.391106, 30.903440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.281506, 37.310120, 30.926920>,  <40.046898, 37.261528, 30.941008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.281506, 37.310120, 30.926920>,  <40.672516, 37.391106, 30.903440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281506, 37.310120, 30.926920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144805, -0.442553, 0.884973,
		-0.153201, 0.873586, 0.461926,
		-0.977528, -0.202468, 0.058700,
		39.988247, 37.249378, 30.944530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578873, 37.507812, 31.566734>,  <40.672516, 37.391106, 30.903440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578873, 37.507812, 31.566734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246052, 37.304031, 31.478960>,  <40.046360, 37.181763, 31.426296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246052, 37.304031, 31.478960>,  <40.578873, 37.507812, 31.566734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246052, 37.304031, 31.478960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018508, -0.420866, 0.906934,
		-0.554394, 0.750552, 0.359609,
		-0.832048, -0.509455, -0.219434,
		39.996437, 37.151196, 31.413130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272072, 37.586662, 32.134350>,  <40.578873, 37.507812, 31.566734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272072, 37.586662, 32.134350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054852, 37.296062, 31.965921>,  <39.924519, 37.121704, 31.864862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054852, 37.296062, 31.965921>,  <40.272072, 37.586662, 32.134350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054852, 37.296062, 31.965921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036748, -0.480416, 0.876271,
		-0.838898, 0.491330, 0.234191,
		-0.543047, -0.726495, -0.421075,
		39.891937, 37.078114, 31.839600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612514, 37.496639, 32.556255>,  <40.272072, 37.586662, 32.134350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612514, 37.496639, 32.556255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724152, 37.162643, 32.366562>,  <39.791134, 36.962246, 32.252747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724152, 37.162643, 32.366562>,  <39.612514, 37.496639, 32.556255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724152, 37.162643, 32.366562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069440, -0.510115, 0.857298,
		-0.957749, -0.206339, -0.200353,
		0.279097, -0.834989, -0.474234,
		39.807880, 36.912148, 32.224293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103104, 37.011406, 32.670086>,  <39.612514, 37.496639, 32.556255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103104, 37.011406, 32.670086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463303, 36.838123, 32.654980>,  <39.679424, 36.734154, 32.645916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463303, 36.838123, 32.654980>,  <39.103104, 37.011406, 32.670086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463303, 36.838123, 32.654980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130228, -0.351515, 0.927080,
		-0.414897, -0.829918, -0.372956,
		0.900500, -0.433212, -0.037764,
		39.733452, 36.708160, 32.643650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995056, 36.355484, 32.798172>,  <39.103104, 37.011406, 32.670086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995056, 36.355484, 32.798172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381767, 36.390327, 32.894299>,  <39.613792, 36.411232, 32.951973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381767, 36.390327, 32.894299>,  <38.995056, 36.355484, 32.798172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381767, 36.390327, 32.894299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152676, -0.557232, 0.816200,
		0.205009, -0.825775, -0.525420,
		0.966779, 0.087109, 0.240314,
		39.671803, 36.416462, 32.966393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300186, 35.725826, 32.993462>,  <38.995056, 36.355484, 32.798172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300186, 35.725826, 32.993462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556637, 35.985420, 33.157303>,  <39.710506, 36.141178, 33.255608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556637, 35.985420, 33.157303>,  <39.300186, 35.725826, 32.993462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556637, 35.985420, 33.157303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106966, -0.604086, 0.789708,
		0.759942, -0.462490, -0.456716,
		0.641128, 0.648986, 0.409600,
		39.748974, 36.180115, 33.280182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789436, 35.305801, 33.182838>,  <39.300186, 35.725826, 32.993462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789436, 35.305801, 33.182838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823135, 35.639107, 33.401405>,  <39.843353, 35.839088, 33.532547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823135, 35.639107, 33.401405>,  <39.789436, 35.305801, 33.182838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823135, 35.639107, 33.401405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276190, -0.546412, 0.790666,
		0.957404, 0.084308, -0.276171,
		0.084243, 0.833263, 0.546422,
		39.848408, 35.889084, 33.565331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511150, 35.360905, 33.528194>,  <39.789436, 35.305801, 33.182838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511150, 35.360905, 33.528194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.216637, 35.547592, 33.724178>,  <40.039928, 35.659603, 33.841770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.216637, 35.547592, 33.724178>,  <40.511150, 35.360905, 33.528194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216637, 35.547592, 33.724178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267605, -0.464215, 0.844329,
		0.621510, 0.752782, 0.216898,
		-0.736283, 0.466716, 0.489962,
		39.995750, 35.687607, 33.871166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000793, 35.748409, 34.037971>,  <40.511150, 35.360905, 33.528194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000793, 35.748409, 34.037971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.633781, 35.802544, 34.187538>,  <40.413574, 35.835026, 34.277279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.633781, 35.802544, 34.187538>,  <41.000793, 35.748409, 34.037971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633781, 35.802544, 34.187538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294514, -0.400544, 0.867655,
		0.267196, 0.906228, 0.327655,
		-0.917533, 0.135335, 0.373921,
		40.358521, 35.843143, 34.299713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.153538, 36.072884, 34.643303>,  <41.000793, 35.748409, 34.037971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.153538, 36.072884, 34.643303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.796947, 35.892414, 34.659866>,  <40.582993, 35.784130, 34.669804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.796947, 35.892414, 34.659866>,  <41.153538, 36.072884, 34.643303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.796947, 35.892414, 34.659866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310665, -0.542193, 0.780714,
		-0.329791, 0.708848, 0.623516,
		-0.891473, -0.451177, 0.041404,
		40.529507, 35.757061, 34.672287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163925, 35.810226, 35.298992>,  <41.153538, 36.072884, 34.643303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163925, 35.810226, 35.298992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.853878, 35.637142, 35.114838>,  <40.667850, 35.533291, 35.004345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.853878, 35.637142, 35.114838>,  <41.163925, 35.810226, 35.298992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853878, 35.637142, 35.114838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004099, -0.732100, 0.681185,
		-0.631809, 0.526109, 0.569234,
		-0.775114, -0.432712, -0.460390,
		40.621346, 35.507328, 34.976719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678860, 35.653328, 35.761604>,  <41.163925, 35.810226, 35.298992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678860, 35.653328, 35.761604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664005, 35.409618, 35.444767>,  <40.655090, 35.263393, 35.254665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664005, 35.409618, 35.444767>,  <40.678860, 35.653328, 35.761604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664005, 35.409618, 35.444767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033275, -0.792954, 0.608372,
		-0.998756, -0.003762, 0.049724,
		-0.037141, -0.609269, -0.792093,
		40.652863, 35.226837, 35.207138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240341, 35.092751, 35.947685>,  <40.678860, 35.653328, 35.761604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240341, 35.092751, 35.947685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470276, 34.967003, 35.645496>,  <40.608234, 34.891552, 35.464184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470276, 34.967003, 35.645496>,  <40.240341, 35.092751, 35.947685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470276, 34.967003, 35.645496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157091, -0.863682, 0.478931,
		-0.803049, -0.393983, -0.447089,
		0.574834, -0.314372, -0.755471,
		40.642727, 34.872692, 35.418854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928955, 34.463684, 35.732944>,  <40.240341, 35.092751, 35.947685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928955, 34.463684, 35.732944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301960, 34.424786, 35.593826>,  <40.525764, 34.401447, 35.510353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301960, 34.424786, 35.593826>,  <39.928955, 34.463684, 35.732944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301960, 34.424786, 35.593826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074757, -0.890218, 0.449359,
		-0.353316, -0.445033, -0.822869,
		0.932512, -0.097251, -0.347798,
		40.581715, 34.395611, 35.489487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070034, 33.792149, 35.625397>,  <39.928955, 34.463684, 35.732944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070034, 33.792149, 35.625397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439804, 33.943024, 35.647919>,  <40.661667, 34.033550, 35.661430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439804, 33.943024, 35.647919>,  <40.070034, 33.792149, 35.625397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439804, 33.943024, 35.647919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315055, -0.838510, 0.444568,
		0.214899, -0.393229, -0.893974,
		0.924423, 0.377189, 0.056306,
		40.717133, 34.056179, 35.664810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536686, 33.247200, 35.348667>,  <40.070034, 33.792149, 35.625397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536686, 33.247200, 35.348667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770866, 33.467201, 35.586906>,  <40.911377, 33.599201, 35.729851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770866, 33.467201, 35.586906>,  <40.536686, 33.247200, 35.348667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770866, 33.467201, 35.586906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549624, -0.809332, 0.207112,
		0.595951, 0.206102, -0.776121,
		0.585453, 0.550004, 0.595601,
		40.946503, 33.632202, 35.765587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197765, 33.058929, 35.148216>,  <40.536686, 33.247200, 35.348667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197765, 33.058929, 35.148216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.271336, 33.220043, 35.506866>,  <41.315479, 33.316711, 35.722057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.271336, 33.220043, 35.506866>,  <41.197765, 33.058929, 35.148216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271336, 33.220043, 35.506866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810090, -0.578752, 0.093809,
		0.556708, 0.709094, -0.432738,
		0.183928, 0.402781, 0.896626,
		41.326515, 33.340878, 35.775856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.884716, 33.263824, 35.200130>,  <41.197765, 33.058929, 35.148216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.884716, 33.263824, 35.200130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771709, 33.197613, 35.578079>,  <41.703903, 33.157887, 35.804848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771709, 33.197613, 35.578079>,  <41.884716, 33.263824, 35.200130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771709, 33.197613, 35.578079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819434, -0.553734, 0.148008,
		0.498708, 0.816076, 0.292079,
		-0.282520, -0.165526, 0.944872,
		41.686954, 33.147953, 35.861542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554432, 33.240597, 35.515305>,  <41.884716, 33.263824, 35.200130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554432, 33.240597, 35.515305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324696, 33.129669, 35.823387>,  <42.186855, 33.063110, 36.008236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324696, 33.129669, 35.823387>,  <42.554432, 33.240597, 35.515305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.324696, 33.129669, 35.823387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715027, -0.628057, 0.307053,
		0.398584, 0.727075, 0.559011,
		-0.574341, -0.277321, 0.770211,
		42.152393, 33.046474, 36.054451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.017838, 33.105995, 36.044395>,  <42.554432, 33.240597, 35.515305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.017838, 33.105995, 36.044395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689102, 32.922852, 36.180016>,  <42.491863, 32.812965, 36.261387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689102, 32.922852, 36.180016>,  <43.017838, 33.105995, 36.044395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.689102, 32.922852, 36.180016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568488, -0.698237, 0.435070,
		0.037540, 0.550303, 0.834121,
		-0.821834, -0.457855, 0.339053,
		42.442551, 32.785496, 36.281731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.035049, 33.015762, 36.792400>,  <43.017838, 33.105995, 36.044395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.035049, 33.015762, 36.792400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.824509, 32.719124, 36.626030>,  <42.698185, 32.541142, 36.526207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.824509, 32.719124, 36.626030>,  <43.035049, 33.015762, 36.792400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824509, 32.719124, 36.626030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621368, -0.669397, 0.407196,
		-0.580394, -0.044115, 0.813140,
		-0.526350, -0.741594, -0.415925,
		42.666603, 32.496647, 36.501251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.806793, 32.448639, 37.324100>,  <43.035049, 33.015762, 36.792400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.806793, 32.448639, 37.324100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849377, 32.285358, 36.961433>,  <42.874928, 32.187389, 36.743835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849377, 32.285358, 36.961433>,  <42.806793, 32.448639, 37.324100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.849377, 32.285358, 36.961433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511294, -0.759582, 0.402014,
		-0.852787, -0.506371, 0.127843,
		0.106461, -0.408197, -0.906665,
		42.881313, 32.162899, 36.689434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.053230, 31.878551, 37.562107>,  <42.806793, 32.448639, 37.324100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.053230, 31.878551, 37.562107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.174358, 31.840590, 37.182785>,  <43.247036, 31.817812, 36.955193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.174358, 31.840590, 37.182785>,  <43.053230, 31.878551, 37.562107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.174358, 31.840590, 37.182785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700327, -0.652722, 0.288958,
		-0.646406, -0.751630, -0.131195,
		0.302823, -0.094905, -0.948310,
		43.265205, 31.812119, 36.898293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.138752, 31.157642, 37.527988>,  <43.053230, 31.878551, 37.562107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.138752, 31.157642, 37.527988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.361710, 31.365429, 37.268925>,  <43.495483, 31.490101, 37.113487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.361710, 31.365429, 37.268925>,  <43.138752, 31.157642, 37.527988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.361710, 31.365429, 37.268925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828077, -0.404179, 0.388495,
		-0.059960, -0.752858, -0.655447,
		0.557399, 0.519466, -0.647659,
		43.528931, 31.521269, 37.074627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.381401, 30.702045, 36.939022>,  <43.138752, 31.157642, 37.527988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.381401, 30.702045, 36.939022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.632858, 30.990501, 37.055477>,  <43.783733, 31.163576, 37.125351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.632858, 30.990501, 37.055477>,  <43.381401, 30.702045, 36.939022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.632858, 30.990501, 37.055477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512655, -0.665775, 0.542151,
		0.584802, -0.191564, -0.788232,
		0.628642, 0.721142, 0.291140,
		43.821449, 31.206844, 37.142818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.303528, 31.151499, 36.314552>,  <43.381401, 30.702045, 36.939022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.303528, 31.151499, 36.314552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.532848, 31.454330, 36.439873>,  <43.670441, 31.636030, 36.515064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.532848, 31.454330, 36.439873>,  <43.303528, 31.151499, 36.314552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.532848, 31.454330, 36.439873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298013, 0.548865, -0.780984,
		-0.763227, 0.354371, 0.540284,
		0.573301, 0.757079, 0.313301,
		43.704838, 31.681454, 36.533863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.883324, 31.654549, 36.256989>,  <43.303528, 31.151499, 36.314552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.883324, 31.654549, 36.256989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.262180, 31.779701, 36.228642>,  <43.489494, 31.854792, 36.211636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.262180, 31.779701, 36.228642>,  <42.883324, 31.654549, 36.256989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.262180, 31.779701, 36.228642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249608, 0.579973, -0.775453,
		-0.201524, 0.752155, 0.627416,
		0.947145, 0.312880, -0.070865,
		43.546326, 31.873566, 36.207382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.467960, 31.602629, 35.820000>,  <42.883324, 31.654549, 36.256989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.467960, 31.602629, 35.820000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488255, 31.724810, 36.200340>,  <42.500431, 31.798119, 36.428547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488255, 31.724810, 36.200340>,  <42.467960, 31.602629, 35.820000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488255, 31.724810, 36.200340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667424, 0.718628, -0.195240,
		-0.742947, -0.624717, 0.240328,
		0.050737, 0.305454, 0.950854,
		42.503475, 31.816446, 36.485596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769226, 31.633785, 36.175465>,  <42.467960, 31.602629, 35.820000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769226, 31.633785, 36.175465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047577, 31.892500, 36.300320>,  <42.214588, 32.047729, 36.375233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047577, 31.892500, 36.300320>,  <41.769226, 31.633785, 36.175465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047577, 31.892500, 36.300320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650950, 0.751644, -0.106277,
		-0.303352, -0.129228, 0.944075,
		0.695875, 0.646785, 0.312134,
		42.256340, 32.086536, 36.393959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.482468, 32.052971, 36.674427>,  <41.769226, 31.633785, 36.175465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.482468, 32.052971, 36.674427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771748, 32.303532, 36.558083>,  <41.945316, 32.453869, 36.488274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771748, 32.303532, 36.558083>,  <41.482468, 32.052971, 36.674427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771748, 32.303532, 36.558083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667496, 0.742063, -0.061571,
		0.177272, 0.238679, 0.954781,
		0.723204, 0.626398, -0.290864,
		41.988708, 32.491451, 36.470821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499317, 32.661983, 37.105137>,  <41.482468, 32.052971, 36.674427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499317, 32.661983, 37.105137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.673321, 32.748455, 36.755501>,  <41.777721, 32.800339, 36.545719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.673321, 32.748455, 36.755501>,  <41.499317, 32.661983, 37.105137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.673321, 32.748455, 36.755501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507392, 0.860804, -0.039622,
		0.743855, 0.460742, 0.484146,
		0.435010, 0.216179, -0.874090,
		41.803825, 32.813309, 36.493275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717468, 33.316109, 37.123112>,  <41.499317, 32.661983, 37.105137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.717468, 33.316109, 37.123112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650749, 33.265625, 36.731960>,  <41.610718, 33.235332, 36.497269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650749, 33.265625, 36.731960>,  <41.717468, 33.316109, 37.123112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650749, 33.265625, 36.731960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385221, 0.921290, -0.053202,
		0.907625, 0.367825, -0.202289,
		-0.166797, -0.126214, -0.977880,
		41.600712, 33.227760, 36.438595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557461, 33.878159, 37.001377>,  <41.717468, 33.316109, 37.123112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557461, 33.878159, 37.001377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.458019, 33.735954, 36.640976>,  <41.398354, 33.650631, 36.424736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.458019, 33.735954, 36.640976>,  <41.557461, 33.878159, 37.001377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.458019, 33.735954, 36.640976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369407, 0.894701, -0.251094,
		0.895397, 0.270416, -0.353749,
		-0.248600, -0.355507, -0.901006,
		41.383438, 33.629303, 36.370674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642147, 34.379978, 36.517365>,  <41.557461, 33.878159, 37.001377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642147, 34.379978, 36.517365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406727, 34.144291, 36.295937>,  <41.265476, 34.002880, 36.163078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406727, 34.144291, 36.295937>,  <41.642147, 34.379978, 36.517365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406727, 34.144291, 36.295937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284917, 0.791955, -0.540028,
		0.756594, -0.160110, -0.633979,
		-0.588547, -0.589214, -0.553570,
		41.230164, 33.967525, 36.129864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864597, 34.491982, 35.832890>,  <41.642147, 34.379978, 36.517365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864597, 34.491982, 35.832890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.489895, 34.352882, 35.817062>,  <41.265076, 34.269424, 35.807564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.489895, 34.352882, 35.817062>,  <41.864597, 34.491982, 35.832890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.489895, 34.352882, 35.817062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236709, 0.712779, -0.660239,
		0.257798, -0.609115, -0.750013,
		-0.936755, -0.347743, -0.039570,
		41.208870, 34.248558, 35.805191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868683, 34.398384, 35.178947>,  <41.864597, 34.491982, 35.832890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.868683, 34.398384, 35.178947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491402, 34.447624, 35.302380>,  <41.265034, 34.477169, 35.376438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491402, 34.447624, 35.302380>,  <41.868683, 34.398384, 35.178947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491402, 34.447624, 35.302380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115829, 0.748692, -0.652720,
		-0.311385, -0.651387, -0.691906,
		-0.943198, 0.123105, 0.308581,
		41.208443, 34.484554, 35.394955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397507, 34.191460, 34.714005>,  <41.868683, 34.398384, 35.178947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397507, 34.191460, 34.714005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161232, 34.440903, 34.918827>,  <41.019466, 34.590569, 35.041721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161232, 34.440903, 34.918827>,  <41.397507, 34.191460, 34.714005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161232, 34.440903, 34.918827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261128, 0.452712, -0.852563,
		-0.763479, -0.637311, -0.104570,
		-0.590688, 0.623608, 0.512056,
		40.984024, 34.627987, 35.072445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842602, 34.386963, 34.218845>,  <41.397507, 34.191460, 34.714005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842602, 34.386963, 34.218845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.797813, 34.657970, 34.509621>,  <40.770939, 34.820576, 34.684086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.797813, 34.657970, 34.509621>,  <40.842602, 34.386963, 34.218845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.797813, 34.657970, 34.509621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224022, 0.695494, -0.682717,
		-0.968131, -0.239294, 0.073903,
		-0.111970, 0.677515, 0.726936,
		40.764221, 34.861225, 34.727703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128086, 34.654209, 34.280186>,  <40.842602, 34.386963, 34.218845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128086, 34.654209, 34.280186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399670, 34.908943, 34.426315>,  <40.562618, 35.061783, 34.513992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399670, 34.908943, 34.426315>,  <40.128086, 34.654209, 34.280186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399670, 34.908943, 34.426315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434082, 0.749508, -0.499810,
		-0.592108, 0.180770, 0.785322,
		0.678955, 0.636836, 0.365321,
		40.603355, 35.099995, 34.535912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776314, 34.696285, 34.784401>,  <40.128086, 34.654209, 34.280186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776314, 34.696285, 34.784401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984077, 35.020100, 34.893848>,  <40.108734, 35.214390, 34.959515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984077, 35.020100, 34.893848>,  <39.776314, 34.696285, 34.784401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984077, 35.020100, 34.893848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354486, 0.495467, -0.793002,
		-0.777532, 0.314898, 0.544319,
		0.519407, 0.809537, 0.273615,
		40.139900, 35.262962, 34.975933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291344, 35.307503, 34.681358>,  <39.776314, 34.696285, 34.784401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291344, 35.307503, 34.681358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664539, 35.451130, 34.691231>,  <39.888454, 35.537304, 34.697155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664539, 35.451130, 34.691231>,  <39.291344, 35.307503, 34.681358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664539, 35.451130, 34.691231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231999, 0.652414, -0.721479,
		-0.275160, 0.667404, 0.691996,
		0.932986, 0.359064, 0.024681,
		39.944435, 35.558849, 34.698635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227745, 35.888798, 34.937996>,  <39.291344, 35.307503, 34.681358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227745, 35.888798, 34.937996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561176, 35.868980, 34.717922>,  <39.761234, 35.857090, 34.585880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561176, 35.868980, 34.717922>,  <39.227745, 35.888798, 34.937996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561176, 35.868980, 34.717922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363068, 0.701501, -0.613251,
		0.416336, 0.710944, 0.566765,
		0.833574, -0.049545, -0.550182,
		39.811249, 35.854118, 34.552868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461147, 36.499866, 34.720905>,  <39.227745, 35.888798, 34.937996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461147, 36.499866, 34.720905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633289, 36.263962, 34.447563>,  <39.736572, 36.122417, 34.283558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633289, 36.263962, 34.447563>,  <39.461147, 36.499866, 34.720905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633289, 36.263962, 34.447563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128707, 0.709219, -0.693140,
		0.893438, 0.386248, 0.229308,
		0.430353, -0.589764, -0.683355,
		39.762394, 36.087032, 34.242558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905109, 36.892826, 34.337879>,  <39.461147, 36.499866, 34.720905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905109, 36.892826, 34.337879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864380, 36.571014, 34.103828>,  <39.839943, 36.377930, 33.963398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864380, 36.571014, 34.103828>,  <39.905109, 36.892826, 34.337879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864380, 36.571014, 34.103828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074455, 0.592696, -0.801978,
		0.992013, -0.038094, -0.120250,
		-0.101822, -0.804525, -0.585126,
		39.833832, 36.329659, 33.928291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514450, 36.961575, 33.826298>,  <39.905109, 36.892826, 34.337879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514450, 36.961575, 33.826298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239769, 36.713123, 33.675224>,  <40.074963, 36.564053, 33.584579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239769, 36.713123, 33.675224>,  <40.514450, 36.961575, 33.826298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239769, 36.713123, 33.675224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134388, 0.402127, -0.905667,
		0.714412, -0.672677, -0.192668,
		-0.686698, -0.621128, -0.377684,
		40.033760, 36.526787, 33.561920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905972, 36.610912, 33.340073>,  <40.514450, 36.961575, 33.826298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905972, 36.610912, 33.340073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531467, 36.548923, 33.213963>,  <40.306767, 36.511730, 33.138298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531467, 36.548923, 33.213963>,  <40.905972, 36.610912, 33.340073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531467, 36.548923, 33.213963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262223, 0.288934, -0.920737,
		0.233781, -0.944723, -0.229881,
		-0.936262, -0.154971, -0.315275,
		40.250587, 36.502430, 33.119381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914173, 36.192753, 32.659939>,  <40.905972, 36.610912, 33.340073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.914173, 36.192753, 32.659939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550976, 36.359924, 32.648083>,  <40.333057, 36.460228, 32.640968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550976, 36.359924, 32.648083>,  <40.914173, 36.192753, 32.659939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550976, 36.359924, 32.648083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088828, 0.122876, -0.988439,
		-0.409457, -0.900130, -0.148695,
		-0.907995, 0.417931, -0.029644,
		40.278576, 36.485302, 32.639191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701252, 35.948067, 32.085823>,  <40.914173, 36.192753, 32.659939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701252, 35.948067, 32.085823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499954, 36.288170, 32.147530>,  <40.379173, 36.492233, 32.184555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499954, 36.288170, 32.147530>,  <40.701252, 35.948067, 32.085823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499954, 36.288170, 32.147530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242355, 0.310227, -0.919252,
		-0.829462, -0.425224, -0.362185,
		-0.503247, 0.850261, 0.154266,
		40.348980, 36.543247, 32.193810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962631, 35.467495, 31.633020>,  <40.701252, 35.948067, 32.085823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962631, 35.467495, 31.633020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.129166, 35.436764, 31.270636>,  <41.229084, 35.418324, 31.053205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.129166, 35.436764, 31.270636>,  <40.962631, 35.467495, 31.633020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.129166, 35.436764, 31.270636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869118, -0.259004, 0.421366,
		-0.267021, -0.962816, -0.041060,
		0.416333, -0.076828, -0.905961,
		41.254066, 35.413715, 30.998848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663441, 35.135876, 31.771648>,  <40.962631, 35.467495, 31.633020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.663441, 35.135876, 31.771648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659035, 35.266712, 31.393677>,  <41.656391, 35.345215, 31.166895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659035, 35.266712, 31.393677>,  <41.663441, 35.135876, 31.771648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.659035, 35.266712, 31.393677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999938, 0.004805, -0.009992,
		0.001272, -0.944980, -0.327126,
		-0.011014, 0.327093, -0.944928,
		41.655731, 35.364841, 31.110199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102692, 35.752228, 31.739037>,  <41.663441, 35.135876, 31.771648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.102692, 35.752228, 31.739037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.448940, 35.900787, 31.604713>,  <42.656689, 35.989925, 31.524120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.448940, 35.900787, 31.604713>,  <42.102692, 35.752228, 31.739037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448940, 35.900787, 31.604713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387246, -0.071435, 0.919205,
		0.317408, -0.925719, -0.205660,
		0.865617, 0.371404, -0.335808,
		42.708626, 36.012207, 31.503971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.589191, 35.379349, 32.018658>,  <42.102692, 35.752228, 31.739037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.589191, 35.379349, 32.018658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.793560, 35.709045, 31.921021>,  <42.916180, 35.906864, 31.862438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.793560, 35.709045, 31.921021>,  <42.589191, 35.379349, 32.018658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.793560, 35.709045, 31.921021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667085, -0.201073, 0.717333,
		0.542178, -0.529330, -0.652574,
		0.510921, 0.824245, -0.244090,
		42.946835, 35.956318, 31.847794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.447552, 35.354069, 31.991209>,  <42.589191, 35.379349, 32.018658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.447552, 35.354069, 31.991209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.335827, 35.730015, 32.069836>,  <43.268791, 35.955582, 32.117012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.335827, 35.730015, 32.069836>,  <43.447552, 35.354069, 31.991209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.335827, 35.730015, 32.069836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641273, 0.030223, 0.766717,
		0.714670, 0.340206, -0.611152,
		-0.279313, 0.939865, 0.196566,
		43.252033, 36.011974, 32.128807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.035809, 35.614449, 32.115704>,  <43.447552, 35.354069, 31.991209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.035809, 35.614449, 32.115704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754467, 35.852348, 32.271431>,  <43.585663, 35.995090, 32.364868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754467, 35.852348, 32.271431>,  <44.035809, 35.614449, 32.115704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.754467, 35.852348, 32.271431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557883, 0.122444, 0.820838,
		0.440525, 0.794530, -0.417923,
		-0.703352, 0.594752, 0.389315,
		43.543461, 36.030773, 32.388226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.366318, 36.202908, 32.437103>,  <44.035809, 35.614449, 32.115704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.366318, 36.202908, 32.437103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.016800, 36.146568, 32.623280>,  <43.807087, 36.112766, 32.734985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.016800, 36.146568, 32.623280>,  <44.366318, 36.202908, 32.437103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.016800, 36.146568, 32.623280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440327, 0.177023, 0.880213,
		-0.206371, 0.974076, -0.092663,
		-0.873798, -0.140848, 0.465444,
		43.754662, 36.104313, 32.762913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.325844, 36.653961, 32.964058>,  <44.366318, 36.202908, 32.437103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.325844, 36.653961, 32.964058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.076122, 36.362415, 33.076488>,  <43.926289, 36.187489, 33.143948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.076122, 36.362415, 33.076488>,  <44.325844, 36.653961, 32.964058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.076122, 36.362415, 33.076488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530878, -0.131900, 0.837121,
		-0.573074, 0.671833, 0.469284,
		-0.624303, -0.728865, 0.281072,
		43.888832, 36.143757, 33.160809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.175816, 36.688507, 33.673332>,  <44.325844, 36.653961, 32.964058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.175816, 36.688507, 33.673332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.179031, 36.305267, 33.558804>,  <44.180962, 36.075325, 33.490086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.179031, 36.305267, 33.558804>,  <44.175816, 36.688507, 33.673332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.179031, 36.305267, 33.558804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657691, -0.210619, 0.723244,
		-0.753245, -0.194126, 0.628440,
		0.008038, -0.958099, -0.286323,
		44.181442, 36.017838, 33.472908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.286434, 36.149502, 34.207710>,  <44.175816, 36.688507, 33.673332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.286434, 36.149502, 34.207710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.420910, 35.910542, 33.916481>,  <44.501595, 35.767166, 33.741745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.420910, 35.910542, 33.916481>,  <44.286434, 36.149502, 34.207710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.420910, 35.910542, 33.916481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861523, -0.117226, 0.493999,
		-0.380466, -0.793326, 0.475268,
		0.336189, -0.597404, -0.728069,
		44.521767, 35.731319, 33.698059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.444111, 35.506851, 34.457684>,  <44.286434, 36.149502, 34.207710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.444111, 35.506851, 34.457684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.700378, 35.557995, 34.154846>,  <44.854137, 35.588680, 33.973145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.700378, 35.557995, 34.154846>,  <44.444111, 35.506851, 34.457684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.700378, 35.557995, 34.154846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749450, -0.318517, 0.580407,
		-0.166938, -0.939254, -0.299887,
		0.640669, 0.127858, -0.757097,
		44.892578, 35.596352, 33.927715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.930012, 34.937603, 34.239098>,  <44.444111, 35.506851, 34.457684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.930012, 34.937603, 34.239098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.173058, 35.214005, 34.082470>,  <45.318886, 35.379845, 33.988495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.173058, 35.214005, 34.082470>,  <44.930012, 34.937603, 34.239098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.173058, 35.214005, 34.082470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786980, -0.457326, 0.414144,
		0.107102, -0.559793, -0.821682,
		0.607611, 0.691003, -0.391565,
		45.355343, 35.421307, 33.965000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.867062, 34.209343, 34.449081>,  <44.930012, 34.937603, 34.239098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.867062, 34.209343, 34.449081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.112114, 34.010620, 34.694965>,  <45.259148, 33.891388, 34.842495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.112114, 34.010620, 34.694965>,  <44.867062, 34.209343, 34.449081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.112114, 34.010620, 34.694965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156555, 0.838615, 0.521742,
		-0.774707, -0.223401, 0.591542,
		0.612634, -0.496806, 0.614706,
		45.295902, 33.861580, 34.879375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.692005, 34.173664, 35.231113>,  <44.867062, 34.209343, 34.449081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.692005, 34.173664, 35.231113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.090221, 34.193153, 35.198818>,  <45.329151, 34.204845, 35.179440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.090221, 34.193153, 35.198818>,  <44.692005, 34.173664, 35.231113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.090221, 34.193153, 35.198818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021643, 0.951382, 0.307253,
		0.091787, -0.304136, 0.948196,
		0.995543, 0.048723, -0.080742,
		45.388885, 34.207771, 35.174595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.972507, 34.426846, 35.868359>,  <44.692005, 34.173664, 35.231113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.972507, 34.426846, 35.868359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.197830, 34.514538, 35.549706>,  <45.333023, 34.567154, 35.358513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.197830, 34.514538, 35.549706>,  <44.972507, 34.426846, 35.868359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.197830, 34.514538, 35.549706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020870, 0.967624, 0.251531,
		0.825986, -0.125063, 0.549642,
		0.563304, 0.219232, -0.796634,
		45.366821, 34.580307, 35.310715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.661945, 34.886524, 35.993034>,  <44.972507, 34.426846, 35.868359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.661945, 34.886524, 35.993034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.488548, 34.917515, 35.633907>,  <45.384510, 34.936111, 35.418430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.488548, 34.917515, 35.633907>,  <45.661945, 34.886524, 35.993034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.488548, 34.917515, 35.633907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105928, 0.985009, 0.136148,
		0.894908, 0.154124, -0.418789,
		-0.433495, 0.077479, -0.897819,
		45.358501, 34.940758, 35.364563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.091717, 35.202587, 35.627419>,  <45.661945, 34.886524, 35.993034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.091717, 35.202587, 35.627419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.735397, 35.275082, 35.460743>,  <45.521606, 35.318577, 35.360737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.735397, 35.275082, 35.460743>,  <46.091717, 35.202587, 35.627419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.735397, 35.275082, 35.460743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106460, 0.974735, 0.196363,
		0.441745, 0.130560, -0.887590,
		-0.890802, 0.181235, -0.416684,
		45.468155, 35.329453, 35.335739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.233173, 34.513702, 35.533604>,  <46.091717, 35.202587, 35.627419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.233173, 34.513702, 35.533604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.087009, 34.479492, 35.162838>,  <45.999313, 34.458965, 34.940380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.087009, 34.479492, 35.162838>,  <46.233173, 34.513702, 35.533604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.087009, 34.479492, 35.162838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758327, -0.550131, 0.349708,
		-0.539830, 0.830688, 0.136167,
		-0.365408, -0.085523, -0.926910,
		45.977386, 34.453835, 34.884766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.428379, 35.023521, 34.972710>,  <46.233173, 34.513702, 35.533604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.428379, 35.023521, 34.972710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.647713, 35.063137, 34.640560>,  <46.779312, 35.086906, 34.441269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.647713, 35.063137, 34.640560>,  <46.428379, 35.023521, 34.972710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.647713, 35.063137, 34.640560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832353, 0.031262, 0.553364,
		0.080763, -0.994592, -0.065292,
		0.548330, 0.099038, -0.830377,
		46.812210, 35.092846, 34.391449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.936081, 34.483322, 34.852081>,  <46.428379, 35.023521, 34.972710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.936081, 34.483322, 34.852081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.010162, 34.854221, 34.721901>,  <47.054611, 35.076759, 34.643795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.010162, 34.854221, 34.721901>,  <46.936081, 34.483322, 34.852081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.010162, 34.854221, 34.721901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815252, 0.039937, 0.577727,
		0.548692, -0.372320, -0.748542,
		0.185205, 0.927245, -0.325448,
		47.065723, 35.132397, 34.624268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.600578, 34.505863, 34.620293>,  <46.936081, 34.483322, 34.852081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.600578, 34.505863, 34.620293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.513256, 34.876240, 34.743561>,  <47.460861, 35.098465, 34.817520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.513256, 34.876240, 34.743561>,  <47.600578, 34.505863, 34.620293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.513256, 34.876240, 34.743561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851797, 0.026696, 0.523192,
		0.476219, 0.376715, -0.794544,
		-0.218306, 0.925944, 0.308171,
		47.447765, 35.154022, 34.836014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.713825, 35.140614, 22.772259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.365814, 35.188099, 22.580862>,  <38.157005, 35.216591, 22.466024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.365814, 35.188099, 22.580862>,  <38.713825, 35.140614, 22.772259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365814, 35.188099, 22.580862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492812, -0.182614, 0.850758,
		0.013616, 0.975992, 0.217382,
		-0.870029, 0.118713, -0.478494,
		38.104805, 35.223713, 22.437313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223354, 35.399731, 23.286095>,  <38.713825, 35.140614, 22.772259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223354, 35.399731, 23.286095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.999466, 35.252411, 22.989161>,  <37.865131, 35.164021, 22.810999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.999466, 35.252411, 22.989161>,  <38.223354, 35.399731, 23.286095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999466, 35.252411, 22.989161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715906, -0.236256, 0.657009,
		-0.417358, 0.899188, -0.131431,
		-0.559723, -0.368300, -0.742337,
		37.831551, 35.141922, 22.766459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588013, 35.518948, 23.497450>,  <38.223354, 35.399731, 23.286095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588013, 35.518948, 23.497450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.577915, 35.202187, 23.253399>,  <37.571857, 35.012131, 23.106968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.577915, 35.202187, 23.253399>,  <37.588013, 35.518948, 23.497450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577915, 35.202187, 23.253399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650973, -0.450167, 0.611215,
		-0.758681, 0.412605, -0.504142,
		-0.025242, -0.791901, -0.610128,
		37.570343, 34.964615, 23.070360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895706, 35.279438, 23.580862>,  <37.588013, 35.518948, 23.497450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895706, 35.279438, 23.580862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.056679, 34.962658, 23.397182>,  <37.153263, 34.772591, 23.286974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.056679, 34.962658, 23.397182>,  <36.895706, 35.279438, 23.580862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056679, 34.962658, 23.397182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402613, -0.603604, 0.688161,
		-0.822165, -0.092055, -0.561757,
		0.402427, -0.791952, -0.459200,
		37.177406, 34.725071, 23.259422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370514, 34.809795, 23.602854>,  <36.895706, 35.279438, 23.580862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370514, 34.809795, 23.602854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.725506, 34.628120, 23.571646>,  <36.938503, 34.519115, 23.552921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.725506, 34.628120, 23.571646>,  <36.370514, 34.809795, 23.602854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725506, 34.628120, 23.571646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251052, -0.618466, 0.744629,
		-0.386453, -0.641259, -0.662903,
		0.887483, -0.454187, -0.078019,
		36.991753, 34.491863, 23.548241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193062, 34.174400, 23.632393>,  <36.370514, 34.809795, 23.602854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193062, 34.174400, 23.632393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.572681, 34.214905, 23.751755>,  <36.800453, 34.239208, 23.823372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.572681, 34.214905, 23.751755>,  <36.193062, 34.174400, 23.632393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572681, 34.214905, 23.751755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160468, -0.659679, 0.734216,
		0.271200, -0.744694, -0.609821,
		0.949053, 0.101263, 0.298404,
		36.857399, 34.245285, 23.841276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315414, 33.582481, 23.857630>,  <36.193062, 34.174400, 23.632393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315414, 33.582481, 23.857630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.600147, 33.801010, 24.034184>,  <36.770988, 33.932129, 24.140116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.600147, 33.801010, 24.034184>,  <36.315414, 33.582481, 23.857630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600147, 33.801010, 24.034184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144599, -0.500981, 0.853293,
		0.687299, -0.671229, -0.277618,
		0.711837, 0.546324, 0.441383,
		36.813698, 33.964909, 24.166599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573765, 33.111195, 24.480688>,  <36.315414, 33.582481, 23.857630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573765, 33.111195, 24.480688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.736187, 33.465015, 24.572506>,  <36.833641, 33.677307, 24.627596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.736187, 33.465015, 24.572506>,  <36.573765, 33.111195, 24.480688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736187, 33.465015, 24.572506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023228, -0.261091, 0.965035,
		0.913555, -0.386522, -0.126562,
		0.406052, 0.884552, 0.229543,
		36.858002, 33.730381, 24.641369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139706, 32.958641, 24.895985>,  <36.573765, 33.111195, 24.480688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139706, 32.958641, 24.895985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.042233, 33.339371, 24.970451>,  <36.983749, 33.567806, 25.015131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.042233, 33.339371, 24.970451>,  <37.139706, 32.958641, 24.895985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042233, 33.339371, 24.970451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074135, -0.173111, 0.982108,
		0.967018, 0.253122, -0.028379,
		-0.243681, 0.951820, 0.186167,
		36.969128, 33.624916, 25.026300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609856, 33.232967, 25.328678>,  <37.139706, 32.958641, 24.895985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609856, 33.232967, 25.328678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.288170, 33.465836, 25.376534>,  <37.095158, 33.605556, 25.405247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.288170, 33.465836, 25.376534>,  <37.609856, 33.232967, 25.328678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288170, 33.465836, 25.376534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163998, 0.023883, 0.986172,
		0.571266, 0.812714, -0.114683,
		-0.804214, 0.582174, 0.119640,
		37.046906, 33.640488, 25.412426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805809, 33.852280, 25.807617>,  <37.609856, 33.232967, 25.328678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805809, 33.852280, 25.807617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.406303, 33.847431, 25.826862>,  <37.166599, 33.844521, 25.838409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.406303, 33.847431, 25.826862>,  <37.805809, 33.852280, 25.807617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406303, 33.847431, 25.826862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047816, 0.023592, 0.998578,
		-0.013239, 0.999648, -0.022983,
		-0.998768, -0.012121, 0.048111,
		37.106674, 33.843796, 25.841295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617279, 34.374172, 26.256008>,  <37.805809, 33.852280, 25.807617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617279, 34.374172, 26.256008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.300049, 34.130585, 26.261639>,  <37.109711, 33.984432, 26.265017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.300049, 34.130585, 26.261639>,  <37.617279, 34.374172, 26.256008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300049, 34.130585, 26.261639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034054, 0.067395, 0.997145,
		-0.608174, 0.790329, -0.074187,
		-0.793073, -0.608964, 0.014074,
		37.062126, 33.947895, 26.265862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157093, 34.602272, 26.734240>,  <37.617279, 34.374172, 26.256008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157093, 34.602272, 26.734240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.011497, 34.232990, 26.684898>,  <36.924141, 34.011421, 26.655294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.011497, 34.232990, 26.684898>,  <37.157093, 34.602272, 26.734240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011497, 34.232990, 26.684898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237535, -0.036047, 0.970710,
		-0.900605, 0.382626, -0.206172,
		-0.363987, -0.923200, -0.123351,
		36.902302, 33.956032, 26.647894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503391, 34.562443, 27.108904>,  <37.157093, 34.602272, 26.734240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503391, 34.562443, 27.108904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.612885, 34.181664, 27.053949>,  <36.678581, 33.953197, 27.020977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.612885, 34.181664, 27.053949>,  <36.503391, 34.562443, 27.108904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612885, 34.181664, 27.053949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063962, -0.124508, 0.990155,
		-0.959678, -0.279822, 0.026807,
		0.273729, -0.951944, -0.137386,
		36.695004, 33.896080, 27.012733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997311, 34.337933, 27.529325>,  <36.503391, 34.562443, 27.108904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997311, 34.337933, 27.529325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.299732, 34.088211, 27.450710>,  <36.481186, 33.938377, 27.403542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.299732, 34.088211, 27.450710>,  <35.997311, 34.337933, 27.529325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299732, 34.088211, 27.450710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072873, -0.218122, 0.973197,
		-0.650437, -0.750115, -0.119417,
		0.756057, -0.624300, -0.196537,
		36.526550, 33.900921, 27.391748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785675, 33.590240, 27.815409>,  <35.997311, 34.337933, 27.529325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785675, 33.590240, 27.815409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.182339, 33.612377, 27.768858>,  <36.420338, 33.625660, 27.740929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.182339, 33.612377, 27.768858>,  <35.785675, 33.590240, 27.815409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182339, 33.612377, 27.768858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127752, -0.303811, 0.944128,
		0.016893, -0.951124, -0.308348,
		0.991662, 0.055341, -0.116376,
		36.479836, 33.628979, 27.733946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028511, 32.994598, 28.053762>,  <35.785675, 33.590240, 27.815409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028511, 32.994598, 28.053762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.358212, 33.221054, 28.049784>,  <36.556030, 33.356930, 28.047398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.358212, 33.221054, 28.049784>,  <36.028511, 32.994598, 28.053762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358212, 33.221054, 28.049784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184859, -0.252451, 0.949787,
		0.535203, -0.784699, -0.312739,
		0.824248, 0.566141, -0.009946,
		36.605488, 33.390896, 28.046801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537247, 32.617138, 28.518990>,  <36.028511, 32.994598, 28.053762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537247, 32.617138, 28.518990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.653286, 32.999195, 28.495176>,  <36.722912, 33.228428, 28.480888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.653286, 32.999195, 28.495176>,  <36.537247, 32.617138, 28.518990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653286, 32.999195, 28.495176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310635, -0.035143, 0.949880,
		0.905178, -0.294054, -0.306895,
		0.290101, 0.955143, -0.059533,
		36.740314, 33.285736, 28.477316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247864, 32.629623, 28.755100>,  <36.537247, 32.617138, 28.518990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247864, 32.629623, 28.755100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.120327, 33.006229, 28.798733>,  <37.043804, 33.232193, 28.824913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.120327, 33.006229, 28.798733>,  <37.247864, 32.629623, 28.755100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120327, 33.006229, 28.798733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325446, 0.000662, 0.945560,
		0.890183, 0.336983, -0.306622,
		-0.318840, 0.941511, 0.109081,
		37.024673, 33.288681, 28.831457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803478, 33.034676, 28.966230>,  <37.247864, 32.629623, 28.755100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803478, 33.034676, 28.966230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.486462, 33.250607, 29.079699>,  <37.296253, 33.380165, 29.147779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.486462, 33.250607, 29.079699>,  <37.803478, 33.034676, 28.966230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486462, 33.250607, 29.079699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347391, 0.017346, 0.937560,
		0.501200, 0.841597, -0.201279,
		-0.792539, 0.539827, 0.283669,
		37.248699, 33.412556, 29.164799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125530, 33.502567, 29.430809>,  <37.803478, 33.034676, 28.966230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125530, 33.502567, 29.430809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.732552, 33.543106, 29.493448>,  <37.496765, 33.567429, 29.531033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.732552, 33.543106, 29.493448>,  <38.125530, 33.502567, 29.430809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732552, 33.543106, 29.493448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144633, -0.116282, 0.982629,
		0.117798, 0.988032, 0.099583,
		-0.982449, 0.101348, 0.156600,
		37.437817, 33.573509, 29.540428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087318, 33.942974, 30.125753>,  <38.125530, 33.502567, 29.430809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087318, 33.942974, 30.125753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.719242, 33.794243, 30.076769>,  <37.498398, 33.705006, 30.047379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.719242, 33.794243, 30.076769>,  <38.087318, 33.942974, 30.125753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719242, 33.794243, 30.076769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067011, -0.158598, 0.985066,
		-0.385699, 0.914653, 0.121024,
		-0.920188, -0.371829, -0.122463,
		37.443184, 33.682693, 30.040030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657043, 34.515980, 30.027422>,  <38.087318, 33.942974, 30.125753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657043, 34.515980, 30.027422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.049000, 34.494202, 30.104210>,  <39.284172, 34.481133, 30.150284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.049000, 34.494202, 30.104210>,  <38.657043, 34.515980, 30.027422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049000, 34.494202, 30.104210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198394, 0.368929, -0.908037,
		-0.021382, 0.927861, 0.372312,
		0.979889, -0.054449, 0.191971,
		39.342968, 34.477867, 30.161800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859886, 35.154652, 29.677931>,  <38.657043, 34.515980, 30.027422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859886, 35.154652, 29.677931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.195312, 34.941074, 29.721214>,  <39.396568, 34.812927, 29.747185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.195312, 34.941074, 29.721214>,  <38.859886, 35.154652, 29.677931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195312, 34.941074, 29.721214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308306, 0.301338, -0.902299,
		0.449172, 0.789998, 0.417311,
		0.838565, -0.533947, 0.108208,
		39.446880, 34.780891, 29.753677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369377, 35.564278, 29.445101>,  <38.859886, 35.154652, 29.677931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369377, 35.564278, 29.445101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.520153, 35.194237, 29.426794>,  <39.610619, 34.972210, 29.415810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.520153, 35.194237, 29.426794>,  <39.369377, 35.564278, 29.445101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520153, 35.194237, 29.426794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258885, 0.152672, -0.953766,
		0.889321, 0.347667, 0.297044,
		0.376944, -0.925105, -0.045769,
		39.633236, 34.916706, 29.413063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932098, 35.694561, 29.057003>,  <39.369377, 35.564278, 29.445101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932098, 35.694561, 29.057003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.893913, 35.296413, 29.052496>,  <39.871002, 35.057526, 29.049791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.893913, 35.296413, 29.052496>,  <39.932098, 35.694561, 29.057003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893913, 35.296413, 29.052496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009271, 0.012207, -0.999883,
		0.995390, -0.095344, -0.010393,
		-0.095459, -0.995370, -0.011267,
		39.865276, 34.997803, 29.049116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575771, 35.359383, 28.746483>,  <39.932098, 35.694561, 29.057003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575771, 35.359383, 28.746483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.269394, 35.107281, 28.695732>,  <40.085567, 34.956020, 28.665281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.269394, 35.107281, 28.695732>,  <40.575771, 35.359383, 28.746483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269394, 35.107281, 28.695732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088643, 0.091932, -0.991812,
		0.636762, -0.770923, -0.014547,
		-0.765948, -0.630259, -0.126876,
		40.039608, 34.918201, 28.657669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739155, 34.916588, 28.043629>,  <40.575771, 35.359383, 28.746483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739155, 34.916588, 28.043629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.350025, 34.887539, 28.131575>,  <40.116547, 34.870110, 28.184341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.350025, 34.887539, 28.131575>,  <40.739155, 34.916588, 28.043629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350025, 34.887539, 28.131575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222058, 0.023537, -0.974749,
		0.065614, -0.997082, -0.039023,
		-0.972823, -0.072622, 0.219865,
		40.058178, 34.865753, 28.197535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376846, 34.336891, 27.689449>,  <40.739155, 34.916588, 28.043629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376846, 34.336891, 27.689449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.086308, 34.607330, 27.738966>,  <39.911983, 34.769592, 27.768677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.086308, 34.607330, 27.738966>,  <40.376846, 34.336891, 27.689449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086308, 34.607330, 27.738966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147097, 0.023029, -0.988854,
		-0.671408, -0.736456, 0.082725,
		-0.726342, 0.676094, 0.123792,
		39.868404, 34.810158, 27.776104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895618, 34.229630, 27.072542>,  <40.376846, 34.336891, 27.689449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895618, 34.229630, 27.072542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.764030, 34.576374, 27.222389>,  <39.685078, 34.784420, 27.312298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.764030, 34.576374, 27.222389>,  <39.895618, 34.229630, 27.072542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764030, 34.576374, 27.222389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111551, 0.358246, -0.926939,
		-0.937730, -0.346719, -0.021152,
		-0.328965, 0.866859, 0.374615,
		39.665340, 34.836433, 27.334774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270523, 34.315601, 26.782564>,  <39.895618, 34.229630, 27.072542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270523, 34.315601, 26.782564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.403004, 34.669865, 26.912741>,  <39.482491, 34.882423, 26.990847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.403004, 34.669865, 26.912741>,  <39.270523, 34.315601, 26.782564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403004, 34.669865, 26.912741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151707, 0.390404, -0.908058,
		-0.931284, 0.251378, 0.263663,
		0.331201, 0.885660, 0.325442,
		39.502365, 34.935562, 27.010374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863190, 34.726475, 26.544886>,  <39.270523, 34.315601, 26.782564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863190, 34.726475, 26.544886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.137924, 35.005230, 26.627455>,  <39.302765, 35.172482, 26.676996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.137924, 35.005230, 26.627455>,  <38.863190, 34.726475, 26.544886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137924, 35.005230, 26.627455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246072, 0.490201, -0.836153,
		-0.683891, 0.523503, 0.508170,
		0.686834, 0.696884, 0.206424,
		39.343975, 35.214294, 26.689383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643700, 35.344440, 26.225082>,  <38.863190, 34.726475, 26.544886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643700, 35.344440, 26.225082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.021290, 35.456860, 26.294287>,  <39.247845, 35.524311, 26.335810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.021290, 35.456860, 26.294287>,  <38.643700, 35.344440, 26.225082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021290, 35.456860, 26.294287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016175, 0.562998, -0.826300,
		-0.329632, 0.777205, 0.536000,
		0.943971, 0.281044, 0.173011,
		39.304482, 35.541172, 26.346189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668976, 36.095966, 26.142735>,  <38.643700, 35.344440, 26.225082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668976, 36.095966, 26.142735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.039463, 35.952129, 26.097464>,  <39.261757, 35.865826, 26.070301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.039463, 35.952129, 26.097464>,  <38.668976, 36.095966, 26.142735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039463, 35.952129, 26.097464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110596, 0.546204, -0.830319,
		0.360394, 0.756542, 0.545674,
		0.926221, -0.359592, -0.113178,
		39.317329, 35.844254, 26.063511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021362, 36.681469, 25.925087>,  <38.668976, 36.095966, 26.142735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021362, 36.681469, 25.925087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.292465, 36.407787, 25.817369>,  <39.455128, 36.243580, 25.752739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.292465, 36.407787, 25.817369>,  <39.021362, 36.681469, 25.925087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292465, 36.407787, 25.817369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199166, 0.523376, -0.828499,
		0.707800, 0.507886, 0.490990,
		0.677755, -0.684200, -0.269292,
		39.495792, 36.202526, 25.736582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511417, 37.139011, 25.699160>,  <39.021362, 36.681469, 25.925087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511417, 37.139011, 25.699160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.566418, 36.766537, 25.564116>,  <39.599419, 36.543053, 25.483089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.566418, 36.766537, 25.564116>,  <39.511417, 37.139011, 25.699160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566418, 36.766537, 25.564116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195893, 0.359679, -0.912281,
		0.970937, 0.059305, 0.231870,
		0.137502, -0.931189, -0.337609,
		39.607670, 36.487179, 25.462833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200653, 37.110935, 25.395372>,  <39.511417, 37.139011, 25.699160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200653, 37.110935, 25.395372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.986553, 36.813801, 25.234522>,  <39.858093, 36.635521, 25.138012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.986553, 36.813801, 25.234522>,  <40.200653, 37.110935, 25.395372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986553, 36.813801, 25.234522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308795, 0.271034, -0.911694,
		0.786228, -0.612157, 0.084313,
		-0.535249, -0.742835, -0.402125,
		39.825977, 36.590950, 25.113884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650230, 36.677956, 24.986702>,  <40.200653, 37.110935, 25.395372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650230, 36.677956, 24.986702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.282337, 36.658283, 24.830919>,  <40.061604, 36.646481, 24.737450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.282337, 36.658283, 24.830919>,  <40.650230, 36.677956, 24.986702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282337, 36.658283, 24.830919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386870, 0.054632, -0.920515,
		0.066553, -0.997294, -0.031219,
		-0.919730, -0.049185, -0.389459,
		40.006416, 36.643528, 24.714081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775291, 36.482071, 24.391399>,  <40.650230, 36.677956, 24.986702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775291, 36.482071, 24.391399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.390587, 36.575611, 24.334375>,  <40.159763, 36.631733, 24.300161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.390587, 36.575611, 24.334375>,  <40.775291, 36.482071, 24.391399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390587, 36.575611, 24.334375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199792, 0.243043, -0.949217,
		-0.187324, -0.941406, -0.280471,
		-0.961766, 0.233847, -0.142558,
		40.102058, 36.645763, 24.291609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719887, 36.225479, 23.806166>,  <40.775291, 36.482071, 24.391399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719887, 36.225479, 23.806166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.426224, 36.496075, 23.829391>,  <40.250027, 36.658432, 23.843327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.426224, 36.496075, 23.829391>,  <40.719887, 36.225479, 23.806166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426224, 36.496075, 23.829391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162396, 0.257988, -0.952402,
		-0.659272, -0.689784, -0.299263,
		-0.734158, 0.676491, 0.058066,
		40.205975, 36.699020, 23.846811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.215546, 36.137386, 23.245617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.105305, 36.505951, 23.355186>,  <40.039162, 36.727089, 23.420929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.105305, 36.505951, 23.355186>,  <40.215546, 36.137386, 23.245617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105305, 36.505951, 23.355186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099328, 0.256139, -0.961523,
		-0.956126, -0.292207, 0.020930,
		-0.275603, 0.921416, 0.273926,
		40.022625, 36.782375, 23.437365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573860, 36.375076, 22.845320>,  <40.215546, 36.137386, 23.245617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573860, 36.375076, 22.845320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.749477, 36.716381, 22.957876>,  <39.854847, 36.921165, 23.025410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.749477, 36.716381, 22.957876>,  <39.573860, 36.375076, 22.845320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749477, 36.716381, 22.957876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141430, 0.374919, -0.916206,
		-0.887264, 0.362458, 0.285283,
		0.439044, 0.853264, 0.281390,
		39.881191, 36.972359, 23.042294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162643, 36.894146, 22.511635>,  <39.573860, 36.375076, 22.845320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162643, 36.894146, 22.511635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.485809, 37.106735, 22.613466>,  <39.679710, 37.234291, 22.674564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.485809, 37.106735, 22.613466>,  <39.162643, 36.894146, 22.511635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485809, 37.106735, 22.613466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203877, 0.657402, -0.725436,
		-0.552911, 0.534187, 0.639479,
		0.807913, 0.531476, 0.254577,
		39.728184, 37.266178, 22.689838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952583, 37.681232, 22.659506>,  <39.162643, 36.894146, 22.511635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952583, 37.681232, 22.659506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.332623, 37.649120, 22.538931>,  <39.560646, 37.629852, 22.466587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.332623, 37.649120, 22.538931>,  <38.952583, 37.681232, 22.659506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332623, 37.649120, 22.538931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207768, 0.557921, -0.803465,
		0.232683, 0.826002, 0.513401,
		0.950100, -0.080284, -0.301436,
		39.617653, 37.625034, 22.448500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112705, 38.301174, 22.370993>,  <38.952583, 37.681232, 22.659506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112705, 38.301174, 22.370993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.408680, 38.077461, 22.221491>,  <39.586266, 37.943233, 22.131790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.408680, 38.077461, 22.221491>,  <39.112705, 38.301174, 22.370993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408680, 38.077461, 22.221491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041985, 0.516144, -0.855473,
		0.671365, 0.648687, 0.358432,
		0.739937, -0.559286, -0.373756,
		39.630661, 37.909676, 22.109364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596596, 38.733898, 22.046331>,  <39.112705, 38.301174, 22.370993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596596, 38.733898, 22.046331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.702656, 38.390823, 21.870119>,  <39.766293, 38.184978, 21.764391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.702656, 38.390823, 21.870119>,  <39.596596, 38.733898, 22.046331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702656, 38.390823, 21.870119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129946, 0.484502, -0.865085,
		0.955411, 0.172131, 0.239918,
		0.265149, -0.857688, -0.440531,
		39.782200, 38.133518, 21.737961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132359, 38.986568, 21.562191>,  <39.596596, 38.733898, 22.046331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132359, 38.986568, 21.562191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.044849, 38.629745, 21.404013>,  <39.992344, 38.415653, 21.309105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.044849, 38.629745, 21.404013>,  <40.132359, 38.986568, 21.562191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044849, 38.629745, 21.404013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111061, 0.379865, -0.918351,
		0.969434, -0.244831, 0.015968,
		-0.218775, -0.892054, -0.395445,
		39.979218, 38.362129, 21.285379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570606, 38.883312, 21.006327>,  <40.132359, 38.986568, 21.562191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570606, 38.883312, 21.006327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.271000, 38.632416, 20.920959>,  <40.091236, 38.481880, 20.869740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.271000, 38.632416, 20.920959>,  <40.570606, 38.883312, 21.006327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271000, 38.632416, 20.920959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092953, 0.219447, -0.971186,
		0.655999, -0.747272, -0.106066,
		-0.749016, -0.627238, -0.213418,
		40.046295, 38.444244, 20.856934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835758, 38.326145, 20.616220>,  <40.570606, 38.883312, 21.006327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835758, 38.326145, 20.616220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.446518, 38.363857, 20.532143>,  <40.212975, 38.386486, 20.481697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.446518, 38.363857, 20.532143>,  <40.835758, 38.326145, 20.616220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446518, 38.363857, 20.532143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228901, 0.292875, -0.928347,
		-0.025964, -0.951491, -0.306579,
		-0.973104, 0.094280, -0.210193,
		40.154587, 38.392139, 20.469084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749451, 38.064049, 19.927589>,  <40.835758, 38.326145, 20.616220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749451, 38.064049, 19.927589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.431572, 38.299545, 19.986708>,  <40.240845, 38.440845, 20.022179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.431572, 38.299545, 19.986708>,  <40.749451, 38.064049, 19.927589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431572, 38.299545, 19.986708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069676, 0.330346, -0.941285,
		-0.603000, -0.737734, -0.303545,
		-0.794693, 0.588744, 0.147796,
		40.193165, 38.476170, 20.031046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396549, 37.909363, 19.335238>,  <40.749451, 38.064049, 19.927589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396549, 37.909363, 19.335238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.236496, 38.244907, 19.482859>,  <40.140465, 38.446236, 19.571432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.236496, 38.244907, 19.482859>,  <40.396549, 37.909363, 19.335238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236496, 38.244907, 19.482859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044066, 0.419842, -0.906527,
		-0.915398, -0.346467, -0.204957,
		-0.400131, 0.838865, 0.369054,
		40.116455, 38.496567, 19.593575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861317, 38.180119, 18.786503>,  <40.396549, 37.909363, 19.335238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861317, 38.180119, 18.786503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.966103, 38.496178, 19.008150>,  <40.028973, 38.685814, 19.141138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.966103, 38.496178, 19.008150>,  <39.861317, 38.180119, 18.786503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966103, 38.496178, 19.008150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069154, 0.588060, -0.805856,
		-0.962597, 0.172784, 0.208691,
		0.261962, 0.790146, 0.554116,
		40.044693, 38.733223, 19.174385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437485, 38.784000, 18.596882>,  <39.861317, 38.180119, 18.786503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437485, 38.784000, 18.596882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.726364, 38.970703, 18.801064>,  <39.899693, 39.082726, 18.923573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.726364, 38.970703, 18.801064>,  <39.437485, 38.784000, 18.596882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726364, 38.970703, 18.801064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028414, 0.717344, -0.696140,
		-0.691102, 0.517255, 0.504802,
		0.722198, 0.466761, 0.510455,
		39.943024, 39.110733, 18.954201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186138, 39.482533, 18.703215>,  <39.437485, 38.784000, 18.596882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186138, 39.482533, 18.703215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.580647, 39.506332, 18.764839>,  <39.817352, 39.520611, 18.801813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.580647, 39.506332, 18.764839>,  <39.186138, 39.482533, 18.703215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580647, 39.506332, 18.764839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049808, 0.782258, -0.620961,
		-0.157460, 0.620108, 0.768553,
		0.986268, 0.059496, 0.154061,
		39.876526, 39.524181, 18.811058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270267, 40.160675, 18.780239>,  <39.186138, 39.482533, 18.703215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270267, 40.160675, 18.780239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.636776, 40.025608, 18.694046>,  <39.856682, 39.944569, 18.642330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.636776, 40.025608, 18.694046>,  <39.270267, 40.160675, 18.780239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636776, 40.025608, 18.694046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126488, 0.754328, -0.644197,
		0.380068, 0.563002, 0.733878,
		0.916269, -0.337666, -0.215483,
		39.911655, 39.924309, 18.629400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843380, 40.652309, 19.022261>,  <39.270267, 40.160675, 18.780239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843380, 40.652309, 19.022261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.041458, 40.455311, 18.735979>,  <40.160305, 40.337112, 18.564211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.041458, 40.455311, 18.735979>,  <39.843380, 40.652309, 19.022261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041458, 40.455311, 18.735979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195889, 0.865879, -0.460305,
		0.846411, 0.087741, 0.525251,
		0.495192, -0.492499, -0.715702,
		40.190014, 40.307560, 18.521269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613655, 40.947311, 19.038977>,  <39.843380, 40.652309, 19.022261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613655, 40.947311, 19.038977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.519043, 40.780041, 18.688166>,  <40.462276, 40.679676, 18.477678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.519043, 40.780041, 18.688166>,  <40.613655, 40.947311, 19.038977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519043, 40.780041, 18.688166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385558, 0.788137, -0.479777,
		0.891852, -0.451627, -0.025184,
		-0.236529, -0.418180, -0.877029,
		40.448086, 40.654587, 18.425056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245884, 41.103611, 18.537853>,  <40.613655, 40.947311, 19.038977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245884, 41.103611, 18.537853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.926311, 40.988171, 18.326792>,  <40.734570, 40.918907, 18.200155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.926311, 40.988171, 18.326792>,  <41.245884, 41.103611, 18.537853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926311, 40.988171, 18.326792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283704, 0.592751, -0.753763,
		0.530300, -0.751903, -0.391693,
		-0.798933, -0.288596, -0.527654,
		40.686630, 40.901592, 18.168495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563084, 41.071392, 17.918390>,  <41.245884, 41.103611, 18.537853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.563084, 41.071392, 17.918390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.171074, 41.117405, 17.853493>,  <40.935867, 41.145012, 17.814554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.171074, 41.117405, 17.853493>,  <41.563084, 41.071392, 17.918390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.171074, 41.117405, 17.853493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198737, 0.534837, -0.821251,
		-0.007700, -0.837088, -0.547014,
		-0.980023, 0.115036, -0.162242,
		40.877068, 41.151917, 17.804821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469280, 40.876492, 17.139482>,  <41.563084, 41.071392, 17.918390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469280, 40.876492, 17.139482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.133213, 41.066376, 17.244371>,  <40.931572, 41.180305, 17.307304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.133213, 41.066376, 17.244371>,  <41.469280, 40.876492, 17.139482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133213, 41.066376, 17.244371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001414, 0.481595, -0.876393,
		-0.542319, -0.736691, -0.403951,
		-0.840172, 0.474713, 0.262220,
		40.881161, 41.208790, 17.323038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151146, 40.953781, 16.492992>,  <41.469280, 40.876492, 17.139482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.151146, 40.953781, 16.492992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.957455, 41.206722, 16.734871>,  <40.841240, 41.358486, 16.879997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.957455, 41.206722, 16.734871>,  <41.151146, 40.953781, 16.492992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957455, 41.206722, 16.734871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153350, 0.619090, -0.770202,
		-0.861398, -0.465684, -0.202810,
		-0.484228, 0.632350, 0.604696,
		40.812187, 41.396427, 16.916279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418854, 41.128086, 16.195919>,  <41.151146, 40.953781, 16.492992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418854, 41.128086, 16.195919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.553078, 41.421902, 16.431835>,  <40.633614, 41.598190, 16.573385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.553078, 41.421902, 16.431835>,  <40.418854, 41.128086, 16.195919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553078, 41.421902, 16.431835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233281, 0.541794, -0.807489,
		-0.912676, 0.408550, 0.010453,
		0.335563, 0.734538, 0.589790,
		40.653748, 41.642262, 16.608772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253002, 41.756462, 15.843497>,  <40.418854, 41.128086, 16.195919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253002, 41.756462, 15.843497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.498920, 41.886669, 16.130848>,  <40.646469, 41.964794, 16.303259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.498920, 41.886669, 16.130848>,  <40.253002, 41.756462, 15.843497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498920, 41.886669, 16.130848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272416, 0.767144, -0.580757,
		-0.740147, 0.552743, 0.382958,
		0.614794, 0.325522, 0.718376,
		40.683357, 41.984325, 16.346361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551228, 41.629520, 15.773486>,  <40.253002, 41.756462, 15.843497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551228, 41.629520, 15.773486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.193035, 41.807137, 15.761240>,  <38.978119, 41.913704, 15.753892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.193035, 41.807137, 15.761240>,  <39.551228, 41.629520, 15.773486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193035, 41.807137, 15.761240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192283, -0.323905, 0.926344,
		0.401415, 0.835414, 0.375433,
		-0.895485, 0.444038, -0.030616,
		38.924389, 41.940350, 15.752055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234547, 42.007549, 16.405371>,  <39.551228, 41.629520, 15.773486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234547, 42.007549, 16.405371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.905743, 41.909729, 16.199657>,  <38.708458, 41.851036, 16.076229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.905743, 41.909729, 16.199657>,  <39.234547, 42.007549, 16.405371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905743, 41.909729, 16.199657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376544, -0.444077, 0.813026,
		-0.427210, 0.861968, 0.272951,
		-0.822013, -0.244555, -0.514283,
		38.659138, 41.836361, 16.045372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605076, 42.228432, 16.822819>,  <39.234547, 42.007549, 16.405371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605076, 42.228432, 16.822819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.441433, 41.990227, 16.546270>,  <38.343246, 41.847301, 16.380341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.441433, 41.990227, 16.546270>,  <38.605076, 42.228432, 16.822819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441433, 41.990227, 16.546270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578312, -0.416864, 0.701270,
		-0.705826, 0.686720, -0.173854,
		-0.409103, -0.595516, -0.691371,
		38.318703, 41.811573, 16.338860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891872, 42.294384, 16.936083>,  <38.605076, 42.228432, 16.822819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891872, 42.294384, 16.936083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.977230, 41.953335, 16.745296>,  <38.028446, 41.748707, 16.630825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.977230, 41.953335, 16.745296>,  <37.891872, 42.294384, 16.936083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977230, 41.953335, 16.745296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449613, -0.519144, 0.726868,
		-0.867359, 0.059342, -0.494133,
		0.213392, -0.852624, -0.476965,
		38.041248, 41.697548, 16.602207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277969, 41.911453, 16.895681>,  <37.891872, 42.294384, 16.936083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277969, 41.911453, 16.895681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.555328, 41.627022, 16.849094>,  <37.721745, 41.456364, 16.821142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.555328, 41.627022, 16.849094>,  <37.277969, 41.911453, 16.895681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555328, 41.627022, 16.849094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455815, -0.558056, 0.693402,
		-0.558056, -0.427719, -0.711076,
		-0.693402, 0.711076, 0.116465,
		37.763348, 41.413700, 16.814156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927528, 41.229683, 16.802679>,  <37.277969, 41.911453, 16.895681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927528, 41.229683, 16.802679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.299984, 41.120556, 16.899466>,  <37.523457, 41.055080, 16.957537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.299984, 41.120556, 16.899466>,  <36.927528, 41.229683, 16.802679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299984, 41.120556, 16.899466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364655, -0.694763, 0.619944,
		-0.001021, -0.665490, -0.746406,
		0.931142, -0.272814, 0.241965,
		37.579327, 41.038712, 16.972055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943478, 40.463013, 16.694275>,  <36.927528, 41.229683, 16.802679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943478, 40.463013, 16.694275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.214046, 40.573544, 16.967360>,  <37.376389, 40.639862, 17.131210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.214046, 40.573544, 16.967360>,  <36.943478, 40.463013, 16.694275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214046, 40.573544, 16.967360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301953, -0.741424, 0.599262,
		0.671775, -0.611500, -0.418075,
		0.676420, 0.276330, 0.682714,
		37.416973, 40.656441, 17.172174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026714, 39.894886, 17.049896>,  <36.943478, 40.463013, 16.694275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026714, 39.894886, 17.049896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.212975, 40.144615, 17.300779>,  <37.324730, 40.294453, 17.451309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.212975, 40.144615, 17.300779>,  <37.026714, 39.894886, 17.049896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212975, 40.144615, 17.300779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225444, -0.601664, 0.766273,
		0.855773, -0.498213, -0.139412,
		0.465647, 0.624326, 0.627207,
		37.352669, 40.331913, 17.488941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448250, 39.437756, 17.406868>,  <37.026714, 39.894886, 17.049896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448250, 39.437756, 17.406868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.451832, 39.748604, 17.658583>,  <37.453979, 39.935112, 17.809610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.451832, 39.748604, 17.658583>,  <37.448250, 39.437756, 17.406868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451832, 39.748604, 17.658583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233350, -0.613559, 0.754382,
		0.972352, 0.140088, -0.186836,
		0.008955, 0.777123, 0.629285,
		37.454517, 39.981739, 17.847368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931797, 39.184696, 17.870811>,  <37.448250, 39.437756, 17.406868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931797, 39.184696, 17.870811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.772560, 39.505791, 18.048414>,  <37.677017, 39.698448, 18.154976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.772560, 39.505791, 18.048414>,  <37.931797, 39.184696, 17.870811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772560, 39.505791, 18.048414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176332, -0.408025, 0.895781,
		0.900237, 0.434899, 0.020886,
		-0.398096, 0.802732, 0.444006,
		37.653130, 39.746609, 18.181616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391949, 39.599339, 18.415222>,  <37.931797, 39.184696, 17.870811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391949, 39.599339, 18.415222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.007751, 39.628468, 18.522667>,  <37.777233, 39.645947, 18.587133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.007751, 39.628468, 18.522667>,  <38.391949, 39.599339, 18.415222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007751, 39.628468, 18.522667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170817, -0.607721, 0.775563,
		0.219718, 0.790805, 0.571272,
		-0.960492, 0.072822, 0.268610,
		37.719604, 39.650314, 18.603251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372894, 39.586754, 19.192017>,  <38.391949, 39.599339, 18.415222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372894, 39.586754, 19.192017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.024765, 39.473614, 19.030756>,  <37.815887, 39.405731, 18.934000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.024765, 39.473614, 19.030756>,  <38.372894, 39.586754, 19.192017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024765, 39.473614, 19.030756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045142, -0.769352, 0.637228,
		-0.490405, 0.572795, 0.656818,
		-0.870325, -0.282850, -0.403151,
		37.763668, 39.388760, 18.909811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042263, 39.282883, 19.757526>,  <38.372894, 39.586754, 19.192017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042263, 39.282883, 19.757526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.812443, 39.151978, 19.457449>,  <37.674549, 39.073433, 19.277403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.812443, 39.151978, 19.457449>,  <38.042263, 39.282883, 19.757526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812443, 39.151978, 19.457449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161723, -0.853116, 0.496023,
		-0.802334, 0.406313, 0.437231,
		-0.574549, -0.327265, -0.750194,
		37.640079, 39.053799, 19.232391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568142, 39.009850, 20.117073>,  <38.042263, 39.282883, 19.757526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568142, 39.009850, 20.117073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.520519, 38.818493, 19.769058>,  <37.491947, 38.703678, 19.560249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.520519, 38.818493, 19.769058>,  <37.568142, 39.009850, 20.117073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520519, 38.818493, 19.769058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023776, -0.874645, 0.484181,
		-0.992603, 0.078330, 0.092757,
		-0.119055, -0.478394, -0.870037,
		37.484802, 38.674976, 19.508047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039883, 38.553570, 20.225780>,  <37.568142, 39.009850, 20.117073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039883, 38.553570, 20.225780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.242409, 38.401546, 19.916149>,  <37.363926, 38.310333, 19.730370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.242409, 38.401546, 19.916149>,  <37.039883, 38.553570, 20.225780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242409, 38.401546, 19.916149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002121, -0.897090, 0.441842,
		-0.862345, -0.225354, -0.453406,
		0.506317, -0.380059, -0.774079,
		37.394302, 38.287529, 19.683926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718719, 37.813152, 20.098343>,  <37.039883, 38.553570, 20.225780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718719, 37.813152, 20.098343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.083794, 37.819561, 19.935001>,  <37.302837, 37.823406, 19.836996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.083794, 37.819561, 19.935001>,  <36.718719, 37.813152, 20.098343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083794, 37.819561, 19.935001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181990, -0.910616, 0.371022,
		-0.365908, -0.412942, -0.834021,
		0.912683, 0.016023, -0.408353,
		37.357597, 37.824368, 19.812496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784298, 37.275146, 19.692703>,  <36.718719, 37.813152, 20.098343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784298, 37.275146, 19.692703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.168713, 37.369392, 19.750517>,  <37.399361, 37.425941, 19.785206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.168713, 37.369392, 19.750517>,  <36.784298, 37.275146, 19.692703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168713, 37.369392, 19.750517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206044, -0.959198, 0.193612,
		0.184256, -0.156288, -0.970373,
		0.961039, 0.235614, 0.144536,
		37.457024, 37.440075, 19.793879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235332, 36.817116, 19.277458>,  <36.784298, 37.275146, 19.692703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235332, 36.817116, 19.277458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.468643, 36.954865, 19.571722>,  <37.608627, 37.037514, 19.748281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.468643, 36.954865, 19.571722>,  <37.235332, 36.817116, 19.277458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468643, 36.954865, 19.571722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174550, -0.937660, 0.300543,
		0.793301, -0.046888, -0.607022,
		0.583272, 0.344376, 0.735662,
		37.643623, 37.058178, 19.792421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913406, 36.505703, 19.220430>,  <37.235332, 36.817116, 19.277458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913406, 36.505703, 19.220430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.934040, 36.626293, 19.601261>,  <37.946423, 36.698647, 19.829760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.934040, 36.626293, 19.601261>,  <37.913406, 36.505703, 19.220430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934040, 36.626293, 19.601261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463950, -0.851460, 0.244472,
		0.884358, 0.429105, -0.183793,
		0.051588, 0.301471, 0.952078,
		37.949516, 36.716736, 19.886885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586678, 36.318016, 19.530676>,  <37.913406, 36.505703, 19.220430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586678, 36.318016, 19.530676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.345322, 36.342178, 19.848738>,  <38.200508, 36.356678, 20.039574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.345322, 36.342178, 19.848738>,  <38.586678, 36.318016, 19.530676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345322, 36.342178, 19.848738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291711, -0.911295, 0.290595,
		0.742173, 0.407298, 0.532248,
		-0.603393, 0.060409, 0.795152,
		38.164303, 36.360302, 20.087284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942623, 36.266239, 20.134762>,  <38.586678, 36.318016, 19.530676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942623, 36.266239, 20.134762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.566921, 36.153004, 20.212383>,  <38.341499, 36.085060, 20.258957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.566921, 36.153004, 20.212383>,  <38.942623, 36.266239, 20.134762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566921, 36.153004, 20.212383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331108, -0.896243, 0.295153,
		0.090365, 0.341478, 0.935536,
		-0.939256, -0.283092, 0.194056,
		38.285145, 36.068077, 20.270599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.523838, 35.430370, 25.906672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.154892, 35.580009, 25.945210>,  <39.933525, 35.669792, 25.968332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.154892, 35.580009, 25.945210>,  <40.523838, 35.430370, 25.906672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154892, 35.580009, 25.945210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060930, -0.387162, 0.919996,
		0.381473, 0.842707, 0.379900,
		-0.922370, 0.374101, 0.096345,
		39.878181, 35.692242, 25.974113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524677, 35.873596, 26.519833>,  <40.523838, 35.430370, 25.906672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524677, 35.873596, 26.519833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.144161, 35.758022, 26.476818>,  <39.915852, 35.688679, 26.451010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.144161, 35.758022, 26.476818>,  <40.524677, 35.873596, 26.519833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144161, 35.758022, 26.476818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037530, -0.237676, 0.970619,
		-0.306007, 0.927376, 0.215255,
		-0.951289, -0.288937, -0.107535,
		39.858776, 35.671341, 26.444557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177998, 36.077480, 27.109333>,  <40.524677, 35.873596, 26.519833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177998, 36.077480, 27.109333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.920750, 35.807678, 26.964312>,  <39.766403, 35.645798, 26.877298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.920750, 35.807678, 26.964312>,  <40.177998, 36.077480, 27.109333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920750, 35.807678, 26.964312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097271, -0.397658, 0.912363,
		-0.759566, 0.622020, 0.190130,
		-0.643115, -0.674506, -0.362552,
		39.727814, 35.605328, 26.855545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666943, 36.193848, 27.524281>,  <40.177998, 36.077480, 27.109333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666943, 36.193848, 27.524281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.636623, 35.823330, 27.376642>,  <39.618431, 35.601021, 27.288059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.636623, 35.823330, 27.376642>,  <39.666943, 36.193848, 27.524281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636623, 35.823330, 27.376642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057979, -0.373628, 0.925764,
		-0.995436, 0.048771, 0.082026,
		-0.075797, -0.926295, -0.369095,
		39.613884, 35.545441, 27.265913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168530, 35.885498, 27.813990>,  <39.666943, 36.193848, 27.524281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168530, 35.885498, 27.813990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.366295, 35.566933, 27.674685>,  <39.484955, 35.375793, 27.591101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.366295, 35.566933, 27.674685>,  <39.168530, 35.885498, 27.813990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366295, 35.566933, 27.674685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157306, -0.476021, 0.865251,
		-0.854877, -0.373005, -0.360629,
		0.494410, -0.796412, -0.348263,
		39.514618, 35.328011, 27.570206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810074, 35.436481, 28.205973>,  <39.168530, 35.885498, 27.813990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810074, 35.436481, 28.205973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.130787, 35.240864, 28.068583>,  <39.323215, 35.123493, 27.986149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.130787, 35.240864, 28.068583>,  <38.810074, 35.436481, 28.205973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130787, 35.240864, 28.068583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041787, -0.527460, 0.848552,
		-0.596152, -0.694708, -0.402473,
		0.801784, -0.489047, -0.343476,
		39.371323, 35.094151, 27.965540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809181, 34.691673, 28.479794>,  <38.810074, 35.436481, 28.205973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809181, 34.691673, 28.479794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.192490, 34.761669, 28.389376>,  <39.422474, 34.803665, 28.335125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.192490, 34.761669, 28.389376>,  <38.809181, 34.691673, 28.479794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192490, 34.761669, 28.389376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265654, -0.253101, 0.930251,
		0.105572, -0.951482, -0.289026,
		0.958271, 0.174990, -0.226045,
		39.479969, 34.814167, 28.321562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142246, 34.020710, 28.634211>,  <38.809181, 34.691673, 28.479794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142246, 34.020710, 28.634211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.411079, 34.316898, 28.633499>,  <39.572380, 34.494610, 28.633072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.411079, 34.316898, 28.633499>,  <39.142246, 34.020710, 28.634211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411079, 34.316898, 28.633499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322572, -0.290621, 0.900825,
		0.666518, -0.606006, -0.434178,
		0.672087, 0.740470, -0.001777,
		39.612705, 34.539040, 28.632967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706799, 33.689301, 28.938177>,  <39.142246, 34.020710, 28.634211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706799, 33.689301, 28.938177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.748215, 34.083740, 28.990152>,  <39.773064, 34.320404, 29.021338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.748215, 34.083740, 28.990152>,  <39.706799, 33.689301, 28.938177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748215, 34.083740, 28.990152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312167, -0.156260, 0.937088,
		0.944368, -0.056464, -0.324008,
		0.103542, 0.986101, 0.129940,
		39.779278, 34.379570, 29.029135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241360, 33.698833, 29.349520>,  <39.706799, 33.689301, 28.938177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.241360, 33.698833, 29.349520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.040733, 34.044147, 29.372057>,  <39.920357, 34.251335, 29.385578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.040733, 34.044147, 29.372057>,  <40.241360, 33.698833, 29.349520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040733, 34.044147, 29.372057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046575, -0.038087, 0.998188,
		0.863863, 0.503284, -0.021104,
		-0.501568, 0.863281, 0.056342,
		39.890263, 34.303131, 29.388960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548351, 34.097610, 29.885649>,  <40.241360, 33.698833, 29.349520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548351, 34.097610, 29.885649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.205605, 34.299843, 29.845327>,  <39.999954, 34.421181, 29.821135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.205605, 34.299843, 29.845327>,  <40.548351, 34.097610, 29.885649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205605, 34.299843, 29.845327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110597, 0.010701, 0.993808,
		0.503530, 0.862712, 0.046746,
		-0.856870, 0.505582, -0.100801,
		39.948544, 34.451519, 29.815086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718937, 34.640102, 30.252871>,  <40.548351, 34.097610, 29.885649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718937, 34.640102, 30.252871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.323589, 34.580578, 30.240402>,  <40.086380, 34.544861, 30.232922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.323589, 34.580578, 30.240402>,  <40.718937, 34.640102, 30.252871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323589, 34.580578, 30.240402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057527, 0.176254, 0.982662,
		-0.140742, 0.973030, -0.182766,
		-0.988374, -0.148816, -0.031169,
		40.027077, 34.535934, 30.231052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322041, 35.312416, 30.546171>,  <40.718937, 34.640102, 30.252871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322041, 35.312416, 30.546171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.110325, 34.974953, 30.582153>,  <39.983295, 34.772476, 30.603743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.110325, 34.974953, 30.582153>,  <40.322041, 35.312416, 30.546171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110325, 34.974953, 30.582153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278721, 0.273036, 0.920742,
		-0.801352, 0.462269, -0.379661,
		-0.529292, -0.843658, 0.089954,
		39.951538, 34.721855, 30.609140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661907, 35.569164, 30.700098>,  <40.322041, 35.312416, 30.546171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661907, 35.569164, 30.700098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.699203, 35.186260, 30.809614>,  <39.721581, 34.956516, 30.875324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.699203, 35.186260, 30.809614>,  <39.661907, 35.569164, 30.700098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699203, 35.186260, 30.809614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351402, 0.225654, 0.908624,
		-0.931570, -0.180929, -0.315343,
		0.093238, -0.957259, 0.273792,
		39.727177, 34.899082, 30.891752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502586, 36.071030, 31.157042>,  <39.661907, 35.569164, 30.700098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502586, 36.071030, 31.157042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.574764, 36.390163, 31.387136>,  <39.618073, 36.581642, 31.525192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.574764, 36.390163, 31.387136>,  <39.502586, 36.071030, 31.157042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574764, 36.390163, 31.387136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318322, 0.600732, -0.733343,
		-0.930650, -0.050780, 0.362370,
		0.180448, 0.797836, 0.575236,
		39.628899, 36.629513, 31.559708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880554, 36.523781, 31.093601>,  <39.502586, 36.071030, 31.157042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880554, 36.523781, 31.093601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.204750, 36.727394, 31.209522>,  <39.399269, 36.849564, 31.279074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.204750, 36.727394, 31.209522>,  <38.880554, 36.523781, 31.093601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204750, 36.727394, 31.209522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200712, 0.706150, -0.679019,
		-0.550289, 0.492173, 0.674498,
		0.810492, 0.509036, 0.289802,
		39.447899, 36.880104, 31.296463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668983, 37.175236, 30.943262>,  <38.880554, 36.523781, 31.093601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668983, 37.175236, 30.943262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.067581, 37.198154, 30.967640>,  <39.306740, 37.211906, 30.982267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.067581, 37.198154, 30.967640>,  <38.668983, 37.175236, 30.943262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067581, 37.198154, 30.967640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001478, 0.740552, -0.671997,
		-0.083634, 0.669552, 0.738041,
		0.996495, 0.057293, 0.060946,
		39.366531, 37.215343, 30.985924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829723, 37.980740, 30.977894>,  <38.668983, 37.175236, 30.943262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829723, 37.980740, 30.977894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.171135, 37.799007, 30.875858>,  <39.375980, 37.689968, 30.814636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.171135, 37.799007, 30.875858>,  <38.829723, 37.980740, 30.977894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171135, 37.799007, 30.875858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140102, 0.671659, -0.727493,
		0.501857, 0.585198, 0.636933,
		0.853529, -0.454333, -0.255089,
		39.427193, 37.662708, 30.799332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373234, 38.578735, 30.848825>,  <38.829723, 37.980740, 30.977894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373234, 38.578735, 30.848825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.515873, 38.259964, 30.653790>,  <39.601456, 38.068703, 30.536768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.515873, 38.259964, 30.653790>,  <39.373234, 38.578735, 30.848825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515873, 38.259964, 30.653790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220946, 0.579033, -0.784795,
		0.907757, 0.172122, 0.382558,
		0.356594, -0.796928, -0.487592,
		39.622852, 38.020885, 30.507511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062431, 38.799179, 30.549469>,  <39.373234, 38.578735, 30.848825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062431, 38.799179, 30.549469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.932537, 38.471348, 30.360645>,  <39.854603, 38.274651, 30.247351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.932537, 38.471348, 30.360645>,  <40.062431, 38.799179, 30.549469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932537, 38.471348, 30.360645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171294, 0.439891, -0.881564,
		0.930166, -0.367132, -0.002457,
		-0.324731, -0.819579, -0.472059,
		39.835117, 38.225475, 30.219028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524818, 38.749527, 29.941090>,  <40.062431, 38.799179, 30.549469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524818, 38.749527, 29.941090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.195911, 38.535149, 29.864525>,  <39.998566, 38.406521, 29.818586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.195911, 38.535149, 29.864525>,  <40.524818, 38.749527, 29.941090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195911, 38.535149, 29.864525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080827, 0.222948, -0.971474,
		0.563334, -0.814281, -0.140004,
		-0.822266, -0.535948, -0.191410,
		39.949230, 38.374363, 29.807102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622440, 38.345444, 29.397131>,  <40.524818, 38.749527, 29.941090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622440, 38.345444, 29.397131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.223057, 38.366947, 29.402674>,  <39.983425, 38.379848, 29.406000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.223057, 38.366947, 29.402674>,  <40.622440, 38.345444, 29.397131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223057, 38.366947, 29.402674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000831, 0.235077, -0.971976,
		-0.055515, -0.970489, -0.234670,
		-0.998458, 0.053764, 0.013857,
		39.923519, 38.383076, 29.406830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333340, 37.926792, 28.855095>,  <40.622440, 38.345444, 29.397131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333340, 37.926792, 28.855095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.060284, 38.204494, 28.946321>,  <39.896450, 38.371117, 29.001057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.060284, 38.204494, 28.946321>,  <40.333340, 37.926792, 28.855095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060284, 38.204494, 28.946321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138932, 0.183101, -0.973228,
		-0.717429, -0.696047, -0.028537,
		-0.682637, 0.694257, 0.228065,
		39.855492, 38.412773, 29.014742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943741, 37.907753, 28.350311>,  <40.333340, 37.926792, 28.855095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943741, 37.907753, 28.350311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.809921, 38.246918, 28.514809>,  <39.729630, 38.450417, 28.613506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.809921, 38.246918, 28.514809>,  <39.943741, 37.907753, 28.350311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809921, 38.246918, 28.514809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356668, 0.289999, -0.888081,
		-0.872276, -0.443783, 0.205405,
		-0.334548, 0.847914, 0.411242,
		39.709557, 38.501293, 28.638182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276920, 38.018986, 28.163826>,  <39.943741, 37.907753, 28.350311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276920, 38.018986, 28.163826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.399319, 38.392601, 28.237509>,  <39.472759, 38.616772, 28.281719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.399319, 38.392601, 28.237509>,  <39.276920, 38.018986, 28.163826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399319, 38.392601, 28.237509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356601, 0.291854, -0.887501,
		-0.882724, 0.205884, 0.422386,
		0.305997, 0.934041, 0.184208,
		39.491119, 38.672813, 28.292770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627983, 38.351463, 28.121590>,  <39.276920, 38.018986, 28.163826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627983, 38.351463, 28.121590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.912128, 38.630730, 28.085924>,  <39.082615, 38.798290, 28.064526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.912128, 38.630730, 28.085924>,  <38.627983, 38.351463, 28.121590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912128, 38.630730, 28.085924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397792, 0.293734, -0.869185,
		-0.580648, 0.652901, 0.486382,
		0.710359, 0.698169, -0.089163,
		39.125237, 38.840179, 28.059175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394787, 38.902260, 27.707521>,  <38.627983, 38.351463, 28.121590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394787, 38.902260, 27.707521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.780968, 39.006344, 27.701973>,  <39.012676, 39.068794, 27.698643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.780968, 39.006344, 27.701973>,  <38.394787, 38.902260, 27.707521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780968, 39.006344, 27.701973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131777, 0.441610, -0.887477,
		-0.224806, 0.858644, 0.460644,
		0.965452, 0.260213, -0.013873,
		39.070602, 39.084408, 27.697811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394474, 39.681854, 27.686840>,  <38.394787, 38.902260, 27.707521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394474, 39.681854, 27.686840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.743591, 39.547310, 27.545370>,  <38.953064, 39.466583, 27.460487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.743591, 39.547310, 27.545370>,  <38.394474, 39.681854, 27.686840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743591, 39.547310, 27.545370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181765, 0.448504, -0.875103,
		0.452978, 0.828073, 0.330313,
		0.872796, -0.336363, -0.353677,
		39.005428, 39.446400, 27.439266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065262, 40.322033, 27.996010>,  <38.394474, 39.681854, 27.686840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065262, 40.322033, 27.996010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.672127, 40.261559, 27.953730>,  <37.436245, 40.225273, 27.928362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.672127, 40.261559, 27.953730>,  <38.065262, 40.322033, 27.996010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672127, 40.261559, 27.953730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005122, -0.550402, 0.834884,
		-0.184400, 0.821097, 0.540182,
		-0.982838, -0.151186, -0.105700,
		37.377274, 40.216202, 27.922020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791595, 40.370178, 28.657171>,  <38.065262, 40.322033, 27.996010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791595, 40.370178, 28.657171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.516651, 40.163189, 28.453306>,  <37.351685, 40.038998, 28.330988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.516651, 40.163189, 28.453306>,  <37.791595, 40.370178, 28.657171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516651, 40.163189, 28.453306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151287, -0.584314, 0.797301,
		-0.710382, 0.625141, 0.323350,
		-0.687364, -0.517470, -0.509663,
		37.310444, 40.007950, 28.300407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173428, 40.343964, 29.084389>,  <37.791595, 40.370178, 28.657171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173428, 40.343964, 29.084389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.104916, 40.061710, 28.809361>,  <37.063808, 39.892361, 28.644344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.104916, 40.061710, 28.809361>,  <37.173428, 40.343964, 29.084389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104916, 40.061710, 28.809361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323639, -0.618857, 0.715733,
		-0.930549, 0.345112, -0.122374,
		-0.171276, -0.705630, -0.687569,
		37.053532, 39.850021, 28.603090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478867, 40.087200, 29.177227>,  <37.173428, 40.343964, 29.084389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478867, 40.087200, 29.177227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.691971, 39.802773, 28.993683>,  <36.819832, 39.632118, 28.883556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.691971, 39.802773, 28.993683>,  <36.478867, 40.087200, 29.177227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691971, 39.802773, 28.993683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301784, -0.666202, 0.681983,
		-0.790629, -0.224856, -0.569514,
		0.532760, -0.711066, -0.458861,
		36.851799, 39.589455, 28.856026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057297, 39.558826, 29.229366>,  <36.478867, 40.087200, 29.177227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057297, 39.558826, 29.229366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.393841, 39.377575, 29.111526>,  <36.595768, 39.268822, 29.040823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.393841, 39.377575, 29.111526>,  <36.057297, 39.558826, 29.229366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393841, 39.377575, 29.111526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178510, -0.747458, 0.639875,
		-0.510150, -0.485774, -0.709768,
		0.841357, -0.453133, -0.294601,
		36.646248, 39.241634, 29.023146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945957, 38.842552, 29.023342>,  <36.057297, 39.558826, 29.229366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945957, 38.842552, 29.023342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.330647, 38.849575, 29.132729>,  <36.561459, 38.853790, 29.198360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.330647, 38.849575, 29.132729>,  <35.945957, 38.842552, 29.023342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330647, 38.849575, 29.132729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188149, -0.683220, 0.705557,
		0.199226, -0.730001, -0.653764,
		0.961722, 0.017560, 0.273464,
		36.619164, 38.854843, 29.214767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056858, 38.129723, 29.227701>,  <35.945957, 38.842552, 29.023342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056858, 38.129723, 29.227701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.363819, 38.339222, 29.375635>,  <36.547997, 38.464924, 29.464396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.363819, 38.339222, 29.375635>,  <36.056858, 38.129723, 29.227701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363819, 38.339222, 29.375635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083681, -0.490067, 0.867658,
		0.635680, -0.696792, -0.332251,
		0.767403, 0.523750, 0.369835,
		36.594040, 38.496346, 29.486586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597931, 37.721878, 29.306780>,  <36.056858, 38.129723, 29.227701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597931, 37.721878, 29.306780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.646130, 38.025227, 29.563013>,  <36.675049, 38.207237, 29.716753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.646130, 38.025227, 29.563013>,  <36.597931, 37.721878, 29.306780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646130, 38.025227, 29.563013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385219, -0.559000, 0.734251,
		0.914925, -0.335240, 0.224783,
		0.120497, 0.758375, 0.640584,
		36.682278, 38.252739, 29.755188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749756, 37.438629, 29.899372>,  <36.597931, 37.721878, 29.306780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749756, 37.438629, 29.899372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.661133, 37.792721, 30.062969>,  <36.607960, 38.005177, 30.161127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.661133, 37.792721, 30.062969>,  <36.749756, 37.438629, 29.899372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661133, 37.792721, 30.062969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296201, -0.460693, 0.836676,
		0.929074, 0.064227, 0.364277,
		-0.221557, 0.885233, 0.408994,
		36.594666, 38.058292, 30.185667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208492, 37.496662, 30.533861>,  <36.749756, 37.438629, 29.899372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208492, 37.496662, 30.533861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.866814, 37.703110, 30.559092>,  <36.661808, 37.826977, 30.574230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.866814, 37.703110, 30.559092>,  <37.208492, 37.496662, 30.533861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866814, 37.703110, 30.559092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192153, -0.426067, 0.884050,
		0.483148, 0.743028, 0.463116,
		-0.854192, 0.516117, 0.063078,
		36.610558, 37.857944, 30.578014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080044, 37.624794, 31.258984>,  <37.208492, 37.496662, 30.533861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080044, 37.624794, 31.258984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.726578, 37.763065, 31.132715>,  <36.514500, 37.846027, 31.056955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.726578, 37.763065, 31.132715>,  <37.080044, 37.624794, 31.258984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726578, 37.763065, 31.132715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380664, -0.138137, 0.914337,
		0.272458, 0.928131, 0.253653,
		-0.883664, 0.345675, -0.315670,
		36.461479, 37.866768, 31.038013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996525, 38.151184, 31.585026>,  <37.080044, 37.624794, 31.258984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996525, 38.151184, 31.585026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.634323, 38.009304, 31.491856>,  <36.417004, 37.924175, 31.435953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.634323, 38.009304, 31.491856>,  <36.996525, 38.151184, 31.585026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634323, 38.009304, 31.491856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283066, 0.095964, 0.954287,
		-0.316135, 0.930042, -0.187300,
		-0.905501, -0.354702, -0.232926,
		36.362671, 37.902893, 31.421978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.263130, 43.746559, 26.284750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092461, 43.530075, 25.994911>,  <36.990059, 43.400185, 25.821007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092461, 43.530075, 25.994911>,  <37.263130, 43.746559, 26.284750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092461, 43.530075, 25.994911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019043, -0.806384, 0.591086,
		-0.904207, 0.238400, 0.354365,
		-0.426669, -0.541212, -0.724598,
		36.964458, 43.367710, 25.777533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828747, 43.380535, 26.566885>,  <37.263130, 43.746559, 26.284750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828747, 43.380535, 26.566885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888550, 43.167454, 26.233688>,  <36.924431, 43.039604, 26.033770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888550, 43.167454, 26.233688>,  <36.828747, 43.380535, 26.566885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888550, 43.167454, 26.233688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120809, -0.845991, 0.519331,
		-0.981353, 0.022991, -0.190834,
		0.149504, -0.532701, -0.832993,
		36.933403, 43.007645, 25.983789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241425, 43.016174, 26.566610>,  <36.828747, 43.380535, 26.566885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241425, 43.016174, 26.566610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478718, 42.793179, 26.334309>,  <36.621094, 42.659382, 26.194927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478718, 42.793179, 26.334309>,  <36.241425, 43.016174, 26.566610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478718, 42.793179, 26.334309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182756, -0.795834, 0.577276,
		-0.784004, -0.236330, -0.574009,
		0.593244, -0.557490, -0.580746,
		36.656689, 42.625931, 26.160084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931721, 42.370163, 26.594919>,  <36.241425, 43.016174, 26.566610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931721, 42.370163, 26.594919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298794, 42.274380, 26.468103>,  <36.519039, 42.216911, 26.392014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298794, 42.274380, 26.468103>,  <35.931721, 42.370163, 26.594919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298794, 42.274380, 26.468103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030486, -0.838055, 0.544733,
		-0.396139, -0.490227, -0.776370,
		0.917684, -0.239458, -0.317041,
		36.574100, 42.202541, 26.372992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991306, 41.633278, 26.293283>,  <35.931721, 42.370163, 26.594919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991306, 41.633278, 26.293283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353233, 41.743237, 26.423349>,  <36.570389, 41.809212, 26.501389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353233, 41.743237, 26.423349>,  <35.991306, 41.633278, 26.293283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353233, 41.743237, 26.423349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014410, -0.783000, 0.621855,
		0.425551, -0.557981, -0.712435,
		0.904819, 0.274898, 0.325166,
		36.624680, 41.825706, 26.520899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248348, 41.009937, 26.344681>,  <35.991306, 41.633278, 26.293283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248348, 41.009937, 26.344681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526394, 41.216881, 26.544340>,  <36.693222, 41.341049, 26.664135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526394, 41.216881, 26.544340>,  <36.248348, 41.009937, 26.344681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526394, 41.216881, 26.544340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243970, -0.822888, 0.513160,
		0.676233, -0.234930, -0.698225,
		0.695117, 0.517361, 0.499148,
		36.734928, 41.372089, 26.694084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850277, 40.567101, 26.346584>,  <36.248348, 41.009937, 26.344681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850277, 40.567101, 26.346584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918125, 40.810253, 26.656864>,  <36.958836, 40.956146, 26.843031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918125, 40.810253, 26.656864>,  <36.850277, 40.567101, 26.346584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918125, 40.810253, 26.656864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213184, -0.791101, 0.573335,
		0.962175, 0.068116, -0.263779,
		0.169622, 0.607882, 0.775698,
		36.969013, 40.992619, 26.889574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557560, 40.424988, 26.594503>,  <36.850277, 40.567101, 26.346584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557560, 40.424988, 26.594503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379795, 40.596123, 26.909325>,  <37.273136, 40.698803, 27.098217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379795, 40.596123, 26.909325>,  <37.557560, 40.424988, 26.594503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379795, 40.596123, 26.909325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258494, -0.779966, 0.569942,
		0.857719, 0.456736, 0.236031,
		-0.444410, 0.427837, 0.787055,
		37.246471, 40.724472, 27.145441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980312, 40.353077, 27.126015>,  <37.557560, 40.424988, 26.594503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980312, 40.353077, 27.126015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636322, 40.418701, 27.319309>,  <37.429928, 40.458076, 27.435286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636322, 40.418701, 27.319309>,  <37.980312, 40.353077, 27.126015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636322, 40.418701, 27.319309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337699, -0.527003, 0.779890,
		0.382615, 0.833879, 0.397810,
		-0.859980, 0.164057, 0.483239,
		37.378326, 40.467918, 27.464281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635529, 40.221718, 27.282093>,  <37.980312, 40.353077, 27.126015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635529, 40.221718, 27.282093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890644, 39.943478, 27.149813>,  <39.043713, 39.776531, 27.070444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890644, 39.943478, 27.149813>,  <38.635529, 40.221718, 27.282093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890644, 39.943478, 27.149813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056263, 0.386140, -0.920723,
		0.768157, 0.605830, 0.207138,
		0.637785, -0.695605, -0.330701,
		39.081978, 39.734795, 27.050602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200893, 40.504318, 26.872389>,  <38.635529, 40.221718, 27.282093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200893, 40.504318, 26.872389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202610, 40.122543, 26.753033>,  <39.203640, 39.893478, 26.681419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202610, 40.122543, 26.753033>,  <39.200893, 40.504318, 26.872389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202610, 40.122543, 26.753033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039789, 0.298318, -0.953637,
		0.999199, -0.007776, 0.039258,
		0.004296, -0.954435, -0.298388,
		39.203899, 39.836212, 26.663517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683819, 40.557934, 26.439634>,  <39.200893, 40.504318, 26.872389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683819, 40.557934, 26.439634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459366, 40.235821, 26.363056>,  <39.324696, 40.042553, 26.317110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459366, 40.235821, 26.363056>,  <39.683819, 40.557934, 26.439634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459366, 40.235821, 26.363056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092046, 0.290564, -0.952418,
		0.822592, -0.516811, -0.237167,
		-0.561132, -0.805282, -0.191445,
		39.291027, 39.994236, 26.305622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848576, 40.418404, 25.732426>,  <39.683819, 40.557934, 26.439634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848576, 40.418404, 25.732426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507488, 40.223309, 25.807251>,  <39.302837, 40.106251, 25.852146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507488, 40.223309, 25.807251>,  <39.848576, 40.418404, 25.732426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507488, 40.223309, 25.807251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318030, 0.200634, -0.926609,
		0.414410, -0.849623, -0.326198,
		-0.852715, -0.487736, 0.187061,
		39.251675, 40.076988, 25.863369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818966, 39.812904, 25.183853>,  <39.848576, 40.418404, 25.732426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818966, 39.812904, 25.183853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444031, 39.894516, 25.296827>,  <39.219070, 39.943481, 25.364613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444031, 39.894516, 25.296827>,  <39.818966, 39.812904, 25.183853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444031, 39.894516, 25.296827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227612, 0.255182, -0.939721,
		-0.263801, -0.945122, -0.192753,
		-0.937338, 0.204026, 0.282438,
		39.162830, 39.955723, 25.381559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345947, 39.373268, 24.805664>,  <39.818966, 39.812904, 25.183853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345947, 39.373268, 24.805664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156574, 39.699348, 24.939119>,  <39.042950, 39.894997, 25.019194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156574, 39.699348, 24.939119>,  <39.345947, 39.373268, 24.805664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156574, 39.699348, 24.939119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339062, 0.180932, -0.923201,
		-0.812959, -0.550194, 0.190745,
		-0.473428, 0.815199, 0.333640,
		39.014545, 39.943909, 25.039211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689144, 39.257820, 24.503229>,  <39.345947, 39.373268, 24.805664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689144, 39.257820, 24.503229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720490, 39.640652, 24.614840>,  <38.739296, 39.870350, 24.681807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720490, 39.640652, 24.614840>,  <38.689144, 39.257820, 24.503229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720490, 39.640652, 24.614840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302610, 0.289520, -0.908078,
		-0.949887, -0.013273, 0.312311,
		0.078367, 0.957080, 0.279027,
		38.743999, 39.927776, 24.698547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167389, 39.567177, 24.099533>,  <38.689144, 39.257820, 24.503229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167389, 39.567177, 24.099533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388844, 39.870758, 24.236631>,  <38.521717, 40.052906, 24.318892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388844, 39.870758, 24.236631>,  <38.167389, 39.567177, 24.099533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388844, 39.870758, 24.236631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174206, 0.508024, -0.843543,
		-0.814336, 0.407304, 0.413474,
		0.553633, 0.758957, 0.342747,
		38.554932, 40.098446, 24.339455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874332, 40.252121, 23.915854>,  <38.167389, 39.567177, 24.099533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874332, 40.252121, 23.915854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264584, 40.328625, 23.958864>,  <38.498734, 40.374527, 23.984671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264584, 40.328625, 23.958864>,  <37.874332, 40.252121, 23.915854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264584, 40.328625, 23.958864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014296, 0.544439, -0.838679,
		-0.218947, 0.816705, 0.533906,
		0.975632, 0.191259, 0.107528,
		38.557274, 40.386002, 23.991123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932606, 40.978649, 23.872862>,  <37.874332, 40.252121, 23.915854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932606, 40.978649, 23.872862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284786, 40.807392, 23.791384>,  <38.496094, 40.704636, 23.742496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284786, 40.807392, 23.791384>,  <37.932606, 40.978649, 23.872862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284786, 40.807392, 23.791384> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171466, 0.688069, -0.705096,
		0.442039, 0.585879, 0.679226,
		0.880455, -0.428145, -0.203695,
		38.548923, 40.678947, 23.730276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229538, 41.499798, 23.557320>,  <37.932606, 40.978649, 23.872862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229538, 41.499798, 23.557320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486267, 41.205276, 23.471598>,  <38.640305, 41.028564, 23.420164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486267, 41.205276, 23.471598>,  <38.229538, 41.499798, 23.557320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486267, 41.205276, 23.471598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336025, 0.521230, -0.784478,
		0.689315, 0.431482, 0.581952,
		0.641819, -0.736303, -0.214303,
		38.678814, 40.984386, 23.407307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027008, 41.716667, 23.524553>,  <38.229538, 41.499798, 23.557320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027008, 41.716667, 23.524553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951244, 41.391605, 23.304111>,  <38.905785, 41.196568, 23.171846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951244, 41.391605, 23.304111>,  <39.027008, 41.716667, 23.524553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951244, 41.391605, 23.304111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301295, 0.486084, -0.820331,
		0.934530, -0.321423, 0.152780,
		-0.189409, -0.812656, -0.551103,
		38.894421, 41.147808, 23.138781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485508, 41.887943, 22.939148>,  <39.027008, 41.716667, 23.524553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485508, 41.887943, 22.939148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273952, 41.566139, 22.831038>,  <39.147018, 41.373058, 22.766171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273952, 41.566139, 22.831038>,  <39.485508, 41.887943, 22.939148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273952, 41.566139, 22.831038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049635, 0.288595, -0.956164,
		0.847240, -0.519117, -0.112702,
		-0.528886, -0.804506, -0.270276,
		39.115288, 41.324787, 22.749954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841583, 41.533890, 22.462811>,  <39.485508, 41.887943, 22.939148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841583, 41.533890, 22.462811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466270, 41.407200, 22.407215>,  <39.241085, 41.331188, 22.373857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466270, 41.407200, 22.407215>,  <39.841583, 41.533890, 22.462811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466270, 41.407200, 22.407215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068008, 0.225059, -0.971969,
		0.339125, -0.921431, -0.189629,
		-0.938280, -0.316722, -0.138988,
		39.184788, 41.312183, 22.365519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.503059, 38.220997, 21.002310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.852467, 38.298271, 21.181038>,  <35.062111, 38.344635, 21.288275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.852467, 38.298271, 21.181038>,  <34.503059, 38.220997, 21.002310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852467, 38.298271, 21.181038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037340, -0.888584, 0.457191,
		0.485363, -0.416047, -0.768978,
		0.873515, 0.193190, 0.446821,
		35.114521, 38.356228, 21.315084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759571, 37.604130, 20.981823>,  <34.503059, 38.220997, 21.002310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759571, 37.604130, 20.981823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.007290, 37.767975, 21.249760>,  <35.155922, 37.866280, 21.410522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.007290, 37.767975, 21.249760>,  <34.759571, 37.604130, 20.981823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007290, 37.767975, 21.249760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098520, -0.805851, 0.583865,
		0.778948, -0.427581, -0.458709,
		0.619300, 0.409609, 0.669841,
		35.193081, 37.890858, 21.450712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089924, 37.023796, 21.344761>,  <34.759571, 37.604130, 20.981823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089924, 37.023796, 21.344761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.124599, 37.349300, 21.574642>,  <35.145405, 37.544601, 21.712570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.124599, 37.349300, 21.574642>,  <35.089924, 37.023796, 21.344761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124599, 37.349300, 21.574642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045234, -0.573064, 0.818261,
		0.995208, -0.096930, -0.012869,
		0.086689, 0.813758, 0.574703,
		35.150608, 37.593430, 21.747053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463310, 36.797119, 21.897005>,  <35.089924, 37.023796, 21.344761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463310, 36.797119, 21.897005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.334812, 37.147640, 22.040611>,  <35.257713, 37.357952, 22.126774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.334812, 37.147640, 22.040611>,  <35.463310, 36.797119, 21.897005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334812, 37.147640, 22.040611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010116, -0.382263, 0.923998,
		0.946941, 0.293201, 0.131665,
		-0.321248, 0.876304, 0.359014,
		35.238438, 37.410530, 22.148315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882637, 37.094166, 22.409374>,  <35.463310, 36.797119, 21.897005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882637, 37.094166, 22.409374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.504025, 37.206528, 22.472839>,  <35.276855, 37.273945, 22.510918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.504025, 37.206528, 22.472839>,  <35.882637, 37.094166, 22.409374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504025, 37.206528, 22.472839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060195, -0.329387, 0.942274,
		0.316950, 0.901441, 0.294866,
		-0.946530, 0.280905, 0.158662,
		35.220066, 37.290798, 22.520437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998837, 37.314556, 22.997032>,  <35.882637, 37.094166, 22.409374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998837, 37.314556, 22.997032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.603905, 37.275906, 22.946672>,  <35.366947, 37.252716, 22.916456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.603905, 37.275906, 22.946672>,  <35.998837, 37.314556, 22.997032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603905, 37.275906, 22.946672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101679, -0.223976, 0.969276,
		-0.121856, 0.969793, 0.211312,
		-0.987326, -0.096626, -0.125900,
		35.307709, 37.246918, 22.908903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713951, 37.707020, 23.508818>,  <35.998837, 37.314556, 22.997032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713951, 37.707020, 23.508818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.441334, 37.430813, 23.411921>,  <35.277763, 37.265087, 23.353783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.441334, 37.430813, 23.411921>,  <35.713951, 37.707020, 23.508818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441334, 37.430813, 23.411921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068287, -0.389603, 0.918448,
		-0.728586, 0.609418, 0.312684,
		-0.681542, -0.690521, -0.242244,
		35.236870, 37.223656, 23.339247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254486, 37.643120, 24.197165>,  <35.713951, 37.707020, 23.508818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254486, 37.643120, 24.197165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.197063, 37.311401, 23.981144>,  <35.162609, 37.112370, 23.851532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.197063, 37.311401, 23.981144>,  <35.254486, 37.643120, 24.197165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197063, 37.311401, 23.981144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001951, -0.545464, 0.838132,
		-0.989641, 0.121371, 0.076686,
		-0.143554, -0.829300, -0.540050,
		35.153996, 37.062611, 23.819128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658825, 37.401638, 24.519032>,  <35.254486, 37.643120, 24.197165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658825, 37.401638, 24.519032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.823818, 37.101631, 24.312214>,  <34.922813, 36.921627, 24.188124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.823818, 37.101631, 24.312214>,  <34.658825, 37.401638, 24.519032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823818, 37.101631, 24.312214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201046, -0.628534, 0.751350,
		-0.888504, -0.205969, -0.410047,
		0.412483, -0.750015, -0.517045,
		34.947563, 36.876625, 24.157101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128277, 36.828335, 24.529528>,  <34.658825, 37.401638, 24.519032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128277, 36.828335, 24.529528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.488884, 36.667320, 24.466000>,  <34.705250, 36.570713, 24.427883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.488884, 36.667320, 24.466000>,  <34.128277, 36.828335, 24.529528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488884, 36.667320, 24.466000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265874, -0.804813, 0.530647,
		-0.341424, -0.436164, -0.832580,
		0.901521, -0.402537, -0.158818,
		34.759342, 36.546558, 24.418354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015518, 36.038876, 24.482227>,  <34.128277, 36.828335, 24.529528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015518, 36.038876, 24.482227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.403557, 36.093891, 24.562231>,  <34.636379, 36.126900, 24.610233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.403557, 36.093891, 24.562231>,  <34.015518, 36.038876, 24.482227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403557, 36.093891, 24.562231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036350, -0.732376, 0.679930,
		0.240000, -0.666865, -0.705472,
		0.970092, 0.137539, 0.200011,
		34.694584, 36.135155, 24.622234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234371, 35.449123, 24.589571>,  <34.015518, 36.038876, 24.482227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234371, 35.449123, 24.589571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.558876, 35.636986, 24.728867>,  <34.753578, 35.749702, 24.812445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.558876, 35.636986, 24.728867>,  <34.234371, 35.449123, 24.589571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558876, 35.636986, 24.728867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091521, -0.690271, 0.717740,
		0.577472, -0.550405, -0.602976,
		0.811264, 0.469660, 0.348239,
		34.802254, 35.777885, 24.833338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781044, 34.886723, 24.769615>,  <34.234371, 35.449123, 24.589571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781044, 34.886723, 24.769615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.802048, 35.230980, 24.972216>,  <34.814648, 35.437534, 25.093777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.802048, 35.230980, 24.972216>,  <34.781044, 34.886723, 24.769615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802048, 35.230980, 24.972216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020894, -0.508036, 0.861082,
		0.998402, -0.034629, -0.044657,
		0.052506, 0.860640, 0.506501,
		34.817799, 35.489170, 25.124166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298153, 34.769424, 25.203419>,  <34.781044, 34.886723, 24.769615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298153, 34.769424, 25.203419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.115494, 35.066425, 25.399443>,  <35.005898, 35.244629, 25.517057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.115494, 35.066425, 25.399443>,  <35.298153, 34.769424, 25.203419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115494, 35.066425, 25.399443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003703, -0.549255, 0.835646,
		0.889641, 0.383409, 0.248065,
		-0.456645, 0.742507, 0.490060,
		34.978500, 35.289177, 25.546461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037601, 34.463982, 25.292480>,  <35.298153, 34.769424, 25.203419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037601, 34.463982, 25.292480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.332973, 34.204967, 25.367754>,  <36.510197, 34.049557, 25.412918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.332973, 34.204967, 25.367754>,  <36.037601, 34.463982, 25.292480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332973, 34.204967, 25.367754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396466, 0.191169, -0.897925,
		0.545465, 0.737665, 0.397892,
		0.738432, -0.647537, 0.188184,
		36.554504, 34.010708, 25.424210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651535, 34.912750, 25.092533>,  <36.037601, 34.463982, 25.292480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651535, 34.912750, 25.092533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.729393, 34.520588, 25.080448>,  <36.776108, 34.285290, 25.073196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.729393, 34.520588, 25.080448>,  <36.651535, 34.912750, 25.092533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729393, 34.520588, 25.080448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492897, 0.124394, -0.861150,
		0.848038, 0.152722, 0.507453,
		0.194641, -0.980409, -0.030215,
		36.787785, 34.226463, 25.071384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379715, 34.855789, 24.930607>,  <36.651535, 34.912750, 25.092533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379715, 34.855789, 24.930607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.218887, 34.501614, 24.837362>,  <37.122391, 34.289108, 24.781416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.218887, 34.501614, 24.837362>,  <37.379715, 34.855789, 24.930607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218887, 34.501614, 24.837362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449733, 0.030786, -0.892632,
		0.797548, -0.463735, 0.385834,
		-0.402066, -0.885439, -0.233110,
		37.098267, 34.235981, 24.767429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928795, 34.446815, 24.661713>,  <37.379715, 34.855789, 24.930607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928795, 34.446815, 24.661713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.584061, 34.323170, 24.500866>,  <37.377220, 34.248981, 24.404358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.584061, 34.323170, 24.500866>,  <37.928795, 34.446815, 24.661713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584061, 34.323170, 24.500866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383634, 0.121318, -0.915482,
		0.331769, -0.943256, 0.014029,
		-0.861832, -0.309111, -0.402114,
		37.325512, 34.230438, 24.380232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159821, 34.151722, 24.067783>,  <37.928795, 34.446815, 24.661713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159821, 34.151722, 24.067783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.769562, 34.212978, 24.004963>,  <37.535408, 34.249733, 23.967270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.769562, 34.212978, 24.004963>,  <38.159821, 34.151722, 24.067783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769562, 34.212978, 24.004963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175211, 0.113281, -0.977992,
		-0.131979, -0.981690, -0.137354,
		-0.975645, 0.153140, -0.157052,
		37.476868, 34.258919, 23.957848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135948, 33.806263, 23.416895>,  <38.159821, 34.151722, 24.067783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135948, 33.806263, 23.416895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.789177, 34.002705, 23.450975>,  <37.581116, 34.120567, 23.471424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.789177, 34.002705, 23.450975>,  <38.135948, 33.806263, 23.416895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789177, 34.002705, 23.450975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096559, 0.333175, -0.937908,
		-0.488996, -0.804869, -0.336258,
		-0.866925, 0.491102, 0.085204,
		37.529099, 34.150036, 23.476536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702770, 33.692188, 22.764240>,  <38.135948, 33.806263, 23.416895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702770, 33.692188, 22.764240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.573502, 34.034245, 22.926374>,  <37.495941, 34.239479, 23.023655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.573502, 34.034245, 22.926374>,  <37.702770, 33.692188, 22.764240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573502, 34.034245, 22.926374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059244, 0.445763, -0.893188,
		-0.944483, -0.264643, -0.194722,
		-0.323176, 0.855137, 0.405337,
		37.476547, 34.290787, 23.047976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410679, 33.970814, 22.192791>,  <37.702770, 33.692188, 22.764240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410679, 33.970814, 22.192791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.491718, 34.273643, 22.441238>,  <37.540340, 34.455341, 22.590307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.491718, 34.273643, 22.441238>,  <37.410679, 33.970814, 22.192791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491718, 34.273643, 22.441238> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143770, 0.604405, -0.783597,
		-0.968651, 0.248055, 0.013607,
		0.202599, 0.757075, 0.621120,
		37.552498, 34.500767, 22.627575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154087, 34.645912, 21.812000>,  <37.410679, 33.970814, 22.192791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154087, 34.645912, 21.812000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.375252, 34.792778, 22.111195>,  <37.507950, 34.880898, 22.290710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.375252, 34.792778, 22.111195>,  <37.154087, 34.645912, 21.812000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375252, 34.792778, 22.111195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531283, 0.536192, -0.655924,
		-0.641896, 0.760058, 0.101396,
		0.552908, 0.367166, 0.747985,
		37.541122, 34.902927, 22.335590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078205, 35.386559, 21.643187>,  <37.154087, 34.645912, 21.812000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078205, 35.386559, 21.643187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.387848, 35.299713, 21.881048>,  <37.573635, 35.247604, 22.023766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.387848, 35.299713, 21.881048>,  <37.078205, 35.386559, 21.643187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387848, 35.299713, 21.881048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627009, 0.392438, -0.672943,
		-0.087258, 0.893786, 0.439924,
		0.774109, -0.217117, 0.594655,
		37.620079, 35.234577, 22.059444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546028, 35.977230, 21.616253>,  <37.078205, 35.386559, 21.643187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546028, 35.977230, 21.616253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.721302, 35.626740, 21.696478>,  <37.826466, 35.416447, 21.744614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.721302, 35.626740, 21.696478>,  <37.546028, 35.977230, 21.616253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721302, 35.626740, 21.696478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712919, 0.202870, -0.671260,
		0.547485, 0.437122, 0.713571,
		0.438185, -0.876224, 0.200565,
		37.852757, 35.363873, 21.756647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326649, 36.492863, 21.037884>,  <37.546028, 35.977230, 21.616253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326649, 36.492863, 21.037884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.624245, 36.468994, 20.771675>,  <37.802803, 36.454674, 20.611950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.624245, 36.468994, 20.771675>,  <37.326649, 36.492863, 21.037884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624245, 36.468994, 20.771675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089465, 0.978141, -0.187711,
		0.662175, 0.199196, 0.722388,
		0.743989, -0.059669, -0.665522,
		37.847443, 36.451092, 20.572018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789169, 37.123848, 21.081436>,  <37.326649, 36.492863, 21.037884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789169, 37.123848, 21.081436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.860039, 36.980782, 20.714682>,  <37.902561, 36.894939, 20.494629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.860039, 36.980782, 20.714682>,  <37.789169, 37.123848, 21.081436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860039, 36.980782, 20.714682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054276, 0.926657, -0.371968,
		0.982682, 0.115667, 0.144764,
		0.177171, -0.357669, -0.916888,
		37.913189, 36.873482, 20.439615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317089, 37.622349, 20.765013>,  <37.789169, 37.123848, 21.081436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317089, 37.622349, 20.765013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.113075, 37.446663, 20.469185>,  <37.990669, 37.341251, 20.291689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.113075, 37.446663, 20.469185>,  <38.317089, 37.622349, 20.765013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113075, 37.446663, 20.469185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085032, 0.881342, -0.464764,
		0.855940, -0.174159, -0.486863,
		-0.510036, -0.439209, -0.739567,
		37.960068, 37.314899, 20.247314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977959, 37.766582, 20.733576>,  <38.317089, 37.622349, 20.765013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977959, 37.766582, 20.733576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.334660, 37.947201, 20.745522>,  <39.548679, 38.055573, 20.752689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.334660, 37.947201, 20.745522>,  <38.977959, 37.766582, 20.733576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334660, 37.947201, 20.745522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215496, -0.481757, 0.849395,
		0.397929, -0.751010, -0.526913,
		0.891748, 0.451546, 0.029866,
		39.602184, 38.082664, 20.754480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572670, 37.230473, 20.776482>,  <38.977959, 37.766582, 20.733576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572670, 37.230473, 20.776482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.696941, 37.573986, 20.939442>,  <39.771503, 37.780094, 21.037218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.696941, 37.573986, 20.939442>,  <39.572670, 37.230473, 20.776482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696941, 37.573986, 20.939442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259893, -0.489026, 0.832652,
		0.914294, -0.152809, -0.375122,
		0.310681, 0.858780, 0.407399,
		39.790146, 37.831619, 21.061661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121403, 37.010849, 21.212772>,  <39.572670, 37.230473, 20.776482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121403, 37.010849, 21.212772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.033070, 37.369892, 21.365366>,  <39.980068, 37.585320, 21.456923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.033070, 37.369892, 21.365366>,  <40.121403, 37.010849, 21.212772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033070, 37.369892, 21.365366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074873, -0.374385, 0.924246,
		0.972434, 0.232665, 0.015469,
		-0.220831, 0.897610, 0.381485,
		39.966820, 37.639175, 21.479811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666584, 37.215065, 21.659931>,  <40.121403, 37.010849, 21.212772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666584, 37.215065, 21.659931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.333263, 37.399406, 21.782057>,  <40.133270, 37.510014, 21.855331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.333263, 37.399406, 21.782057>,  <40.666584, 37.215065, 21.659931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333263, 37.399406, 21.782057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195064, -0.271639, 0.942424,
		0.517258, 0.844880, 0.136460,
		-0.833303, 0.460858, 0.305313,
		40.083271, 37.537663, 21.873652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907810, 37.466972, 22.213240>,  <40.666584, 37.215065, 21.659931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907810, 37.466972, 22.213240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.515453, 37.516392, 22.273361>,  <40.280041, 37.546043, 22.309435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.515453, 37.516392, 22.273361>,  <40.907810, 37.466972, 22.213240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515453, 37.516392, 22.273361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134006, -0.131085, 0.982273,
		0.141062, 0.983642, 0.112023,
		-0.980889, 0.123549, 0.150305,
		40.221188, 37.553455, 22.318453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839447, 37.865082, 22.911289>,  <40.907810, 37.466972, 22.213240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.839447, 37.865082, 22.911289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.473045, 37.713707, 22.858034>,  <40.253204, 37.622883, 22.826082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.473045, 37.713707, 22.858034>,  <40.839447, 37.865082, 22.911289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473045, 37.713707, 22.858034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049833, -0.221961, 0.973781,
		-0.398066, 0.898621, 0.184458,
		-0.916002, -0.378437, -0.133136,
		40.198246, 37.600178, 22.818094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553661, 37.901493, 23.545424>,  <40.839447, 37.865082, 22.911289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553661, 37.901493, 23.545424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.345306, 37.616810, 23.356895>,  <40.220295, 37.445999, 23.243778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.345306, 37.616810, 23.356895>,  <40.553661, 37.901493, 23.545424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345306, 37.616810, 23.356895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235600, -0.410829, 0.880745,
		-0.820469, 0.569812, 0.046316,
		-0.520887, -0.711712, -0.471320,
		40.189041, 37.403297, 23.215500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836288, 38.015366, 23.762466>,  <40.553661, 37.901493, 23.545424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836288, 38.015366, 23.762466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.911610, 37.639881, 23.646978>,  <39.956802, 37.414589, 23.577686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.911610, 37.639881, 23.646978>,  <39.836288, 38.015366, 23.762466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911610, 37.639881, 23.646978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145885, -0.317452, 0.936985,
		-0.971216, -0.134316, -0.196721,
		0.188302, -0.938714, -0.288720,
		39.968102, 37.358269, 23.560362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284260, 37.555683, 23.845179>,  <39.836288, 38.015366, 23.762466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284260, 37.555683, 23.845179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.588261, 37.296329, 23.863050>,  <39.770660, 37.140717, 23.873774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.588261, 37.296329, 23.863050>,  <39.284260, 37.555683, 23.845179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588261, 37.296329, 23.863050> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359752, -0.362432, 0.859780,
		-0.541275, -0.669507, -0.508706,
		0.760000, -0.648385, 0.044681,
		39.816261, 37.101814, 23.876455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895576, 36.878448, 24.014320>,  <39.284260, 37.555683, 23.845179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895576, 36.878448, 24.014320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.279572, 36.811771, 24.104338>,  <39.509968, 36.771763, 24.158348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.279572, 36.811771, 24.104338>,  <38.895576, 36.878448, 24.014320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279572, 36.811771, 24.104338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279783, -0.535276, 0.796995,
		-0.012395, -0.828065, -0.560495,
		0.959983, -0.166696, 0.225044,
		39.567566, 36.761765, 24.171850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884193, 36.224075, 24.306379>,  <38.895576, 36.878448, 24.014320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884193, 36.224075, 24.306379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.238483, 36.352783, 24.440222>,  <39.451057, 36.430008, 24.520527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.238483, 36.352783, 24.440222>,  <38.884193, 36.224075, 24.306379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238483, 36.352783, 24.440222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097676, -0.575481, 0.811961,
		0.453827, -0.751853, -0.478286,
		0.885720, 0.321773, 0.334607,
		39.504200, 36.449314, 24.540604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098846, 35.626400, 24.622396>,  <38.884193, 36.224075, 24.306379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098846, 35.626400, 24.622396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.329624, 35.917526, 24.770678>,  <39.468090, 36.092201, 24.859646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.329624, 35.917526, 24.770678>,  <39.098846, 35.626400, 24.622396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329624, 35.917526, 24.770678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167073, -0.549421, 0.818672,
		0.799514, -0.410392, -0.438583,
		0.576943, 0.727815, 0.370705,
		39.502708, 36.135872, 24.881889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676010, 35.242088, 24.912785>,  <39.098846, 35.626400, 24.622396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676010, 35.242088, 24.912785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.653927, 35.607357, 25.074316>,  <39.640678, 35.826519, 25.171234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.653927, 35.607357, 25.074316>,  <39.676010, 35.242088, 24.912785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653927, 35.607357, 25.074316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236421, -0.380989, 0.893841,
		0.970081, 0.144822, -0.194858,
		-0.055209, 0.913167, 0.403829,
		39.637363, 35.881306, 25.195465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296978, 35.297752, 25.249037>,  <39.676010, 35.242088, 24.912785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296978, 35.297752, 25.249037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.057640, 35.575432, 25.409075>,  <39.914040, 35.742039, 25.505096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.057640, 35.575432, 25.409075>,  <40.296978, 35.297752, 25.249037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057640, 35.575432, 25.409075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103308, -0.428334, 0.897696,
		0.794553, 0.578462, 0.184574,
		-0.598342, 0.694199, 0.400094,
		39.878136, 35.783691, 25.529102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.901810, 40.981636, 21.865753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.519817, 41.100258, 21.868959>,  <39.290623, 41.171429, 21.870884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.519817, 41.100258, 21.868959>,  <39.901810, 40.981636, 21.865753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519817, 41.100258, 21.868959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118712, 0.406769, -0.905785,
		-0.271872, -0.864058, -0.423662,
		-0.954983, 0.296552, 0.008016,
		39.233322, 41.189224, 21.871365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666073, 40.751575, 21.262262>,  <39.901810, 40.981636, 21.865753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666073, 40.751575, 21.262262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.420856, 41.048779, 21.369680>,  <39.273727, 41.227100, 21.434132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.420856, 41.048779, 21.369680>,  <39.666073, 40.751575, 21.262262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420856, 41.048779, 21.369680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200280, 0.474960, -0.856914,
		-0.764242, -0.471542, -0.439981,
		-0.613044, 0.743008, 0.268544,
		39.236942, 41.271683, 21.450243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320549, 40.922516, 20.646582>,  <39.666073, 40.751575, 21.262262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320549, 40.922516, 20.646582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.277912, 41.226856, 20.902626>,  <39.252331, 41.409462, 21.056253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.277912, 41.226856, 20.902626>,  <39.320549, 40.922516, 20.646582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277912, 41.226856, 20.902626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000971, 0.643860, -0.765143,
		-0.994303, -0.080935, -0.069368,
		-0.106590, 0.760851, 0.640113,
		39.245934, 41.455112, 21.094660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093559, 41.473404, 20.178688>,  <39.320549, 40.922516, 20.646582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093559, 41.473404, 20.178688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.204029, 41.675732, 20.505583>,  <39.270309, 41.797127, 20.701719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.204029, 41.675732, 20.505583>,  <39.093559, 41.473404, 20.178688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204029, 41.675732, 20.505583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144170, 0.818884, -0.555558,
		-0.950233, 0.271251, 0.153230,
		0.276173, 0.505818, 0.817237,
		39.286880, 41.827477, 20.750753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842949, 42.058445, 20.042519>,  <39.093559, 41.473404, 20.178688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842949, 42.058445, 20.042519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.089115, 42.172089, 20.336605>,  <39.236816, 42.240276, 20.513058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.089115, 42.172089, 20.336605>,  <38.842949, 42.058445, 20.042519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089115, 42.172089, 20.336605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120834, 0.887744, -0.444195,
		-0.778883, 0.362205, 0.512004,
		0.615419, 0.284108, 0.735216,
		39.273739, 42.257320, 20.557169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653530, 42.716999, 20.149628>,  <38.842949, 42.058445, 20.042519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653530, 42.716999, 20.149628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.030155, 42.647831, 20.265253>,  <39.256130, 42.606331, 20.334629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.030155, 42.647831, 20.265253>,  <38.653530, 42.716999, 20.149628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030155, 42.647831, 20.265253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301412, 0.815624, -0.493871,
		-0.150366, 0.552138, 0.820082,
		0.941563, -0.172921, 0.289063,
		39.312626, 42.595955, 20.351973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980759, 43.341175, 20.362959>,  <38.653530, 42.716999, 20.149628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980759, 43.341175, 20.362959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.309731, 43.118454, 20.316351>,  <39.507114, 42.984821, 20.288387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.309731, 43.118454, 20.316351>,  <38.980759, 43.341175, 20.362959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309731, 43.118454, 20.316351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410988, 0.723202, -0.555038,
		0.393313, 0.408593, 0.823624,
		0.822431, -0.556804, -0.116518,
		39.556461, 42.951412, 20.281395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470165, 43.848934, 20.293102>,  <38.980759, 43.341175, 20.362959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470165, 43.848934, 20.293102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.663429, 43.524933, 20.160172>,  <39.779388, 43.330532, 20.080412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.663429, 43.524933, 20.160172>,  <39.470165, 43.848934, 20.293102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663429, 43.524933, 20.160172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557364, 0.577288, -0.596727,
		0.675203, 0.103088, 0.730393,
		0.483163, -0.810007, -0.332329,
		39.808376, 43.281929, 20.060472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205788, 44.011776, 20.365398>,  <39.470165, 43.848934, 20.293102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205788, 44.011776, 20.365398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.138435, 43.719662, 20.100573>,  <40.098026, 43.544392, 19.941677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.138435, 43.719662, 20.100573>,  <40.205788, 44.011776, 20.365398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138435, 43.719662, 20.100573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499797, 0.515666, -0.695910,
		0.849619, -0.448074, 0.278168,
		-0.168377, -0.730286, -0.662066,
		40.087921, 43.500576, 19.901953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744827, 44.065426, 19.886978>,  <40.205788, 44.011776, 20.365398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744827, 44.065426, 19.886978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.525307, 43.809681, 19.671560>,  <40.393593, 43.656235, 19.542309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.525307, 43.809681, 19.671560>,  <40.744827, 44.065426, 19.886978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525307, 43.809681, 19.671560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366203, 0.395252, -0.842420,
		0.751473, -0.659539, 0.017221,
		-0.548802, -0.639363, -0.538546,
		40.360664, 43.617874, 19.509996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202621, 43.815746, 19.286095>,  <40.744827, 44.065426, 19.886978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202621, 43.815746, 19.286095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.819813, 43.788185, 19.173410>,  <40.590126, 43.771648, 19.105801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.819813, 43.788185, 19.173410>,  <41.202621, 43.815746, 19.286095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819813, 43.788185, 19.173410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206516, 0.520084, -0.828773,
		0.203614, -0.851332, -0.483503,
		-0.957023, -0.068899, -0.281710,
		40.532707, 43.767517, 19.088898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174603, 43.597290, 18.541225>,  <41.202621, 43.815746, 19.286095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174603, 43.597290, 18.541225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.821556, 43.778843, 18.590191>,  <40.609730, 43.887775, 18.619570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.821556, 43.778843, 18.590191>,  <41.174603, 43.597290, 18.541225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821556, 43.778843, 18.590191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135845, 0.495537, -0.857898,
		-0.450047, -0.740562, -0.499025,
		-0.882612, 0.453885, 0.122413,
		40.556774, 43.915009, 18.626915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867813, 43.540146, 17.860378>,  <41.174603, 43.597290, 18.541225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867813, 43.540146, 17.860378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.711533, 43.837811, 18.077110>,  <40.617764, 44.016411, 18.207150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.711533, 43.837811, 18.077110>,  <40.867813, 43.540146, 17.860378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711533, 43.837811, 18.077110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018554, 0.582128, -0.812886,
		-0.920332, -0.327645, -0.213628,
		-0.390697, 0.744161, 0.541830,
		40.594322, 44.061058, 18.239660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412682, 43.059242, 17.846066>,  <40.867813, 43.540146, 17.860378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.412682, 43.059242, 17.846066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.786392, 43.034981, 17.705528>,  <42.010620, 43.020424, 17.621206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.786392, 43.034981, 17.705528>,  <41.412682, 43.059242, 17.846066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786392, 43.034981, 17.705528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290173, -0.701947, -0.650438,
		-0.207173, 0.709642, -0.673415,
		0.934280, -0.060654, -0.351343,
		42.066677, 43.016785, 17.600124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104568, 42.579922, 17.425924>,  <41.412682, 43.059242, 17.846066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104568, 42.579922, 17.425924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.946041, 42.307030, 17.180164>,  <40.850925, 42.143295, 17.032709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.946041, 42.307030, 17.180164>,  <41.104568, 42.579922, 17.425924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946041, 42.307030, 17.180164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255238, -0.560948, 0.787522,
		-0.881921, 0.468928, 0.048182,
		-0.396318, -0.682234, -0.614400,
		40.827145, 42.102360, 16.995844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326553, 42.329098, 17.574192>,  <41.104568, 42.579922, 17.425924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326553, 42.329098, 17.574192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.489433, 42.011536, 17.393568>,  <40.587162, 41.820999, 17.285194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.489433, 42.011536, 17.393568>,  <40.326553, 42.329098, 17.574192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489433, 42.011536, 17.393568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278936, -0.578882, 0.766219,
		-0.869703, -0.186048, -0.457168,
		0.407200, -0.793903, -0.451560,
		40.611591, 41.773365, 17.258101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814529, 41.854092, 17.721161>,  <40.326553, 42.329098, 17.574192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814529, 41.854092, 17.721161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.139347, 41.668842, 17.579115>,  <40.334236, 41.557693, 17.493887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.139347, 41.668842, 17.579115>,  <39.814529, 41.854092, 17.721161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139347, 41.668842, 17.579115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227220, -0.811370, 0.538564,
		-0.537548, -0.356648, -0.764097,
		0.812043, -0.463122, -0.355113,
		40.382961, 41.529907, 17.472582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615295, 41.192947, 17.467472>,  <39.814529, 41.854092, 17.721161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615295, 41.192947, 17.467472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.004871, 41.164791, 17.553720>,  <40.238617, 41.147900, 17.605469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.004871, 41.164791, 17.553720>,  <39.615295, 41.192947, 17.467472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004871, 41.164791, 17.553720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189262, -0.776118, 0.601515,
		0.125008, -0.626647, -0.769212,
		0.973937, -0.070389, 0.215621,
		40.297054, 41.143673, 17.618406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960190, 40.566010, 17.203815>,  <39.615295, 41.192947, 17.467472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960190, 40.566010, 17.203815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.168781, 40.674309, 17.527483>,  <40.293934, 40.739288, 17.721684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.168781, 40.674309, 17.527483>,  <39.960190, 40.566010, 17.203815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168781, 40.674309, 17.527483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218365, -0.874396, 0.433298,
		0.824851, -0.402650, -0.396855,
		0.521476, 0.270747, 0.809171,
		40.325226, 40.755531, 17.770235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245270, 39.977455, 17.348623>,  <39.960190, 40.566010, 17.203815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245270, 39.977455, 17.348623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.291714, 40.190784, 17.683784>,  <40.319580, 40.318783, 17.884882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.291714, 40.190784, 17.683784>,  <40.245270, 39.977455, 17.348623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291714, 40.190784, 17.683784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106664, -0.832035, 0.544372,
		0.987493, -0.152579, -0.039717,
		0.116106, 0.533327, 0.837903,
		40.326546, 40.350784, 17.935156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850609, 39.750900, 17.598875>,  <40.245270, 39.977455, 17.348623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850609, 39.750900, 17.598875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.621719, 39.903221, 17.889404>,  <40.484383, 39.994614, 18.063723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.621719, 39.903221, 17.889404>,  <40.850609, 39.750900, 17.598875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621719, 39.903221, 17.889404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002527, -0.886475, 0.462770,
		0.820090, 0.262975, 0.508228,
		-0.572228, 0.380798, 0.726325,
		40.450050, 40.017460, 18.107302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138107, 39.585072, 18.242153>,  <40.850609, 39.750900, 17.598875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138107, 39.585072, 18.242153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.771347, 39.682270, 18.368803>,  <40.551292, 39.740589, 18.444794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.771347, 39.682270, 18.368803>,  <41.138107, 39.585072, 18.242153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771347, 39.682270, 18.368803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049039, -0.718707, 0.693582,
		0.396096, 0.651471, 0.647065,
		-0.916899, 0.242994, 0.316624,
		40.496277, 39.755169, 18.463791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154312, 39.629993, 18.896469>,  <41.138107, 39.585072, 18.242153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.154312, 39.629993, 18.896469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.758747, 39.579330, 18.865450>,  <40.521408, 39.548931, 18.846838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.758747, 39.579330, 18.865450>,  <41.154312, 39.629993, 18.896469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758747, 39.579330, 18.865450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032592, -0.694517, 0.718737,
		-0.144892, 0.708239, 0.690944,
		-0.988911, -0.126658, -0.077547,
		40.462074, 39.541332, 18.842186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965908, 39.540962, 19.652639>,  <41.154312, 39.629993, 18.896469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965908, 39.540962, 19.652639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.639088, 39.436832, 19.446859>,  <40.442997, 39.374355, 19.323391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.639088, 39.436832, 19.446859>,  <40.965908, 39.540962, 19.652639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639088, 39.436832, 19.446859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264373, -0.623788, 0.735524,
		-0.512382, 0.736967, 0.440845,
		-0.817051, -0.260322, -0.514452,
		40.393974, 39.358734, 19.292524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252781, 39.744633, 19.939445>,  <40.965908, 39.540962, 19.652639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252781, 39.744633, 19.939445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.195339, 39.423382, 19.708151>,  <40.160873, 39.230629, 19.569374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.195339, 39.423382, 19.708151>,  <40.252781, 39.744633, 19.939445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195339, 39.423382, 19.708151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254466, -0.534679, 0.805832,
		-0.956360, 0.262865, -0.127586,
		-0.143608, -0.803132, -0.578236,
		40.152256, 39.182442, 19.534679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521042, 39.540558, 19.998970>,  <40.252781, 39.744633, 19.939445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521042, 39.540558, 19.998970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.714581, 39.208981, 19.886726>,  <39.830704, 39.010033, 19.819380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.714581, 39.208981, 19.886726>,  <39.521042, 39.540558, 19.998970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714581, 39.208981, 19.886726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385309, -0.489669, 0.782152,
		-0.785765, -0.270323, -0.556326,
		0.483849, -0.828945, -0.280607,
		39.859734, 38.960297, 19.802544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084267, 39.092800, 20.293192>,  <39.521042, 39.540558, 19.998970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084267, 39.092800, 20.293192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.420406, 38.899895, 20.194216>,  <39.622089, 38.784149, 20.134830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.420406, 38.899895, 20.194216>,  <39.084267, 39.092800, 20.293192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420406, 38.899895, 20.194216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139336, -0.633354, 0.761215,
		-0.523824, -0.605213, -0.599438,
		0.840353, -0.482266, -0.247438,
		39.672512, 38.755215, 20.119984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876545, 38.399387, 20.368631>,  <39.084267, 39.092800, 20.293192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876545, 38.399387, 20.368631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.275654, 38.401054, 20.395288>,  <39.515118, 38.402054, 20.411282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.275654, 38.401054, 20.395288>,  <38.876545, 38.399387, 20.368631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275654, 38.401054, 20.395288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050775, -0.600779, 0.797801,
		0.043364, -0.799404, -0.599226,
		0.997768, 0.004170, 0.066642,
		39.574986, 38.402306, 20.415281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652042, 37.812172, 20.095003>,  <38.876545, 38.399387, 20.368631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652042, 37.812172, 20.095003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.283848, 37.681816, 20.008739>,  <38.062931, 37.603603, 19.956982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.283848, 37.681816, 20.008739>,  <38.652042, 37.812172, 20.095003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283848, 37.681816, 20.008739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145449, 0.797924, -0.584946,
		0.362704, -0.507066, -0.781876,
		-0.920484, -0.325886, -0.215658,
		38.007702, 37.584049, 19.944042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585083, 37.870911, 19.311251>,  <38.652042, 37.812172, 20.095003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585083, 37.870911, 19.311251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.210648, 37.858521, 19.451408>,  <37.985985, 37.851086, 19.535503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.210648, 37.858521, 19.451408>,  <38.585083, 37.870911, 19.311251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210648, 37.858521, 19.451408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287897, 0.639817, -0.712565,
		-0.202119, -0.767902, -0.607843,
		-0.936089, -0.030973, 0.350396,
		37.929821, 37.849228, 19.556528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146759, 37.926617, 18.670023>,  <38.585083, 37.870911, 19.311251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146759, 37.926617, 18.670023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.898479, 38.019413, 18.969599>,  <37.749512, 38.075089, 19.149345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.898479, 38.019413, 18.969599>,  <38.146759, 37.926617, 18.670023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898479, 38.019413, 18.969599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416405, 0.711834, -0.565596,
		-0.664333, -0.662929, -0.345235,
		-0.620700, 0.231987, 0.748942,
		37.712269, 38.089008, 19.194281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579166, 38.058487, 18.335529>,  <38.146759, 37.926617, 18.670023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579166, 38.058487, 18.335529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.540184, 38.250065, 18.684496>,  <37.516796, 38.365013, 18.893877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.540184, 38.250065, 18.684496>,  <37.579166, 38.058487, 18.335529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540184, 38.250065, 18.684496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229065, 0.842262, -0.487979,
		-0.968521, -0.247395, 0.027629,
		-0.097452, 0.478947, 0.872418,
		37.510948, 38.393749, 18.946220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938183, 38.484173, 18.366570>,  <37.579166, 38.058487, 18.335529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938183, 38.484173, 18.366570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.199654, 38.667595, 18.607380>,  <37.356537, 38.777649, 18.751865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.199654, 38.667595, 18.607380>,  <36.938183, 38.484173, 18.366570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199654, 38.667595, 18.607380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264877, 0.883829, -0.385598,
		-0.708906, 0.092593, 0.699199,
		0.653676, 0.458554, 0.602026,
		37.395756, 38.805161, 18.787987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527607, 38.986465, 18.542614>,  <36.938183, 38.484173, 18.366570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527607, 38.986465, 18.542614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.888988, 39.123955, 18.645088>,  <37.105816, 39.206448, 18.706573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.888988, 39.123955, 18.645088>,  <36.527607, 38.986465, 18.542614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888988, 39.123955, 18.645088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252512, 0.909609, -0.329922,
		-0.346432, 0.233379, 0.908581,
		0.903451, 0.343723, 0.256186,
		37.160023, 39.227070, 18.721945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453625, 39.640949, 18.639309>,  <36.527607, 38.986465, 18.542614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453625, 39.640949, 18.639309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.853535, 39.649200, 18.637102>,  <37.093479, 39.654152, 18.635778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.853535, 39.649200, 18.637102>,  <36.453625, 39.640949, 18.639309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853535, 39.649200, 18.637102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020557, 0.860181, -0.509574,
		-0.005764, 0.509571, 0.860409,
		0.999772, 0.020624, -0.005517,
		37.153465, 39.655388, 18.635447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885792, 39.507824, 19.275295>,  <36.453625, 39.640949, 18.639309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885792, 39.507824, 19.275295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.691051, 39.841187, 19.379913>,  <36.574207, 40.041206, 19.442684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.691051, 39.841187, 19.379913>,  <36.885792, 39.507824, 19.275295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691051, 39.841187, 19.379913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119717, -0.360265, 0.925136,
		0.865244, 0.419089, 0.275168,
		-0.486847, 0.833411, 0.261545,
		36.544998, 40.091209, 19.458378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065170, 39.646919, 20.030937>,  <36.885792, 39.507824, 19.275295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065170, 39.646919, 20.030937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.712147, 39.816723, 19.950064>,  <36.500332, 39.918606, 19.901539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.712147, 39.816723, 19.950064>,  <37.065170, 39.646919, 20.030937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712147, 39.816723, 19.950064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363201, -0.342396, 0.866516,
		0.298615, 0.838188, 0.456367,
		-0.882561, 0.424508, -0.202186,
		36.447380, 39.944077, 19.889408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796291, 39.883358, 20.701157>,  <37.065170, 39.646919, 20.030937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796291, 39.883358, 20.701157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.487072, 39.859726, 20.448521>,  <36.301540, 39.845547, 20.296938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.487072, 39.859726, 20.448521>,  <36.796291, 39.883358, 20.701157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487072, 39.859726, 20.448521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559455, -0.405825, 0.722715,
		-0.299010, 0.912039, 0.280672,
		-0.773048, -0.059076, -0.631591,
		36.255157, 39.842003, 20.259043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296612, 40.047829, 21.082632>,  <36.796291, 39.883358, 20.701157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296612, 40.047829, 21.082632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.117538, 39.854988, 20.781391>,  <36.010094, 39.739285, 20.600647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.117538, 39.854988, 20.781391>,  <36.296612, 40.047829, 21.082632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117538, 39.854988, 20.781391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586083, -0.477888, 0.654316,
		-0.675343, 0.734306, -0.068607,
		-0.447681, -0.482097, -0.753103,
		35.983234, 39.710358, 20.555460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596802, 40.032093, 21.417841>,  <36.296612, 40.047829, 21.082632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596802, 40.032093, 21.417841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.633595, 39.741928, 21.144983>,  <35.655670, 39.567829, 20.981268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.633595, 39.741928, 21.144983>,  <35.596802, 40.032093, 21.417841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633595, 39.741928, 21.144983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452128, -0.640785, 0.620463,
		-0.887198, 0.251347, -0.386917,
		0.091979, -0.725410, -0.682144,
		35.661190, 39.524303, 20.940340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949711, 39.737812, 21.417051>,  <35.596802, 40.032093, 21.417841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949711, 39.737812, 21.417051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.187199, 39.463600, 21.248503>,  <35.329693, 39.299072, 21.147373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.187199, 39.463600, 21.248503>,  <34.949711, 39.737812, 21.417051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187199, 39.463600, 21.248503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441054, -0.715226, 0.542147,
		-0.673033, -0.136033, -0.726995,
		0.593715, -0.685527, -0.421373,
		35.365314, 39.257942, 21.122091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511765, 39.187981, 21.440411>,  <34.949711, 39.737812, 21.417051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511765, 39.187981, 21.440411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.878075, 39.041927, 21.373432>,  <35.097858, 38.954296, 21.333244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.878075, 39.041927, 21.373432>,  <34.511765, 39.187981, 21.440411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878075, 39.041927, 21.373432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251264, -0.845919, 0.470413,
		-0.313410, -0.388718, -0.866414,
		0.915773, -0.365131, -0.167448,
		35.152805, 38.932388, 21.323198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.687004, 45.667236, 19.004503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.912193, 45.337254, 19.024506>,  <38.047306, 45.139263, 19.036507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.912193, 45.337254, 19.024506>,  <37.687004, 45.667236, 19.004503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912193, 45.337254, 19.024506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076717, 0.008079, 0.997020,
		-0.822905, -0.565135, -0.058740,
		0.562976, -0.824959, 0.050004,
		38.081085, 45.089767, 19.039507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433369, 45.045109, 19.437315>,  <37.687004, 45.667236, 19.004503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433369, 45.045109, 19.437315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.831421, 45.074211, 19.463890>,  <38.070251, 45.091671, 19.479836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.831421, 45.074211, 19.463890>,  <37.433369, 45.045109, 19.437315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831421, 45.074211, 19.463890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068744, 0.029700, 0.997192,
		0.070587, -0.996907, 0.034557,
		0.995134, 0.072764, 0.066435,
		38.129963, 45.096039, 19.483820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716194, 44.385303, 19.754444>,  <37.433369, 45.045109, 19.437315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716194, 44.385303, 19.754444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.956482, 44.697620, 19.823139>,  <38.100655, 44.885010, 19.864357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.956482, 44.697620, 19.823139>,  <37.716194, 44.385303, 19.754444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956482, 44.697620, 19.823139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144318, -0.105378, 0.983904,
		0.786325, -0.615837, 0.049380,
		0.600721, 0.780795, 0.171738,
		38.136700, 44.931858, 19.874660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158936, 44.164631, 20.183352>,  <37.716194, 44.385303, 19.754444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158936, 44.164631, 20.183352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.193665, 44.556450, 20.255964>,  <38.214500, 44.791542, 20.299532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.193665, 44.556450, 20.255964>,  <38.158936, 44.164631, 20.183352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193665, 44.556450, 20.255964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086515, -0.188947, 0.978169,
		0.992460, -0.069217, -0.101149,
		0.086818, 0.979545, 0.181534,
		38.219711, 44.850315, 20.310425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754108, 44.185387, 20.709782>,  <38.158936, 44.164631, 20.183352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754108, 44.185387, 20.709782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.560863, 44.535313, 20.724228>,  <38.444916, 44.745266, 20.732895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.560863, 44.535313, 20.724228>,  <38.754108, 44.185387, 20.709782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560863, 44.535313, 20.724228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056368, -0.072238, 0.995793,
		0.873741, 0.479047, 0.084211,
		-0.483115, 0.874812, 0.036114,
		38.415928, 44.797756, 20.735062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997150, 44.427418, 21.311298>,  <38.754108, 44.185387, 20.709782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997150, 44.427418, 21.311298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.666611, 44.637894, 21.231033>,  <38.468285, 44.764179, 21.182875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.666611, 44.637894, 21.231033>,  <38.997150, 44.427418, 21.311298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666611, 44.637894, 21.231033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276142, -0.068062, 0.958704,
		0.490801, 0.847639, 0.201547,
		-0.826353, 0.526189, -0.200664,
		38.418705, 44.795750, 21.170834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898510, 44.944202, 21.888302>,  <38.997150, 44.427418, 21.311298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898510, 44.944202, 21.888302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.536945, 44.896694, 21.723940>,  <38.320007, 44.868191, 21.625322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.536945, 44.896694, 21.723940>,  <38.898510, 44.944202, 21.888302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536945, 44.896694, 21.723940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393203, -0.147371, 0.907565,
		-0.168344, 0.981925, 0.086510,
		-0.903909, -0.118767, -0.410905,
		38.265774, 44.861065, 21.600668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474983, 45.388237, 22.274761>,  <38.898510, 44.944202, 21.888302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474983, 45.388237, 22.274761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.227379, 45.132687, 22.092039>,  <38.078815, 44.979359, 21.982407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.227379, 45.132687, 22.092039>,  <38.474983, 45.388237, 22.274761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227379, 45.132687, 22.092039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501382, -0.126238, 0.855967,
		-0.604521, 0.758884, -0.242177,
		-0.619008, -0.638873, -0.456805,
		38.041676, 44.941025, 21.954998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762604, 45.608501, 22.393566>,  <38.474983, 45.388237, 22.274761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762604, 45.608501, 22.393566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.756588, 45.219547, 22.300402>,  <37.752979, 44.986176, 22.244503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.756588, 45.219547, 22.300402>,  <37.762604, 45.608501, 22.393566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756588, 45.219547, 22.300402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513678, -0.192332, 0.836148,
		-0.857851, 0.132219, -0.496598,
		-0.015043, -0.972382, -0.232910,
		37.752075, 44.927834, 22.230528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238434, 45.359734, 22.759033>,  <37.762604, 45.608501, 22.393566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238434, 45.359734, 22.759033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.393776, 45.005787, 22.656122>,  <37.486980, 44.793419, 22.594376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.393776, 45.005787, 22.656122>,  <37.238434, 45.359734, 22.759033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393776, 45.005787, 22.656122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517611, -0.440450, 0.733541,
		-0.762405, -0.151702, -0.629067,
		0.388352, -0.884868, -0.257279,
		37.510281, 44.740326, 22.578939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691738, 44.742744, 22.756330>,  <37.238434, 45.359734, 22.759033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691738, 44.742744, 22.756330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.031555, 44.535400, 22.795473>,  <37.235447, 44.410995, 22.818958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.031555, 44.535400, 22.795473>,  <36.691738, 44.742744, 22.756330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031555, 44.535400, 22.795473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419349, -0.551086, 0.721423,
		-0.320026, -0.653919, -0.685546,
		0.849547, -0.518357, 0.097859,
		37.286419, 44.379894, 22.824831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517941, 44.019054, 22.977322>,  <36.691738, 44.742744, 22.756330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517941, 44.019054, 22.977322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.905350, 44.032875, 23.075932>,  <37.137794, 44.041168, 23.135098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.905350, 44.032875, 23.075932>,  <36.517941, 44.019054, 22.977322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905350, 44.032875, 23.075932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171780, -0.623984, 0.762322,
		0.180165, -0.780673, -0.598406,
		0.968520, 0.034550, 0.246524,
		37.195908, 44.043240, 23.149889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258724, 43.403881, 22.611826>,  <36.517941, 44.019054, 22.977322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258724, 43.403881, 22.611826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.868767, 43.331547, 22.559866>,  <35.634792, 43.288147, 22.528690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.868767, 43.331547, 22.559866>,  <36.258724, 43.403881, 22.611826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868767, 43.331547, 22.559866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063667, 0.332658, -0.940896,
		0.213356, -0.925548, -0.312795,
		-0.974898, -0.180831, -0.129901,
		35.576298, 43.277298, 22.520895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188843, 42.979362, 22.066608>,  <36.258724, 43.403881, 22.611826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188843, 42.979362, 22.066608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.833771, 43.160770, 22.098463>,  <35.620728, 43.269615, 22.117577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.833771, 43.160770, 22.098463>,  <36.188843, 42.979362, 22.066608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833771, 43.160770, 22.098463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015302, 0.201910, -0.979285,
		-0.460205, -0.868074, -0.186171,
		-0.887681, 0.453521, 0.079637,
		35.567467, 43.296825, 22.122355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831753, 42.795174, 21.440285>,  <36.188843, 42.979362, 22.066608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831753, 42.795174, 21.440285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.627594, 43.103569, 21.592632>,  <35.505096, 43.288609, 21.684042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.627594, 43.103569, 21.592632>,  <35.831753, 42.795174, 21.440285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627594, 43.103569, 21.592632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119501, 0.375017, -0.919283,
		-0.851593, -0.514718, -0.099275,
		-0.510401, 0.770992, 0.380871,
		35.474472, 43.334866, 21.706894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239765, 42.730694, 20.989082>,  <35.831753, 42.795174, 21.440285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239765, 42.730694, 20.989082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.284237, 43.089138, 21.160955>,  <35.310921, 43.304203, 21.264078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.284237, 43.089138, 21.160955>,  <35.239765, 42.730694, 20.989082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284237, 43.089138, 21.160955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208958, 0.443775, -0.871436,
		-0.971584, 0.007103, 0.236590,
		0.111182, 0.896110, 0.429681,
		35.317593, 43.357971, 21.289860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704018, 43.041271, 20.766823>,  <35.239765, 42.730694, 20.989082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704018, 43.041271, 20.766823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.940178, 43.340450, 20.888151>,  <35.081875, 43.519958, 20.960949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.940178, 43.340450, 20.888151>,  <34.704018, 43.041271, 20.766823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940178, 43.340450, 20.888151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291460, 0.548027, -0.784039,
		-0.752647, 0.374492, 0.541552,
		0.590402, 0.747946, 0.303321,
		35.117298, 43.564835, 20.979147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389069, 43.580662, 20.607475>,  <34.704018, 43.041271, 20.766823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389069, 43.580662, 20.607475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.734276, 43.769802, 20.678600>,  <34.941399, 43.883286, 20.721275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.734276, 43.769802, 20.678600>,  <34.389069, 43.580662, 20.607475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734276, 43.769802, 20.678600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126473, 0.543009, -0.830148,
		-0.489087, 0.693944, 0.528428,
		0.863017, 0.472846, 0.177814,
		34.993179, 43.911655, 20.731945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334717, 44.300968, 20.418415>,  <34.389069, 43.580662, 20.607475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334717, 44.300968, 20.418415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.724957, 44.214542, 20.402811>,  <34.959099, 44.162685, 20.393448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.724957, 44.214542, 20.402811>,  <34.334717, 44.300968, 20.418415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724957, 44.214542, 20.402811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083216, 0.528297, -0.844972,
		0.203179, 0.821107, 0.533386,
		0.975599, -0.216067, -0.039010,
		35.017635, 44.149723, 20.391108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819893, 44.998493, 20.342196>,  <34.334717, 44.300968, 20.418415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819893, 44.998493, 20.342196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.998981, 44.670750, 20.198975>,  <35.106434, 44.474106, 20.113043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.998981, 44.670750, 20.198975>,  <34.819893, 44.998493, 20.342196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998981, 44.670750, 20.198975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222487, 0.489914, -0.842902,
		0.866051, 0.297725, 0.401642,
		0.447723, -0.819356, -0.358050,
		35.133297, 44.424942, 20.091560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460270, 45.259377, 19.997103>,  <34.819893, 44.998493, 20.342196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460270, 45.259377, 19.997103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.432659, 44.886833, 19.854105>,  <35.416092, 44.663307, 19.768307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.432659, 44.886833, 19.854105>,  <35.460270, 45.259377, 19.997103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432659, 44.886833, 19.854105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349055, 0.313151, -0.883231,
		0.934557, -0.185752, 0.303480,
		-0.069027, -0.931361, -0.357495,
		35.411949, 44.607426, 19.746857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009609, 45.243294, 19.597736>,  <35.460270, 45.259377, 19.997103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009609, 45.243294, 19.597736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.776745, 44.937889, 19.485924>,  <35.637028, 44.754646, 19.418837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.776745, 44.937889, 19.485924>,  <36.009609, 45.243294, 19.597736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776745, 44.937889, 19.485924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211434, 0.189808, -0.958785,
		0.785101, -0.617271, 0.050934,
		-0.582162, -0.763512, -0.279530,
		35.602097, 44.708836, 19.402065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439911, 44.848446, 19.158234>,  <36.009609, 45.243294, 19.597736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439911, 44.848446, 19.158234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.074657, 44.738392, 19.037909>,  <35.855507, 44.672359, 18.965714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.074657, 44.738392, 19.037909>,  <36.439911, 44.848446, 19.158234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074657, 44.738392, 19.037909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281945, 0.106728, -0.953476,
		0.294445, -0.955462, -0.019882,
		-0.913132, -0.275140, -0.300813,
		35.800716, 44.655849, 18.947664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565300, 44.484833, 18.598930>,  <36.439911, 44.848446, 19.158234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565300, 44.484833, 18.598930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.178627, 44.578091, 18.556665>,  <35.946625, 44.634045, 18.531305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.178627, 44.578091, 18.556665>,  <36.565300, 44.484833, 18.598930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178627, 44.578091, 18.556665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166190, 0.257690, -0.951828,
		-0.194689, -0.937677, -0.287851,
		-0.966683, 0.233149, -0.105663,
		35.888622, 44.648037, 18.524967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300323, 44.356464, 18.636168>,  <36.565300, 44.484833, 18.598930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300323, 44.356464, 18.636168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.963146, 44.149654, 18.576653>,  <36.760841, 44.025570, 18.540943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.963146, 44.149654, 18.576653>,  <37.300323, 44.356464, 18.636168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963146, 44.149654, 18.576653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416533, -0.802204, 0.427750,
		-0.340513, 0.298594, 0.891568,
		-0.842942, -0.517021, -0.148787,
		36.710262, 43.994549, 18.532017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441055, 43.733803, 19.056135>,  <37.300323, 44.356464, 18.636168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441055, 43.733803, 19.056135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.096626, 43.682121, 18.859421>,  <36.889969, 43.651112, 18.741392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.096626, 43.682121, 18.859421>,  <37.441055, 43.733803, 19.056135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096626, 43.682121, 18.859421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019277, -0.974777, 0.222349,
		-0.508110, 0.181979, 0.841848,
		-0.861076, -0.129206, -0.491786,
		36.838303, 43.643360, 18.711885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960018, 43.425922, 19.476429>,  <37.441055, 43.733803, 19.056135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960018, 43.425922, 19.476429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.835468, 43.325245, 19.109890>,  <36.760738, 43.264839, 18.889967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.835468, 43.325245, 19.109890>,  <36.960018, 43.425922, 19.476429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835468, 43.325245, 19.109890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092482, -0.951682, 0.292828,
		-0.945775, 0.175927, 0.273055,
		-0.311378, -0.251697, -0.916347,
		36.742054, 43.249737, 18.834986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516796, 42.970352, 19.701523>,  <36.960018, 43.425922, 19.476429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516796, 42.970352, 19.701523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.547924, 42.892475, 19.310413>,  <36.566601, 42.845749, 19.075748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.547924, 42.892475, 19.310413>,  <36.516796, 42.970352, 19.701523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547924, 42.892475, 19.310413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116886, -0.975764, 0.184990,
		-0.990091, 0.099891, -0.098695,
		0.077824, -0.194693, -0.977772,
		36.571270, 42.834068, 19.017082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015228, 42.433567, 19.556929>,  <36.516796, 42.970352, 19.701523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015228, 42.433567, 19.556929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.273987, 42.392658, 19.254652>,  <36.429241, 42.368114, 19.073286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.273987, 42.392658, 19.254652>,  <36.015228, 42.433567, 19.556929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273987, 42.392658, 19.254652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175246, -0.984381, -0.016792,
		-0.742172, 0.143294, -0.654712,
		0.646893, -0.102273, -0.755692,
		36.468056, 42.361977, 19.027945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611755, 42.033642, 19.049934>,  <36.015228, 42.433567, 19.556929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611755, 42.033642, 19.049934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.005749, 41.979778, 19.006699>,  <36.242146, 41.947460, 18.980757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.005749, 41.979778, 19.006699>,  <35.611755, 42.033642, 19.049934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005749, 41.979778, 19.006699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129010, -0.989963, 0.057700,
		-0.114773, -0.042889, -0.992466,
		0.984979, -0.134660, -0.108088,
		36.301243, 41.939381, 18.974272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618763, 41.447399, 18.724300>,  <35.611755, 42.033642, 19.049934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618763, 41.447399, 18.724300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.005371, 41.453003, 18.826784>,  <36.237335, 41.456364, 18.888275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.005371, 41.453003, 18.826784>,  <35.618763, 41.447399, 18.724300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005371, 41.453003, 18.826784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012655, -0.994690, 0.102132,
		0.256280, -0.101955, -0.961211,
		0.966520, 0.014010, 0.256209,
		36.295326, 41.457207, 18.903646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902073, 40.927406, 18.328392>,  <35.618763, 41.447399, 18.724300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902073, 40.927406, 18.328392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.163265, 40.972607, 18.627951>,  <36.319981, 40.999729, 18.807686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.163265, 40.972607, 18.627951>,  <35.902073, 40.927406, 18.328392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163265, 40.972607, 18.627951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019671, -0.991003, 0.132386,
		0.757119, -0.071714, -0.649329,
		0.652981, 0.113005, 0.748897,
		36.359158, 41.006508, 18.852619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533855, 40.516224, 18.244448>,  <35.902073, 40.927406, 18.328392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533855, 40.516224, 18.244448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.504711, 40.601139, 18.634243>,  <36.487225, 40.652088, 18.868120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.504711, 40.601139, 18.634243>,  <36.533855, 40.516224, 18.244448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504711, 40.601139, 18.634243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173715, -0.959447, 0.222003,
		0.982097, 0.185459, 0.033029,
		-0.072862, 0.212290, 0.974486,
		36.482853, 40.664825, 18.926588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984642, 40.559383, 18.911926>,  <36.533855, 40.516224, 18.244448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984642, 40.559383, 18.911926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.206982, 40.326103, 18.674974>,  <37.340385, 40.186134, 18.532804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.206982, 40.326103, 18.674974>,  <36.984642, 40.559383, 18.911926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206982, 40.326103, 18.674974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253734, 0.797626, -0.547185,
		0.791616, 0.153844, 0.591335,
		0.555845, -0.583202, -0.592378,
		37.373734, 40.151142, 18.497261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349434, 41.100632, 18.562502>,  <36.984642, 40.559383, 18.911926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349434, 41.100632, 18.562502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.420132, 40.766842, 18.353729>,  <37.462551, 40.566566, 18.228466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.420132, 40.766842, 18.353729>,  <37.349434, 41.100632, 18.562502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420132, 40.766842, 18.353729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274701, 0.551029, -0.787976,
		0.945146, -0.004104, 0.326623,
		0.176745, -0.834476, -0.521930,
		37.473156, 40.516499, 18.197151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904652, 41.172325, 18.237371>,  <37.349434, 41.100632, 18.562502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904652, 41.172325, 18.237371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.741985, 40.886745, 18.009369>,  <37.644386, 40.715397, 17.872568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.741985, 40.886745, 18.009369>,  <37.904652, 41.172325, 18.237371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741985, 40.886745, 18.009369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330684, 0.466586, -0.820333,
		0.851630, -0.522091, 0.046348,
		-0.406663, -0.713946, -0.570006,
		37.619987, 40.672562, 17.838367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435299, 40.980049, 17.899975>,  <37.904652, 41.172325, 18.237371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435299, 40.980049, 17.899975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.114120, 40.866871, 17.690126>,  <37.921413, 40.798965, 17.564219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.114120, 40.866871, 17.690126>,  <38.435299, 40.980049, 17.899975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114120, 40.866871, 17.690126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376491, 0.441599, -0.814398,
		0.462110, -0.851427, -0.248047,
		-0.802937, -0.282954, -0.524622,
		37.873238, 40.781986, 17.532742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746822, 40.783440, 17.316620>,  <38.435299, 40.980049, 17.899975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746822, 40.783440, 17.316620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.367168, 40.844624, 17.206537>,  <38.139374, 40.881332, 17.140488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.367168, 40.844624, 17.206537>,  <38.746822, 40.783440, 17.316620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367168, 40.844624, 17.206537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313396, 0.374880, -0.872495,
		-0.030283, -0.914368, -0.403749,
		-0.949139, 0.152955, -0.275207,
		38.082428, 40.890511, 17.123976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698601, 40.587879, 16.584925>,  <38.746822, 40.783440, 17.316620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698601, 40.587879, 16.584925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.384323, 40.829163, 16.639807>,  <38.195759, 40.973934, 16.672737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.384323, 40.829163, 16.639807>,  <38.698601, 40.587879, 16.584925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384323, 40.829163, 16.639807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200633, 0.458277, -0.865868,
		-0.585182, -0.652775, -0.481088,
		-0.785689, 0.603213, 0.137207,
		38.148617, 41.010128, 16.680969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285423, 40.549770, 15.993862>,  <38.698601, 40.587879, 16.584925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285423, 40.549770, 15.993862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.223995, 40.903526, 16.170168>,  <38.187138, 41.115780, 16.275951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.223995, 40.903526, 16.170168>,  <38.285423, 40.549770, 15.993862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223995, 40.903526, 16.170168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178426, 0.463541, -0.867925,
		-0.971896, -0.054641, -0.228983,
		-0.153567, 0.884389, 0.440764,
		38.177925, 41.168842, 16.302397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793362, 40.935688, 15.584870>,  <38.285423, 40.549770, 15.993862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793362, 40.935688, 15.584870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.985966, 41.206066, 15.808029>,  <38.101528, 41.368294, 15.941924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.985966, 41.206066, 15.808029>,  <37.793362, 40.935688, 15.584870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985966, 41.206066, 15.808029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205855, 0.531517, -0.821652,
		-0.851922, 0.510480, 0.116784,
		0.481510, 0.675943, 0.557897,
		38.130417, 41.408848, 15.975398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612362, 41.491123, 15.297529>,  <37.793362, 40.935688, 15.584870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612362, 41.491123, 15.297529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.924004, 41.594028, 15.526197>,  <38.110989, 41.655773, 15.663398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.924004, 41.594028, 15.526197>,  <37.612362, 41.491123, 15.297529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924004, 41.594028, 15.526197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347944, 0.581095, -0.735707,
		-0.521467, 0.772103, 0.363220,
		0.779107, 0.257266, 0.571670,
		38.157734, 41.671207, 15.697699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.300484, 33.080906, 29.981916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.653893, 33.267910, 29.993435>,  <36.865936, 33.380112, 30.000345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.653893, 33.267910, 29.993435>,  <36.300484, 33.080906, 29.981916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653893, 33.267910, 29.993435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289712, 0.593747, -0.750687,
		-0.368051, 0.654903, 0.660030,
		0.883518, 0.467510, 0.028796,
		36.918949, 33.408165, 30.002073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156868, 33.757442, 29.786953>,  <36.300484, 33.080906, 29.981916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156868, 33.757442, 29.786953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.544373, 33.695286, 29.709642>,  <36.776875, 33.657990, 29.663256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.544373, 33.695286, 29.709642>,  <36.156868, 33.757442, 29.786953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544373, 33.695286, 29.709642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100299, 0.467270, -0.878407,
		0.226813, 0.870351, 0.437087,
		0.968760, -0.155395, -0.193278,
		36.834999, 33.648666, 29.651659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408470, 34.356525, 29.478443>,  <36.156868, 33.757442, 29.786953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408470, 34.356525, 29.478443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.653336, 34.061531, 29.364347>,  <36.800255, 33.884533, 29.295889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.653336, 34.061531, 29.364347>,  <36.408470, 34.356525, 29.478443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653336, 34.061531, 29.364347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030104, 0.338734, -0.940400,
		0.790157, 0.584266, 0.185160,
		0.612164, -0.737490, -0.285241,
		36.836987, 33.840282, 29.278774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715279, 34.518635, 28.905991>,  <36.408470, 34.356525, 29.478443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715279, 34.518635, 28.905991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.823635, 34.135162, 28.871239>,  <36.888649, 33.905079, 28.850388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.823635, 34.135162, 28.871239>,  <36.715279, 34.518635, 28.905991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823635, 34.135162, 28.871239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191074, 0.034905, -0.980955,
		0.943456, 0.282331, -0.173724,
		0.270890, -0.958682, -0.086878,
		36.904903, 33.847557, 28.845175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302040, 34.491383, 28.453419>,  <36.715279, 34.518635, 28.905991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302040, 34.491383, 28.453419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.112766, 34.138996, 28.452978>,  <36.999203, 33.927567, 28.452713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.112766, 34.138996, 28.452978>,  <37.302040, 34.491383, 28.453419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112766, 34.138996, 28.452978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112998, 0.061935, -0.991663,
		0.873687, -0.469114, -0.128854,
		-0.473183, -0.880963, -0.001103,
		36.970810, 33.874706, 28.452646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713131, 34.098145, 28.067068>,  <37.302040, 34.491383, 28.453419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713131, 34.098145, 28.067068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.360416, 33.909538, 28.062449>,  <37.148788, 33.796375, 28.059677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.360416, 33.909538, 28.062449>,  <37.713131, 34.098145, 28.067068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360416, 33.909538, 28.062449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000953, 0.022702, -0.999742,
		0.471655, -0.881566, -0.019569,
		-0.881783, -0.471514, -0.011548,
		37.095882, 33.768085, 28.058985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775024, 33.691414, 27.519859>,  <37.713131, 34.098145, 28.067068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775024, 33.691414, 27.519859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.382195, 33.665886, 27.590811>,  <37.146496, 33.650570, 27.633381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.382195, 33.665886, 27.590811>,  <37.775024, 33.691414, 27.519859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382195, 33.665886, 27.590811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168211, -0.128088, -0.977394,
		0.085097, -0.989707, 0.115056,
		-0.982071, -0.063820, 0.177379,
		37.087574, 33.646740, 27.644024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551891, 33.063385, 27.272287>,  <37.775024, 33.691414, 27.519859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551891, 33.063385, 27.272287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.241096, 33.315075, 27.279974>,  <37.054619, 33.466087, 27.284586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.241096, 33.315075, 27.279974>,  <37.551891, 33.063385, 27.272287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241096, 33.315075, 27.279974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162156, -0.170556, -0.971914,
		-0.608274, -0.758279, 0.234552,
		-0.776987, 0.629224, 0.019215,
		37.007999, 33.503841, 27.285738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080479, 32.668941, 26.924809>,  <37.551891, 33.063385, 27.272287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080479, 32.668941, 26.924809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.949005, 33.045860, 26.950243>,  <36.870121, 33.272011, 26.965504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.949005, 33.045860, 26.950243>,  <37.080479, 32.668941, 26.924809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949005, 33.045860, 26.950243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124224, 0.023606, -0.991973,
		-0.936233, -0.333948, 0.109296,
		-0.328688, 0.942295, 0.063585,
		36.850399, 33.328548, 26.969318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409008, 32.774998, 26.499186>,  <37.080479, 32.668941, 26.924809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409008, 32.774998, 26.499186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.535580, 33.151234, 26.548429>,  <36.611523, 33.376976, 26.577976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.535580, 33.151234, 26.548429>,  <36.409008, 32.774998, 26.499186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535580, 33.151234, 26.548429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151127, 0.178106, -0.972337,
		-0.936501, 0.289069, 0.198507,
		0.316428, 0.940594, 0.123111,
		36.630508, 33.433411, 26.585363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011616, 33.162697, 26.114742>,  <36.409008, 32.774998, 26.499186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011616, 33.162697, 26.114742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.315285, 33.416931, 26.170881>,  <36.497486, 33.569469, 26.204565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.315285, 33.416931, 26.170881>,  <36.011616, 33.162697, 26.114742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315285, 33.416931, 26.170881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086606, 0.312345, -0.946013,
		-0.645106, 0.706029, 0.292167,
		0.759169, 0.635582, 0.140349,
		36.543034, 33.607605, 26.212986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826729, 33.804619, 25.747864>,  <36.011616, 33.162697, 26.114742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826729, 33.804619, 25.747864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.224480, 33.819225, 25.787621>,  <36.463131, 33.827991, 25.811476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.224480, 33.819225, 25.787621>,  <35.826729, 33.804619, 25.747864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224480, 33.819225, 25.787621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086130, 0.267071, -0.959820,
		-0.061598, 0.962985, 0.262424,
		0.994378, 0.036521, 0.099393,
		36.522793, 33.830181, 25.817438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415550, 34.530815, 25.860897>,  <35.826729, 33.804619, 25.747864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415550, 34.530815, 25.860897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.162727, 34.838863, 25.895340>,  <35.011032, 35.023693, 25.916006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.162727, 34.838863, 25.895340>,  <35.415550, 34.530815, 25.860897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162727, 34.838863, 25.895340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042587, -0.076431, 0.996165,
		0.773749, 0.633302, 0.015512,
		-0.632059, 0.770121, 0.086109,
		34.973110, 35.069901, 25.921173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665607, 34.922874, 26.293127>,  <35.415550, 34.530815, 25.860897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665607, 34.922874, 26.293127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.271996, 34.993736, 26.300028>,  <35.035828, 35.036251, 26.304169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.271996, 34.993736, 26.300028>,  <35.665607, 34.922874, 26.293127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271996, 34.993736, 26.300028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022696, -0.221014, 0.975007,
		0.176537, 0.959046, 0.221505,
		-0.984032, 0.177152, 0.017251,
		34.976788, 35.046883, 26.305202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554466, 35.405300, 26.907084>,  <35.665607, 34.922874, 26.293127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554466, 35.405300, 26.907084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.194160, 35.252220, 26.824951>,  <34.977978, 35.160374, 26.775673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.194160, 35.252220, 26.824951>,  <35.554466, 35.405300, 26.907084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194160, 35.252220, 26.824951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193850, -0.068787, 0.978617,
		-0.388639, 0.921309, -0.012225,
		-0.900767, -0.382699, -0.205329,
		34.923931, 35.137409, 26.763351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071404, 35.838223, 27.343363>,  <35.554466, 35.405300, 26.907084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071404, 35.838223, 27.343363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.872555, 35.500698, 27.262522>,  <34.753246, 35.298183, 27.214018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.872555, 35.500698, 27.262522>,  <35.071404, 35.838223, 27.343363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872555, 35.500698, 27.262522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315634, -0.041099, 0.947990,
		-0.808234, 0.535060, -0.245905,
		-0.497125, -0.843814, -0.202101,
		34.723415, 35.247555, 27.201891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562218, 35.867367, 27.800329>,  <35.071404, 35.838223, 27.343363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562218, 35.867367, 27.800329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.553993, 35.490311, 27.667055>,  <34.549057, 35.264076, 27.587091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.553993, 35.490311, 27.667055>,  <34.562218, 35.867367, 27.800329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553993, 35.490311, 27.667055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438069, -0.291067, 0.850515,
		-0.898706, 0.163444, -0.406956,
		-0.020561, -0.942638, -0.333183,
		34.547825, 35.207520, 27.567101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873230, 35.696671, 27.688759>,  <34.562218, 35.867367, 27.800329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873230, 35.696671, 27.688759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.065048, 35.348801, 27.735592>,  <34.180138, 35.140079, 27.763693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.065048, 35.348801, 27.735592>,  <33.873230, 35.696671, 27.688759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065048, 35.348801, 27.735592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444651, -0.125792, 0.886827,
		-0.756520, -0.477335, -0.447023,
		0.479545, -0.869671, 0.117083,
		34.208912, 35.087898, 27.770718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330139, 35.137333, 27.734715>,  <33.873230, 35.696671, 27.688759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330139, 35.137333, 27.734715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.663284, 35.011517, 27.916882>,  <33.863171, 34.936028, 28.026182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.663284, 35.011517, 27.916882>,  <33.330139, 35.137333, 27.734715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663284, 35.011517, 27.916882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533656, -0.238110, 0.811489,
		-0.146805, -0.918896, -0.366168,
		0.832862, -0.314539, 0.455419,
		33.913143, 34.917152, 28.053507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181431, 34.422623, 28.056414>,  <33.330139, 35.137333, 27.734715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181431, 34.422623, 28.056414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.498665, 34.580509, 28.241980>,  <33.689007, 34.675240, 28.353319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.498665, 34.580509, 28.241980>,  <33.181431, 34.422623, 28.056414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498665, 34.580509, 28.241980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490846, -0.036836, 0.870467,
		0.360677, -0.918064, 0.164532,
		0.793084, 0.394718, 0.463914,
		33.736591, 34.698925, 28.381153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160847, 33.994724, 28.571630>,  <33.181431, 34.422623, 28.056414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160847, 33.994724, 28.571630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.392975, 34.304260, 28.673140>,  <33.532249, 34.489983, 28.734045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.392975, 34.304260, 28.673140>,  <33.160847, 33.994724, 28.571630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392975, 34.304260, 28.673140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365033, -0.031392, 0.930465,
		0.727999, -0.632601, 0.264260,
		0.580318, 0.773842, 0.253773,
		33.567070, 34.536411, 28.749271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411770, 33.832638, 29.223845>,  <33.160847, 33.994724, 28.571630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411770, 33.832638, 29.223845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466465, 34.227951, 29.196699>,  <33.499283, 34.465137, 29.180412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466465, 34.227951, 29.196699>,  <33.411770, 33.832638, 29.223845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466465, 34.227951, 29.196699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197803, 0.094367, 0.975689,
		0.970658, -0.119989, 0.208388,
		0.136737, 0.988280, -0.067864,
		33.507484, 34.524437, 29.176340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773438, 33.846756, 29.768032>,  <33.411770, 33.832638, 29.223845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773438, 33.846756, 29.768032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.631279, 34.211060, 29.683928>,  <33.545982, 34.429642, 29.633465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.631279, 34.211060, 29.683928>,  <33.773438, 33.846756, 29.768032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631279, 34.211060, 29.683928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254317, 0.122241, 0.959364,
		0.899454, 0.394426, 0.188178,
		-0.355395, 0.910761, -0.210259,
		33.524662, 34.484287, 29.620850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089886, 34.337406, 30.316439>,  <33.773438, 33.846756, 29.768032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089886, 34.337406, 30.316439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.734940, 34.450207, 30.170528>,  <33.521973, 34.517887, 30.082983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.734940, 34.450207, 30.170528>,  <34.089886, 34.337406, 30.316439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734940, 34.450207, 30.170528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265637, 0.333965, 0.904381,
		0.376857, 0.899413, -0.221439,
		-0.887365, 0.281999, -0.364774,
		33.468731, 34.534805, 30.061096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980167, 34.849869, 30.747440>,  <34.089886, 34.337406, 30.316439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980167, 34.849869, 30.747440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.622334, 34.825455, 30.570356>,  <33.407635, 34.810806, 30.464106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.622334, 34.825455, 30.570356>,  <33.980167, 34.849869, 30.747440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622334, 34.825455, 30.570356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432935, 0.364057, 0.824639,
		0.110839, 0.929375, -0.352104,
		-0.894585, -0.061035, -0.442711,
		33.353958, 34.807144, 30.437544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643600, 35.534195, 30.824526>,  <33.980167, 34.849869, 30.747440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643600, 35.534195, 30.824526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.379318, 35.236580, 30.784784>,  <33.220749, 35.058010, 30.760939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.379318, 35.236580, 30.784784>,  <33.643600, 35.534195, 30.824526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379318, 35.236580, 30.784784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536161, 0.375140, 0.756175,
		-0.525351, 0.552882, -0.646782,
		-0.660710, -0.744037, -0.099354,
		33.181107, 35.013371, 30.754978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022831, 35.822693, 30.767471>,  <33.643600, 35.534195, 30.824526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022831, 35.822693, 30.767471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.955860, 35.454540, 30.908812>,  <32.915676, 35.233646, 30.993616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.955860, 35.454540, 30.908812>,  <33.022831, 35.822693, 30.767471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955860, 35.454540, 30.908812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308019, 0.389303, 0.868083,
		-0.936532, 0.036506, -0.348678,
		-0.167431, -0.920386, 0.353350,
		32.905632, 35.178425, 31.014816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801487, 36.584919, 30.711201>,  <33.022831, 35.822693, 30.767471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801487, 36.584919, 30.711201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.084541, 36.850742, 30.807205>,  <33.254375, 37.010239, 30.864809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.084541, 36.850742, 30.807205>,  <32.801487, 36.584919, 30.711201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084541, 36.850742, 30.807205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125143, 0.216436, -0.968243,
		-0.695404, 0.715202, 0.069994,
		0.707638, 0.664561, 0.240013,
		33.296833, 37.050110, 30.879210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743874, 37.013897, 30.271027>,  <32.801487, 36.584919, 30.711201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743874, 37.013897, 30.271027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.116573, 37.092731, 30.393007>,  <33.340195, 37.140034, 30.466196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.116573, 37.092731, 30.393007>,  <32.743874, 37.013897, 30.271027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116573, 37.092731, 30.393007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125211, 0.613937, -0.779361,
		-0.340826, 0.764353, 0.547359,
		0.931751, 0.197091, 0.304951,
		33.396099, 37.151859, 30.484493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778233, 37.715683, 30.468302>,  <32.743874, 37.013897, 30.271027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778233, 37.715683, 30.468302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.129120, 37.576328, 30.336176>,  <33.339653, 37.492714, 30.256901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.129120, 37.576328, 30.336176>,  <32.778233, 37.715683, 30.468302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129120, 37.576328, 30.336176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049715, 0.750255, -0.659277,
		0.477504, 0.561911, 0.675460,
		0.877222, -0.348388, -0.330314,
		33.392288, 37.471813, 30.237082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931076, 38.229969, 30.225172>,  <32.778233, 37.715683, 30.468302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931076, 38.229969, 30.225172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.246780, 38.013439, 30.109215>,  <33.436203, 37.883522, 30.039640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.246780, 38.013439, 30.109215>,  <32.931076, 38.229969, 30.225172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246780, 38.013439, 30.109215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192352, 0.666284, -0.720463,
		0.583153, 0.512872, 0.629996,
		0.789262, -0.541321, -0.289893,
		33.483559, 37.851044, 30.022247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519043, 38.648125, 30.236195>,  <32.931076, 38.229969, 30.225172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519043, 38.648125, 30.236195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.609528, 38.357540, 29.976631>,  <33.663818, 38.183189, 29.820892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.609528, 38.357540, 29.976631>,  <33.519043, 38.648125, 30.236195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609528, 38.357540, 29.976631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159697, 0.684823, -0.710995,
		0.960898, 0.057205, 0.270928,
		0.226210, -0.726461, -0.648910,
		33.677391, 38.139603, 29.781958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211975, 38.843613, 29.804213>,  <33.519043, 38.648125, 30.236195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211975, 38.843613, 29.804213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.975872, 38.583263, 29.613235>,  <33.834209, 38.427055, 29.498650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.975872, 38.583263, 29.613235>,  <34.211975, 38.843613, 29.804213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975872, 38.583263, 29.613235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184785, 0.466817, -0.864834,
		0.785777, -0.598702, -0.155272,
		-0.590261, -0.650875, -0.477445,
		33.798794, 38.388000, 29.470001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565086, 38.673206, 29.252438>,  <34.211975, 38.843613, 29.804213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565086, 38.673206, 29.252438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.188141, 38.576611, 29.159796>,  <33.961975, 38.518654, 29.104210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.188141, 38.576611, 29.159796>,  <34.565086, 38.673206, 29.252438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188141, 38.576611, 29.159796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075756, 0.520230, -0.850660,
		0.325911, -0.819174, -0.471950,
		-0.942360, -0.241486, -0.231606,
		33.905434, 38.504166, 29.090313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637905, 38.573170, 28.504108>,  <34.565086, 38.673206, 29.252438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637905, 38.573170, 28.504108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.248795, 38.617996, 28.585243>,  <34.015327, 38.644894, 28.633924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.248795, 38.617996, 28.585243>,  <34.637905, 38.573170, 28.504108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248795, 38.617996, 28.585243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136687, 0.429349, -0.892735,
		-0.187134, -0.896159, -0.402343,
		-0.972778, 0.112066, 0.202839,
		33.956963, 38.651615, 28.646095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286858, 38.388855, 27.867519>,  <34.637905, 38.573170, 28.504108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286858, 38.388855, 27.867519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.007168, 38.595089, 28.065613>,  <33.839352, 38.718830, 28.184469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.007168, 38.595089, 28.065613>,  <34.286858, 38.388855, 27.867519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007168, 38.595089, 28.065613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200433, 0.523568, -0.828072,
		-0.686228, -0.678271, -0.262753,
		-0.699227, 0.515582, 0.495235,
		33.797401, 38.749763, 28.214184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844326, 38.335747, 27.406843>,  <34.286858, 38.388855, 27.867519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844326, 38.335747, 27.406843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.769989, 38.647057, 27.646759>,  <33.725388, 38.833843, 27.790709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.769989, 38.647057, 27.646759>,  <33.844326, 38.335747, 27.406843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769989, 38.647057, 27.646759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058009, 0.600671, -0.797389,
		-0.980866, -0.182982, -0.066483,
		-0.185842, 0.778275, 0.599792,
		33.714237, 38.880539, 27.826696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199574, 38.563736, 27.224028>,  <33.844326, 38.335747, 27.406843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199574, 38.563736, 27.224028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.386967, 38.863720, 27.410826>,  <33.499405, 39.043709, 27.522903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.386967, 38.863720, 27.410826>,  <33.199574, 38.563736, 27.224028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386967, 38.863720, 27.410826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133077, 0.582461, -0.801891,
		-0.873391, 0.313529, 0.372677,
		0.468486, 0.749959, 0.466993,
		33.527512, 39.088707, 27.550924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957291, 39.066368, 26.951502>,  <33.199574, 38.563736, 27.224028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957291, 39.066368, 26.951502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.253666, 39.270821, 27.125748>,  <33.431492, 39.393490, 27.230295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.253666, 39.270821, 27.125748>,  <32.957291, 39.066368, 26.951502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253666, 39.270821, 27.125748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056284, 0.693627, -0.718132,
		-0.669214, 0.507571, 0.542701,
		0.740935, 0.511129, 0.435617,
		33.475948, 39.424160, 27.256433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855194, 39.707180, 26.804279>,  <32.957291, 39.066368, 26.951502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855194, 39.707180, 26.804279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.244652, 39.692444, 26.894312>,  <33.478325, 39.683601, 26.948332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.244652, 39.692444, 26.894312>,  <32.855194, 39.707180, 26.804279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244652, 39.692444, 26.894312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169502, 0.777173, -0.606030,
		-0.152604, 0.628209, 0.762933,
		0.973643, -0.036836, 0.225082,
		33.536743, 39.681393, 26.961836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073185, 40.449127, 26.769400>,  <32.855194, 39.707180, 26.804279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073185, 40.449127, 26.769400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.412571, 40.239021, 26.743456>,  <33.616203, 40.112957, 26.727890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.412571, 40.239021, 26.743456>,  <33.073185, 40.449127, 26.769400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412571, 40.239021, 26.743456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408966, 0.728468, -0.549619,
		0.335944, 0.439805, 0.832894,
		0.848462, -0.525267, -0.064859,
		33.667110, 40.081440, 26.723997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661091, 40.959286, 26.807384>,  <33.073185, 40.449127, 26.769400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661091, 40.959286, 26.807384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.814510, 40.632511, 26.635107>,  <33.906563, 40.436447, 26.531740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.814510, 40.632511, 26.635107>,  <33.661091, 40.959286, 26.807384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814510, 40.632511, 26.635107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518161, 0.576405, -0.631876,
		0.764458, 0.019189, 0.644388,
		0.383553, -0.816939, -0.430694,
		33.929577, 40.387428, 26.505899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398170, 41.016430, 26.781914>,  <33.661091, 40.959286, 26.807384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398170, 41.016430, 26.781914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.296978, 40.751732, 26.499611>,  <34.236263, 40.592915, 26.330229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.296978, 40.751732, 26.499611>,  <34.398170, 41.016430, 26.781914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296978, 40.751732, 26.499611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628486, 0.442192, -0.639900,
		0.735530, -0.605443, 0.304029,
		-0.252984, -0.661744, -0.705758,
		34.221085, 40.553207, 26.287884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952789, 40.913025, 26.380106>,  <34.398170, 41.016430, 26.781914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952789, 40.913025, 26.380106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.665592, 40.774563, 26.138556>,  <34.493275, 40.691486, 25.993626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.665592, 40.774563, 26.138556>,  <34.952789, 40.913025, 26.380106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665592, 40.774563, 26.138556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411593, 0.488499, -0.769389,
		0.561322, -0.800965, -0.208262,
		-0.717989, -0.346156, -0.603877,
		34.450195, 40.670715, 25.957392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379593, 40.792648, 25.774847>,  <34.952789, 40.913025, 26.380106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379593, 40.792648, 25.774847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.012054, 40.785561, 25.617159>,  <34.791531, 40.781307, 25.522547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.012054, 40.785561, 25.617159>,  <35.379593, 40.792648, 25.774847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012054, 40.785561, 25.617159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312375, 0.577784, -0.754047,
		0.241132, -0.815997, -0.525361,
		-0.918846, -0.017716, -0.394220,
		34.736401, 40.780247, 25.498894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416965, 40.573959, 25.058981>,  <35.379593, 40.792648, 25.774847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416965, 40.573959, 25.058981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.062088, 40.757824, 25.074944>,  <34.849159, 40.868145, 25.084520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.062088, 40.757824, 25.074944>,  <35.416965, 40.573959, 25.058981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062088, 40.757824, 25.074944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265898, 0.580052, -0.769960,
		-0.377070, -0.672494, -0.636844,
		-0.887196, 0.459664, 0.039905,
		34.795929, 40.895721, 25.086916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150440, 40.687504, 24.414713>,  <35.416965, 40.573959, 25.058981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150440, 40.687504, 24.414713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.953362, 40.963650, 24.626617>,  <34.835114, 41.129337, 24.753759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.953362, 40.963650, 24.626617>,  <35.150440, 40.687504, 24.414713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953362, 40.963650, 24.626617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133317, 0.661473, -0.738024,
		-0.859930, -0.292994, -0.417942,
		-0.492694, 0.690368, 0.529760,
		34.805553, 41.170761, 24.785545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538204, 40.902451, 24.082130>,  <35.150440, 40.687504, 24.414713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538204, 40.902451, 24.082130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.604553, 41.205849, 24.334217>,  <34.644363, 41.387886, 24.485470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.604553, 41.205849, 24.334217>,  <34.538204, 40.902451, 24.082130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604553, 41.205849, 24.334217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014602, 0.640891, -0.767493,
		-0.986038, 0.118107, 0.117385,
		0.165877, 0.758491, 0.630219,
		34.654316, 41.433395, 24.523283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182674, 41.489967, 23.768879>,  <34.538204, 40.902451, 24.082130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182674, 41.489967, 23.768879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.427044, 41.645187, 24.044903>,  <34.573666, 41.738319, 24.210518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.427044, 41.645187, 24.044903>,  <34.182674, 41.489967, 23.768879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427044, 41.645187, 24.044903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190128, 0.774212, -0.603694,
		-0.768517, 0.500014, 0.399209,
		0.610928, 0.388048, 0.690062,
		34.610321, 41.761600, 24.251921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050774, 42.218479, 23.759859>,  <34.182674, 41.489967, 23.768879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050774, 42.218479, 23.759859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.414867, 42.178020, 23.920483>,  <34.633324, 42.153744, 24.016857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.414867, 42.178020, 23.920483>,  <34.050774, 42.218479, 23.759859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414867, 42.178020, 23.920483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325303, 0.774695, -0.542241,
		-0.256236, 0.624192, 0.738056,
		0.910231, -0.101150, 0.401557,
		34.687935, 42.147675, 24.040949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261150, 42.899193, 23.912010>,  <34.050774, 42.218479, 23.759859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261150, 42.899193, 23.912010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.602257, 42.693237, 23.876940>,  <34.806919, 42.569664, 23.855898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.602257, 42.693237, 23.876940>,  <34.261150, 42.899193, 23.912010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602257, 42.693237, 23.876940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383362, 0.731050, -0.564446,
		0.354721, 0.447727, 0.820801,
		0.852764, -0.514885, -0.087677,
		34.858086, 42.538773, 23.850637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806816, 43.353333, 24.035448>,  <34.261150, 42.899193, 23.912010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806816, 43.353333, 24.035448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.952160, 43.050983, 23.817595>,  <35.039368, 42.869576, 23.686882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.952160, 43.050983, 23.817595>,  <34.806816, 43.353333, 24.035448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952160, 43.050983, 23.817595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206337, 0.635365, -0.744135,
		0.908512, 0.158012, 0.386831,
		0.363361, -0.755873, -0.544633,
		35.061169, 42.824223, 23.654205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369366, 43.647572, 23.674004>,  <34.806816, 43.353333, 24.035448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369366, 43.647572, 23.674004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.325523, 43.307770, 23.467575>,  <35.299217, 43.103889, 23.343718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.325523, 43.307770, 23.467575>,  <35.369366, 43.647572, 23.674004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325523, 43.307770, 23.467575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075713, 0.510558, -0.856504,
		0.991088, -0.132950, 0.008359,
		-0.109604, -0.849503, -0.516074,
		35.292641, 43.052917, 23.312754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904720, 43.653542, 23.237858>,  <35.369366, 43.647572, 23.674004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904720, 43.653542, 23.237858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.646427, 43.402359, 23.064098>,  <35.491451, 43.251648, 22.959843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.646427, 43.402359, 23.064098>,  <35.904720, 43.653542, 23.237858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646427, 43.402359, 23.064098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170106, 0.436302, -0.883575,
		0.744377, -0.644444, -0.174914,
		-0.645730, -0.627959, -0.434397,
		35.452709, 43.213970, 22.933779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612015, 43.347095, 23.227358>,  <35.904720, 43.653542, 23.237858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612015, 43.347095, 23.227358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.927834, 43.549004, 23.366968>,  <37.117325, 43.670151, 23.450733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.927834, 43.549004, 23.366968>,  <36.612015, 43.347095, 23.227358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927834, 43.549004, 23.366968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050010, -0.513919, 0.856380,
		0.611647, -0.693608, -0.380520,
		0.789548, 0.504773, 0.349024,
		37.164700, 43.700436, 23.471676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026375, 42.854454, 23.605774>,  <36.612015, 43.347095, 23.227358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026375, 42.854454, 23.605774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.155422, 43.210072, 23.735712>,  <37.232849, 43.423443, 23.813675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.155422, 43.210072, 23.735712>,  <37.026375, 42.854454, 23.605774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155422, 43.210072, 23.735712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083763, -0.368663, 0.925781,
		0.942817, -0.271461, -0.193405,
		0.322615, 0.889042, 0.324844,
		37.252205, 43.476784, 23.833164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748615, 42.749466, 23.943727>,  <37.026375, 42.854454, 23.605774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748615, 42.749466, 23.943727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.554047, 43.063812, 24.096468>,  <37.437305, 43.252419, 24.188112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.554047, 43.063812, 24.096468>,  <37.748615, 42.749466, 23.943727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554047, 43.063812, 24.096468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089190, -0.390095, 0.916445,
		0.869163, 0.479832, 0.119657,
		-0.486417, 0.785867, 0.381852,
		37.408123, 43.299572, 24.211023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157200, 42.918617, 24.534161>,  <37.748615, 42.749466, 23.943727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157200, 42.918617, 24.534161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.799301, 43.085014, 24.599121>,  <37.584560, 43.184853, 24.638098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.799301, 43.085014, 24.599121>,  <38.157200, 42.918617, 24.534161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799301, 43.085014, 24.599121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010402, -0.344146, 0.938858,
		0.446450, 0.841731, 0.303597,
		-0.894748, 0.415995, 0.162400,
		37.530876, 43.209812, 24.647840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275005, 43.245621, 25.250538>,  <38.157200, 42.918617, 24.534161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275005, 43.245621, 25.250538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.878403, 43.228786, 25.201321>,  <37.640442, 43.218685, 25.171789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.878403, 43.228786, 25.201321>,  <38.275005, 43.245621, 25.250538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878403, 43.228786, 25.201321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107977, -0.260855, 0.959320,
		-0.072470, 0.964460, 0.254096,
		-0.991508, -0.042085, -0.123044,
		37.580952, 43.216160, 25.164408>
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
