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
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
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
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<40.199677, 31.675985, 52.179375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369991, 31.573114, 51.832371>,  <40.472179, 31.511393, 51.624168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369991, 31.573114, 51.832371>,  <40.199677, 31.675985, 52.179375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369991, 31.573114, 51.832371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361936, 0.927121, -0.097206,
		0.829283, -0.272592, 0.487836,
		0.425786, -0.257176, -0.867506,
		40.497726, 31.495962, 51.572121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940617, 31.736807, 52.088955>,  <40.199677, 31.675985, 52.179375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940617, 31.736807, 52.088955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815811, 31.773350, 51.710686>,  <40.740929, 31.795277, 51.483723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815811, 31.773350, 51.710686>,  <40.940617, 31.736807, 52.088955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815811, 31.773350, 51.710686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651144, 0.745395, -0.142825,
		0.691853, -0.660334, -0.292061,
		-0.312012, 0.091360, -0.945675,
		40.722206, 31.800758, 51.426983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427486, 31.521963, 51.471222>,  <40.940617, 31.736807, 52.088955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427486, 31.521963, 51.471222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179150, 31.818457, 51.369141>,  <41.030148, 31.996353, 51.307892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179150, 31.818457, 51.369141>,  <41.427486, 31.521963, 51.471222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179150, 31.818457, 51.369141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779392, 0.618623, -0.099266,
		0.084296, -0.260532, -0.961778,
		-0.620840, 0.741234, -0.255204,
		40.992897, 32.040829, 51.292580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668114, 31.687967, 50.876328>,  <41.427486, 31.521963, 51.471222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668114, 31.687967, 50.876328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.464104, 32.004505, 51.011177>,  <41.341698, 32.194427, 51.092087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.464104, 32.004505, 51.011177>,  <41.668114, 31.687967, 50.876328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464104, 32.004505, 51.011177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765956, 0.596164, -0.240624,
		-0.391395, 0.135496, -0.910192,
		-0.510020, 0.791347, 0.337120,
		41.311096, 32.241909, 51.112312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942520, 32.246746, 50.364697>,  <41.668114, 31.687967, 50.876328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.942520, 32.246746, 50.364697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.753613, 32.434097, 50.663383>,  <41.640270, 32.546509, 50.842594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.753613, 32.434097, 50.663383>,  <41.942520, 32.246746, 50.364697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.753613, 32.434097, 50.663383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681672, 0.731141, -0.027483,
		-0.558829, 0.496037, -0.664573,
		-0.472264, 0.468379, 0.746718,
		41.611935, 32.574612, 50.887398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730133, 32.922749, 50.127216>,  <41.942520, 32.246746, 50.364697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730133, 32.922749, 50.127216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.766273, 32.934029, 50.525421>,  <41.787956, 32.940796, 50.764343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.766273, 32.934029, 50.525421>,  <41.730133, 32.922749, 50.127216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766273, 32.934029, 50.525421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722931, 0.685668, -0.085034,
		-0.684988, 0.727368, 0.041564,
		0.090350, 0.028199, 0.995511,
		41.793377, 32.942490, 50.824074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957512, 33.542355, 50.236759>,  <41.730133, 32.922749, 50.127216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957512, 33.542355, 50.236759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.055561, 33.349312, 50.573093>,  <42.114391, 33.233486, 50.774895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.055561, 33.349312, 50.573093>,  <41.957512, 33.542355, 50.236759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.055561, 33.349312, 50.573093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846062, 0.529970, 0.057539,
		-0.473386, 0.697295, 0.538224,
		0.245121, -0.482609, 0.840835,
		42.129097, 33.204529, 50.825344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329166, 34.043629, 50.635040>,  <41.957512, 33.542355, 50.236759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.329166, 34.043629, 50.635040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.443336, 33.692047, 50.787861>,  <42.511841, 33.481098, 50.879555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.443336, 33.692047, 50.787861>,  <42.329166, 34.043629, 50.635040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.443336, 33.692047, 50.787861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871672, 0.403789, 0.277746,
		-0.398396, 0.253749, 0.881415,
		0.285428, -0.878957, 0.382053,
		42.528965, 33.428360, 50.902477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.728233, 34.212902, 51.210815>,  <42.329166, 34.043629, 50.635040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.728233, 34.212902, 51.210815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836781, 33.835522, 51.134651>,  <42.901909, 33.609093, 51.088955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836781, 33.835522, 51.134651>,  <42.728233, 34.212902, 51.210815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.836781, 33.835522, 51.134651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960670, 0.253404, 0.113573,
		-0.058901, -0.213739, 0.975113,
		0.271372, -0.943452, -0.190407,
		42.918194, 33.552486, 51.077530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991589, 33.906708, 51.838936>,  <42.728233, 34.212902, 51.210815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991589, 33.906708, 51.838936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155563, 33.715260, 51.528355>,  <43.253948, 33.600391, 51.342007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155563, 33.715260, 51.528355>,  <42.991589, 33.906708, 51.838936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.155563, 33.715260, 51.528355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911362, 0.180391, 0.369971,
		-0.037010, -0.859293, 0.510144,
		0.409938, -0.478618, -0.776450,
		43.278545, 33.571674, 51.295418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.591919, 33.534168, 52.137604>,  <42.991589, 33.906708, 51.838936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.591919, 33.534168, 52.137604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.685192, 33.540016, 51.748676>,  <43.741158, 33.543526, 51.515320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.685192, 33.540016, 51.748676>,  <43.591919, 33.534168, 52.137604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.685192, 33.540016, 51.748676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972348, 0.009637, 0.233338,
		0.012781, -0.999847, -0.011968,
		0.233187, 0.014620, -0.972322,
		43.755150, 33.544403, 51.456978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133636, 33.181076, 51.991047>,  <43.591919, 33.534168, 52.137604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133636, 33.181076, 51.991047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.185463, 33.399975, 51.660294>,  <44.216557, 33.531315, 51.461842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.185463, 33.399975, 51.660294>,  <44.133636, 33.181076, 51.991047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.185463, 33.399975, 51.660294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973668, 0.087534, 0.210494,
		0.187573, -0.832380, -0.521498,
		0.129562, 0.547249, -0.826881,
		44.224331, 33.564148, 51.412228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.709248, 32.877926, 51.804901>,  <44.133636, 33.181076, 51.991047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.709248, 32.877926, 51.804901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.654373, 33.210892, 51.590141>,  <44.621449, 33.410671, 51.461285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.654373, 33.210892, 51.590141>,  <44.709248, 32.877926, 51.804901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.654373, 33.210892, 51.590141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969323, 0.224414, 0.100256,
		0.203942, -0.506677, -0.837667,
		-0.137187, 0.832416, -0.536901,
		44.613216, 33.460617, 51.429070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.221107, 32.812592, 51.350243>,  <44.709248, 32.877926, 51.804901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.221107, 32.812592, 51.350243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.116421, 33.198608, 51.344585>,  <45.053608, 33.430218, 51.341190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.116421, 33.198608, 51.344585>,  <45.221107, 32.812592, 51.350243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.116421, 33.198608, 51.344585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965119, 0.261568, -0.011290,
		-0.007196, -0.016604, -0.999836,
		-0.261713, 0.965042, -0.014143,
		45.037907, 33.488121, 51.340343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.575474, 33.229980, 50.712162>,  <45.221107, 32.812592, 51.350243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.575474, 33.229980, 50.712162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.467842, 33.493202, 50.993462>,  <45.403263, 33.651134, 51.162243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.467842, 33.493202, 50.993462>,  <45.575474, 33.229980, 50.712162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.467842, 33.493202, 50.993462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946534, 0.315601, 0.066849,
		-0.177957, 0.683638, -0.707792,
		-0.269080, 0.658054, 0.703250,
		45.387119, 33.690617, 51.204437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.901695, 33.901108, 50.560150>,  <45.575474, 33.229980, 50.712162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.901695, 33.901108, 50.560150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.775455, 33.966644, 50.934006>,  <45.699711, 34.005966, 51.158321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.775455, 33.966644, 50.934006>,  <45.901695, 33.901108, 50.560150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.775455, 33.966644, 50.934006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792788, 0.586785, 0.164833,
		-0.521427, 0.792993, -0.315079,
		-0.315595, 0.163843, 0.934642,
		45.680779, 34.015797, 51.214397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.128288, 34.636349, 50.707184>,  <45.901695, 33.901108, 50.560150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.128288, 34.636349, 50.707184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.053600, 34.462330, 51.059517>,  <46.008789, 34.357918, 51.270916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.053600, 34.462330, 51.059517>,  <46.128288, 34.636349, 50.707184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.053600, 34.462330, 51.059517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838852, 0.396067, 0.373441,
		-0.511335, 0.808617, 0.290990,
		-0.186719, -0.435051, 0.880833,
		45.997585, 34.331814, 51.323769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.158188, 35.185886, 51.222115>,  <46.128288, 34.636349, 50.707184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.158188, 35.185886, 51.222115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.247643, 34.847527, 51.415791>,  <46.301315, 34.644512, 51.531998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.247643, 34.847527, 51.415791>,  <46.158188, 35.185886, 51.222115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.247643, 34.847527, 51.415791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873719, 0.394157, 0.285052,
		-0.431973, 0.359301, 0.827225,
		0.223637, -0.845898, 0.484194,
		46.314735, 34.593758, 51.561050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.498356, 35.408924, 51.842251>,  <46.158188, 35.185886, 51.222115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.498356, 35.408924, 51.842251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.633400, 35.041386, 51.760532>,  <46.714424, 34.820862, 51.711502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.633400, 35.041386, 51.760532>,  <46.498356, 35.408924, 51.842251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.633400, 35.041386, 51.760532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934858, 0.352631, -0.041128,
		0.109830, -0.177100, 0.978045,
		0.337606, -0.918851, -0.204293,
		46.734680, 34.765732, 51.699245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.098125, 35.268177, 52.313896>,  <46.498356, 35.408924, 51.842251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.098125, 35.268177, 52.313896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.120907, 34.997196, 52.020554>,  <47.134575, 34.834606, 51.844547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.120907, 34.997196, 52.020554>,  <47.098125, 35.268177, 52.313896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.120907, 34.997196, 52.020554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926494, 0.309540, -0.213995,
		0.371975, -0.667264, 0.645285,
		0.056950, -0.677454, -0.733358,
		47.137993, 34.793961, 51.800545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.734150, 35.078964, 52.413898>,  <47.098125, 35.268177, 52.313896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.734150, 35.078964, 52.413898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.651115, 34.970108, 52.038059>,  <47.601295, 34.904793, 51.812557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.651115, 34.970108, 52.038059>,  <47.734150, 35.078964, 52.413898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.651115, 34.970108, 52.038059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918685, 0.275729, -0.282829,
		0.336045, -0.921906, 0.192778,
		-0.207587, -0.272145, -0.939598,
		47.588840, 34.888466, 51.756180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.291456, 35.316498, 51.883183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.412760, 34.984146, 52.069801>,  <24.485542, 34.784733, 52.181774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.412760, 34.984146, 52.069801>,  <24.291456, 35.316498, 51.883183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.412760, 34.984146, 52.069801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949992, 0.225346, -0.216179,
		0.074484, 0.508779, 0.857669,
		0.303260, -0.830881, 0.466552,
		24.503738, 34.734882, 52.209766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.818947, 35.511215, 52.163361>,  <24.291456, 35.316498, 51.883183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.818947, 35.511215, 52.163361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.876549, 35.115864, 52.182861>,  <24.911110, 34.878654, 52.194561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.876549, 35.115864, 52.182861>,  <24.818947, 35.511215, 52.163361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.876549, 35.115864, 52.182861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898510, 0.109952, -0.424959,
		0.414658, 0.105002, 0.903899,
		0.144007, -0.988375, 0.048753,
		24.919750, 34.819351, 52.197487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.438707, 35.434319, 52.443600>,  <24.818947, 35.511215, 52.163361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.438707, 35.434319, 52.443600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.411003, 35.058571, 52.309265>,  <25.394381, 34.833122, 52.228664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.411003, 35.058571, 52.309265>,  <25.438707, 35.434319, 52.443600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.411003, 35.058571, 52.309265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942696, 0.048510, -0.330106,
		0.326383, -0.339456, 0.882181,
		-0.069262, -0.939370, -0.335837,
		25.390224, 34.776760, 52.208515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.055088, 35.121132, 52.626717>,  <25.438707, 35.434319, 52.443600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.055088, 35.121132, 52.626717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.934296, 34.871632, 52.338345>,  <25.861820, 34.721931, 52.165321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.934296, 34.871632, 52.338345>,  <26.055088, 35.121132, 52.626717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.934296, 34.871632, 52.338345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948613, -0.271622, -0.162342,
		-0.094559, -0.732907, 0.673726,
		-0.301980, -0.623754, -0.720929,
		25.843702, 34.684505, 52.122066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.508690, 34.556969, 52.670914>,  <26.055088, 35.121132, 52.626717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.508690, 34.556969, 52.670914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.368330, 34.505829, 52.299858>,  <26.284115, 34.475143, 52.077225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.368330, 34.505829, 52.299858>,  <26.508690, 34.556969, 52.670914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.368330, 34.505829, 52.299858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927430, -0.184334, -0.325414,
		-0.129392, -0.974513, 0.183256,
		-0.350900, -0.127852, -0.927644,
		26.263060, 34.467472, 52.021564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.805876, 33.932480, 52.426590>,  <26.508690, 34.556969, 52.670914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.805876, 33.932480, 52.426590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.707527, 34.114006, 52.083988>,  <26.648518, 34.222923, 51.878426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.707527, 34.114006, 52.083988>,  <26.805876, 33.932480, 52.426590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.707527, 34.114006, 52.083988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882570, -0.260532, -0.391399,
		-0.400769, -0.852159, -0.336466,
		-0.245874, 0.453815, -0.856503,
		26.633764, 34.250153, 51.827038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.081621, 33.468491, 51.869583>,  <26.805876, 33.932480, 52.426590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.081621, 33.468491, 51.869583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.047770, 33.824692, 51.690769>,  <27.027458, 34.038414, 51.583481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.047770, 33.824692, 51.690769>,  <27.081621, 33.468491, 51.869583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.047770, 33.824692, 51.690769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900387, -0.123818, -0.417100,
		-0.426781, -0.437803, -0.791320,
		-0.084628, 0.890504, -0.447035,
		27.022381, 34.091843, 51.556660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.523235, 33.386028, 51.253410>,  <27.081621, 33.468491, 51.869583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.523235, 33.386028, 51.253410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.436222, 33.775887, 51.232437>,  <27.384014, 34.009800, 51.219852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.436222, 33.775887, 51.232437>,  <27.523235, 33.386028, 51.253410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.436222, 33.775887, 51.232437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825700, 0.155108, -0.542367,
		-0.520481, -0.161279, -0.838504,
		-0.217531, 0.974644, -0.052437,
		27.370962, 34.068279, 51.216705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.659641, 33.571701, 50.532337>,  <27.523235, 33.386028, 51.253410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.659641, 33.571701, 50.532337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.706160, 33.897282, 50.760006>,  <27.734072, 34.092632, 50.896606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.706160, 33.897282, 50.760006>,  <27.659641, 33.571701, 50.532337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.706160, 33.897282, 50.760006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902743, 0.152334, -0.402305,
		-0.414161, 0.560601, -0.717075,
		0.116297, 0.813954, 0.569170,
		27.741049, 34.141468, 50.930756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.692558, 34.144138, 50.089825>,  <27.659641, 33.571701, 50.532337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.692558, 34.144138, 50.089825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.895012, 34.261005, 50.414410>,  <28.016483, 34.331127, 50.609161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.895012, 34.261005, 50.414410>,  <27.692558, 34.144138, 50.089825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.895012, 34.261005, 50.414410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774576, 0.259786, -0.576665,
		-0.379290, 0.920407, -0.094821,
		0.506133, 0.292169, 0.811459,
		28.046852, 34.348656, 50.657848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.196629, 34.546379, 49.817955>,  <27.692558, 34.144138, 50.089825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.196629, 34.546379, 49.817955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.325394, 34.524307, 50.196018>,  <28.402653, 34.511066, 50.422855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.325394, 34.524307, 50.196018>,  <28.196629, 34.546379, 49.817955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325394, 34.524307, 50.196018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939130, 0.145170, -0.311384,
		-0.120028, 0.987867, 0.098550,
		0.321912, -0.055177, 0.945160,
		28.421967, 34.507755, 50.479565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789581, 34.980522, 49.841278>,  <28.196629, 34.546379, 49.817955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789581, 34.980522, 49.841278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.824085, 34.750355, 50.166599>,  <28.844788, 34.612255, 50.361790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.824085, 34.750355, 50.166599>,  <28.789581, 34.980522, 49.841278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.824085, 34.750355, 50.166599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986442, -0.065065, -0.150659,
		0.139609, 0.815269, 0.562002,
		0.086261, -0.575416, 0.813299,
		28.849964, 34.577728, 50.410587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.460697, 35.233635, 50.169422>,  <28.789581, 34.980522, 49.841278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.460697, 35.233635, 50.169422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.371538, 34.858524, 50.275925>,  <29.318043, 34.633457, 50.339825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.371538, 34.858524, 50.275925>,  <29.460697, 35.233635, 50.169422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371538, 34.858524, 50.275925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944428, -0.275424, -0.179437,
		0.241605, 0.211463, 0.947053,
		-0.222897, -0.937777, 0.266256,
		29.304668, 34.577190, 50.355801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939598, 35.062382, 50.680954>,  <29.460697, 35.233635, 50.169422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939598, 35.062382, 50.680954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.810570, 34.705189, 50.555393>,  <29.733152, 34.490871, 50.480057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.810570, 34.705189, 50.555393>,  <29.939598, 35.062382, 50.680954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810570, 34.705189, 50.555393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944122, -0.279823, -0.174160,
		0.067685, -0.352539, 0.933346,
		-0.322570, -0.892981, -0.313900,
		29.713799, 34.437294, 50.461224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422079, 34.617489, 50.866165>,  <29.939598, 35.062382, 50.680954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422079, 34.617489, 50.866165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.239101, 34.370247, 50.610451>,  <30.129314, 34.221901, 50.457020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.239101, 34.370247, 50.610451>,  <30.422079, 34.617489, 50.866165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.239101, 34.370247, 50.610451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888997, -0.301116, -0.344982,
		0.020736, -0.726135, 0.687240,
		-0.457442, -0.618108, -0.639288,
		30.101870, 34.184814, 50.418663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.693714, 33.991665, 50.916286>,  <30.422079, 34.617489, 50.866165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.693714, 33.991665, 50.916286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.550644, 34.019333, 50.543774>,  <30.464802, 34.035934, 50.320267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.550644, 34.019333, 50.543774>,  <30.693714, 33.991665, 50.916286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550644, 34.019333, 50.543774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914785, -0.174507, -0.364301,
		-0.187712, -0.982224, -0.000856,
		-0.357676, 0.069167, -0.931281,
		30.443340, 34.040085, 50.264389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975485, 33.364716, 50.484047>,  <30.693714, 33.991665, 50.916286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975485, 33.364716, 50.484047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.845760, 33.642345, 50.226959>,  <30.767925, 33.808922, 50.072708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.845760, 33.642345, 50.226959>,  <30.975485, 33.364716, 50.484047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845760, 33.642345, 50.226959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839466, -0.102011, -0.533751,
		-0.436028, -0.712638, -0.549569,
		-0.324310, 0.694075, -0.642715,
		30.748466, 33.850567, 50.034145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133924, 33.121830, 49.843849>,  <30.975485, 33.364716, 50.484047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133924, 33.121830, 49.843849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.069956, 33.504501, 49.746536>,  <31.031574, 33.734104, 49.688148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.069956, 33.504501, 49.746536>,  <31.133924, 33.121830, 49.843849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.069956, 33.504501, 49.746536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777703, -0.029677, -0.627931,
		-0.607950, -0.289618, -0.739268,
		-0.159921, 0.956682, -0.243279,
		31.021980, 33.791508, 49.673553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189064, 33.309303, 49.038853>,  <31.133924, 33.121830, 49.843849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189064, 33.309303, 49.038853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.262840, 33.670147, 49.194889>,  <31.307106, 33.886654, 49.288513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.262840, 33.670147, 49.194889>,  <31.189064, 33.309303, 49.038853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262840, 33.670147, 49.194889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896760, 0.007975, -0.442446,
		-0.402247, 0.431426, -0.807508,
		0.184443, 0.902113, 0.390093,
		31.318172, 33.940781, 49.311916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439812, 33.791630, 48.505543>,  <31.189064, 33.309303, 49.038853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439812, 33.791630, 48.505543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.569126, 33.978024, 48.834988>,  <31.646715, 34.089859, 49.032654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.569126, 33.978024, 48.834988>,  <31.439812, 33.791630, 48.505543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569126, 33.978024, 48.834988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815087, 0.305043, -0.492526,
		-0.480748, 0.830546, -0.281202,
		0.323287, 0.465985, 0.823616,
		31.666113, 34.117821, 49.082073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770987, 34.399887, 48.184643>,  <31.439812, 33.791630, 48.505543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770987, 34.399887, 48.184643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.895185, 34.312298, 48.554646>,  <31.969706, 34.259743, 48.776649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.895185, 34.312298, 48.554646>,  <31.770987, 34.399887, 48.184643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895185, 34.312298, 48.554646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944384, -0.039812, -0.326425,
		0.108305, 0.974918, 0.194433,
		0.310497, -0.218973, 0.925010,
		31.988335, 34.246605, 48.832150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.772314, 34.666077, 34.566517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.520218, 34.832153, 34.828941>,  <24.368961, 34.931801, 34.986397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.520218, 34.832153, 34.828941>,  <24.772314, 34.666077, 34.566517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.520218, 34.832153, 34.828941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685165, -0.100011, 0.721489,
		0.365169, 0.904220, -0.221444,
		-0.630238, 0.415191, 0.656061,
		24.331146, 34.956711, 35.025761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.214413, 35.129597, 34.896664>,  <24.772314, 34.666077, 34.566517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.214413, 35.129597, 34.896664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.909933, 35.046413, 35.142372>,  <24.727245, 34.996506, 35.289799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.909933, 35.046413, 35.142372>,  <25.214413, 35.129597, 34.896664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.909933, 35.046413, 35.142372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645731, -0.155275, 0.747610,
		-0.060088, 0.965735, 0.252478,
		-0.761197, -0.207956, 0.614275,
		24.681574, 34.984028, 35.326656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.260603, 35.519897, 35.414154>,  <25.214413, 35.129597, 34.896664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.260603, 35.519897, 35.414154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.079731, 35.189896, 35.549740>,  <24.971209, 34.991894, 35.631092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.079731, 35.189896, 35.549740>,  <25.260603, 35.519897, 35.414154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.079731, 35.189896, 35.549740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707294, -0.100147, 0.699790,
		-0.543387, 0.556177, 0.628807,
		-0.452180, -0.825008, 0.338962,
		24.944077, 34.942394, 35.651428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.178904, 35.564068, 36.200668>,  <25.260603, 35.519897, 35.414154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.178904, 35.564068, 36.200668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.160282, 35.179066, 36.093765>,  <25.149109, 34.948067, 36.029625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.160282, 35.179066, 36.093765>,  <25.178904, 35.564068, 36.200668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.160282, 35.179066, 36.093765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593176, -0.241902, 0.767870,
		-0.803725, -0.122784, 0.582194,
		-0.046552, -0.962501, -0.267255,
		25.146317, 34.890316, 36.013588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.816700, 35.055069, 36.608562>,  <25.178904, 35.564068, 36.200668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.816700, 35.055069, 36.608562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.108650, 34.837452, 36.443008>,  <25.283821, 34.706882, 36.343674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.108650, 34.837452, 36.443008>,  <24.816700, 35.055069, 36.608562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.108650, 34.837452, 36.443008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339551, -0.236953, 0.910252,
		-0.593285, -0.804906, 0.011783,
		0.729875, -0.544040, -0.413887,
		25.327612, 34.674240, 36.318844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.118908, 34.610527, 37.167980>,  <24.816700, 35.055069, 36.608562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.118908, 34.610527, 37.167980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.367718, 34.502865, 36.873867>,  <25.517004, 34.438267, 36.697399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.367718, 34.502865, 36.873867>,  <25.118908, 34.610527, 37.167980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.367718, 34.502865, 36.873867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479842, -0.611026, 0.629603,
		-0.618743, -0.744446, -0.250914,
		0.622020, -0.269163, -0.735284,
		25.554325, 34.422119, 36.653282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.200413, 33.928715, 37.169815>,  <25.118908, 34.610527, 37.167980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.200413, 33.928715, 37.169815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.540884, 34.077335, 37.021523>,  <25.745167, 34.166508, 36.932549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.540884, 34.077335, 37.021523>,  <25.200413, 33.928715, 37.169815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.540884, 34.077335, 37.021523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517216, -0.473541, 0.712914,
		0.089329, -0.798566, -0.595241,
		0.851180, 0.371552, -0.370730,
		25.796238, 34.188801, 36.910305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.646664, 33.398991, 36.975883>,  <25.200413, 33.928715, 37.169815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.646664, 33.398991, 36.975883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.824869, 33.730465, 37.111408>,  <25.931793, 33.929352, 37.192722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.824869, 33.730465, 37.111408>,  <25.646664, 33.398991, 36.975883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.824869, 33.730465, 37.111408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474963, -0.539570, 0.695179,
		0.758899, -0.148789, -0.633983,
		0.445513, 0.828689, 0.338810,
		25.958523, 33.979073, 37.213051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.283115, 33.193130, 37.136787>,  <25.646664, 33.398991, 36.975883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.283115, 33.193130, 37.136787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.183010, 33.527718, 37.331799>,  <26.122946, 33.728470, 37.448807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.183010, 33.527718, 37.331799>,  <26.283115, 33.193130, 37.136787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.183010, 33.527718, 37.331799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350519, -0.391112, 0.850981,
		0.902499, 0.383859, -0.195317,
		-0.250266, 0.836471, 0.487528,
		26.107931, 33.778660, 37.478058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.828569, 33.405651, 37.525707>,  <26.283115, 33.193130, 37.136787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.828569, 33.405651, 37.525707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.522367, 33.540142, 37.745144>,  <26.338646, 33.620838, 37.876804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.522367, 33.540142, 37.745144>,  <26.828569, 33.405651, 37.525707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.522367, 33.540142, 37.745144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389740, -0.436093, 0.811126,
		0.511961, 0.834729, 0.202790,
		-0.765506, 0.336230, 0.548590,
		26.292715, 33.641010, 37.909721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.932058, 33.901688, 38.157715>,  <26.828569, 33.405651, 37.525707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.932058, 33.901688, 38.157715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.611959, 33.676205, 38.239532>,  <26.419899, 33.540916, 38.288624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.611959, 33.676205, 38.239532>,  <26.932058, 33.901688, 38.157715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.611959, 33.676205, 38.239532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426697, -0.295609, 0.854719,
		-0.421345, 0.771266, 0.477093,
		-0.800249, -0.563705, 0.204544,
		26.371885, 33.507092, 38.300896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.726181, 34.046997, 38.790752>,  <26.932058, 33.901688, 38.157715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.726181, 34.046997, 38.790752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.607584, 33.671413, 38.720951>,  <26.536425, 33.446064, 38.679070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.607584, 33.671413, 38.720951>,  <26.726181, 34.046997, 38.790752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.607584, 33.671413, 38.720951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447724, -0.298051, 0.843035,
		-0.843584, 0.171828, 0.508764,
		-0.296495, -0.938957, -0.174500,
		26.518635, 33.389725, 38.668602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.426804, 33.758839, 39.459488>,  <26.726181, 34.046997, 38.790752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.426804, 33.758839, 39.459488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.565735, 33.482533, 39.205807>,  <26.649094, 33.316750, 39.053596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.565735, 33.482533, 39.205807>,  <26.426804, 33.758839, 39.459488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.565735, 33.482533, 39.205807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537505, -0.407531, 0.738246,
		-0.768409, -0.597300, 0.229741,
		0.347328, -0.690762, -0.634201,
		26.669933, 33.275303, 39.015545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.420462, 32.993790, 39.716618>,  <26.426804, 33.758839, 39.459488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.420462, 32.993790, 39.716618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.719320, 33.072868, 39.462788>,  <26.898636, 33.120316, 39.310490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.719320, 33.072868, 39.462788>,  <26.420462, 32.993790, 39.716618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.719320, 33.072868, 39.462788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618346, -0.556889, 0.554547,
		-0.243756, -0.806716, -0.538324,
		0.747149, 0.197697, -0.634575,
		26.943464, 33.132175, 39.272415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.665293, 32.396832, 39.348267>,  <26.420462, 32.993790, 39.716618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.665293, 32.396832, 39.348267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.973143, 32.638252, 39.431602>,  <27.157852, 32.783104, 39.481606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.973143, 32.638252, 39.431602>,  <26.665293, 32.396832, 39.348267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.973143, 32.638252, 39.431602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397623, -0.708353, 0.583208,
		0.499572, -0.366012, -0.785151,
		0.769626, 0.603549, 0.208339,
		27.204031, 32.819317, 39.494102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258055, 32.023411, 39.413631>,  <26.665293, 32.396832, 39.348267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.258055, 32.023411, 39.413631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.326172, 32.340355, 39.647953>,  <27.367043, 32.530521, 39.788548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.326172, 32.340355, 39.647953>,  <27.258055, 32.023411, 39.413631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326172, 32.340355, 39.647953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277382, -0.608996, 0.743090,
		0.945547, 0.035950, -0.323494,
		0.170292, 0.792358, 0.585806,
		27.377260, 32.578064, 39.823696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.030991, 32.100445, 39.743931>,  <27.258055, 32.023411, 39.413631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.030991, 32.100445, 39.743931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.750847, 32.242687, 39.991493>,  <27.582760, 32.328033, 40.140030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.750847, 32.242687, 39.991493>,  <28.030991, 32.100445, 39.743931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.750847, 32.242687, 39.991493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510885, -0.355808, 0.782558,
		0.498490, 0.864262, 0.067522,
		-0.700360, 0.355602, 0.618905,
		27.540739, 32.349369, 40.177166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384775, 32.324070, 40.308510>,  <28.030991, 32.100445, 39.743931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384775, 32.324070, 40.308510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.011681, 32.239643, 40.425438>,  <27.787825, 32.188988, 40.495594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.011681, 32.239643, 40.425438>,  <28.384775, 32.324070, 40.308510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.011681, 32.239643, 40.425438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344832, -0.285370, 0.894234,
		-0.105320, 0.934888, 0.338957,
		-0.932737, -0.211064, 0.292325,
		27.731859, 32.176323, 40.513134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427088, 32.569893, 40.887104>,  <28.384775, 32.324070, 40.308510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.427088, 32.569893, 40.887104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.169811, 32.263710, 40.879364>,  <28.015446, 32.079998, 40.874722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.169811, 32.263710, 40.879364>,  <28.427088, 32.569893, 40.887104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.169811, 32.263710, 40.879364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422583, -0.375929, 0.824683,
		-0.638538, 0.522251, 0.565265,
		-0.643190, -0.765462, -0.019351,
		27.976854, 32.034073, 40.873558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.959051, 32.544636, 41.544758>,  <28.427088, 32.569893, 40.887104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.959051, 32.544636, 41.544758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.000277, 32.171780, 41.405914>,  <28.025011, 31.948065, 41.322609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.000277, 32.171780, 41.405914>,  <27.959051, 32.544636, 41.544758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.000277, 32.171780, 41.405914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242426, -0.314906, 0.917640,
		-0.964680, -0.178723, 0.193521,
		0.103062, -0.932144, -0.347111,
		28.031195, 31.892136, 41.301781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304291, 33.047752, 41.628246>,  <27.959051, 32.544636, 41.544758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.304291, 33.047752, 41.628246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.128239, 33.248711, 41.925941>,  <27.022608, 33.369286, 42.104557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.128239, 33.248711, 41.925941>,  <27.304291, 33.047752, 41.628246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.128239, 33.248711, 41.925941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676035, -0.360103, 0.642886,
		0.590985, 0.786080, -0.181147,
		-0.440128, 0.502398, 0.744233,
		26.996201, 33.399429, 42.149212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.715094, 33.632706, 41.853668>,  <27.304291, 33.047752, 41.628246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.715094, 33.632706, 41.853668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.479137, 33.506760, 42.151096>,  <27.337564, 33.431194, 42.329552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.479137, 33.506760, 42.151096>,  <27.715094, 33.632706, 41.853668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.479137, 33.506760, 42.151096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723733, 0.202221, 0.659786,
		-0.358107, 0.927345, 0.108588,
		-0.589890, -0.314862, 0.743566,
		27.302170, 33.412300, 42.374165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.699944, 34.148926, 42.329594>,  <27.715094, 33.632706, 41.853668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.699944, 34.148926, 42.329594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.607533, 33.801674, 42.505310>,  <27.552086, 33.593323, 42.610741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.607533, 33.801674, 42.505310>,  <27.699944, 34.148926, 42.329594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.607533, 33.801674, 42.505310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681183, 0.178062, 0.710129,
		-0.694707, 0.463294, 0.550219,
		-0.231026, -0.868131, 0.439289,
		27.538225, 33.541233, 42.637096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.370834, 34.208916, 43.021397>,  <27.699944, 34.148926, 42.329594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.370834, 34.208916, 43.021397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.595823, 33.879089, 42.997013>,  <27.730818, 33.681194, 42.982384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.595823, 33.879089, 42.997013>,  <27.370834, 34.208916, 43.021397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.595823, 33.879089, 42.997013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597885, 0.354705, 0.718831,
		-0.571101, -0.440768, 0.692507,
		0.562474, -0.824565, -0.060956,
		27.764565, 33.631721, 42.978725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.461323, 33.820774, 43.709278>,  <27.370834, 34.208916, 43.021397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.461323, 33.820774, 43.709278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.727510, 33.838333, 43.411224>,  <27.887224, 33.848869, 43.232391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.727510, 33.838333, 43.411224>,  <27.461323, 33.820774, 43.709278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727510, 33.838333, 43.411224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692308, 0.336877, 0.638141,
		0.279031, -0.940525, 0.193791,
		0.665471, 0.043898, -0.745132,
		27.927151, 33.851501, 43.187683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.027340, 33.394333, 43.835445>,  <27.461323, 33.820774, 43.709278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.027340, 33.394333, 43.835445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.128279, 33.696033, 43.592979>,  <28.188841, 33.877052, 43.447502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.128279, 33.696033, 43.592979>,  <28.027340, 33.394333, 43.835445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.128279, 33.696033, 43.592979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622634, 0.352958, 0.698389,
		0.740708, -0.553652, -0.380553,
		0.252345, 0.754248, -0.606161,
		28.203981, 33.922306, 43.411133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743803, 33.411594, 43.659554>,  <28.027340, 33.394333, 43.835445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743803, 33.411594, 43.659554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.552805, 33.762093, 43.685459>,  <28.438206, 33.972389, 43.701004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.552805, 33.762093, 43.685459>,  <28.743803, 33.411594, 43.659554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552805, 33.762093, 43.685459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638421, 0.295364, 0.710759,
		0.603668, 0.380733, -0.700448,
		-0.477497, 0.876243, 0.064766,
		28.409555, 34.024967, 43.704887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.406599, 33.415493, 43.925526>,  <28.743803, 33.411594, 43.659554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.406599, 33.415493, 43.925526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.713303, 33.158802, 43.932129>,  <29.897326, 33.004787, 43.936089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.713303, 33.158802, 43.932129>,  <29.406599, 33.415493, 43.925526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713303, 33.158802, 43.932129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602317, 0.710306, -0.364252,
		0.222026, 0.289234, 0.931154,
		0.766759, -0.641723, 0.016504,
		29.943331, 32.966286, 43.937080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019320, 33.785583, 44.006275>,  <29.406599, 33.415493, 43.925526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019320, 33.785583, 44.006275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.167595, 33.447468, 43.852352>,  <30.256561, 33.244598, 43.759998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.167595, 33.447468, 43.852352>,  <30.019320, 33.785583, 44.006275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167595, 33.447468, 43.852352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781296, 0.507828, -0.362886,
		0.502160, -0.166132, 0.848666,
		0.370690, -0.845287, -0.384810,
		30.278801, 33.193882, 43.736908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735750, 33.681183, 44.322601>,  <30.019320, 33.785583, 44.006275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735750, 33.681183, 44.322601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.655775, 33.557701, 43.950638>,  <30.607790, 33.483612, 43.727459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.655775, 33.557701, 43.950638>,  <30.735750, 33.681183, 44.322601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.655775, 33.557701, 43.950638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700337, 0.618715, -0.355977,
		0.685239, -0.722421, 0.092494,
		-0.199938, -0.308707, -0.929906,
		30.595793, 33.465088, 43.671665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093145, 34.037685, 44.944386>,  <30.735750, 33.681183, 44.322601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093145, 34.037685, 44.944386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.273848, 33.862278, 44.633614>,  <31.382269, 33.757034, 44.447151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.273848, 33.862278, 44.633614>,  <31.093145, 34.037685, 44.944386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273848, 33.862278, 44.633614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859623, -0.019025, 0.510575,
		-0.238675, -0.898523, 0.368362,
		0.451756, -0.438514, -0.776931,
		31.409374, 33.730724, 44.400536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372112, 33.310711, 45.111118>,  <31.093145, 34.037685, 44.944386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372112, 33.310711, 45.111118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.546816, 33.565308, 44.856838>,  <31.651638, 33.718067, 44.704269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.546816, 33.565308, 44.856838>,  <31.372112, 33.310711, 45.111118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546816, 33.565308, 44.856838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660795, 0.252505, 0.706818,
		0.610403, -0.728778, -0.310308,
		0.436759, 0.636493, -0.635703,
		31.677843, 33.756256, 44.666126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081387, 33.148148, 45.042099>,  <31.372112, 33.310711, 45.111118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081387, 33.148148, 45.042099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.039948, 33.541218, 44.980633>,  <32.015083, 33.777061, 44.943752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.039948, 33.541218, 44.980633>,  <32.081387, 33.148148, 45.042099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039948, 33.541218, 44.980633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592252, 0.185070, 0.784211,
		0.799065, -0.009762, -0.601166,
		-0.103602, 0.982677, -0.153665,
		32.008865, 33.836021, 44.934532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711891, 33.509220, 45.129467>,  <32.081387, 33.148148, 45.042099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711891, 33.509220, 45.129467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.397514, 33.739697, 45.219177>,  <32.208889, 33.877983, 45.273003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.397514, 33.739697, 45.219177>,  <32.711891, 33.509220, 45.129467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397514, 33.739697, 45.219177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461331, 0.304962, 0.833170,
		0.411673, 0.758286, -0.505498,
		-0.785938, 0.576195, 0.224276,
		32.161732, 33.912556, 45.286461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858204, 34.308109, 45.189106>,  <32.711891, 33.509220, 45.129467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858204, 34.308109, 45.189106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.558033, 34.185181, 45.423168>,  <32.377930, 34.111423, 45.563606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.558033, 34.185181, 45.423168>,  <32.858204, 34.308109, 45.189106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558033, 34.185181, 45.423168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496828, 0.321599, 0.806062,
		-0.435906, 0.895615, -0.088651,
		-0.750432, -0.307323, 0.585154,
		32.332905, 34.092983, 45.598713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536732, 34.823715, 45.512897>,  <32.858204, 34.308109, 45.189106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536732, 34.823715, 45.512897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.472004, 34.508186, 45.750072>,  <32.433167, 34.318867, 45.892376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.472004, 34.508186, 45.750072>,  <32.536732, 34.823715, 45.512897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472004, 34.508186, 45.750072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589852, 0.404383, 0.698963,
		-0.791131, 0.462850, 0.399852,
		-0.161822, -0.788824, 0.592933,
		32.423458, 34.271538, 45.927952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504261, 34.985733, 46.215015>,  <32.536732, 34.823715, 45.512897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504261, 34.985733, 46.215015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.597424, 34.597134, 46.232639>,  <32.653320, 34.363972, 46.243214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.597424, 34.597134, 46.232639>,  <32.504261, 34.985733, 46.215015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597424, 34.597134, 46.232639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661698, 0.191511, 0.724899,
		-0.712680, -0.139673, 0.687444,
		0.232902, -0.971502, 0.044064,
		32.667294, 34.305683, 46.245857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442242, 34.777996, 46.966793>,  <32.504261, 34.985733, 46.215015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442242, 34.777996, 46.966793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.733322, 34.609356, 46.750385>,  <32.907970, 34.508171, 46.620541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.733322, 34.609356, 46.750385>,  <32.442242, 34.777996, 46.966793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733322, 34.609356, 46.750385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673851, 0.292284, 0.678598,
		-0.127963, -0.858386, 0.496789,
		0.727702, -0.421597, -0.541022,
		32.951633, 34.482876, 46.588078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873627, 34.701141, 47.484089>,  <32.442242, 34.777996, 46.966793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873627, 34.701141, 47.484089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.942402, 34.564808, 47.853794>,  <32.983669, 34.483009, 48.075619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.942402, 34.564808, 47.853794>,  <32.873627, 34.701141, 47.484089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942402, 34.564808, 47.853794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702719, -0.699969, -0.127393,
		0.690378, -0.627596, -0.359862,
		0.171941, -0.340832, 0.924267,
		32.993984, 34.462559, 48.131073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461910, 34.675869, 48.130402>,  <32.873627, 34.701141, 47.484089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461910, 34.675869, 48.130402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.471027, 34.465618, 48.470566>,  <32.476498, 34.339466, 48.674664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.471027, 34.465618, 48.470566>,  <32.461910, 34.675869, 48.130402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471027, 34.465618, 48.470566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999740, 0.011043, -0.019966,
		0.001104, 0.850644, 0.525741,
		0.022789, -0.525626, 0.850410,
		32.477863, 34.307930, 48.725689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023968, 35.056213, 48.497196>,  <32.461910, 34.675869, 48.130402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023968, 35.056213, 48.497196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.959042, 34.692696, 48.650951>,  <32.920086, 34.474586, 48.743206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.959042, 34.692696, 48.650951>,  <33.023968, 35.056213, 48.497196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959042, 34.692696, 48.650951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984523, -0.175250, 0.001399,
		0.066093, 0.378666, 0.923170,
		-0.162315, -0.908790, 0.384388,
		32.910347, 34.420059, 48.766270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528763, 35.008286, 48.994114>,  <33.023968, 35.056213, 48.497196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528763, 35.008286, 48.994114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.411919, 34.629326, 48.941792>,  <33.341812, 34.401951, 48.910397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.411919, 34.629326, 48.941792>,  <33.528763, 35.008286, 48.994114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411919, 34.629326, 48.941792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952329, -0.300719, 0.051351,
		-0.087987, -0.109573, 0.990077,
		-0.292108, -0.947397, -0.130809,
		33.324287, 34.345108, 48.902550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823788, 34.597595, 49.510334>,  <33.528763, 35.008286, 48.994114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823788, 34.597595, 49.510334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.749874, 34.338829, 49.214397>,  <33.705528, 34.183571, 49.036835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.749874, 34.338829, 49.214397>,  <33.823788, 34.597595, 49.510334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749874, 34.338829, 49.214397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976959, -0.202721, -0.066745,
		-0.106803, -0.735124, 0.669467,
		-0.184780, -0.646913, -0.739837,
		33.694439, 34.144756, 48.992447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260273, 34.130379, 49.551167>,  <33.823788, 34.597595, 49.510334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260273, 34.130379, 49.551167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.168484, 34.091267, 49.163811>,  <34.113411, 34.067799, 48.931396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.168484, 34.091267, 49.163811>,  <34.260273, 34.130379, 49.551167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168484, 34.091267, 49.163811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964274, -0.158136, -0.212531,
		-0.132356, -0.982564, 0.130576,
		-0.229474, -0.097782, -0.968391,
		34.099640, 34.061932, 48.873295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605679, 33.542351, 49.327866>,  <34.260273, 34.130379, 49.551167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605679, 33.542351, 49.327866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.521774, 33.724289, 48.981659>,  <34.471432, 33.833450, 48.773937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.521774, 33.724289, 48.981659>,  <34.605679, 33.542351, 49.327866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521774, 33.724289, 48.981659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930698, -0.178418, -0.319324,
		-0.299666, -0.872516, -0.385897,
		-0.209765, 0.454844, -0.865515,
		34.458843, 33.860741, 48.722004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940628, 33.141491, 48.836746>,  <34.605679, 33.542351, 49.327866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940628, 33.141491, 48.836746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.885254, 33.491024, 48.650303>,  <34.852028, 33.700745, 48.538437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.885254, 33.491024, 48.650303>,  <34.940628, 33.141491, 48.836746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885254, 33.491024, 48.650303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917230, -0.064378, -0.393121,
		-0.373528, -0.481951, -0.792591,
		-0.138439, 0.873830, -0.466107,
		34.843723, 33.753174, 48.510471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202137, 33.093975, 48.192680>,  <34.940628, 33.141491, 48.836746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202137, 33.093975, 48.192680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.208626, 33.490318, 48.246246>,  <35.212521, 33.728123, 48.278385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.208626, 33.490318, 48.246246>,  <35.202137, 33.093975, 48.192680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208626, 33.490318, 48.246246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883667, 0.048459, -0.465602,
		-0.467835, 0.125894, -0.874803,
		0.016225, 0.990859, 0.133919,
		35.213493, 33.787575, 48.286423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463718, 33.353611, 47.587578>,  <35.202137, 33.093975, 48.192680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463718, 33.353611, 47.587578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.500206, 33.657986, 47.844528>,  <35.522099, 33.840611, 47.998699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.500206, 33.657986, 47.844528>,  <35.463718, 33.353611, 47.587578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500206, 33.657986, 47.844528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855875, 0.269855, -0.441199,
		-0.509075, 0.590041, -0.626653,
		0.091220, 0.760940, 0.642377,
		35.527573, 33.886269, 48.037243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532837, 33.963493, 47.184357>,  <35.463718, 33.353611, 47.587578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532837, 33.963493, 47.184357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.700409, 34.010612, 47.544495>,  <35.800953, 34.038883, 47.760578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.700409, 34.010612, 47.544495>,  <35.532837, 33.963493, 47.184357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700409, 34.010612, 47.544495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870632, 0.229484, -0.435129,
		-0.257872, 0.966158, -0.006419,
		0.418930, 0.117796, 0.900345,
		35.826088, 34.045952, 47.814598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961712, 34.496304, 47.126240>,  <35.532837, 33.963493, 47.184357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961712, 34.496304, 47.126240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.130070, 34.364902, 47.464455>,  <36.231087, 34.286060, 47.667381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.130070, 34.364902, 47.464455>,  <35.961712, 34.496304, 47.126240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130070, 34.364902, 47.464455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895616, 0.298398, -0.329896,
		-0.143933, 0.896126, 0.419810,
		0.420899, -0.328506, 0.845534,
		36.256340, 34.266350, 47.718117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425735, 35.028667, 47.454430>,  <35.961712, 34.496304, 47.126240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425735, 35.028667, 47.454430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.566803, 34.679153, 47.588371>,  <36.651443, 34.469444, 47.668736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.566803, 34.679153, 47.588371>,  <36.425735, 35.028667, 47.454430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566803, 34.679153, 47.588371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919859, 0.258066, -0.295400,
		0.171702, 0.412196, 0.894770,
		0.352672, -0.873783, 0.334851,
		36.672604, 34.417019, 47.688828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001942, 35.123215, 47.855370>,  <36.425735, 35.028667, 47.454430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001942, 35.123215, 47.855370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.054916, 34.740185, 47.752995>,  <37.086700, 34.510365, 47.691570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.054916, 34.740185, 47.752995>,  <37.001942, 35.123215, 47.855370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054916, 34.740185, 47.752995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901334, 0.223776, -0.370839,
		0.412381, -0.181577, 0.892733,
		0.132436, -0.957577, -0.255942,
		37.094646, 34.452911, 47.676212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581188, 35.008522, 48.208782>,  <37.001942, 35.123215, 47.855370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581188, 35.008522, 48.208782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.585896, 34.712372, 47.939945>,  <37.588718, 34.534683, 47.778645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.585896, 34.712372, 47.939945>,  <37.581188, 35.008522, 48.208782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585896, 34.712372, 47.939945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938151, 0.240769, -0.248802,
		0.346025, -0.627596, 0.697416,
		0.011769, -0.740374, -0.672092,
		37.589428, 34.490261, 47.738316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168003, 34.700806, 48.354324>,  <37.581188, 35.008522, 48.208782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168003, 34.700806, 48.354324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.079136, 34.578701, 47.983929>,  <38.025818, 34.505436, 47.761692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.079136, 34.578701, 47.983929>,  <38.168003, 34.700806, 48.354324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079136, 34.578701, 47.983929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908317, 0.280414, -0.310367,
		0.354405, -0.910044, 0.214980,
		-0.222165, -0.305266, -0.925989,
		38.012486, 34.487122, 47.706131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820320, 34.356762, 48.036560>,  <38.168003, 34.700806, 48.354324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820320, 34.356762, 48.036560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.192017, 34.500996, 48.004341>,  <39.415035, 34.587536, 47.985008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.192017, 34.500996, 48.004341>,  <38.820320, 34.356762, 48.036560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192017, 34.500996, 48.004341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241152, -0.426744, 0.871628,
		0.279926, -0.829376, -0.483505,
		0.929241, 0.360589, -0.080549,
		39.470787, 34.609173, 47.980175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088234, 34.026913, 48.657883>,  <38.820320, 34.356762, 48.036560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088234, 34.026913, 48.657883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.463940, 33.892773, 48.628685>,  <39.689362, 33.812286, 48.611168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.463940, 33.892773, 48.628685>,  <39.088234, 34.026913, 48.657883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463940, 33.892773, 48.628685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183305, -0.669985, 0.719388,
		-0.290153, -0.662313, -0.690762,
		0.939260, -0.335353, -0.072993,
		39.745716, 33.792168, 48.606789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023739, 33.284931, 48.581409>,  <39.088234, 34.026913, 48.657883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023739, 33.284931, 48.581409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.373474, 33.388958, 48.745312>,  <39.583317, 33.451374, 48.843655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.373474, 33.388958, 48.745312>,  <39.023739, 33.284931, 48.581409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373474, 33.388958, 48.745312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116671, -0.706905, 0.697620,
		0.471088, -0.657761, -0.587730,
		0.874337, 0.260069, 0.409756,
		39.635777, 33.466980, 48.868237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485878, 32.619926, 48.688644>,  <39.023739, 33.284931, 48.581409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485878, 32.619926, 48.688644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.578144, 32.919411, 48.937233>,  <39.633503, 33.099102, 49.086388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.578144, 32.919411, 48.937233>,  <39.485878, 32.619926, 48.688644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578144, 32.919411, 48.937233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219806, -0.582095, 0.782848,
		0.947881, -0.317181, 0.030300,
		0.230667, 0.748706, 0.621475,
		39.647343, 33.144024, 49.123676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680485, 31.899567, 48.608776>,  <39.485878, 32.619926, 48.688644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680485, 31.899567, 48.608776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.295143, 31.793905, 48.590115>,  <39.063938, 31.730509, 48.578918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.295143, 31.793905, 48.590115>,  <39.680485, 31.899567, 48.608776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295143, 31.793905, 48.590115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144010, -0.656047, 0.740853,
		-0.226306, 0.706984, 0.670044,
		-0.963352, -0.264153, -0.046655,
		39.006138, 31.714659, 48.576118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437897, 31.839685, 49.319218>,  <39.680485, 31.899567, 48.608776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437897, 31.839685, 49.319218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.222908, 31.617992, 49.064987>,  <39.093914, 31.484976, 48.912449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.222908, 31.617992, 49.064987>,  <39.437897, 31.839685, 49.319218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222908, 31.617992, 49.064987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056277, -0.775583, 0.628732,
		-0.841404, 0.302155, 0.448042,
		-0.537468, -0.554232, -0.635575,
		39.061668, 31.451723, 48.874313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355648, 32.010471, 50.115505>,  <39.437897, 31.839685, 49.319218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355648, 32.010471, 50.115505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.032028, 32.225090, 50.019539>,  <38.837856, 32.353863, 49.961960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.032028, 32.225090, 50.019539>,  <39.355648, 32.010471, 50.115505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032028, 32.225090, 50.019539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436509, -0.275179, 0.856585,
		0.393577, 0.797744, 0.456840,
		-0.809048, 0.536546, -0.239918,
		38.789314, 32.386055, 49.947563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188671, 32.510731, 50.619934>,  <39.355648, 32.010471, 50.115505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188671, 32.510731, 50.619934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.838470, 32.470596, 50.430859>,  <38.628349, 32.446518, 50.317413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.838470, 32.470596, 50.430859>,  <39.188671, 32.510731, 50.619934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838470, 32.470596, 50.430859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468886, -0.060085, 0.881212,
		-0.116816, 0.993138, 0.005560,
		-0.875500, -0.100333, -0.472688,
		38.575821, 32.440498, 50.289051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758160, 32.969975, 50.930798>,  <39.188671, 32.510731, 50.619934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758160, 32.969975, 50.930798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.511539, 32.709465, 50.753841>,  <38.363567, 32.553162, 50.647667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.511539, 32.709465, 50.753841>,  <38.758160, 32.969975, 50.930798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511539, 32.709465, 50.753841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534303, -0.066580, 0.842667,
		-0.578258, 0.755920, -0.306925,
		-0.616553, -0.651269, -0.442391,
		38.326572, 32.514084, 50.621124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148273, 33.251152, 51.131847>,  <38.758160, 32.969975, 50.930798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148273, 33.251152, 51.131847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.072769, 32.875759, 51.016186>,  <38.027466, 32.650520, 50.946789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.072769, 32.875759, 51.016186>,  <38.148273, 33.251152, 51.131847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072769, 32.875759, 51.016186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490648, -0.164931, 0.855606,
		-0.850666, 0.303381, -0.429333,
		-0.188764, -0.938487, -0.289155,
		38.016140, 32.594212, 50.929440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472282, 33.060326, 51.413971>,  <38.148273, 33.251152, 51.131847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472282, 33.060326, 51.413971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.625191, 32.696831, 51.346954>,  <37.716938, 32.478733, 51.306747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.625191, 32.696831, 51.346954>,  <37.472282, 33.060326, 51.413971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625191, 32.696831, 51.346954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373566, -0.317812, 0.871461,
		-0.845171, -0.270551, -0.460964,
		0.382274, -0.908734, -0.167537,
		37.739872, 32.424210, 51.296692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908527, 32.569313, 51.523300>,  <37.472282, 33.060326, 51.413971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908527, 32.569313, 51.523300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.209507, 32.311745, 51.578701>,  <37.390095, 32.157204, 51.611942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.209507, 32.311745, 51.578701>,  <36.908527, 32.569313, 51.523300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209507, 32.311745, 51.578701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352163, -0.215617, 0.910764,
		-0.556600, -0.734078, -0.389007,
		0.752448, -0.643925, 0.138503,
		37.435242, 32.118568, 51.620251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626595, 31.851240, 51.684299>,  <36.908527, 32.569313, 51.523300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626595, 31.851240, 51.684299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.995052, 31.875143, 51.838146>,  <37.216125, 31.889484, 51.930454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.995052, 31.875143, 51.838146>,  <36.626595, 31.851240, 51.684299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995052, 31.875143, 51.838146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368935, -0.180842, 0.911692,
		0.124036, -0.981695, -0.144534,
		0.921141, 0.059759, 0.384613,
		37.271397, 31.893070, 51.953529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410439, 31.546219, 52.340515>,  <36.626595, 31.851240, 51.684299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410439, 31.546219, 52.340515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.779217, 31.682875, 52.413506>,  <37.000484, 31.764868, 52.457298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.779217, 31.682875, 52.413506>,  <36.410439, 31.546219, 52.340515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779217, 31.682875, 52.413506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229674, 0.102868, 0.967816,
		0.311871, -0.934185, 0.173304,
		0.921947, 0.341638, 0.182477,
		37.055801, 31.785366, 52.468250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575844, 31.224272, 53.023006>,  <36.410439, 31.546219, 52.340515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575844, 31.224272, 53.023006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.830437, 31.527559, 52.966446>,  <36.983192, 31.709532, 52.932510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.830437, 31.527559, 52.966446>,  <36.575844, 31.224272, 53.023006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830437, 31.527559, 52.966446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109414, 0.270237, 0.956557,
		0.763489, -0.593362, 0.254961,
		0.636485, 0.758217, -0.141401,
		37.021381, 31.755024, 52.924026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063282, 31.155733, 53.575516>,  <36.575844, 31.224272, 53.023006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063282, 31.155733, 53.575516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.080269, 31.537775, 53.458233>,  <37.090462, 31.767000, 53.387863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.080269, 31.537775, 53.458233>,  <37.063282, 31.155733, 53.575516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080269, 31.537775, 53.458233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044942, 0.291344, 0.955562,
		0.998087, -0.053754, -0.030553,
		0.042464, 0.955107, -0.293202,
		37.093006, 31.824306, 53.370274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482788, 31.382444, 54.088039>,  <37.063282, 31.155733, 53.575516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482788, 31.382444, 54.088039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.294418, 31.700525, 53.935261>,  <37.181396, 31.891375, 53.843594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.294418, 31.700525, 53.935261>,  <37.482788, 31.382444, 54.088039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294418, 31.700525, 53.935261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196390, 0.327592, 0.924183,
		0.860035, 0.510232, 0.001898,
		-0.470926, 0.795202, -0.381945,
		37.153141, 31.939087, 53.820679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835049, 31.876003, 54.430115>,  <37.482788, 31.382444, 54.088039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835049, 31.876003, 54.430115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.500690, 32.053825, 54.301334>,  <37.300076, 32.160519, 54.224068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.500690, 32.053825, 54.301334>,  <37.835049, 31.876003, 54.430115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500690, 32.053825, 54.301334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102525, 0.449764, 0.887244,
		0.539229, 0.774651, -0.330377,
		-0.835895, 0.444555, -0.321947,
		37.249924, 32.187191, 54.204750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963974, 32.631836, 54.405514>,  <37.835049, 31.876003, 54.430115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963974, 32.631836, 54.405514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.580090, 32.524418, 54.438587>,  <37.349758, 32.459969, 54.458431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.580090, 32.524418, 54.438587>,  <37.963974, 32.631836, 54.405514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580090, 32.524418, 54.438587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027092, 0.381321, 0.924046,
		-0.279675, 0.884578, -0.373233,
		-0.959713, -0.268544, 0.082681,
		37.292175, 32.443855, 54.463390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963558, 32.960823, 54.894604>,  <37.963974, 32.631836, 54.405514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963558, 32.960823, 54.894604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.607471, 32.779877, 54.873154>,  <37.393818, 32.671307, 54.860283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.607471, 32.779877, 54.873154>,  <37.963558, 32.960823, 54.894604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607471, 32.779877, 54.873154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285887, 0.463146, 0.838907,
		-0.354659, 0.762140, -0.541627,
		-0.890217, -0.452370, -0.053627,
		37.340408, 32.644165, 54.857067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425499, 33.509075, 54.786964>,  <37.963558, 32.960823, 54.894604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425499, 33.509075, 54.786964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.258690, 33.186745, 54.955124>,  <37.158604, 32.993347, 55.056019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.258690, 33.186745, 54.955124>,  <37.425499, 33.509075, 54.786964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258690, 33.186745, 54.955124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441381, 0.583883, 0.681368,
		-0.794528, 0.098591, -0.599170,
		-0.417022, -0.805829, 0.420395,
		37.133583, 32.944996, 55.081242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795525, 33.713116, 54.859211>,  <37.425499, 33.509075, 54.786964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795525, 33.713116, 54.859211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.857582, 33.409664, 55.112324>,  <36.894817, 33.227592, 55.264191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.857582, 33.409664, 55.112324>,  <36.795525, 33.713116, 54.859211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857582, 33.409664, 55.112324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442344, 0.519391, 0.731140,
		-0.883325, -0.393340, -0.254993,
		0.155145, -0.758628, 0.632782,
		36.904125, 33.182076, 55.302158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117924, 33.623867, 55.096786>,  <36.795525, 33.713116, 54.859211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117924, 33.623867, 55.096786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.367485, 33.431347, 55.343067>,  <36.517223, 33.315834, 55.490837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.367485, 33.431347, 55.343067>,  <36.117924, 33.623867, 55.096786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367485, 33.431347, 55.343067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447528, 0.425842, 0.786370,
		-0.640671, -0.766167, 0.050292,
		0.623907, -0.481297, 0.615706,
		36.554657, 33.286957, 55.527779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694069, 33.700809, 55.707104>,  <36.117924, 33.623867, 55.096786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694069, 33.700809, 55.707104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.032845, 33.573093, 55.877163>,  <36.236111, 33.496464, 55.979198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.032845, 33.573093, 55.877163>,  <35.694069, 33.700809, 55.707104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032845, 33.573093, 55.877163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323769, 0.324548, 0.888731,
		-0.421745, -0.890348, 0.171495,
		0.846938, -0.319293, 0.425144,
		36.286926, 33.477306, 56.004707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603844, 33.230572, 56.348877>,  <35.694069, 33.700809, 55.707104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603844, 33.230572, 56.348877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.955841, 33.420021, 56.363304>,  <36.167038, 33.533691, 56.371960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.955841, 33.420021, 56.363304>,  <35.603844, 33.230572, 56.348877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955841, 33.420021, 56.363304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183563, 0.269064, 0.945468,
		0.438089, -0.838623, 0.323713,
		0.879991, 0.473621, 0.036066,
		36.219837, 33.562107, 56.374123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864017, 32.935497, 56.905212>,  <35.603844, 33.230572, 56.348877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864017, 32.935497, 56.905212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.077179, 33.268780, 56.846172>,  <36.205074, 33.468750, 56.810749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.077179, 33.268780, 56.846172>,  <35.864017, 32.935497, 56.905212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077179, 33.268780, 56.846172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133079, 0.254781, 0.957798,
		0.835647, -0.490771, 0.246655,
		0.532902, 0.833205, -0.147596,
		36.237049, 33.518742, 56.801895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103889, 32.992626, 57.464512>,  <35.864017, 32.935497, 56.905212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103889, 32.992626, 57.464512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.167210, 33.364876, 57.332523>,  <36.205200, 33.588226, 57.253330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.167210, 33.364876, 57.332523>,  <36.103889, 32.992626, 57.464512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167210, 33.364876, 57.332523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147243, 0.352697, 0.924080,
		0.976350, -0.097697, 0.192860,
		0.158301, 0.930624, -0.329970,
		36.214699, 33.644062, 57.233532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584995, 33.463398, 57.979919>,  <36.103889, 32.992626, 57.464512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584995, 33.463398, 57.979919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.358418, 33.713711, 57.765434>,  <36.222469, 33.863899, 57.636742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.358418, 33.713711, 57.765434>,  <36.584995, 33.463398, 57.979919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358418, 33.713711, 57.765434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229366, 0.505242, 0.831939,
		0.791535, 0.594240, -0.142660,
		-0.566449, 0.625787, -0.536215,
		36.188484, 33.901447, 57.604568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833439, 34.085415, 58.263027>,  <36.584995, 33.463398, 57.979919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833439, 34.085415, 58.263027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.496082, 34.185844, 58.073017>,  <36.293667, 34.246101, 57.959011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.496082, 34.185844, 58.073017>,  <36.833439, 34.085415, 58.263027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496082, 34.185844, 58.073017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191480, 0.685604, 0.702340,
		0.502023, 0.683306, -0.530156,
		-0.843391, 0.251077, -0.475029,
		36.243065, 34.261166, 57.930508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924255, 34.823017, 58.161942>,  <36.833439, 34.085415, 58.263027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924255, 34.823017, 58.161942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.540554, 34.712429, 58.138664>,  <36.310333, 34.646076, 58.124699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.540554, 34.712429, 58.138664>,  <36.924255, 34.823017, 58.161942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540554, 34.712429, 58.138664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256048, 0.763625, 0.592720,
		-0.119431, 0.583472, -0.803304,
		-0.959258, -0.276473, -0.058197,
		36.252777, 34.629486, 58.121204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627495, 35.389297, 58.084179>,  <36.924255, 34.823017, 58.161942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627495, 35.389297, 58.084179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.326977, 35.150459, 58.196629>,  <36.146667, 35.007156, 58.264099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.326977, 35.150459, 58.196629>,  <36.627495, 35.389297, 58.084179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326977, 35.150459, 58.196629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288442, 0.680207, 0.673884,
		-0.593598, 0.425197, -0.683264,
		-0.751294, -0.597098, 0.281124,
		36.101589, 34.971329, 58.280968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045773, 35.792721, 58.111275>,  <36.627495, 35.389297, 58.084179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045773, 35.792721, 58.111275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.955563, 35.486889, 58.352787>,  <35.901436, 35.303391, 58.497692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.955563, 35.486889, 58.352787>,  <36.045773, 35.792721, 58.111275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955563, 35.486889, 58.352787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495894, 0.623545, 0.604384,
		-0.838586, -0.163105, -0.519780,
		-0.225528, -0.764584, 0.603779,
		35.887905, 35.257515, 58.533920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405430, 36.005657, 58.468990>,  <36.045773, 35.792721, 58.111275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405430, 36.005657, 58.468990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.524689, 35.692097, 58.686836>,  <35.596245, 35.503960, 58.817543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.524689, 35.692097, 58.686836>,  <35.405430, 36.005657, 58.468990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524689, 35.692097, 58.686836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477821, 0.371359, 0.796102,
		-0.826314, -0.497585, -0.263845,
		0.298148, -0.783901, 0.544616,
		35.614132, 35.456924, 58.850220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812500, 35.860065, 58.748165>,  <35.405430, 36.005657, 58.468990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812500, 35.860065, 58.748165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.105869, 35.699169, 58.967361>,  <35.281891, 35.602631, 59.098881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.105869, 35.699169, 58.967361>,  <34.812500, 35.860065, 58.748165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105869, 35.699169, 58.967361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387707, 0.414639, 0.823260,
		-0.558365, -0.816259, 0.148156,
		0.733425, -0.402239, 0.547989,
		35.325897, 35.578499, 59.131760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463421, 35.530888, 59.366219>,  <34.812500, 35.860065, 58.748165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463421, 35.530888, 59.366219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.843979, 35.641529, 59.420383>,  <35.072315, 35.707912, 59.452881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.843979, 35.641529, 59.420383>,  <34.463421, 35.530888, 59.366219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843979, 35.641529, 59.420383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257743, 0.474482, 0.841686,
		0.168562, -0.835678, 0.522713,
		0.951397, 0.276601, 0.135411,
		35.129398, 35.724510, 59.461006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623276, 35.365471, 60.039318>,  <34.463421, 35.530888, 59.366219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623276, 35.365471, 60.039318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.880627, 35.657238, 59.946354>,  <35.035038, 35.832298, 59.890575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.880627, 35.657238, 59.946354>,  <34.623276, 35.365471, 60.039318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880627, 35.657238, 59.946354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298691, 0.518701, 0.801082,
		0.704874, -0.445980, 0.551592,
		0.643378, 0.729418, -0.232409,
		35.073639, 35.876064, 59.876633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980530, 35.531948, 60.668922>,  <34.623276, 35.365471, 60.039318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980530, 35.531948, 60.668922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.974468, 35.834778, 60.407658>,  <34.970833, 36.016476, 60.250900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.974468, 35.834778, 60.407658>,  <34.980530, 35.531948, 60.668922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974468, 35.834778, 60.407658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494608, 0.562041, 0.662928,
		0.868984, 0.333100, 0.365938,
		-0.015149, 0.757070, -0.653159,
		34.969925, 36.061897, 60.211712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742622, 36.062092, 61.060375>,  <34.980530, 35.531948, 60.668922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742622, 36.062092, 61.060375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.758293, 36.273594, 60.721230>,  <34.767696, 36.400497, 60.517742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.758293, 36.273594, 60.721230>,  <34.742622, 36.062092, 61.060375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758293, 36.273594, 60.721230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443879, 0.769413, 0.459319,
		0.895230, 0.358357, 0.264848,
		0.039177, 0.528757, -0.847869,
		34.770046, 36.432220, 60.466869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104050, 36.712730, 61.222393>,  <34.742622, 36.062092, 61.060375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104050, 36.712730, 61.222393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.882824, 36.764339, 60.893158>,  <34.750088, 36.795303, 60.695618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.882824, 36.764339, 60.893158>,  <35.104050, 36.712730, 61.222393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882824, 36.764339, 60.893158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386756, 0.835277, 0.390811,
		0.737927, 0.534478, -0.412065,
		-0.553068, 0.129021, -0.823085,
		34.716904, 36.803047, 60.646233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243320, 37.381462, 60.942089>,  <35.104050, 36.712730, 61.222393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243320, 37.381462, 60.942089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.878067, 37.303894, 60.798656>,  <34.658916, 37.257351, 60.712597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.878067, 37.303894, 60.798656>,  <35.243320, 37.381462, 60.942089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878067, 37.303894, 60.798656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312700, 0.897527, 0.310907,
		0.261548, 0.396029, -0.880201,
		-0.913133, -0.193922, -0.358584,
		34.604126, 37.245716, 60.691082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939903, 38.098450, 60.727402>,  <35.243320, 37.381462, 60.942089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939903, 38.098450, 60.727402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.617126, 37.862537, 60.714733>,  <34.423462, 37.720989, 60.707130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.617126, 37.862537, 60.714733>,  <34.939903, 38.098450, 60.727402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617126, 37.862537, 60.714733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578556, 0.778520, 0.243266,
		-0.118818, 0.214624, -0.969442,
		-0.806942, -0.589781, -0.031670,
		34.375046, 37.685604, 60.705231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508102, 38.402081, 60.273613>,  <34.939903, 38.098450, 60.727402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508102, 38.402081, 60.273613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.280251, 38.192791, 60.527149>,  <34.143539, 38.067215, 60.679272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.280251, 38.192791, 60.527149>,  <34.508102, 38.402081, 60.273613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280251, 38.192791, 60.527149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584090, 0.800267, 0.135692,
		-0.578243, -0.292929, -0.761464,
		-0.569626, -0.523226, 0.633845,
		34.109364, 38.035824, 60.717304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858624, 38.596134, 60.170620>,  <34.508102, 38.402081, 60.273613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858624, 38.596134, 60.170620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.861389, 38.456207, 60.545338>,  <33.863049, 38.372250, 60.770168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.861389, 38.456207, 60.545338>,  <33.858624, 38.596134, 60.170620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861389, 38.456207, 60.545338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435870, 0.842084, 0.317667,
		-0.899983, -0.410517, -0.146651,
		0.006916, -0.349816, 0.936793,
		33.863464, 38.351261, 60.826374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194099, 38.697926, 60.429932>,  <33.858624, 38.596134, 60.170620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194099, 38.697926, 60.429932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.414009, 38.685238, 60.763817>,  <33.545956, 38.677628, 60.964149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.414009, 38.685238, 60.763817>,  <33.194099, 38.697926, 60.429932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414009, 38.685238, 60.763817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535927, 0.753106, 0.381594,
		-0.640730, -0.657135, 0.397039,
		0.549771, -0.031715, 0.834713,
		33.578941, 38.675724, 61.014233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710381, 38.761238, 61.006779>,  <33.194099, 38.697926, 60.429932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710381, 38.761238, 61.006779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.062450, 38.831642, 61.183102>,  <33.273693, 38.873882, 61.288895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.062450, 38.831642, 61.183102>,  <32.710381, 38.761238, 61.006779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062450, 38.831642, 61.183102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398771, 0.777908, 0.485634,
		-0.257436, -0.603225, 0.754882,
		0.880175, 0.176006, 0.440810,
		33.326504, 38.884445, 61.315346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515469, 38.831730, 61.585316>,  <32.710381, 38.761238, 61.006779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515469, 38.831730, 61.585316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.865471, 39.025375, 61.584862>,  <33.075474, 39.141563, 61.584587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.865471, 39.025375, 61.584862>,  <32.515469, 38.831730, 61.585316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865471, 39.025375, 61.584862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447458, 0.809650, 0.379800,
		0.184788, -0.331818, 0.925068,
		0.875006, 0.484111, -0.001139,
		33.127972, 39.170609, 61.584518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433277, 39.214100, 62.106838>,  <32.515469, 38.831730, 61.585316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433277, 39.214100, 62.106838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.763863, 39.392166, 61.968979>,  <32.962215, 39.499004, 61.886261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.763863, 39.392166, 61.968979>,  <32.433277, 39.214100, 62.106838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763863, 39.392166, 61.968979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299995, 0.866257, 0.399502,
		0.476399, -0.226782, 0.849479,
		0.826467, 0.445162, -0.344651,
		33.011803, 39.525715, 61.865585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676060, 39.675964, 62.638767>,  <32.433277, 39.214100, 62.106838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676060, 39.675964, 62.638767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.859856, 39.838299, 62.322750>,  <32.970131, 39.935699, 62.133141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.859856, 39.838299, 62.322750>,  <32.676060, 39.675964, 62.638767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.859856, 39.838299, 62.322750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436526, 0.877847, 0.197054,
		0.773509, 0.254331, 0.580517,
		0.459488, 0.405834, -0.790044,
		32.997704, 39.960049, 62.085735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040199, 40.242157, 62.862335>,  <32.676060, 39.675964, 62.638767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040199, 40.242157, 62.862335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.955318, 40.285370, 62.473839>,  <32.904392, 40.311298, 62.240742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.955318, 40.285370, 62.473839>,  <33.040199, 40.242157, 62.862335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955318, 40.285370, 62.473839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445600, 0.873835, 0.194557,
		0.869720, 0.474067, -0.137286,
		-0.212199, 0.108036, -0.971236,
		32.891659, 40.317780, 62.182468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210991, 40.957733, 62.760548>,  <33.040199, 40.242157, 62.862335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210991, 40.957733, 62.760548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.966103, 40.822887, 62.474461>,  <32.819168, 40.741982, 62.302807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.966103, 40.822887, 62.474461>,  <33.210991, 40.957733, 62.760548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966103, 40.822887, 62.474461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661647, 0.713676, 0.229980,
		0.432906, 0.614021, -0.659978,
		-0.612222, -0.337113, -0.715219,
		32.782436, 40.721752, 62.259895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210499, 41.286961, 62.082989>,  <33.210991, 40.957733, 62.760548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210499, 41.286961, 62.082989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.853573, 41.128597, 62.169739>,  <32.639416, 41.033581, 62.221786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.853573, 41.128597, 62.169739>,  <33.210499, 41.286961, 62.082989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853573, 41.128597, 62.169739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381687, 0.918218, 0.105789,
		-0.241019, 0.011619, -0.970451,
		-0.892314, -0.395906, 0.216873,
		32.585880, 41.009827, 62.234802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610016, 41.901939, 62.341518>,  <33.210499, 41.286961, 62.082989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610016, 41.901939, 62.341518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.739048, 42.188839, 62.588581>,  <33.816467, 42.360977, 62.736820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.739048, 42.188839, 62.588581>,  <33.610016, 41.901939, 62.341518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739048, 42.188839, 62.588581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946326, 0.258320, 0.194260,
		-0.020222, -0.647172, 0.762076,
		0.322579, 0.717244, 0.617659,
		33.835823, 42.404011, 62.773880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024849, 42.024353, 62.667000>,  <33.610016, 41.901939, 62.341518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024849, 42.024353, 62.667000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.289845, 42.323872, 62.658985>,  <33.448841, 42.503582, 62.654175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.289845, 42.323872, 62.658985>,  <33.024849, 42.024353, 62.667000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289845, 42.323872, 62.658985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732729, 0.642253, -0.224985,
		-0.155599, 0.163735, 0.974156,
		0.662493, 0.748800, -0.020040,
		33.488594, 42.548512, 62.652973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730278, 42.676720, 62.924358>,  <33.024849, 42.024353, 62.667000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730278, 42.676720, 62.924358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.019642, 42.800816, 62.677643>,  <33.193260, 42.875271, 62.529613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.019642, 42.800816, 62.677643>,  <32.730278, 42.676720, 62.924358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019642, 42.800816, 62.677643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656475, 0.585738, -0.475343,
		0.213806, 0.748775, 0.627394,
		0.723414, 0.310237, -0.616786,
		33.236668, 42.893887, 62.492607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073021, 42.650909, 62.538265>,  <32.730278, 42.676720, 62.924358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073021, 42.650909, 62.538265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.237900, 42.844269, 62.847179>,  <32.336826, 42.960285, 63.032528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.237900, 42.844269, 62.847179>,  <32.073021, 42.650909, 62.538265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237900, 42.844269, 62.847179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842179, -0.121237, 0.525391,
		0.347602, -0.866965, 0.357134,
		0.412198, 0.483398, 0.772282,
		32.361561, 42.989288, 63.078865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162514, 43.355145, 62.180103>,  <32.073021, 42.650909, 62.538265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162514, 43.355145, 62.180103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.084824, 42.994701, 62.025040>,  <32.038208, 42.778435, 61.932003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.084824, 42.994701, 62.025040>,  <32.162514, 43.355145, 62.180103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084824, 42.994701, 62.025040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481277, 0.431886, -0.762789,
		0.854779, 0.038413, -0.517568,
		-0.194229, -0.901110, -0.387655,
		32.026554, 42.724369, 61.908745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307945, 43.429008, 61.526222>,  <32.162514, 43.355145, 62.180103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307945, 43.429008, 61.526222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.060867, 43.114441, 61.525562>,  <31.912622, 42.925701, 61.525166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.060867, 43.114441, 61.525562>,  <32.307945, 43.429008, 61.526222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060867, 43.114441, 61.525562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503896, 0.397389, -0.766923,
		0.603778, -0.472891, -0.641737,
		-0.617690, -0.786420, -0.001647,
		31.875561, 42.878513, 61.525066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629765, 42.958538, 61.142197>,  <32.307945, 43.429008, 61.526222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629765, 42.958538, 61.142197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.934181, 42.739494, 61.281300>,  <33.116833, 42.608067, 61.364761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.934181, 42.739494, 61.281300>,  <32.629765, 42.958538, 61.142197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934181, 42.739494, 61.281300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358655, -0.091504, -0.928974,
		0.540539, 0.831714, 0.126766,
		0.761041, -0.547612, 0.347760,
		33.162495, 42.575211, 61.385628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112354, 43.176006, 60.722157>,  <32.629765, 42.958538, 61.142197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112354, 43.176006, 60.722157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.217091, 42.808990, 60.841858>,  <33.279930, 42.588779, 60.913681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.217091, 42.808990, 60.841858>,  <33.112354, 43.176006, 60.722157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217091, 42.808990, 60.841858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424393, -0.169024, -0.889563,
		0.866794, 0.359924, 0.345142,
		0.261838, -0.917543, 0.299258,
		33.295643, 42.533726, 60.931637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875420, 42.992962, 60.537018>,  <33.112354, 43.176006, 60.722157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875420, 42.992962, 60.537018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.625813, 42.680401, 60.538193>,  <33.476048, 42.492863, 60.538898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.625813, 42.680401, 60.538193>,  <33.875420, 42.992962, 60.537018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625813, 42.680401, 60.538193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262381, -0.213074, -0.941146,
		0.736039, -0.586525, 0.337988,
		-0.624022, -0.781401, 0.002938,
		33.438606, 42.445980, 60.539074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299057, 42.461285, 60.219173>,  <33.875420, 42.992962, 60.537018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299057, 42.461285, 60.219173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.916740, 42.350208, 60.180511>,  <33.687351, 42.283562, 60.157314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.916740, 42.350208, 60.180511>,  <34.299057, 42.461285, 60.219173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916740, 42.350208, 60.180511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223776, -0.473761, -0.851748,
		0.190734, -0.835726, 0.514959,
		-0.955795, -0.277693, -0.096653,
		33.630001, 42.266899, 60.151516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330849, 41.873264, 59.723408>,  <34.299057, 42.461285, 60.219173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330849, 41.873264, 59.723408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.936882, 41.942356, 59.719307>,  <33.700500, 41.983810, 59.716846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.936882, 41.942356, 59.719307>,  <34.330849, 41.873264, 59.723408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936882, 41.942356, 59.719307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063341, -0.415073, -0.907581,
		-0.161018, -0.893242, 0.419753,
		-0.984917, 0.172724, -0.010256,
		33.641407, 41.994175, 59.716228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117294, 41.253788, 59.464897>,  <34.330849, 41.873264, 59.723408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117294, 41.253788, 59.464897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.844318, 41.542278, 59.417366>,  <33.680534, 41.715370, 59.388847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.844318, 41.542278, 59.417366>,  <34.117294, 41.253788, 59.464897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844318, 41.542278, 59.417366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180314, -0.323657, -0.928834,
		-0.708356, -0.612443, 0.350922,
		-0.682436, 0.721221, -0.118832,
		33.639587, 41.758644, 59.381718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506840, 40.915508, 59.187984>,  <34.117294, 41.253788, 59.464897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506840, 40.915508, 59.187984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.486904, 41.304760, 59.098064>,  <33.474945, 41.538311, 59.044113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.486904, 41.304760, 59.098064>,  <33.506840, 40.915508, 59.187984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486904, 41.304760, 59.098064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193528, -0.230225, -0.953700,
		-0.979828, -0.004024, 0.199801,
		-0.049837, 0.973129, -0.224802,
		33.471954, 41.596699, 59.030624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011654, 40.939919, 58.795071>,  <33.506840, 40.915508, 59.187984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011654, 40.939919, 58.795071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.154259, 41.307125, 58.725624>,  <33.239822, 41.527451, 58.683956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.154259, 41.307125, 58.725624>,  <33.011654, 40.939919, 58.795071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154259, 41.307125, 58.725624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289065, -0.068323, -0.954868,
		-0.888446, 0.390612, 0.241008,
		0.356517, 0.918016, -0.173614,
		33.261215, 41.582531, 58.673538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515247, 41.203892, 58.339993>,  <33.011654, 40.939919, 58.795071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515247, 41.203892, 58.339993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.842464, 41.429745, 58.296192>,  <33.038795, 41.565258, 58.269913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.842464, 41.429745, 58.296192>,  <32.515247, 41.203892, 58.339993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842464, 41.429745, 58.296192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082584, -0.073094, -0.993900,
		-0.569195, 0.822097, -0.013164,
		0.818045, 0.564636, -0.109497,
		33.087879, 41.599136, 58.263344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362808, 41.643539, 57.845631>,  <32.515247, 41.203892, 58.339993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362808, 41.643539, 57.845631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.759327, 41.647102, 57.793079>,  <32.997238, 41.649242, 57.761547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.759327, 41.647102, 57.793079>,  <32.362808, 41.643539, 57.845631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759327, 41.647102, 57.793079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131473, 0.122949, -0.983666,
		0.007388, 0.992373, 0.123049,
		0.991292, 0.008910, -0.131378,
		33.056713, 41.649776, 57.753666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482800, 42.090790, 57.285408>,  <32.362808, 41.643539, 57.845631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482800, 42.090790, 57.285408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.799118, 41.848763, 57.322380>,  <32.988907, 41.703548, 57.344563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.799118, 41.848763, 57.322380>,  <32.482800, 42.090790, 57.285408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799118, 41.848763, 57.322380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159280, 0.057619, -0.985551,
		0.590997, 0.794088, 0.141940,
		0.790792, -0.605066, 0.092430,
		33.036354, 41.667244, 57.350109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983803, 42.302727, 56.786423>,  <32.482800, 42.090790, 57.285408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983803, 42.302727, 56.786423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.107533, 41.932674, 56.874458>,  <33.181770, 41.710644, 56.927280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.107533, 41.932674, 56.874458>,  <32.983803, 42.302727, 56.786423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107533, 41.932674, 56.874458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302667, -0.123628, -0.945044,
		0.901504, 0.358944, 0.241766,
		0.309329, -0.925135, 0.220092,
		33.200333, 41.655132, 56.940487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581154, 42.243877, 56.438488>,  <32.983803, 42.302727, 56.786423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581154, 42.243877, 56.438488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.501965, 41.855766, 56.494156>,  <33.454449, 41.622898, 56.527557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.501965, 41.855766, 56.494156>,  <33.581154, 42.243877, 56.438488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501965, 41.855766, 56.494156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274118, -0.191118, -0.942514,
		0.941098, -0.148447, 0.303807,
		-0.197976, -0.970277, 0.139169,
		33.442574, 41.564682, 56.535908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111576, 41.854870, 56.082188>,  <33.581154, 42.243877, 56.438488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111576, 41.854870, 56.082188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.790844, 41.617355, 56.108963>,  <33.598404, 41.474846, 56.125027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.790844, 41.617355, 56.108963>,  <34.111576, 41.854870, 56.082188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790844, 41.617355, 56.108963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151399, -0.310243, -0.938524,
		0.578048, -0.742407, 0.338662,
		-0.801834, -0.593786, 0.066936,
		33.550293, 41.439220, 56.129044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401855, 41.162186, 55.846558>,  <34.111576, 41.854870, 56.082188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401855, 41.162186, 55.846558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.008011, 41.161629, 55.776653>,  <33.771706, 41.161293, 55.734711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.008011, 41.161629, 55.776653>,  <34.401855, 41.162186, 55.846558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008011, 41.161629, 55.776653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163997, -0.352939, -0.921162,
		-0.060397, -0.935645, 0.347736,
		-0.984610, -0.001392, -0.174760,
		33.712627, 41.161213, 55.724224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259369, 40.480648, 55.495140>,  <34.401855, 41.162186, 55.846558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259369, 40.480648, 55.495140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.957378, 40.736618, 55.437862>,  <33.776184, 40.890202, 55.403496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.957378, 40.736618, 55.437862>,  <34.259369, 40.480648, 55.495140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957378, 40.736618, 55.437862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018696, -0.239285, -0.970770,
		-0.655488, -0.730228, 0.192618,
		-0.754974, 0.639929, -0.143196,
		33.730885, 40.928596, 55.394905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463367, 40.267235, 55.244667>,  <34.259369, 40.480648, 55.495140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463367, 40.267235, 55.244667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.571655, 40.629707, 55.114719>,  <33.636627, 40.847191, 55.036751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.571655, 40.629707, 55.114719>,  <33.463367, 40.267235, 55.244667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571655, 40.629707, 55.114719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069606, -0.355015, -0.932266,
		-0.960140, 0.229766, -0.159184,
		0.270715, 0.906186, -0.324871,
		33.652870, 40.901562, 55.017258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023724, 40.452374, 54.707157>,  <33.463367, 40.267235, 55.244667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023724, 40.452374, 54.707157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.356709, 40.670601, 54.668453>,  <33.556499, 40.801537, 54.645229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.356709, 40.670601, 54.668453>,  <33.023724, 40.452374, 54.707157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356709, 40.670601, 54.668453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104887, -0.326630, -0.939314,
		-0.544068, 0.771792, -0.329130,
		0.832459, 0.545572, -0.096758,
		33.606445, 40.834274, 54.639427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933434, 40.696163, 54.105232>,  <33.023724, 40.452374, 54.707157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933434, 40.696163, 54.105232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.322857, 40.751129, 54.178223>,  <33.556511, 40.784107, 54.222019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.322857, 40.751129, 54.178223>,  <32.933434, 40.696163, 54.105232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322857, 40.751129, 54.178223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215911, -0.292717, -0.931504,
		-0.074589, 0.946274, -0.314647,
		0.973560, 0.137416, 0.182478,
		33.614925, 40.792355, 54.232967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189457, 40.951130, 53.540058>,  <32.933434, 40.696163, 54.105232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189457, 40.951130, 53.540058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.529247, 40.823193, 53.707909>,  <33.733124, 40.746429, 53.808620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.529247, 40.823193, 53.707909>,  <33.189457, 40.951130, 53.540058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529247, 40.823193, 53.707909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347526, -0.259254, -0.901118,
		0.397004, 0.911312, -0.109077,
		0.849478, -0.319840, 0.419630,
		33.784092, 40.727242, 53.833797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757404, 41.076965, 52.996815>,  <33.189457, 40.951130, 53.540058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757404, 41.076965, 52.996815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.926971, 40.812874, 53.244812>,  <34.028713, 40.654419, 53.393612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.926971, 40.812874, 53.244812>,  <33.757404, 41.076965, 52.996815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926971, 40.812874, 53.244812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494843, -0.404501, -0.769096,
		0.758566, 0.632835, 0.155232,
		0.423919, -0.660226, 0.619995,
		34.054146, 40.614807, 53.430809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395893, 41.282753, 52.921112>,  <33.757404, 41.076965, 52.996815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395893, 41.282753, 52.921112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.393650, 40.902195, 53.044281>,  <34.392303, 40.673859, 53.118183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.393650, 40.902195, 53.044281>,  <34.395893, 41.282753, 52.921112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393650, 40.902195, 53.044281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646827, -0.238288, -0.724454,
		0.762616, 0.195111, 0.616724,
		-0.005609, -0.951394, 0.307925,
		34.391968, 40.616776, 53.136658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088776, 41.112331, 52.858147>,  <34.395893, 41.282753, 52.921112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088776, 41.112331, 52.858147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.918205, 40.751862, 52.889263>,  <34.815865, 40.535580, 52.907932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.918205, 40.751862, 52.889263>,  <35.088776, 41.112331, 52.858147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918205, 40.751862, 52.889263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600305, -0.346286, -0.720916,
		0.676608, -0.260716, 0.688643,
		-0.426422, -0.901173, 0.077791,
		34.790279, 40.481510, 52.912601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630722, 40.638992, 52.786385>,  <35.088776, 41.112331, 52.858147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630722, 40.638992, 52.786385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.323475, 40.389477, 52.728565>,  <35.139126, 40.239769, 52.693874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.323475, 40.389477, 52.728565>,  <35.630722, 40.638992, 52.786385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323475, 40.389477, 52.728565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550354, -0.527771, -0.646968,
		0.327280, -0.576497, 0.748691,
		-0.768113, -0.623785, -0.144549,
		35.093040, 40.202343, 52.685200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849068, 39.957752, 52.947334>,  <35.630722, 40.638992, 52.786385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849068, 39.957752, 52.947334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.538628, 39.923744, 52.697395>,  <35.352364, 39.903339, 52.547432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.538628, 39.923744, 52.697395>,  <35.849068, 39.957752, 52.947334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538628, 39.923744, 52.697395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538091, -0.605952, -0.585902,
		-0.328816, -0.790946, 0.516028,
		-0.776105, -0.085016, -0.624847,
		35.305798, 39.898239, 52.509941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800079, 39.290440, 52.727497>,  <35.849068, 39.957752, 52.947334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800079, 39.290440, 52.727497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.603775, 39.459286, 52.422611>,  <35.485992, 39.560593, 52.239681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.603775, 39.459286, 52.422611>,  <35.800079, 39.290440, 52.727497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603775, 39.459286, 52.422611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513662, -0.566450, -0.644427,
		-0.703777, -0.707783, 0.061172,
		-0.490765, 0.422111, -0.762215,
		35.456547, 39.585918, 52.193947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862137, 38.737663, 52.175053>,  <35.800079, 39.290440, 52.727497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862137, 38.737663, 52.175053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.706276, 39.040997, 51.966015>,  <35.612759, 39.222996, 51.840591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.706276, 39.040997, 51.966015>,  <35.862137, 38.737663, 52.175053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706276, 39.040997, 51.966015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398396, -0.372807, -0.838031,
		-0.830333, -0.534738, -0.156853,
		-0.389651, 0.758335, -0.522591,
		35.589382, 39.268497, 51.809238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420345, 38.392189, 51.560238>,  <35.862137, 38.737663, 52.175053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420345, 38.392189, 51.560238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.546799, 38.765450, 51.491783>,  <35.622673, 38.989407, 51.450710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.546799, 38.765450, 51.491783>,  <35.420345, 38.392189, 51.560238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546799, 38.765450, 51.491783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325835, -0.276208, -0.904180,
		-0.891005, 0.230083, -0.391372,
		0.316136, 0.933151, -0.171133,
		35.641640, 39.045395, 51.440445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112904, 38.536831, 50.924221>,  <35.420345, 38.392189, 51.560238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112904, 38.536831, 50.924221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.438511, 38.762825, 50.978127>,  <35.633877, 38.898422, 51.010468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.438511, 38.762825, 50.978127>,  <35.112904, 38.536831, 50.924221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438511, 38.762825, 50.978127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298842, -0.208439, -0.931261,
		-0.498061, 0.798338, -0.338515,
		0.814020, 0.564987, 0.134762,
		35.682716, 38.932320, 51.018555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207737, 38.896736, 50.314159>,  <35.112904, 38.536831, 50.924221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207737, 38.896736, 50.314159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.568298, 38.918453, 50.485985>,  <35.784634, 38.931484, 50.589081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.568298, 38.918453, 50.485985>,  <35.207737, 38.896736, 50.314159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568298, 38.918453, 50.485985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429446, -0.238594, -0.871005,
		0.055200, 0.969600, -0.238386,
		0.901404, 0.054295, 0.429561,
		35.838718, 38.934742, 50.614853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646225, 39.264782, 49.869808>,  <35.207737, 38.896736, 50.314159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646225, 39.264782, 49.869808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.914604, 39.063713, 50.087852>,  <36.075630, 38.943069, 50.218678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.914604, 39.063713, 50.087852>,  <35.646225, 39.264782, 49.869808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914604, 39.063713, 50.087852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233220, -0.554771, -0.798647,
		0.703872, 0.662982, -0.254989,
		0.670949, -0.502677, 0.545109,
		36.115891, 38.912910, 50.251385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119129, 38.982853, 49.355812>,  <35.646225, 39.264782, 49.869808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119129, 38.982853, 49.355812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.214512, 38.764103, 49.676826>,  <36.271740, 38.632854, 49.869434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.214512, 38.764103, 49.676826>,  <36.119129, 38.982853, 49.355812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214512, 38.764103, 49.676826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295520, -0.746326, -0.596377,
		0.925098, 0.379377, -0.016355,
		0.238458, -0.546874, 0.802538,
		36.286049, 38.600040, 49.917587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749416, 38.574089, 49.114162>,  <36.119129, 38.982853, 49.355812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749416, 38.574089, 49.114162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.611950, 38.399197, 49.446602>,  <36.529469, 38.294262, 49.646065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.611950, 38.399197, 49.446602>,  <36.749416, 38.574089, 49.114162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611950, 38.399197, 49.446602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302748, -0.889333, -0.342682,
		0.888952, 0.133842, 0.438008,
		-0.343670, -0.437234, 0.831094,
		36.508850, 38.268028, 49.695930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296066, 38.245552, 49.550922>,  <36.749416, 38.574089, 49.114162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296066, 38.245552, 49.550922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.969639, 38.029575, 49.633377>,  <36.773781, 37.899990, 49.682850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.969639, 38.029575, 49.633377>,  <37.296066, 38.245552, 49.550922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969639, 38.029575, 49.633377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501421, -0.838815, -0.212053,
		0.287406, -0.069690, 0.955270,
		-0.816073, -0.539938, 0.206137,
		36.724815, 37.867596, 49.695217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509361, 37.544312, 49.772171>,  <37.296066, 38.245552, 49.550922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509361, 37.544312, 49.772171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.119320, 37.488525, 49.703201>,  <36.885296, 37.455055, 49.661819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.119320, 37.488525, 49.703201>,  <37.509361, 37.544312, 49.772171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119320, 37.488525, 49.703201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179887, -0.952122, -0.247192,
		-0.129697, -0.272055, 0.953501,
		-0.975100, -0.139463, -0.172426,
		36.826790, 37.446686, 49.651474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327396, 37.071613, 50.194157>,  <37.509361, 37.544312, 49.772171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327396, 37.071613, 50.194157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.044735, 37.042660, 49.912617>,  <36.875137, 37.025288, 49.743694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.044735, 37.042660, 49.912617>,  <37.327396, 37.071613, 50.194157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044735, 37.042660, 49.912617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081405, -0.996465, 0.020743,
		-0.702861, -0.042638, 0.710048,
		-0.706653, -0.072381, -0.703848,
		36.832741, 37.020947, 49.701462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922131, 36.432415, 50.331139>,  <37.327396, 37.071613, 50.194157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922131, 36.432415, 50.331139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.816822, 36.501854, 49.951550>,  <36.753635, 36.543518, 49.723797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.816822, 36.501854, 49.951550>,  <36.922131, 36.432415, 50.331139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816822, 36.501854, 49.951550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001911, -0.983581, -0.180456,
		-0.964719, -0.049323, 0.258621,
		-0.263275, 0.173595, -0.948974,
		36.737839, 36.553932, 49.666859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464512, 35.892246, 50.189487>,  <36.922131, 36.432415, 50.331139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464512, 35.892246, 50.189487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.525845, 36.034668, 49.820766>,  <36.562645, 36.120121, 49.599533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.525845, 36.034668, 49.820766>,  <36.464512, 35.892246, 50.189487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525845, 36.034668, 49.820766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052151, -0.928614, -0.367364,
		-0.986798, 0.104400, -0.123814,
		0.153328, 0.356058, -0.921799,
		36.571842, 36.141487, 49.544228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996517, 35.661777, 49.723343>,  <36.464512, 35.892246, 50.189487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996517, 35.661777, 49.723343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.320568, 35.723251, 49.497040>,  <36.514999, 35.760136, 49.361259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.320568, 35.723251, 49.497040>,  <35.996517, 35.661777, 49.723343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320568, 35.723251, 49.497040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031368, -0.952282, -0.303603,
		-0.585420, 0.263702, -0.766645,
		0.810123, 0.153687, -0.565757,
		36.563606, 35.769356, 49.327312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835850, 35.563606, 48.969936>,  <35.996517, 35.661777, 49.723343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835850, 35.563606, 48.969936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.229042, 35.505024, 49.014305>,  <36.464958, 35.469875, 49.040924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.229042, 35.505024, 49.014305>,  <35.835850, 35.563606, 48.969936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229042, 35.505024, 49.014305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090989, -0.912598, -0.398604,
		0.159601, 0.381727, -0.910391,
		0.982979, -0.146453, 0.110919,
		36.523937, 35.461086, 49.047581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213116, 35.322979, 48.323452>,  <35.835850, 35.563606, 48.969936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213116, 35.322979, 48.323452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.422073, 35.179752, 48.633003>,  <36.547447, 35.093815, 48.818733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.422073, 35.179752, 48.633003>,  <36.213116, 35.322979, 48.323452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422073, 35.179752, 48.633003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018207, -0.912036, -0.409705,
		0.852508, 0.199939, -0.482964,
		0.522397, -0.358070, 0.773878,
		36.578793, 35.072330, 48.865166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897659, 35.980251, 47.981472>,  <36.213116, 35.322979, 48.323452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897659, 35.980251, 47.981472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.703526, 36.051277, 47.639027>,  <35.587048, 36.093895, 47.433559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.703526, 36.051277, 47.639027>,  <35.897659, 35.980251, 47.981472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703526, 36.051277, 47.639027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720566, 0.473361, 0.506670,
		0.495217, 0.862786, -0.101788,
		-0.485330, 0.177567, -0.856110,
		35.557926, 36.104546, 47.382195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759151, 36.704300, 47.864178>,  <35.897659, 35.980251, 47.981472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759151, 36.704300, 47.864178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.492245, 36.517868, 47.631790>,  <35.332100, 36.406010, 47.492355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.492245, 36.517868, 47.631790>,  <35.759151, 36.704300, 47.864178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492245, 36.517868, 47.631790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717423, 0.611798, 0.333177,
		0.200151, 0.639120, -0.742607,
		-0.667266, -0.466078, -0.580972,
		35.292065, 36.378044, 47.457500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315060, 37.237934, 47.696247>,  <35.759151, 36.704300, 47.864178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315060, 37.237934, 47.696247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.084354, 36.936508, 47.570080>,  <34.945930, 36.755653, 47.494377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.084354, 36.936508, 47.570080>,  <35.315060, 37.237934, 47.696247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084354, 36.936508, 47.570080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806394, 0.463427, 0.367374,
		-0.130664, 0.466242, -0.874955,
		-0.576763, -0.753561, -0.315421,
		34.911327, 36.710442, 47.475452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806797, 37.607685, 47.419807>,  <35.315060, 37.237934, 47.696247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806797, 37.607685, 47.419807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.667824, 37.237106, 47.477737>,  <34.584438, 37.014759, 47.512497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.667824, 37.237106, 47.477737>,  <34.806797, 37.607685, 47.419807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667824, 37.237106, 47.477737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866501, 0.376238, 0.328057,
		-0.358419, -0.011515, -0.933490,
		-0.347437, -0.926451, 0.144828,
		34.563591, 36.959171, 47.521187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161179, 37.492477, 47.027382>,  <34.806797, 37.607685, 47.419807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161179, 37.492477, 47.027382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.146481, 37.235672, 47.333706>,  <34.137661, 37.081589, 47.517502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.146481, 37.235672, 47.333706>,  <34.161179, 37.492477, 47.027382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146481, 37.235672, 47.333706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608011, 0.622532, 0.492724,
		-0.793078, -0.447516, -0.413228,
		-0.036746, -0.642016, 0.765811,
		34.135456, 37.043068, 47.563450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432598, 37.415943, 47.236256>,  <34.161179, 37.492477, 47.027382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432598, 37.415943, 47.236256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.630020, 37.278126, 47.555679>,  <33.748474, 37.195435, 47.747334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.630020, 37.278126, 47.555679>,  <33.432598, 37.415943, 47.236256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630020, 37.278126, 47.555679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604899, 0.523731, 0.599836,
		-0.624900, -0.779097, 0.050074,
		0.493556, -0.344547, 0.798555,
		33.778088, 37.174763, 47.795246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942421, 37.203018, 47.577251>,  <33.432598, 37.415943, 47.236256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942421, 37.203018, 47.577251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.227226, 37.207073, 47.858086>,  <33.398109, 37.209507, 48.026588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.227226, 37.207073, 47.858086>,  <32.942421, 37.203018, 47.577251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227226, 37.207073, 47.858086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614230, 0.493479, 0.615793,
		-0.340224, -0.869699, 0.357592,
		0.712018, 0.010136, 0.702088,
		33.440830, 37.210114, 48.068710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724720, 36.739708, 48.094856>,  <32.942421, 37.203018, 47.577251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724720, 36.739708, 48.094856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.969658, 37.020538, 48.240250>,  <33.116623, 37.189037, 48.327488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.969658, 37.020538, 48.240250>,  <32.724720, 36.739708, 48.094856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969658, 37.020538, 48.240250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715836, 0.297220, 0.631854,
		0.335570, -0.647114, 0.684570,
		0.612349, 0.702071, 0.363490,
		33.153362, 37.231159, 48.349297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616528, 36.691738, 48.855148>,  <32.724720, 36.739708, 48.094856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616528, 36.691738, 48.855148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.827911, 37.028355, 48.810364>,  <32.954742, 37.230324, 48.783493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.827911, 37.028355, 48.810364>,  <32.616528, 36.691738, 48.855148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827911, 37.028355, 48.810364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494037, 0.412094, 0.765576,
		0.690403, -0.349263, 0.633529,
		0.528461, 0.841542, -0.111962,
		32.986450, 37.280819, 48.776775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104702, 36.836349, 49.439747>,  <32.616528, 36.691738, 48.855148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104702, 36.836349, 49.439747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.019730, 37.189449, 49.272114>,  <32.968746, 37.401310, 49.171532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.019730, 37.189449, 49.272114>,  <33.104702, 36.836349, 49.439747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019730, 37.189449, 49.272114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406066, 0.310346, 0.859532,
		0.888810, 0.352768, 0.292526,
		-0.212431, 0.882746, -0.419086,
		32.956001, 37.454273, 49.146389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241390, 37.271698, 50.050484>,  <33.104702, 36.836349, 49.439747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241390, 37.271698, 50.050484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.055840, 37.516899, 49.794659>,  <32.944508, 37.664021, 49.641163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.055840, 37.516899, 49.794659>,  <33.241390, 37.271698, 50.050484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055840, 37.516899, 49.794659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283071, 0.581528, 0.762691,
		0.839457, 0.534837, -0.096234,
		-0.463878, 0.613005, -0.639564,
		32.916676, 37.700802, 49.602791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382282, 37.915604, 50.236679>,  <33.241390, 37.271698, 50.050484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382282, 37.915604, 50.236679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.038830, 37.947803, 50.034184>,  <32.832760, 37.967125, 49.912685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.038830, 37.947803, 50.034184>,  <33.382282, 37.915604, 50.236679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038830, 37.947803, 50.034184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423967, 0.443552, 0.789629,
		0.288108, 0.892626, -0.346718,
		-0.858630, 0.080502, -0.506235,
		32.781242, 37.971954, 49.882313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179173, 38.614082, 50.354576>,  <33.382282, 37.915604, 50.236679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179173, 38.614082, 50.354576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.850552, 38.413021, 50.246952>,  <32.653378, 38.292385, 50.182377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.850552, 38.413021, 50.246952>,  <33.179173, 38.614082, 50.354576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850552, 38.413021, 50.246952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479080, 0.352787, 0.803756,
		-0.309087, 0.789229, -0.530643,
		-0.821552, -0.502651, -0.269062,
		32.604088, 38.262226, 50.166233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564693, 39.174900, 50.291622>,  <33.179173, 38.614082, 50.354576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564693, 39.174900, 50.291622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.369343, 38.830437, 50.348049>,  <32.252132, 38.623760, 50.381905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.369343, 38.830437, 50.348049>,  <32.564693, 39.174900, 50.291622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369343, 38.830437, 50.348049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454498, 0.389021, 0.801308,
		-0.744930, 0.327222, -0.581382,
		-0.488375, -0.861155, 0.141072,
		32.222832, 38.572090, 50.390369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968983, 39.347885, 50.534027>,  <32.564693, 39.174900, 50.291622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968983, 39.347885, 50.534027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.958574, 38.959244, 50.628098>,  <31.952330, 38.726059, 50.684540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.958574, 38.959244, 50.628098>,  <31.968983, 39.347885, 50.534027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958574, 38.959244, 50.628098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556386, 0.209528, 0.804073,
		-0.830517, -0.109929, -0.546038,
		-0.026019, -0.971604, 0.235180,
		31.950769, 38.667763, 50.698650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223450, 39.156826, 50.647526>,  <31.968983, 39.347885, 50.534027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223450, 39.156826, 50.647526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.484629, 38.921120, 50.837860>,  <31.641336, 38.779694, 50.952061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.484629, 38.921120, 50.837860>,  <31.223450, 39.156826, 50.647526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484629, 38.921120, 50.837860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344812, 0.328098, 0.879464,
		-0.674364, -0.738317, 0.011043,
		0.652946, -0.589271, 0.475838,
		31.680513, 38.744339, 50.980610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836655, 38.908867, 51.238136>,  <31.223450, 39.156826, 50.647526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836655, 38.908867, 51.238136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.211456, 38.834476, 51.356419>,  <31.436337, 38.789845, 51.427387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.211456, 38.834476, 51.356419>,  <30.836655, 38.908867, 51.238136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211456, 38.834476, 51.356419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226581, 0.320719, 0.919674,
		-0.265872, -0.928738, 0.258376,
		0.937002, -0.185972, 0.295704,
		31.492558, 38.778687, 51.445129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815084, 38.525871, 51.888390>,  <30.836655, 38.908867, 51.238136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.815084, 38.525871, 51.888390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.189005, 38.667320, 51.875168>,  <31.413357, 38.752190, 51.867233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.189005, 38.667320, 51.875168>,  <30.815084, 38.525871, 51.888390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189005, 38.667320, 51.875168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074617, 0.286527, 0.955162,
		0.347244, -0.890421, 0.294232,
		0.934802, 0.353629, -0.033054,
		31.469446, 38.773407, 51.865253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294392, 38.269756, 52.523956>,  <30.815084, 38.525871, 51.888390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294392, 38.269756, 52.523956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.436623, 38.616158, 52.383324>,  <31.521961, 38.823997, 52.298946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.436623, 38.616158, 52.383324>,  <31.294392, 38.269756, 52.523956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436623, 38.616158, 52.383324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026572, 0.366642, 0.929982,
		0.934269, -0.340022, 0.107358,
		0.355577, 0.866001, -0.351578,
		31.543295, 38.875957, 52.277851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845495, 38.462051, 52.972080>,  <31.294392, 38.269756, 52.523956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845495, 38.462051, 52.972080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.758892, 38.794369, 52.766987>,  <31.706930, 38.993759, 52.643929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.758892, 38.794369, 52.766987>,  <31.845495, 38.462051, 52.972080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758892, 38.794369, 52.766987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245895, 0.461856, 0.852189,
		0.944807, 0.310586, 0.104293,
		-0.216510, 0.830798, -0.512736,
		31.693939, 39.043610, 52.613167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979721, 38.892494, 53.480606>,  <31.845495, 38.462051, 52.972080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979721, 38.892494, 53.480606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.773260, 39.129097, 53.232830>,  <31.649384, 39.271057, 53.084164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.773260, 39.129097, 53.232830>,  <31.979721, 38.892494, 53.480606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773260, 39.129097, 53.232830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204661, 0.617100, 0.759804,
		0.831685, 0.518951, -0.197460,
		-0.516153, 0.591505, -0.619442,
		31.618414, 39.306549, 53.046997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267254, 39.611683, 53.538658>,  <31.979721, 38.892494, 53.480606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267254, 39.611683, 53.538658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.891813, 39.598297, 53.401310>,  <31.666548, 39.590267, 53.318901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.891813, 39.598297, 53.401310>,  <32.267254, 39.611683, 53.538658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891813, 39.598297, 53.401310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273812, 0.677731, 0.682428,
		0.209878, 0.734549, -0.645283,
		-0.938604, -0.033460, -0.343369,
		31.610231, 39.588261, 53.298298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092781, 40.293823, 53.405628>,  <32.267254, 39.611683, 53.538658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092781, 40.293823, 53.405628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.741072, 40.105556, 53.434895>,  <31.530046, 39.992596, 53.452454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.741072, 40.105556, 53.434895>,  <32.092781, 40.293823, 53.405628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741072, 40.105556, 53.434895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297744, 0.663003, 0.686859,
		-0.371792, 0.582151, -0.723098,
		-0.879272, -0.470667, 0.073167,
		31.477289, 39.964355, 53.456844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559586, 40.876968, 53.573757>,  <32.092781, 40.293823, 53.405628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559586, 40.876968, 53.573757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.411856, 40.518318, 53.671459>,  <31.323217, 40.303127, 53.730080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.411856, 40.518318, 53.671459>,  <31.559586, 40.876968, 53.573757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411856, 40.518318, 53.671459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417422, 0.394890, 0.818426,
		-0.830275, 0.200310, -0.520114,
		-0.369327, -0.896626, 0.244254,
		31.301058, 40.249329, 53.744736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867683, 41.032532, 53.630474>,  <31.559586, 40.876968, 53.573757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867683, 41.032532, 53.630474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.942787, 40.701283, 53.841743>,  <30.987850, 40.502533, 53.968506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.942787, 40.701283, 53.841743>,  <30.867683, 41.032532, 53.630474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.942787, 40.701283, 53.841743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462207, 0.399981, 0.791441,
		-0.866666, -0.392726, -0.307662,
		0.187761, -0.828119, 0.528171,
		30.999115, 40.452847, 54.000195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322992, 40.860901, 54.047184>,  <30.867683, 41.032532, 53.630474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322992, 40.860901, 54.047184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.613804, 40.660347, 54.234821>,  <30.788290, 40.540016, 54.347404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.613804, 40.660347, 54.234821>,  <30.322992, 40.860901, 54.047184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613804, 40.660347, 54.234821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425397, 0.207348, 0.880934,
		-0.538951, -0.840012, -0.062539,
		0.727028, -0.501384, 0.469089,
		30.831913, 40.509933, 54.375549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073395, 40.394138, 54.562050>,  <30.322992, 40.860901, 54.047184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073395, 40.394138, 54.562050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.447218, 40.440498, 54.696613>,  <30.671513, 40.468315, 54.777351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.447218, 40.440498, 54.696613>,  <30.073395, 40.394138, 54.562050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447218, 40.440498, 54.696613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325321, -0.104588, 0.939802,
		0.144106, -0.987739, -0.060040,
		0.934558, 0.115899, 0.336404,
		30.727585, 40.475269, 54.797535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133356, 39.862854, 55.088306>,  <30.073395, 40.394138, 54.562050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.133356, 39.862854, 55.088306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.409992, 40.139915, 55.170212>,  <30.575974, 40.306152, 55.219353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.409992, 40.139915, 55.170212>,  <30.133356, 39.862854, 55.088306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.409992, 40.139915, 55.170212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270031, -0.014984, 0.962735,
		0.669913, -0.721111, 0.176676,
		0.691592, 0.692657, 0.204760,
		30.617470, 40.347713, 55.231640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.427263, 39.599365, 55.742256>,  <30.133356, 39.862854, 55.088306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.427263, 39.599365, 55.742256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.526054, 39.983589, 55.691147>,  <30.585329, 40.214123, 55.660480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.526054, 39.983589, 55.691147>,  <30.427263, 39.599365, 55.742256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526054, 39.983589, 55.691147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339675, 0.209307, 0.916958,
		0.907537, -0.183066, 0.377972,
		0.246977, 0.960561, -0.127771,
		30.600147, 40.271759, 55.652817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858707, 39.725014, 56.352394>,  <30.427263, 39.599365, 55.742256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858707, 39.725014, 56.352394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.748148, 40.090591, 56.233521>,  <30.681812, 40.309937, 56.162197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.748148, 40.090591, 56.233521>,  <30.858707, 39.725014, 56.352394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748148, 40.090591, 56.233521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090198, 0.283192, 0.954812,
		0.956801, 0.290715, 0.004161,
		-0.276400, 0.913940, -0.297180,
		30.665228, 40.364773, 56.144367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318888, 40.104328, 56.785774>,  <30.858707, 39.725014, 56.352394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318888, 40.104328, 56.785774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.988621, 40.298409, 56.670635>,  <30.790461, 40.414856, 56.601551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.988621, 40.298409, 56.670635>,  <31.318888, 40.104328, 56.785774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988621, 40.298409, 56.670635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154485, 0.296270, 0.942527,
		0.542593, 0.822683, -0.169665,
		-0.825668, 0.485198, -0.287847,
		30.740921, 40.443970, 56.584282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268833, 40.711674, 57.213924>,  <31.318888, 40.104328, 56.785774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268833, 40.711674, 57.213924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.899292, 40.642067, 57.077564>,  <30.677567, 40.600304, 56.995750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.899292, 40.642067, 57.077564>,  <31.268833, 40.711674, 57.213924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899292, 40.642067, 57.077564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370798, 0.186148, 0.909867,
		-0.094875, 0.966989, -0.236499,
		-0.923855, -0.174017, -0.340897,
		30.622135, 40.589863, 56.975296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898916, 41.117741, 57.688320>,  <31.268833, 40.711674, 57.213924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898916, 41.117741, 57.688320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.614126, 40.889969, 57.523956>,  <30.443253, 40.753307, 57.425339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.614126, 40.889969, 57.523956>,  <30.898916, 41.117741, 57.688320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614126, 40.889969, 57.523956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467424, -0.052371, 0.882481,
		-0.524027, 0.820373, -0.228877,
		-0.711977, -0.569426, -0.410905,
		30.400534, 40.719143, 57.400684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275988, 41.445274, 57.835037>,  <30.898916, 41.117741, 57.688320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.275988, 41.445274, 57.835037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.177992, 41.062000, 57.775894>,  <30.119194, 40.832035, 57.740410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.177992, 41.062000, 57.775894>,  <30.275988, 41.445274, 57.835037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177992, 41.062000, 57.775894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489949, -0.009239, 0.871702,
		-0.836619, 0.285997, -0.467199,
		-0.244988, -0.958186, -0.147854,
		30.104496, 40.774544, 57.731537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578257, 41.392246, 58.010368>,  <30.275988, 41.445274, 57.835037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578257, 41.392246, 58.010368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.728254, 41.022057, 58.031834>,  <29.818253, 40.799942, 58.044712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.728254, 41.022057, 58.031834>,  <29.578257, 41.392246, 58.010368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.728254, 41.022057, 58.031834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611997, -0.203663, 0.764186,
		-0.696304, -0.319407, -0.642759,
		0.374993, -0.925473, 0.053665,
		29.840752, 40.744415, 58.047932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.039740, 41.038448, 58.181026>,  <29.578257, 41.392246, 58.010368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.039740, 41.038448, 58.181026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.341814, 40.795452, 58.279533>,  <29.523060, 40.649654, 58.338638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.341814, 40.795452, 58.279533>,  <29.039740, 41.038448, 58.181026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.341814, 40.795452, 58.279533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417223, -0.155688, 0.895369,
		-0.505587, -0.778920, -0.371032,
		0.755186, -0.607491, 0.246269,
		29.568371, 40.613205, 58.353413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750822, 40.361137, 58.502426>,  <29.039740, 41.038448, 58.181026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.750822, 40.361137, 58.502426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.124035, 40.428226, 58.629753>,  <29.347961, 40.468479, 58.706150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.124035, 40.428226, 58.629753>,  <28.750822, 40.361137, 58.502426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.124035, 40.428226, 58.629753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315168, -0.045780, 0.947931,
		0.173560, -0.984771, 0.010146,
		0.933030, 0.167721, 0.318314,
		29.403944, 40.478542, 58.725246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.833229, 39.837116, 58.937614>,  <28.750822, 40.361137, 58.502426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.833229, 39.837116, 58.937614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.056173, 40.161087, 59.010685>,  <29.189939, 40.355469, 59.054527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.056173, 40.161087, 59.010685>,  <28.833229, 39.837116, 58.937614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.056173, 40.161087, 59.010685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395470, 0.065519, 0.916139,
		0.730036, -0.582861, 0.356819,
		0.557360, 0.809926, 0.182673,
		29.223381, 40.404064, 59.065487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296684, 39.390053, 59.243271>,  <28.833229, 39.837116, 58.937614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296684, 39.390053, 59.243271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.022123, 39.099224, 59.237331>,  <27.857386, 38.924728, 59.233768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.022123, 39.099224, 59.237331>,  <28.296684, 39.390053, 59.243271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.022123, 39.099224, 59.237331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330657, -0.293847, -0.896839,
		0.647701, -0.620503, 0.442108,
		-0.686403, -0.727069, -0.014849,
		27.816202, 38.881104, 59.232876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.656124, 38.927799, 58.874317>,  <28.296684, 39.390053, 59.243271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.656124, 38.927799, 58.874317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.293398, 38.761227, 58.848190>,  <28.075762, 38.661282, 58.832516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.293398, 38.761227, 58.848190>,  <28.656124, 38.927799, 58.874317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.293398, 38.761227, 58.848190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217365, -0.329210, -0.918898,
		0.361159, -0.847469, 0.389051,
		-0.906817, -0.416434, -0.065313,
		28.021353, 38.636295, 58.828598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.717188, 38.170742, 58.633255>,  <28.656124, 38.927799, 58.874317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.717188, 38.170742, 58.633255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.344986, 38.286304, 58.543190>,  <28.121666, 38.355644, 58.489151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.344986, 38.286304, 58.543190>,  <28.717188, 38.170742, 58.633255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.344986, 38.286304, 58.543190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122334, -0.334287, -0.934498,
		-0.345262, -0.897095, 0.275709,
		-0.930499, 0.288918, -0.225161,
		28.065836, 38.372978, 58.475643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308203, 37.668221, 58.157417>,  <28.717188, 38.170742, 58.633255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308203, 37.668221, 58.157417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.134016, 38.023346, 58.097881>,  <28.029505, 38.236420, 58.062160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.134016, 38.023346, 58.097881>,  <28.308203, 37.668221, 58.157417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134016, 38.023346, 58.097881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081479, -0.203537, -0.975671,
		-0.896510, -0.412743, 0.160971,
		-0.435465, 0.887815, -0.148843,
		28.003376, 38.289692, 58.053226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.664774, 37.588867, 57.824158>,  <28.308203, 37.668221, 58.157417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.664774, 37.588867, 57.824158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.791323, 37.958984, 57.740498>,  <27.867252, 38.181053, 57.690300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.791323, 37.958984, 57.740498>,  <27.664774, 37.588867, 57.824158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.791323, 37.958984, 57.740498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283413, -0.118218, -0.951684,
		-0.905311, 0.360362, 0.224839,
		0.316370, 0.925291, -0.209155,
		27.886234, 38.236572, 57.677750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.343433, 37.804649, 57.195518>,  <27.664774, 37.588867, 57.824158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.343433, 37.804649, 57.195518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.624908, 38.088272, 57.213718>,  <27.793793, 38.258446, 57.224636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.624908, 38.088272, 57.213718>,  <27.343433, 37.804649, 57.195518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.624908, 38.088272, 57.213718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032986, 0.031365, -0.998963,
		-0.709746, 0.704457, -0.001317,
		0.703685, 0.709054, 0.045498,
		27.836014, 38.300987, 57.227367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.184963, 38.246048, 56.706123>,  <27.343433, 37.804649, 57.195518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.184963, 38.246048, 56.706123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.578941, 38.283562, 56.764214>,  <27.815329, 38.306072, 56.799068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.578941, 38.283562, 56.764214>,  <27.184963, 38.246048, 56.706123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.578941, 38.283562, 56.764214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139524, 0.064793, -0.988097,
		-0.102080, 0.993482, 0.050732,
		0.984943, 0.093787, 0.145229,
		27.874424, 38.311699, 56.807781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.376394, 38.774197, 56.218018>,  <27.184963, 38.246048, 56.706123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.376394, 38.774197, 56.218018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.722103, 38.598854, 56.316715>,  <27.929527, 38.493649, 56.375935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.722103, 38.598854, 56.316715>,  <27.376394, 38.774197, 56.218018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.722103, 38.598854, 56.316715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284416, 0.021263, -0.958465,
		0.414903, 0.898550, 0.143053,
		0.864270, -0.438356, 0.246740,
		27.981384, 38.467346, 56.390736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.754633, 39.147408, 55.912659>,  <27.376394, 38.774197, 56.218018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.754633, 39.147408, 55.912659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.982988, 38.823318, 55.965778>,  <28.120001, 38.628864, 55.997650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.982988, 38.823318, 55.965778>,  <27.754633, 39.147408, 55.912659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.982988, 38.823318, 55.965778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434213, 0.160674, -0.886365,
		0.696812, 0.563676, 0.443534,
		0.570887, -0.810218, 0.132796,
		28.154255, 38.580254, 56.005615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456390, 39.324970, 55.599731>,  <27.754633, 39.147408, 55.912659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456390, 39.324970, 55.599731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.433292, 38.925678, 55.593994>,  <28.419434, 38.686104, 55.590553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.433292, 38.925678, 55.593994>,  <28.456390, 39.324970, 55.599731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.433292, 38.925678, 55.593994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569713, -0.021151, -0.821572,
		0.819813, -0.055613, 0.569925,
		-0.057745, -0.998228, -0.014344,
		28.415970, 38.626209, 55.589691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.018074, 39.175434, 55.443268>,  <28.456390, 39.324970, 55.599731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.018074, 39.175434, 55.443268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.813608, 38.847748, 55.339272>,  <28.690928, 38.651134, 55.276875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.813608, 38.847748, 55.339272>,  <29.018074, 39.175434, 55.443268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813608, 38.847748, 55.339272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431240, 0.017207, -0.902073,
		0.743466, -0.573227, 0.344483,
		-0.511166, -0.819216, -0.259991,
		28.660259, 38.601982, 55.261272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.496271, 38.644371, 55.186337>,  <29.018074, 39.175434, 55.443268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.496271, 38.644371, 55.186337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.138302, 38.560509, 55.028778>,  <28.923519, 38.510193, 54.934242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.138302, 38.560509, 55.028778>,  <29.496271, 38.644371, 55.186337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138302, 38.560509, 55.028778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409454, -0.034964, -0.911661,
		0.177365, -0.977150, 0.117135,
		-0.894924, -0.209658, -0.393896,
		28.869825, 38.497612, 54.910610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603426, 38.102612, 54.750454>,  <29.496271, 38.644371, 55.186337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603426, 38.102612, 54.750454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.256252, 38.255161, 54.623180>,  <29.047947, 38.346691, 54.546814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.256252, 38.255161, 54.623180>,  <29.603426, 38.102612, 54.750454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.256252, 38.255161, 54.623180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257040, -0.203271, -0.944781,
		-0.424993, -0.901795, 0.078398,
		-0.867935, 0.381374, -0.318186,
		28.995872, 38.369572, 54.527725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334959, 37.672546, 54.261894>,  <29.603426, 38.102612, 54.750454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.334959, 37.672546, 54.261894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.156240, 38.018131, 54.168995>,  <29.049009, 38.225483, 54.113255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.156240, 38.018131, 54.168995>,  <29.334959, 37.672546, 54.261894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156240, 38.018131, 54.168995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230553, -0.139633, -0.962989,
		-0.864418, -0.483804, -0.136802,
		-0.446796, 0.863966, -0.232244,
		29.022202, 38.277321, 54.099323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.872988, 37.543133, 53.770573>,  <29.334959, 37.672546, 54.261894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.872988, 37.543133, 53.770573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.931667, 37.937183, 53.734791>,  <28.966875, 38.173615, 53.713322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.931667, 37.937183, 53.734791>,  <28.872988, 37.543133, 53.770573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.931667, 37.937183, 53.734791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054533, -0.082237, -0.995120,
		-0.987677, 0.150859, 0.041658,
		0.146697, 0.985129, -0.089451,
		28.975676, 38.232723, 53.707954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384939, 37.733837, 53.297905>,  <28.872988, 37.543133, 53.770573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384939, 37.733837, 53.297905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.650965, 38.031979, 53.279423>,  <28.810579, 38.210865, 53.268333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.650965, 38.031979, 53.279423>,  <28.384939, 37.733837, 53.297905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.650965, 38.031979, 53.279423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006129, -0.067313, -0.997713,
		-0.746761, 0.663260, -0.049336,
		0.665064, 0.745356, -0.046202,
		28.850485, 38.255585, 53.265564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.194798, 38.214447, 52.789845>,  <28.384939, 37.733837, 53.297905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.194798, 38.214447, 52.789845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.592430, 38.240376, 52.824722>,  <28.831009, 38.255932, 52.845650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.592430, 38.240376, 52.824722>,  <28.194798, 38.214447, 52.789845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592430, 38.240376, 52.824722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098482, -0.198606, -0.975119,
		-0.045894, 0.977933, -0.203814,
		0.994080, 0.064824, 0.087194,
		28.890654, 38.259823, 52.850880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351263, 38.395329, 52.148235>,  <28.194798, 38.214447, 52.789845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351263, 38.395329, 52.148235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.715816, 38.313675, 52.291180>,  <28.934549, 38.264683, 52.376945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.715816, 38.313675, 52.291180>,  <28.351263, 38.395329, 52.148235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.715816, 38.313675, 52.291180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336564, -0.130065, -0.932635,
		0.236866, 0.970263, -0.049833,
		0.911383, -0.204137, 0.357364,
		28.989231, 38.252434, 52.398388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755960, 38.761906, 51.741760>,  <28.351263, 38.395329, 52.148235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.755960, 38.761906, 51.741760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.012642, 38.502502, 51.905540>,  <29.166651, 38.346859, 52.003807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.012642, 38.502502, 51.905540>,  <28.755960, 38.761906, 51.741760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.012642, 38.502502, 51.905540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384135, -0.190310, -0.903450,
		0.663819, 0.737032, 0.126993,
		0.641704, -0.648510, 0.409451,
		29.205153, 38.307949, 52.028378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472692, 38.954021, 51.557362>,  <28.755960, 38.761906, 51.741760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472692, 38.954021, 51.557362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.437284, 38.564255, 51.639999>,  <29.416040, 38.330395, 51.689583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.437284, 38.564255, 51.639999>,  <29.472692, 38.954021, 51.557362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.437284, 38.564255, 51.639999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323979, -0.224299, -0.919091,
		0.941914, -0.014422, 0.335544,
		-0.088518, -0.974414, 0.206598,
		29.410728, 38.271931, 51.701981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171595, 38.687519, 51.417885>,  <29.472692, 38.954021, 51.557362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171595, 38.687519, 51.417885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.923201, 38.373989, 51.418064>,  <29.774164, 38.185871, 51.418171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.923201, 38.373989, 51.418064>,  <30.171595, 38.687519, 51.417885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923201, 38.373989, 51.418064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363327, -0.288357, -0.885914,
		0.694530, -0.549975, 0.463849,
		-0.620985, -0.783822, 0.000452,
		29.736906, 38.138844, 51.418201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599407, 38.098827, 51.307472>,  <30.171595, 38.687519, 51.417885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599407, 38.098827, 51.307472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.230673, 37.960464, 51.237530>,  <30.009432, 37.877449, 51.195564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.230673, 37.960464, 51.237530>,  <30.599407, 38.098827, 51.307472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.230673, 37.960464, 51.237530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358914, -0.591561, -0.721967,
		0.146295, -0.728291, 0.669470,
		-0.921834, -0.345902, -0.174852,
		29.954123, 37.856693, 51.185074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733246, 37.331154, 51.177441>,  <30.599407, 38.098827, 51.307472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733246, 37.331154, 51.177441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.373665, 37.414032, 51.023064>,  <30.157917, 37.463760, 50.930435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.373665, 37.414032, 51.023064>,  <30.733246, 37.331154, 51.177441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373665, 37.414032, 51.023064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175385, -0.637117, -0.750548,
		-0.401404, -0.742396, 0.536398,
		-0.898952, 0.207197, -0.385946,
		30.103979, 37.476192, 50.907280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458719, 36.687782, 50.853348>,  <30.733246, 37.331154, 51.177441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458719, 36.687782, 50.853348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.224512, 36.965446, 50.685871>,  <30.083988, 37.132046, 50.585384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.224512, 36.965446, 50.685871>,  <30.458719, 36.687782, 50.853348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224512, 36.965446, 50.685871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193351, -0.381999, -0.903710,
		-0.787263, -0.610095, 0.089451,
		-0.585519, 0.694162, -0.418696,
		30.048857, 37.173695, 50.560261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.014107, 36.292561, 50.359604>,  <30.458719, 36.687782, 50.853348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.014107, 36.292561, 50.359604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.073879, 36.678059, 50.271187>,  <30.109743, 36.909359, 50.218136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.073879, 36.678059, 50.271187>,  <30.014107, 36.292561, 50.359604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.073879, 36.678059, 50.271187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139928, -0.241914, -0.960155,
		-0.978821, 0.112547, -0.171005,
		0.149431, 0.963748, -0.221042,
		30.118708, 36.967182, 50.204876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.564310, 36.471451, 49.798981>,  <30.014107, 36.292561, 50.359604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.564310, 36.471451, 49.798981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.843739, 36.756866, 49.777611>,  <30.011396, 36.928116, 49.764790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.843739, 36.756866, 49.777611>,  <29.564310, 36.471451, 49.798981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.843739, 36.756866, 49.777611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163053, -0.231436, -0.959089,
		-0.696715, 0.661282, -0.278020,
		0.698572, 0.713543, -0.053421,
		30.053310, 36.970928, 49.761585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.261915, 36.970230, 49.237396>,  <29.564310, 36.471451, 49.798981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.261915, 36.970230, 49.237396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.661091, 36.991573, 49.251644>,  <29.900597, 37.004379, 49.260193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.661091, 36.991573, 49.251644>,  <29.261915, 36.970230, 49.237396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.661091, 36.991573, 49.251644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054595, -0.414647, -0.908343,
		-0.033700, 0.908416, -0.416706,
		0.997940, 0.053361, 0.035621,
		29.960472, 37.007580, 49.262329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485222, 37.292694, 48.518608>,  <29.261915, 36.970230, 49.237396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485222, 37.292694, 48.518608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.800776, 37.109760, 48.682808>,  <29.990108, 37.000000, 48.781326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.800776, 37.109760, 48.682808>,  <29.485222, 37.292694, 48.518608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.800776, 37.109760, 48.682808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171895, -0.477102, -0.861873,
		0.590011, 0.750482, -0.297766,
		0.788885, -0.457330, 0.410500,
		30.037441, 36.972561, 48.805958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706957, 37.060558, 47.901875>,  <29.485222, 37.292694, 48.518608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.706957, 37.060558, 47.901875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.951694, 36.872849, 48.156567>,  <30.098537, 36.760223, 48.309380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.951694, 36.872849, 48.156567>,  <29.706957, 37.060558, 47.901875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.951694, 36.872849, 48.156567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418277, -0.491267, -0.764003,
		0.671333, 0.733781, -0.104292,
		0.611846, -0.469278, 0.636728,
		30.135248, 36.732063, 48.347584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272156, 37.027470, 47.564461>,  <29.706957, 37.060558, 47.901875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272156, 37.027470, 47.564461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.306580, 36.734150, 47.834232>,  <30.327234, 36.558159, 47.996098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.306580, 36.734150, 47.834232>,  <30.272156, 37.027470, 47.564461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306580, 36.734150, 47.834232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267038, -0.635197, -0.724718,
		0.959836, 0.242468, 0.141156,
		0.086059, -0.733304, 0.674433,
		30.332397, 36.514160, 48.036564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905375, 36.730289, 47.412640>,  <30.272156, 37.027470, 47.564461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905375, 36.730289, 47.412640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.664175, 36.473278, 47.601765>,  <30.519455, 36.319073, 47.715240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.664175, 36.473278, 47.601765>,  <30.905375, 36.730289, 47.412640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664175, 36.473278, 47.601765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183520, -0.688518, -0.701615,
		0.776347, -0.336302, 0.533092,
		-0.602998, -0.642529, 0.472811,
		30.483276, 36.280518, 47.743607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338570, 36.221012, 47.562496>,  <30.905375, 36.730289, 47.412640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.338570, 36.221012, 47.562496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.980604, 36.054726, 47.627373>,  <30.765825, 35.954952, 47.666298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.980604, 36.054726, 47.627373>,  <31.338570, 36.221012, 47.562496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980604, 36.054726, 47.627373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336265, -0.867181, -0.367319,
		0.293350, -0.274180, 0.915844,
		-0.894915, -0.415719, 0.162190,
		30.712130, 35.930008, 47.676029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456455, 35.595123, 47.835155>,  <31.338570, 36.221012, 47.562496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456455, 35.595123, 47.835155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.087885, 35.532162, 47.693058>,  <30.866743, 35.494385, 47.607800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.087885, 35.532162, 47.693058>,  <31.456455, 35.595123, 47.835155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087885, 35.532162, 47.693058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249968, -0.940093, -0.231823,
		-0.297471, -0.302407, 0.905572,
		-0.921426, -0.157403, -0.355243,
		30.811457, 35.484940, 47.586487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336758, 35.004650, 48.103001>,  <31.456455, 35.595123, 47.835155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336758, 35.004650, 48.103001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.073761, 35.033520, 47.803001>,  <30.915964, 35.050842, 47.623001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.073761, 35.033520, 47.803001>,  <31.336758, 35.004650, 48.103001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073761, 35.033520, 47.803001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183789, -0.949970, -0.252544,
		-0.730704, -0.303886, 0.611330,
		-0.657490, 0.072179, -0.749998,
		30.876514, 35.055172, 47.578003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735941, 34.711205, 48.351643>,  <31.336758, 35.004650, 48.103001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735941, 34.711205, 48.351643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.740746, 34.717548, 47.951721>,  <30.743628, 34.721355, 47.711769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.740746, 34.717548, 47.951721>,  <30.735941, 34.711205, 48.351643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740746, 34.717548, 47.951721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117287, -0.992995, -0.014341,
		-0.993026, -0.117091, -0.013788,
		0.012012, 0.015858, -0.999802,
		30.744349, 34.722305, 47.651779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366007, 34.172104, 48.069313>,  <30.735941, 34.711205, 48.351643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366007, 34.172104, 48.069313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.574350, 34.263210, 47.740234>,  <30.699356, 34.317875, 47.542786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.574350, 34.263210, 47.740234>,  <30.366007, 34.172104, 48.069313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574350, 34.263210, 47.740234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264488, -0.959380, -0.098161,
		-0.811637, -0.166465, -0.559942,
		0.520857, 0.227769, -0.822696,
		30.730608, 34.331543, 47.493427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118383, 33.748501, 47.582489>,  <30.366007, 34.172104, 48.069313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118383, 33.748501, 47.582489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.490145, 33.866688, 47.494034>,  <30.713202, 33.937599, 47.440960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.490145, 33.866688, 47.494034>,  <30.118383, 33.748501, 47.582489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490145, 33.866688, 47.494034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277494, -0.954512, -0.109104,
		-0.243317, 0.040037, -0.969120,
		0.929405, 0.295472, -0.221139,
		30.768967, 33.955330, 47.427692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390987, 33.151249, 47.291775>,  <30.118383, 33.748501, 47.582489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390987, 33.151249, 47.291775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.724985, 33.371220, 47.284103>,  <30.925385, 33.503201, 47.279499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.724985, 33.371220, 47.284103>,  <30.390987, 33.151249, 47.291775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.724985, 33.371220, 47.284103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526415, -0.808479, -0.263153,
		-0.160222, 0.209634, -0.964563,
		0.834995, 0.549923, -0.019182,
		30.975483, 33.536198, 47.278347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651730, 33.151024, 46.598869>,  <30.390987, 33.151249, 47.291775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651730, 33.151024, 46.598869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.937067, 33.233509, 46.866783>,  <31.108271, 33.283001, 47.027531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.937067, 33.233509, 46.866783>,  <30.651730, 33.151024, 46.598869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937067, 33.233509, 46.866783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560786, -0.741149, -0.369076,
		0.420305, 0.638886, -0.644335,
		0.713346, 0.206210, 0.669787,
		31.151072, 33.295372, 47.067719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318409, 33.075920, 46.257835>,  <30.651730, 33.151024, 46.598869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318409, 33.075920, 46.257835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.421053, 33.051559, 46.643673>,  <31.482639, 33.036945, 46.875175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.421053, 33.051559, 46.643673>,  <31.318409, 33.075920, 46.257835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421053, 33.051559, 46.643673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663827, -0.714274, -0.221690,
		0.702485, 0.697212, -0.142864,
		0.256609, -0.060898, 0.964595,
		31.498035, 33.033291, 46.933052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082363, 33.009506, 46.165703>,  <31.318409, 33.075920, 46.257835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082363, 33.009506, 46.165703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.940531, 32.882645, 46.517540>,  <31.855431, 32.806526, 46.728642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.940531, 32.882645, 46.517540>,  <32.082363, 33.009506, 46.165703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940531, 32.882645, 46.517540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455737, -0.880031, -0.133597,
		0.816440, 0.353492, 0.456583,
		-0.354582, -0.317156, 0.879593,
		31.834156, 32.787498, 46.781418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584248, 32.730865, 46.607613>,  <32.082363, 33.009506, 46.165703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584248, 32.730865, 46.607613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.234615, 32.556904, 46.694187>,  <32.024837, 32.452526, 46.746132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.234615, 32.556904, 46.694187>,  <32.584248, 32.730865, 46.607613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234615, 32.556904, 46.694187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424612, -0.900430, -0.094506,
		0.235987, 0.009296, 0.971712,
		-0.874080, -0.434902, 0.216437,
		31.972391, 32.426434, 46.759117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631680, 31.977167, 46.692287>,  <32.584248, 32.730865, 46.607613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631680, 31.977167, 46.692287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.397644, 31.852070, 46.991581>,  <32.257221, 31.777012, 47.171158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.397644, 31.852070, 46.991581>,  <32.631680, 31.977167, 46.692287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397644, 31.852070, 46.991581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784693, 0.014624, 0.619711,
		-0.204751, 0.949726, 0.236850,
		-0.585092, -0.312741, 0.748238,
		32.222115, 31.758247, 47.216053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484241, 32.521511, 47.326603>,  <32.631680, 31.977167, 46.692287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484241, 32.521511, 47.326603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.502338, 32.130394, 47.408463>,  <32.513195, 31.895725, 47.457577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.502338, 32.130394, 47.408463>,  <32.484241, 32.521511, 47.326603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502338, 32.130394, 47.408463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918665, 0.121200, 0.375987,
		-0.392439, 0.170991, 0.903744,
		0.045244, -0.977790, 0.204647,
		32.515911, 31.837057, 47.469856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971230, 32.366226, 47.913303>,  <32.484241, 32.521511, 47.326603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971230, 32.366226, 47.913303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.941158, 32.026398, 47.704464>,  <32.923115, 31.822502, 47.579163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.941158, 32.026398, 47.704464>,  <32.971230, 32.366226, 47.913303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941158, 32.026398, 47.704464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986392, -0.140129, 0.085994,
		-0.146219, -0.508525, 0.848541,
		-0.075175, -0.849568, -0.522094,
		32.918606, 31.771526, 47.547836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287800, 31.838392, 48.292187>,  <32.971230, 32.366226, 47.913303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287800, 31.838392, 48.292187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.323559, 31.768246, 47.900013>,  <33.345016, 31.726158, 47.664707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.323559, 31.768246, 47.900013>,  <33.287800, 31.838392, 48.292187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323559, 31.768246, 47.900013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981126, -0.153957, 0.117000,
		-0.171462, -0.972391, 0.158292,
		0.089400, -0.175365, -0.980436,
		33.350380, 31.715635, 47.605881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888584, 31.405800, 48.169373>,  <33.287800, 31.838392, 48.292187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888584, 31.405800, 48.169373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.819576, 31.572512, 47.812378>,  <33.778172, 31.672539, 47.598183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.819576, 31.572512, 47.812378>,  <33.888584, 31.405800, 48.169373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819576, 31.572512, 47.812378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968993, -0.090903, -0.229759,
		-0.176889, -0.904451, -0.388174,
		-0.172520, 0.416780, -0.892486,
		33.767818, 31.697546, 47.544632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232433, 30.989822, 47.671124>,  <33.888584, 31.405800, 48.169373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232433, 30.989822, 47.671124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.214245, 31.362337, 47.526550>,  <34.203331, 31.585846, 47.439804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.214245, 31.362337, 47.526550>,  <34.232433, 30.989822, 47.671124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214245, 31.362337, 47.526550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996919, 0.019151, -0.076063,
		-0.063915, -0.363781, -0.929289,
		-0.045467, 0.931288, -0.361436,
		34.200603, 31.641724, 47.418118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683506, 31.030762, 47.124424>,  <34.232433, 30.989822, 47.671124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683506, 31.030762, 47.124424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.620800, 31.390551, 47.287579>,  <34.583176, 31.606424, 47.385471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.620800, 31.390551, 47.287579>,  <34.683506, 31.030762, 47.124424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620800, 31.390551, 47.287579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974910, 0.074844, 0.209641,
		0.158038, 0.430520, -0.888637,
		-0.156763, 0.899473, 0.407890,
		34.573772, 31.660393, 47.409946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153435, 31.498501, 46.794411>,  <34.683506, 31.030762, 47.124424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153435, 31.498501, 46.794411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.050503, 31.660231, 47.145477>,  <34.988743, 31.757269, 47.356117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.050503, 31.660231, 47.145477>,  <35.153435, 31.498501, 46.794411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050503, 31.660231, 47.145477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963203, 0.034391, 0.266565,
		0.077596, 0.913968, -0.398297,
		-0.257330, 0.404325, 0.877669,
		34.973305, 31.781528, 47.408779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564819, 32.073334, 46.839169>,  <35.153435, 31.498501, 46.794411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564819, 32.073334, 46.839169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.438923, 32.005013, 47.212643>,  <35.363384, 31.964020, 47.436726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.438923, 32.005013, 47.212643>,  <35.564819, 32.073334, 46.839169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438923, 32.005013, 47.212643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937308, 0.099151, 0.334100,
		-0.149642, 0.980303, 0.128891,
		-0.314740, -0.170806, 0.933683,
		35.344501, 31.953772, 47.492748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819462, 32.637230, 47.271790>,  <35.564819, 32.073334, 46.839169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819462, 32.637230, 47.271790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.744766, 32.333702, 47.521370>,  <35.699947, 32.151585, 47.671120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.744766, 32.333702, 47.521370>,  <35.819462, 32.637230, 47.271790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744766, 32.333702, 47.521370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909403, 0.106741, 0.401987,
		-0.371638, 0.642491, 0.670142,
		-0.186742, -0.758822, 0.623952,
		35.688744, 32.106056, 47.708557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229031, 32.810329, 47.812923>,  <35.819462, 32.637230, 47.271790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229031, 32.810329, 47.812923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.134129, 32.424923, 47.862492>,  <36.077187, 32.193680, 47.892231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.134129, 32.424923, 47.862492>,  <36.229031, 32.810329, 47.812923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134129, 32.424923, 47.862492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879854, -0.159058, 0.447837,
		-0.411787, 0.215279, 0.885487,
		-0.237253, -0.963512, 0.123916,
		36.062954, 32.135868, 47.899666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268463, 32.710411, 48.526569>,  <36.229031, 32.810329, 47.812923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268463, 32.710411, 48.526569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.327919, 32.378937, 48.310726>,  <36.363590, 32.180050, 48.181221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.327919, 32.378937, 48.310726>,  <36.268463, 32.710411, 48.526569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327919, 32.378937, 48.310726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925130, -0.076243, 0.371915,
		-0.349344, -0.554491, 0.755313,
		0.148636, -0.828689, -0.539612,
		36.372509, 32.130329, 48.148842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785557, 32.431423, 48.950100>,  <36.268463, 32.710411, 48.526569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785557, 32.431423, 48.950100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.790871, 32.220818, 48.610073>,  <36.794060, 32.094456, 48.406059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.790871, 32.220818, 48.610073>,  <36.785557, 32.431423, 48.950100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790871, 32.220818, 48.610073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980861, -0.158296, 0.113374,
		-0.194255, -0.835301, 0.514332,
		0.013285, -0.526512, -0.850064,
		36.794857, 32.062862, 48.355053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082481, 31.796320, 49.155167>,  <36.785557, 32.431423, 48.950100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082481, 31.796320, 49.155167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.132969, 31.824442, 48.759365>,  <37.163261, 31.841314, 48.521885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.132969, 31.824442, 48.759365>,  <37.082481, 31.796320, 49.155167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132969, 31.824442, 48.759365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978487, -0.172913, 0.112532,
		-0.163188, -0.982425, -0.090617,
		0.126223, 0.070304, -0.989507,
		37.170837, 31.845533, 48.462513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527626, 31.204700, 48.964561>,  <37.082481, 31.796320, 49.155167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527626, 31.204700, 48.964561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.589745, 31.441422, 48.648170>,  <37.627018, 31.583454, 48.458336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.589745, 31.441422, 48.648170>,  <37.527626, 31.204700, 48.964561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589745, 31.441422, 48.648170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986092, -0.140844, 0.088231,
		-0.059189, -0.793681, -0.605448,
		0.155301, 0.591805, -0.790979,
		37.636333, 31.618963, 48.410877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144302, 30.879202, 48.559978>,  <37.527626, 31.204700, 48.964561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144302, 30.879202, 48.559978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.110615, 31.260855, 48.445061>,  <38.090401, 31.489847, 48.376110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.110615, 31.260855, 48.445061>,  <38.144302, 30.879202, 48.559978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110615, 31.260855, 48.445061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978501, 0.024717, -0.204758,
		-0.188265, -0.298362, -0.935701,
		-0.084220, 0.954133, -0.287294,
		38.085350, 31.547094, 48.358871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694572, 30.954981, 48.078548>,  <38.144302, 30.879202, 48.559978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694572, 30.954981, 48.078548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.600807, 31.341236, 48.123436>,  <38.544548, 31.572989, 48.150368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.600807, 31.341236, 48.123436>,  <38.694572, 30.954981, 48.078548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600807, 31.341236, 48.123436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941576, 0.254244, -0.220895,
		-0.241834, 0.053878, -0.968821,
		-0.234415, 0.965638, 0.112215,
		38.530483, 31.630928, 48.157101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818489, 31.345482, 47.496452>,  <38.694572, 30.954981, 48.078548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818489, 31.345482, 47.496452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.840450, 31.597231, 47.806519>,  <38.853626, 31.748280, 47.992558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.840450, 31.597231, 47.806519>,  <38.818489, 31.345482, 47.496452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840450, 31.597231, 47.806519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883229, 0.331486, -0.331696,
		-0.465716, 0.702857, -0.537681,
		0.054901, 0.629372, 0.775163,
		38.856922, 31.786043, 48.039066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039238, 31.971134, 47.242397>,  <38.818489, 31.345482, 47.496452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039238, 31.971134, 47.242397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.143051, 31.964817, 47.628639>,  <39.205338, 31.961027, 47.860386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.143051, 31.964817, 47.628639>,  <39.039238, 31.971134, 47.242397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143051, 31.964817, 47.628639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869608, 0.438697, -0.226553,
		-0.420031, 0.898496, 0.127588,
		0.259530, -0.015793, 0.965606,
		39.220909, 31.960079, 47.918320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260292, 32.717529, 47.650223>,  <39.039238, 31.971134, 47.242397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260292, 32.717529, 47.650223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.421726, 32.390720, 47.814945>,  <39.518589, 32.194633, 47.913780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.421726, 32.390720, 47.814945>,  <39.260292, 32.717529, 47.650223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421726, 32.390720, 47.814945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913797, 0.337457, -0.226049,
		0.045720, 0.467541, 0.882788,
		0.403590, -0.817024, 0.411809,
		39.542805, 32.145615, 47.938488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906841, 32.851696, 47.597679>,  <39.260292, 32.717529, 47.650223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906841, 32.851696, 47.597679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.919491, 32.516720, 47.815926>,  <39.927082, 32.315735, 47.946873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.919491, 32.516720, 47.815926>,  <39.906841, 32.851696, 47.597679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919491, 32.516720, 47.815926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986979, -0.059968, -0.149254,
		0.157710, 0.543232, 0.824637,
		0.031627, -0.837438, 0.545616,
		39.928978, 32.265488, 47.979610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357830, 32.941154, 48.202717>,  <39.906841, 32.851696, 47.597679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357830, 32.941154, 48.202717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.329578, 32.612400, 47.976612>,  <40.312626, 32.415146, 47.840950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.329578, 32.612400, 47.976612>,  <40.357830, 32.941154, 48.202717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329578, 32.612400, 47.976612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945046, 0.126208, -0.301594,
		0.319216, -0.555497, 0.767805,
		-0.070632, -0.821885, -0.565258,
		40.308388, 32.365833, 47.807034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901417, 32.472080, 48.415451>,  <40.357830, 32.941154, 48.202717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901417, 32.472080, 48.415451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.784954, 32.441017, 48.034042>,  <40.715076, 32.422379, 47.805199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.784954, 32.441017, 48.034042>,  <40.901417, 32.472080, 48.415451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784954, 32.441017, 48.034042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917715, 0.258875, -0.301303,
		0.270240, -0.962784, -0.004106,
		-0.291153, -0.077656, -0.953520,
		40.697609, 32.417721, 47.747986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.384506, 32.139671, 48.035667>,  <40.901417, 32.472080, 48.415451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.384506, 32.139671, 48.035667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.181992, 32.359337, 47.769707>,  <41.060482, 32.491135, 47.610130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.181992, 32.359337, 47.769707>,  <41.384506, 32.139671, 48.035667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.181992, 32.359337, 47.769707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857286, 0.236975, -0.457059,
		-0.093434, -0.801414, -0.590766,
		-0.506291, 0.549161, -0.664900,
		41.030106, 32.524086, 47.570236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674694, 32.006836, 47.414131>,  <41.384506, 32.139671, 48.035667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674694, 32.006836, 47.414131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.471397, 32.334820, 47.308784>,  <41.349419, 32.531609, 47.245579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.471397, 32.334820, 47.308784>,  <41.674694, 32.006836, 47.414131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.471397, 32.334820, 47.308784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797794, 0.333077, -0.502578,
		-0.324374, -0.465538, -0.823441,
		-0.508239, 0.819960, -0.263362,
		41.318924, 32.580807, 47.229774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680637, 32.082806, 46.650875>,  <41.674694, 32.006836, 47.414131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680637, 32.082806, 46.650875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.636791, 32.434269, 46.836754>,  <41.610481, 32.645149, 46.948280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.636791, 32.434269, 46.836754>,  <41.680637, 32.082806, 46.650875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.636791, 32.434269, 46.836754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747934, 0.380832, -0.543656,
		-0.654659, 0.287964, -0.698926,
		-0.109620, 0.878660, 0.464694,
		41.603905, 32.697868, 46.976162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.470142, 32.627228, 46.191643>,  <41.680637, 32.082806, 46.650875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.470142, 32.627228, 46.191643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.691559, 32.789875, 46.482368>,  <41.824409, 32.887463, 46.656803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.691559, 32.789875, 46.482368>,  <41.470142, 32.627228, 46.191643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691559, 32.789875, 46.482368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641673, 0.348097, -0.683435,
		-0.530897, 0.844685, -0.068229,
		0.553537, 0.406615, 0.726815,
		41.857620, 32.911858, 46.700413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502705, 33.311707, 46.004856>,  <41.470142, 32.627228, 46.191643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502705, 33.311707, 46.004856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.834267, 33.200314, 46.198914>,  <42.033203, 33.133480, 46.315350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.834267, 33.200314, 46.198914>,  <41.502705, 33.311707, 46.004856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834267, 33.200314, 46.198914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558828, 0.451147, -0.695829,
		-0.025098, 0.847889, 0.529580,
		0.828904, -0.278480, 0.485147,
		42.082939, 33.116768, 46.344460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284721, 33.564854, 45.421188>,  <41.502705, 33.311707, 46.004856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284721, 33.564854, 45.421188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.115421, 33.881981, 45.245785>,  <41.013840, 34.072258, 45.140541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.115421, 33.881981, 45.245785>,  <41.284721, 33.564854, 45.421188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115421, 33.881981, 45.245785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322605, -0.584160, -0.744771,
		-0.846631, -0.173760, 0.503015,
		-0.423252, 0.792821, -0.438511,
		40.988445, 34.119827, 45.114231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522564, 34.065880, 45.967075>,  <41.284721, 33.564854, 45.421188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522564, 34.065880, 45.967075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.703568, 33.882412, 46.272980>,  <41.812168, 33.772331, 46.456520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.703568, 33.882412, 46.272980>,  <41.522564, 34.065880, 45.967075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.703568, 33.882412, 46.272980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451740, -0.621506, -0.640048,
		0.768873, 0.635100, -0.074038,
		0.452510, -0.458670, 0.764759,
		41.839321, 33.744812, 46.502407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205090, 34.032181, 45.700375>,  <41.522564, 34.065880, 45.967075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205090, 34.032181, 45.700375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.150063, 33.722519, 45.947521>,  <42.117046, 33.536720, 46.095810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.150063, 33.722519, 45.947521>,  <42.205090, 34.032181, 45.700375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.150063, 33.722519, 45.947521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628109, -0.550518, -0.549917,
		0.765868, 0.312435, 0.561988,
		-0.137571, -0.774154, 0.617867,
		42.108791, 33.490273, 46.132881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861000, 34.134029, 45.014099>,  <42.205090, 34.032181, 45.700375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861000, 34.134029, 45.014099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.507053, 34.303837, 45.090824>,  <41.294685, 34.405720, 45.136860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.507053, 34.303837, 45.090824>,  <41.861000, 34.134029, 45.014099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507053, 34.303837, 45.090824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448471, -0.664939, -0.597268,
		-0.126006, -0.614527, 0.778768,
		-0.884871, 0.424514, 0.191812,
		41.241592, 34.431190, 45.148369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.488255, 33.691822, 44.623020>,  <41.861000, 34.134029, 45.014099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.488255, 33.691822, 44.623020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.709721, 34.024792, 44.613873>,  <42.842602, 34.224575, 44.608383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.709721, 34.024792, 44.613873>,  <42.488255, 33.691822, 44.623020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.709721, 34.024792, 44.613873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208890, 0.112243, -0.971477,
		-0.806115, 0.542649, 0.236030,
		0.553664, 0.832426, -0.022873,
		42.875820, 34.274521, 44.607010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092045, 34.284557, 44.299442>,  <42.488255, 33.691822, 44.623020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092045, 34.284557, 44.299442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.479263, 34.368984, 44.245281>,  <42.711594, 34.419640, 44.212784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.479263, 34.368984, 44.245281>,  <42.092045, 34.284557, 44.299442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.479263, 34.368984, 44.245281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157703, 0.092578, -0.983138,
		-0.194973, 0.973077, 0.122905,
		0.968047, 0.211068, -0.135407,
		42.769676, 34.432304, 44.204659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200409, 35.010929, 44.019398>,  <42.092045, 34.284557, 44.299442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200409, 35.010929, 44.019398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.541111, 34.823902, 43.924828>,  <42.745533, 34.711685, 43.868084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.541111, 34.823902, 43.924828>,  <42.200409, 35.010929, 44.019398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541111, 34.823902, 43.924828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124695, 0.257378, -0.958231,
		0.508885, 0.845660, 0.160921,
		0.851755, -0.467564, -0.236425,
		42.796638, 34.683632, 43.853901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.737644, 35.420746, 43.652637>,  <42.200409, 35.010929, 44.019398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.737644, 35.420746, 43.652637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.765270, 35.052334, 43.499313>,  <42.781845, 34.831287, 43.407318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.765270, 35.052334, 43.499313>,  <42.737644, 35.420746, 43.652637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.765270, 35.052334, 43.499313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006791, 0.384655, -0.923036,
		0.997589, 0.061146, 0.032820,
		0.069065, -0.921033, -0.383312,
		42.785988, 34.776024, 43.384319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.429295, 35.630852, 43.635048>,  <42.737644, 35.420746, 43.652637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.429295, 35.630852, 43.635048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.494823, 35.448048, 43.984745>,  <43.534142, 35.338367, 44.194565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.494823, 35.448048, 43.984745>,  <43.429295, 35.630852, 43.635048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.494823, 35.448048, 43.984745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634307, 0.727528, 0.261453,
		-0.755525, 0.511709, 0.409067,
		0.163820, -0.457008, 0.874246,
		43.543968, 35.310944, 44.247021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.859177, 35.020378, 43.716190>,  <43.429295, 35.630852, 43.635048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.859177, 35.020378, 43.716190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.646099, 34.741390, 43.524452>,  <43.518253, 34.573997, 43.409409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.646099, 34.741390, 43.524452>,  <43.859177, 35.020378, 43.716190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.646099, 34.741390, 43.524452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330569, 0.349926, -0.876513,
		0.779076, -0.625373, 0.044156,
		-0.532696, -0.697467, -0.479348,
		43.486290, 34.532150, 43.380650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.410110, 34.695953, 43.311817>,  <43.859177, 35.020378, 43.716190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.410110, 34.695953, 43.311817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.029266, 34.696369, 43.189522>,  <43.800758, 34.696617, 43.116146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.029266, 34.696369, 43.189522>,  <44.410110, 34.695953, 43.311817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.029266, 34.696369, 43.189522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281382, 0.394122, -0.874924,
		0.119590, -0.919057, -0.375542,
		-0.952114, 0.001038, -0.305739,
		43.743633, 34.696682, 43.097801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.408516, 34.446026, 42.637379>,  <44.410110, 34.695953, 43.311817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.408516, 34.446026, 42.637379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.085289, 34.680885, 42.656506>,  <43.891354, 34.821800, 42.667980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.085289, 34.680885, 42.656506>,  <44.408516, 34.446026, 42.637379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.085289, 34.680885, 42.656506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281484, 0.456148, -0.844213,
		-0.517489, -0.668720, -0.533871,
		-0.808066, 0.587147, 0.047818,
		43.842869, 34.857029, 42.670853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.944363, 34.469387, 42.000793>,  <44.408516, 34.446026, 42.637379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.944363, 34.469387, 42.000793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.974457, 34.801529, 42.221645>,  <43.992512, 35.000816, 42.354156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.974457, 34.801529, 42.221645>,  <43.944363, 34.469387, 42.000793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.974457, 34.801529, 42.221645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522586, 0.438738, -0.731035,
		-0.849261, 0.343534, -0.400924,
		0.075235, 0.830357, 0.552129,
		43.997028, 35.050636, 42.387283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.761608, 35.069389, 41.502808>,  <43.944363, 34.469387, 42.000793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.761608, 35.069389, 41.502808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.001148, 35.215019, 41.788136>,  <44.144875, 35.302399, 41.959332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.001148, 35.215019, 41.788136>,  <43.761608, 35.069389, 41.502808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.001148, 35.215019, 41.788136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625081, 0.344313, -0.700516,
		-0.500647, 0.865388, -0.021385,
		0.598855, 0.364078, 0.713316,
		44.180805, 35.324242, 42.002129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.861805, 35.726421, 41.251408>,  <43.761608, 35.069389, 41.502808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.861805, 35.726421, 41.251408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.142788, 35.602951, 41.507931>,  <44.311378, 35.528870, 41.661846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.142788, 35.602951, 41.507931>,  <43.861805, 35.726421, 41.251408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.142788, 35.602951, 41.507931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709241, 0.228345, -0.666960,
		0.059434, 0.923352, 0.379327,
		0.702456, -0.308674, 0.641307,
		44.353523, 35.510349, 41.700321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.335758, 36.258514, 41.423580>,  <43.861805, 35.726421, 41.251408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.335758, 36.258514, 41.423580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.523159, 35.906307, 41.452393>,  <44.635601, 35.694981, 41.469681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.523159, 35.906307, 41.452393>,  <44.335758, 36.258514, 41.423580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.523159, 35.906307, 41.452393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639322, 0.281640, -0.715505,
		0.609731, 0.381266, 0.694885,
		0.468505, -0.880520, 0.072027,
		44.663712, 35.642151, 41.473999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.883507, 36.518055, 41.197510>,  <44.335758, 36.258514, 41.423580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.883507, 36.518055, 41.197510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.899200, 36.123001, 41.136803>,  <44.908615, 35.885967, 41.100380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.899200, 36.123001, 41.136803>,  <44.883507, 36.518055, 41.197510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.899200, 36.123001, 41.136803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572568, 0.146693, -0.806627,
		0.818918, -0.055249, 0.571245,
		0.039232, -0.987638, -0.151764,
		44.910969, 35.826710, 41.091274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.572048, 36.269939, 41.038807>,  <44.883507, 36.518055, 41.197510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.572048, 36.269939, 41.038807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.331127, 35.993290, 40.879360>,  <45.186573, 35.827301, 40.783691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.331127, 35.993290, 40.879360>,  <45.572048, 36.269939, 41.038807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.331127, 35.993290, 40.879360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512185, 0.048188, -0.857522,
		0.612287, -0.720653, 0.325213,
		-0.602304, -0.691619, -0.398613,
		45.150436, 35.785805, 40.759777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.104233, 35.821766, 40.848270>,  <45.572048, 36.269939, 41.038807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.104233, 35.821766, 40.848270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.754589, 35.841873, 40.655018>,  <45.544804, 35.853935, 40.539066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.754589, 35.841873, 40.655018>,  <46.104233, 35.821766, 40.848270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.754589, 35.841873, 40.655018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485068, 0.038120, -0.873645,
		-0.025499, -0.998008, -0.057704,
		-0.874105, 0.050267, -0.483130,
		45.492359, 35.856953, 40.510078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.129864, 35.246670, 40.542030>,  <46.104233, 35.821766, 40.848270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.129864, 35.246670, 40.542030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.896358, 35.501316, 40.340458>,  <45.756256, 35.654102, 40.219513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.896358, 35.501316, 40.340458>,  <46.129864, 35.246670, 40.542030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.896358, 35.501316, 40.340458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479656, -0.230376, -0.846674,
		-0.655096, -0.735970, -0.170870,
		-0.583762, 0.636612, -0.503931,
		45.721230, 35.692299, 40.189278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.035244, 34.963909, 39.957439>,  <46.129864, 35.246670, 40.542030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.035244, 34.963909, 39.957439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.954090, 35.344643, 39.865490>,  <45.905396, 35.573082, 39.810318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.954090, 35.344643, 39.865490>,  <46.035244, 34.963909, 39.957439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.954090, 35.344643, 39.865490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429375, -0.124506, -0.894503,
		-0.880042, -0.280186, -0.383435,
		-0.202887, 0.951837, -0.229875,
		45.893223, 35.630196, 39.796528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.617222, 35.070198, 39.364349>,  <46.035244, 34.963909, 39.957439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.617222, 35.070198, 39.364349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.890907, 35.343781, 39.465591>,  <46.055119, 35.507931, 39.526337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.890907, 35.343781, 39.465591>,  <45.617222, 35.070198, 39.364349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.890907, 35.343781, 39.465591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502595, -0.190746, -0.843217,
		-0.528442, 0.704148, -0.474262,
		0.684213, 0.683953, 0.253103,
		46.096172, 35.548965, 39.541523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.635593, 35.527241, 38.806835>,  <45.617222, 35.070198, 39.364349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.635593, 35.527241, 38.806835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.956482, 35.400307, 39.009121>,  <46.149014, 35.324146, 39.130493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.956482, 35.400307, 39.009121>,  <45.635593, 35.527241, 38.806835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.956482, 35.400307, 39.009121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401223, -0.340716, -0.850254,
		0.442118, 0.884994, -0.146008,
		0.802217, -0.317331, 0.505716,
		46.197147, 35.305107, 39.160835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.326263, 35.919163, 38.635883>,  <45.635593, 35.527241, 38.806835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.326263, 35.919163, 38.635883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.404655, 35.544567, 38.752213>,  <46.451691, 35.319809, 38.822010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.404655, 35.544567, 38.752213>,  <46.326263, 35.919163, 38.635883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.404655, 35.544567, 38.752213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404221, -0.193057, -0.894055,
		0.893418, 0.292776, 0.340713,
		0.195980, -0.936489, 0.290827,
		46.463451, 35.263622, 38.839462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.020760, 35.594410, 38.463615>,  <46.326263, 35.919163, 38.635883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.020760, 35.594410, 38.463615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.794956, 35.268436, 38.516098>,  <46.659473, 35.072853, 38.547588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.794956, 35.268436, 38.516098>,  <47.020760, 35.594410, 38.463615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.794956, 35.268436, 38.516098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145501, -0.254709, -0.956009,
		0.812502, -0.520586, 0.262359,
		-0.564510, -0.814932, 0.131206,
		46.625603, 35.023956, 38.555458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.560406, 35.704185, 37.753536>,  <47.020760, 35.594410, 38.463615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.560406, 35.704185, 37.753536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.938469, 35.832359, 37.728264>,  <47.165306, 35.909264, 37.713100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.938469, 35.832359, 37.728264>,  <46.560406, 35.704185, 37.753536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.938469, 35.832359, 37.728264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155245, -0.610990, -0.776267,
		-0.287346, 0.723889, -0.627230,
		0.945162, 0.320431, -0.063185,
		47.222019, 35.928490, 37.709309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.893063, 36.038712, 37.020927>,  <46.560406, 35.704185, 37.753536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.893063, 36.038712, 37.020927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.133678, 35.813347, 37.247456>,  <47.278049, 35.678127, 37.383373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.133678, 35.813347, 37.247456>,  <46.893063, 36.038712, 37.020927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.133678, 35.813347, 37.247456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201392, -0.579067, -0.790015,
		0.773037, 0.589280, -0.234867,
		0.601543, -0.563410, 0.566317,
		47.314140, 35.644325, 37.417351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.391537, 35.905827, 36.546345>,  <46.893063, 36.038712, 37.020927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.391537, 35.905827, 36.546345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.426060, 35.619617, 36.823643>,  <47.446774, 35.447891, 36.990021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.426060, 35.619617, 36.823643>,  <47.391537, 35.905827, 36.546345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.426060, 35.619617, 36.823643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284939, -0.649042, -0.705375,
		0.954652, 0.258408, 0.147865,
		0.086304, -0.715520, 0.693241,
		47.451950, 35.404961, 37.031616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.319328, 35.709885, 35.774368>,  <47.391537, 35.905827, 36.546345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.319328, 35.709885, 35.774368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.201527, 36.030777, 35.982094>,  <47.130844, 36.223312, 36.106731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.201527, 36.030777, 35.982094>,  <47.319328, 35.709885, 35.774368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.201527, 36.030777, 35.982094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910039, -0.069548, -0.408646,
		-0.291712, -0.592946, 0.750546,
		-0.294504, 0.802233, 0.519316,
		47.113174, 36.271446, 36.137890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.442062, 35.241505, 35.175659>,  <47.319328, 35.709885, 35.774368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.442062, 35.241505, 35.175659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.573902, 35.177940, 34.803398>,  <47.653004, 35.139801, 34.580040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.573902, 35.177940, 34.803398>,  <47.442062, 35.241505, 35.175659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.573902, 35.177940, 34.803398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649874, -0.753228, -0.101545,
		-0.684858, 0.638276, -0.351531,
		0.329597, -0.158907, -0.930653,
		47.672783, 35.130268, 34.524200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<32.486294, 34.362057, 57.012428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.823414, 34.270790, 57.207420>,  <33.025684, 34.216030, 57.324413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.823414, 34.270790, 57.207420>,  <32.486294, 34.362057, 57.012428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823414, 34.270790, 57.207420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390431, -0.364257, -0.845506,
		0.370486, 0.902915, -0.217910,
		0.842795, -0.228169, 0.487478,
		33.076252, 34.202339, 57.353664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013733, 34.432667, 56.533356>,  <32.486294, 34.362057, 57.012428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013733, 34.432667, 56.533356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.182308, 34.220963, 56.827911>,  <33.283455, 34.093941, 57.004646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.182308, 34.220963, 56.827911>,  <33.013733, 34.432667, 56.533356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182308, 34.220963, 56.827911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401799, -0.618997, -0.674834,
		0.812986, 0.580284, -0.048214,
		0.421439, -0.529258, 0.736393,
		33.308739, 34.062183, 57.048828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736954, 34.431610, 56.375660>,  <33.013733, 34.432667, 56.533356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736954, 34.431610, 56.375660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.662273, 34.100880, 56.587887>,  <33.617466, 33.902443, 56.715221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.662273, 34.100880, 56.587887>,  <33.736954, 34.431610, 56.375660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662273, 34.100880, 56.587887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623663, -0.517033, -0.586277,
		0.759071, 0.221440, 0.612190,
		-0.186697, -0.826826, 0.530568,
		33.606266, 33.852833, 56.747059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409546, 34.039845, 56.501553>,  <33.736954, 34.431610, 56.375660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409546, 34.039845, 56.501553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.140518, 33.765598, 56.612965>,  <33.979099, 33.601051, 56.679813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.140518, 33.765598, 56.612965>,  <34.409546, 34.039845, 56.501553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140518, 33.765598, 56.612965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529904, -0.708913, -0.465452,
		0.516575, -0.165455, 0.840104,
		-0.672572, -0.685615, 0.278531,
		33.938747, 33.559914, 56.696526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741467, 33.466259, 56.748520>,  <34.409546, 34.039845, 56.501553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741467, 33.466259, 56.748520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.380714, 33.322285, 56.652969>,  <34.164265, 33.235901, 56.595638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.380714, 33.322285, 56.652969>,  <34.741467, 33.466259, 56.748520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380714, 33.322285, 56.652969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431692, -0.771641, -0.467132,
		-0.016191, -0.524418, 0.851307,
		-0.901876, -0.359939, -0.238880,
		34.110153, 33.214302, 56.581306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759007, 32.702263, 56.928223>,  <34.741467, 33.466259, 56.748520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759007, 32.702263, 56.928223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.462605, 32.760468, 56.666008>,  <34.284763, 32.795391, 56.508678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.462605, 32.760468, 56.666008>,  <34.759007, 32.702263, 56.928223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462605, 32.760468, 56.666008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185466, -0.893913, -0.408071,
		-0.645376, -0.423965, 0.635408,
		-0.741008, 0.145512, -0.655541,
		34.240303, 32.804123, 56.469345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372261, 32.056484, 56.857147>,  <34.759007, 32.702263, 56.928223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372261, 32.056484, 56.857147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.321491, 32.268715, 56.521915>,  <34.291031, 32.396053, 56.320778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.321491, 32.268715, 56.521915>,  <34.372261, 32.056484, 56.857147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321491, 32.268715, 56.521915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136666, -0.827502, -0.544577,
		-0.982452, -0.183656, 0.032517,
		-0.126922, 0.530577, -0.838081,
		34.283413, 32.427887, 56.270493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187309, 31.489214, 56.332497>,  <34.372261, 32.056484, 56.857147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187309, 31.489214, 56.332497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.285706, 31.813227, 56.119579>,  <34.344742, 32.007633, 55.991829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.285706, 31.813227, 56.119579>,  <34.187309, 31.489214, 56.332497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285706, 31.813227, 56.119579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371650, -0.586019, -0.720041,
		-0.895190, -0.020703, -0.445204,
		0.245991, 0.810033, -0.532292,
		34.359501, 32.056236, 55.959892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152039, 31.275345, 55.658329>,  <34.187309, 31.489214, 56.332497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152039, 31.275345, 55.658329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.385101, 31.598186, 55.620182>,  <34.524940, 31.791891, 55.597294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.385101, 31.598186, 55.620182>,  <34.152039, 31.275345, 55.658329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385101, 31.598186, 55.620182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464874, -0.427231, -0.775478,
		-0.666634, 0.407505, -0.624131,
		0.582659, 0.807102, -0.095368,
		34.559898, 31.840317, 55.591572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038662, 31.403717, 54.912868>,  <34.152039, 31.275345, 55.658329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038662, 31.403717, 54.912868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.382477, 31.564695, 55.038876>,  <34.588764, 31.661282, 55.114479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.382477, 31.564695, 55.038876>,  <34.038662, 31.403717, 54.912868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382477, 31.564695, 55.038876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394310, -0.130051, -0.909729,
		-0.325147, 0.906159, -0.270471,
		0.859534, 0.402445, 0.315022,
		34.640339, 31.685429, 55.133381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123985, 31.917862, 54.440548>,  <34.038662, 31.403717, 54.912868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123985, 31.917862, 54.440548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.478149, 31.798683, 54.583256>,  <34.690647, 31.727177, 54.668880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.478149, 31.798683, 54.583256>,  <34.123985, 31.917862, 54.440548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478149, 31.798683, 54.583256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350704, -0.075528, -0.933435,
		0.305059, 0.951590, 0.037618,
		0.885407, -0.297946, 0.356767,
		34.743771, 31.709299, 54.690285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481808, 32.321323, 54.033360>,  <34.123985, 31.917862, 54.440548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481808, 32.321323, 54.033360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.723156, 32.031902, 54.167477>,  <34.867966, 31.858250, 54.247948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.723156, 32.031902, 54.167477>,  <34.481808, 32.321323, 54.033360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723156, 32.031902, 54.167477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083330, -0.360941, -0.928858,
		0.793096, 0.588385, -0.157487,
		0.603369, -0.723550, 0.335291,
		34.904167, 31.814837, 54.268063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026421, 32.309834, 53.526398>,  <34.481808, 32.321323, 54.033360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026421, 32.309834, 53.526398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.028667, 31.961367, 53.722778>,  <35.030014, 31.752287, 53.840607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.028667, 31.961367, 53.722778>,  <35.026421, 32.309834, 53.526398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028667, 31.961367, 53.722778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157316, -0.484079, -0.860766,
		0.987532, 0.082071, 0.134329,
		0.005618, -0.871167, 0.490955,
		35.030354, 31.700016, 53.870064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527843, 31.875191, 53.145947>,  <35.026421, 32.309834, 53.526398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527843, 31.875191, 53.145947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.286499, 31.633785, 53.354454>,  <35.141693, 31.488941, 53.479561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.286499, 31.633785, 53.354454>,  <35.527843, 31.875191, 53.145947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286499, 31.633785, 53.354454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015686, -0.662516, -0.748883,
		0.797313, -0.443671, 0.409204,
		-0.603362, -0.603513, 0.521273,
		35.105492, 31.452732, 53.510838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837830, 31.219654, 53.104496>,  <35.527843, 31.875191, 53.145947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837830, 31.219654, 53.104496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.450844, 31.159750, 53.186058>,  <35.218651, 31.123808, 53.234997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.450844, 31.159750, 53.186058>,  <35.837830, 31.219654, 53.104496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450844, 31.159750, 53.186058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003241, -0.798579, -0.601881,
		0.252974, -0.582962, 0.772114,
		-0.967468, -0.149758, 0.203909,
		35.160603, 31.114822, 53.247231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715897, 30.498091, 53.227211>,  <35.837830, 31.219654, 53.104496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715897, 30.498091, 53.227211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.362595, 30.644415, 53.109882>,  <35.150612, 30.732208, 53.039486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.362595, 30.644415, 53.109882>,  <35.715897, 30.498091, 53.227211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362595, 30.644415, 53.109882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098327, -0.756170, -0.646945,
		-0.458462, -0.542578, 0.703862,
		-0.883258, 0.365808, -0.293326,
		35.097618, 30.754158, 53.021885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444630, 29.905291, 52.922169>,  <35.715897, 30.498091, 53.227211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444630, 29.905291, 52.922169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.180546, 30.182335, 52.805954>,  <35.022095, 30.348560, 52.736225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.180546, 30.182335, 52.805954>,  <35.444630, 29.905291, 52.922169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180546, 30.182335, 52.805954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109787, -0.471664, -0.874917,
		-0.743013, -0.545732, 0.387437,
		-0.660211, 0.692610, -0.290538,
		34.982483, 30.390118, 52.718792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055382, 29.538303, 52.504559>,  <35.444630, 29.905291, 52.922169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055382, 29.538303, 52.504559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.914814, 29.904837, 52.427792>,  <34.830475, 30.124758, 52.381729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.914814, 29.904837, 52.427792>,  <35.055382, 29.538303, 52.504559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914814, 29.904837, 52.427792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325063, -0.311669, -0.892859,
		-0.877973, -0.251383, 0.407394,
		-0.351421, 0.916335, -0.191921,
		34.809387, 30.179737, 52.370216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318871, 29.525309, 52.152969>,  <35.055382, 29.538303, 52.504559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318871, 29.525309, 52.152969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.514305, 29.846394, 52.016190>,  <34.631565, 30.039045, 51.934120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.514305, 29.846394, 52.016190>,  <34.318871, 29.525309, 52.152969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514305, 29.846394, 52.016190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201849, -0.277297, -0.939342,
		-0.848844, 0.527977, 0.026542,
		0.488591, 0.802712, -0.341954,
		34.660881, 30.087208, 51.913605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926342, 29.772945, 51.498894>,  <34.318871, 29.525309, 52.152969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926342, 29.772945, 51.498894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.305225, 29.899969, 51.481190>,  <34.532555, 29.976183, 51.470570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.305225, 29.899969, 51.481190>,  <33.926342, 29.772945, 51.498894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305225, 29.899969, 51.481190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077971, -0.362027, -0.928901,
		-0.311003, 0.876409, -0.367674,
		0.947205, 0.317559, -0.044257,
		34.589386, 29.995237, 51.467911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976547, 30.149496, 51.009422>,  <33.926342, 29.772945, 51.498894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976547, 30.149496, 51.009422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.369221, 30.079197, 51.038818>,  <34.604824, 30.037018, 51.056458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.369221, 30.079197, 51.038818>,  <33.976547, 30.149496, 51.009422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369221, 30.079197, 51.038818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084324, 0.054984, -0.994920,
		0.170814, 0.982898, 0.068797,
		0.981688, -0.175748, 0.073489,
		34.663727, 30.026472, 51.060863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205299, 30.638254, 50.638878>,  <33.976547, 30.149496, 51.009422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205299, 30.638254, 50.638878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.452824, 30.324358, 50.653057>,  <34.601337, 30.136021, 50.661564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.452824, 30.324358, 50.653057>,  <34.205299, 30.638254, 50.638878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452824, 30.324358, 50.653057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115956, 0.046621, -0.992159,
		0.776937, 0.618067, 0.119845,
		0.618808, -0.784742, 0.035447,
		34.638466, 30.088936, 50.663692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607933, 31.075787, 50.274174>,  <34.205299, 30.638254, 50.638878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607933, 31.075787, 50.274174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.357372, 31.162949, 49.974804>,  <33.207035, 31.215246, 49.795181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.357372, 31.162949, 49.974804>,  <33.607933, 31.075787, 50.274174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357372, 31.162949, 49.974804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544545, 0.564678, 0.620169,
		0.557757, 0.796025, -0.235054,
		-0.626400, 0.217907, -0.748425,
		33.169453, 31.228321, 49.750275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470318, 31.744678, 50.408176>,  <33.607933, 31.075787, 50.274174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470318, 31.744678, 50.408176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.176456, 31.602842, 50.176815>,  <33.000137, 31.517740, 50.037998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.176456, 31.602842, 50.176815>,  <33.470318, 31.744678, 50.408176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176456, 31.602842, 50.176815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670555, 0.509100, 0.539604,
		0.103126, 0.784273, -0.611785,
		-0.734657, -0.354588, -0.578400,
		32.956059, 31.496466, 50.003296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916588, 32.298256, 50.415485>,  <33.470318, 31.744678, 50.408176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916588, 32.298256, 50.415485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.746662, 31.947149, 50.326885>,  <32.644707, 31.736486, 50.273724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.746662, 31.947149, 50.326885>,  <32.916588, 32.298256, 50.415485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746662, 31.947149, 50.326885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860377, 0.315363, 0.400373,
		-0.281579, 0.360659, -0.889179,
		-0.424812, -0.877765, -0.221503,
		32.619217, 31.683821, 50.260433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303707, 32.455791, 50.193089>,  <32.916588, 32.298256, 50.415485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303707, 32.455791, 50.193089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.252266, 32.068356, 50.278229>,  <32.221401, 31.835896, 50.329311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.252266, 32.068356, 50.278229>,  <32.303707, 32.455791, 50.193089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252266, 32.068356, 50.278229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902314, 0.203332, 0.380113,
		-0.411451, -0.143171, -0.900117,
		-0.128602, -0.968586, 0.212846,
		32.213684, 31.777781, 50.342083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639351, 32.267254, 49.974655>,  <32.303707, 32.455791, 50.193089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639351, 32.267254, 49.974655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.713457, 31.972532, 50.234749>,  <31.757921, 31.795700, 50.390804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.713457, 31.972532, 50.234749>,  <31.639351, 32.267254, 49.974655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713457, 31.972532, 50.234749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774689, 0.297592, 0.557939,
		-0.604593, -0.607095, -0.515657,
		0.185267, -0.736800, 0.650232,
		31.769037, 31.751492, 50.429817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938328, 31.937109, 50.102024>,  <31.639351, 32.267254, 49.974655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938328, 31.937109, 50.102024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.164221, 31.850132, 50.420471>,  <31.299757, 31.797945, 50.611538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.164221, 31.850132, 50.420471>,  <30.938328, 31.937109, 50.102024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164221, 31.850132, 50.420471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695838, 0.393206, 0.600998,
		-0.443721, -0.893368, 0.070748,
		0.564731, -0.217446, 0.796113,
		31.333641, 31.784899, 50.659306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470644, 31.519733, 50.615086>,  <30.938328, 31.937109, 50.102024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470644, 31.519733, 50.615086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.767660, 31.652475, 50.847813>,  <30.945869, 31.732121, 50.987450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.767660, 31.652475, 50.847813>,  <30.470644, 31.519733, 50.615086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767660, 31.652475, 50.847813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659956, 0.214086, 0.720156,
		0.114425, -0.918718, 0.377974,
		0.742540, 0.331850, 0.581817,
		30.990421, 31.752031, 51.022358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324577, 31.192955, 51.266644>,  <30.470644, 31.519733, 50.615086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.324577, 31.192955, 51.266644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.579679, 31.488907, 51.352287>,  <30.732740, 31.666479, 51.403671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.579679, 31.488907, 51.352287>,  <30.324577, 31.192955, 51.266644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579679, 31.488907, 51.352287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456503, 0.139195, 0.878766,
		0.620380, -0.658179, 0.426531,
		0.637756, 0.739882, 0.214107,
		30.771006, 31.710871, 51.416519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667946, 31.099770, 51.884789>,  <30.324577, 31.192955, 51.266644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667946, 31.099770, 51.884789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.724188, 31.493561, 51.842781>,  <30.757933, 31.729836, 51.817577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.724188, 31.493561, 51.842781>,  <30.667946, 31.099770, 51.884789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.724188, 31.493561, 51.842781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322536, 0.145835, 0.935256,
		0.936056, -0.097628, 0.338035,
		0.140605, 0.984480, -0.105021,
		30.766369, 31.788904, 51.811275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192261, 31.281420, 52.372871>,  <30.667946, 31.099770, 51.884789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192261, 31.281420, 52.372871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.057135, 31.641314, 52.262341>,  <30.976059, 31.857250, 52.196022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.057135, 31.641314, 52.262341>,  <31.192261, 31.281420, 52.372871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057135, 31.641314, 52.262341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083107, 0.263931, 0.960955,
		0.937536, 0.347591, -0.014386,
		-0.337816, 0.899734, -0.276332,
		30.955790, 31.911234, 52.179440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589458, 31.734949, 52.703999>,  <31.192261, 31.281420, 52.372871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589458, 31.734949, 52.703999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.245998, 31.925522, 52.628384>,  <31.039923, 32.039864, 52.583015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.245998, 31.925522, 52.628384>,  <31.589458, 31.734949, 52.703999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245998, 31.925522, 52.628384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055353, 0.280462, 0.958268,
		0.509567, 0.833279, -0.214447,
		-0.858649, 0.476431, -0.189039,
		30.988403, 32.068451, 52.571671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619194, 32.497181, 52.879204>,  <31.589458, 31.734949, 52.703999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619194, 32.497181, 52.879204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.250732, 32.348999, 52.926941>,  <31.029655, 32.260090, 52.955585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.250732, 32.348999, 52.926941>,  <31.619194, 32.497181, 52.879204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250732, 32.348999, 52.926941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040698, 0.396641, 0.917071,
		-0.387070, 0.839905, -0.380443,
		-0.921152, -0.370454, 0.119345,
		30.974386, 32.237862, 52.962746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234669, 33.011951, 53.137131>,  <31.619194, 32.497181, 52.879204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234669, 33.011951, 53.137131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.066763, 32.668415, 53.254566>,  <30.966021, 32.462296, 53.325027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.066763, 32.668415, 53.254566>,  <31.234669, 33.011951, 53.137131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066763, 32.668415, 53.254566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034559, 0.308112, 0.950722,
		-0.906976, 0.409224, -0.099654,
		-0.419763, -0.858838, 0.293593,
		30.940834, 32.410763, 53.342644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616142, 33.124611, 53.326565>,  <31.234669, 33.011951, 53.137131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616142, 33.124611, 53.326565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.729300, 32.785564, 53.506126>,  <30.797194, 32.582138, 53.613865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.729300, 32.785564, 53.506126>,  <30.616142, 33.124611, 53.326565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.729300, 32.785564, 53.506126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158299, 0.420345, 0.893449,
		-0.945998, -0.323812, -0.015264,
		0.282894, -0.847618, 0.448905,
		30.814167, 32.531281, 53.640797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202036, 33.201729, 53.852234>,  <30.616142, 33.124611, 53.326565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202036, 33.201729, 53.852234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.433687, 32.900066, 53.976078>,  <30.572678, 32.719070, 54.050385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.433687, 32.900066, 53.976078>,  <30.202036, 33.201729, 53.852234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.433687, 32.900066, 53.976078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052798, 0.344286, 0.937379,
		-0.813524, -0.559211, 0.159568,
		0.579130, -0.754156, 0.309610,
		30.607426, 32.673820, 54.068962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849718, 32.848045, 54.496693>,  <30.202036, 33.201729, 53.852234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849718, 32.848045, 54.496693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.238592, 32.754593, 54.503323>,  <30.471916, 32.698521, 54.507301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.238592, 32.754593, 54.503323>,  <29.849718, 32.848045, 54.496693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.238592, 32.754593, 54.503323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011709, 0.119175, 0.992804,
		-0.233923, -0.964995, 0.118596,
		0.972185, -0.233628, 0.016579,
		30.530247, 32.684505, 54.508297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.885679, 32.512871, 55.116844>,  <29.849718, 32.848045, 54.496693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.885679, 32.512871, 55.116844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.243904, 32.654942, 55.009647>,  <30.458839, 32.740185, 54.945328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.243904, 32.654942, 55.009647>,  <29.885679, 32.512871, 55.116844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243904, 32.654942, 55.009647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244552, 0.110247, 0.963348,
		0.371703, -0.928276, 0.011874,
		0.895562, 0.355176, -0.267991,
		30.512573, 32.761494, 54.929249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384933, 32.265354, 55.647240>,  <29.885679, 32.512871, 55.116844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384933, 32.265354, 55.647240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.565289, 32.591637, 55.502289>,  <30.673502, 32.787407, 55.415318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.565289, 32.591637, 55.502289>,  <30.384933, 32.265354, 55.647240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565289, 32.591637, 55.502289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071325, 0.371767, 0.925582,
		0.889726, -0.443181, 0.109445,
		0.450889, 0.815708, -0.362381,
		30.700556, 32.836349, 55.393574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<30.865767, 32.591572, 56.281708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893969, 32.868393, 55.994350>,  <30.910891, 33.034485, 55.821934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893969, 32.868393, 55.994350>,  <30.865767, 32.591572, 56.281708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893969, 32.868393, 55.994350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040190, 0.717633, 0.695260,
		0.996701, -0.077892, 0.022783,
		0.070505, 0.692051, -0.718397,
		30.915121, 33.076008, 55.778831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523119, 33.021671, 56.375702>,  <30.865767, 32.591572, 56.281708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523119, 33.021671, 56.375702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271072, 33.233971, 56.148983>,  <31.119844, 33.361351, 56.012951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271072, 33.233971, 56.148983>,  <31.523119, 33.021671, 56.375702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271072, 33.233971, 56.148983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003541, 0.727970, 0.685600,
		0.776494, 0.434013, -0.456825,
		-0.630115, 0.530747, -0.566801,
		31.082039, 33.393196, 55.978943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724897, 33.718468, 56.416313>,  <31.523119, 33.021671, 56.375702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724897, 33.718468, 56.416313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337296, 33.740582, 56.320004>,  <31.104734, 33.753849, 56.262218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337296, 33.740582, 56.320004>,  <31.724897, 33.718468, 56.416313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337296, 33.740582, 56.320004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082104, 0.847157, 0.524962,
		0.232999, 0.528459, -0.816360,
		-0.969005, 0.055289, -0.240775,
		31.046595, 33.757168, 56.247772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422089, 34.421505, 56.021858>,  <31.724897, 33.718468, 56.416313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422089, 34.421505, 56.021858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085615, 34.266163, 56.172371>,  <30.883730, 34.172958, 56.262680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085615, 34.266163, 56.172371>,  <31.422089, 34.421505, 56.021858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085615, 34.266163, 56.172371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200934, 0.870514, 0.449257,
		-0.502030, 0.302300, -0.810296,
		-0.841184, -0.388357, 0.376282,
		30.833260, 34.149654, 56.285255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963804, 34.956757, 56.001144>,  <31.422089, 34.421505, 56.021858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963804, 34.956757, 56.001144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815861, 34.701218, 56.270981>,  <30.727095, 34.547894, 56.432884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815861, 34.701218, 56.270981>,  <30.963804, 34.956757, 56.001144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.815861, 34.701218, 56.270981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052420, 0.739276, 0.671359,
		-0.927608, 0.212946, -0.306917,
		-0.369859, -0.638847, 0.674596,
		30.704903, 34.509563, 56.473358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519608, 35.342087, 56.473198>,  <30.963804, 34.956757, 56.001144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519608, 35.342087, 56.473198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541250, 35.025681, 56.716961>,  <30.554235, 34.835838, 56.863216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541250, 35.025681, 56.716961>,  <30.519608, 35.342087, 56.473198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541250, 35.025681, 56.716961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256224, 0.578866, 0.774121,
		-0.965102, -0.198028, -0.171357,
		0.054105, -0.791012, 0.609404,
		30.557482, 34.788376, 56.899780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945738, 35.213001, 56.857388>,  <30.519608, 35.342087, 56.473198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945738, 35.213001, 56.857388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.193390, 35.031700, 57.113899>,  <30.341982, 34.922920, 57.267807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.193390, 35.031700, 57.113899>,  <29.945738, 35.213001, 56.857388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.193390, 35.031700, 57.113899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329805, 0.591027, 0.736149,
		-0.712676, -0.667269, 0.216437,
		0.619130, -0.453254, 0.641279,
		30.379129, 34.895725, 57.306282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580841, 35.065136, 57.492100>,  <29.945738, 35.213001, 56.857388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580841, 35.065136, 57.492100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965145, 35.041954, 57.600601>,  <30.195728, 35.028046, 57.665703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965145, 35.041954, 57.600601>,  <29.580841, 35.065136, 57.492100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965145, 35.041954, 57.600601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219641, 0.438280, 0.871590,
		-0.169403, -0.896968, 0.408352,
		0.960760, -0.057959, 0.271257,
		30.253374, 35.024567, 57.681980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605625, 34.780666, 58.139442>,  <29.580841, 35.065136, 57.492100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605625, 34.780666, 58.139442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962366, 34.961590, 58.141094>,  <30.176411, 35.070145, 58.142086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962366, 34.961590, 58.141094>,  <29.605625, 34.780666, 58.139442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.962366, 34.961590, 58.141094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118760, 0.225342, 0.967015,
		0.436457, -0.862925, 0.254688,
		0.891852, 0.452307, 0.004129,
		30.229921, 35.097282, 58.142334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842407, 34.582298, 58.818970>,  <29.605625, 34.780666, 58.139442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842407, 34.582298, 58.818970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025091, 34.913166, 58.688000>,  <30.134701, 35.111687, 58.609417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025091, 34.913166, 58.688000>,  <29.842407, 34.582298, 58.818970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025091, 34.913166, 58.688000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106586, 0.416281, 0.902967,
		0.883208, -0.377494, 0.278283,
		0.456708, 0.827169, -0.327428,
		30.162104, 35.161316, 58.589771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243568, 34.817371, 59.344902>,  <29.842407, 34.582298, 58.818970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.243568, 34.817371, 59.344902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212721, 35.155331, 59.133167>,  <30.194212, 35.358109, 59.006126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212721, 35.155331, 59.133167>,  <30.243568, 34.817371, 59.344902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.212721, 35.155331, 59.133167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106839, 0.520855, 0.846933,
		0.991281, 0.121870, 0.050100,
		-0.077121, 0.844901, -0.529334,
		30.189585, 35.408802, 58.974365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653345, 35.339340, 59.713802>,  <30.243568, 34.817371, 59.344902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653345, 35.339340, 59.713802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404833, 35.546684, 59.478748>,  <30.255726, 35.671093, 59.337715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404833, 35.546684, 59.478748>,  <30.653345, 35.339340, 59.713802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404833, 35.546684, 59.478748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223291, 0.601714, 0.766864,
		0.751100, 0.607651, -0.258087,
		-0.621281, 0.518363, -0.587631,
		30.218449, 35.702194, 59.302460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824629, 36.083321, 59.846851>,  <30.653345, 35.339340, 59.713802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824629, 36.083321, 59.846851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452013, 36.082050, 59.701405>,  <30.228443, 36.081287, 59.614136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452013, 36.082050, 59.701405>,  <30.824629, 36.083321, 59.846851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452013, 36.082050, 59.701405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286554, 0.622030, 0.728673,
		0.223868, 0.782987, -0.580358,
		-0.931542, -0.003177, -0.363621,
		30.172550, 36.081097, 59.592319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599356, 36.746838, 59.866596>,  <30.824629, 36.083321, 59.846851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599356, 36.746838, 59.866596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249081, 36.558105, 59.825512>,  <30.038916, 36.444866, 59.800861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249081, 36.558105, 59.825512>,  <30.599356, 36.746838, 59.866596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.249081, 36.558105, 59.825512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409091, 0.611883, 0.676937,
		-0.256550, 0.634804, -0.728839,
		-0.875687, -0.471830, -0.102714,
		29.986374, 36.416557, 59.794697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.047136, 37.197933, 59.720737>,  <30.599356, 36.746838, 59.866596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.047136, 37.197933, 59.720737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.836739, 36.887177, 59.859173>,  <29.710501, 36.700722, 59.942234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.836739, 36.887177, 59.859173>,  <30.047136, 37.197933, 59.720737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.836739, 36.887177, 59.859173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623720, 0.629005, 0.464032,
		-0.578190, 0.028219, -0.815414,
		-0.525994, -0.776889, 0.346084,
		29.678940, 36.654110, 59.962997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333147, 37.475060, 59.873455>,  <30.047136, 37.197933, 59.720737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333147, 37.475060, 59.873455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346674, 37.133404, 60.081032>,  <29.354790, 36.928410, 60.205578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346674, 37.133404, 60.081032>,  <29.333147, 37.475060, 59.873455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.346674, 37.133404, 60.081032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523074, 0.427318, 0.737424,
		-0.851616, -0.296381, -0.432328,
		0.033817, -0.854142, 0.518940,
		29.356819, 36.877163, 60.236713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.604813, 37.307091, 60.134159>,  <29.333147, 37.475060, 59.873455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.604813, 37.307091, 60.134159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.852737, 37.076908, 60.347580>,  <29.001492, 36.938797, 60.475632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.852737, 37.076908, 60.347580>,  <28.604813, 37.307091, 60.134159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.852737, 37.076908, 60.347580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403714, 0.349211, 0.845616,
		-0.672942, -0.739525, -0.015877,
		0.619810, -0.575460, 0.533556,
		29.038681, 36.904270, 60.507648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.101505, 36.927959, 60.455288>,  <28.604813, 37.307091, 60.134159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.101505, 36.927959, 60.455288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.429852, 36.896187, 60.681515>,  <28.626860, 36.877125, 60.817249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.429852, 36.896187, 60.681515>,  <28.101505, 36.927959, 60.455288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.429852, 36.896187, 60.681515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535420, 0.237590, 0.810479,
		-0.198749, -0.968112, 0.152502,
		0.820868, -0.079429, 0.565567,
		28.676111, 36.872356, 60.851185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.923489, 36.623894, 61.172749>,  <28.101505, 36.927959, 60.455288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.923489, 36.623894, 61.172749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280155, 36.801502, 61.208015>,  <28.494156, 36.908070, 61.229176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280155, 36.801502, 61.208015>,  <27.923489, 36.623894, 61.172749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.280155, 36.801502, 61.208015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313903, 0.466113, 0.827166,
		0.326184, -0.765233, 0.554998,
		0.891666, 0.444024, 0.088171,
		28.547655, 36.934711, 61.234467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.049709, 36.610565, 61.866673>,  <27.923489, 36.623894, 61.172749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.049709, 36.610565, 61.866673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.324179, 36.887230, 61.776539>,  <28.488861, 37.053226, 61.722458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.324179, 36.887230, 61.776539>,  <28.049709, 36.610565, 61.866673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.324179, 36.887230, 61.776539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392210, 0.612647, 0.686174,
		0.612647, -0.382456, 0.691658,
		-0.686174, -0.691658, 0.225334,
		28.530031, 37.094727, 61.708939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.287140, 36.911850, 62.535305>,  <28.049709, 36.610565, 61.866673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.287140, 36.911850, 62.535305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.350735, 37.175964, 62.241707>,  <28.388891, 37.334435, 62.065548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.350735, 37.175964, 62.241707>,  <28.287140, 36.911850, 62.535305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.350735, 37.175964, 62.241707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404652, 0.721713, 0.561593,
		0.900545, 0.207726, 0.381928,
		0.158985, 0.660288, -0.733992,
		28.398430, 37.374050, 62.021511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.662319, 37.512856, 62.681721>,  <28.287140, 36.911850, 62.535305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.662319, 37.512856, 62.681721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418472, 37.608837, 62.379517>,  <28.272165, 37.666428, 62.198196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418472, 37.608837, 62.379517>,  <28.662319, 37.512856, 62.681721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.418472, 37.608837, 62.379517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393355, 0.735890, 0.551124,
		0.688215, 0.633156, -0.354222,
		-0.609616, 0.239957, -0.755506,
		28.235588, 37.680824, 62.152866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289431, 37.274357, 63.026382>,  <28.662319, 37.512856, 62.681721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289431, 37.274357, 63.026382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.519733, 37.025448, 62.814236>,  <29.657915, 36.876102, 62.686947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.519733, 37.025448, 62.814236>,  <29.289431, 37.274357, 63.026382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519733, 37.025448, 62.814236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079856, -0.602767, 0.793911,
		-0.813713, -0.499451, -0.297354,
		0.575755, -0.622270, -0.530363,
		29.692459, 36.838768, 62.655128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492800, 37.845478, 63.473492>,  <29.289431, 37.274357, 63.026382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.492800, 37.845478, 63.473492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735043, 37.966793, 63.767773>,  <29.880388, 38.039581, 63.944340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735043, 37.966793, 63.767773>,  <29.492800, 37.845478, 63.473492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735043, 37.966793, 63.767773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751535, -0.521917, -0.403482,
		0.261604, 0.797257, -0.544007,
		0.605606, 0.303288, 0.735703,
		29.916725, 38.057781, 63.988483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.921955, 38.143810, 63.115387>,  <29.492800, 37.845478, 63.473492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.921955, 38.143810, 63.115387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089207, 38.012669, 63.454250>,  <30.189558, 37.933983, 63.657570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089207, 38.012669, 63.454250>,  <29.921955, 38.143810, 63.115387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089207, 38.012669, 63.454250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721942, -0.446092, -0.528963,
		0.551333, 0.832776, 0.050165,
		0.418130, -0.327851, 0.847161,
		30.214645, 37.914314, 63.708397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533318, 38.262447, 63.005901>,  <29.921955, 38.143810, 63.115387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533318, 38.262447, 63.005901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569134, 38.008652, 63.312992>,  <30.590624, 37.856377, 63.497246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569134, 38.008652, 63.312992>,  <30.533318, 38.262447, 63.005901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569134, 38.008652, 63.312992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793743, -0.420161, -0.439814,
		0.601626, 0.648762, 0.465998,
		0.089540, -0.634487, 0.767730,
		30.595995, 37.818306, 63.543312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176548, 38.156834, 62.984562>,  <30.533318, 38.262447, 63.005901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176548, 38.156834, 62.984562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076519, 37.847309, 63.217346>,  <31.016502, 37.661594, 63.357018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076519, 37.847309, 63.217346>,  <31.176548, 38.156834, 62.984562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076519, 37.847309, 63.217346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757955, -0.530454, -0.379635,
		0.602469, 0.346161, 0.719169,
		-0.250072, -0.773816, 0.581956,
		31.001497, 37.615166, 63.391933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803612, 37.987736, 63.267796>,  <31.176548, 38.156834, 62.984562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803612, 37.987736, 63.267796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558594, 37.672291, 63.289261>,  <31.411583, 37.483025, 63.302139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558594, 37.672291, 63.289261>,  <31.803612, 37.987736, 63.267796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558594, 37.672291, 63.289261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711277, -0.579544, -0.397762,
		0.344777, -0.205481, 0.915918,
		-0.612547, -0.788611, 0.053660,
		31.374830, 37.435707, 63.305359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285343, 37.480301, 63.391064>,  <31.803612, 37.987736, 63.267796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285343, 37.480301, 63.391064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945751, 37.318127, 63.255505>,  <31.741995, 37.220821, 63.174171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945751, 37.318127, 63.255505>,  <32.285343, 37.480301, 63.391064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945751, 37.318127, 63.255505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514038, -0.485058, -0.707449,
		0.122442, -0.774816, 0.620216,
		-0.848983, -0.405436, -0.338894,
		31.691055, 37.196495, 63.153835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540829, 36.764137, 63.149975>,  <32.285343, 37.480301, 63.391064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540829, 36.764137, 63.149975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190495, 36.859184, 62.981949>,  <31.980293, 36.916214, 62.881134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190495, 36.859184, 62.981949>,  <32.540829, 36.764137, 63.149975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190495, 36.859184, 62.981949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282145, -0.454051, -0.845122,
		-0.391544, -0.858706, 0.330632,
		-0.875836, 0.237616, -0.420061,
		31.927744, 36.930470, 62.855930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320248, 36.229038, 62.713863>,  <32.540829, 36.764137, 63.149975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320248, 36.229038, 62.713863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071602, 36.490929, 62.541851>,  <31.922415, 36.648064, 62.438644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071602, 36.490929, 62.541851>,  <32.320248, 36.229038, 62.713863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071602, 36.490929, 62.541851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073153, -0.498068, -0.864047,
		-0.779899, -0.568564, 0.261712,
		-0.621616, 0.654724, -0.430035,
		31.885117, 36.687347, 62.412842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980951, 35.754570, 62.216122>,  <32.320248, 36.229038, 62.713863>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980951, 35.754570, 62.216122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950771, 36.137711, 62.105255>,  <31.932663, 36.367596, 62.038734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950771, 36.137711, 62.105255>,  <31.980951, 35.754570, 62.216122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950771, 36.137711, 62.105255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113876, -0.267863, -0.956704,
		-0.990626, -0.103747, -0.088866,
		-0.075451, 0.957855, -0.277166,
		31.928137, 36.425068, 62.022106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476332, 35.783344, 61.582905>,  <31.980951, 35.754570, 62.216122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476332, 35.783344, 61.582905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696383, 36.117226, 61.572830>,  <31.828413, 36.317554, 61.566784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696383, 36.117226, 61.572830>,  <31.476332, 35.783344, 61.582905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696383, 36.117226, 61.572830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228858, -0.179701, -0.956729,
		-0.803108, 0.520560, -0.289887,
		0.550128, 0.834700, -0.025185,
		31.861422, 36.367638, 61.565273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207886, 36.196503, 60.981133>,  <31.476332, 35.783344, 61.582905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207886, 36.196503, 60.981133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574554, 36.304672, 61.098831>,  <31.794556, 36.369576, 61.169449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574554, 36.304672, 61.098831>,  <31.207886, 36.196503, 60.981133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574554, 36.304672, 61.098831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362842, -0.254581, -0.896401,
		-0.167500, 0.928471, -0.331489,
		0.916673, 0.270426, 0.294246,
		31.849556, 36.385799, 61.187103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403900, 36.488575, 60.387150>,  <31.207886, 36.196503, 60.981133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403900, 36.488575, 60.387150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727900, 36.376434, 60.593182>,  <31.922300, 36.309151, 60.716801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727900, 36.376434, 60.593182>,  <31.403900, 36.488575, 60.387150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727900, 36.376434, 60.593182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426733, -0.320675, -0.845616,
		0.402241, 0.904749, -0.140112,
		0.810000, -0.280351, 0.515076,
		31.970900, 36.292328, 60.747704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830688, 36.711929, 59.994541>,  <31.403900, 36.488575, 60.387150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830688, 36.711929, 59.994541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999218, 36.421047, 60.211300>,  <32.100334, 36.246517, 60.341354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999218, 36.421047, 60.211300>,  <31.830688, 36.711929, 59.994541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999218, 36.421047, 60.211300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341385, -0.426401, -0.837639,
		0.840204, 0.537913, 0.068606,
		0.421323, -0.727209, 0.541899,
		32.125614, 36.202885, 60.373871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368595, 36.664272, 59.657860>,  <31.830688, 36.711929, 59.994541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368595, 36.664272, 59.657860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359200, 36.322487, 59.865456>,  <32.353561, 36.117416, 59.990013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359200, 36.322487, 59.865456>,  <32.368595, 36.664272, 59.657860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359200, 36.322487, 59.865456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406994, -0.482336, -0.775698,
		0.913129, 0.193005, 0.359089,
		-0.023488, -0.854460, 0.518987,
		32.352154, 36.066151, 60.021152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023170, 36.418499, 59.617023>,  <32.368595, 36.664272, 59.657860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023170, 36.418499, 59.617023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812000, 36.085773, 59.685593>,  <32.685299, 35.886139, 59.726734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812000, 36.085773, 59.685593>,  <33.023170, 36.418499, 59.617023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812000, 36.085773, 59.685593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248572, -0.344340, -0.905341,
		0.812102, -0.435337, 0.388550,
		-0.527922, -0.831812, 0.171426,
		32.653625, 35.836231, 59.737022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503151, 35.849686, 59.437019>,  <33.023170, 36.418499, 59.617023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503151, 35.849686, 59.437019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144203, 35.673336, 59.444592>,  <32.928833, 35.567528, 59.449135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144203, 35.673336, 59.444592>,  <33.503151, 35.849686, 59.437019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144203, 35.673336, 59.444592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203740, -0.451994, -0.868442,
		0.391431, -0.775456, 0.495429,
		-0.897369, -0.440874, 0.018933,
		32.874992, 35.541073, 59.450272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609268, 35.198559, 59.205544>,  <33.503151, 35.849686, 59.437019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609268, 35.198559, 59.205544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216805, 35.231182, 59.135479>,  <32.981327, 35.250755, 59.093441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216805, 35.231182, 59.135479>,  <33.609268, 35.198559, 59.205544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216805, 35.231182, 59.135479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087136, -0.622355, -0.777870,
		-0.172458, -0.778475, 0.603520,
		-0.981156, 0.081562, -0.175163,
		32.922459, 35.255650, 59.082932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411774, 34.541218, 59.242550>,  <33.609268, 35.198559, 59.205544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411774, 34.541218, 59.242550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147388, 34.720665, 59.001926>,  <32.988758, 34.828335, 58.857552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147388, 34.720665, 59.001926>,  <33.411774, 34.541218, 59.242550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147388, 34.720665, 59.001926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113533, -0.732619, -0.671103,
		-0.741776, -0.511874, 0.433306,
		-0.660968, 0.448613, -0.601554,
		32.949100, 34.855251, 58.821461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885315, 34.042187, 59.020641>,  <33.411774, 34.541218, 59.242550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885315, 34.042187, 59.020641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878990, 34.343971, 58.758179>,  <32.875195, 34.525040, 58.600700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878990, 34.343971, 58.758179>,  <32.885315, 34.042187, 59.020641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878990, 34.343971, 58.758179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214195, -0.638448, -0.739260,
		-0.976663, -0.152234, -0.151506,
		-0.015811, 0.754460, -0.656156,
		32.874249, 34.570309, 58.561333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375793, 33.882504, 58.489349>,  <32.885315, 34.042187, 59.020641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375793, 33.882504, 58.489349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650410, 34.146286, 58.366859>,  <32.815182, 34.304554, 58.293365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650410, 34.146286, 58.366859>,  <32.375793, 33.882504, 58.489349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650410, 34.146286, 58.366859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271705, -0.623347, -0.733222,
		-0.674413, 0.420185, -0.607133,
		0.686544, 0.659456, -0.306227,
		32.856373, 34.344124, 58.274990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266830, 33.841644, 57.761837>,  <32.375793, 33.882504, 58.489349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266830, 33.841644, 57.761837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615627, 34.031342, 57.810368>,  <32.824905, 34.145161, 57.839485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615627, 34.031342, 57.810368>,  <32.266830, 33.841644, 57.761837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615627, 34.031342, 57.810368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348865, -0.428176, -0.833642,
		-0.343402, 0.769256, -0.538814,
		0.871991, 0.474248, 0.121330,
		32.877224, 34.173615, 57.846767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.355927, 34.373783, 50.498985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.444355, 34.477013, 50.875183>,  <47.497414, 34.538948, 51.100903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.444355, 34.477013, 50.875183>,  <47.355927, 34.373783, 50.498985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.444355, 34.477013, 50.875183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891376, -0.337802, 0.302223,
		0.395695, -0.905146, 0.155358,
		0.221075, 0.258070, 0.940492,
		47.510677, 34.554432, 51.157330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.129807, 33.845955, 50.927391>,  <47.355927, 34.373783, 50.498985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.129807, 33.845955, 50.927391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.147022, 34.140652, 51.197311>,  <47.157352, 34.317471, 51.359264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.147022, 34.140652, 51.197311>,  <47.129807, 33.845955, 50.927391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.147022, 34.140652, 51.197311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866232, -0.309008, 0.392628,
		0.497785, -0.601432, 0.624891,
		0.043042, 0.736745, 0.674799,
		47.159935, 34.361675, 51.399750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.006817, 33.483715, 51.668121>,  <47.129807, 33.845955, 50.927391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.006817, 33.483715, 51.668121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.918545, 33.873852, 51.668114>,  <46.865582, 34.107933, 51.668110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.918545, 33.873852, 51.668114>,  <47.006817, 33.483715, 51.668121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.918545, 33.873852, 51.668114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907577, -0.205341, 0.366249,
		0.357215, 0.080846, 0.930517,
		-0.220683, 0.975346, -0.000024,
		46.852341, 34.166454, 51.668106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.489784, 33.477501, 52.160938>,  <47.006817, 33.483715, 51.668121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.489784, 33.477501, 52.160938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.444191, 33.842461, 52.003696>,  <46.416836, 34.061436, 51.909351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.444191, 33.842461, 52.003696>,  <46.489784, 33.477501, 52.160938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.444191, 33.842461, 52.003696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979815, -0.037827, 0.196296,
		0.164231, 0.407544, 0.898296,
		-0.113979, 0.912402, -0.393105,
		46.409996, 34.116180, 51.885765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.833225, 33.868927, 52.570938>,  <46.489784, 33.477501, 52.160938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.833225, 33.868927, 52.570938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.876011, 33.993668, 52.193302>,  <45.901684, 34.068512, 51.966721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.876011, 33.993668, 52.193302>,  <45.833225, 33.868927, 52.570938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.876011, 33.993668, 52.193302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987216, -0.079533, -0.138127,
		-0.118162, 0.946795, 0.299362,
		0.106969, 0.311856, -0.944089,
		45.908100, 34.087223, 51.910076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.308453, 34.299030, 52.456303>,  <45.833225, 33.868927, 52.570938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.308453, 34.299030, 52.456303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.421642, 34.198277, 52.086117>,  <45.489555, 34.137825, 51.864006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.421642, 34.198277, 52.086117>,  <45.308453, 34.299030, 52.456303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.421642, 34.198277, 52.086117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957436, -0.016903, -0.288150,
		0.056938, 0.967609, -0.245950,
		0.282973, -0.251888, -0.925461,
		45.506535, 34.122711, 51.808479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.922462, 34.670166, 51.926960>,  <45.308453, 34.299030, 52.456303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.922462, 34.670166, 51.926960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.079197, 34.375854, 51.706020>,  <45.173237, 34.199268, 51.573456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.079197, 34.375854, 51.706020>,  <44.922462, 34.670166, 51.926960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.079197, 34.375854, 51.706020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897283, -0.172926, -0.406177,
		0.203342, 0.654769, -0.727963,
		0.391835, -0.735781, -0.552350,
		45.196747, 34.155121, 51.540314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.596451, 34.732204, 51.389923>,  <44.922462, 34.670166, 51.926960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.596451, 34.732204, 51.389923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.749199, 34.363056, 51.370007>,  <44.840847, 34.141567, 51.358059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.749199, 34.363056, 51.370007>,  <44.596451, 34.732204, 51.389923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.749199, 34.363056, 51.370007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901466, -0.360049, -0.240258,
		0.203802, 0.136629, -0.969431,
		0.381869, -0.922875, -0.049788,
		44.863758, 34.086193, 51.355072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.526646, 34.532421, 50.700871>,  <44.596451, 34.732204, 51.389923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.526646, 34.532421, 50.700871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.551014, 34.208920, 50.934864>,  <44.565636, 34.014820, 51.075260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.551014, 34.208920, 50.934864>,  <44.526646, 34.532421, 50.700871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.551014, 34.208920, 50.934864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852141, -0.347323, -0.391437,
		0.519754, -0.474642, -0.710331,
		0.060922, -0.808753, 0.584984,
		44.569290, 33.966293, 51.110359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.464725, 33.936764, 50.237083>,  <44.526646, 34.532421, 50.700871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.464725, 33.936764, 50.237083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.355240, 33.837341, 50.608738>,  <44.289547, 33.777687, 50.831730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.355240, 33.837341, 50.608738>,  <44.464725, 33.936764, 50.237083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.355240, 33.837341, 50.608738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745488, -0.555565, -0.368233,
		0.607724, -0.793453, -0.033229,
		-0.273715, -0.248556, 0.929140,
		44.273125, 33.762775, 50.887482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.212749, 33.255989, 50.221737>,  <44.464725, 33.936764, 50.237083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.212749, 33.255989, 50.221737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.069923, 33.335545, 50.586803>,  <43.984230, 33.383278, 50.805843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.069923, 33.335545, 50.586803>,  <44.212749, 33.255989, 50.221737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.069923, 33.335545, 50.586803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844209, -0.486883, -0.224181,
		0.399773, -0.850524, 0.341747,
		-0.357061, 0.198884, 0.912662,
		43.962807, 33.395210, 50.860603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.818893, 32.703583, 50.417599>,  <44.212749, 33.255989, 50.221737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.818893, 32.703583, 50.417599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.655052, 32.968063, 50.669006>,  <43.556747, 33.126751, 50.819851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.655052, 32.968063, 50.669006>,  <43.818893, 32.703583, 50.417599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.655052, 32.968063, 50.669006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873680, -0.482573, -0.061704,
		0.262507, -0.574398, 0.775343,
		-0.409603, 0.661204, 0.628518,
		43.532173, 33.166424, 50.857563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.259594, 32.309391, 50.775711>,  <43.818893, 32.703583, 50.417599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.259594, 32.309391, 50.775711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.170506, 32.681461, 50.892445>,  <43.117054, 32.904705, 50.962486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.170506, 32.681461, 50.892445>,  <43.259594, 32.309391, 50.775711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.170506, 32.681461, 50.892445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937546, -0.286420, 0.197409,
		0.267212, -0.229641, 0.935875,
		-0.222720, 0.930176, 0.291834,
		43.103691, 32.960514, 50.979996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.987999, 32.300171, 51.415451>,  <43.259594, 32.309391, 50.775711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.987999, 32.300171, 51.415451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.838589, 32.629089, 51.243729>,  <42.748943, 32.826439, 51.140694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.838589, 32.629089, 51.243729>,  <42.987999, 32.300171, 51.415451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838589, 32.629089, 51.243729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927337, -0.342456, 0.150899,
		-0.022936, 0.454480, 0.890462,
		-0.373524, 0.822297, -0.429310,
		42.726532, 32.875778, 51.114937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547138, 32.540173, 51.900257>,  <42.987999, 32.300171, 51.415451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547138, 32.540173, 51.900257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.428322, 32.727749, 51.567543>,  <42.357033, 32.840294, 51.367916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.428322, 32.727749, 51.567543>,  <42.547138, 32.540173, 51.900257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.428322, 32.727749, 51.567543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924038, -0.360722, 0.126622,
		-0.240664, 0.806210, 0.540470,
		-0.297043, 0.468941, -0.831781,
		42.339211, 32.868431, 51.318008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881737, 32.857460, 52.039921>,  <42.547138, 32.540173, 51.900257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.881737, 32.857460, 52.039921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.872086, 32.920696, 51.645069>,  <41.866295, 32.958637, 51.408157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.872086, 32.920696, 51.645069>,  <41.881737, 32.857460, 52.039921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.872086, 32.920696, 51.645069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974877, -0.222430, -0.011791,
		-0.221431, 0.962046, 0.159488,
		-0.024131, 0.158093, -0.987130,
		41.864845, 32.968124, 51.348930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267143, 33.202015, 51.996082>,  <41.881737, 32.857460, 52.039921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267143, 33.202015, 51.996082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.362167, 33.012932, 51.656643>,  <41.419182, 32.899483, 51.452980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.362167, 33.012932, 51.656643>,  <41.267143, 33.202015, 51.996082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362167, 33.012932, 51.656643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915635, -0.400642, -0.033148,
		-0.324314, 0.784878, -0.528002,
		0.237557, -0.472706, -0.848596,
		41.433434, 32.871120, 51.402065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628853, 33.208458, 51.690784>,  <41.267143, 33.202015, 51.996082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628853, 33.208458, 51.690784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.815765, 32.934322, 51.467373>,  <40.927914, 32.769840, 51.333324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.815765, 32.934322, 51.467373>,  <40.628853, 33.208458, 51.690784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815765, 32.934322, 51.467373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871816, -0.462166, -0.162292,
		-0.146910, 0.562775, -0.813450,
		0.467283, -0.685337, -0.558533,
		40.955952, 32.728722, 51.299812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232899, 33.063953, 51.001190>,  <40.628853, 33.208458, 51.690784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232899, 33.063953, 51.001190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.449104, 32.745346, 51.109558>,  <40.578827, 32.554180, 51.174580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.449104, 32.745346, 51.109558>,  <40.232899, 33.063953, 51.001190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449104, 32.745346, 51.109558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795310, -0.588775, -0.144312,
		0.274461, -0.137466, -0.951722,
		0.540512, -0.796522, 0.270924,
		40.611259, 32.506390, 51.190834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858246, 32.901016, 50.416588>,  <40.232899, 33.063953, 51.001190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858246, 32.901016, 50.416588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.931515, 32.909874, 50.023457>,  <39.975475, 32.915188, 49.787579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.931515, 32.909874, 50.023457>,  <39.858246, 32.901016, 50.416588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931515, 32.909874, 50.023457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687373, -0.711857, -0.144144,
		-0.702828, 0.701975, -0.115169,
		0.183169, 0.022144, -0.982832,
		39.986465, 32.916515, 49.728607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314606, 33.171192, 49.957424>,  <39.858246, 32.901016, 50.416588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314606, 33.171192, 49.957424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.535393, 32.911556, 49.748039>,  <39.667866, 32.755775, 49.622410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.535393, 32.911556, 49.748039>,  <39.314606, 33.171192, 49.957424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535393, 32.911556, 49.748039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801008, -0.587213, -0.116481,
		-0.231778, 0.483592, -0.844049,
		0.551966, -0.649092, -0.523464,
		39.700981, 32.716827, 49.591000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969162, 33.027416, 49.305187>,  <39.314606, 33.171192, 49.957424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969162, 33.027416, 49.305187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.201157, 32.721855, 49.418373>,  <39.340355, 32.538517, 49.486286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.201157, 32.721855, 49.418373>,  <38.969162, 33.027416, 49.305187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201157, 32.721855, 49.418373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737081, -0.640011, -0.217021,
		0.346884, -0.082700, -0.934255,
		0.579985, -0.763902, 0.282966,
		39.375153, 32.492683, 49.503262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612587, 32.405079, 49.171272>,  <38.969162, 33.027416, 49.305187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612587, 32.405079, 49.171272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.714191, 32.278355, 48.805737>,  <38.775154, 32.202320, 48.586414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.714191, 32.278355, 48.805737>,  <38.612587, 32.405079, 49.171272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714191, 32.278355, 48.805737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962247, -0.178285, -0.205660,
		-0.097770, 0.931583, -0.350134,
		0.254013, -0.316808, -0.913844,
		38.790394, 32.183311, 48.531582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205311, 32.787327, 48.688988>,  <38.612587, 32.405079, 49.171272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205311, 32.787327, 48.688988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.309715, 32.450142, 48.500824>,  <38.372356, 32.247829, 48.387924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.309715, 32.450142, 48.500824>,  <38.205311, 32.787327, 48.688988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309715, 32.450142, 48.500824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961809, -0.185473, -0.201306,
		0.082445, 0.504989, -0.859179,
		0.261012, -0.842962, -0.470412,
		38.388020, 32.197254, 48.359699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911606, 32.801746, 48.098824>,  <38.205311, 32.787327, 48.688988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911606, 32.801746, 48.098824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.980125, 32.409988, 48.141602>,  <38.021236, 32.174934, 48.167267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.980125, 32.409988, 48.141602>,  <37.911606, 32.801746, 48.098824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980125, 32.409988, 48.141602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980695, -0.179898, -0.076635,
		0.094295, -0.091748, -0.991308,
		0.171303, -0.979397, 0.106940,
		38.031517, 32.116169, 48.173683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690216, 32.542496, 47.458172>,  <37.911606, 32.801746, 48.098824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690216, 32.542496, 47.458172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.666866, 32.274723, 47.754402>,  <37.652859, 32.114059, 47.932140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.666866, 32.274723, 47.754402>,  <37.690216, 32.542496, 47.458172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666866, 32.274723, 47.754402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964182, -0.154464, -0.215622,
		0.258737, -0.726636, -0.636440,
		-0.058371, -0.669434, 0.740575,
		37.649353, 32.073895, 47.976574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291389, 32.050907, 47.217747>,  <37.690216, 32.542496, 47.458172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291389, 32.050907, 47.217747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.272980, 32.002155, 47.614338>,  <37.261932, 31.972904, 47.852291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.272980, 32.002155, 47.614338>,  <37.291389, 32.050907, 47.217747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272980, 32.002155, 47.614338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984478, -0.162746, -0.065707,
		0.169368, -0.979111, -0.112500,
		-0.046026, -0.121883, 0.991477,
		37.259171, 31.965591, 47.911781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003265, 31.360682, 47.285038>,  <37.291389, 32.050907, 47.217747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003265, 31.360682, 47.285038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.927711, 31.554632, 47.626614>,  <36.882378, 31.671003, 47.831558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.927711, 31.554632, 47.626614>,  <37.003265, 31.360682, 47.285038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927711, 31.554632, 47.626614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969362, -0.231123, -0.083183,
		0.157032, -0.843491, 0.513676,
		-0.188886, 0.484876, 0.853942,
		36.871044, 31.700094, 47.882797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517937, 30.942991, 47.588688>,  <37.003265, 31.360682, 47.285038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517937, 30.942991, 47.588688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.483665, 31.299662, 47.766487>,  <36.463100, 31.513664, 47.873165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.483665, 31.299662, 47.766487>,  <36.517937, 30.942991, 47.588688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483665, 31.299662, 47.766487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995511, -0.058610, -0.074320,
		-0.040217, -0.448866, 0.892693,
		-0.085680, 0.891675, 0.444494,
		36.457962, 31.567163, 47.899834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877579, 30.849113, 48.115555>,  <36.517937, 30.942991, 47.588688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877579, 30.849113, 48.115555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.922451, 31.239073, 48.038620>,  <35.949375, 31.473047, 47.992458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.922451, 31.239073, 48.038620>,  <35.877579, 30.849113, 48.115555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922451, 31.239073, 48.038620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992943, 0.102493, -0.059652,
		-0.038442, 0.197668, 0.979515,
		0.112185, 0.974896, -0.192333,
		35.956108, 31.531542, 47.980919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333656, 31.102493, 48.432579>,  <35.877579, 30.849113, 48.115555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333656, 31.102493, 48.432579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.455669, 31.421698, 48.224682>,  <35.528877, 31.613220, 48.099945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.455669, 31.421698, 48.224682>,  <35.333656, 31.102493, 48.432579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455669, 31.421698, 48.224682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952196, 0.246045, -0.181065,
		-0.016612, 0.550129, 0.834914,
		0.305036, 0.798010, -0.519744,
		35.547180, 31.661100, 48.068760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013004, 31.711170, 48.748287>,  <35.333656, 31.102493, 48.432579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013004, 31.711170, 48.748287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.105995, 31.784101, 48.366142>,  <35.161789, 31.827860, 48.136856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.105995, 31.784101, 48.366142>,  <35.013004, 31.711170, 48.748287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105995, 31.784101, 48.366142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965341, 0.163060, -0.203787,
		0.118624, 0.969622, 0.213917,
		0.232478, 0.182329, -0.955359,
		35.175739, 31.838800, 48.079536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615528, 32.263958, 48.569519>,  <35.013004, 31.711170, 48.748287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615528, 32.263958, 48.569519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.725243, 32.115395, 48.214706>,  <34.791069, 32.026257, 48.001820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.725243, 32.115395, 48.214706>,  <34.615528, 32.263958, 48.569519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725243, 32.115395, 48.214706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922755, 0.158028, -0.351497,
		0.270726, 0.914921, -0.299379,
		0.274282, -0.371413, -0.887030,
		34.807526, 32.003971, 47.948597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264881, 32.712360, 48.030422>,  <34.615528, 32.263958, 48.569519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264881, 32.712360, 48.030422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.369720, 32.373108, 47.846256>,  <34.432625, 32.169556, 47.735756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.369720, 32.373108, 47.846256>,  <34.264881, 32.712360, 48.030422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369720, 32.373108, 47.846256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933038, -0.100858, -0.345353,
		0.246468, 0.520100, -0.817771,
		0.262097, -0.848130, -0.460414,
		34.448349, 32.118668, 47.708134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003387, 32.926670, 47.382191>,  <34.264881, 32.712360, 48.030422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003387, 32.926670, 47.382191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.995659, 32.566998, 47.557049>,  <33.991024, 32.351192, 47.661964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.995659, 32.566998, 47.557049>,  <34.003387, 32.926670, 47.382191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995659, 32.566998, 47.557049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990401, 0.077062, 0.114747,
		-0.136866, -0.430731, -0.892042,
		-0.019318, -0.899184, 0.437144,
		33.989864, 32.297241, 47.688190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.112476, 32.850719, 52.623672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.216101, 32.608383, 52.322784>,  <29.278275, 32.462982, 52.142250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.216101, 32.608383, 52.322784>,  <29.112476, 32.850719, 52.623672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.216101, 32.608383, 52.322784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460329, -0.607224, 0.647593,
		-0.849109, -0.514035, 0.121580,
		0.259059, -0.605844, -0.752224,
		29.293818, 32.426632, 52.097118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.796997, 32.651447, 52.277172>,  <29.112476, 32.850719, 52.623672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.796997, 32.651447, 52.277172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.164042, 32.519344, 52.365643>,  <30.384268, 32.440083, 52.418724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.164042, 32.519344, 52.365643>,  <29.796997, 32.651447, 52.277172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164042, 32.519344, 52.365643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150229, -0.227020, -0.962233,
		0.367997, 0.916183, -0.158702,
		0.917611, -0.330257, 0.221180,
		30.439325, 32.420269, 52.431995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.313848, 32.954647, 51.869068>,  <29.796997, 32.651447, 52.277172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.313848, 32.954647, 51.869068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.508307, 32.617599, 51.961731>,  <30.624981, 32.415371, 52.017330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.508307, 32.617599, 51.961731>,  <30.313848, 32.954647, 51.869068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508307, 32.617599, 51.961731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385751, -0.030947, -0.922084,
		0.784131, 0.537626, 0.309995,
		0.486143, -0.842615, 0.231656,
		30.654150, 32.364815, 52.031227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950577, 33.036034, 51.510738>,  <30.313848, 32.954647, 51.869068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950577, 33.036034, 51.510738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.927753, 32.655464, 51.631756>,  <30.914059, 32.427124, 51.704369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.927753, 32.655464, 51.631756>,  <30.950577, 33.036034, 51.510738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.927753, 32.655464, 51.631756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602648, -0.274427, -0.749337,
		0.795965, 0.139574, 0.589032,
		-0.057059, -0.951424, 0.302548,
		30.910635, 32.370037, 51.722519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593452, 32.674530, 51.576122>,  <30.950577, 33.036034, 51.510738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593452, 32.674530, 51.576122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.341473, 32.365318, 51.546207>,  <31.190285, 32.179790, 51.528259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.341473, 32.365318, 51.546207>,  <31.593452, 32.674530, 51.576122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341473, 32.365318, 51.546207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598124, -0.421478, -0.681619,
		0.495387, -0.474119, 0.727876,
		-0.629952, -0.773025, -0.074787,
		31.152487, 32.133411, 51.523773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007118, 32.123119, 51.766556>,  <31.593452, 32.674530, 51.576122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007118, 32.123119, 51.766556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.696737, 31.980373, 51.558498>,  <31.510508, 31.894726, 51.433666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.696737, 31.980373, 51.558498>,  <32.007118, 32.123119, 51.766556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696737, 31.980373, 51.558498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629635, -0.488068, -0.604442,
		-0.038162, -0.796517, 0.603411,
		-0.775953, -0.356862, -0.520140,
		31.463951, 31.873314, 51.402454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126179, 31.497248, 51.666313>,  <32.007118, 32.123119, 51.766556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126179, 31.497248, 51.666313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.866163, 31.594496, 51.378330>,  <31.710154, 31.652843, 51.205540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.866163, 31.594496, 51.378330>,  <32.126179, 31.497248, 51.666313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866163, 31.594496, 51.378330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567333, -0.475054, -0.672650,
		-0.505556, -0.845704, 0.170872,
		-0.650036, 0.243121, -0.719962,
		31.671152, 31.667431, 51.162342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049622, 30.862148, 51.303875>,  <32.126179, 31.497248, 51.666313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049622, 30.862148, 51.303875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.965937, 31.153206, 51.042564>,  <31.915726, 31.327841, 50.885780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.965937, 31.153206, 51.042564>,  <32.049622, 30.862148, 51.303875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965937, 31.153206, 51.042564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687741, -0.365424, -0.627278,
		-0.695156, -0.580517, -0.423979,
		-0.209213, 0.727644, -0.653272,
		31.903173, 31.371498, 50.846584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078651, 30.504665, 50.597370>,  <32.049622, 30.862148, 51.303875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078651, 30.504665, 50.597370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.110115, 30.896612, 50.523968>,  <32.128994, 31.131781, 50.479927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.110115, 30.896612, 50.523968>,  <32.078651, 30.504665, 50.597370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110115, 30.896612, 50.523968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652928, -0.189736, -0.733270,
		-0.753325, -0.062139, -0.654707,
		0.078657, 0.979867, -0.183506,
		32.133713, 31.190573, 50.468918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063389, 30.539261, 49.950851>,  <32.078651, 30.504665, 50.597370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063389, 30.539261, 49.950851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.206005, 30.904442, 50.030251>,  <32.291573, 31.123550, 50.077892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.206005, 30.904442, 50.030251>,  <32.063389, 30.539261, 49.950851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206005, 30.904442, 50.030251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683337, -0.109931, -0.721779,
		-0.637128, 0.392983, -0.663048,
		0.356536, 0.912951, 0.198500,
		32.312965, 31.178328, 50.089802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029842, 30.931454, 49.293182>,  <32.063389, 30.539261, 49.950851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029842, 30.931454, 49.293182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.312584, 31.097517, 49.522266>,  <32.482231, 31.197155, 49.659718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.312584, 31.097517, 49.522266>,  <32.029842, 30.931454, 49.293182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312584, 31.097517, 49.522266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693832, -0.249351, -0.675590,
		-0.137668, 0.874911, -0.464304,
		0.706856, 0.415156, 0.572713,
		32.524639, 31.222063, 49.694080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220345, 31.564507, 48.943634>,  <32.029842, 30.931454, 49.293182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220345, 31.564507, 48.943634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.507977, 31.420238, 49.181236>,  <32.680553, 31.333677, 49.323799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.507977, 31.420238, 49.181236>,  <32.220345, 31.564507, 48.943634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507977, 31.420238, 49.181236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511615, -0.303719, -0.803744,
		0.470298, 0.881857, -0.033873,
		0.719075, -0.360670, 0.594010,
		32.723698, 31.312038, 49.359440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986691, 31.870724, 48.291706>,  <32.220345, 31.564507, 48.943634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986691, 31.870724, 48.291706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.979736, 31.559845, 48.040100>,  <31.975563, 31.373318, 47.889137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.979736, 31.559845, 48.040100>,  <31.986691, 31.870724, 48.291706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979736, 31.559845, 48.040100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597588, -0.512459, 0.616663,
		-0.801614, -0.365171, 0.473355,
		-0.017388, -0.777197, -0.629017,
		31.974520, 31.326685, 47.851395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632677, 32.384159, 48.009777>,  <31.986691, 31.870724, 48.291706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632677, 32.384159, 48.009777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.696550, 32.499043, 47.631992>,  <31.734875, 32.567974, 47.405319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.696550, 32.499043, 47.631992>,  <31.632677, 32.384159, 48.009777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696550, 32.499043, 47.631992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174638, 0.949868, 0.259329,
		0.971598, 0.123530, 0.201834,
		0.159681, 0.287212, -0.944464,
		31.744455, 32.585205, 47.348652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918795, 33.058090, 48.138332>,  <31.632677, 32.384159, 48.009777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918795, 33.058090, 48.138332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.772892, 33.038414, 47.766411>,  <31.685350, 33.026608, 47.543259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.772892, 33.038414, 47.766411>,  <31.918795, 33.058090, 48.138332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772892, 33.038414, 47.766411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378362, 0.920267, 0.099748,
		0.850761, 0.388186, -0.354285,
		-0.364758, -0.049186, -0.929802,
		31.663465, 33.023659, 47.487469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182098, 33.602184, 47.817623>,  <31.918795, 33.058090, 48.138332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182098, 33.602184, 47.817623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.861137, 33.512749, 47.596298>,  <31.668560, 33.459087, 47.463505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.861137, 33.512749, 47.596298>,  <32.182098, 33.602184, 47.817623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861137, 33.512749, 47.596298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272362, 0.962175, 0.006166,
		0.531005, 0.155649, -0.832951,
		-0.802405, -0.223590, -0.553312,
		31.620417, 33.445671, 47.430305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122097, 34.115284, 47.300438>,  <32.182098, 33.602184, 47.817623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122097, 34.115284, 47.300438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.762320, 33.946400, 47.255291>,  <31.546453, 33.845070, 47.228203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.762320, 33.946400, 47.255291>,  <32.122097, 34.115284, 47.300438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762320, 33.946400, 47.255291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408873, 0.904142, -0.123898,
		0.154356, -0.065292, -0.985855,
		-0.899442, -0.422214, -0.112864,
		31.492487, 33.819736, 47.221432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843414, 34.430920, 46.776184>,  <32.122097, 34.115284, 47.300438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843414, 34.430920, 46.776184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.536379, 34.269962, 46.975739>,  <31.352158, 34.173389, 47.095470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.536379, 34.269962, 46.975739>,  <31.843414, 34.430920, 46.776184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536379, 34.269962, 46.975739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537576, 0.828043, -0.159239,
		-0.349026, -0.390421, -0.851911,
		-0.767589, -0.402389, 0.498889,
		31.306103, 34.149246, 47.125404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319361, 34.550083, 46.406574>,  <31.843414, 34.430920, 46.776184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319361, 34.550083, 46.406574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.177530, 34.494301, 46.776402>,  <31.092432, 34.460831, 46.998299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.177530, 34.494301, 46.776402>,  <31.319361, 34.550083, 46.406574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177530, 34.494301, 46.776402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625306, 0.770531, -0.123589,
		-0.695175, -0.621961, -0.360411,
		-0.354575, -0.139452, 0.924570,
		31.071157, 34.452465, 47.053772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651226, 34.932728, 46.329536>,  <31.319361, 34.550083, 46.406574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651226, 34.932728, 46.329536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.703165, 34.845406, 46.716419>,  <30.734327, 34.793011, 46.948547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.703165, 34.845406, 46.716419>,  <30.651226, 34.932728, 46.329536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703165, 34.845406, 46.716419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521585, 0.814553, 0.253875,
		-0.843261, -0.537444, -0.008099,
		0.129846, -0.218307, 0.967203,
		30.742119, 34.779915, 47.006580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040628, 35.106239, 46.572960>,  <30.651226, 34.932728, 46.329536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040628, 35.106239, 46.572960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.304029, 35.095596, 46.873802>,  <30.462070, 35.089211, 47.054310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.304029, 35.095596, 46.873802>,  <30.040628, 35.106239, 46.572960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304029, 35.095596, 46.873802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397466, 0.836332, 0.377584,
		-0.639060, -0.547577, 0.540151,
		0.658501, -0.026607, 0.752109,
		30.501579, 35.087616, 47.099434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.638287, 35.244595, 47.132084>,  <30.040628, 35.106239, 46.572960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.638287, 35.244595, 47.132084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.999744, 35.335979, 47.276985>,  <30.216619, 35.390812, 47.363926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.999744, 35.335979, 47.276985>,  <29.638287, 35.244595, 47.132084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.999744, 35.335979, 47.276985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402862, 0.740495, 0.537931,
		-0.145353, -0.632038, 0.761183,
		0.903645, 0.228462, 0.362257,
		30.270838, 35.404518, 47.385662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.546005, 35.351387, 47.763477>,  <29.638287, 35.244595, 47.132084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.546005, 35.351387, 47.763477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.905628, 35.525341, 47.743191>,  <30.121401, 35.629715, 47.731018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.905628, 35.525341, 47.743191>,  <29.546005, 35.351387, 47.763477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.905628, 35.525341, 47.743191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221532, 0.551739, 0.804057,
		0.377653, -0.711658, 0.592385,
		0.899056, 0.434887, -0.050711,
		30.175344, 35.655807, 47.727978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823235, 35.350014, 48.426689>,  <29.546005, 35.351387, 47.763477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.823235, 35.350014, 48.426689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.013100, 35.635563, 48.220745>,  <30.127018, 35.806892, 48.097179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.013100, 35.635563, 48.220745>,  <29.823235, 35.350014, 48.426689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013100, 35.635563, 48.220745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077944, 0.548571, 0.832463,
		0.876711, -0.435268, 0.204744,
		0.474661, 0.713871, -0.514865,
		30.155499, 35.849724, 48.066284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337439, 35.523621, 48.824524>,  <29.823235, 35.350014, 48.426689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337439, 35.523621, 48.824524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.359371, 35.836655, 48.576477>,  <30.372530, 36.024475, 48.427647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.359371, 35.836655, 48.576477>,  <30.337439, 35.523621, 48.824524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359371, 35.836655, 48.576477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160653, 0.606049, 0.779035,
		0.985487, -0.142339, -0.092495,
		0.054830, 0.782588, -0.620120,
		30.375820, 36.071430, 48.390442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761019, 35.918190, 49.173512>,  <30.337439, 35.523621, 48.824524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761019, 35.918190, 49.173512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.592876, 36.173180, 48.915234>,  <30.491991, 36.326172, 48.760265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.592876, 36.173180, 48.915234>,  <30.761019, 35.918190, 49.173512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592876, 36.173180, 48.915234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000388, 0.711751, 0.702432,
		0.907358, 0.295022, -0.299437,
		-0.420358, 0.637474, -0.645699,
		30.466768, 36.364422, 48.721523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105680, 36.584770, 49.363972>,  <30.761019, 35.918190, 49.173512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105680, 36.584770, 49.363972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.762148, 36.686283, 49.185982>,  <30.556028, 36.747189, 49.079185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.762148, 36.686283, 49.185982>,  <31.105680, 36.584770, 49.363972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762148, 36.686283, 49.185982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134164, 0.726902, 0.673508,
		0.494377, 0.638130, -0.590239,
		-0.858831, 0.253778, -0.444978,
		30.504499, 36.762417, 49.052486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201067, 37.311211, 49.318558>,  <31.105680, 36.584770, 49.363972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201067, 37.311211, 49.318558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.825035, 37.174957, 49.312550>,  <30.599417, 37.093204, 49.308945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.825035, 37.174957, 49.312550>,  <31.201067, 37.311211, 49.318558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825035, 37.174957, 49.312550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231253, 0.604616, 0.762208,
		-0.250552, 0.720007, -0.647158,
		-0.940078, -0.340630, -0.015016,
		30.543013, 37.072769, 49.308044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716621, 37.811420, 49.232620>,  <31.201067, 37.311211, 49.318558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716621, 37.811420, 49.232620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.054596, 37.874554, 49.437038>,  <32.257381, 37.912434, 49.559689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.054596, 37.874554, 49.437038>,  <31.716621, 37.811420, 49.232620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054596, 37.874554, 49.437038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534488, -0.284993, -0.795677,
		0.020060, 0.945446, -0.325162,
		0.844938, 0.157834, 0.511046,
		32.308079, 37.921906, 49.590351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159416, 38.416512, 48.869358>,  <31.716621, 37.811420, 49.232620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159416, 38.416512, 48.869358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.399284, 38.187523, 49.093025>,  <32.543205, 38.050129, 49.227226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.399284, 38.187523, 49.093025>,  <32.159416, 38.416512, 48.869358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399284, 38.187523, 49.093025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592597, -0.151912, -0.791044,
		0.537799, 0.805726, 0.248151,
		0.599668, -0.572476, 0.559169,
		32.579185, 38.015781, 49.260777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748322, 38.521854, 48.522297>,  <32.159416, 38.416512, 48.869358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748322, 38.521854, 48.522297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.829948, 38.204807, 48.752121>,  <32.878925, 38.014580, 48.890015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.829948, 38.204807, 48.752121>,  <32.748322, 38.521854, 48.522297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829948, 38.204807, 48.752121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750389, -0.250281, -0.611781,
		0.628708, 0.555986, 0.543697,
		0.204064, -0.792616, 0.574559,
		32.891167, 37.967022, 48.924488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454094, 38.453205, 48.633083>,  <32.748322, 38.521854, 48.522297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454094, 38.453205, 48.633083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.314308, 38.081093, 48.677723>,  <33.230438, 37.857826, 48.704506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.314308, 38.081093, 48.677723>,  <33.454094, 38.453205, 48.633083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314308, 38.081093, 48.677723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681650, -0.334150, -0.650920,
		0.642829, -0.151402, 0.750898,
		-0.349463, -0.930280, 0.111598,
		33.209469, 37.802010, 48.711201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035194, 37.988781, 48.881310>,  <33.454094, 38.453205, 48.633083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035194, 37.988781, 48.881310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.750225, 37.769348, 48.706264>,  <33.579243, 37.637688, 48.601238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.750225, 37.769348, 48.706264>,  <34.035194, 37.988781, 48.881310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750225, 37.769348, 48.706264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687390, -0.671030, -0.277873,
		-0.141218, -0.498777, 0.855148,
		-0.712427, -0.548580, -0.437616,
		33.536495, 37.604774, 48.574978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281281, 37.297226, 49.036041>,  <34.035194, 37.988781, 48.881310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281281, 37.297226, 49.036041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.029877, 37.298916, 48.724926>,  <33.879032, 37.299931, 48.538258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.029877, 37.298916, 48.724926>,  <34.281281, 37.297226, 49.036041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029877, 37.298916, 48.724926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576617, -0.668586, -0.469580,
		-0.522001, -0.743623, 0.417780,
		-0.628512, 0.004222, -0.777788,
		33.841324, 37.300182, 48.491589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565887, 36.806866, 48.710926>,  <34.281281, 37.297226, 49.036041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565887, 36.806866, 48.710926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.257622, 36.884426, 48.468117>,  <34.072662, 36.930962, 48.322430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.257622, 36.884426, 48.468117>,  <34.565887, 36.806866, 48.710926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257622, 36.884426, 48.468117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301557, -0.728196, -0.615463,
		-0.561372, -0.657367, 0.502722,
		-0.770666, 0.193904, -0.607022,
		34.026421, 36.942596, 48.286011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208252, 36.151974, 48.491360>,  <34.565887, 36.806866, 48.710926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208252, 36.151974, 48.491360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.186172, 36.435623, 48.210194>,  <34.172924, 36.605812, 48.041492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.186172, 36.435623, 48.210194>,  <34.208252, 36.151974, 48.491360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186172, 36.435623, 48.210194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480767, -0.598131, -0.641173,
		-0.875109, -0.373333, -0.307907,
		-0.055202, 0.709127, -0.702916,
		34.169613, 36.648361, 47.999317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165707, 35.803509, 47.891342>,  <34.208252, 36.151974, 48.491360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165707, 35.803509, 47.891342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.282745, 36.166378, 47.770397>,  <34.352970, 36.384098, 47.697830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.282745, 36.166378, 47.770397>,  <34.165707, 35.803509, 47.891342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282745, 36.166378, 47.770397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486654, -0.413462, -0.769556,
		-0.823135, 0.078026, -0.562459,
		0.292601, 0.907172, -0.302364,
		34.370525, 36.438530, 47.679688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029480, 35.819603, 47.185436>,  <34.165707, 35.803509, 47.891342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029480, 35.819603, 47.185436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.323765, 36.080364, 47.258915>,  <34.500336, 36.236820, 47.303001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.323765, 36.080364, 47.258915>,  <34.029480, 35.819603, 47.185436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323765, 36.080364, 47.258915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625633, -0.550240, -0.553009,
		-0.259434, 0.521782, -0.812673,
		0.735716, 0.651904, 0.183693,
		34.544479, 36.275936, 47.314022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434002, 35.891705, 46.616066>,  <34.029480, 35.819603, 47.185436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434002, 35.891705, 46.616066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.700150, 36.056843, 46.864853>,  <34.859840, 36.155926, 47.014126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.700150, 36.056843, 46.864853>,  <34.434002, 35.891705, 46.616066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700150, 36.056843, 46.864853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724446, -0.558168, -0.404507,
		0.180161, 0.719727, -0.670474,
		0.665372, 0.412846, 0.621964,
		34.899761, 36.180698, 47.051441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042698, 36.146641, 46.209530>,  <34.434002, 35.891705, 46.616066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042698, 36.146641, 46.209530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.178482, 36.123676, 46.585075>,  <35.259953, 36.109898, 46.810402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.178482, 36.123676, 46.585075>,  <35.042698, 36.146641, 46.209530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178482, 36.123676, 46.585075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847171, -0.415071, -0.331690,
		0.408738, 0.907976, -0.092264,
		0.339462, -0.057411, 0.938866,
		35.280319, 36.106453, 46.866734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.742878, 39.889423, 55.028877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.437037, 40.075481, 54.850430>,  <31.253532, 40.187115, 54.743359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.437037, 40.075481, 54.850430>,  <31.742878, 39.889423, 55.028877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437037, 40.075481, 54.850430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154224, -0.540044, -0.827386,
		-0.625781, -0.701423, 0.341181,
		-0.764600, 0.465144, -0.446125,
		31.207657, 40.215023, 54.716591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216763, 39.393143, 54.657825>,  <31.742878, 39.889423, 55.028877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216763, 39.393143, 54.657825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.160271, 39.740421, 54.467545>,  <31.126375, 39.948788, 54.353378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.160271, 39.740421, 54.467545>,  <31.216763, 39.393143, 54.657825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160271, 39.740421, 54.467545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010576, -0.481812, -0.876211,
		-0.989921, -0.118714, 0.077227,
		-0.141228, 0.868196, -0.475700,
		31.117903, 40.000881, 54.324833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729357, 39.143017, 54.053551>,  <31.216763, 39.393143, 54.657825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729357, 39.143017, 54.053551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.880142, 39.497128, 53.944603>,  <30.970613, 39.709595, 53.879234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.880142, 39.497128, 53.944603>,  <30.729357, 39.143017, 54.053551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880142, 39.497128, 53.944603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306386, -0.396693, -0.865310,
		-0.874085, 0.242742, -0.420776,
		0.376966, 0.885274, -0.272371,
		30.993233, 39.762711, 53.862892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396511, 39.302261, 53.309654>,  <30.729357, 39.143017, 54.053551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396511, 39.302261, 53.309654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.722254, 39.528866, 53.360069>,  <30.917700, 39.664829, 53.390320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.722254, 39.528866, 53.360069>,  <30.396511, 39.302261, 53.309654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722254, 39.528866, 53.360069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364820, -0.330786, -0.870337,
		-0.451366, 0.754747, -0.476053,
		0.814356, 0.566514, 0.126041,
		30.966560, 39.698818, 53.397881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416174, 39.480350, 52.694843>,  <30.396511, 39.302261, 53.309654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416174, 39.480350, 52.694843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.771935, 39.560326, 52.859280>,  <30.985390, 39.608311, 52.957939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.771935, 39.560326, 52.859280>,  <30.416174, 39.480350, 52.694843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.771935, 39.560326, 52.859280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450249, -0.227704, -0.863381,
		-0.079018, 0.952982, -0.292543,
		0.889400, 0.199939, 0.411087,
		31.038754, 39.620308, 52.982605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859060, 39.896957, 52.211887>,  <30.416174, 39.480350, 52.694843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859060, 39.896957, 52.211887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.101889, 39.710789, 52.469521>,  <31.247585, 39.599087, 52.624100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.101889, 39.710789, 52.469521>,  <30.859060, 39.896957, 52.211887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101889, 39.710789, 52.469521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590857, -0.277614, -0.757508,
		0.531367, 0.840425, 0.106465,
		0.607072, -0.465421, 0.644086,
		31.284010, 39.571163, 52.662746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566135, 40.159653, 51.945736>,  <30.859060, 39.896957, 52.211887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566135, 40.159653, 51.945736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.602682, 39.818317, 52.151054>,  <31.624611, 39.613518, 52.274246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.602682, 39.818317, 52.151054>,  <31.566135, 40.159653, 51.945736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602682, 39.818317, 52.151054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509055, -0.402988, -0.760568,
		0.855871, 0.330785, 0.397576,
		0.091366, -0.853336, 0.513293,
		31.630093, 39.562317, 52.305042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243309, 39.824604, 51.765034>,  <31.566135, 40.159653, 51.945736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243309, 39.824604, 51.765034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.008198, 39.542019, 51.922729>,  <31.867130, 39.372467, 52.017345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.008198, 39.542019, 51.922729>,  <32.243309, 39.824604, 51.765034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008198, 39.542019, 51.922729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367442, -0.667258, -0.647884,
		0.720764, -0.235954, 0.651786,
		-0.587780, -0.706465, 0.394236,
		31.831863, 39.330078, 52.041000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721325, 39.222866, 51.929825>,  <32.243309, 39.824604, 51.765034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721325, 39.222866, 51.929825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.343071, 39.094555, 51.908333>,  <32.116119, 39.017570, 51.895439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.343071, 39.094555, 51.908333>,  <32.721325, 39.222866, 51.929825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343071, 39.094555, 51.908333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273593, -0.695202, -0.664712,
		0.175868, -0.643272, 0.745166,
		-0.945631, -0.320774, -0.053731,
		32.059383, 38.998322, 51.892212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712959, 38.469498, 51.807632>,  <32.721325, 39.222866, 51.929825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712959, 38.469498, 51.807632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.346542, 38.569359, 51.682068>,  <32.126694, 38.629276, 51.606728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.346542, 38.569359, 51.682068>,  <32.712959, 38.469498, 51.807632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346542, 38.569359, 51.682068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109681, -0.596907, -0.794778,
		-0.385795, -0.762480, 0.519409,
		-0.916041, 0.249652, -0.313914,
		32.071732, 38.644253, 51.587894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428677, 37.899185, 51.621944>,  <32.712959, 38.469498, 51.807632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428677, 37.899185, 51.621944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.212799, 38.176037, 51.430244>,  <32.083271, 38.342148, 51.315224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.212799, 38.176037, 51.430244>,  <32.428677, 37.899185, 51.621944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212799, 38.176037, 51.430244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278122, -0.390728, -0.877485,
		-0.794594, -0.606862, 0.018375,
		-0.539692, 0.692134, -0.479252,
		32.050892, 38.383678, 51.286469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273945, 37.502815, 51.012638>,  <32.428677, 37.899185, 51.621944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273945, 37.502815, 51.012638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.170288, 37.879372, 50.926273>,  <32.108093, 38.105305, 50.874454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.170288, 37.879372, 50.926273>,  <32.273945, 37.502815, 51.012638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170288, 37.879372, 50.926273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052533, -0.209483, -0.976400,
		-0.964409, -0.264370, 0.004832,
		-0.259143, 0.941395, -0.215916,
		32.092545, 38.161789, 50.861500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706495, 37.441677, 50.645924>,  <32.273945, 37.502815, 51.012638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706495, 37.441677, 50.645924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.884148, 37.792179, 50.571167>,  <31.990740, 38.002480, 50.526314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.884148, 37.792179, 50.571167>,  <31.706495, 37.441677, 50.645924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884148, 37.792179, 50.571167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297827, -0.341121, -0.891592,
		-0.845013, 0.340321, -0.412474,
		0.444131, 0.876252, -0.186895,
		32.017387, 38.055054, 50.515099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545391, 37.576851, 49.930054>,  <31.706495, 37.441677, 50.645924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545391, 37.576851, 49.930054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.868874, 37.802422, 49.996960>,  <32.062965, 37.937763, 50.037102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.868874, 37.802422, 49.996960>,  <31.545391, 37.576851, 49.930054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868874, 37.802422, 49.996960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372457, -0.270847, -0.887647,
		-0.455265, 0.780146, -0.429074,
		0.808708, 0.563927, 0.167264,
		32.111485, 37.971600, 50.047138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.916409, 37.923119, 49.694256>,  <31.545391, 37.576851, 49.930054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.916409, 37.923119, 49.694256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.632891, 37.640961, 49.692173>,  <30.462780, 37.471664, 49.690922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.632891, 37.640961, 49.692173>,  <30.916409, 37.923119, 49.694256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632891, 37.640961, 49.692173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262438, 0.256833, 0.930141,
		-0.654782, 0.660644, -0.367165,
		-0.708792, -0.705398, -0.005209,
		30.420254, 37.429340, 49.690609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.181076, 38.138821, 49.659203>,  <30.916409, 37.923119, 49.694256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.181076, 38.138821, 49.659203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.130224, 37.791290, 49.850609>,  <30.099714, 37.582771, 49.965450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.130224, 37.791290, 49.850609>,  <30.181076, 38.138821, 49.659203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.130224, 37.791290, 49.850609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598854, 0.451810, 0.661243,
		-0.790704, -0.202497, -0.577739,
		-0.127129, -0.868829, 0.478514,
		30.092085, 37.530643, 49.994164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.556284, 38.245659, 49.950985>,  <30.181076, 38.138821, 49.659203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.556284, 38.245659, 49.950985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.703470, 37.930145, 50.147930>,  <29.791782, 37.740837, 50.266098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.703470, 37.930145, 50.147930>,  <29.556284, 38.245659, 49.950985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703470, 37.930145, 50.147930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534801, 0.253630, 0.806015,
		-0.760650, -0.559900, -0.328517,
		0.367966, -0.788786, 0.492359,
		29.813860, 37.693508, 50.295639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967377, 37.909889, 50.384655>,  <29.556284, 38.245659, 49.950985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.967377, 37.909889, 50.384655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.309427, 37.778404, 50.545010>,  <29.514658, 37.699512, 50.641224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.309427, 37.778404, 50.545010>,  <28.967377, 37.909889, 50.384655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.309427, 37.778404, 50.545010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378383, 0.132856, 0.916065,
		-0.354381, -0.935039, -0.010770,
		0.855126, -0.328711, 0.400885,
		29.565966, 37.679790, 50.665276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781410, 37.437614, 50.861580>,  <28.967377, 37.909889, 50.384655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781410, 37.437614, 50.861580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.135300, 37.597050, 50.958237>,  <29.347633, 37.692711, 51.016232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.135300, 37.597050, 50.958237>,  <28.781410, 37.437614, 50.861580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.135300, 37.597050, 50.958237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304835, 0.102598, 0.946863,
		0.352616, -0.911373, 0.212274,
		0.884724, 0.398588, 0.241641,
		29.400717, 37.716625, 51.030727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.093615, 37.038689, 51.446320>,  <28.781410, 37.437614, 50.861580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.093615, 37.038689, 51.446320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.274843, 37.395248, 51.450939>,  <29.383581, 37.609184, 51.453712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.274843, 37.395248, 51.450939>,  <29.093615, 37.038689, 51.446320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.274843, 37.395248, 51.450939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212453, 0.095383, 0.972505,
		0.865788, -0.443070, 0.232596,
		0.453073, 0.891398, 0.011550,
		29.410765, 37.662666, 51.454403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.569246, 37.031773, 52.009956>,  <29.093615, 37.038689, 51.446320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.569246, 37.031773, 52.009956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.495840, 37.412838, 51.913002>,  <29.451797, 37.641479, 51.854828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.495840, 37.412838, 51.913002>,  <29.569246, 37.031773, 52.009956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495840, 37.412838, 51.913002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144625, 0.217724, 0.965236,
		0.972320, 0.212190, 0.097824,
		-0.183515, 0.952666, -0.242385,
		29.440786, 37.698639, 51.840286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974625, 37.381550, 52.416550>,  <29.569246, 37.031773, 52.009956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974625, 37.381550, 52.416550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.749317, 37.693329, 52.306870>,  <29.614132, 37.880398, 52.241062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.749317, 37.693329, 52.306870>,  <29.974625, 37.381550, 52.416550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749317, 37.693329, 52.306870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134337, 0.241047, 0.961171,
		0.815281, 0.578232, -0.031065,
		-0.563268, 0.779451, -0.274199,
		29.580338, 37.927166, 52.224609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179276, 37.967964, 52.853954>,  <29.974625, 37.381550, 52.416550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.179276, 37.967964, 52.853954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.819563, 38.066742, 52.709560>,  <29.603735, 38.126007, 52.622925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.819563, 38.066742, 52.709560>,  <30.179276, 37.967964, 52.853954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.819563, 38.066742, 52.709560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263897, 0.351835, 0.898093,
		0.348785, 0.902902, -0.251231,
		-0.899281, 0.246943, -0.360988,
		29.549778, 38.140823, 52.601265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.173117, 38.560108, 53.135296>,  <30.179276, 37.967964, 52.853954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.173117, 38.560108, 53.135296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.797817, 38.472984, 53.027775>,  <29.572638, 38.420712, 52.963264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.797817, 38.472984, 53.027775>,  <30.173117, 38.560108, 53.135296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.797817, 38.472984, 53.027775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330047, 0.330528, 0.884206,
		-0.103742, 0.918319, -0.382004,
		-0.938246, -0.217809, -0.268799,
		29.516344, 38.407642, 52.947136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686840, 39.236160, 53.239338>,  <30.173117, 38.560108, 53.135296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686840, 39.236160, 53.239338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.443848, 38.919113, 53.260246>,  <29.298052, 38.728886, 53.272789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.443848, 38.919113, 53.260246>,  <29.686840, 39.236160, 53.239338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.443848, 38.919113, 53.260246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321196, 0.305288, 0.896455,
		-0.726500, 0.527789, -0.440041,
		-0.607479, -0.792614, 0.052268,
		29.261604, 38.681328, 53.275928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127623, 39.543995, 53.590000>,  <29.686840, 39.236160, 53.239338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127623, 39.543995, 53.590000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.125620, 39.146130, 53.631218>,  <29.124418, 38.907410, 53.655949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.125620, 39.146130, 53.631218>,  <29.127623, 39.543995, 53.590000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.125620, 39.146130, 53.631218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535809, 0.089678, 0.839563,
		-0.844324, -0.051009, -0.533399,
		-0.005008, -0.994663, 0.103048,
		29.124117, 38.847729, 53.662132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413992, 39.431862, 53.903393>,  <29.127623, 39.543995, 53.590000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.413992, 39.431862, 53.903393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.620602, 39.095726, 53.969166>,  <28.744568, 38.894047, 54.008629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.620602, 39.095726, 53.969166>,  <28.413992, 39.431862, 53.903393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.620602, 39.095726, 53.969166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563090, -0.188676, 0.804569,
		-0.645083, -0.508171, -0.570640,
		0.516525, -0.840335, 0.164434,
		28.775558, 38.843624, 54.018497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874569, 38.945988, 54.153637>,  <28.413992, 39.431862, 53.903393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874569, 38.945988, 54.153637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.213577, 38.762985, 54.261261>,  <28.416983, 38.653183, 54.325836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.213577, 38.762985, 54.261261>,  <27.874569, 38.945988, 54.153637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213577, 38.762985, 54.261261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401689, -0.221549, 0.888573,
		-0.346916, -0.861165, -0.371543,
		0.847523, -0.457505, 0.269062,
		28.467834, 38.625732, 54.341980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.283211, 35.027538, 59.811111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.986542, 35.193905, 59.600613>,  <35.808540, 35.293724, 59.474312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.986542, 35.193905, 59.600613>,  <36.283211, 35.027538, 59.811111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986542, 35.193905, 59.600613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222150, -0.587963, -0.777785,
		-0.632911, -0.693765, 0.343677,
		-0.741669, 0.415921, -0.526248,
		35.764042, 35.318680, 59.442738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013496, 34.482952, 59.585869>,  <36.283211, 35.027538, 59.811111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013496, 34.482952, 59.585869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.881100, 34.785393, 59.360035>,  <35.801662, 34.966858, 59.224533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.881100, 34.785393, 59.360035>,  <36.013496, 34.482952, 59.585869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881100, 34.785393, 59.360035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118833, -0.560146, -0.819826,
		-0.936120, -0.338449, 0.095555,
		-0.330995, 0.756101, -0.564583,
		35.781799, 35.012222, 59.190659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557453, 34.201576, 59.175987>,  <36.013496, 34.482952, 59.585869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557453, 34.201576, 59.175987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.630505, 34.540394, 58.976326>,  <35.674335, 34.743687, 58.856529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.630505, 34.540394, 58.976326>,  <35.557453, 34.201576, 59.175987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630505, 34.540394, 58.976326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015347, -0.510088, -0.859985,
		-0.983062, 0.149398, -0.106156,
		0.182629, 0.847048, -0.499156,
		35.685295, 34.794510, 58.826580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123665, 34.166046, 58.695686>,  <35.557453, 34.201576, 59.175987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123665, 34.166046, 58.695686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.409424, 34.409889, 58.558273>,  <35.580879, 34.556194, 58.475826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.409424, 34.409889, 58.558273>,  <35.123665, 34.166046, 58.695686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409424, 34.409889, 58.558273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075038, -0.554857, -0.828555,
		-0.695702, 0.566142, -0.442133,
		0.714400, 0.609604, -0.343533,
		35.623745, 34.592770, 58.455212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927238, 34.282818, 57.938850>,  <35.123665, 34.166046, 58.695686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927238, 34.282818, 57.938850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.313435, 34.371864, 57.992912>,  <35.545151, 34.425293, 58.025349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.313435, 34.371864, 57.992912>,  <34.927238, 34.282818, 57.938850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313435, 34.371864, 57.992912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233852, -0.512643, -0.826142,
		-0.114625, 0.829240, -0.547012,
		0.965492, 0.222616, 0.135157,
		35.603081, 34.438648, 58.033459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185410, 34.282276, 57.276752>,  <34.927238, 34.282818, 57.938850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185410, 34.282276, 57.276752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.522251, 34.355625, 57.479626>,  <35.724358, 34.399635, 57.601349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.522251, 34.355625, 57.479626>,  <35.185410, 34.282276, 57.276752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522251, 34.355625, 57.479626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539271, -0.298233, -0.787555,
		0.006843, 0.936713, -0.350031,
		0.842104, 0.183373, 0.507183,
		35.774883, 34.410637, 57.631783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525600, 34.807575, 57.039288>,  <35.185410, 34.282276, 57.276752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525600, 34.807575, 57.039288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.778442, 34.549351, 57.210724>,  <35.930149, 34.394417, 57.313583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.778442, 34.549351, 57.210724>,  <35.525600, 34.807575, 57.039288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778442, 34.549351, 57.210724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385520, -0.217785, -0.896629,
		0.672173, 0.731993, 0.111215,
		0.632105, -0.645566, 0.428588,
		35.968075, 34.355682, 57.339302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174778, 34.907227, 56.773666>,  <35.525600, 34.807575, 57.039288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174778, 34.907227, 56.773666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.224174, 34.533188, 56.906544>,  <36.253811, 34.308765, 56.986271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.224174, 34.533188, 56.906544>,  <36.174778, 34.907227, 56.773666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224174, 34.533188, 56.906544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511491, -0.226881, -0.828796,
		0.850369, 0.272262, 0.450274,
		0.123490, -0.935093, 0.332192,
		36.261223, 34.252659, 57.006203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853382, 34.677040, 56.481205>,  <36.174778, 34.907227, 56.773666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853382, 34.677040, 56.481205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.686890, 34.330719, 56.592297>,  <36.586994, 34.122925, 56.658951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.686890, 34.330719, 56.592297>,  <36.853382, 34.677040, 56.481205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686890, 34.330719, 56.592297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380221, -0.443194, -0.811795,
		0.825943, -0.232298, 0.513669,
		-0.416233, -0.865804, 0.277728,
		36.562019, 34.070976, 56.675613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348640, 34.124279, 56.399418>,  <36.853382, 34.677040, 56.481205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348640, 34.124279, 56.399418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.991215, 33.944717, 56.397697>,  <36.776760, 33.836979, 56.396667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.991215, 33.944717, 56.397697>,  <37.348640, 34.124279, 56.399418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991215, 33.944717, 56.397697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335814, -0.662037, -0.670027,
		0.297932, -0.600159, 0.742325,
		-0.893569, -0.448906, -0.004299,
		36.723145, 33.810047, 56.396408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435062, 33.388718, 56.591759>,  <37.348640, 34.124279, 56.399418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435062, 33.388718, 56.591759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.105846, 33.441616, 56.370811>,  <36.908318, 33.473354, 56.238243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.105846, 33.441616, 56.370811>,  <37.435062, 33.388718, 56.591759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105846, 33.441616, 56.370811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327346, -0.684312, -0.651584,
		-0.464164, -0.717097, 0.519927,
		-0.823041, 0.132245, -0.552372,
		36.858932, 33.481289, 56.205101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283497, 32.718788, 56.427254>,  <37.435062, 33.388718, 56.591759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283497, 32.718788, 56.427254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.126339, 32.963074, 56.152252>,  <37.032043, 33.109646, 55.987251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.126339, 32.963074, 56.152252>,  <37.283497, 32.718788, 56.427254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126339, 32.963074, 56.152252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292318, -0.625906, -0.723044,
		-0.871885, -0.485050, 0.067394,
		-0.392895, 0.610711, -0.687507,
		37.008469, 33.146286, 55.945999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916740, 32.206272, 56.144341>,  <37.283497, 32.718788, 56.427254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916740, 32.206272, 56.144341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.923397, 32.516026, 55.891342>,  <36.927391, 32.701878, 55.739544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.923397, 32.516026, 55.891342>,  <36.916740, 32.206272, 56.144341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923397, 32.516026, 55.891342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216973, -0.620308, -0.753751,
		-0.976036, -0.124694, -0.178342,
		0.016639, 0.774383, -0.632498,
		36.928391, 32.748341, 55.701591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462891, 31.988317, 55.599632>,  <36.916740, 32.206272, 56.144341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462891, 31.988317, 55.599632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.674568, 32.282341, 55.430096>,  <36.801575, 32.458755, 55.328373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.674568, 32.282341, 55.430096>,  <36.462891, 31.988317, 55.599632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674568, 32.282341, 55.430096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139946, -0.568293, -0.810838,
		-0.836880, 0.369775, -0.403606,
		0.529194, 0.735058, -0.423844,
		36.833328, 32.502857, 55.302944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747223, 32.230228, 55.712166>,  <36.462891, 31.988317, 55.599632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747223, 32.230228, 55.712166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.431133, 32.114944, 55.495838>,  <35.241482, 32.045773, 55.366043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.431133, 32.114944, 55.495838>,  <35.747223, 32.230228, 55.712166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431133, 32.114944, 55.495838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607012, 0.489352, 0.626156,
		0.084185, 0.823085, -0.561644,
		-0.790221, -0.288212, -0.540818,
		35.194065, 32.028481, 55.333591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365452, 32.830765, 55.433533>,  <35.747223, 32.230228, 55.712166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365452, 32.830765, 55.433533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.129238, 32.510628, 55.474949>,  <34.987511, 32.318546, 55.499798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.129238, 32.510628, 55.474949>,  <35.365452, 32.830765, 55.433533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129238, 32.510628, 55.474949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574945, 0.507273, 0.641960,
		-0.566311, 0.319569, -0.759715,
		-0.590534, -0.800343, 0.103540,
		34.952080, 32.270523, 55.506012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682217, 33.118279, 55.295364>,  <35.365452, 32.830765, 55.433533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682217, 33.118279, 55.295364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.578747, 32.800400, 55.515018>,  <34.516666, 32.609673, 55.646812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.578747, 32.800400, 55.515018>,  <34.682217, 33.118279, 55.295364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578747, 32.800400, 55.515018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551354, 0.588250, 0.591583,
		-0.793156, -0.149742, -0.590322,
		-0.258672, -0.794694, 0.549135,
		34.501144, 32.561993, 55.679760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962681, 33.208263, 55.323296>,  <34.682217, 33.118279, 55.295364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962681, 33.208263, 55.323296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.052769, 32.960304, 55.623962>,  <34.106823, 32.811527, 55.804363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.052769, 32.960304, 55.623962>,  <33.962681, 33.208263, 55.323296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052769, 32.960304, 55.623962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542959, 0.560733, 0.625119,
		-0.808994, -0.548914, -0.210291,
		0.225220, -0.619897, 0.751667,
		34.120335, 32.774334, 55.849464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341656, 33.071281, 55.632641>,  <33.962681, 33.208263, 55.323296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341656, 33.071281, 55.632641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.632038, 32.974174, 55.890030>,  <33.806267, 32.915909, 56.044464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.632038, 32.974174, 55.890030>,  <33.341656, 33.071281, 55.632641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632038, 32.974174, 55.890030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493563, 0.467668, 0.733268,
		-0.478947, -0.849911, 0.219683,
		0.725952, -0.242769, 0.643473,
		33.849823, 32.901344, 56.083073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967846, 32.791245, 56.276020>,  <33.341656, 33.071281, 55.632641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967846, 32.791245, 56.276020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.333958, 32.912354, 56.382294>,  <33.553627, 32.985020, 56.446056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.333958, 32.912354, 56.382294>,  <32.967846, 32.791245, 56.276020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333958, 32.912354, 56.382294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400781, 0.618332, 0.676048,
		0.040410, -0.725255, 0.687294,
		0.915282, 0.302773, 0.265682,
		33.608543, 33.003185, 56.461998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076134, 32.666302, 57.028194>,  <32.967846, 32.791245, 56.276020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076134, 32.666302, 57.028194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.334141, 32.950382, 56.915359>,  <33.488945, 33.120831, 56.847656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.334141, 32.950382, 56.915359>,  <33.076134, 32.666302, 57.028194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334141, 32.950382, 56.915359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342796, 0.598831, 0.723804,
		0.682969, -0.370164, 0.629707,
		0.645015, 0.710197, -0.282092,
		33.527645, 33.163441, 56.830730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468281, 32.901844, 57.662514>,  <33.076134, 32.666302, 57.028194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468281, 32.901844, 57.662514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.520805, 33.196087, 57.396690>,  <33.552319, 33.372631, 57.237194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.520805, 33.196087, 57.396690>,  <33.468281, 32.901844, 57.662514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520805, 33.196087, 57.396690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160062, 0.677301, 0.718083,
		0.978334, 0.012079, 0.206679,
		0.131311, 0.735607, -0.664561,
		33.560200, 33.416767, 57.197323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834938, 33.345142, 58.059258>,  <33.468281, 32.901844, 57.662514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834938, 33.345142, 58.059258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.688572, 33.557686, 57.753639>,  <33.600754, 33.685211, 57.570267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.688572, 33.557686, 57.753639>,  <33.834938, 33.345142, 58.059258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688572, 33.557686, 57.753639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264925, 0.727544, 0.632847,
		0.892144, 0.433983, -0.125449,
		-0.365914, 0.531356, -0.764047,
		33.578796, 33.717094, 57.524426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137783, 34.060158, 58.210426>,  <33.834938, 33.345142, 58.059258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137783, 34.060158, 58.210426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.841408, 34.078800, 57.942444>,  <33.663582, 34.089985, 57.781654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.841408, 34.078800, 57.942444>,  <34.137783, 34.060158, 58.210426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841408, 34.078800, 57.942444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466706, 0.681599, 0.563568,
		0.482902, 0.730240, -0.483275,
		-0.740939, 0.046601, -0.669953,
		33.619125, 34.092781, 57.741459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014782, 34.827686, 58.066696>,  <34.137783, 34.060158, 58.210426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014782, 34.827686, 58.066696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.673962, 34.637512, 57.979095>,  <33.469467, 34.523407, 57.926537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.673962, 34.637512, 57.979095>,  <34.014782, 34.827686, 58.066696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673962, 34.637512, 57.979095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508818, 0.654027, 0.559780,
		-0.122911, 0.588394, -0.799178,
		-0.852055, -0.475439, -0.218998,
		33.418346, 34.494881, 57.913395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501213, 35.353966, 57.753815>,  <34.014782, 34.827686, 58.066696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501213, 35.353966, 57.753815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.310307, 35.037621, 57.907051>,  <33.195763, 34.847813, 57.998993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.310307, 35.037621, 57.907051>,  <33.501213, 35.353966, 57.753815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310307, 35.037621, 57.907051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588301, 0.611394, 0.529245,
		-0.652775, 0.027221, -0.757062,
		-0.477270, -0.790858, 0.383088,
		33.167126, 34.800362, 58.021976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739532, 35.451160, 57.576973>,  <33.501213, 35.353966, 57.753815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739532, 35.451160, 57.576973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.798080, 35.213100, 57.893040>,  <32.833210, 35.070263, 58.082680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.798080, 35.213100, 57.893040>,  <32.739532, 35.451160, 57.576973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798080, 35.213100, 57.893040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473452, 0.659199, 0.584209,
		-0.868572, -0.459620, -0.185288,
		0.146373, -0.595153, 0.790170,
		32.841991, 35.034554, 58.130089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134293, 35.537334, 58.096989>,  <32.739532, 35.451160, 57.576973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134293, 35.537334, 58.096989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.378128, 35.323963, 58.331547>,  <32.524429, 35.195942, 58.472282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.378128, 35.323963, 58.331547>,  <32.134293, 35.537334, 58.096989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378128, 35.323963, 58.331547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239709, 0.581054, 0.777763,
		-0.755607, -0.614679, 0.226336,
		0.609588, -0.533429, 0.586393,
		32.561005, 35.163933, 58.507465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604450, 34.988350, 58.025532>,  <32.134293, 35.537334, 58.096989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604450, 34.988350, 58.025532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.214554, 35.004253, 57.937622>,  <30.980616, 35.013798, 57.884876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.214554, 35.004253, 57.937622>,  <31.604450, 34.988350, 58.025532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214554, 35.004253, 57.937622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127314, -0.709565, -0.693043,
		-0.183500, -0.703516, 0.686580,
		-0.974740, 0.039762, -0.219773,
		30.922132, 35.016182, 57.871689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329603, 34.332100, 57.974552>,  <31.604450, 34.988350, 58.025532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329603, 34.332100, 57.974552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.055902, 34.537426, 57.767361>,  <30.891682, 34.660622, 57.643044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.055902, 34.537426, 57.767361>,  <31.329603, 34.332100, 57.974552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055902, 34.537426, 57.767361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049430, -0.741313, -0.669336,
		-0.727568, -0.432391, 0.532618,
		-0.684253, 0.513315, -0.517983,
		30.850626, 34.691422, 57.611965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.852962, 33.832527, 57.684456>,  <31.329603, 34.332100, 57.974552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.852962, 33.832527, 57.684456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.756189, 34.138062, 57.445118>,  <30.698126, 34.321384, 57.301514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.756189, 34.138062, 57.445118>,  <30.852962, 33.832527, 57.684456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.756189, 34.138062, 57.445118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051232, -0.605752, -0.794003,
		-0.968940, -0.222750, 0.107418,
		-0.241933, 0.763837, -0.598348,
		30.683609, 34.367214, 57.265614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275682, 33.581177, 57.267365>,  <30.852962, 33.832527, 57.684456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.275682, 33.581177, 57.267365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.393759, 33.877590, 57.026127>,  <30.464605, 34.055439, 56.881382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.393759, 33.877590, 57.026127>,  <30.275682, 33.581177, 57.267365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393759, 33.877590, 57.026127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145657, -0.588943, -0.794941,
		-0.944270, 0.322506, -0.065915,
		0.295193, 0.741037, -0.603096,
		30.482317, 34.099903, 56.845200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.747507, 33.723232, 56.749905>,  <30.275682, 33.581177, 57.267365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.747507, 33.723232, 56.749905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.103563, 33.839733, 56.609722>,  <30.317198, 33.909634, 56.525612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.103563, 33.839733, 56.609722>,  <29.747507, 33.723232, 56.749905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103563, 33.839733, 56.609722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163144, -0.514407, -0.841885,
		-0.425478, 0.806572, -0.410379,
		0.890142, 0.291252, -0.350456,
		30.370605, 33.927109, 56.504585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774101, 33.682438, 55.999554>,  <29.747507, 33.723232, 56.749905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774101, 33.682438, 55.999554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.168068, 33.737251, 56.041809>,  <30.404448, 33.770138, 56.067162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.168068, 33.737251, 56.041809>,  <29.774101, 33.682438, 55.999554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168068, 33.737251, 56.041809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159274, -0.479460, -0.862989,
		-0.067608, 0.866798, -0.494055,
		0.984917, 0.137035, 0.105643,
		30.463543, 33.778362, 56.073502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057425, 33.997280, 55.393482>,  <29.774101, 33.682438, 55.999554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057425, 33.997280, 55.393482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.352808, 33.801388, 55.578888>,  <30.530039, 33.683853, 55.690132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.352808, 33.801388, 55.578888>,  <30.057425, 33.997280, 55.393482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352808, 33.801388, 55.578888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237097, -0.454923, -0.858388,
		0.631240, 0.743782, -0.219829,
		0.738459, -0.489727, 0.463514,
		30.574347, 33.654469, 55.717941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591805, 34.085320, 54.992718>,  <30.057425, 33.997280, 55.393482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591805, 34.085320, 54.992718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.688839, 33.771172, 55.220524>,  <30.747059, 33.582684, 55.357208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.688839, 33.771172, 55.220524>,  <30.591805, 34.085320, 54.992718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688839, 33.771172, 55.220524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122885, -0.557450, -0.821065,
		0.962315, 0.269165, -0.038720,
		0.242587, -0.785366, 0.569520,
		30.761616, 33.535561, 55.391380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190052, 33.810982, 54.775894>,  <30.591805, 34.085320, 54.992718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.190052, 33.810982, 54.775894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.028404, 33.501003, 54.970272>,  <30.931416, 33.315014, 55.086899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.028404, 33.501003, 54.970272>,  <31.190052, 33.810982, 54.775894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028404, 33.501003, 54.970272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134009, -0.575684, -0.806616,
		0.904835, -0.260850, 0.336497,
		-0.404122, -0.774948, 0.485943,
		30.907167, 33.268520, 55.116055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672945, 33.294987, 54.535736>,  <31.190052, 33.810982, 54.775894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672945, 33.294987, 54.535736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.337225, 33.120422, 54.665428>,  <31.135794, 33.015682, 54.743244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.337225, 33.120422, 54.665428>,  <31.672945, 33.294987, 54.535736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337225, 33.120422, 54.665428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135710, -0.745662, -0.652359,
		0.526460, -0.503523, 0.685058,
		-0.839299, -0.436410, 0.324228,
		31.085436, 32.989498, 54.762695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801655, 32.506638, 54.674892>,  <31.672945, 33.294987, 54.535736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801655, 32.506638, 54.674892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.413525, 32.573723, 54.605213>,  <31.180647, 32.613976, 54.563408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.413525, 32.573723, 54.605213>,  <31.801655, 32.506638, 54.674892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413525, 32.573723, 54.605213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026885, -0.790731, -0.611573,
		-0.240312, -0.588740, 0.771774,
		-0.970323, 0.167717, -0.174194,
		31.122427, 32.624039, 54.552956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434675, 31.761442, 54.540440>,  <31.801655, 32.506638, 54.674892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434675, 31.761442, 54.540440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.193842, 32.047230, 54.397873>,  <31.049343, 32.218700, 54.312332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.193842, 32.047230, 54.397873>,  <31.434675, 31.761442, 54.540440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193842, 32.047230, 54.397873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192534, -0.563142, -0.803618,
		-0.774873, -0.415221, 0.476616,
		-0.602082, 0.714467, -0.356419,
		31.013218, 32.261570, 54.290947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970745, 31.375914, 54.154419>,  <31.434675, 31.761442, 54.540440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970745, 31.375914, 54.154419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.924204, 31.742424, 54.001106>,  <30.896278, 31.962330, 53.909119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.924204, 31.742424, 54.001106>,  <30.970745, 31.375914, 54.154419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924204, 31.742424, 54.001106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236391, -0.400357, -0.885344,
		-0.964666, -0.012410, 0.263182,
		-0.116354, 0.916275, -0.383277,
		30.889297, 32.017307, 53.886124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.287184, 31.368286, 53.736912>,  <30.970745, 31.375914, 54.154419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.287184, 31.368286, 53.736912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.503872, 31.674252, 53.597515>,  <30.633884, 31.857830, 53.513878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.503872, 31.674252, 53.597515>,  <30.287184, 31.368286, 53.736912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.503872, 31.674252, 53.597515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044684, -0.387804, -0.920658,
		-0.839369, 0.514313, -0.175903,
		0.541723, 0.764912, -0.348492,
		30.666389, 31.903725, 53.492966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<27.650724, 38.187969, 54.617092> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.041330, 38.250275, 54.676636>,  <28.275694, 38.287659, 54.712360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.041330, 38.250275, 54.676636>,  <27.650724, 38.187969, 54.617092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.041330, 38.250275, 54.676636> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095652, -0.305667, 0.947322,
		0.193058, -0.939311, -0.283589,
		0.976514, 0.155762, 0.148859,
		28.334284, 38.297005, 54.721294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.966808, 37.588764, 54.996845>,  <27.650724, 38.187969, 54.617092>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.966808, 37.588764, 54.996845> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.216524, 37.888229, 55.086075>,  <28.366354, 38.067909, 55.139610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.216524, 37.888229, 55.086075>,  <27.966808, 37.588764, 54.996845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.216524, 37.888229, 55.086075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343620, 0.006729, 0.939085,
		0.701560, -0.662913, 0.261457,
		0.624291, 0.748667, 0.223069,
		28.403811, 38.112831, 55.152996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.315113, 37.343273, 55.622818>,  <27.966808, 37.588764, 54.996845>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.315113, 37.343273, 55.622818> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.368402, 37.739574, 55.612560>,  <28.400375, 37.977356, 55.606407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.368402, 37.739574, 55.612560>,  <28.315113, 37.343273, 55.622818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368402, 37.739574, 55.612560> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113051, 0.040898, 0.992747,
		0.984617, -0.129357, 0.117455,
		0.133222, 0.990754, -0.025645,
		28.408369, 38.036800, 55.604866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756411, 37.447212, 56.193596>,  <28.315113, 37.343273, 55.622818>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756411, 37.447212, 56.193596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.589773, 37.804680, 56.126904>,  <28.489792, 38.019161, 56.086887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.589773, 37.804680, 56.126904>,  <28.756411, 37.447212, 56.193596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.589773, 37.804680, 56.126904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179271, 0.099049, 0.978801,
		0.891243, 0.437651, 0.118947,
		-0.416592, 0.893673, -0.166735,
		28.464796, 38.072781, 56.076881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053604, 37.858665, 56.772446>,  <28.756411, 37.447212, 56.193596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053604, 37.858665, 56.772446> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.732862, 38.056660, 56.638569>,  <28.540419, 38.175457, 56.558243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.732862, 38.056660, 56.638569>,  <29.053604, 37.858665, 56.772446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.732862, 38.056660, 56.638569> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335271, 0.090936, 0.937723,
		0.494597, 0.864128, 0.093038,
		-0.801853, 0.494988, -0.334693,
		28.492306, 38.205154, 56.538162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.126106, 38.535992, 57.037781>,  <29.053604, 37.858665, 56.772446>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.126106, 38.535992, 57.037781> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.735367, 38.483303, 56.970356>,  <28.500923, 38.451691, 56.929901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.735367, 38.483303, 56.970356>,  <29.126106, 38.535992, 57.037781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.735367, 38.483303, 56.970356> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191960, 0.191927, 0.962453,
		-0.094425, 0.972529, -0.212770,
		-0.976850, -0.131723, -0.168564,
		28.442312, 38.443787, 56.919788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.773067, 39.169422, 57.340679>,  <29.126106, 38.535992, 57.037781>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.773067, 39.169422, 57.340679> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.484241, 38.895855, 57.298958>,  <28.310946, 38.731716, 57.273926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.484241, 38.895855, 57.298958>,  <28.773067, 39.169422, 57.340679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.484241, 38.895855, 57.298958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368124, 0.252174, 0.894926,
		-0.585753, 0.684591, -0.433853,
		-0.722065, -0.683917, -0.104303,
		28.267622, 38.690681, 57.267666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.002682, 39.507259, 57.579227>,  <28.773067, 39.169422, 57.340679>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.002682, 39.507259, 57.579227> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.993917, 39.108608, 57.610840>,  <27.988659, 38.869415, 57.629807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.993917, 39.108608, 57.610840>,  <28.002682, 39.507259, 57.579227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.993917, 39.108608, 57.610840> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320188, 0.081885, 0.943809,
		-0.947101, -0.004625, -0.320903,
		-0.021912, -0.996631, 0.079034,
		27.987345, 38.809620, 57.634548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.439531, 39.431919, 58.028393>,  <28.002682, 39.507259, 57.579227>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.439531, 39.431919, 58.028393> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.595850, 39.063931, 58.016167>,  <27.689640, 38.843136, 58.008831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.595850, 39.063931, 58.016167>,  <27.439531, 39.431919, 58.028393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.595850, 39.063931, 58.016167> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239744, -0.133785, 0.961574,
		-0.888708, -0.368451, -0.272840,
		0.390795, -0.919970, -0.030562,
		27.713089, 38.787941, 58.007000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925449, 38.966000, 58.300282>,  <27.439531, 39.431919, 58.028393>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.925449, 38.966000, 58.300282> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.270924, 38.768185, 58.339237>,  <27.478209, 38.649498, 58.362610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.270924, 38.768185, 58.339237>,  <26.925449, 38.966000, 58.300282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270924, 38.768185, 58.339237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162098, -0.089573, 0.982701,
		-0.477257, -0.864529, -0.157526,
		0.863684, -0.494536, 0.097389,
		27.530029, 38.619823, 58.368454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.848230, 38.272133, 58.630596>,  <26.925449, 38.966000, 58.300282>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.848230, 38.272133, 58.630596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.206396, 38.423592, 58.724285>,  <27.421295, 38.514465, 58.780499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.206396, 38.423592, 58.724285>,  <26.848230, 38.272133, 58.630596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.206396, 38.423592, 58.724285> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240576, -0.031196, 0.970129,
		0.374639, -0.925017, 0.063159,
		0.895416, 0.378643, 0.234224,
		27.475021, 38.537186, 58.794552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.048304, 37.875923, 59.218369>,  <26.848230, 38.272133, 58.630596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.048304, 37.875923, 59.218369> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.303776, 38.183521, 59.229195>,  <27.457058, 38.368080, 59.235691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.303776, 38.183521, 59.229195>,  <27.048304, 37.875923, 59.218369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.303776, 38.183521, 59.229195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236240, 0.162486, 0.958013,
		0.732311, -0.618257, 0.285444,
		0.638679, 0.768997, 0.027067,
		27.495380, 38.414219, 59.237316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.524364, 37.814339, 59.767315>,  <27.048304, 37.875923, 59.218369>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.524364, 37.814339, 59.767315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.454592, 38.202057, 59.697990>,  <27.412727, 38.434689, 59.656395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.454592, 38.202057, 59.697990>,  <27.524364, 37.814339, 59.767315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.454592, 38.202057, 59.697990> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044936, 0.167988, 0.984764,
		0.983643, 0.179564, 0.014254,
		-0.174434, 0.969297, -0.173310,
		27.402262, 38.492847, 59.645996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.978783, 38.260609, 60.258778>,  <27.524364, 37.814339, 59.767315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.978783, 38.260609, 60.258778> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.657516, 38.478115, 60.161415>,  <27.464756, 38.608620, 60.102997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.657516, 38.478115, 60.161415>,  <27.978783, 38.260609, 60.258778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.657516, 38.478115, 60.161415> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161615, 0.194381, 0.967521,
		0.573416, 0.816417, -0.068239,
		-0.803165, 0.543764, -0.243407,
		27.416567, 38.641243, 60.088394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930723, 38.128033, 60.990284>,  <27.978783, 38.260609, 60.258778>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.930723, 38.128033, 60.990284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.065233, 38.024269, 61.352417>,  <28.145939, 37.962009, 61.569698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.065233, 38.024269, 61.352417>,  <27.930723, 38.128033, 60.990284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.065233, 38.024269, 61.352417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726739, -0.539931, -0.424648,
		0.598974, 0.800739, 0.006956,
		0.336276, -0.259408, 0.905332,
		28.166117, 37.946445, 61.624016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670671, 38.235977, 61.069202>,  <27.930723, 38.128033, 60.990284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670671, 38.235977, 61.069202> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.601860, 37.964523, 61.354820>,  <28.560574, 37.801651, 61.526192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.601860, 37.964523, 61.354820>,  <28.670671, 38.235977, 61.069202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601860, 37.964523, 61.354820> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735292, -0.570830, -0.365375,
		0.655555, 0.462177, 0.597194,
		-0.172028, -0.678635, 0.714045,
		28.550251, 37.760933, 61.569035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.288782, 38.065765, 61.434265>,  <28.670671, 38.235977, 61.069202>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.288782, 38.065765, 61.434265> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.053036, 37.757954, 61.532627>,  <28.911589, 37.573265, 61.591644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.053036, 37.757954, 61.532627>,  <29.288782, 38.065765, 61.434265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.053036, 37.757954, 61.532627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638055, -0.630096, -0.442566,
		0.495513, -0.103932, 0.862360,
		-0.589366, -0.769531, 0.245906,
		28.876226, 37.527096, 61.606400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.755426, 37.435005, 61.626713>,  <29.288782, 38.065765, 61.434265>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.755426, 37.435005, 61.626713> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.403357, 37.319035, 61.476391>,  <29.192114, 37.249451, 61.386196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.403357, 37.319035, 61.476391>,  <29.755426, 37.435005, 61.626713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.403357, 37.319035, 61.476391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442142, -0.788783, -0.427003,
		-0.172630, -0.541998, 0.822458,
		-0.880176, -0.289930, -0.375808,
		29.139303, 37.232056, 61.363647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.868378, 36.782524, 61.445236>,  <29.755426, 37.435005, 61.626713>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.868378, 36.782524, 61.445236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.501963, 36.816322, 61.288399>,  <29.282114, 36.836601, 61.194298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.501963, 36.816322, 61.288399>,  <29.868378, 36.782524, 61.445236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501963, 36.816322, 61.288399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282518, -0.557971, -0.780290,
		-0.284710, -0.825547, 0.487249,
		-0.916037, 0.084500, -0.392092,
		29.227152, 36.841671, 61.170773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582464, 36.124016, 61.353798>,  <29.868378, 36.782524, 61.445236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.582464, 36.124016, 61.353798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.432917, 36.379871, 61.085148>,  <29.343187, 36.533386, 60.923958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.432917, 36.379871, 61.085148>,  <29.582464, 36.124016, 61.353798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432917, 36.379871, 61.085148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298511, -0.602625, -0.740091,
		-0.878130, -0.477186, 0.034364,
		-0.373870, 0.639639, -0.671628,
		29.320755, 36.571762, 60.883659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.416859, 35.709347, 60.899048>,  <29.582464, 36.124016, 61.353798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.416859, 35.709347, 60.899048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.392916, 36.051159, 60.692669>,  <29.378550, 36.256245, 60.568840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.392916, 36.051159, 60.692669>,  <29.416859, 35.709347, 60.899048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392916, 36.051159, 60.692669> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279666, -0.481816, -0.830446,
		-0.958230, -0.194002, -0.210141,
		-0.059859, 0.854527, -0.515946,
		29.374958, 36.307518, 60.537884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033867, 35.570419, 60.325153>,  <29.416859, 35.709347, 60.899048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033867, 35.570419, 60.325153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.206425, 35.909363, 60.201290>,  <29.309959, 36.112728, 60.126972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.206425, 35.909363, 60.201290>,  <29.033867, 35.570419, 60.325153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.206425, 35.909363, 60.201290> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256111, -0.444146, -0.858569,
		-0.865047, 0.291076, -0.408619,
		0.431395, 0.847354, -0.309659,
		29.335844, 36.163570, 60.108391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.952971, 35.635693, 59.626770>,  <29.033867, 35.570419, 60.325153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.952971, 35.635693, 59.626770> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.252848, 35.892548, 59.690792>,  <29.432774, 36.046661, 59.729206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.252848, 35.892548, 59.690792>,  <28.952971, 35.635693, 59.626770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252848, 35.892548, 59.690792> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407697, -0.257631, -0.876019,
		-0.521290, 0.722000, -0.454942,
		0.749693, 0.642138, 0.160056,
		29.477757, 36.085190, 59.738808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032337, 35.960049, 58.970886>,  <28.952971, 35.635693, 59.626770>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.032337, 35.960049, 58.970886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.385811, 35.979137, 59.157146>,  <29.597895, 35.990589, 59.268902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.385811, 35.979137, 59.157146>,  <29.032337, 35.960049, 58.970886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.385811, 35.979137, 59.157146> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434793, -0.452146, -0.778793,
		0.173379, 0.890666, -0.420301,
		0.883683, 0.047717, 0.465648,
		29.650915, 35.993454, 59.296841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.412853, 36.351357, 58.445442>,  <29.032337, 35.960049, 58.970886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.412853, 36.351357, 58.445442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.640202, 36.145710, 58.702389>,  <29.776609, 36.022320, 58.856556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.640202, 36.145710, 58.702389>,  <29.412853, 36.351357, 58.445442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640202, 36.145710, 58.702389> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418220, -0.491828, -0.763674,
		0.708554, 0.702700, -0.064525,
		0.568369, -0.514118, 0.642370,
		29.810713, 35.991474, 58.895100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202301, 36.460888, 58.211372>,  <29.412853, 36.351357, 58.445442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202301, 36.460888, 58.211372> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.198917, 36.137478, 58.446735>,  <30.196886, 35.943432, 58.587952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.198917, 36.137478, 58.446735>,  <30.202301, 36.460888, 58.211372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.198917, 36.137478, 58.446735> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571565, -0.486740, -0.660604,
		0.820513, 0.330724, 0.466240,
		-0.008461, -0.808521, 0.588407,
		30.196379, 35.894920, 58.623257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921089, 36.131142, 58.120792>,  <30.202301, 36.460888, 58.211372>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921089, 36.131142, 58.120792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.677746, 35.848347, 58.265057>,  <30.531740, 35.678669, 58.351616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.677746, 35.848347, 58.265057>,  <30.921089, 36.131142, 58.120792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677746, 35.848347, 58.265057> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478390, -0.689240, -0.544143,
		0.633281, -0.158497, 0.757518,
		-0.608356, -0.706984, 0.360660,
		30.495239, 35.636250, 58.373253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341137, 35.639988, 58.228798>,  <30.921089, 36.131142, 58.120792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341137, 35.639988, 58.228798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.984783, 35.466755, 58.174000>,  <30.770971, 35.362816, 58.141121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.984783, 35.466755, 58.174000>,  <31.341137, 35.639988, 58.228798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984783, 35.466755, 58.174000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423588, -0.683195, -0.594825,
		0.164013, -0.587950, 0.792095,
		-0.890883, -0.433081, -0.136995,
		30.717518, 35.336830, 58.132900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652447, 35.189690, 58.855988>,  <31.341137, 35.639988, 58.228798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652447, 35.189690, 58.855988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.043476, 35.195389, 58.940029>,  <32.278095, 35.198807, 58.990456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.043476, 35.195389, 58.940029>,  <31.652447, 35.189690, 58.855988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043476, 35.195389, 58.940029> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207729, 0.229134, 0.950971,
		-0.034593, -0.973291, 0.226955,
		0.977575, 0.014248, 0.210107,
		32.336750, 35.199665, 59.003059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639893, 35.042061, 59.482929>,  <31.652447, 35.189690, 58.855988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639893, 35.042061, 59.482929> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.012302, 35.187534, 59.470768>,  <32.235748, 35.274818, 59.463470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.012302, 35.187534, 59.470768>,  <31.639893, 35.042061, 59.482929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012302, 35.187534, 59.470768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093542, 0.318316, 0.943358,
		0.352771, -0.875444, 0.330380,
		0.931023, 0.363693, -0.030402,
		32.291611, 35.296638, 59.461647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953125, 34.783752, 60.059349>,  <31.639893, 35.042061, 59.482929>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953125, 34.783752, 60.059349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.185284, 35.096733, 59.969090>,  <32.324577, 35.284519, 59.914936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.185284, 35.096733, 59.969090>,  <31.953125, 34.783752, 60.059349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185284, 35.096733, 59.969090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061209, 0.318225, 0.946037,
		0.812031, -0.535264, 0.232589,
		0.580395, 0.782449, -0.225646,
		32.359402, 35.331467, 59.901398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406132, 34.882782, 60.616558>,  <31.953125, 34.783752, 60.059349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406132, 34.882782, 60.616558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.389042, 35.243729, 60.445019>,  <32.378788, 35.460297, 60.342094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.389042, 35.243729, 60.445019>,  <32.406132, 34.882782, 60.616558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389042, 35.243729, 60.445019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028404, 0.427974, 0.903345,
		0.998683, 0.050775, 0.007346,
		-0.042723, 0.902364, -0.428852,
		32.376225, 35.514439, 60.316364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780392, 35.287891, 61.035511>,  <32.406132, 34.882782, 60.616558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780392, 35.287891, 61.035511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.580189, 35.571110, 60.836246>,  <32.460068, 35.741039, 60.716690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.580189, 35.571110, 60.836246>,  <32.780392, 35.287891, 61.035511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580189, 35.571110, 60.836246> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136184, 0.503862, 0.852981,
		0.854953, 0.494767, -0.155763,
		-0.500510, 0.708046, -0.498157,
		32.430035, 35.783524, 60.686798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022564, 35.894127, 61.375584>,  <32.780392, 35.287891, 61.035511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022564, 35.894127, 61.375584> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.702282, 36.033894, 61.180943>,  <32.510113, 36.117756, 61.064159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.702282, 36.033894, 61.180943>,  <33.022564, 35.894127, 61.375584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702282, 36.033894, 61.180943> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170046, 0.646291, 0.743904,
		0.574418, 0.678392, -0.458071,
		-0.800705, 0.349419, -0.486599,
		32.462070, 36.138718, 61.034962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094959, 36.605801, 61.359638>,  <33.022564, 35.894127, 61.375584>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094959, 36.605801, 61.359638> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.704071, 36.529366, 61.322720>,  <32.469536, 36.483505, 61.300568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.704071, 36.529366, 61.322720>,  <33.094959, 36.605801, 61.359638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704071, 36.529366, 61.322720> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193705, 0.625560, 0.755747,
		-0.086675, 0.756413, -0.648326,
		-0.977224, -0.191088, -0.092301,
		32.410904, 36.472038, 61.295029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294186, 36.975788, 60.760380>,  <33.094959, 36.605801, 61.359638>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294186, 36.975788, 60.760380> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.635914, 37.178658, 60.714912>,  <33.840950, 37.300377, 60.687634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.635914, 37.178658, 60.714912>,  <33.294186, 36.975788, 60.760380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635914, 37.178658, 60.714912> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442752, -0.824682, -0.351951,
		-0.272236, 0.250353, -0.929091,
		0.854317, 0.507171, -0.113664,
		33.892208, 37.330811, 60.680813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539173, 36.857197, 60.038754>,  <33.294186, 36.975788, 60.760380>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539173, 36.857197, 60.038754> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.857304, 36.976635, 60.249771>,  <34.048180, 37.048298, 60.376381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.857304, 36.976635, 60.249771>,  <33.539173, 36.857197, 60.038754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857304, 36.976635, 60.249771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552400, -0.715378, -0.427888,
		0.249628, 0.631724, -0.733901,
		0.795324, 0.298594, 0.527542,
		34.095901, 37.066212, 60.408035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993450, 36.913521, 59.601868>,  <33.539173, 36.857197, 60.038754>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993450, 36.913521, 59.601868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.226807, 36.895683, 59.926254>,  <34.366821, 36.884979, 60.120884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.226807, 36.895683, 59.926254>,  <33.993450, 36.913521, 59.601868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226807, 36.895683, 59.926254> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636856, -0.594550, -0.490841,
		0.504048, 0.802821, -0.318455,
		0.583395, -0.044597, 0.810963,
		34.401825, 36.882305, 60.169544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600536, 37.019615, 59.329914>,  <33.993450, 36.913521, 59.601868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600536, 37.019615, 59.329914> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.668758, 36.849663, 59.685528>,  <34.709694, 36.747692, 59.898895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.668758, 36.849663, 59.685528>,  <34.600536, 37.019615, 59.329914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668758, 36.849663, 59.685528> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692761, -0.589914, -0.414828,
		0.700708, 0.686644, 0.193724,
		0.170559, -0.424878, 0.889038,
		34.719925, 36.722198, 59.952240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268005, 37.077320, 59.451550>,  <34.600536, 37.019615, 59.329914>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268005, 37.077320, 59.451550> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.152615, 36.767010, 59.676033>,  <35.083382, 36.580822, 59.810722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.152615, 36.767010, 59.676033>,  <35.268005, 37.077320, 59.451550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152615, 36.767010, 59.676033> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637954, -0.592805, -0.491525,
		0.714000, 0.216232, 0.665919,
		-0.288477, -0.775774, 0.561209,
		35.066071, 36.534279, 59.844395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945164, 36.772758, 59.638790>,  <35.268005, 37.077320, 59.451550>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945164, 36.772758, 59.638790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.657528, 36.501881, 59.701153>,  <35.484947, 36.339352, 59.738571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.657528, 36.501881, 59.701153>,  <35.945164, 36.772758, 59.638790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657528, 36.501881, 59.701153> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471775, -0.640476, -0.605986,
		0.510229, -0.362205, 0.780047,
		-0.719093, -0.677198, 0.155910,
		35.441799, 36.298721, 59.747925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352200, 36.174828, 59.737659>,  <35.945164, 36.772758, 59.638790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352200, 36.174828, 59.737659> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.988720, 36.051613, 59.624962>,  <35.770634, 35.977684, 59.557343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.988720, 36.051613, 59.624962>,  <36.352200, 36.174828, 59.737659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988720, 36.051613, 59.624962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417052, -0.640314, -0.645031,
		0.018294, -0.703639, 0.710322,
		-0.908699, -0.308041, -0.281740,
		35.716110, 35.959202, 59.540440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<30.710100, 41.056168, 59.496048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.613270, 41.289703, 59.186073>,  <30.555172, 41.429825, 59.000088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.613270, 41.289703, 59.186073>,  <30.710100, 41.056168, 59.496048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613270, 41.289703, 59.186073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944215, -0.042048, -0.326633,
		-0.223286, -0.810779, -0.541092,
		-0.242075, 0.583840, -0.774939,
		30.540648, 41.464855, 58.953590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599516, 40.374481, 59.070496>,  <30.710100, 41.056168, 59.496048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599516, 40.374481, 59.070496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.210070, 40.354404, 58.981453>,  <29.976402, 40.342358, 58.928028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.210070, 40.354404, 58.981453>,  <30.599516, 40.374481, 59.070496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.210070, 40.354404, 58.981453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228189, -0.207810, -0.951181,
		0.001479, -0.976881, 0.213779,
		-0.973616, -0.050189, -0.222606,
		29.917984, 40.339348, 58.914669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.420979, 39.788673, 58.800766>,  <30.599516, 40.374481, 59.070496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.420979, 39.788673, 58.800766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163967, 40.048973, 58.638935>,  <30.009760, 40.205154, 58.541836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163967, 40.048973, 58.638935>,  <30.420979, 39.788673, 58.800766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163967, 40.048973, 58.638935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300601, -0.271596, -0.914262,
		-0.704838, -0.709054, -0.021108,
		-0.642528, 0.650751, -0.404574,
		29.971209, 40.244198, 58.517563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185774, 39.529156, 58.171791>,  <30.420979, 39.788673, 58.800766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185774, 39.529156, 58.171791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085609, 39.913162, 58.121746>,  <30.025511, 40.143566, 58.091717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085609, 39.913162, 58.121746>,  <30.185774, 39.529156, 58.171791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085609, 39.913162, 58.121746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269266, -0.055072, -0.961490,
		-0.929941, -0.274458, -0.244711,
		-0.250412, 0.960021, -0.125116,
		30.010487, 40.201168, 58.084209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704094, 39.521900, 57.559135>,  <30.185774, 39.529156, 58.171791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704094, 39.521900, 57.559135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.849936, 39.890736, 57.611019>,  <29.937441, 40.112038, 57.642151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.849936, 39.890736, 57.611019>,  <29.704094, 39.521900, 57.559135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.849936, 39.890736, 57.611019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285013, 0.022100, -0.958269,
		-0.886471, 0.386357, -0.254748,
		0.364604, 0.922085, 0.129708,
		29.959316, 40.167362, 57.649933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560350, 39.833408, 56.896580>,  <29.704094, 39.521900, 57.559135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560350, 39.833408, 56.896580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816254, 40.096493, 57.055637>,  <29.969795, 40.254345, 57.151073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816254, 40.096493, 57.055637>,  <29.560350, 39.833408, 56.896580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816254, 40.096493, 57.055637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365767, 0.194485, -0.910160,
		-0.675960, 0.727728, -0.116146,
		0.639760, 0.657714, 0.397643,
		30.008183, 40.293808, 57.174931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.431520, 40.482380, 56.480324>,  <29.560350, 39.833408, 56.896580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.431520, 40.482380, 56.480324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.796507, 40.516289, 56.640434>,  <30.015499, 40.536636, 56.736500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.796507, 40.516289, 56.640434>,  <29.431520, 40.482380, 56.480324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.796507, 40.516289, 56.640434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361514, 0.291082, -0.885765,
		-0.191603, 0.952935, 0.234955,
		0.912467, 0.084775, 0.400271,
		30.070248, 40.541721, 56.760517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713264, 41.140018, 56.164455>,  <29.431520, 40.482380, 56.480324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713264, 41.140018, 56.164455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.019108, 40.909786, 56.280441>,  <30.202614, 40.771648, 56.350033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.019108, 40.909786, 56.280441>,  <29.713264, 41.140018, 56.164455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.019108, 40.909786, 56.280441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465231, 0.181561, -0.866369,
		0.446020, 0.797334, 0.406601,
		0.764609, -0.575582, 0.289965,
		30.248491, 40.737110, 56.367432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295565, 41.516563, 55.799957>,  <29.713264, 41.140018, 56.164455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.295565, 41.516563, 55.799957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411070, 41.148327, 55.905132>,  <30.480373, 40.927387, 55.968239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411070, 41.148327, 55.905132>,  <30.295565, 41.516563, 55.799957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411070, 41.148327, 55.905132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533378, -0.073381, -0.842688,
		0.795062, 0.383581, 0.469831,
		0.288763, -0.920587, 0.262936,
		30.497698, 40.872150, 55.984013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982134, 41.482960, 55.566833>,  <30.295565, 41.516563, 55.799957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982134, 41.482960, 55.566833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879524, 41.100067, 55.620346>,  <30.817959, 40.870331, 55.652454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879524, 41.100067, 55.620346>,  <30.982134, 41.482960, 55.566833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879524, 41.100067, 55.620346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577307, -0.262756, -0.773095,
		0.775185, -0.121084, 0.620021,
		-0.256524, -0.957235, 0.133782,
		30.802567, 40.812897, 55.660480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618364, 41.120625, 55.489742>,  <30.982134, 41.482960, 55.566833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618364, 41.120625, 55.489742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.312708, 40.876091, 55.407413>,  <31.129314, 40.729370, 55.358017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.312708, 40.876091, 55.407413>,  <31.618364, 41.120625, 55.489742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312708, 40.876091, 55.407413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471289, -0.311261, -0.825229,
		0.440423, -0.727594, 0.525960,
		-0.764143, -0.611330, -0.205820,
		31.083466, 40.692692, 55.345669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924109, 40.556576, 55.242054>,  <31.618364, 41.120625, 55.489742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924109, 40.556576, 55.242054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548794, 40.525948, 55.107143>,  <31.323605, 40.507572, 55.026196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548794, 40.525948, 55.107143>,  <31.924109, 40.556576, 55.242054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548794, 40.525948, 55.107143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343848, -0.311580, -0.885825,
		-0.037263, -0.947130, 0.318679,
		-0.938286, -0.076568, -0.337279,
		31.267307, 40.502975, 55.005959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399582, 40.901070, 55.702358>,  <31.924109, 40.556576, 55.242054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399582, 40.901070, 55.702358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787529, 40.997955, 55.712830>,  <33.020298, 41.056087, 55.719112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787529, 40.997955, 55.712830>,  <32.399582, 40.901070, 55.702358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787529, 40.997955, 55.712830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046853, 0.079980, 0.995695,
		0.239078, -0.966920, 0.088919,
		0.969869, 0.242215, 0.026182,
		33.078491, 41.070618, 55.720684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620567, 40.584827, 56.293713>,  <32.399582, 40.901070, 55.702358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620567, 40.584827, 56.293713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914047, 40.852695, 56.247704>,  <33.090134, 41.013416, 56.220097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914047, 40.852695, 56.247704>,  <32.620567, 40.584827, 56.293713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914047, 40.852695, 56.247704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048415, 0.117328, 0.991913,
		0.677751, -0.733331, 0.053661,
		0.733696, 0.669671, -0.115023,
		33.134155, 41.053596, 56.213196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058586, 40.305370, 56.785515>,  <32.620567, 40.584827, 56.293713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058586, 40.305370, 56.785515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171089, 40.681080, 56.706871>,  <33.238590, 40.906506, 56.659683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171089, 40.681080, 56.706871>,  <33.058586, 40.305370, 56.785515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171089, 40.681080, 56.706871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169553, 0.153015, 0.973570,
		0.944534, -0.307164, -0.116220,
		0.281262, 0.939275, -0.196609,
		33.255466, 40.962864, 56.647888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748024, 40.473434, 57.117184>,  <33.058586, 40.305370, 56.785515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748024, 40.473434, 57.117184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567223, 40.828072, 57.077915>,  <33.458740, 41.040855, 57.054352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567223, 40.828072, 57.077915>,  <33.748024, 40.473434, 57.117184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567223, 40.828072, 57.077915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148044, 0.183095, 0.971885,
		0.879646, 0.424760, -0.214015,
		-0.452003, 0.886598, -0.098175,
		33.431622, 41.094051, 57.048462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251087, 40.969448, 57.354561>,  <33.748024, 40.473434, 57.117184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251087, 40.969448, 57.354561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881935, 41.120697, 57.383698>,  <33.660442, 41.211449, 57.401180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881935, 41.120697, 57.383698>,  <34.251087, 40.969448, 57.354561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881935, 41.120697, 57.383698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213323, 0.344547, 0.914210,
		0.320588, 0.859250, -0.398640,
		-0.922885, 0.378124, 0.072840,
		33.605068, 41.234135, 57.405548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344471, 41.624187, 57.632732>,  <34.251087, 40.969448, 57.354561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344471, 41.624187, 57.632732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946491, 41.618126, 57.672436>,  <33.707703, 41.614487, 57.696259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946491, 41.618126, 57.672436>,  <34.344471, 41.624187, 57.632732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946491, 41.618126, 57.672436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093358, 0.224350, 0.970026,
		-0.036972, 0.974391, -0.221801,
		-0.994946, -0.015156, 0.099262,
		33.648006, 41.613579, 57.702213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149971, 42.173717, 57.964947>,  <34.344471, 41.624187, 57.632732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149971, 42.173717, 57.964947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820862, 41.971588, 58.069016>,  <33.623394, 41.850311, 58.131454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820862, 41.971588, 58.069016>,  <34.149971, 42.173717, 57.964947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820862, 41.971588, 58.069016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056448, 0.382836, 0.922090,
		-0.565557, 0.773359, -0.286464,
		-0.822775, -0.505324, 0.260170,
		33.574028, 41.819992, 58.147068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713150, 42.665638, 58.203007>,  <34.149971, 42.173717, 57.964947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713150, 42.665638, 58.203007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598133, 42.321404, 58.371155>,  <33.529121, 42.114864, 58.472046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598133, 42.321404, 58.371155>,  <33.713150, 42.665638, 58.203007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598133, 42.321404, 58.371155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059330, 0.454072, 0.888987,
		-0.955927, 0.230684, -0.181626,
		-0.287547, -0.860583, 0.420373,
		33.511868, 42.063229, 58.497265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264919, 42.885628, 58.741539>,  <33.713150, 42.665638, 58.203007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264919, 42.885628, 58.741539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307034, 42.500404, 58.840679>,  <33.332302, 42.269272, 58.900166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307034, 42.500404, 58.840679>,  <33.264919, 42.885628, 58.741539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307034, 42.500404, 58.840679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165536, 0.228787, 0.959299,
		-0.980568, -0.142028, -0.135333,
		0.105285, -0.963060, 0.247852,
		33.338619, 42.211487, 58.915035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701466, 42.655830, 59.086952>,  <33.264919, 42.885628, 58.741539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701466, 42.655830, 59.086952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986027, 42.393116, 59.186989>,  <33.156761, 42.235489, 59.247009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986027, 42.393116, 59.186989>,  <32.701466, 42.655830, 59.086952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986027, 42.393116, 59.186989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265910, 0.077853, 0.960849,
		-0.650539, -0.750051, -0.119260,
		0.711401, -0.656782, 0.250092,
		33.199448, 42.196083, 59.262016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361969, 42.337894, 59.653831>,  <32.701466, 42.655830, 59.086952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361969, 42.337894, 59.653831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738293, 42.210381, 59.699871>,  <32.964088, 42.133873, 59.727493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738293, 42.210381, 59.699871>,  <32.361969, 42.337894, 59.653831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738293, 42.210381, 59.699871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113311, 0.024218, 0.993264,
		-0.319429, -0.947516, -0.013338,
		0.940811, -0.318789, 0.115099,
		33.020535, 42.114742, 59.734402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422974, 41.806099, 60.269394>,  <32.361969, 42.337894, 59.653831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422974, 41.806099, 60.269394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795277, 41.941059, 60.213051>,  <33.018658, 42.022038, 60.179245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795277, 41.941059, 60.213051>,  <32.422974, 41.806099, 60.269394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795277, 41.941059, 60.213051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109383, 0.110654, 0.987821,
		0.348883, -0.934833, 0.066086,
		0.930761, 0.337405, -0.140860,
		33.074505, 42.042282, 60.170792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887486, 41.305145, 60.538723>,  <32.422974, 41.806099, 60.269394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887486, 41.305145, 60.538723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018230, 41.683174, 60.537838>,  <33.096676, 41.909992, 60.537308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018230, 41.683174, 60.537838>,  <32.887486, 41.305145, 60.538723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018230, 41.683174, 60.537838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013796, -0.002427, 0.999902,
		0.944972, -0.326860, -0.013832,
		0.326862, 0.945069, -0.002216,
		33.116287, 41.966694, 60.537174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460144, 41.220055, 61.104523>,  <32.887486, 41.305145, 60.538723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460144, 41.220055, 61.104523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402401, 41.613804, 61.064182>,  <33.367756, 41.850052, 61.039978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402401, 41.613804, 61.064182>,  <33.460144, 41.220055, 61.104523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402401, 41.613804, 61.064182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045990, 0.095131, 0.994402,
		0.988456, 0.148190, 0.031538,
		-0.144360, 0.984373, -0.100848,
		33.359093, 41.909115, 61.033928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431019, 40.380848, 60.964245>,  <33.460144, 41.220055, 61.104523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431019, 40.380848, 60.964245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324093, 40.251785, 61.327438>,  <33.259937, 40.174347, 61.545357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324093, 40.251785, 61.327438>,  <33.431019, 40.380848, 60.964245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324093, 40.251785, 61.327438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650784, -0.755366, -0.076826,
		0.710650, 0.570367, 0.411896,
		-0.267313, -0.322652, 0.907986,
		33.243900, 40.154991, 61.599834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032738, 40.114510, 61.262280>,  <33.431019, 40.380848, 60.964245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032738, 40.114510, 61.262280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721279, 39.942394, 61.444954>,  <33.534405, 39.839127, 61.554558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721279, 39.942394, 61.444954>,  <34.032738, 40.114510, 61.262280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721279, 39.942394, 61.444954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448494, -0.890675, -0.074502,
		0.438817, 0.146810, 0.886502,
		-0.778648, -0.430284, 0.456687,
		33.487686, 39.813309, 61.581959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345650, 39.680920, 61.753654>,  <34.032738, 40.114510, 61.262280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345650, 39.680920, 61.753654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980595, 39.534763, 61.680344>,  <33.761562, 39.447071, 61.636356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980595, 39.534763, 61.680344>,  <34.345650, 39.680920, 61.753654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980595, 39.534763, 61.680344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390007, -0.912607, -0.122647,
		-0.122448, -0.183412, 0.975380,
		-0.912634, -0.365387, -0.183279,
		33.706806, 39.425148, 61.625359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181137, 39.129013, 62.187565>,  <34.345650, 39.680920, 61.753654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181137, 39.129013, 62.187565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943493, 39.050652, 61.875500>,  <33.800907, 39.003635, 61.688259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943493, 39.050652, 61.875500>,  <34.181137, 39.129013, 62.187565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943493, 39.050652, 61.875500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339105, -0.940489, -0.022079,
		-0.729408, -0.277674, 0.625189,
		-0.594114, -0.195900, -0.780161,
		33.765259, 38.991882, 61.641453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185959, 38.400761, 62.161934>,  <34.181137, 39.129013, 62.187565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185959, 38.400761, 62.161934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014282, 38.493309, 61.812706>,  <33.911274, 38.548840, 61.603168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014282, 38.493309, 61.812706>,  <34.185959, 38.400761, 62.161934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014282, 38.493309, 61.812706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136355, -0.938955, -0.315865,
		-0.892859, -0.254617, 0.371448,
		-0.429197, 0.231374, -0.873073,
		33.885525, 38.562721, 61.550785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793690, 37.749699, 61.952858>,  <34.185959, 38.400761, 62.161934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793690, 37.749699, 61.952858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786572, 37.945103, 61.603909>,  <33.782303, 38.062347, 61.394539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786572, 37.945103, 61.603909>,  <33.793690, 37.749699, 61.952858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786572, 37.945103, 61.603909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277523, -0.835816, -0.473701,
		-0.960554, -0.250533, -0.120702,
		-0.017793, 0.488513, -0.872375,
		33.781235, 38.091656, 61.342197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458263, 37.300602, 61.553238>,  <33.793690, 37.749699, 61.952858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458263, 37.300602, 61.553238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659542, 37.514229, 61.281483>,  <33.780308, 37.642406, 61.118431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659542, 37.514229, 61.281483>,  <33.458263, 37.300602, 61.553238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659542, 37.514229, 61.281483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428800, -0.836869, -0.340267,
		-0.750284, -0.120100, -0.650116,
		0.503195, 0.534066, -0.679388,
		33.810501, 37.674450, 61.077667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601772, 37.395439, 61.501171>,  <33.458263, 37.300602, 61.553238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601772, 37.395439, 61.501171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331383, 37.100670, 61.502197>,  <32.169151, 36.923809, 61.502811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331383, 37.100670, 61.502197>,  <32.601772, 37.395439, 61.501171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331383, 37.100670, 61.502197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391305, 0.361885, 0.846120,
		-0.624455, 0.570948, -0.532986,
		-0.675970, -0.736924, 0.002566,
		32.128593, 36.879593, 61.502968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903826, 37.661949, 61.620735>,  <32.601772, 37.395439, 61.501171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903826, 37.661949, 61.620735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888849, 37.282169, 61.745403>,  <31.879864, 37.054302, 61.820206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888849, 37.282169, 61.745403>,  <31.903826, 37.661949, 61.620735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888849, 37.282169, 61.745403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497913, 0.288144, 0.817958,
		-0.866419, -0.124559, -0.483533,
		-0.037443, -0.949452, 0.311673,
		31.877617, 36.997334, 61.838905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202850, 37.600899, 61.789223>,  <31.903826, 37.661949, 61.620735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202850, 37.600899, 61.789223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421778, 37.330856, 61.987080>,  <31.553135, 37.168831, 62.105793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421778, 37.330856, 61.987080>,  <31.202850, 37.600899, 61.789223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421778, 37.330856, 61.987080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467088, 0.244020, 0.849872,
		-0.694456, -0.696196, -0.181776,
		0.547320, -0.675104, 0.494646,
		31.585974, 37.128326, 62.135475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825371, 37.302589, 62.232895>,  <31.202850, 37.600899, 61.789223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825371, 37.302589, 62.232895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.151356, 37.167503, 62.421272>,  <31.346947, 37.086452, 62.534298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.151356, 37.167503, 62.421272>,  <30.825371, 37.302589, 62.232895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.151356, 37.167503, 62.421272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481097, 0.058803, 0.874693,
		-0.323088, -0.939410, -0.114551,
		0.814960, -0.337713, 0.470946,
		31.395844, 37.066189, 62.562557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568993, 36.719894, 62.627003>,  <30.825371, 37.302589, 62.232895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568993, 36.719894, 62.627003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903154, 36.865856, 62.791412>,  <31.103651, 36.953434, 62.890057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903154, 36.865856, 62.791412>,  <30.568993, 36.719894, 62.627003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903154, 36.865856, 62.791412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485088, 0.137881, 0.863527,
		0.258437, -0.920776, 0.292200,
		0.835404, 0.364910, 0.411024,
		31.153776, 36.975327, 62.914719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409519, 36.515736, 63.260601>,  <30.568993, 36.719894, 62.627003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409519, 36.515736, 63.260601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707327, 36.777084, 63.315445>,  <30.886011, 36.933891, 63.348351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707327, 36.777084, 63.315445>,  <30.409519, 36.515736, 63.260601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707327, 36.777084, 63.315445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431334, 0.314020, 0.845779,
		0.509549, -0.688841, 0.515614,
		0.744520, 0.653368, 0.137112,
		30.930683, 36.973095, 63.356579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512074, 36.576252, 63.949734>,  <30.409519, 36.515736, 63.260601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512074, 36.576252, 63.949734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682913, 36.906322, 63.801853>,  <30.785416, 37.104362, 63.713127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682913, 36.906322, 63.801853>,  <30.512074, 36.576252, 63.949734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682913, 36.906322, 63.801853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509836, 0.557444, 0.655228,
		0.746763, -0.091361, 0.658786,
		0.427098, 0.825173, -0.369699,
		30.811043, 37.153873, 63.690945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786562, 36.992512, 64.541901>,  <30.512074, 36.576252, 63.949734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.786562, 36.992512, 64.541901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.714018, 37.236046, 64.232986>,  <30.670490, 37.382164, 64.047638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.714018, 37.236046, 64.232986>,  <30.786562, 36.992512, 64.541901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714018, 37.236046, 64.232986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638722, 0.524200, 0.563248,
		0.747758, 0.595429, 0.293806,
		-0.181361, 0.608834, -0.772289,
		30.659609, 37.418697, 64.001297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616459, 37.499722, 64.875526>,  <30.786562, 36.992512, 64.541901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616459, 37.499722, 64.875526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.494839, 37.607368, 64.509987>,  <30.421865, 37.671955, 64.290665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.494839, 37.607368, 64.509987>,  <30.616459, 37.499722, 64.875526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.494839, 37.607368, 64.509987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602052, 0.689144, 0.403254,
		0.738299, 0.672798, -0.047513,
		-0.304052, 0.269117, -0.913854,
		30.403624, 37.688103, 64.235832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<37.496967, 33.557404, 46.838551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.516182, 33.841183, 47.119801>,  <37.527710, 34.011448, 47.288551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.516182, 33.841183, 47.119801>,  <37.496967, 33.557404, 46.838551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516182, 33.841183, 47.119801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897801, -0.277852, 0.341689,
		0.437773, -0.647679, 0.623592,
		0.048039, 0.709444, 0.703123,
		37.530594, 34.054016, 47.330738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243649, 33.219990, 47.500084>,  <37.496967, 33.557404, 46.838551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243649, 33.219990, 47.500084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.215012, 33.614773, 47.557758>,  <37.197830, 33.851643, 47.592365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.215012, 33.614773, 47.557758>,  <37.243649, 33.219990, 47.500084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215012, 33.614773, 47.557758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708757, -0.152054, 0.688870,
		0.701810, -0.052875, 0.710399,
		-0.071595, 0.986957, 0.144188,
		37.193535, 33.910858, 47.601013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158939, 33.355423, 48.211689>,  <37.243649, 33.219990, 47.500084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158939, 33.355423, 48.211689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.003368, 33.679855, 48.036930>,  <36.910027, 33.874516, 47.932076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.003368, 33.679855, 48.036930>,  <37.158939, 33.355423, 48.211689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003368, 33.679855, 48.036930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791332, -0.051284, 0.609231,
		0.471733, 0.582675, 0.661784,
		-0.388923, 0.811085, -0.436898,
		36.886692, 33.923180, 47.905861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850700, 33.729607, 48.761753>,  <37.158939, 33.355423, 48.211689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850700, 33.729607, 48.761753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.674465, 33.897598, 48.444389>,  <36.568722, 33.998394, 48.253971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.674465, 33.897598, 48.444389>,  <36.850700, 33.729607, 48.761753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674465, 33.897598, 48.444389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874079, 0.000747, 0.485783,
		0.204612, 0.907533, 0.366766,
		-0.440590, 0.419980, -0.793409,
		36.542290, 34.023594, 48.206367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195324, 34.233505, 49.028469>,  <36.850700, 33.729607, 48.761753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195324, 34.233505, 49.028469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.104424, 34.186428, 48.641788>,  <36.049885, 34.158184, 48.409782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.104424, 34.186428, 48.641788>,  <36.195324, 34.233505, 49.028469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104424, 34.186428, 48.641788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973787, 0.017336, 0.226802,
		-0.009933, 0.992899, -0.118544,
		-0.227246, -0.117689, -0.966700,
		36.036251, 34.151123, 48.351780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732571, 34.855305, 48.873394>,  <36.195324, 34.233505, 49.028469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732571, 34.855305, 48.873394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.660076, 34.589252, 48.583633>,  <35.616581, 34.429623, 48.409779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.660076, 34.589252, 48.583633>,  <35.732571, 34.855305, 48.873394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660076, 34.589252, 48.583633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976195, 0.032422, 0.214457,
		-0.119155, 0.746024, -0.655172,
		-0.181232, -0.665129, -0.724402,
		35.605705, 34.389713, 48.366314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163654, 35.061840, 48.386227>,  <35.732571, 34.855305, 48.873394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163654, 35.061840, 48.386227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.165279, 34.664547, 48.339813>,  <35.166256, 34.426170, 48.311966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.165279, 34.664547, 48.339813>,  <35.163654, 35.061840, 48.386227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165279, 34.664547, 48.339813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987108, -0.022550, 0.158458,
		-0.160003, 0.113898, -0.980524,
		0.004062, -0.993237, -0.116038,
		35.166496, 34.366577, 48.305000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675560, 34.901524, 47.852558>,  <35.163654, 35.061840, 48.386227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675560, 34.901524, 47.852558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.716686, 34.589504, 48.099445>,  <34.741364, 34.402294, 48.247578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.716686, 34.589504, 48.099445>,  <34.675560, 34.901524, 47.852558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716686, 34.589504, 48.099445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994471, -0.067307, 0.080603,
		-0.021331, -0.622091, -0.782654,
		0.102820, -0.780047, 0.617216,
		34.747532, 34.355492, 48.284611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203999, 34.355438, 47.620003>,  <34.675560, 34.901524, 47.852558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203999, 34.355438, 47.620003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.286537, 34.252968, 47.997742>,  <34.336060, 34.191486, 48.224384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.286537, 34.252968, 47.997742>,  <34.203999, 34.355438, 47.620003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286537, 34.252968, 47.997742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975560, -0.128356, 0.178345,
		0.075527, -0.958071, -0.276396,
		0.206344, -0.256171, 0.944351,
		34.348442, 34.176117, 48.281048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971294, 33.693947, 47.663151>,  <34.203999, 34.355438, 47.620003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971294, 33.693947, 47.663151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.970863, 33.863049, 48.025646>,  <33.970604, 33.964512, 48.243145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.970863, 33.863049, 48.025646>,  <33.971294, 33.693947, 47.663151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970863, 33.863049, 48.025646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956528, -0.264732, 0.122360,
		0.291640, -0.866714, 0.404664,
		-0.001076, 0.422757, 0.906243,
		33.970539, 33.989876, 48.297520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430519, 33.359699, 47.968666>,  <33.971294, 33.693947, 47.663151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430519, 33.359699, 47.968666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.506134, 33.605804, 48.274796>,  <33.551502, 33.753468, 48.458473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.506134, 33.605804, 48.274796>,  <33.430519, 33.359699, 47.968666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506134, 33.605804, 48.274796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963738, -0.033242, 0.264772,
		0.188346, -0.787619, 0.586671,
		0.189038, 0.615265, 0.765319,
		33.562847, 33.790382, 48.504391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142147, 33.118149, 48.647747>,  <33.430519, 33.359699, 47.968666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142147, 33.118149, 48.647747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.165600, 33.513039, 48.707005>,  <33.179672, 33.749973, 48.742561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.165600, 33.513039, 48.707005>,  <33.142147, 33.118149, 48.647747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165600, 33.513039, 48.707005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957380, 0.013563, 0.288511,
		0.282817, -0.158748, 0.945946,
		0.058630, 0.987226, 0.148147,
		33.183189, 33.809208, 48.751450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847546, 33.211296, 49.222462>,  <33.142147, 33.118149, 48.647747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847546, 33.211296, 49.222462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.858036, 33.583794, 49.077084>,  <32.864330, 33.807293, 48.989857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.858036, 33.583794, 49.077084>,  <32.847546, 33.211296, 49.222462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858036, 33.583794, 49.077084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938046, 0.148585, 0.313036,
		0.345517, 0.332722, 0.877448,
		0.026222, 0.931246, -0.363447,
		32.865902, 33.863167, 48.968048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522766, 33.573048, 49.737232>,  <32.847546, 33.211296, 49.222462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522766, 33.573048, 49.737232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.500900, 33.847103, 49.446690>,  <32.487782, 34.011536, 49.272366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.500900, 33.847103, 49.446690>,  <32.522766, 33.573048, 49.737232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500900, 33.847103, 49.446690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947923, 0.192983, 0.253377,
		0.313773, 0.702380, 0.638912,
		-0.054668, 0.685142, -0.726355,
		32.484501, 34.052647, 49.228783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369194, 34.199783, 50.070400>,  <32.522766, 33.573048, 49.737232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369194, 34.199783, 50.070400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.250641, 34.228893, 49.689484>,  <32.179508, 34.246361, 49.460934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.250641, 34.228893, 49.689484>,  <32.369194, 34.199783, 50.070400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250641, 34.228893, 49.689484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943255, 0.134047, 0.303810,
		0.149763, 0.988299, 0.028918,
		-0.296379, 0.072777, -0.952294,
		32.161728, 34.250725, 49.403797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912415, 34.742554, 50.151321>,  <32.369194, 34.199783, 50.070400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912415, 34.742554, 50.151321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.831135, 34.540428, 49.815853>,  <31.782368, 34.419151, 49.614571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.831135, 34.540428, 49.815853>,  <31.912415, 34.742554, 50.151321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831135, 34.540428, 49.815853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967458, -0.028288, 0.251447,
		-0.150784, 0.862472, -0.483122,
		-0.203199, -0.505314, -0.838670,
		31.770176, 34.388832, 49.564251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329914, 35.103767, 49.821686>,  <31.912415, 34.742554, 50.151321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329914, 35.103767, 49.821686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.345404, 34.729443, 49.681534>,  <31.354698, 34.504848, 49.597443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.345404, 34.729443, 49.681534>,  <31.329914, 35.103767, 49.821686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345404, 34.729443, 49.681534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933837, -0.158672, 0.320582,
		-0.355598, 0.314782, -0.880036,
		0.038724, -0.935807, -0.350378,
		31.357021, 34.448700, 49.576420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882042, 35.106033, 49.375496>,  <31.329914, 35.103767, 49.821686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882042, 35.106033, 49.375496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.935194, 34.720741, 49.468895>,  <30.967085, 34.489567, 49.524937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.935194, 34.720741, 49.468895>,  <30.882042, 35.106033, 49.375496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.935194, 34.720741, 49.468895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979308, -0.091320, 0.180598,
		-0.152635, -0.252666, -0.955438,
		0.132882, -0.963234, 0.233499,
		30.975060, 34.431770, 49.538944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356457, 34.669708, 49.025097>,  <30.882042, 35.106033, 49.375496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356457, 34.669708, 49.025097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.468582, 34.430237, 49.325233>,  <30.535856, 34.286556, 49.505314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.468582, 34.430237, 49.325233>,  <30.356457, 34.669708, 49.025097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468582, 34.430237, 49.325233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956405, -0.107456, 0.271556,
		-0.081946, -0.793750, -0.602699,
		0.280311, -0.598677, 0.750341,
		30.552675, 34.250633, 49.550335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906143, 34.098274, 49.065128>,  <30.356457, 34.669708, 49.025097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906143, 34.098274, 49.065128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.070185, 34.077953, 49.429379>,  <30.168610, 34.065762, 49.647926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.070185, 34.077953, 49.429379>,  <29.906143, 34.098274, 49.065128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070185, 34.077953, 49.429379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908087, -0.115594, 0.402512,
		0.084814, -0.991997, -0.093538,
		0.410102, -0.050802, 0.910623,
		30.193216, 34.062714, 49.702564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.599308, 33.524216, 49.433159>,  <29.906143, 34.098274, 49.065128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.599308, 33.524216, 49.433159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.743309, 33.753899, 49.727283>,  <29.829710, 33.891708, 49.903759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.743309, 33.753899, 49.727283>,  <29.599308, 33.524216, 49.433159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743309, 33.753899, 49.727283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840078, -0.143299, 0.523197,
		0.405792, -0.806073, 0.430788,
		0.360003, 0.574205, 0.735314,
		29.851311, 33.926159, 49.947876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239529, 33.318859, 49.976696>,  <29.599308, 33.524216, 49.433159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.239529, 33.318859, 49.976696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.378069, 33.668602, 50.112663>,  <29.461193, 33.878448, 50.194244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.378069, 33.668602, 50.112663>,  <29.239529, 33.318859, 49.976696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378069, 33.668602, 50.112663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867656, 0.160807, 0.470440,
		0.356670, -0.457869, 0.814335,
		0.346350, 0.874355, 0.339918,
		29.481974, 33.930908, 50.214638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104540, 33.318985, 50.672287>,  <29.239529, 33.318859, 49.976696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.104540, 33.318985, 50.672287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.151747, 33.701504, 50.565281>,  <29.180071, 33.931015, 50.501080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.151747, 33.701504, 50.565281>,  <29.104540, 33.318985, 50.672287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.151747, 33.701504, 50.565281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795181, 0.252367, 0.551361,
		0.594777, 0.147650, 0.790215,
		0.118016, 0.956300, -0.267511,
		29.187151, 33.988396, 50.485027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.129669, 33.730869, 51.332623>,  <29.104540, 33.318985, 50.672287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.129669, 33.730869, 51.332623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.027380, 33.966476, 51.025986>,  <28.966007, 34.107841, 50.842003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.027380, 33.966476, 51.025986>,  <29.129669, 33.730869, 51.332623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.027380, 33.966476, 51.025986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899834, 0.144864, 0.411478,
		0.353421, 0.795027, 0.492976,
		-0.255721, 0.589021, -0.766590,
		28.950665, 34.143181, 50.796009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699100, 34.096333, 51.677673>,  <29.129669, 33.730869, 51.332623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699100, 34.096333, 51.677673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.635004, 34.272282, 51.324215>,  <28.596546, 34.377853, 51.112141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.635004, 34.272282, 51.324215>,  <28.699100, 34.096333, 51.677673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.635004, 34.272282, 51.324215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915600, 0.268222, 0.299555,
		0.368780, 0.857069, 0.359770,
		-0.160241, 0.439876, -0.883647,
		28.586931, 34.404243, 51.059120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.558067, 34.767715, 51.773441>,  <28.699100, 34.096333, 51.677673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.558067, 34.767715, 51.773441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.389252, 34.672832, 51.423443>,  <28.287962, 34.615902, 51.213444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.389252, 34.672832, 51.423443>,  <28.558067, 34.767715, 51.773441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.389252, 34.672832, 51.423443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884316, 0.320290, 0.339704,
		0.199671, 0.917140, -0.344941,
		-0.422038, -0.237208, -0.874995,
		28.262640, 34.601669, 51.160946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.983793, 35.116207, 51.778980>,  <28.558067, 34.767715, 51.773441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.983793, 35.116207, 51.778980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.907417, 34.865284, 51.476982>,  <27.861591, 34.714729, 51.295784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.907417, 34.865284, 51.476982>,  <27.983793, 35.116207, 51.778980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.907417, 34.865284, 51.476982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972823, 0.018295, 0.230827,
		-0.130988, 0.778553, -0.613756,
		-0.190940, -0.627312, -0.754998,
		27.850136, 34.677090, 51.250484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.409664, 35.416000, 51.441570>,  <27.983793, 35.116207, 51.778980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.409664, 35.416000, 51.441570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.399385, 35.023930, 51.362991>,  <27.393219, 34.788689, 51.315845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.399385, 35.023930, 51.362991>,  <27.409664, 35.416000, 51.441570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.399385, 35.023930, 51.362991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982452, -0.011555, 0.186158,
		-0.184738, 0.197781, -0.962681,
		-0.025695, -0.980178, -0.196445,
		27.391678, 34.729877, 51.304058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.929447, 35.304436, 50.980885>,  <27.409664, 35.416000, 51.441570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.929447, 35.304436, 50.980885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.960611, 34.951389, 51.166321>,  <26.979311, 34.739559, 51.277580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.960611, 34.951389, 51.166321>,  <26.929447, 35.304436, 50.980885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.960611, 34.951389, 51.166321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996863, -0.075457, 0.023874,
		0.013909, -0.463993, -0.885730,
		0.077912, -0.882619, 0.463587,
		26.983984, 34.686604, 51.305397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.283403, 34.963989, 50.768826>,  <26.929447, 35.304436, 50.980885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.283403, 34.963989, 50.768826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.380966, 34.727695, 51.076473>,  <26.439505, 34.585918, 51.261063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.380966, 34.727695, 51.076473>,  <26.283403, 34.963989, 50.768826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.380966, 34.727695, 51.076473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968011, -0.196431, 0.156109,
		0.058861, -0.782594, -0.619743,
		0.243907, -0.590730, 0.769122,
		26.454138, 34.550476, 51.307209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.787657, 34.491825, 50.773884>,  <26.283403, 34.963989, 50.768826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.787657, 34.491825, 50.773884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.919283, 34.503654, 51.151421>,  <25.998259, 34.510754, 51.377945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.919283, 34.503654, 51.151421>,  <25.787657, 34.491825, 50.773884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.919283, 34.503654, 51.151421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941303, -0.069401, 0.330353,
		0.075273, -0.997150, 0.005001,
		0.329065, 0.029574, 0.943844,
		26.018002, 34.512527, 51.434574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.454771, 33.977413, 51.103596>,  <25.787657, 34.491825, 50.773884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.454771, 33.977413, 51.103596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.573492, 34.196301, 51.416634>,  <25.644724, 34.327633, 51.604458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.573492, 34.196301, 51.416634>,  <25.454771, 33.977413, 51.103596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.573492, 34.196301, 51.416634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902350, -0.107498, 0.417383,
		0.312529, -0.830056, 0.461879,
		0.296800, 0.547221, 0.782597,
		25.662533, 34.360466, 51.651413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.101744, 33.618980, 51.626408>,  <25.454771, 33.977413, 51.103596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.101744, 33.618980, 51.626408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.189337, 33.967690, 51.801704>,  <25.241892, 34.176914, 51.906883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.189337, 33.967690, 51.801704>,  <25.101744, 33.618980, 51.626408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.189337, 33.967690, 51.801704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811267, -0.086872, 0.578186,
		0.542119, -0.482145, 0.688217,
		0.218983, 0.871774, 0.438244,
		25.255032, 34.229221, 51.933178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.041416, 33.531147, 52.339809>,  <25.101744, 33.618980, 51.626408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.041416, 33.531147, 52.339809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.001146, 33.926163, 52.291420>,  <24.976984, 34.163170, 52.262386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.001146, 33.926163, 52.291420>,  <25.041416, 33.531147, 52.339809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.001146, 33.926163, 52.291420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815399, -0.012230, 0.578770,
		0.570078, 0.156907, 0.806469,
		-0.100676, 0.987538, -0.120970,
		24.970943, 34.222424, 52.255131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.858149, 33.801746, 53.013329>,  <25.041416, 33.531147, 52.339809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.858149, 33.801746, 53.013329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.740351, 34.083778, 52.755295>,  <24.669672, 34.252998, 52.600475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.740351, 34.083778, 52.755295>,  <24.858149, 33.801746, 53.013329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.740351, 34.083778, 52.755295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922416, -0.033247, 0.384765,
		0.249843, 0.708346, 0.660170,
		-0.294496, 0.705082, -0.645083,
		24.652002, 34.295303, 52.561771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<35.973671, 30.126060, 50.649952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.182552, 30.179928, 50.313103>,  <36.307880, 30.212248, 50.110992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.182552, 30.179928, 50.313103>,  <35.973671, 30.126060, 50.649952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182552, 30.179928, 50.313103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039171, 0.990199, 0.134058,
		0.851918, -0.037020, 0.522365,
		0.522208, 0.134668, -0.842119,
		36.339214, 30.220327, 50.060467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862125, 29.879704, 51.397015>,  <35.973671, 30.126060, 50.649952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862125, 29.879704, 51.397015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.504040, 29.949350, 51.232929>,  <35.289188, 29.991138, 51.134476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.504040, 29.949350, 51.232929>,  <35.862125, 29.879704, 51.397015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504040, 29.949350, 51.232929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322901, 0.380975, 0.866368,
		0.307133, 0.908043, -0.284830,
		-0.895212, 0.174119, -0.410218,
		35.235477, 30.001587, 51.109863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775806, 30.586445, 51.379402>,  <35.862125, 29.879704, 51.397015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775806, 30.586445, 51.379402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.416298, 30.411564, 51.392406>,  <35.200592, 30.306635, 51.400208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.416298, 30.411564, 51.392406>,  <35.775806, 30.586445, 51.379402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416298, 30.411564, 51.392406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203541, 0.481795, 0.852317,
		-0.388298, 0.759425, -0.522014,
		-0.898775, -0.437204, 0.032506,
		35.146664, 30.280403, 51.402157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296822, 31.129126, 51.566582>,  <35.775806, 30.586445, 51.379402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296822, 31.129126, 51.566582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.095215, 30.802021, 51.677746>,  <34.974251, 30.605759, 51.744446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.095215, 30.802021, 51.677746>,  <35.296822, 31.129126, 51.566582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095215, 30.802021, 51.677746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208718, 0.427554, 0.879565,
		-0.838097, 0.385308, -0.386175,
		-0.504014, -0.817762, 0.277912,
		34.944012, 30.556692, 51.761120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759087, 31.424482, 51.916306>,  <35.296822, 31.129126, 51.566582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759087, 31.424482, 51.916306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.790371, 31.047548, 52.046471>,  <34.809143, 30.821388, 52.124569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.790371, 31.047548, 52.046471>,  <34.759087, 31.424482, 51.916306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790371, 31.047548, 52.046471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105822, 0.316717, 0.942598,
		-0.991304, -0.108161, -0.074948,
		0.078215, -0.942333, 0.325409,
		34.813835, 30.764849, 52.144093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199497, 31.345556, 52.336376>,  <34.759087, 31.424482, 51.916306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199497, 31.345556, 52.336376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.432358, 31.039045, 52.445126>,  <34.572075, 30.855139, 52.510376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.432358, 31.039045, 52.445126>,  <34.199497, 31.345556, 52.336376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432358, 31.039045, 52.445126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027567, 0.315577, 0.948500,
		-0.812611, -0.559667, 0.162590,
		0.582153, -0.766279, 0.271870,
		34.607002, 30.809162, 52.526688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876743, 31.065336, 52.851879>,  <34.199497, 31.345556, 52.336376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876743, 31.065336, 52.851879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.264301, 30.974810, 52.891937>,  <34.496834, 30.920494, 52.915974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.264301, 30.974810, 52.891937>,  <33.876743, 31.065336, 52.851879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264301, 30.974810, 52.891937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060225, 0.176883, 0.982388,
		-0.240048, -0.957858, 0.157751,
		0.968891, -0.226320, 0.100147,
		34.554970, 30.906914, 52.921982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977020, 30.761257, 53.516815>,  <33.876743, 31.065336, 52.851879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977020, 30.761257, 53.516815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.341103, 30.889381, 53.411797>,  <34.559551, 30.966255, 53.348785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.341103, 30.889381, 53.411797>,  <33.977020, 30.761257, 53.516815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341103, 30.889381, 53.411797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120894, 0.400834, 0.908139,
		0.396098, -0.858341, 0.326124,
		0.910215, 0.320286, -0.262538,
		34.614162, 30.985476, 53.333031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363281, 30.630966, 54.172504>,  <33.977020, 30.761257, 53.516815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363281, 30.630966, 54.172504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.597687, 30.875887, 53.960213>,  <34.738331, 31.022839, 53.832840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.597687, 30.875887, 53.960213>,  <34.363281, 30.630966, 54.172504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597687, 30.875887, 53.960213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347318, 0.401950, 0.847235,
		0.732089, -0.680824, 0.022885,
		0.586017, 0.612303, -0.530726,
		34.773491, 31.059578, 53.800995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983685, 30.547081, 54.430508>,  <34.363281, 30.630966, 54.172504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983685, 30.547081, 54.430508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.996101, 30.908951, 54.260521>,  <35.003551, 31.126074, 54.158527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.996101, 30.908951, 54.260521>,  <34.983685, 30.547081, 54.430508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996101, 30.908951, 54.260521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400593, 0.378271, 0.834528,
		0.915730, -0.196140, -0.350667,
		0.031037, 0.904677, -0.424966,
		35.005413, 31.180353, 54.133030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609848, 30.768539, 54.591137>,  <34.983685, 30.547081, 54.430508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609848, 30.768539, 54.591137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.385532, 31.090548, 54.513721>,  <35.250942, 31.283752, 54.467274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.385532, 31.090548, 54.513721>,  <35.609848, 30.768539, 54.591137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385532, 31.090548, 54.513721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154066, 0.331131, 0.930922,
		0.813498, 0.492234, -0.309721,
		-0.560790, 0.805020, -0.193538,
		35.217297, 31.332054, 54.455662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935234, 31.280003, 54.973309>,  <35.609848, 30.768539, 54.591137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935234, 31.280003, 54.973309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.563076, 31.410261, 54.906002>,  <35.339779, 31.488417, 54.865616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.563076, 31.410261, 54.906002>,  <35.935234, 31.280003, 54.973309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563076, 31.410261, 54.906002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064253, 0.307060, 0.949519,
		0.360875, 0.894242, -0.264764,
		-0.930398, 0.325646, -0.168268,
		35.283958, 31.507956, 54.855522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170910, 31.995922, 54.944107>,  <35.935234, 31.280003, 54.973309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170910, 31.995922, 54.944107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.526836, 32.178165, 54.933945>,  <36.740391, 32.287510, 54.927849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.526836, 32.178165, 54.933945>,  <36.170910, 31.995922, 54.944107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526836, 32.178165, 54.933945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102424, -0.253668, -0.961853,
		-0.444673, 0.853272, -0.272383,
		0.889817, 0.455609, -0.025404,
		36.793781, 32.314850, 54.926323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995796, 32.270645, 54.369381>,  <36.170910, 31.995922, 54.944107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995796, 32.270645, 54.369381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.388363, 32.313580, 54.432999>,  <36.623905, 32.339340, 54.471169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.388363, 32.313580, 54.432999>,  <35.995796, 32.270645, 54.369381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388363, 32.313580, 54.432999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163537, -0.034416, -0.985937,
		-0.100353, 0.993627, -0.051330,
		0.981420, 0.107336, 0.159041,
		36.682789, 32.345779, 54.480709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197590, 32.811390, 53.881321>,  <35.995796, 32.270645, 54.369381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197590, 32.811390, 53.881321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.535030, 32.624180, 53.986622>,  <36.737495, 32.511856, 54.049801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.535030, 32.624180, 53.986622>,  <36.197590, 32.811390, 53.881321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535030, 32.624180, 53.986622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221134, -0.143955, -0.964560,
		0.489330, 0.871914, -0.017944,
		0.843597, -0.468021, 0.263251,
		36.788109, 32.483772, 54.065598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586246, 33.016602, 53.355480>,  <36.197590, 32.811390, 53.881321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586246, 33.016602, 53.355480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.770672, 32.692406, 53.499992>,  <36.881329, 32.497887, 53.586700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.770672, 32.692406, 53.499992>,  <36.586246, 33.016602, 53.355480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770672, 32.692406, 53.499992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286219, -0.249543, -0.925098,
		0.839938, 0.529936, 0.116922,
		0.461066, -0.810491, 0.361279,
		36.908993, 32.449257, 53.608376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321136, 33.091351, 53.241848>,  <36.586246, 33.016602, 53.355480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321136, 33.091351, 53.241848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.237801, 32.700165, 53.247253>,  <37.187801, 32.465454, 53.250496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.237801, 32.700165, 53.247253>,  <37.321136, 33.091351, 53.241848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237801, 32.700165, 53.247253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357689, -0.089040, -0.929586,
		0.910305, -0.188835, 0.368357,
		-0.208337, -0.977964, 0.013510,
		37.175301, 32.406776, 53.251305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798149, 32.818733, 52.806938>,  <37.321136, 33.091351, 53.241848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798149, 32.818733, 52.806938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.571438, 32.492596, 52.854233>,  <37.435413, 32.296913, 52.882610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.571438, 32.492596, 52.854233>,  <37.798149, 32.818733, 52.806938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571438, 32.492596, 52.854233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535962, -0.473884, -0.698698,
		0.625708, -0.332636, 0.705580,
		-0.566775, -0.815344, 0.118233,
		37.401405, 32.247993, 52.889702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198322, 32.250320, 52.882568>,  <37.798149, 32.818733, 52.806938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198322, 32.250320, 52.882568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.849205, 32.154320, 52.712563>,  <37.639736, 32.096722, 52.610561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.849205, 32.154320, 52.712563>,  <38.198322, 32.250320, 52.882568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849205, 32.154320, 52.712563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487698, -0.393839, -0.779129,
		0.019604, -0.887295, 0.460786,
		-0.872792, -0.239998, -0.425011,
		37.587368, 32.082321, 52.585060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473495, 31.822247, 52.408875>,  <38.198322, 32.250320, 52.882568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473495, 31.822247, 52.408875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.097176, 31.843388, 52.274948>,  <37.871384, 31.856071, 52.194592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.097176, 31.843388, 52.274948>,  <38.473495, 31.822247, 52.408875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097176, 31.843388, 52.274948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328707, -0.098891, -0.939240,
		-0.082749, -0.993694, 0.075664,
		-0.940800, 0.052850, -0.334817,
		37.814934, 31.859243, 52.174503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540894, 31.411310, 51.888855>,  <38.473495, 31.822247, 52.408875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540894, 31.411310, 51.888855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.209438, 31.617561, 51.801682>,  <38.010567, 31.741312, 51.749378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.209438, 31.617561, 51.801682>,  <38.540894, 31.411310, 51.888855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209438, 31.617561, 51.801682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257946, 0.006185, -0.966140,
		-0.496819, -0.856791, -0.138129,
		-0.828634, 0.515627, -0.217933,
		37.960850, 31.772249, 51.736301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396198, 31.308390, 51.110352>,  <38.540894, 31.411310, 51.888855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396198, 31.308390, 51.110352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.155067, 31.626688, 51.133640>,  <38.010387, 31.817667, 51.147614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.155067, 31.626688, 51.133640>,  <38.396198, 31.308390, 51.110352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155067, 31.626688, 51.133640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494845, 0.430120, -0.755067,
		-0.625880, -0.426368, -0.653058,
		-0.602829, 0.795743, 0.058217,
		37.974220, 31.865412, 51.151104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905617, 31.338743, 50.593887>,  <38.396198, 31.308390, 51.110352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905617, 31.338743, 50.593887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.921921, 31.722065, 50.707020>,  <37.931705, 31.952057, 50.774899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.921921, 31.722065, 50.707020>,  <37.905617, 31.338743, 50.593887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921921, 31.722065, 50.707020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342739, 0.252482, -0.904866,
		-0.938546, 0.133823, -0.318156,
		0.040763, 0.958303, 0.282832,
		37.934151, 32.009556, 50.791870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594658, 31.638187, 50.043827>,  <37.905617, 31.338743, 50.593887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594658, 31.638187, 50.043827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.812962, 31.923639, 50.219498>,  <37.943943, 32.094910, 50.324898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.812962, 31.923639, 50.219498>,  <37.594658, 31.638187, 50.043827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812962, 31.923639, 50.219498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286895, 0.333296, -0.898112,
		-0.787296, 0.616152, -0.022837,
		0.545762, 0.713632, 0.439174,
		37.976688, 32.137730, 50.351250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384399, 32.293858, 49.791706>,  <37.594658, 31.638187, 50.043827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384399, 32.293858, 49.791706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.763824, 32.326767, 49.913986>,  <37.991482, 32.346512, 49.987354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.763824, 32.326767, 49.913986>,  <37.384399, 32.293858, 49.791706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763824, 32.326767, 49.913986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287823, 0.177976, -0.941001,
		-0.131828, 0.980589, 0.145142,
		0.948567, 0.082275, 0.305698,
		38.048393, 32.351448, 50.005695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661163, 32.987656, 49.706421>,  <37.384399, 32.293858, 49.791706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661163, 32.987656, 49.706421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.001579, 32.778599, 49.726711>,  <38.205830, 32.653164, 49.738884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.001579, 32.778599, 49.726711>,  <37.661163, 32.987656, 49.706421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001579, 32.778599, 49.726711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375106, 0.537514, -0.755231,
		0.367449, 0.661762, 0.653493,
		0.851044, -0.522638, 0.050722,
		38.256893, 32.621807, 49.741928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701118, 33.661110, 50.055466>,  <37.661163, 32.987656, 49.706421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701118, 33.661110, 50.055466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.709778, 33.816029, 50.424145>,  <37.714973, 33.908978, 50.645351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.709778, 33.816029, 50.424145>,  <37.701118, 33.661110, 50.055466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709778, 33.816029, 50.424145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004465, 0.921946, -0.387292,
		-0.999756, 0.004270, 0.021691,
		0.021652, 0.387294, 0.921702,
		37.716274, 33.932217, 50.700657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597473, 34.248074, 49.518921>,  <37.701118, 33.661110, 50.055466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597473, 34.248074, 49.518921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.332146, 34.250072, 49.818249>,  <37.172947, 34.251270, 49.997845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.332146, 34.250072, 49.818249>,  <37.597473, 34.248074, 49.518921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332146, 34.250072, 49.818249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538101, 0.698112, 0.472321,
		-0.520048, 0.715971, -0.465763,
		-0.663323, 0.004998, 0.748317,
		37.133148, 34.251572, 50.042744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628597, 35.108917, 49.713703>,  <37.597473, 34.248074, 49.518921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628597, 35.108917, 49.713703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.342167, 35.066250, 49.437775>,  <37.170307, 35.040649, 49.272217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.342167, 35.066250, 49.437775>,  <37.628597, 35.108917, 49.713703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342167, 35.066250, 49.437775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105514, 0.960358, -0.258030,
		0.689997, -0.257556, -0.676439,
		-0.716081, -0.106666, -0.689820,
		37.127342, 35.034248, 49.230827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852257, 35.464188, 49.065250>,  <37.628597, 35.108917, 49.713703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852257, 35.464188, 49.065250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.452435, 35.465721, 49.077114>,  <37.212543, 35.466640, 49.084232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.452435, 35.465721, 49.077114>,  <37.852257, 35.464188, 49.065250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452435, 35.465721, 49.077114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008050, 0.920631, -0.390351,
		-0.028800, -0.390416, -0.920188,
		-0.999553, 0.003834, 0.029657,
		37.152569, 35.466873, 49.086010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562885, 36.009426, 48.580017>,  <37.852257, 35.464188, 49.065250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562885, 36.009426, 48.580017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.247837, 35.950550, 48.819344>,  <37.058807, 35.915222, 48.962940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.247837, 35.950550, 48.819344>,  <37.562885, 36.009426, 48.580017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247837, 35.950550, 48.819344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137623, 0.988541, 0.062025,
		-0.600589, -0.033489, -0.798856,
		-0.787625, -0.147192, 0.598316,
		37.011551, 35.906391, 48.998837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103539, 36.414131, 48.327488>,  <37.562885, 36.009426, 48.580017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103539, 36.414131, 48.327488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.953129, 36.352036, 48.692894>,  <36.862885, 36.314777, 48.912136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.953129, 36.352036, 48.692894>,  <37.103539, 36.414131, 48.327488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953129, 36.352036, 48.692894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214261, 0.973715, 0.077276,
		-0.901498, -0.166673, -0.399402,
		-0.376023, -0.155241, 0.913513,
		36.840321, 36.305462, 48.966949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568291, 36.954712, 48.465981>,  <37.103539, 36.414131, 48.327488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568291, 36.954712, 48.465981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.599804, 36.809277, 48.837269>,  <36.618713, 36.722015, 49.060043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.599804, 36.809277, 48.837269>,  <36.568291, 36.954712, 48.465981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599804, 36.809277, 48.837269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323037, 0.871566, 0.368810,
		-0.943102, -0.328906, -0.048787,
		0.078783, -0.363585, 0.928224,
		36.623440, 36.700203, 49.115734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828316, 36.981018, 48.880077>,  <36.568291, 36.954712, 48.465981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828316, 36.981018, 48.880077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.136494, 36.982941, 49.135075>,  <36.321400, 36.984093, 49.288074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.136494, 36.982941, 49.135075>,  <35.828316, 36.981018, 48.880077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136494, 36.982941, 49.135075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350474, 0.838495, 0.417247,
		-0.532531, -0.544889, 0.647694,
		0.770441, 0.004803, 0.637493,
		36.367626, 36.984383, 49.326324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536278, 37.365032, 49.423645>,  <35.828316, 36.981018, 48.880077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536278, 37.365032, 49.423645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.930935, 37.363510, 49.488785>,  <36.167728, 37.362595, 49.527866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.930935, 37.363510, 49.488785>,  <35.536278, 37.365032, 49.423645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930935, 37.363510, 49.488785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071947, 0.886734, 0.456647,
		-0.146140, -0.462265, 0.874617,
		0.986644, -0.003809, 0.162846,
		36.226929, 37.362366, 49.537640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515965, 37.591782, 50.022083>,  <35.536278, 37.365032, 49.423645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515965, 37.591782, 50.022083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.907307, 37.644875, 49.958576>,  <36.142113, 37.676731, 49.920471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.907307, 37.644875, 49.958576>,  <35.515965, 37.591782, 50.022083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907307, 37.644875, 49.958576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026752, 0.841880, 0.539002,
		0.205203, -0.523087, 0.827207,
		0.978354, 0.132734, -0.158763,
		36.200813, 37.684696, 49.910946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851856, 37.697197, 50.660553>,  <35.515965, 37.591782, 50.022083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851856, 37.697197, 50.660553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.089153, 37.868427, 50.387844>,  <36.231533, 37.971165, 50.224220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.089153, 37.868427, 50.387844>,  <35.851856, 37.697197, 50.660553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089153, 37.868427, 50.387844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066553, 0.870076, 0.488404,
		0.802266, -0.244370, 0.544659,
		0.593246, 0.428079, -0.681768,
		36.267128, 37.996853, 50.183311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627041, 37.823265, 50.810532>,  <35.851856, 37.697197, 50.660553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627041, 37.823265, 50.810532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.510418, 38.101673, 50.548065>,  <36.440445, 38.268719, 50.390587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.510418, 38.101673, 50.548065>,  <36.627041, 37.823265, 50.810532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510418, 38.101673, 50.548065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212867, 0.715977, 0.664879,
		0.932567, 0.054174, -0.356908,
		-0.291557, 0.696018, -0.656165,
		36.422951, 38.310478, 50.351215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098610, 38.331852, 50.846851>,  <36.627041, 37.823265, 50.810532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098610, 38.331852, 50.846851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.777210, 38.501518, 50.679768>,  <36.584370, 38.603317, 50.579517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.777210, 38.501518, 50.679768>,  <37.098610, 38.331852, 50.846851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777210, 38.501518, 50.679768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079751, 0.618640, 0.781616,
		0.589945, 0.661337, -0.463247,
		-0.803495, 0.424166, -0.417706,
		36.536163, 38.628769, 50.554455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136505, 39.090065, 51.048569>,  <37.098610, 38.331852, 50.846851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136505, 39.090065, 51.048569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.752575, 39.035160, 50.950676>,  <36.522217, 39.002216, 50.891941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.752575, 39.035160, 50.950676>,  <37.136505, 39.090065, 51.048569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752575, 39.035160, 50.950676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260797, 0.758240, 0.597542,
		0.103546, 0.637362, -0.763576,
		-0.959825, -0.137265, -0.244734,
		36.464626, 38.993980, 50.877254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762661, 39.694176, 51.241089>,  <37.136505, 39.090065, 51.048569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762661, 39.694176, 51.241089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.437263, 39.473988, 51.166027>,  <36.242027, 39.341873, 51.120991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.437263, 39.473988, 51.166027>,  <36.762661, 39.694176, 51.241089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437263, 39.473988, 51.166027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481688, 0.456924, 0.747795,
		-0.325898, 0.698714, -0.636859,
		-0.813491, -0.550472, -0.187651,
		36.193214, 39.308846, 51.109730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182224, 40.240334, 51.222130>,  <36.762661, 39.694176, 51.241089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182224, 40.240334, 51.222130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.016151, 39.881313, 51.281490>,  <35.916508, 39.665901, 51.317108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.016151, 39.881313, 51.281490>,  <36.182224, 40.240334, 51.222130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016151, 39.881313, 51.281490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661847, 0.409921, 0.627633,
		-0.624168, 0.162360, -0.764234,
		-0.415178, -0.897555, 0.148402,
		35.891598, 39.612045, 51.326012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437737, 40.356785, 51.117786>,  <36.182224, 40.240334, 51.222130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437737, 40.356785, 51.117786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.460892, 40.023464, 51.337696>,  <35.474785, 39.823471, 51.469643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.460892, 40.023464, 51.337696>,  <35.437737, 40.356785, 51.117786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460892, 40.023464, 51.337696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699455, 0.359083, 0.617917,
		-0.712328, -0.420315, -0.562071,
		0.057890, -0.833303, 0.549777,
		35.478260, 39.773472, 51.502628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686920, 40.096512, 51.247402>,  <35.437737, 40.356785, 51.117786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686920, 40.096512, 51.247402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.936153, 39.967175, 51.532276>,  <35.085693, 39.889572, 51.703201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.936153, 39.967175, 51.532276>,  <34.686920, 40.096512, 51.247402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936153, 39.967175, 51.532276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630425, 0.331335, 0.701984,
		-0.462958, -0.886377, 0.002603,
		0.623085, -0.323348, 0.712188,
		35.123077, 39.870171, 51.745934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280777, 39.817570, 51.720444>,  <34.686920, 40.096512, 51.247402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280777, 39.817570, 51.720444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.593613, 39.840549, 51.968647>,  <34.781315, 39.854336, 52.117569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.593613, 39.840549, 51.968647>,  <34.280777, 39.817570, 51.720444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593613, 39.840549, 51.968647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611968, 0.258687, 0.747380,
		-0.117580, -0.964251, 0.237475,
		0.782094, 0.057450, 0.620507,
		34.828239, 39.857784, 52.154800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152431, 39.414394, 52.327736>,  <34.280777, 39.817570, 51.720444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152431, 39.414394, 52.327736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.436264, 39.669044, 52.448536>,  <34.606564, 39.821835, 52.521015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.436264, 39.669044, 52.448536>,  <34.152431, 39.414394, 52.327736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436264, 39.669044, 52.448536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558615, 0.247021, 0.791789,
		0.429471, -0.730541, 0.530909,
		0.709580, 0.636625, 0.302002,
		34.649139, 39.860031, 52.539135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213360, 39.281403, 52.940655>,  <34.152431, 39.414394, 52.327736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213360, 39.281403, 52.940655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.384068, 39.642433, 52.963375>,  <34.486492, 39.859051, 52.977005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.384068, 39.642433, 52.963375>,  <34.213360, 39.281403, 52.940655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384068, 39.642433, 52.963375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470390, 0.167899, 0.866339,
		0.772399, -0.396445, 0.496217,
		0.426770, 0.902575, 0.056798,
		34.512100, 39.913204, 52.980415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405975, 39.426277, 53.651340>,  <34.213360, 39.281403, 52.940655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405975, 39.426277, 53.651340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.404926, 39.792957, 53.491512>,  <34.404297, 40.012966, 53.395615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.404926, 39.792957, 53.491512>,  <34.405975, 39.426277, 53.651340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404926, 39.792957, 53.491512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363360, 0.371389, 0.854424,
		0.931645, 0.147426, 0.332118,
		-0.002619, 0.916698, -0.399572,
		34.404140, 40.067966, 53.371639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751823, 39.837654, 54.143227>,  <34.405975, 39.426277, 53.651340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751823, 39.837654, 54.143227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.529335, 40.090218, 53.927101>,  <34.395844, 40.241756, 53.797428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.529335, 40.090218, 53.927101>,  <34.751823, 39.837654, 54.143227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529335, 40.090218, 53.927101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243086, 0.498111, 0.832343,
		0.794686, 0.594309, -0.123572,
		-0.556222, 0.631413, -0.540310,
		34.362469, 40.279640, 53.765007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853851, 40.415241, 54.461369>,  <34.751823, 39.837654, 54.143227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853851, 40.415241, 54.461369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.516178, 40.509968, 54.269009>,  <34.313572, 40.566803, 54.153591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.516178, 40.509968, 54.269009>,  <34.853851, 40.415241, 54.461369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516178, 40.509968, 54.269009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256882, 0.608681, 0.750679,
		0.470490, 0.757249, -0.453006,
		-0.844187, 0.236817, -0.480902,
		34.262920, 40.581013, 54.124737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904339, 41.125355, 54.388100>,  <34.853851, 40.415241, 54.461369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904339, 41.125355, 54.388100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.525349, 41.003254, 54.349915>,  <34.297955, 40.929993, 54.327003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.525349, 41.003254, 54.349915>,  <34.904339, 41.125355, 54.388100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525349, 41.003254, 54.349915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273829, 0.619998, 0.735269,
		-0.165258, 0.722788, -0.671019,
		-0.947474, -0.305253, -0.095461,
		34.241108, 40.911678, 54.321278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397873, 41.741226, 54.346321>,  <34.904339, 41.125355, 54.388100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397873, 41.741226, 54.346321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.134541, 41.462944, 54.461277>,  <33.976540, 41.295975, 54.530251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.134541, 41.462944, 54.461277>,  <34.397873, 41.741226, 54.346321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134541, 41.462944, 54.461277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360412, 0.626521, 0.691068,
		-0.660836, 0.351372, -0.663199,
		-0.658330, -0.695708, 0.287389,
		33.937042, 41.254230, 54.547493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924355, 42.143532, 54.601879>,  <34.397873, 41.741226, 54.346321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924355, 42.143532, 54.601879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.829144, 41.776894, 54.730370>,  <33.772015, 41.556911, 54.807465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.829144, 41.776894, 54.730370>,  <33.924355, 42.143532, 54.601879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829144, 41.776894, 54.730370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167994, 0.364601, 0.915885,
		-0.956619, 0.164045, -0.240769,
		-0.238031, -0.916600, 0.321225,
		33.757736, 41.501915, 54.826736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340141, 42.136654, 55.026394>,  <33.924355, 42.143532, 54.601879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340141, 42.136654, 55.026394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.568008, 41.826900, 55.136532>,  <33.704727, 41.641048, 55.202614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.568008, 41.826900, 55.136532>,  <33.340141, 42.136654, 55.026394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568008, 41.826900, 55.136532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113046, 0.258014, 0.959505,
		-0.814066, -0.577722, 0.059440,
		0.569664, -0.774381, 0.275349,
		33.738907, 41.594585, 55.219135>
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
