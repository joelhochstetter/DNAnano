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
	<36.316990, 53.228836, 50.115288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666771, 53.173450, 49.929314>,  <36.876640, 53.140221, 49.817730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666771, 53.173450, 49.929314>,  <36.316990, 53.228836, 50.115288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666771, 53.173450, 49.929314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481164, 0.369599, 0.794907,
		0.061776, -0.918817, 0.389818,
		0.874451, -0.138460, -0.464934,
		36.929108, 53.131912, 49.789833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811966, 52.955261, 50.502926>,  <36.316990, 53.228836, 50.115288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811966, 52.955261, 50.502926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061199, 53.131371, 50.244335>,  <37.210739, 53.237034, 50.089180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061199, 53.131371, 50.244335>,  <36.811966, 52.955261, 50.502926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061199, 53.131371, 50.244335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486103, 0.429547, 0.761047,
		0.612759, -0.788448, 0.053626,
		0.623081, 0.440271, -0.646476,
		37.248123, 53.263451, 50.050392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424866, 52.634968, 50.596176>,  <36.811966, 52.955261, 50.502926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424866, 52.634968, 50.596176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553814, 52.950493, 50.386852>,  <37.631184, 53.139809, 50.261257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553814, 52.950493, 50.386852>,  <37.424866, 52.634968, 50.596176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553814, 52.950493, 50.386852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752474, 0.121871, 0.647249,
		0.574332, -0.602433, -0.554271,
		0.322375, 0.788810, -0.523309,
		37.650528, 53.187138, 50.229858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084000, 52.625469, 50.737362>,  <37.424866, 52.634968, 50.596176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084000, 52.625469, 50.737362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996861, 52.995018, 50.611504>,  <37.944576, 53.216747, 50.535988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996861, 52.995018, 50.611504>,  <38.084000, 52.625469, 50.737362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996861, 52.995018, 50.611504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769609, 0.360874, 0.526756,
		0.600203, -0.127402, -0.789636,
		-0.217850, 0.923872, -0.314647,
		37.931507, 53.272179, 50.517109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738888, 52.913654, 50.428818>,  <38.084000, 52.625469, 50.737362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738888, 52.913654, 50.428818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463963, 53.164463, 50.575478>,  <38.299007, 53.314949, 50.663475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463963, 53.164463, 50.575478>,  <38.738888, 52.913654, 50.428818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463963, 53.164463, 50.575478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703886, 0.450378, 0.549276,
		0.179277, 0.635609, -0.750907,
		-0.687316, 0.627026, 0.366654,
		38.257767, 53.352570, 50.685474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878063, 53.658459, 50.219120>,  <38.738888, 52.913654, 50.428818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878063, 53.658459, 50.219120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699924, 53.577797, 50.568062>,  <38.593040, 53.529400, 50.777428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699924, 53.577797, 50.568062>,  <38.878063, 53.658459, 50.219120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699924, 53.577797, 50.568062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769196, 0.412498, 0.488040,
		-0.458260, 0.888358, -0.028592,
		-0.445349, -0.201656, 0.872353,
		38.566319, 53.517300, 50.829769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594093, 53.805286, 50.240864>,  <38.878063, 53.658459, 50.219120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594093, 53.805286, 50.240864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756756, 54.051514, 49.970840>,  <39.854355, 54.199249, 49.808826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756756, 54.051514, 49.970840>,  <39.594093, 53.805286, 50.240864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756756, 54.051514, 49.970840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888039, -0.092847, 0.450296,
		0.214509, -0.782598, -0.584403,
		0.406661, 0.615565, -0.675061,
		39.878754, 54.236183, 49.768322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168888, 53.443981, 49.903431>,  <39.594093, 53.805286, 50.240864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168888, 53.443981, 49.903431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246658, 53.836102, 49.889534>,  <40.293320, 54.071373, 49.881195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246658, 53.836102, 49.889534>,  <40.168888, 53.443981, 49.903431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246658, 53.836102, 49.889534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818855, -0.142698, 0.555980,
		0.540071, -0.136544, -0.830469,
		0.194422, 0.980303, -0.034742,
		40.304985, 54.130192, 49.879112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925549, 53.577374, 49.574993>,  <40.168888, 53.443981, 49.903431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.925549, 53.577374, 49.574993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.797699, 53.810955, 49.873478>,  <40.720989, 53.951103, 50.052570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.797699, 53.810955, 49.873478>,  <40.925549, 53.577374, 49.574993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.797699, 53.810955, 49.873478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690968, -0.395246, 0.605263,
		0.648383, 0.709072, -0.277159,
		-0.319629, 0.583950, 0.746217,
		40.701809, 53.986141, 50.097343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410431, 54.023361, 50.010181>,  <40.925549, 53.577374, 49.574993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410431, 54.023361, 50.010181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098194, 53.955204, 50.250729>,  <40.910851, 53.914310, 50.395058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098194, 53.955204, 50.250729>,  <41.410431, 54.023361, 50.010181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098194, 53.955204, 50.250729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616962, -0.364230, 0.697635,
		0.100162, 0.915588, 0.389443,
		-0.780593, -0.170395, 0.601365,
		40.864017, 53.904087, 50.431137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857731, 54.542797, 50.130424>,  <41.410431, 54.023361, 50.010181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857731, 54.542797, 50.130424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194775, 54.667343, 50.306183>,  <41.396999, 54.742073, 50.411636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194775, 54.667343, 50.306183>,  <40.857731, 54.542797, 50.130424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194775, 54.667343, 50.306183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499484, -0.146840, -0.853788,
		-0.201321, 0.938876, -0.279251,
		0.842607, 0.311367, 0.439391,
		41.447556, 54.760754, 50.438000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.236954, 55.001076, 49.714634>,  <40.857731, 54.542797, 50.130424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.236954, 55.001076, 49.714634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.479671, 54.792480, 49.954582>,  <41.625301, 54.667324, 50.098553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.479671, 54.792480, 49.954582>,  <41.236954, 55.001076, 49.714634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479671, 54.792480, 49.954582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541368, -0.281444, -0.792281,
		0.581998, 0.805505, 0.111540,
		0.606794, -0.521490, 0.599874,
		41.661709, 54.636032, 50.134544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969349, 55.090420, 49.605225>,  <41.236954, 55.001076, 49.714634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.969349, 55.090420, 49.605225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869438, 54.718075, 49.711891>,  <41.809494, 54.494667, 49.775890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869438, 54.718075, 49.711891>,  <41.969349, 55.090420, 49.605225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869438, 54.718075, 49.711891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231492, -0.324810, -0.917011,
		0.940226, -0.167313, 0.296615,
		-0.249772, -0.930862, 0.266663,
		41.794506, 54.438816, 49.791889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.389324, 54.516998, 49.257126>,  <41.969349, 55.090420, 49.605225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.389324, 54.516998, 49.257126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037243, 54.353271, 49.353218>,  <41.825996, 54.255035, 49.410873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037243, 54.353271, 49.353218>,  <42.389324, 54.516998, 49.257126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037243, 54.353271, 49.353218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074065, -0.381497, -0.921398,
		0.468788, -0.828807, 0.305477,
		-0.880200, -0.409315, 0.240227,
		41.773182, 54.230476, 49.425285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.090797, 53.890194, 49.681519>,  <42.389324, 54.516998, 49.257126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.090797, 53.890194, 49.681519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271664, 53.534840, 49.713303>,  <42.380184, 53.321625, 49.732372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271664, 53.534840, 49.713303>,  <42.090797, 53.890194, 49.681519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.271664, 53.534840, 49.713303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873159, 0.459068, 0.163857,
		-0.182046, -0.004709, 0.983279,
		0.452163, -0.888389, 0.079460,
		42.407314, 53.268322, 49.737141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.493431, 53.893211, 50.380665>,  <42.090797, 53.890194, 49.681519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.493431, 53.893211, 50.380665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.641907, 53.613777, 50.135979>,  <42.730991, 53.446117, 49.989166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.641907, 53.613777, 50.135979>,  <42.493431, 53.893211, 50.380665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.641907, 53.613777, 50.135979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914890, 0.387765, 0.112316,
		0.158740, -0.601343, 0.783063,
		0.371185, -0.698588, -0.611716,
		42.753262, 53.404202, 49.952465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.094257, 53.671608, 50.671925>,  <42.493431, 53.893211, 50.380665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.094257, 53.671608, 50.671925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.139370, 53.535416, 50.298538>,  <43.166435, 53.453701, 50.074505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.139370, 53.535416, 50.298538>,  <43.094257, 53.671608, 50.671925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.139370, 53.535416, 50.298538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972478, 0.230588, 0.033385,
		0.203879, -0.911540, 0.357111,
		0.112777, -0.340476, -0.933465,
		43.173203, 53.433273, 50.018497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.617653, 53.177406, 50.623951>,  <43.094257, 53.671608, 50.671925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.617653, 53.177406, 50.623951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.600208, 53.335014, 50.256725>,  <43.589741, 53.429581, 50.036388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.600208, 53.335014, 50.256725>,  <43.617653, 53.177406, 50.623951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.600208, 53.335014, 50.256725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998792, -0.003653, -0.049012,
		-0.022666, -0.919093, -0.393387,
		-0.043609, 0.394023, -0.918065,
		43.587124, 53.453220, 49.981304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.287556, 53.242760, 50.978218>,  <43.617653, 53.177406, 50.623951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.287556, 53.242760, 50.978218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.205635, 53.384552, 50.613274>,  <44.156483, 53.469627, 50.394306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.205635, 53.384552, 50.613274>,  <44.287556, 53.242760, 50.978218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.205635, 53.384552, 50.613274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115119, 0.916924, 0.382098,
		0.972010, 0.183285, -0.146983,
		-0.204805, 0.354482, -0.912358,
		44.144196, 53.490898, 50.339565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.526562, 53.827763, 51.059765>,  <44.287556, 53.242760, 50.978218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.526562, 53.827763, 51.059765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.231430, 53.819252, 50.789906>,  <44.054352, 53.814148, 50.627991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.231430, 53.819252, 50.789906>,  <44.526562, 53.827763, 51.059765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.231430, 53.819252, 50.789906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427542, 0.788161, 0.442730,
		0.522313, 0.615102, -0.590626,
		-0.737833, -0.021274, -0.674648,
		44.010078, 53.812870, 50.587509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.951557, 54.313343, 51.338203>,  <44.526562, 53.827763, 51.059765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.951557, 54.313343, 51.338203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.966927, 54.656593, 51.133404>,  <44.976147, 54.862545, 51.010525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.966927, 54.656593, 51.133404>,  <44.951557, 54.313343, 51.338203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.966927, 54.656593, 51.133404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666699, 0.403673, 0.626547,
		0.744336, 0.317275, 0.587622,
		0.038419, 0.858128, -0.511995,
		44.978451, 54.914032, 50.979805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.197048, 54.969280, 51.714169>,  <44.951557, 54.313343, 51.338203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.197048, 54.969280, 51.714169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.939972, 55.065994, 51.423378>,  <44.785728, 55.124023, 51.248905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.939972, 55.065994, 51.423378>,  <45.197048, 54.969280, 51.714169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.939972, 55.065994, 51.423378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575755, 0.473580, 0.666504,
		0.505430, 0.846914, -0.165158,
		-0.642687, 0.241781, -0.726977,
		44.747166, 55.138527, 51.205284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.481319, 55.437508, 52.098984>,  <45.197048, 54.969280, 51.714169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.481319, 55.437508, 52.098984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.227814, 55.384445, 52.403809>,  <45.075710, 55.352608, 52.586704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.227814, 55.384445, 52.403809>,  <45.481319, 55.437508, 52.098984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.227814, 55.384445, 52.403809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494583, -0.826988, 0.267356,
		0.594751, 0.546345, 0.589727,
		-0.633766, -0.132659, 0.762065,
		45.037685, 55.344646, 52.632427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.040298, 54.993919, 52.261810>,  <45.481319, 55.437508, 52.098984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.040298, 54.993919, 52.261810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.392872, 54.900944, 52.097347>,  <46.604416, 54.845158, 51.998669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.392872, 54.900944, 52.097347>,  <46.040298, 54.993919, 52.261810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.392872, 54.900944, 52.097347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280517, 0.957986, 0.059782,
		0.379983, -0.168029, 0.909604,
		0.881433, -0.232443, -0.411153,
		46.657303, 54.831211, 51.974003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.620602, 55.295910, 52.604904>,  <46.040298, 54.993919, 52.261810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.620602, 55.295910, 52.604904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.668076, 55.288898, 52.207794>,  <46.696560, 55.284691, 51.969528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.668076, 55.288898, 52.207794>,  <46.620602, 55.295910, 52.604904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.668076, 55.288898, 52.207794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141635, 0.989919, -0.000543,
		0.982778, -0.140547, 0.119969,
		0.118683, -0.017525, -0.992777,
		46.703682, 55.283642, 51.909962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.287849, 55.764175, 52.399708>,  <46.620602, 55.295910, 52.604904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.287849, 55.764175, 52.399708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.037525, 55.721672, 52.090626>,  <46.887329, 55.696171, 51.905178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.037525, 55.721672, 52.090626>,  <47.287849, 55.764175, 52.399708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.037525, 55.721672, 52.090626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015315, 0.992160, -0.124032,
		0.779822, -0.065787, -0.622535,
		-0.625814, -0.106257, -0.772701,
		46.849781, 55.689796, 51.858814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.731163, 56.155293, 53.009571>,  <47.287849, 55.764175, 52.399708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.731163, 56.155293, 53.009571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.966667, 56.128471, 53.331779>,  <48.107971, 56.112377, 53.525105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.966667, 56.128471, 53.331779>,  <47.731163, 56.155293, 53.009571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.966667, 56.128471, 53.331779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072121, 0.988221, 0.134974,
		-0.805084, -0.137563, 0.576989,
		0.588760, -0.067052, 0.805522,
		48.143295, 56.108356, 53.573437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.525337, 56.394642, 53.739147>,  <47.731163, 56.155293, 53.009571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.525337, 56.394642, 53.739147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.917080, 56.435459, 53.669350>,  <48.152126, 56.459949, 53.627472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.917080, 56.435459, 53.669350>,  <47.525337, 56.394642, 53.739147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.917080, 56.435459, 53.669350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061999, 0.973263, 0.221167,
		0.192395, -0.205783, 0.959499,
		0.979357, 0.102039, -0.174492,
		48.210888, 56.466072, 53.617001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.947281, 56.785919, 54.248535>,  <47.525337, 56.394642, 53.739147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.947281, 56.785919, 54.248535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.144005, 56.882748, 53.913986>,  <48.262039, 56.940845, 53.713257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.144005, 56.882748, 53.913986>,  <47.947281, 56.785919, 54.248535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.144005, 56.882748, 53.913986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015469, 0.957995, 0.286368,
		0.870563, -0.153778, 0.467411,
		0.491814, 0.242071, -0.836373,
		48.291550, 56.955368, 53.663074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.603252, 57.258759, 54.384949>,  <47.947281, 56.785919, 54.248535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.603252, 57.258759, 54.384949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.539112, 57.300606, 53.992348>,  <48.500629, 57.325714, 53.756786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.539112, 57.300606, 53.992348>,  <48.603252, 57.258759, 54.384949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.539112, 57.300606, 53.992348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257353, 0.964406, 0.060754,
		0.952920, -0.242850, -0.181568,
		-0.160351, 0.104621, -0.981500,
		48.491009, 57.331993, 53.697899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.318256, 57.256054, 54.069149>,  <48.603252, 57.258759, 54.384949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.318256, 57.256054, 54.069149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.460194, 56.888397, 54.000710>,  <49.545357, 56.667805, 53.959644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.460194, 56.888397, 54.000710>,  <49.318256, 57.256054, 54.069149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.460194, 56.888397, 54.000710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667115, 0.120700, 0.735111,
		-0.655016, -0.374991, 0.656000,
		0.354839, -0.919137, -0.171102,
		49.566647, 56.612656, 53.949379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.313702, 56.804962, 54.676167>,  <49.318256, 57.256054, 54.069149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.313702, 56.804962, 54.676167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.622395, 56.707657, 54.441132>,  <49.807610, 56.649273, 54.300110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.622395, 56.707657, 54.441132>,  <49.313702, 56.804962, 54.676167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.622395, 56.707657, 54.441132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635424, 0.257273, 0.728043,
		-0.025934, -0.935219, 0.353118,
		0.771728, -0.243261, -0.587589,
		49.853912, 56.634678, 54.264854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.769520, 56.420574, 55.114998>,  <49.313702, 56.804962, 54.676167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.769520, 56.420574, 55.114998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.930984, 56.635647, 54.818901>,  <50.027863, 56.764690, 54.641243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.930984, 56.635647, 54.818901>,  <49.769520, 56.420574, 55.114998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.930984, 56.635647, 54.818901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499937, 0.547983, 0.670655,
		0.766238, -0.640790, -0.047608,
		0.403661, 0.537682, -0.740240,
		50.052082, 56.796951, 54.596828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.537441, 56.581669, 55.281376>,  <49.769520, 56.420574, 55.114998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.537441, 56.581669, 55.281376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.382240, 56.858017, 55.037361>,  <50.289120, 57.023827, 54.890953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.382240, 56.858017, 55.037361>,  <50.537441, 56.581669, 55.281376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.382240, 56.858017, 55.037361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313998, 0.721386, 0.617258,
		0.866521, 0.047946, -0.496833,
		-0.388004, 0.690871, -0.610041,
		50.265839, 57.065277, 54.854347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.053600, 56.932854, 54.926926>,  <50.537441, 56.581669, 55.281376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.053600, 56.932854, 54.926926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.726864, 57.153728, 54.993690>,  <50.530823, 57.286251, 55.033749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.726864, 57.153728, 54.993690>,  <51.053600, 56.932854, 54.926926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.726864, 57.153728, 54.993690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515885, 0.569784, 0.639694,
		0.258126, 0.608637, -0.750288,
		-0.816843, 0.552184, 0.166911,
		50.481812, 57.319386, 55.043762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.157539, 57.418247, 55.497818>,  <51.053600, 56.932854, 54.926926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.157539, 57.418247, 55.497818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.457832, 57.627178, 55.659592>,  <51.638008, 57.752537, 55.756657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.457832, 57.627178, 55.659592>,  <51.157539, 57.418247, 55.497818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.457832, 57.627178, 55.659592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142074, -0.470237, 0.871029,
		0.645144, -0.711373, -0.278815,
		0.750736, 0.522327, 0.404438,
		51.683052, 57.783875, 55.780922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.699459, 57.008320, 55.807625>,  <51.157539, 57.418247, 55.497818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.699459, 57.008320, 55.807625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.622536, 57.362465, 55.976929>,  <51.576382, 57.574951, 56.078510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.622536, 57.362465, 55.976929>,  <51.699459, 57.008320, 55.807625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.622536, 57.362465, 55.976929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334298, -0.464618, 0.819985,
		0.922638, 0.016197, 0.385327,
		-0.192311, 0.885363, 0.423260,
		51.564842, 57.628075, 56.103905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.042377, 57.128834, 56.395351>,  <51.699459, 57.008320, 55.807625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.042377, 57.128834, 56.395351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.747303, 57.384510, 56.482307>,  <51.570259, 57.537914, 56.534481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.747303, 57.384510, 56.482307>,  <52.042377, 57.128834, 56.395351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.747303, 57.384510, 56.482307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037664, -0.360450, 0.932018,
		0.674097, 0.679345, 0.289972,
		-0.737682, 0.639192, 0.217391,
		51.525997, 57.576267, 56.547523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.096046, 57.245548, 57.067802>,  <52.042377, 57.128834, 56.395351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.096046, 57.245548, 57.067802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.718822, 57.367115, 57.013748>,  <51.492489, 57.440056, 56.981316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.718822, 57.367115, 57.013748>,  <52.096046, 57.245548, 57.067802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.718822, 57.367115, 57.013748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184881, -0.141241, 0.972558,
		0.276494, 0.942169, 0.189388,
		-0.943064, 0.303921, -0.135137,
		51.435902, 57.458290, 56.973206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.898891, 56.438248, 57.243488>,  <52.096046, 57.245548, 57.067802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.898891, 56.438248, 57.243488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.165874, 56.169113, 57.115868>,  <52.326065, 56.007633, 57.039295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.165874, 56.169113, 57.115868>,  <51.898891, 56.438248, 57.243488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.165874, 56.169113, 57.115868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742466, 0.568520, 0.354301,
		-0.057003, -0.473362, 0.879022,
		0.667454, -0.672840, -0.319047,
		52.366112, 55.967262, 57.020153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.304306, 56.082775, 57.782562>,  <51.898891, 56.438248, 57.243488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.304306, 56.082775, 57.782562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.537838, 56.129906, 57.461250>,  <52.677956, 56.158184, 57.268463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.537838, 56.129906, 57.461250>,  <52.304306, 56.082775, 57.782562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.537838, 56.129906, 57.461250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679257, 0.471043, 0.562787,
		0.444693, -0.874205, 0.194971,
		0.583831, 0.117833, -0.803279,
		52.712986, 56.165257, 57.220268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.887627, 55.685364, 57.835064>,  <52.304306, 56.082775, 57.782562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.887627, 55.685364, 57.835064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.966553, 56.028976, 57.646118>,  <53.013908, 56.235146, 57.532753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.966553, 56.028976, 57.646118>,  <52.887627, 55.685364, 57.835064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.966553, 56.028976, 57.646118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626941, 0.259854, 0.734452,
		0.753666, -0.441060, -0.487292,
		0.197313, 0.859035, -0.472362,
		53.025745, 56.286686, 57.504410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.580505, 55.715698, 57.648052>,  <52.887627, 55.685364, 57.835064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.580505, 55.715698, 57.648052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.417904, 56.073174, 57.724030>,  <53.320343, 56.287659, 57.769615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.417904, 56.073174, 57.724030>,  <53.580505, 55.715698, 57.648052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.417904, 56.073174, 57.724030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575522, 0.089003, 0.812929,
		0.709598, 0.439775, -0.550516,
		-0.406503, 0.893687, 0.189944,
		53.295952, 56.341278, 57.781013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.043770, 56.344154, 57.579655>,  <53.580505, 55.715698, 57.648052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.043770, 56.344154, 57.579655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.769009, 56.390911, 57.866570>,  <53.604153, 56.418964, 58.038719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.769009, 56.390911, 57.866570>,  <54.043770, 56.344154, 57.579655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.769009, 56.390911, 57.866570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723630, 0.201314, 0.660176,
		-0.067230, 0.972527, -0.222871,
		-0.686906, 0.116893, 0.717284,
		53.562939, 56.425980, 58.081757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.321579, 56.882946, 57.906578>,  <54.043770, 56.344154, 57.579655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.321579, 56.882946, 57.906578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.058830, 56.691792, 58.139870>,  <53.901180, 56.577099, 58.279842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.058830, 56.691792, 58.139870>,  <54.321579, 56.882946, 57.906578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.058830, 56.691792, 58.139870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491282, 0.315517, 0.811844,
		-0.571983, 0.819804, 0.027522,
		-0.656869, -0.477882, 0.583226,
		53.861771, 56.548428, 58.314838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.097652, 57.337505, 58.374653>,  <54.321579, 56.882946, 57.906578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.097652, 57.337505, 58.374653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.094345, 56.969978, 58.532494>,  <54.092361, 56.749462, 58.627197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.094345, 56.969978, 58.532494>,  <54.097652, 57.337505, 58.374653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.094345, 56.969978, 58.532494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483579, 0.341733, 0.805835,
		-0.875261, 0.197486, 0.441494,
		-0.008268, -0.918813, 0.394606,
		54.091866, 56.694336, 58.650875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.809540, 57.297142, 59.069439>,  <54.097652, 57.337505, 58.374653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.809540, 57.297142, 59.069439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.090645, 57.017963, 59.014313>,  <54.259308, 56.850456, 58.981236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.090645, 57.017963, 59.014313>,  <53.809540, 57.297142, 59.069439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.090645, 57.017963, 59.014313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466710, 0.306088, 0.829754,
		-0.536940, -0.647442, 0.540847,
		0.702764, -0.697947, -0.137817,
		54.301476, 56.808578, 58.972969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.324696, 57.884083, 59.285522>,  <53.809540, 57.297142, 59.069439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.324696, 57.884083, 59.285522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.661339, 57.978920, 59.479630>,  <54.863323, 58.035820, 59.596092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.661339, 57.978920, 59.479630>,  <54.324696, 57.884083, 59.285522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.661339, 57.978920, 59.479630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315657, 0.513137, -0.798155,
		-0.438244, 0.824911, 0.357021,
		0.841608, 0.237090, 0.485268,
		54.913822, 58.050049, 59.625210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.683353, 57.959362, 58.632111>,  <54.324696, 57.884083, 59.285522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.683353, 57.959362, 58.632111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.925941, 57.675045, 58.774643>,  <55.071495, 57.504456, 58.860161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.925941, 57.675045, 58.774643>,  <54.683353, 57.959362, 58.632111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.925941, 57.675045, 58.774643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173942, -0.555906, -0.812842,
		0.775846, 0.430985, -0.460777,
		0.606471, -0.710789, 0.356331,
		55.107883, 57.461807, 58.881542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.166943, 57.718472, 58.059265>,  <54.683353, 57.959362, 58.632111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.166943, 57.718472, 58.059265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.152252, 57.432137, 58.338188>,  <55.143436, 57.260338, 58.505543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.152252, 57.432137, 58.338188>,  <55.166943, 57.718472, 58.059265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.152252, 57.432137, 58.338188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245517, -0.669925, -0.700658,
		0.968696, -0.196932, -0.151147,
		-0.036725, -0.715834, 0.697304,
		55.141235, 57.217388, 58.547379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.427200, 57.238056, 57.813114>,  <55.166943, 57.718472, 58.059265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.427200, 57.238056, 57.813114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.243721, 57.018272, 58.092453>,  <55.133633, 56.886402, 58.260056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.243721, 57.018272, 58.092453>,  <55.427200, 57.238056, 57.813114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.243721, 57.018272, 58.092453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224873, -0.688542, -0.689450,
		0.859667, -0.473290, 0.192275,
		-0.458700, -0.549460, 0.698347,
		55.106110, 56.853436, 58.301956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.685703, 56.540020, 57.749092>,  <55.427200, 57.238056, 57.813114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.685703, 56.540020, 57.749092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.326508, 56.553223, 57.924606>,  <55.110992, 56.561142, 58.029915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.326508, 56.553223, 57.924606>,  <55.685703, 56.540020, 57.749092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.326508, 56.553223, 57.924606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288987, -0.796216, -0.531533,
		0.331825, -0.604112, 0.724528,
		-0.897986, 0.033003, 0.438785,
		55.057110, 56.563122, 58.056240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.416374, 56.758381, 57.731606>,  <55.685703, 56.540020, 57.749092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.416374, 56.758381, 57.731606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.589439, 57.036304, 57.501808>,  <56.693279, 57.203060, 57.363930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.589439, 57.036304, 57.501808>,  <56.416374, 56.758381, 57.731606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.589439, 57.036304, 57.501808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823248, -0.044712, 0.565918,
		0.367518, -0.717803, -0.591345,
		0.432658, 0.694809, -0.574498,
		56.719238, 57.244747, 57.329460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.107552, 56.623508, 57.560951>,  <56.416374, 56.758381, 57.731606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.107552, 56.623508, 57.560951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.080818, 57.021305, 57.593254>,  <57.064777, 57.259983, 57.612637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.080818, 57.021305, 57.593254>,  <57.107552, 56.623508, 57.560951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.080818, 57.021305, 57.593254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779388, 0.001505, 0.626539,
		0.622966, 0.104815, -0.775195,
		-0.066837, 0.994491, 0.080754,
		57.060768, 57.319653, 57.617481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.799191, 56.955475, 57.277576>,  <57.107552, 56.623508, 57.560951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.799191, 56.955475, 57.277576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.069992, 56.679008, 57.176422>,  <58.232475, 56.513130, 57.115730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.069992, 56.679008, 57.176422>,  <57.799191, 56.955475, 57.277576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.069992, 56.679008, 57.176422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160527, -0.196658, 0.967242,
		-0.718256, -0.695425, -0.022188,
		0.677008, -0.691165, -0.252885,
		58.273094, 56.471661, 57.100555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.306747, 57.261444, 57.776169>,  <57.799191, 56.955475, 57.277576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.306747, 57.261444, 57.776169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.566460, 57.359669, 58.064095>,  <58.722286, 57.418602, 58.236851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.566460, 57.359669, 58.064095>,  <58.306747, 57.261444, 57.776169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.566460, 57.359669, 58.064095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745548, -0.018432, -0.666197,
		-0.150324, 0.969206, -0.195045,
		0.649277, 0.245560, 0.719819,
		58.761242, 57.433338, 58.280041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.955093, 57.822845, 57.510612>,  <58.306747, 57.261444, 57.776169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.955093, 57.822845, 57.510612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.014557, 57.543728, 57.790894>,  <59.050236, 57.376259, 57.959061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.014557, 57.543728, 57.790894>,  <58.955093, 57.822845, 57.510612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.014557, 57.543728, 57.790894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681466, -0.441178, -0.583923,
		0.716592, 0.564310, 0.409939,
		0.148658, -0.697794, 0.700703,
		59.059155, 57.334389, 58.001106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.598320, 57.821224, 57.887722>,  <58.955093, 57.822845, 57.510612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.598320, 57.821224, 57.887722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.458580, 57.449215, 57.842102>,  <59.374737, 57.226009, 57.814728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.458580, 57.449215, 57.842102>,  <59.598320, 57.821224, 57.887722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.458580, 57.449215, 57.842102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902321, -0.301118, -0.308454,
		0.252527, -0.210671, 0.944377,
		-0.349351, -0.930025, -0.114052,
		59.353775, 57.170208, 57.807888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.111961, 57.498089, 58.201077>,  <59.598320, 57.821224, 57.887722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.111961, 57.498089, 58.201077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.915825, 57.224670, 57.984802>,  <59.798145, 57.060619, 57.855038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.915825, 57.224670, 57.984802>,  <60.111961, 57.498089, 58.201077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.915825, 57.224670, 57.984802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871233, -0.368187, -0.324641,
		0.022834, -0.630243, 0.776062,
		-0.490339, -0.683543, -0.540681,
		59.768723, 57.019608, 57.822598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.039299, 56.784721, 58.444298>,  <60.111961, 57.498089, 58.201077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.039299, 56.784721, 58.444298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.084854, 56.875870, 58.057495>,  <60.112186, 56.930561, 57.825413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.084854, 56.875870, 58.057495>,  <60.039299, 56.784721, 58.444298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.084854, 56.875870, 58.057495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992020, 0.026903, 0.123178,
		0.054084, -0.973319, -0.222991,
		0.113892, 0.227874, -0.967007,
		60.119022, 56.944233, 57.767391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.660732, 56.476315, 58.080097>,  <60.039299, 56.784721, 58.444298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.660732, 56.476315, 58.080097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.569221, 56.807175, 57.874779>,  <60.514313, 57.005692, 57.751587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.569221, 56.807175, 57.874779>,  <60.660732, 56.476315, 58.080097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.569221, 56.807175, 57.874779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969321, 0.242240, -0.041674,
		0.089871, -0.507086, -0.857197,
		-0.228780, 0.827154, -0.513300,
		60.500587, 57.055321, 57.720787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.612453, 55.733833, 58.200417>,  <60.660732, 56.476315, 58.080097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.612453, 55.733833, 58.200417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.838852, 56.008030, 58.383614>,  <60.974693, 56.172546, 58.493530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.838852, 56.008030, 58.383614>,  <60.612453, 55.733833, 58.200417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.838852, 56.008030, 58.383614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782919, -0.272926, -0.559061,
		-0.258232, 0.674995, -0.691157,
		0.565998, 0.685487, 0.457988,
		61.008652, 56.213676, 58.521011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.123295, 55.751011, 57.746780>,  <60.612453, 55.733833, 58.200417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.123295, 55.751011, 57.746780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.288223, 55.911690, 58.073860>,  <61.387180, 56.008095, 58.270107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.288223, 55.911690, 58.073860>,  <61.123295, 55.751011, 57.746780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.288223, 55.911690, 58.073860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832083, -0.531536, -0.158453,
		0.370989, 0.745729, -0.553404,
		0.412317, 0.401693, 0.817702,
		61.411919, 56.032196, 58.319172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.814041, 55.898518, 57.591217>,  <61.123295, 55.751011, 57.746780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.814041, 55.898518, 57.591217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.804398, 55.900574, 57.991096>,  <61.798611, 55.901806, 58.231022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.804398, 55.900574, 57.991096>,  <61.814041, 55.898518, 57.591217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.804398, 55.900574, 57.991096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920766, -0.389364, 0.024208,
		0.389370, 0.921070, 0.004654,
		-0.024109, 0.005140, 0.999696,
		61.797165, 55.902115, 58.291004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.462463, 56.216331, 57.790615>,  <61.814041, 55.898518, 57.591217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.462463, 56.216331, 57.790615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.308975, 55.966042, 58.062271>,  <62.216881, 55.815868, 58.225266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.308975, 55.966042, 58.062271>,  <62.462463, 56.216331, 57.790615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.308975, 55.966042, 58.062271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914309, -0.360653, 0.184306,
		0.129609, 0.691665, 0.710493,
		-0.383719, -0.625723, 0.679139,
		62.193859, 55.778324, 58.266014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.564808, 56.563374, 57.153130>,  <62.462463, 56.216331, 57.790615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.564808, 56.563374, 57.153130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.863632, 56.689472, 56.919029>,  <63.042927, 56.765133, 56.778568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.863632, 56.689472, 56.919029>,  <62.564808, 56.563374, 57.153130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.863632, 56.689472, 56.919029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149835, 0.777895, 0.610269,
		0.647651, -0.543599, 0.533899,
		0.747059, 0.315245, -0.585255,
		63.087749, 56.784046, 56.743454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.165932, 56.784248, 57.430233>,  <62.564808, 56.563374, 57.153130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.165932, 56.784248, 57.430233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.186127, 57.000839, 57.094551>,  <63.198242, 57.130795, 56.893143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.186127, 57.000839, 57.094551>,  <63.165932, 56.784248, 57.430233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.186127, 57.000839, 57.094551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197831, 0.818200, 0.539825,
		0.978935, -0.193275, -0.065811,
		0.050488, 0.541473, -0.839200,
		63.201275, 57.163280, 56.842793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.360054, 57.375561, 57.731915>,  <63.165932, 56.784248, 57.430233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.360054, 57.375561, 57.731915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.501755, 57.665314, 57.968483>,  <63.586773, 57.839165, 58.110424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.501755, 57.665314, 57.968483>,  <63.360054, 57.375561, 57.731915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.501755, 57.665314, 57.968483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846161, -0.517554, 0.127080,
		0.398145, 0.455416, -0.796289,
		0.354249, 0.724385, 0.591417,
		63.608028, 57.882629, 58.145908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.037811, 57.443932, 57.572716>,  <63.360054, 57.375561, 57.731915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.037811, 57.443932, 57.572716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.982208, 57.578011, 57.945450>,  <63.948849, 57.658459, 58.169090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.982208, 57.578011, 57.945450>,  <64.037811, 57.443932, 57.572716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.982208, 57.578011, 57.945450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756697, -0.571050, 0.318296,
		0.638817, 0.749363, -0.174264,
		-0.139005, 0.335198, 0.931837,
		63.940506, 57.678570, 58.225002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.562912, 57.069710, 57.767483>,  <64.037811, 57.443932, 57.572716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.562912, 57.069710, 57.767483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.495811, 57.302258, 58.085945>,  <64.455551, 57.441788, 58.277023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.495811, 57.302258, 58.085945>,  <64.562912, 57.069710, 57.767483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.495811, 57.302258, 58.085945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902941, -0.233533, 0.360776,
		0.395674, 0.779406, -0.485767,
		-0.167748, 0.581368, 0.796160,
		64.445488, 57.476669, 58.324795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.096779, 57.455418, 57.869869>,  <64.562912, 57.069710, 57.767483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.096779, 57.455418, 57.869869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.940765, 57.435181, 58.237633>,  <64.847153, 57.423038, 58.458290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.940765, 57.435181, 58.237633>,  <65.096779, 57.455418, 57.869869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.940765, 57.435181, 58.237633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861434, -0.372763, 0.344934,
		0.325271, 0.926546, 0.188972,
		-0.390039, -0.050590, 0.919407,
		64.823753, 57.420002, 58.513454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.410660, 57.918293, 58.380081>,  <65.096779, 57.455418, 57.869869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.410660, 57.918293, 58.380081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.255341, 57.563866, 58.481354>,  <65.162148, 57.351208, 58.542118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.255341, 57.563866, 58.481354>,  <65.410660, 57.918293, 58.380081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.255341, 57.563866, 58.481354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910052, -0.325486, 0.256639,
		-0.144993, 0.330062, 0.932757,
		-0.388306, -0.886069, 0.253180,
		65.138847, 57.298046, 58.557308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.937317, 58.338123, 58.128208>,  <65.410660, 57.918293, 58.380081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.937317, 58.338123, 58.128208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.305489, 58.371429, 58.280983>,  <66.526390, 58.391415, 58.372646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.305489, 58.371429, 58.280983>,  <65.937317, 58.338123, 58.128208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.305489, 58.371429, 58.280983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390783, 0.220884, 0.893588,
		-0.009959, -0.971739, 0.235846,
		0.920429, 0.083266, 0.381938,
		66.581619, 58.396412, 58.395565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.040840, 58.071548, 58.782455>,  <65.937317, 58.338123, 58.128208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.040840, 58.071548, 58.782455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.349266, 58.324432, 58.812820>,  <66.534325, 58.476162, 58.831039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.349266, 58.324432, 58.812820>,  <66.040840, 58.071548, 58.782455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.349266, 58.324432, 58.812820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357801, 0.331572, 0.872948,
		0.526719, -0.700263, 0.481871,
		0.771068, 0.632213, 0.075909,
		66.580589, 58.514095, 58.835594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.939850, 58.232796, 59.430721>,  <66.040840, 58.071548, 58.782455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.939850, 58.232796, 59.430721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.208824, 58.483223, 59.588638>,  <66.370209, 58.633480, 59.683388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.208824, 58.483223, 59.588638>,  <65.939850, 58.232796, 59.430721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.208824, 58.483223, 59.588638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738902, 0.536879, 0.407166,
		0.042959, -0.565508, 0.823623,
		0.672442, 0.626068, 0.394792,
		66.410553, 58.671043, 59.707077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.755745, 58.359749, 60.095993>,  <65.939850, 58.232796, 59.430721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.755745, 58.359749, 60.095993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.957687, 58.683422, 59.975761>,  <66.078850, 58.877625, 59.903622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.957687, 58.683422, 59.975761>,  <65.755745, 58.359749, 60.095993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.957687, 58.683422, 59.975761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786066, 0.574849, 0.227264,
		0.356683, 0.121536, 0.926286,
		0.504853, 0.809183, -0.300574,
		66.109146, 58.926178, 59.885590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.807701, 58.872925, 60.573330>,  <65.755745, 58.359749, 60.095993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.807701, 58.872925, 60.573330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.812660, 59.051224, 60.215302>,  <65.815636, 59.158203, 60.000484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.812660, 59.051224, 60.215302>,  <65.807701, 58.872925, 60.573330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.812660, 59.051224, 60.215302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890957, 0.411280, 0.192470,
		0.453918, 0.795083, 0.402245,
		0.012405, 0.445749, -0.895072,
		65.816383, 59.184948, 59.946781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.766190, 59.589966, 60.595894>,  <65.807701, 58.872925, 60.573330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.766190, 59.589966, 60.595894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.597000, 59.402657, 60.285583>,  <65.495491, 59.290272, 60.099400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.597000, 59.402657, 60.285583>,  <65.766190, 59.589966, 60.595894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.597000, 59.402657, 60.285583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882644, 0.406626, 0.235787,
		0.205038, 0.784461, -0.585303,
		-0.422965, -0.468269, -0.775774,
		65.470108, 59.262177, 60.052853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.112053, 60.017479, 60.915607>,  <65.766190, 59.589966, 60.595894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.112053, 60.017479, 60.915607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.265350, 59.808231, 61.220100>,  <65.357330, 59.682682, 61.402794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.265350, 59.808231, 61.220100>,  <65.112053, 60.017479, 60.915607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.265350, 59.808231, 61.220100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717395, 0.687700, 0.111417,
		-0.581781, 0.503401, 0.638842,
		0.383244, -0.523122, 0.761228,
		65.380325, 59.651295, 61.448467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.102013, 60.426655, 61.615635>,  <65.112053, 60.017479, 60.915607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.102013, 60.426655, 61.615635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.396820, 60.164448, 61.549797>,  <65.573708, 60.007126, 61.510292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.396820, 60.164448, 61.549797>,  <65.102013, 60.426655, 61.615635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.396820, 60.164448, 61.549797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672689, 0.735056, 0.084745,
		0.065436, -0.173182, 0.982714,
		0.737026, -0.655515, -0.164597,
		65.617928, 59.967793, 61.500420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.554840, 60.057281, 62.176922>,  <65.102013, 60.426655, 61.615635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.554840, 60.057281, 62.176922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.169380, 60.042557, 62.282776>,  <64.938103, 60.033722, 62.346291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.169380, 60.042557, 62.282776>,  <65.554840, 60.057281, 62.176922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.169380, 60.042557, 62.282776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178881, -0.646849, -0.741342,
		0.198469, -0.761729, 0.616748,
		-0.963645, -0.036809, 0.264638,
		64.880287, 60.031513, 62.362167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.109619, 60.180840, 62.624691>,  <65.554840, 60.057281, 62.176922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.109619, 60.180840, 62.624691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.977150, 59.893936, 62.869919>,  <65.897667, 59.721794, 63.017056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.977150, 59.893936, 62.869919>,  <66.109619, 60.180840, 62.624691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.977150, 59.893936, 62.869919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569736, 0.669932, 0.476018,
		-0.752143, -0.191638, -0.630520,
		-0.331182, -0.717263, 0.613068,
		65.877792, 59.678757, 63.053841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.833862, 59.871552, 62.458576>,  <66.109619, 60.180840, 62.624691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.833862, 59.871552, 62.458576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.039307, 60.213776, 62.432640>,  <67.162575, 60.419109, 62.417076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.039307, 60.213776, 62.432640>,  <66.833862, 59.871552, 62.458576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.039307, 60.213776, 62.432640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500919, -0.360357, -0.786907,
		-0.696616, 0.371690, -0.613655,
		0.513620, 0.855564, -0.064844,
		67.193390, 60.470444, 62.413185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.901054, 60.038113, 61.660950>,  <66.833862, 59.871552, 62.458576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.901054, 60.038113, 61.660950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.168518, 60.251614, 61.868027>,  <67.328995, 60.379715, 61.992275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.168518, 60.251614, 61.868027>,  <66.901054, 60.038113, 61.660950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.168518, 60.251614, 61.868027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708630, -0.246505, -0.661119,
		-0.225259, 0.808916, -0.543059,
		0.668657, 0.533751, 0.517695,
		67.369118, 60.411739, 62.023335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.145187, 60.478977, 61.212440>,  <66.901054, 60.038113, 61.660950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.145187, 60.478977, 61.212440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.415794, 60.428028, 61.502571>,  <67.578156, 60.397457, 61.676651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.415794, 60.428028, 61.502571>,  <67.145187, 60.478977, 61.212440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.415794, 60.428028, 61.502571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715871, -0.117349, -0.688300,
		0.172789, 0.984888, 0.011796,
		0.676515, -0.127375, 0.725330,
		67.618752, 60.389816, 61.720169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.640297, 60.484539, 60.857079>,  <67.145187, 60.478977, 61.212440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.640297, 60.484539, 60.857079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.811218, 60.350746, 61.193062>,  <67.913773, 60.270470, 61.394653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.811218, 60.350746, 61.193062>,  <67.640297, 60.484539, 60.857079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.811218, 60.350746, 61.193062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856198, -0.148721, -0.494779,
		0.290416, 0.930592, 0.222837,
		0.427297, -0.334484, 0.839963,
		67.939407, 60.250401, 61.445049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.372856, 60.837513, 61.186760>,  <67.640297, 60.484539, 60.857079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.372856, 60.837513, 61.186760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.308540, 60.443581, 61.212830>,  <68.269951, 60.207222, 61.228470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.308540, 60.443581, 61.212830>,  <68.372856, 60.837513, 61.186760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.308540, 60.443581, 61.212830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912382, -0.173493, -0.370755,
		0.376440, -0.000149, 0.926441,
		-0.160786, -0.984835, 0.065174,
		68.260307, 60.148129, 61.232380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.735565, 60.524818, 61.685005>,  <68.372856, 60.837513, 61.186760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.735565, 60.524818, 61.685005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.711876, 60.264442, 61.382278>,  <68.697662, 60.108219, 61.200642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.711876, 60.264442, 61.382278>,  <68.735565, 60.524818, 61.685005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.711876, 60.264442, 61.382278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974031, 0.128292, -0.186558,
		0.218531, -0.748213, 0.626435,
		-0.059218, -0.650936, -0.756819,
		68.694107, 60.069160, 61.155231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.382225, 60.307003, 61.797451>,  <68.735565, 60.524818, 61.685005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.382225, 60.307003, 61.797451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.265152, 60.194107, 61.432007>,  <69.194908, 60.126369, 61.212742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.265152, 60.194107, 61.432007>,  <69.382225, 60.307003, 61.797451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.265152, 60.194107, 61.432007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956116, -0.099834, -0.275456,
		-0.013463, -0.954134, 0.299077,
		-0.292680, -0.282243, -0.913607,
		69.177345, 60.109432, 61.157925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.605652, 59.717667, 61.616859>,  <69.382225, 60.307003, 61.797451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.605652, 59.717667, 61.616859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.548042, 59.952919, 61.298523>,  <69.513481, 60.094070, 61.107521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.548042, 59.952919, 61.298523>,  <69.605652, 59.717667, 61.616859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.548042, 59.952919, 61.298523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921813, -0.212749, -0.324035,
		-0.359889, -0.780284, -0.511504,
		-0.144018, 0.588128, -0.795842,
		69.504837, 60.129356, 61.059769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.797104, 59.345737, 61.034348>,  <69.605652, 59.717667, 61.616859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.797104, 59.345737, 61.034348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.833572, 59.731361, 60.934525>,  <69.855453, 59.962734, 60.874630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.833572, 59.731361, 60.934525>,  <69.797104, 59.345737, 61.034348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.833572, 59.731361, 60.934525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828115, -0.212573, -0.518689,
		-0.553096, -0.159374, -0.817732,
		0.091162, 0.964060, -0.249553,
		69.860924, 60.020580, 60.859657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.910110, 59.457390, 60.254185>,  <69.797104, 59.345737, 61.034348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.910110, 59.457390, 60.254185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.100304, 59.739605, 60.464378>,  <70.214424, 59.908932, 60.590492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.100304, 59.739605, 60.464378>,  <69.910110, 59.457390, 60.254185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.100304, 59.739605, 60.464378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793152, -0.085423, -0.603004,
		-0.380551, 0.703510, -0.600213,
		0.475491, 0.705533, 0.525482,
		70.242950, 59.951263, 60.622025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.305099, 59.850815, 59.739929>,  <69.910110, 59.457390, 60.254185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.305099, 59.850815, 59.739929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.445290, 59.856361, 60.114517>,  <70.529404, 59.859692, 60.339272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.445290, 59.856361, 60.114517>,  <70.305099, 59.850815, 59.739929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.445290, 59.856361, 60.114517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935110, -0.061068, -0.349057,
		0.052347, 0.998037, -0.034372,
		0.350471, 0.013869, 0.936471,
		70.550430, 59.860523, 60.395458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.914902, 60.382130, 59.798382>,  <70.305099, 59.850815, 59.739929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.914902, 60.382130, 59.798382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.975975, 60.088020, 60.062523>,  <71.012619, 59.911556, 60.221008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.975975, 60.088020, 60.062523>,  <70.914902, 60.382130, 59.798382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.975975, 60.088020, 60.062523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940217, -0.097766, -0.326243,
		0.304437, 0.670687, 0.676386,
		0.152679, -0.735269, 0.660355,
		71.021782, 59.867439, 60.260628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.473427, 60.457588, 60.267574>,  <70.914902, 60.382130, 59.798382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.473427, 60.457588, 60.267574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.428040, 60.064575, 60.208588>,  <71.400810, 59.828766, 60.173195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.428040, 60.064575, 60.208588>,  <71.473427, 60.457588, 60.267574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.428040, 60.064575, 60.208588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993394, -0.109639, -0.033870,
		0.017110, -0.150338, 0.988487,
		-0.113468, -0.982536, -0.147469,
		71.393997, 59.769814, 60.164349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.104149, 60.218571, 60.274376>,  <71.473427, 60.457588, 60.267574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.104149, 60.218571, 60.274376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.927437, 59.863052, 60.225594>,  <71.821411, 59.649742, 60.196323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.927437, 59.863052, 60.225594>,  <72.104149, 60.218571, 60.274376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.927437, 59.863052, 60.225594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865326, -0.386285, -0.319366,
		0.236742, -0.246621, 0.939751,
		-0.441774, -0.888798, -0.121958,
		71.794907, 59.596413, 60.189007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.478912, 59.660313, 60.579247>,  <72.104149, 60.218571, 60.274376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.478912, 59.660313, 60.579247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.263664, 59.543354, 60.263039>,  <72.134514, 59.473179, 60.073315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.263664, 59.543354, 60.263039>,  <72.478912, 59.660313, 60.579247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.263664, 59.543354, 60.263039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816626, -0.413058, -0.403119,
		-0.208660, -0.862489, 0.461057,
		-0.538129, -0.292396, -0.790520,
		72.102226, 59.455635, 60.025883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.619141, 58.901634, 60.471096>,  <72.478912, 59.660313, 60.579247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.619141, 58.901634, 60.471096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.537392, 59.135685, 60.157188>,  <72.488342, 59.276115, 59.968845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.537392, 59.135685, 60.157188>,  <72.619141, 58.901634, 60.471096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.537392, 59.135685, 60.157188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876044, -0.248392, -0.413338,
		-0.436785, -0.771966, -0.461830,
		-0.204368, 0.585123, -0.784770,
		72.476082, 59.311222, 59.921757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.621002, 58.513390, 59.767265>,  <72.619141, 58.901634, 60.471096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.621002, 58.513390, 59.767265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.729622, 58.896629, 59.730820>,  <72.794792, 59.126572, 59.708954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.729622, 58.896629, 59.730820>,  <72.621002, 58.513390, 59.767265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.729622, 58.896629, 59.730820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826684, -0.280685, -0.487658,
		-0.492798, 0.057108, -0.868268,
		0.271559, 0.958099, -0.091111,
		72.811089, 59.184059, 59.703487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.630775, 57.838299, 60.261768>,  <72.621002, 58.513390, 59.767265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.630775, 57.838299, 60.261768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.917282, 57.680637, 60.492111>,  <73.089188, 57.586040, 60.630318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.917282, 57.680637, 60.492111>,  <72.630775, 57.838299, 60.261768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.917282, 57.680637, 60.492111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413311, -0.904513, -0.105024,
		0.562265, -0.162783, -0.810778,
		0.716263, -0.394155, 0.575855,
		73.132164, 57.562389, 60.664867>
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
