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
	<39.843452, 33.268654, 51.089859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924229, 33.486584, 50.764309>,  <39.972694, 33.617340, 50.568981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924229, 33.486584, 50.764309>,  <39.843452, 33.268654, 51.089859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924229, 33.486584, 50.764309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891651, 0.241517, 0.382920,
		0.405187, -0.803017, -0.437020,
		0.201944, 0.544824, -0.813871,
		39.984814, 33.650032, 50.520149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609413, 33.242115, 50.937195>,  <39.843452, 33.268654, 51.089859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609413, 33.242115, 50.937195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491207, 33.574131, 50.748009>,  <40.420284, 33.773342, 50.634495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491207, 33.574131, 50.748009>,  <40.609413, 33.242115, 50.937195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491207, 33.574131, 50.748009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834303, 0.465415, 0.295512,
		0.465415, -0.307272, -0.830044,
		-0.295512, 0.830044, -0.472969,
		40.402554, 33.823143, 50.606117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066486, 33.392193, 50.390015>,  <40.609413, 33.242115, 50.937195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066486, 33.392193, 50.390015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890881, 33.733936, 50.501251>,  <40.785515, 33.938984, 50.567993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890881, 33.733936, 50.501251>,  <41.066486, 33.392193, 50.390015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890881, 33.733936, 50.501251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891548, 0.375873, 0.252707,
		0.111378, 0.358871, -0.926718,
		-0.439018, 0.854360, 0.278087,
		40.759174, 33.990246, 50.584679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542854, 33.848667, 50.258698>,  <41.066486, 33.392193, 50.390015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542854, 33.848667, 50.258698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292732, 34.078449, 50.469978>,  <41.142658, 34.216320, 50.596745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292732, 34.078449, 50.469978>,  <41.542854, 33.848667, 50.258698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292732, 34.078449, 50.469978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779889, 0.484056, 0.396817,
		-0.027723, 0.660067, -0.750695,
		-0.625304, 0.574458, 0.528198,
		41.105141, 34.250786, 50.628437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746132, 34.465454, 50.168697>,  <41.542854, 33.848667, 50.258698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746132, 34.465454, 50.168697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569782, 34.459736, 50.527679>,  <41.463974, 34.456306, 50.743069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569782, 34.459736, 50.527679>,  <41.746132, 34.465454, 50.168697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569782, 34.459736, 50.527679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794113, 0.459816, 0.397433,
		-0.418346, 0.887899, -0.191369,
		-0.440875, -0.014296, 0.897455,
		41.437519, 34.455448, 50.796917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.934143, 35.124599, 50.538563>,  <41.746132, 34.465454, 50.168697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.934143, 35.124599, 50.538563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783894, 34.949932, 50.865543>,  <41.693745, 34.845131, 51.061733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783894, 34.949932, 50.865543>,  <41.934143, 35.124599, 50.538563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.783894, 34.949932, 50.865543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793889, 0.303487, 0.526911,
		-0.478173, 0.846884, 0.232674,
		-0.375620, -0.436672, 0.817452,
		41.671207, 34.818932, 51.110779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.817200, 35.621693, 51.072544>,  <41.934143, 35.124599, 50.538563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.817200, 35.621693, 51.072544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885361, 35.242199, 51.179031>,  <41.926258, 35.014503, 51.242924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885361, 35.242199, 51.179031>,  <41.817200, 35.621693, 51.072544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885361, 35.242199, 51.179031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879965, 0.268090, 0.392159,
		-0.443423, 0.167435, 0.880535,
		0.170402, -0.948733, 0.266214,
		41.936481, 34.957581, 51.258896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.232407, 35.737743, 51.643627>,  <41.817200, 35.621693, 51.072544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.232407, 35.737743, 51.643627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.278267, 35.349274, 51.560032>,  <42.305782, 35.116192, 51.509876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.278267, 35.349274, 51.560032>,  <42.232407, 35.737743, 51.643627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.278267, 35.349274, 51.560032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916537, 0.022265, 0.399330,
		-0.383166, -0.237328, 0.892670,
		0.114648, -0.971174, -0.208989,
		42.312660, 35.057922, 51.497334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.519108, 35.453842, 52.280392>,  <42.232407, 35.737743, 51.643627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.519108, 35.453842, 52.280392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.605537, 35.202553, 51.981419>,  <42.657394, 35.051781, 51.802036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.605537, 35.202553, 51.981419>,  <42.519108, 35.453842, 52.280392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.605537, 35.202553, 51.981419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972837, 0.073400, 0.219546,
		-0.083062, -0.774564, 0.627017,
		0.216076, -0.628222, -0.747428,
		42.670361, 35.014088, 51.757191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.094200, 35.131054, 52.613602>,  <42.519108, 35.453842, 52.280392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.094200, 35.131054, 52.613602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.080879, 35.003029, 52.234879>,  <43.072887, 34.926216, 52.007645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.080879, 35.003029, 52.234879>,  <43.094200, 35.131054, 52.613602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.080879, 35.003029, 52.234879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999326, -0.025323, -0.026585,
		-0.015467, -0.947059, 0.320687,
		-0.033298, -0.320059, -0.946812,
		43.070889, 34.907013, 51.950836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.453426, 34.443726, 52.488136>,  <43.094200, 35.131054, 52.613602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.453426, 34.443726, 52.488136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.493534, 34.635578, 52.139446>,  <43.517597, 34.750690, 51.930233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.493534, 34.635578, 52.139446>,  <43.453426, 34.443726, 52.488136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.493534, 34.635578, 52.139446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994022, -0.086323, 0.066838,
		-0.043191, -0.873211, -0.485424,
		0.100267, 0.479635, -0.871720,
		43.523613, 34.779469, 51.877930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.935520, 34.097645, 52.217457>,  <43.453426, 34.443726, 52.488136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.935520, 34.097645, 52.217457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942268, 34.443481, 52.016579>,  <43.946316, 34.650982, 51.896049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942268, 34.443481, 52.016579>,  <43.935520, 34.097645, 52.217457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.942268, 34.443481, 52.016579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995022, -0.063854, -0.076506,
		-0.098213, -0.498409, -0.861361,
		0.016871, 0.864587, -0.502199,
		43.947330, 34.702858, 51.865917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.280529, 33.936821, 51.636486>,  <43.935520, 34.097645, 52.217457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.280529, 33.936821, 51.636486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.291981, 34.329102, 51.713848>,  <44.298851, 34.564468, 51.760265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.291981, 34.329102, 51.713848>,  <44.280529, 33.936821, 51.636486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.291981, 34.329102, 51.713848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998034, -0.017254, -0.060256,
		-0.055756, 0.194749, -0.979267,
		0.028631, 0.980701, 0.193404,
		44.300571, 34.623314, 51.771870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.789906, 34.223137, 51.115589>,  <44.280529, 33.936821, 51.636486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.789906, 34.223137, 51.115589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.753704, 34.490566, 51.410839>,  <44.731983, 34.651024, 51.587990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.753704, 34.490566, 51.410839>,  <44.789906, 34.223137, 51.115589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.753704, 34.490566, 51.410839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993250, 0.114585, 0.017996,
		-0.072547, 0.734770, -0.674426,
		-0.090502, 0.668568, 0.738123,
		44.726555, 34.691135, 51.632275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.128937, 34.844433, 50.843952>,  <44.789906, 34.223137, 51.115589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.128937, 34.844433, 50.843952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.134251, 34.894276, 51.240799>,  <45.137440, 34.924183, 51.478909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.134251, 34.894276, 51.240799>,  <45.128937, 34.844433, 50.843952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.134251, 34.894276, 51.240799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986292, 0.161575, -0.033502,
		-0.164476, 0.978962, -0.120757,
		0.013286, 0.124612, 0.992117,
		45.138237, 34.931660, 51.538433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.459164, 35.600464, 51.064919>,  <45.128937, 34.844433, 50.843952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.459164, 35.600464, 51.064919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.487244, 35.320831, 51.349556>,  <45.504093, 35.153053, 51.520336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.487244, 35.320831, 51.349556>,  <45.459164, 35.600464, 51.064919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.487244, 35.320831, 51.349556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963351, 0.232653, 0.133518,
		-0.258893, 0.676139, 0.689790,
		0.070205, -0.699077, 0.711591,
		45.508305, 35.111107, 51.563034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.804638, 35.926270, 51.515186>,  <45.459164, 35.600464, 51.064919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.804638, 35.926270, 51.515186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.849548, 35.534248, 51.580791>,  <45.876495, 35.299038, 51.620155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.849548, 35.534248, 51.580791>,  <45.804638, 35.926270, 51.515186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.849548, 35.534248, 51.580791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969224, 0.144400, 0.199384,
		-0.219089, 0.136578, 0.966098,
		0.112273, -0.980048, 0.164011,
		45.883232, 35.240234, 51.629993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.332726, 36.025223, 51.912060>,  <45.804638, 35.926270, 51.515186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.332726, 36.025223, 51.912060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.334896, 35.627735, 51.867367>,  <46.336201, 35.389240, 51.840549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.334896, 35.627735, 51.867367>,  <46.332726, 36.025223, 51.912060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.334896, 35.627735, 51.867367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999985, 0.005395, 0.000611,
		-0.000004, -0.111736, 0.993738,
		0.005430, -0.993723, -0.111734,
		46.336525, 35.329617, 51.833847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.676769, 35.788963, 52.507675>,  <46.332726, 36.025223, 51.912060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.676769, 35.788963, 52.507675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.733528, 35.512619, 52.224102>,  <46.767582, 35.346813, 52.053959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.733528, 35.512619, 52.224102>,  <46.676769, 35.788963, 52.507675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.733528, 35.512619, 52.224102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984930, 0.170083, 0.031387,
		0.098893, -0.702698, 0.704582,
		0.141893, -0.690860, -0.708928,
		46.776096, 35.305363, 52.011425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.234470, 35.383247, 52.684544>,  <46.676769, 35.788963, 52.507675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.234470, 35.383247, 52.684544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.217468, 35.292271, 52.295399>,  <47.207268, 35.237682, 52.061913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.217468, 35.292271, 52.295399>,  <47.234470, 35.383247, 52.684544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.217468, 35.292271, 52.295399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986976, -0.160771, -0.005539,
		-0.155148, -0.960428, 0.231315,
		-0.042508, -0.227443, -0.972863,
		47.204716, 35.224037, 52.003540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.621708, 34.808945, 52.623154>,  <47.234470, 35.383247, 52.684544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.621708, 34.808945, 52.623154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.606369, 34.929596, 52.242092>,  <47.597168, 35.001987, 52.013454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.606369, 34.929596, 52.242092>,  <47.621708, 34.808945, 52.623154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.606369, 34.929596, 52.242092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973338, -0.204484, -0.103918,
		-0.226147, -0.931240, -0.285743,
		-0.038343, 0.301626, -0.952655,
		47.594868, 35.020084, 51.956295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<23.779171, 35.255096, 51.520374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.932438, 35.075893, 51.843479>,  <24.024397, 34.968372, 52.037342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.932438, 35.075893, 51.843479>,  <23.779171, 35.255096, 51.520374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.932438, 35.075893, 51.843479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912752, 0.049527, -0.405500,
		0.141662, 0.892656, 0.427899,
		0.383165, -0.448009, 0.807757,
		24.047388, 34.941490, 52.085808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.284901, 35.646858, 51.804478>,  <23.779171, 35.255096, 51.520374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.284901, 35.646858, 51.804478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.362631, 35.287941, 51.963024>,  <24.409269, 35.072590, 52.058151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.362631, 35.287941, 51.963024>,  <24.284901, 35.646858, 51.804478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.362631, 35.287941, 51.963024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964707, 0.101613, -0.242929,
		0.177701, 0.429586, 0.885369,
		0.194324, -0.897291, 0.396369,
		24.420927, 35.018753, 52.081936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.923645, 35.726604, 52.117352>,  <24.284901, 35.646858, 51.804478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.923645, 35.726604, 52.117352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.912209, 35.326801, 52.112328>,  <24.905346, 35.086918, 52.109314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.912209, 35.326801, 52.112328>,  <24.923645, 35.726604, 52.117352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.912209, 35.326801, 52.112328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927580, -0.021850, -0.372986,
		0.372530, -0.022312, 0.927752,
		-0.028593, -0.999512, -0.012556,
		24.903631, 35.026947, 52.108562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.434071, 35.488705, 52.537361>,  <24.923645, 35.726604, 52.117352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.434071, 35.488705, 52.537361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.373245, 35.161503, 52.315460>,  <25.336750, 34.965183, 52.182320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.373245, 35.161503, 52.315460>,  <25.434071, 35.488705, 52.537361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.373245, 35.161503, 52.315460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979633, -0.050268, -0.194404,
		0.131136, -0.573017, 0.808984,
		-0.152063, -0.818000, -0.554755,
		25.327627, 34.916103, 52.149033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.989283, 35.044476, 52.692425>,  <25.434071, 35.488705, 52.537361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.989283, 35.044476, 52.692425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.830452, 34.914845, 52.348961>,  <25.735153, 34.837067, 52.142883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.830452, 34.914845, 52.348961>,  <25.989283, 35.044476, 52.692425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.830452, 34.914845, 52.348961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907958, -0.002162, -0.419056,
		0.133951, -0.946027, 0.295109,
		-0.397077, -0.324080, -0.858663,
		25.711329, 34.817619, 52.091362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.326771, 34.356411, 52.463913>,  <25.989283, 35.044476, 52.692425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.326771, 34.356411, 52.463913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.188019, 34.559574, 52.148521>,  <26.104767, 34.681473, 51.959286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.188019, 34.559574, 52.148521>,  <26.326771, 34.356411, 52.463913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.188019, 34.559574, 52.148521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869299, -0.141518, -0.473594,
		-0.352126, -0.849708, -0.392433,
		-0.346880, 0.507906, -0.788483,
		26.083954, 34.711945, 51.911976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.852850, 34.231190, 52.012653>,  <26.326771, 34.356411, 52.463913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.852850, 34.231190, 52.012653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.638859, 34.523682, 51.843372>,  <26.510464, 34.699177, 51.741802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.638859, 34.523682, 51.843372>,  <26.852850, 34.231190, 52.012653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.638859, 34.523682, 51.843372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735188, 0.156103, -0.659644,
		-0.416289, -0.664029, -0.621104,
		-0.534979, 0.731230, -0.423202,
		26.478365, 34.743050, 51.716412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.856422, 33.985531, 51.280430>,  <26.852850, 34.231190, 52.012653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.856422, 33.985531, 51.280430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.804518, 34.377865, 51.338562>,  <26.773375, 34.613266, 51.373440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.804518, 34.377865, 51.338562>,  <26.856422, 33.985531, 51.280430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.804518, 34.377865, 51.338562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804431, 0.189830, -0.562900,
		-0.579701, 0.043865, -0.813648,
		-0.129763, 0.980837, 0.145331,
		26.765589, 34.672115, 51.382160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.131548, 34.339470, 50.689491>,  <26.856422, 33.985531, 51.280430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.131548, 34.339470, 50.689491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.130901, 34.624519, 50.970108>,  <27.130514, 34.795547, 51.138477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.130901, 34.624519, 50.970108>,  <27.131548, 34.339470, 50.689491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.130901, 34.624519, 50.970108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918461, 0.278524, -0.280809,
		-0.395508, 0.643887, -0.654968,
		-0.001615, 0.712624, 0.701544,
		27.130417, 34.838306, 51.180573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.455429, 34.920937, 50.325371>,  <27.131548, 34.339470, 50.689491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.455429, 34.920937, 50.325371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.492191, 34.968353, 50.720844>,  <27.514248, 34.996803, 50.958130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.492191, 34.968353, 50.720844>,  <27.455429, 34.920937, 50.325371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.492191, 34.968353, 50.720844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938917, 0.320369, -0.125690,
		-0.331644, 0.939847, -0.081855,
		0.091905, 0.118539, 0.988687,
		27.519762, 35.003914, 51.017452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833502, 35.457584, 50.277367>,  <27.455429, 34.920937, 50.325371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.833502, 35.457584, 50.277367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.857616, 35.394787, 50.671669>,  <27.872086, 35.357109, 50.908253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.857616, 35.394787, 50.671669>,  <27.833502, 35.457584, 50.277367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.857616, 35.394787, 50.671669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955384, 0.295147, -0.011422,
		-0.289150, 0.942466, 0.167782,
		0.060285, -0.156993, 0.985758,
		27.875702, 35.347691, 50.967396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.204155, 36.007702, 50.550465>,  <27.833502, 35.457584, 50.277367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.204155, 36.007702, 50.550465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.253422, 35.703945, 50.806011>,  <28.282982, 35.521690, 50.959339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.253422, 35.703945, 50.806011>,  <28.204155, 36.007702, 50.550465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.253422, 35.703945, 50.806011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963990, 0.244453, 0.104722,
		-0.235699, 0.602967, 0.762153,
		0.123167, -0.759390, 0.638871,
		28.290373, 35.476128, 50.997673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508141, 36.259045, 51.155495>,  <28.204155, 36.007702, 50.550465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.508141, 36.259045, 51.155495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.599710, 35.869808, 51.144958>,  <28.654654, 35.636269, 51.138638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.599710, 35.869808, 51.144958>,  <28.508141, 36.259045, 51.155495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.599710, 35.869808, 51.144958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973441, 0.228781, 0.008425,
		-0.002172, -0.027570, 0.999617,
		0.228926, -0.973087, -0.026341,
		28.668388, 35.577881, 51.137054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096224, 36.200726, 51.715748>,  <28.508141, 36.259045, 51.155495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096224, 36.200726, 51.715748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.111626, 35.892296, 51.461514>,  <29.120867, 35.707237, 51.308971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.111626, 35.892296, 51.461514>,  <29.096224, 36.200726, 51.715748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.111626, 35.892296, 51.461514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998575, 0.053209, -0.004059,
		0.036949, -0.634523, 0.772020,
		0.038502, -0.771070, -0.635585,
		29.123177, 35.660976, 51.270840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628662, 35.894855, 51.955956>,  <29.096224, 36.200726, 51.715748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628662, 35.894855, 51.955956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.606424, 35.743134, 51.586514>,  <29.593082, 35.652100, 51.364849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.606424, 35.743134, 51.586514>,  <29.628662, 35.894855, 51.955956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606424, 35.743134, 51.586514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992690, 0.078249, -0.091889,
		0.107124, -0.921957, 0.372181,
		-0.055595, -0.379304, -0.923600,
		29.589746, 35.629341, 51.309433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.197325, 35.433121, 51.907448>,  <29.628662, 35.894855, 51.955956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.197325, 35.433121, 51.907448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.118517, 35.513954, 51.523708>,  <30.071232, 35.562454, 51.293465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.118517, 35.513954, 51.523708>,  <30.197325, 35.433121, 51.907448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.118517, 35.513954, 51.523708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975664, -0.055655, -0.212092,
		-0.096253, -0.977785, -0.186202,
		-0.197017, 0.202085, -0.959347,
		30.059412, 35.574581, 51.235905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736362, 35.051201, 51.521320>,  <30.197325, 35.433121, 51.907448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736362, 35.051201, 51.521320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.603548, 35.315777, 51.252323>,  <30.523859, 35.474522, 51.090923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.603548, 35.315777, 51.252323>,  <30.736362, 35.051201, 51.521320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603548, 35.315777, 51.252323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891952, -0.011778, -0.451976,
		-0.306875, -0.749907, -0.586061,
		-0.332038, 0.661438, -0.672495,
		30.503937, 35.514210, 51.050575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.766788, 34.759308, 50.881340>,  <30.736362, 35.051201, 51.521320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.766788, 34.759308, 50.881340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.804932, 35.156300, 50.850613>,  <30.827818, 35.394493, 50.832176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.804932, 35.156300, 50.850613>,  <30.766788, 34.759308, 50.881340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804932, 35.156300, 50.850613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870564, -0.120570, -0.477056,
		-0.482727, -0.021381, -0.875510,
		0.095360, 0.992475, -0.076815,
		30.833540, 35.454041, 50.827568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112677, 34.881397, 50.244141>,  <30.766788, 34.759308, 50.881340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112677, 34.881397, 50.244141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.193130, 35.209042, 50.459026>,  <31.241404, 35.405628, 50.587959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.193130, 35.209042, 50.459026>,  <31.112677, 34.881397, 50.244141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193130, 35.209042, 50.459026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938455, -0.003923, -0.345378,
		-0.280796, 0.573619, -0.769490,
		0.201135, 0.819113, 0.537215,
		31.253471, 35.454777, 50.620190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568634, 35.289055, 49.795654>,  <31.112677, 34.881397, 50.244141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568634, 35.289055, 49.795654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.610577, 35.473629, 50.148037>,  <31.635742, 35.584373, 50.359467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.610577, 35.473629, 50.148037>,  <31.568634, 35.289055, 49.795654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610577, 35.473629, 50.148037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994155, -0.025724, -0.104857,
		-0.025724, 0.886799, -0.461439,
		0.104857, 0.461439, 0.880953,
		31.642035, 35.612061, 50.412323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881250, 35.859524, 49.614826>,  <31.568634, 35.289055, 49.795654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881250, 35.859524, 49.614826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.961344, 35.792488, 50.000950>,  <32.009399, 35.752266, 50.232624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.961344, 35.792488, 50.000950>,  <31.881250, 35.859524, 49.614826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961344, 35.792488, 50.000950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973116, 0.148465, -0.176076,
		-0.113806, 0.974614, 0.192810,
		0.200231, -0.167588, 0.965309,
		32.021412, 35.742210, 50.290543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.896832, 34.793228, 34.786850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.562311, 34.862530, 34.994919>,  <24.361599, 34.904110, 35.119762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.562311, 34.862530, 34.994919>,  <24.896832, 34.793228, 34.786850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.562311, 34.862530, 34.994919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540486, 0.101205, 0.835244,
		0.092069, 0.979663, -0.178281,
		-0.836300, 0.173258, 0.520176,
		24.311420, 34.914509, 35.150970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.136814, 35.321293, 35.278088>,  <24.896832, 34.793228, 34.786850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.136814, 35.321293, 35.278088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.815125, 35.126770, 35.414745>,  <24.622110, 35.010056, 35.496742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.815125, 35.126770, 35.414745>,  <25.136814, 35.321293, 35.278088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.815125, 35.126770, 35.414745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376397, 0.028109, 0.926032,
		-0.459942, 0.873334, 0.160439,
		-0.804226, -0.486310, 0.341649,
		24.573856, 34.980877, 35.517239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.575806, 35.684113, 35.865498>,  <25.136814, 35.321293, 35.278088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.575806, 35.684113, 35.865498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.681835, 35.298420, 35.865986>,  <24.745453, 35.067005, 35.866280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.681835, 35.298420, 35.865986>,  <24.575806, 35.684113, 35.865498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.681835, 35.298420, 35.865986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600846, 0.166168, 0.781903,
		-0.754135, -0.206527, 0.623399,
		0.265073, -0.964227, 0.001222,
		24.761356, 35.009151, 35.866352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.511154, 35.341248, 36.543549>,  <24.575806, 35.684113, 35.865498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.511154, 35.341248, 36.543549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.799051, 35.158810, 36.334190>,  <24.971790, 35.049347, 36.208576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.799051, 35.158810, 36.334190>,  <24.511154, 35.341248, 36.543549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.799051, 35.158810, 36.334190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643680, 0.155972, 0.749232,
		-0.260083, -0.876158, 0.405838,
		0.719745, -0.456092, -0.523399,
		25.014975, 35.021980, 36.177170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.813837, 34.702217, 36.873386>,  <24.511154, 35.341248, 36.543549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.813837, 34.702217, 36.873386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.055050, 34.908531, 36.629971>,  <25.199778, 35.032322, 36.483921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.055050, 34.908531, 36.629971>,  <24.813837, 34.702217, 36.873386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.055050, 34.908531, 36.629971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640201, 0.142195, 0.754933,
		0.475917, -0.844833, -0.244460,
		0.603031, 0.515789, -0.608536,
		25.235960, 35.063267, 36.447411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.585043, 34.624001, 36.518883>,  <24.813837, 34.702217, 36.873386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.585043, 34.624001, 36.518883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.700460, 34.491508, 36.159546>,  <25.769711, 34.412014, 35.943943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.700460, 34.491508, 36.159546>,  <25.585043, 34.624001, 36.518883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.700460, 34.491508, 36.159546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573207, 0.691777, -0.439180,
		0.766926, 0.641662, 0.009745,
		0.288546, -0.331233, -0.898346,
		25.787024, 34.392139, 35.890041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.052877, 34.840912, 36.019802>,  <25.585043, 34.624001, 36.518883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.052877, 34.840912, 36.019802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.289440, 35.162666, 36.042454>,  <26.431377, 35.355717, 36.056046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.289440, 35.162666, 36.042454>,  <26.052877, 34.840912, 36.019802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.289440, 35.162666, 36.042454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301958, 0.155801, 0.940504,
		0.747702, -0.573320, 0.335031,
		0.591408, 0.804382, 0.056626,
		26.466864, 35.403980, 36.059441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.736149, 35.151184, 36.577770>,  <26.052877, 34.840912, 36.019802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.736149, 35.151184, 36.577770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.963163, 34.976242, 36.856804>,  <27.099371, 34.871277, 37.024223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.963163, 34.976242, 36.856804>,  <26.736149, 35.151184, 36.577770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963163, 34.976242, 36.856804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819508, -0.381806, 0.427353,
		0.079439, -0.814216, -0.575102,
		0.567535, -0.437352, 0.697587,
		27.133423, 34.845036, 37.066078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.330683, 34.489792, 36.621708>,  <26.736149, 35.151184, 36.577770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.330683, 34.489792, 36.621708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.562731, 34.585106, 36.933266>,  <26.701960, 34.642296, 37.120201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.562731, 34.585106, 36.933266>,  <26.330683, 34.489792, 36.621708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.562731, 34.585106, 36.933266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729298, -0.273912, 0.626974,
		0.362748, -0.931768, 0.014880,
		0.580119, 0.238285, 0.778898,
		26.736767, 34.656590, 37.166935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.416590, 33.919762, 37.148174>,  <26.330683, 34.489792, 36.621708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.416590, 33.919762, 37.148174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.480721, 34.263931, 37.341652>,  <26.519199, 34.470432, 37.457741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.480721, 34.263931, 37.341652>,  <26.416590, 33.919762, 37.148174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.480721, 34.263931, 37.341652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709676, -0.240109, 0.662350,
		0.686043, -0.449463, 0.572126,
		0.160329, 0.860424, 0.483698,
		26.528820, 34.522060, 37.486763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.743935, 33.873627, 37.864353>,  <26.416590, 33.919762, 37.148174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.743935, 33.873627, 37.864353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.475084, 34.166805, 37.822338>,  <26.313774, 34.342712, 37.797127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.475084, 34.166805, 37.822338>,  <26.743935, 33.873627, 37.864353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.475084, 34.166805, 37.822338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648146, -0.513816, 0.562050,
		0.357981, 0.445850, 0.820407,
		-0.672128, 0.732947, -0.105040,
		26.273445, 34.386688, 37.790825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.492897, 34.159504, 38.518147>,  <26.743935, 33.873627, 37.864353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.492897, 34.159504, 38.518147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.194510, 34.217243, 38.258087>,  <26.015478, 34.251888, 38.102051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.194510, 34.217243, 38.258087>,  <26.492897, 34.159504, 38.518147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.194510, 34.217243, 38.258087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597709, -0.575671, 0.557984,
		-0.293727, 0.804839, 0.515712,
		-0.745968, 0.144351, -0.650150,
		25.970718, 34.260548, 38.063042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.985395, 33.708614, 38.895813>,  <26.492897, 34.159504, 38.518147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.985395, 33.708614, 38.895813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.324587, 33.907116, 38.970291>,  <27.528101, 34.026218, 39.014977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.324587, 33.907116, 38.970291>,  <26.985395, 33.708614, 38.895813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.324587, 33.907116, 38.970291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010771, -0.335076, 0.942129,
		0.529924, -0.800909, -0.278792,
		0.847977, 0.496254, 0.186192,
		27.578979, 34.055992, 39.026150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.417566, 33.336704, 39.259460>,  <26.985395, 33.708614, 38.895813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.417566, 33.336704, 39.259460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.562378, 33.696133, 39.358662>,  <27.649265, 33.911789, 39.418182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.562378, 33.696133, 39.358662>,  <27.417566, 33.336704, 39.259460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.562378, 33.696133, 39.358662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025514, -0.275501, 0.960962,
		0.931818, -0.341568, -0.122665,
		0.362028, 0.898571, 0.248002,
		27.670986, 33.965706, 39.433064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829514, 33.149239, 39.753166>,  <27.417566, 33.336704, 39.259460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.829514, 33.149239, 39.753166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.765684, 33.536587, 39.829891>,  <27.727386, 33.768997, 39.875927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.765684, 33.536587, 39.829891>,  <27.829514, 33.149239, 39.753166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.765684, 33.536587, 39.829891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200834, -0.158392, 0.966736,
		0.966541, 0.192789, -0.169207,
		-0.159575, 0.968372, 0.191811,
		27.717812, 33.827099, 39.887436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.362303, 33.441032, 40.166977>,  <27.829514, 33.149239, 39.753166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.362303, 33.441032, 40.166977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.067627, 33.702045, 40.237965>,  <27.890821, 33.858654, 40.280556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.067627, 33.702045, 40.237965>,  <28.362303, 33.441032, 40.166977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.067627, 33.702045, 40.237965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279819, 0.055234, 0.958463,
		0.615621, 0.755749, -0.223280,
		-0.736690, 0.652528, 0.177470,
		27.846621, 33.897804, 40.291206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579330, 33.881397, 40.528053>,  <28.362303, 33.441032, 40.166977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579330, 33.881397, 40.528053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.191004, 33.913399, 40.618488>,  <27.958008, 33.932598, 40.672749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.191004, 33.913399, 40.618488>,  <28.579330, 33.881397, 40.528053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.191004, 33.913399, 40.618488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226741, -0.000906, 0.973955,
		0.078120, 0.996795, -0.017260,
		-0.970817, 0.079999, 0.226085,
		27.899759, 33.937397, 40.686314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.469730, 33.967899, 41.365685>,  <28.579330, 33.881397, 40.528053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.469730, 33.967899, 41.365685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.668711, 34.313553, 41.335163>,  <28.788099, 34.520943, 41.316849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.668711, 34.313553, 41.335163>,  <28.469730, 33.967899, 41.365685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668711, 34.313553, 41.335163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785410, -0.411284, 0.462575,
		0.368341, -0.290041, -0.883290,
		0.497449, 0.864131, -0.076308,
		28.817945, 34.572792, 41.312271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168985, 33.790356, 41.613522>,  <28.469730, 33.967899, 41.365685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168985, 33.790356, 41.613522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.203482, 34.178318, 41.522449>,  <29.224178, 34.411095, 41.467808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.203482, 34.178318, 41.522449>,  <29.168985, 33.790356, 41.613522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203482, 34.178318, 41.522449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812590, 0.063743, 0.579340,
		0.576420, -0.234970, -0.782642,
		0.086240, 0.969910, -0.227677,
		29.229353, 34.469292, 41.454147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834627, 34.061192, 41.146057>,  <29.168985, 33.790356, 41.613522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834627, 34.061192, 41.146057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.674034, 34.308281, 41.416531>,  <29.577679, 34.456535, 41.578815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.674034, 34.308281, 41.416531>,  <29.834627, 34.061192, 41.146057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674034, 34.308281, 41.416531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899243, 0.125844, 0.418958,
		0.173706, 0.776261, -0.606007,
		-0.401483, 0.617723, 0.676188,
		29.553589, 34.493599, 41.619389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121683, 34.712208, 41.028198>,  <29.834627, 34.061192, 41.146057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.121683, 34.712208, 41.028198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.018766, 34.662949, 41.411579>,  <29.957016, 34.633392, 41.641609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.018766, 34.662949, 41.411579>,  <30.121683, 34.712208, 41.028198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.018766, 34.662949, 41.411579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923859, 0.259484, 0.281342,
		-0.283350, 0.957864, 0.047006,
		-0.257290, -0.123145, 0.958456,
		29.941580, 34.626003, 41.699116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180950, 35.288696, 41.504574>,  <30.121683, 34.712208, 41.028198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180950, 35.288696, 41.504574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.229010, 34.975269, 41.748405>,  <30.257845, 34.787212, 41.894707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.229010, 34.975269, 41.748405>,  <30.180950, 35.288696, 41.504574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.229010, 34.975269, 41.748405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688127, 0.508320, 0.517776,
		-0.715574, 0.357260, 0.600266,
		0.120147, -0.783566, 0.609581,
		30.265055, 34.740200, 41.931278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153223, 35.847301, 42.010311>,  <30.180950, 35.288696, 41.504574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153223, 35.847301, 42.010311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.390739, 35.538521, 42.101089>,  <30.533249, 35.353252, 42.155556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.390739, 35.538521, 42.101089>,  <30.153223, 35.847301, 42.010311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.390739, 35.538521, 42.101089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778270, 0.622617, 0.081516,
		-0.204228, 0.128224, 0.970489,
		0.593791, -0.771950, 0.226949,
		30.568876, 35.306934, 42.169174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475397, 35.916016, 42.751297>,  <30.153223, 35.847301, 42.010311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475397, 35.916016, 42.751297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.693415, 35.704048, 42.491417>,  <30.824224, 35.576866, 42.335487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.693415, 35.704048, 42.491417>,  <30.475397, 35.916016, 42.751297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693415, 35.704048, 42.491417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778387, 0.607762, 0.157288,
		0.311514, -0.591449, 0.743739,
		0.545043, -0.529919, -0.649702,
		30.856928, 35.545071, 42.296505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155474, 35.853813, 42.902271>,  <30.475397, 35.916016, 42.751297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155474, 35.853813, 42.902271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.162374, 35.807819, 42.504986>,  <31.166515, 35.780224, 42.266613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.162374, 35.807819, 42.504986>,  <31.155474, 35.853813, 42.902271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162374, 35.807819, 42.504986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758406, 0.648833, -0.061940,
		0.651554, -0.752194, 0.098396,
		0.017252, -0.114981, -0.993218,
		31.167549, 35.773327, 42.207020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211672, 35.306065, 43.479401>,  <31.155474, 35.853813, 42.902271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211672, 35.306065, 43.479401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.075760, 35.024731, 43.729160>,  <30.994213, 34.855930, 43.879017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.075760, 35.024731, 43.729160>,  <31.211672, 35.306065, 43.479401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075760, 35.024731, 43.729160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870294, 0.016570, 0.492254,
		-0.356564, 0.710668, 0.606475,
		-0.339781, -0.703332, 0.624398,
		30.973825, 34.813732, 43.916481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182632, 35.511803, 44.228619>,  <31.211672, 35.306065, 43.479401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182632, 35.511803, 44.228619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.244865, 35.120983, 44.170422>,  <31.282206, 34.886490, 44.135506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.244865, 35.120983, 44.170422>,  <31.182632, 35.511803, 44.228619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244865, 35.120983, 44.170422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911898, 0.085432, 0.401427,
		-0.379785, -0.195126, 0.904262,
		0.155582, -0.977050, -0.145489,
		31.291540, 34.827869, 44.126774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.321001, 35.157810, 44.888149>,  <31.182632, 35.511803, 44.228619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.321001, 35.157810, 44.888149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.511751, 34.954449, 44.601341>,  <31.626202, 34.832432, 44.429256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.511751, 34.954449, 44.601341>,  <31.321001, 35.157810, 44.888149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511751, 34.954449, 44.601341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840032, 0.023499, 0.542028,
		-0.258721, -0.860797, 0.438283,
		0.476876, -0.508405, -0.717017,
		31.654814, 34.801926, 44.386234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464560, 34.433372, 45.007198>,  <31.321001, 35.157810, 44.888149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464560, 34.433372, 45.007198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.712740, 34.669189, 44.800323>,  <31.861649, 34.810680, 44.676201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.712740, 34.669189, 44.800323>,  <31.464560, 34.433372, 45.007198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712740, 34.669189, 44.800323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605606, 0.058827, 0.793587,
		0.498278, -0.805592, -0.320531,
		0.620452, 0.589543, -0.517184,
		31.898876, 34.846054, 44.645168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078133, 34.342110, 45.121136>,  <31.464560, 34.433372, 45.007198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078133, 34.342110, 45.121136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.145985, 34.719978, 45.008839>,  <32.186695, 34.946701, 44.941460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.145985, 34.719978, 45.008839>,  <32.078133, 34.342110, 45.121136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145985, 34.719978, 45.008839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470394, 0.172717, 0.865389,
		0.866000, -0.278854, -0.415071,
		0.169627, 0.944674, -0.280744,
		32.196873, 35.003380, 44.924614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763102, 33.847027, 45.701477>,  <32.078133, 34.342110, 45.121136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763102, 33.847027, 45.701477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.145668, 33.963791, 45.704411>,  <32.375210, 34.033848, 45.706173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.145668, 33.963791, 45.704411>,  <31.763102, 33.847027, 45.701477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145668, 33.963791, 45.704411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048974, 0.135592, 0.989554,
		0.287867, -0.946785, 0.143978,
		0.956417, 0.291911, 0.007335,
		32.432594, 34.051365, 45.706612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194508, 33.579121, 46.284748>,  <31.763102, 33.847027, 45.701477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194508, 33.579121, 46.284748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.327782, 33.939392, 46.173203>,  <32.407745, 34.155556, 46.106277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.327782, 33.939392, 46.173203>,  <32.194508, 33.579121, 46.284748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327782, 33.939392, 46.173203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165224, 0.346959, 0.923212,
		0.928272, -0.261525, 0.264415,
		0.333185, 0.900680, -0.278862,
		32.427738, 34.209595, 46.089542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725285, 33.816261, 46.692162>,  <32.194508, 33.579121, 46.284748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725285, 33.816261, 46.692162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.569305, 34.156445, 46.550934>,  <32.475719, 34.360554, 46.466198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.569305, 34.156445, 46.550934>,  <32.725285, 33.816261, 46.692162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569305, 34.156445, 46.550934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027083, 0.372664, 0.927571,
		0.920439, 0.371264, -0.122286,
		-0.389946, 0.850461, -0.353069,
		32.452320, 34.411583, 46.445015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340427, 34.418789, 46.613224>,  <32.725285, 33.816261, 46.692162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340427, 34.418789, 46.613224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.959942, 34.520256, 46.683483>,  <32.731651, 34.581135, 46.725639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.959942, 34.520256, 46.683483>,  <33.340427, 34.418789, 46.613224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959942, 34.520256, 46.683483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275075, 0.439321, 0.855179,
		0.139763, 0.861772, -0.487664,
		-0.951210, 0.253666, 0.175651,
		32.674580, 34.596355, 46.736179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331673, 35.034962, 46.885204>,  <33.340427, 34.418789, 46.613224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331673, 35.034962, 46.885204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.004490, 34.844086, 47.013729>,  <32.808182, 34.729561, 47.090843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.004490, 34.844086, 47.013729>,  <33.331673, 35.034962, 46.885204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004490, 34.844086, 47.013729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262817, 0.186868, 0.946577,
		-0.511742, 0.858701, -0.027435,
		-0.817953, -0.477193, 0.321310,
		32.759106, 34.700928, 47.110123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898716, 35.362808, 47.438072>,  <33.331673, 35.034962, 46.885204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898716, 35.362808, 47.438072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.802647, 35.014194, 47.609070>,  <32.745007, 34.805027, 47.711666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.802647, 35.014194, 47.609070>,  <32.898716, 35.362808, 47.438072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802647, 35.014194, 47.609070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216736, 0.381120, 0.898762,
		-0.946226, 0.308508, 0.097360,
		-0.240170, -0.871533, 0.427490,
		32.730595, 34.752735, 47.737316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328308, 35.408810, 47.898006>,  <32.898716, 35.362808, 47.438072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328308, 35.408810, 47.898006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.595459, 35.137878, 48.021400>,  <32.755749, 34.975319, 48.095436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.595459, 35.137878, 48.021400>,  <32.328308, 35.408810, 47.898006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595459, 35.137878, 48.021400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099149, 0.491751, 0.865072,
		-0.737639, -0.547176, 0.395585,
		0.667876, -0.677332, 0.308483,
		32.795822, 34.934677, 48.113945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360195, 35.352661, 48.700653>,  <32.328308, 35.408810, 47.898006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360195, 35.352661, 48.700653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.709518, 35.215950, 48.561787>,  <32.919113, 35.133923, 48.478466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.709518, 35.215950, 48.561787>,  <32.360195, 35.352661, 48.700653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709518, 35.215950, 48.561787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441851, 0.255514, 0.859931,
		-0.205197, -0.904379, 0.374156,
		0.873305, -0.341776, -0.347170,
		32.971512, 35.113419, 48.457634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361755, 36.052624, 49.044437>,  <32.360195, 35.352661, 48.700653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361755, 36.052624, 49.044437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.677704, 35.962315, 48.816360>,  <32.867275, 35.908131, 48.679512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.677704, 35.962315, 48.816360>,  <32.361755, 36.052624, 49.044437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677704, 35.962315, 48.816360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488635, -0.793533, -0.362685,
		-0.370585, 0.565094, -0.737113,
		0.789875, -0.225774, -0.570196,
		32.914665, 35.894581, 48.645302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523884, 36.355259, 49.756798>,  <32.361755, 36.052624, 49.044437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523884, 36.355259, 49.756798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.544167, 36.094288, 50.059261>,  <32.556335, 35.937706, 50.240738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.544167, 36.094288, 50.059261>,  <32.523884, 36.355259, 49.756798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544167, 36.094288, 50.059261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998340, 0.012404, -0.056249,
		0.027318, 0.757751, 0.651971,
		0.050710, -0.652426, 0.756154,
		32.559380, 35.898560, 50.286106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086857, 36.459217, 50.025597>,  <32.523884, 36.355259, 49.756798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086857, 36.459217, 50.025597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.036224, 36.097107, 50.187813>,  <33.005844, 35.879841, 50.285141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.036224, 36.097107, 50.187813>,  <33.086857, 36.459217, 50.025597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036224, 36.097107, 50.187813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965619, -0.206032, -0.158528,
		0.227065, 0.371529, 0.900227,
		-0.126578, -0.905272, 0.405538,
		32.998253, 35.825527, 50.309475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615345, 36.282627, 50.510952>,  <33.086857, 36.459217, 50.025597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615345, 36.282627, 50.510952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.471455, 35.917057, 50.435760>,  <33.385120, 35.697716, 50.390644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.471455, 35.917057, 50.435760>,  <33.615345, 36.282627, 50.510952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471455, 35.917057, 50.435760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931987, -0.361595, -0.025477,
		-0.044689, -0.184361, 0.981842,
		-0.359726, -0.913926, -0.187981,
		33.363537, 35.642879, 50.379368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036858, 35.836475, 51.029057>,  <33.615345, 36.282627, 50.510952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036858, 35.836475, 51.029057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.888290, 35.621819, 50.725990>,  <33.799149, 35.493023, 50.544151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.888290, 35.621819, 50.725990>,  <34.036858, 35.836475, 51.029057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888290, 35.621819, 50.725990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904728, -0.392534, -0.165482,
		-0.208605, -0.746946, 0.631312,
		-0.371418, -0.536646, -0.757668,
		33.776867, 35.460823, 50.498692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434029, 35.238277, 51.013458>,  <34.036858, 35.836475, 51.029057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434029, 35.238277, 51.013458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.256031, 35.251099, 50.655476>,  <34.149231, 35.258793, 50.440685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.256031, 35.251099, 50.655476>,  <34.434029, 35.238277, 51.013458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256031, 35.251099, 50.655476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805140, -0.423216, -0.415498,
		-0.392079, -0.905461, 0.162522,
		-0.444999, 0.032055, -0.894957,
		34.122532, 35.260715, 50.386990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725655, 34.564266, 50.623753>,  <34.434029, 35.238277, 51.013458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725655, 34.564266, 50.623753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.598454, 34.812004, 50.336620>,  <34.522133, 34.960648, 50.164341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.598454, 34.812004, 50.336620>,  <34.725655, 34.564266, 50.623753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598454, 34.812004, 50.336620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739202, -0.312143, -0.596781,
		-0.593681, -0.720401, -0.358561,
		-0.317999, 0.619346, -0.717835,
		34.503056, 34.997807, 50.121269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730839, 34.096134, 49.962845>,  <34.725655, 34.564266, 50.623753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730839, 34.096134, 49.962845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.767063, 34.473907, 49.836449>,  <34.788799, 34.700569, 49.760612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.767063, 34.473907, 49.836449>,  <34.730839, 34.096134, 49.962845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767063, 34.473907, 49.836449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767923, -0.268252, -0.581666,
		-0.634108, -0.189977, -0.749544,
		0.090563, 0.944431, -0.315989,
		34.794231, 34.757236, 49.741653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121166, 33.944111, 49.402988>,  <34.730839, 34.096134, 49.962845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121166, 33.944111, 49.402988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.127159, 34.338856, 49.467335>,  <35.130753, 34.575703, 49.505943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.127159, 34.338856, 49.467335>,  <35.121166, 33.944111, 49.402988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127159, 34.338856, 49.467335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742173, 0.096839, -0.663175,
		-0.670040, 0.129326, -0.730972,
		0.014979, 0.986862, 0.160868,
		35.131653, 34.634914, 49.515594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121796, 34.301788, 48.764896>,  <35.121166, 33.944111, 49.402988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121796, 34.301788, 48.764896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.265514, 34.563278, 49.031292>,  <35.351746, 34.720173, 49.191132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.265514, 34.563278, 49.031292>,  <35.121796, 34.301788, 48.764896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265514, 34.563278, 49.031292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802396, 0.147994, -0.578151,
		-0.476516, 0.742117, -0.471374,
		0.359296, 0.653727, 0.665993,
		35.373302, 34.759396, 49.231091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449684, 34.753887, 48.371193>,  <35.121796, 34.301788, 48.764896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449684, 34.753887, 48.371193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.606800, 34.824570, 48.732189>,  <35.701069, 34.866982, 48.948788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.606800, 34.824570, 48.732189>,  <35.449684, 34.753887, 48.371193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606800, 34.824570, 48.732189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912018, 0.051142, -0.406949,
		-0.118067, 0.982933, -0.141075,
		0.392789, 0.176710, 0.902491,
		35.724636, 34.877583, 49.002937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976967, 35.242714, 48.254478>,  <35.449684, 34.753887, 48.371193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976967, 35.242714, 48.254478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.092716, 35.115105, 48.615475>,  <36.162167, 35.038540, 48.832073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.092716, 35.115105, 48.615475>,  <35.976967, 35.242714, 48.254478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092716, 35.115105, 48.615475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955690, 0.149522, -0.253574,
		-0.054045, 0.935877, 0.348158,
		0.289371, -0.319027, 0.902489,
		36.179527, 35.019398, 48.886223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591228, 35.694817, 48.412769>,  <35.976967, 35.242714, 48.254478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591228, 35.694817, 48.412769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.618431, 35.383556, 48.662521>,  <36.634754, 35.196800, 48.812374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.618431, 35.383556, 48.662521>,  <36.591228, 35.694817, 48.412769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618431, 35.383556, 48.662521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990999, -0.019639, -0.132421,
		0.115306, 0.627767, 0.769814,
		0.068011, -0.778154, 0.624381,
		36.638836, 35.150108, 48.849834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161098, 35.901192, 48.783485>,  <36.591228, 35.694817, 48.412769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161098, 35.901192, 48.783485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.092110, 35.507225, 48.789055>,  <37.050716, 35.270844, 48.792397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.092110, 35.507225, 48.789055>,  <37.161098, 35.901192, 48.783485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092110, 35.507225, 48.789055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920500, -0.166188, -0.353641,
		0.350620, -0.048177, 0.935278,
		-0.172469, -0.984917, 0.013921,
		37.040367, 35.211750, 48.793232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690098, 35.559235, 49.208778>,  <37.161098, 35.901192, 48.783485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690098, 35.559235, 49.208778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.563351, 35.253681, 48.983894>,  <37.487305, 35.070351, 48.848965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.563351, 35.253681, 48.983894>,  <37.690098, 35.559235, 49.208778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563351, 35.253681, 48.983894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929470, -0.132032, -0.344460,
		0.188897, -0.631707, 0.751841,
		-0.316865, -0.763881, -0.562212,
		37.468292, 35.024517, 48.815231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077435, 34.976845, 48.876797>,  <37.690098, 35.559235, 49.208778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077435, 34.976845, 48.876797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.299644, 35.012024, 49.207531>,  <38.432972, 35.033131, 49.405972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.299644, 35.012024, 49.207531>,  <38.077435, 34.976845, 48.876797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299644, 35.012024, 49.207531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641886, -0.586742, 0.493676,
		0.528554, -0.804984, -0.269501,
		0.555529, 0.087946, 0.826833,
		38.466305, 35.038406, 49.455582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399506, 34.911625, 48.154598>,  <38.077435, 34.976845, 48.876797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399506, 34.911625, 48.154598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.751411, 35.081810, 48.069748>,  <38.962555, 35.183922, 48.018837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.751411, 35.081810, 48.069748>,  <38.399506, 34.911625, 48.154598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751411, 35.081810, 48.069748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460437, -0.873635, 0.157351,
		-0.118371, -0.236101, -0.964492,
		0.879765, 0.425462, -0.212123,
		39.015343, 35.209450, 48.006111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048344, 34.419880, 47.913540>,  <38.399506, 34.911625, 48.154598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048344, 34.419880, 47.913540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.016518, 34.101646, 47.673302>,  <38.997421, 33.910706, 47.529160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.016518, 34.101646, 47.673302>,  <39.048344, 34.419880, 47.913540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016518, 34.101646, 47.673302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996811, -0.059847, -0.052783,
		0.006049, -0.602880, 0.797809,
		-0.079568, -0.795584, -0.600595,
		38.992649, 33.862972, 47.493122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445278, 33.775658, 48.215622>,  <39.048344, 34.419880, 47.913540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445278, 33.775658, 48.215622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.439713, 33.848167, 47.822289>,  <39.436371, 33.891674, 47.586288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.439713, 33.848167, 47.822289>,  <39.445278, 33.775658, 48.215622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439713, 33.848167, 47.822289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991100, 0.132710, 0.010437,
		0.132390, -0.974437, -0.181508,
		-0.013918, 0.181275, -0.983334,
		39.435535, 33.902550, 47.527287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180313, 33.603561, 48.906654>,  <39.445278, 33.775658, 48.215622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180313, 33.603561, 48.906654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.968933, 33.297810, 49.054420>,  <38.842106, 33.114357, 49.143078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.968933, 33.297810, 49.054420>,  <39.180313, 33.603561, 48.906654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968933, 33.297810, 49.054420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287994, 0.570735, 0.768974,
		-0.798626, 0.299974, -0.521740,
		-0.528447, -0.764381, 0.369413,
		38.810398, 33.068497, 49.165245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799717, 33.929413, 49.482830>,  <39.180313, 33.603561, 48.906654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799717, 33.929413, 49.482830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.032993, 34.207836, 49.650349>,  <39.172958, 34.374889, 49.750858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.032993, 34.207836, 49.650349>,  <38.799717, 33.929413, 49.482830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032993, 34.207836, 49.650349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270223, -0.319952, 0.908081,
		0.766075, -0.642750, 0.001500,
		0.583189, 0.696063, 0.418792,
		39.207951, 34.416656, 49.775986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108223, 33.672649, 50.115513>,  <38.799717, 33.929413, 49.482830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108223, 33.672649, 50.115513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.083435, 34.066582, 50.180347>,  <39.068562, 34.302940, 50.219250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.083435, 34.066582, 50.180347>,  <39.108223, 33.672649, 50.115513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083435, 34.066582, 50.180347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403304, -0.173257, 0.898514,
		0.912965, -0.009690, 0.407921,
		-0.061969, 0.984829, 0.162086,
		39.064846, 34.362030, 50.228973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144718, 33.798702, 50.963474>,  <39.108223, 33.672649, 50.115513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144718, 33.798702, 50.963474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.991806, 34.124714, 50.789303>,  <38.900059, 34.320320, 50.684799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.991806, 34.124714, 50.789303>,  <39.144718, 33.798702, 50.963474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991806, 34.124714, 50.789303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482029, 0.226137, 0.846470,
		0.788360, 0.533476, 0.306418,
		-0.382278, 0.815025, -0.435428,
		38.877121, 34.369221, 50.658676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279137, 34.384056, 51.435135>,  <39.144718, 33.798702, 50.963474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279137, 34.384056, 51.435135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.938293, 34.394493, 51.226048>,  <38.733788, 34.400753, 51.100594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.938293, 34.394493, 51.226048>,  <39.279137, 34.384056, 51.435135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938293, 34.394493, 51.226048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521293, 0.046579, 0.852105,
		0.046579, 0.998574, -0.026090,
		-0.852105, 0.026090, -0.522720,
		38.682663, 34.402321, 51.069233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700443, 34.638409, 51.852882>,  <39.279137, 34.384056, 51.435135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700443, 34.638409, 51.852882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.513767, 34.442768, 51.558136>,  <38.401760, 34.325382, 51.381287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.513767, 34.442768, 51.558136>,  <38.700443, 34.638409, 51.852882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513767, 34.442768, 51.558136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818757, -0.076112, 0.569073,
		-0.334420, 0.868899, -0.364935,
		-0.466691, -0.489102, -0.736871,
		38.373760, 34.296036, 51.337074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061008, 34.916763, 51.834827>,  <38.700443, 34.638409, 51.852882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061008, 34.916763, 51.834827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.018105, 34.562481, 51.654152>,  <37.992363, 34.349911, 51.545746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.018105, 34.562481, 51.654152>,  <38.061008, 34.916763, 51.834827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018105, 34.562481, 51.654152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785565, -0.202968, 0.584544,
		-0.609412, 0.417529, -0.674008,
		-0.107262, -0.885705, -0.451687,
		37.985928, 34.296768, 51.518646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407867, 34.852886, 51.608387>,  <38.061008, 34.916763, 51.834827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407867, 34.852886, 51.608387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.513454, 34.470016, 51.655945>,  <37.576805, 34.240295, 51.684479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.513454, 34.470016, 51.655945>,  <37.407867, 34.852886, 51.608387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513454, 34.470016, 51.655945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858286, -0.176856, 0.481733,
		-0.440076, -0.229208, -0.868215,
		0.263966, -0.957176, 0.118896,
		37.592644, 34.182865, 51.691612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832764, 34.519882, 51.539593>,  <37.407867, 34.852886, 51.608387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832764, 34.519882, 51.539593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.064075, 34.228344, 51.686226>,  <37.202862, 34.053421, 51.774204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.064075, 34.228344, 51.686226>,  <36.832764, 34.519882, 51.539593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064075, 34.228344, 51.686226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664813, -0.160533, 0.729556,
		-0.472887, -0.665591, -0.577379,
		0.578274, -0.728847, 0.366579,
		37.237556, 34.009689, 51.796200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391041, 34.044682, 51.627155>,  <36.832764, 34.519882, 51.539593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391041, 34.044682, 51.627155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.703468, 33.960911, 51.862469>,  <36.890926, 33.910648, 52.003654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.703468, 33.960911, 51.862469>,  <36.391041, 34.044682, 51.627155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703468, 33.960911, 51.862469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590239, 0.059919, 0.805001,
		-0.203838, -0.975987, -0.076812,
		0.781068, -0.209427, 0.588279,
		36.937790, 33.898083, 52.038952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168438, 33.529507, 52.057636>,  <36.391041, 34.044682, 51.627155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168438, 33.529507, 52.057636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.478985, 33.697845, 52.245316>,  <36.665314, 33.798847, 52.357922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.478985, 33.697845, 52.245316>,  <36.168438, 33.529507, 52.057636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478985, 33.697845, 52.245316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538984, 0.057406, 0.840357,
		0.326726, -0.905314, 0.271397,
		0.776367, 0.420846, 0.469194,
		36.711895, 33.824100, 52.386074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114368, 33.222790, 52.695717>,  <36.168438, 33.529507, 52.057636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114368, 33.222790, 52.695717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.319836, 33.563904, 52.733444>,  <36.443115, 33.768574, 52.756081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.319836, 33.563904, 52.733444>,  <36.114368, 33.222790, 52.695717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319836, 33.563904, 52.733444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549090, 0.242274, 0.799877,
		0.659277, -0.462659, 0.592707,
		0.513668, 0.852789, 0.094315,
		36.473938, 33.819740, 52.761738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153378, 33.348106, 53.399109>,  <36.114368, 33.222790, 52.695717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153378, 33.348106, 53.399109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.198742, 33.712143, 53.239674>,  <36.225960, 33.930565, 53.144012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.198742, 33.712143, 53.239674>,  <36.153378, 33.348106, 53.399109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198742, 33.712143, 53.239674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517783, 0.396535, 0.758064,
		0.847961, 0.120410, 0.516201,
		0.113413, 0.910089, -0.398593,
		36.232765, 33.985168, 53.120094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147831, 33.866852, 54.009628>,  <36.153378, 33.348106, 53.399109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147831, 33.866852, 54.009628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.081142, 34.086071, 53.681763>,  <36.041130, 34.217602, 53.485043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.081142, 34.086071, 53.681763>,  <36.147831, 33.866852, 54.009628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081142, 34.086071, 53.681763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729321, 0.490892, 0.476568,
		0.663547, 0.677255, 0.317856,
		-0.166725, 0.548044, -0.819665,
		36.031124, 34.250484, 53.435863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120567, 34.593468, 54.199032>,  <36.147831, 33.866852, 54.009628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120567, 34.593468, 54.199032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.918003, 34.586170, 53.854195>,  <35.796463, 34.581791, 53.647293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.918003, 34.586170, 53.854195>,  <36.120567, 34.593468, 54.199032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918003, 34.586170, 53.854195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659340, 0.652506, 0.373505,
		0.555711, 0.757564, -0.342465,
		-0.506414, -0.018240, -0.862097,
		35.766079, 34.580700, 53.595566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978455, 35.284000, 54.165985>,  <36.120567, 34.593468, 54.199032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978455, 35.284000, 54.165985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.722752, 35.128624, 53.900517>,  <35.569328, 35.035400, 53.741234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.722752, 35.128624, 53.900517>,  <35.978455, 35.284000, 54.165985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722752, 35.128624, 53.900517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672996, 0.700157, 0.238446,
		0.372054, 0.599079, -0.709000,
		-0.639259, -0.388439, -0.663673,
		35.530975, 35.012093, 53.701416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657791, 35.809555, 53.794170>,  <35.978455, 35.284000, 54.165985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657791, 35.809555, 53.794170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.395939, 35.512482, 53.737774>,  <35.238827, 35.334236, 53.703938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.395939, 35.512482, 53.737774>,  <35.657791, 35.809555, 53.794170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395939, 35.512482, 53.737774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746858, 0.606578, 0.272517,
		-0.116871, 0.283700, -0.951765,
		-0.654633, -0.742682, -0.140992,
		35.199551, 35.289677, 53.695477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192001, 36.110912, 53.329636>,  <35.657791, 35.809555, 53.794170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192001, 36.110912, 53.329636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.027363, 35.783367, 53.489662>,  <34.928577, 35.586842, 53.585678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.027363, 35.783367, 53.489662>,  <35.192001, 36.110912, 53.329636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027363, 35.783367, 53.489662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749555, 0.553864, 0.362494,
		-0.518414, -0.150668, -0.841752,
		-0.411600, -0.818861, 0.400065,
		34.903881, 35.537708, 53.609680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566708, 36.021301, 52.959423>,  <35.192001, 36.110912, 53.329636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566708, 36.021301, 52.959423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.534660, 35.865803, 53.326565>,  <34.515430, 35.772503, 53.546848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.534660, 35.865803, 53.326565>,  <34.566708, 36.021301, 52.959423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534660, 35.865803, 53.326565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762919, 0.616532, 0.194531,
		-0.641510, -0.684664, -0.345976,
		-0.080117, -0.388746, 0.917855,
		34.510624, 35.749180, 53.601921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918758, 36.038204, 53.041283>,  <34.566708, 36.021301, 52.959423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918758, 36.038204, 53.041283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.052731, 35.982697, 53.414070>,  <34.133114, 35.949390, 53.637741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.052731, 35.982697, 53.414070>,  <33.918758, 36.038204, 53.041283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052731, 35.982697, 53.414070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499702, 0.812386, 0.300543,
		-0.798825, -0.566367, 0.202747,
		0.334927, -0.138768, 0.931970,
		34.153210, 35.941067, 53.693661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293289, 36.043758, 53.358646>,  <33.918758, 36.038204, 53.041283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293289, 36.043758, 53.358646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.601540, 36.105648, 53.605934>,  <33.786491, 36.142780, 53.754307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.601540, 36.105648, 53.605934>,  <33.293289, 36.043758, 53.358646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601540, 36.105648, 53.605934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475274, 0.785794, 0.395780,
		-0.424555, -0.598822, 0.679091,
		0.770628, 0.154724, 0.618218,
		33.832729, 36.152065, 53.791401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030037, 36.183350, 54.096630>,  <33.293289, 36.043758, 53.358646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030037, 36.183350, 54.096630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.402248, 36.329712, 54.102753>,  <33.625576, 36.417530, 54.106426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.402248, 36.329712, 54.102753>,  <33.030037, 36.183350, 54.096630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402248, 36.329712, 54.102753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320039, 0.792147, 0.519690,
		0.178034, -0.488483, 0.854218,
		0.930526, 0.365906, 0.015305,
		33.681408, 36.439484, 54.107346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146255, 36.453201, 54.756607>,  <33.030037, 36.183350, 54.096630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146255, 36.453201, 54.756607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.444946, 36.626366, 54.554623>,  <33.624161, 36.730263, 54.433434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.444946, 36.626366, 54.554623>,  <33.146255, 36.453201, 54.756607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444946, 36.626366, 54.554623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215603, 0.875746, 0.431954,
		0.629215, -0.213681, 0.747281,
		0.746729, 0.432908, -0.504962,
		33.668964, 36.756237, 54.403133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578762, 36.802074, 55.213192>,  <33.146255, 36.453201, 54.756607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578762, 36.802074, 55.213192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.631397, 37.020542, 54.882282>,  <33.662979, 37.151623, 54.683735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.631397, 37.020542, 54.882282>,  <33.578762, 36.802074, 55.213192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631397, 37.020542, 54.882282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287670, 0.819657, 0.495386,
		0.948647, 0.172797, 0.264971,
		0.131584, 0.546171, -0.827274,
		33.670872, 37.184395, 54.634102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703903, 37.413559, 55.521999>,  <33.578762, 36.802074, 55.213192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703903, 37.413559, 55.521999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.653164, 37.489716, 55.132607>,  <33.622723, 37.535408, 54.898972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.653164, 37.489716, 55.132607>,  <33.703903, 37.413559, 55.521999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653164, 37.489716, 55.132607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342967, 0.912457, 0.223148,
		0.930743, 0.362177, -0.050443,
		-0.126846, 0.190393, -0.973479,
		33.615108, 37.546833, 54.840565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004539, 38.055672, 55.468559>,  <33.703903, 37.413559, 55.521999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004539, 38.055672, 55.468559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.756050, 37.995140, 55.161007>,  <33.606956, 37.958820, 54.976475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.756050, 37.995140, 55.161007>,  <34.004539, 38.055672, 55.468559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756050, 37.995140, 55.161007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488679, 0.841833, 0.229150,
		0.612593, 0.518090, -0.596920,
		-0.621227, -0.151326, -0.768881,
		33.569683, 37.949741, 54.930344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023998, 38.633873, 55.199352>,  <34.004539, 38.055672, 55.468559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023998, 38.633873, 55.199352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.687805, 38.476971, 55.049839>,  <33.486088, 38.382828, 54.960133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.687805, 38.476971, 55.049839>,  <34.023998, 38.633873, 55.199352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687805, 38.476971, 55.049839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509340, 0.807279, 0.298118,
		0.184808, 0.440947, -0.878300,
		-0.840487, -0.392258, -0.373784,
		33.435658, 38.359295, 54.937702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698006, 39.216816, 54.666569>,  <34.023998, 38.633873, 55.199352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698006, 39.216816, 54.666569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.392174, 38.986641, 54.782703>,  <33.208675, 38.848537, 54.852383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.392174, 38.986641, 54.782703>,  <33.698006, 39.216816, 54.666569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392174, 38.986641, 54.782703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519464, 0.816817, 0.250933,
		-0.381545, 0.041040, -0.923439,
		-0.764579, -0.575436, 0.290333,
		33.162800, 38.814011, 54.869804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168732, 39.569065, 54.480919>,  <33.698006, 39.216816, 54.666569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168732, 39.569065, 54.480919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.014832, 39.304832, 54.738785>,  <32.922493, 39.146294, 54.893505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.014832, 39.304832, 54.738785>,  <33.168732, 39.569065, 54.480919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014832, 39.304832, 54.738785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567628, 0.720085, 0.399095,
		-0.727851, -0.212380, -0.652018,
		-0.384748, -0.660585, 0.644668,
		32.899406, 39.106655, 54.932186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479679, 39.694813, 54.518112>,  <33.168732, 39.569065, 54.480919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479679, 39.694813, 54.518112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.522842, 39.515656, 54.873135>,  <32.548740, 39.408161, 55.086147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.522842, 39.515656, 54.873135>,  <32.479679, 39.694813, 54.518112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522842, 39.515656, 54.873135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493822, 0.750692, 0.438864,
		-0.862842, -0.485651, -0.140171,
		0.107909, -0.447890, 0.887553,
		32.555214, 39.381290, 55.139400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826366, 39.735443, 54.838436>,  <32.479679, 39.694813, 54.518112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826366, 39.735443, 54.838436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.078217, 39.663666, 55.140793>,  <32.229328, 39.620602, 55.322208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.078217, 39.663666, 55.140793>,  <31.826366, 39.735443, 54.838436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078217, 39.663666, 55.140793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574841, 0.546905, 0.608648,
		-0.522617, -0.817738, 0.241197,
		0.629626, -0.179440, 0.755892,
		32.267105, 39.609833, 55.367561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375793, 39.630432, 55.373699>,  <31.826366, 39.735443, 54.838436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375793, 39.630432, 55.373699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.727726, 39.738586, 55.530056>,  <31.938885, 39.803478, 55.623871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.727726, 39.738586, 55.530056>,  <31.375793, 39.630432, 55.373699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727726, 39.738586, 55.530056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474856, 0.535190, 0.698630,
		-0.020304, -0.800291, 0.599268,
		0.879829, 0.270381, 0.390889,
		31.991674, 39.819702, 55.647324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361198, 39.453365, 56.147808>,  <31.375793, 39.630432, 55.373699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361198, 39.453365, 56.147808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.655455, 39.723629, 56.128574>,  <31.832008, 39.885788, 56.117035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.655455, 39.723629, 56.128574>,  <31.361198, 39.453365, 56.147808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655455, 39.723629, 56.128574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473928, 0.564119, 0.676138,
		0.483965, -0.474607, 0.735205,
		0.735643, 0.675661, -0.048084,
		31.876146, 39.926327, 56.114147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555229, 39.642929, 56.879623>,  <31.361198, 39.453365, 56.147808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555229, 39.642929, 56.879623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.683357, 39.940117, 56.644543>,  <31.760235, 40.118427, 56.503494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.683357, 39.940117, 56.644543>,  <31.555229, 39.642929, 56.879623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683357, 39.940117, 56.644543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401504, 0.668392, 0.626136,
		0.858015, 0.035401, 0.512404,
		0.320321, 0.742966, -0.587704,
		31.779453, 40.163006, 56.468231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010746, 40.025280, 57.300884>,  <31.555229, 39.642929, 56.879623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010746, 40.025280, 57.300884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.860989, 40.233440, 56.993896>,  <31.771133, 40.358337, 56.809704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.860989, 40.233440, 56.993896>,  <32.010746, 40.025280, 57.300884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860989, 40.233440, 56.993896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439360, 0.629305, 0.641045,
		0.816573, 0.577201, -0.006966,
		-0.374395, 0.520399, -0.767472,
		31.748671, 40.389561, 56.763657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049026, 40.790852, 57.482929>,  <32.010746, 40.025280, 57.300884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049026, 40.790852, 57.482929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.793165, 40.791847, 57.175465>,  <31.639648, 40.792442, 56.990986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.793165, 40.791847, 57.175465>,  <32.049026, 40.790852, 57.482929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793165, 40.791847, 57.175465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581922, 0.651783, 0.486360,
		0.502209, 0.758402, -0.415468,
		-0.639651, 0.002484, -0.768661,
		31.601271, 40.792591, 56.944866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854481, 41.519112, 57.382713>,  <32.049026, 40.790852, 57.482929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854481, 41.519112, 57.382713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.574995, 41.312576, 57.184647>,  <31.407303, 41.188656, 57.065807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.574995, 41.312576, 57.184647>,  <31.854481, 41.519112, 57.382713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574995, 41.312576, 57.184647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669924, 0.715078, 0.199661,
		0.250994, 0.471234, -0.845542,
		-0.698716, -0.516335, -0.495171,
		31.365381, 41.157677, 57.036095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420952, 42.155678, 57.043777>,  <31.854481, 41.519112, 57.382713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420952, 42.155678, 57.043777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.197693, 41.833866, 56.962585>,  <31.063738, 41.640778, 56.913872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.197693, 41.833866, 56.962585>,  <31.420952, 42.155678, 57.043777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197693, 41.833866, 56.962585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820322, 0.571802, -0.010701,
		0.124672, 0.160533, -0.979125,
		-0.558147, -0.804532, -0.202977,
		31.030249, 41.592506, 56.901691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126272, 42.270996, 56.378620>,  <31.420952, 42.155678, 57.043777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126272, 42.270996, 56.378620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.896614, 42.035305, 56.606010>,  <30.758820, 41.893890, 56.742447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.896614, 42.035305, 56.606010>,  <31.126272, 42.270996, 56.378620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896614, 42.035305, 56.606010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700082, 0.713332, 0.032307,
		-0.424549, -0.379432, -0.822064,
		-0.574146, -0.589228, 0.568477,
		30.724371, 41.858536, 56.776554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524321, 42.385990, 56.144424>,  <31.126272, 42.270996, 56.378620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.524321, 42.385990, 56.144424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.446531, 42.240074, 56.508644>,  <30.399858, 42.152523, 56.727177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.446531, 42.240074, 56.508644>,  <30.524321, 42.385990, 56.144424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.446531, 42.240074, 56.508644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739084, 0.664818, 0.108494,
		-0.644930, -0.651876, -0.398902,
		-0.194473, -0.364794, 0.910553,
		30.388189, 42.130634, 56.781811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877258, 42.594894, 56.295231>,  <30.524321, 42.385990, 56.144424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877258, 42.594894, 56.295231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.958626, 42.465431, 56.664848>,  <30.007446, 42.387753, 56.886620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.958626, 42.465431, 56.664848>,  <29.877258, 42.594894, 56.295231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.958626, 42.465431, 56.664848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628243, 0.680722, 0.376734,
		-0.750954, -0.657161, -0.064868,
		0.203418, -0.323662, 0.924047,
		30.019651, 42.368332, 56.942062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191683, 42.582211, 56.619713>,  <29.877258, 42.594894, 56.295231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191683, 42.582211, 56.619713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.489695, 42.621769, 56.883575>,  <29.668501, 42.645504, 57.041893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.489695, 42.621769, 56.883575>,  <29.191683, 42.582211, 56.619713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.489695, 42.621769, 56.883575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464577, 0.786578, 0.406772,
		-0.478645, -0.609520, 0.631969,
		0.745028, 0.098899, 0.659660,
		29.713203, 42.651440, 57.081474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.830036, 42.775402, 57.234509>,  <29.191683, 42.582211, 56.619713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.830036, 42.775402, 57.234509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.208244, 42.849205, 57.341801>,  <29.435169, 42.893486, 57.406178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.208244, 42.849205, 57.341801>,  <28.830036, 42.775402, 57.234509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.208244, 42.849205, 57.341801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287112, 0.861009, 0.419798,
		-0.153495, -0.473940, 0.867076,
		0.945519, 0.184511, 0.268234,
		29.491899, 42.904560, 57.422272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896282, 42.817101, 57.985840>,  <28.830036, 42.775402, 57.234509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896282, 42.817101, 57.985840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.182966, 43.037086, 57.814323>,  <29.354977, 43.169079, 57.711414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.182966, 43.037086, 57.814323>,  <28.896282, 42.817101, 57.985840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182966, 43.037086, 57.814323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300660, 0.798472, 0.521581,
		0.629230, -0.244902, 0.737626,
		0.716710, 0.549969, -0.428791,
		29.397980, 43.202076, 57.685688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.353436, 43.206585, 58.532627>,  <28.896282, 42.817101, 57.985840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.353436, 43.206585, 58.532627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.362906, 43.414822, 58.191235>,  <29.368587, 43.539764, 57.986401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.362906, 43.414822, 58.191235>,  <29.353436, 43.206585, 58.532627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.362906, 43.414822, 58.191235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406769, 0.784871, 0.467457,
		0.913224, 0.336102, 0.230340,
		0.023674, 0.520589, -0.853479,
		29.370008, 43.570999, 57.935192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.707813, 43.749290, 58.788792>,  <29.353436, 43.206585, 58.532627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.707813, 43.749290, 58.788792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.436367, 43.827290, 58.505539>,  <29.273499, 43.874088, 58.335587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.436367, 43.827290, 58.505539>,  <29.707813, 43.749290, 58.788792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.436367, 43.827290, 58.505539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467423, 0.629031, 0.621157,
		0.566563, 0.752526, -0.335724,
		-0.678617, 0.194999, -0.708134,
		29.232782, 43.885788, 58.293098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.561550, 44.444187, 58.790035>,  <29.707813, 43.749290, 58.788792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.561550, 44.444187, 58.790035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.229343, 44.324181, 58.602318>,  <29.030020, 44.252178, 58.489689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.229343, 44.324181, 58.602318>,  <29.561550, 44.444187, 58.790035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.229343, 44.324181, 58.602318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517916, 0.725979, 0.452457,
		0.204952, 0.618827, -0.758319,
		-0.830516, -0.300013, -0.469291,
		28.980188, 44.234177, 58.461529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.312046, 44.890556, 58.254135>,  <29.561550, 44.444187, 58.790035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.312046, 44.890556, 58.254135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.006437, 44.728951, 58.455349>,  <28.823072, 44.631989, 58.576077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.006437, 44.728951, 58.455349>,  <29.312046, 44.890556, 58.254135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.006437, 44.728951, 58.455349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228952, 0.898699, 0.374061,
		-0.603200, 0.170621, -0.779126,
		-0.764023, -0.404016, 0.503032,
		28.777231, 44.607746, 58.606258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.729282, 45.433159, 58.338013>,  <29.312046, 44.890556, 58.254135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.729282, 45.433159, 58.338013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.701948, 45.165215, 58.633747>,  <28.685549, 45.004448, 58.811188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.701948, 45.165215, 58.633747>,  <28.729282, 45.433159, 58.338013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.701948, 45.165215, 58.633747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229541, 0.731740, 0.641769,
		-0.970897, -0.125853, -0.203763,
		-0.068333, -0.669864, 0.739332,
		28.681448, 44.964256, 58.855545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.077120, 45.396832, 58.613110>,  <28.729282, 45.433159, 58.338013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.077120, 45.396832, 58.613110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.333296, 45.304188, 58.906010>,  <28.487001, 45.248600, 59.081749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.333296, 45.304188, 58.906010>,  <28.077120, 45.396832, 58.613110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.333296, 45.304188, 58.906010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284096, 0.814368, 0.506058,
		-0.713531, -0.532130, 0.455754,
		0.640440, -0.231610, 0.732252,
		28.525429, 45.234703, 59.125687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.786495, 45.555893, 57.991550>,  <28.077120, 45.396832, 58.613110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.786495, 45.555893, 57.991550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.025387, 45.842564, 58.135601>,  <28.168722, 46.014565, 58.222031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.025387, 45.842564, 58.135601>,  <27.786495, 45.555893, 57.991550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.025387, 45.842564, 58.135601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692688, -0.687225, 0.218872,
		0.404348, 0.118739, -0.906865,
		0.597231, 0.716675, 0.360127,
		28.204556, 46.057568, 58.243641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.259022, 45.129608, 57.706242>,  <27.786495, 45.555893, 57.991550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.259022, 45.129608, 57.706242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.922606, 45.294464, 57.566074>,  <27.720757, 45.393375, 57.481972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.922606, 45.294464, 57.566074>,  <28.259022, 45.129608, 57.706242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.922606, 45.294464, 57.566074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340009, -0.101113, -0.934971,
		-0.420768, -0.905494, -0.055090,
		-0.841040, 0.412137, -0.350421,
		27.670294, 45.418106, 57.460949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976669, 44.611012, 57.200230>,  <28.259022, 45.129608, 57.706242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976669, 44.611012, 57.200230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.914835, 45.004181, 57.160301>,  <27.877733, 45.240082, 57.136345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.914835, 45.004181, 57.160301>,  <27.976669, 44.611012, 57.200230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.914835, 45.004181, 57.160301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394938, -0.031135, -0.918180,
		-0.905609, -0.181363, -0.383380,
		-0.154587, 0.982923, -0.099824,
		27.868458, 45.299057, 57.130356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.619984, 44.828861, 56.577114>,  <27.976669, 44.611012, 57.200230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.619984, 44.828861, 56.577114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.872263, 45.124538, 56.671616>,  <28.023630, 45.301945, 56.728317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.872263, 45.124538, 56.671616>,  <27.619984, 44.828861, 56.577114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.872263, 45.124538, 56.671616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439333, -0.089153, -0.893890,
		-0.639691, 0.667571, -0.380979,
		0.630700, 0.739189, 0.236256,
		28.061474, 45.346294, 56.742493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.628458, 45.312168, 56.068192>,  <27.619984, 44.828861, 56.577114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.628458, 45.312168, 56.068192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.971979, 45.293198, 56.272232>,  <28.178093, 45.281815, 56.394657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.971979, 45.293198, 56.272232>,  <27.628458, 45.312168, 56.068192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.971979, 45.293198, 56.272232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506267, -0.073828, -0.859211,
		0.078408, 0.996143, -0.039394,
		0.858805, -0.047425, 0.510103,
		28.229620, 45.278969, 56.425262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.183409, 45.674583, 55.700424>,  <27.628458, 45.312168, 56.068192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.183409, 45.674583, 55.700424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.348000, 45.408615, 55.949764>,  <28.446754, 45.249035, 56.099369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.348000, 45.408615, 55.949764>,  <28.183409, 45.674583, 55.700424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.348000, 45.408615, 55.949764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643506, -0.272384, -0.715337,
		0.645434, 0.695475, 0.315801,
		0.411479, -0.664922, 0.623348,
		28.471443, 45.209137, 56.136768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837219, 45.693203, 55.349434>,  <28.183409, 45.674583, 55.700424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.837219, 45.693203, 55.349434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.839256, 45.392021, 55.612656>,  <28.840479, 45.211311, 55.770588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.839256, 45.392021, 55.612656>,  <28.837219, 45.693203, 55.349434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.839256, 45.392021, 55.612656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624158, -0.511747, -0.590375,
		0.781282, 0.413738, 0.467353,
		0.005094, -0.752951, 0.658056,
		28.840784, 45.166134, 55.810074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548143, 45.638241, 55.601456>,  <28.837219, 45.693203, 55.349434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.548143, 45.638241, 55.601456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.348330, 45.292007, 55.615456>,  <29.228441, 45.084267, 55.623856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.348330, 45.292007, 55.615456>,  <29.548143, 45.638241, 55.601456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.348330, 45.292007, 55.615456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533662, -0.339301, -0.774648,
		0.682401, -0.368285, 0.631423,
		-0.499534, -0.865587, 0.035000,
		29.198469, 45.032330, 55.625954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.043699, 45.162476, 55.663902>,  <29.548143, 45.638241, 55.601456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.043699, 45.162476, 55.663902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.726809, 44.944157, 55.554741>,  <29.536674, 44.813164, 55.489243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.726809, 44.944157, 55.554741>,  <30.043699, 45.162476, 55.663902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726809, 44.944157, 55.554741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525123, -0.381953, -0.760499,
		0.310842, -0.745798, 0.589206,
		-0.792227, -0.545800, -0.272908,
		29.489140, 44.780418, 55.472870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351400, 44.447845, 55.445206>,  <30.043699, 45.162476, 55.663902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351400, 44.447845, 55.445206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.995176, 44.458809, 55.263588>,  <29.781443, 44.465389, 55.154617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.995176, 44.458809, 55.263588>,  <30.351400, 44.447845, 55.445206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995176, 44.458809, 55.263588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371658, -0.531645, -0.761068,
		-0.262250, -0.846524, 0.463273,
		-0.890559, 0.027411, -0.454041,
		29.728008, 44.467033, 55.127377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.238119, 43.757278, 55.238628>,  <30.351400, 44.447845, 55.445206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.238119, 43.757278, 55.238628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.021603, 44.005531, 55.011711>,  <29.891693, 44.154484, 54.875561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.021603, 44.005531, 55.011711>,  <30.238119, 43.757278, 55.238628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.021603, 44.005531, 55.011711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356170, -0.441922, -0.823315,
		-0.761674, -0.647706, 0.018158,
		-0.541291, 0.620630, -0.567294,
		29.859215, 44.191719, 54.841522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.096745, 43.328430, 54.676632>,  <30.238119, 43.757278, 55.238628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.096745, 43.328430, 54.676632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.000257, 43.681934, 54.516243>,  <29.942366, 43.894039, 54.420010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.000257, 43.681934, 54.516243>,  <30.096745, 43.328430, 54.676632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.000257, 43.681934, 54.516243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381353, -0.293616, -0.876561,
		-0.892403, -0.364354, -0.266200,
		-0.241218, 0.883762, -0.400972,
		29.927893, 43.947063, 54.395950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.781803, 43.201221, 54.083942>,  <30.096745, 43.328430, 54.676632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.781803, 43.201221, 54.083942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.880116, 43.582684, 54.014519>,  <29.939104, 43.811562, 53.972862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.880116, 43.582684, 54.014519>,  <29.781803, 43.201221, 54.083942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880116, 43.582684, 54.014519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151036, -0.214545, -0.964966,
		-0.957486, 0.210958, -0.196768,
		0.245783, 0.953660, -0.173562,
		29.953850, 43.868782, 53.962452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.461809, 43.345444, 53.474384>,  <29.781803, 43.201221, 54.083942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.461809, 43.345444, 53.474384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.739954, 43.630066, 53.514698>,  <29.906841, 43.800838, 53.538887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.739954, 43.630066, 53.514698>,  <29.461809, 43.345444, 53.474384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739954, 43.630066, 53.514698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375689, -0.240363, -0.895033,
		-0.612641, 0.660236, -0.434464,
		0.695362, 0.711557, 0.100788,
		29.948563, 43.843533, 53.544933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551350, 43.794247, 52.802437>,  <29.461809, 43.345444, 53.474384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551350, 43.794247, 52.802437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.901178, 43.877186, 52.977768>,  <30.111076, 43.926949, 53.082966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.901178, 43.877186, 52.977768>,  <29.551350, 43.794247, 52.802437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901178, 43.877186, 52.977768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459148, -0.063483, -0.886089,
		-0.155901, 0.976206, -0.150723,
		0.874573, 0.207346, 0.438326,
		30.163549, 43.939388, 53.109264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.950865, 44.091812, 52.247967>,  <29.551350, 43.794247, 52.802437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.950865, 44.091812, 52.247967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.209888, 43.964947, 52.525116>,  <30.365303, 43.888828, 52.691406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.209888, 43.964947, 52.525116>,  <29.950865, 44.091812, 52.247967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209888, 43.964947, 52.525116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575567, -0.392315, -0.717504,
		0.499391, 0.863421, -0.071498,
		0.647558, -0.317163, 0.692875,
		30.404156, 43.869797, 52.732979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525135, 44.394165, 52.104313>,  <29.950865, 44.091812, 52.247967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525135, 44.394165, 52.104313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.629190, 44.082851, 52.332909>,  <30.691624, 43.896065, 52.470066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.629190, 44.082851, 52.332909>,  <30.525135, 44.394165, 52.104313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629190, 44.082851, 52.332909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578615, -0.348179, -0.737547,
		0.773002, 0.522539, 0.359752,
		0.260139, -0.778283, 0.571492,
		30.707232, 43.849365, 52.504356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302479, 44.260082, 52.117672>,  <30.525135, 44.394165, 52.104313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302479, 44.260082, 52.117672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.142740, 43.911137, 52.230457>,  <31.046898, 43.701771, 52.298130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.142740, 43.911137, 52.230457>,  <31.302479, 44.260082, 52.117672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142740, 43.911137, 52.230457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642255, -0.485672, -0.592984,
		0.654241, -0.055712, 0.754232,
		-0.399346, -0.872364, 0.281965,
		31.022936, 43.649429, 52.315048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945152, 43.724743, 52.187717>,  <31.302479, 44.260082, 52.117672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945152, 43.724743, 52.187717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.603790, 43.530449, 52.112072>,  <31.398973, 43.413872, 52.066685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.603790, 43.530449, 52.112072>,  <31.945152, 43.724743, 52.187717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603790, 43.530449, 52.112072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478709, -0.586791, -0.653081,
		0.206253, -0.647872, 0.733295,
		-0.853404, -0.485734, -0.189115,
		31.347769, 43.384727, 52.055336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098450, 43.016655, 52.173687>,  <31.945152, 43.724743, 52.187717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098450, 43.016655, 52.173687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.763803, 43.065918, 51.960182>,  <31.563015, 43.095478, 51.832081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.763803, 43.065918, 51.960182>,  <32.098450, 43.016655, 52.173687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763803, 43.065918, 51.960182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284464, -0.735031, -0.615475,
		-0.468131, -0.666754, 0.579907,
		-0.836621, 0.123161, -0.533758,
		31.512817, 43.102867, 51.800056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609623, 42.395237, 52.187969>,  <32.098450, 43.016655, 52.173687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609623, 42.395237, 52.187969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.603315, 42.623280, 51.859402>,  <31.599531, 42.760105, 51.662262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.603315, 42.623280, 51.859402>,  <31.609623, 42.395237, 52.187969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603315, 42.623280, 51.859402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373066, -0.758841, -0.533837,
		-0.927671, -0.314860, -0.200723,
		-0.015767, 0.570108, -0.821418,
		31.598585, 42.794312, 51.612976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353559, 42.057068, 51.569912>,  <31.609623, 42.395237, 52.187969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353559, 42.057068, 51.569912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.591513, 42.350582, 51.438652>,  <31.734283, 42.526691, 51.359898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.591513, 42.350582, 51.438652>,  <31.353559, 42.057068, 51.569912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591513, 42.350582, 51.438652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357151, -0.607018, -0.709911,
		-0.720111, 0.305114, -0.623174,
		0.594881, 0.733781, -0.328148,
		31.769978, 42.570717, 51.340206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156569, 42.152412, 50.941460>,  <31.353559, 42.057068, 51.569912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156569, 42.152412, 50.941460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.515245, 42.329090, 50.953072>,  <31.730452, 42.435097, 50.960037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.515245, 42.329090, 50.953072>,  <31.156569, 42.152412, 50.941460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515245, 42.329090, 50.953072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257926, -0.468065, -0.845215,
		-0.359742, 0.765387, -0.533637,
		0.896694, 0.441699, 0.029030,
		31.784254, 42.461601, 50.961781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.320339, 42.415554, 50.206760>,  <31.156569, 42.152412, 50.941460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.320339, 42.415554, 50.206760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.651136, 42.378807, 50.428623>,  <31.849615, 42.356758, 50.561741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.651136, 42.378807, 50.428623>,  <31.320339, 42.415554, 50.206760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651136, 42.378807, 50.428623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467421, -0.435864, -0.769117,
		0.312410, 0.895312, -0.317517,
		0.826994, -0.091865, 0.554655,
		31.899235, 42.351246, 50.595020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852026, 42.377678, 49.732002>,  <31.320339, 42.415554, 50.206760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852026, 42.377678, 49.732002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.019535, 42.231483, 50.064522>,  <32.120041, 42.143768, 50.264034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.019535, 42.231483, 50.064522>,  <31.852026, 42.377678, 49.732002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019535, 42.231483, 50.064522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506645, -0.665674, -0.547896,
		0.753618, 0.650615, -0.093596,
		0.418773, -0.365484, 0.831294,
		32.145168, 42.121838, 50.313911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515686, 42.251251, 49.601589>,  <31.852026, 42.377678, 49.732002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515686, 42.251251, 49.601589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.454929, 42.012558, 49.916763>,  <32.418476, 41.869343, 50.105865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.454929, 42.012558, 49.916763>,  <32.515686, 42.251251, 49.601589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454929, 42.012558, 49.916763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505295, -0.732013, -0.456983,
		0.849474, 0.328728, 0.412712,
		-0.151888, -0.596737, 0.787931,
		32.409363, 41.833538, 50.153141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153160, 41.912903, 49.590492>,  <32.515686, 42.251251, 49.601589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153160, 41.912903, 49.590492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.935684, 41.695217, 49.846062>,  <32.805199, 41.564606, 49.999405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.935684, 41.695217, 49.846062>,  <33.153160, 41.912903, 49.590492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935684, 41.695217, 49.846062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642017, -0.760005, -0.101026,
		0.540566, 0.355273, 0.762607,
		-0.543693, -0.544218, 0.638924,
		32.772575, 41.531952, 50.037739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463345, 41.748402, 50.248486>,  <33.153160, 41.912903, 49.590492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463345, 41.748402, 50.248486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.202019, 41.450348, 50.194881>,  <33.045223, 41.271515, 50.162720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.202019, 41.450348, 50.194881>,  <33.463345, 41.748402, 50.248486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202019, 41.450348, 50.194881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733938, -0.666773, 0.129418,
		-0.185787, -0.013804, 0.982493,
		-0.653314, -0.745133, -0.134008,
		33.006023, 41.226807, 50.154678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707188, 41.305691, 50.747028>,  <33.463345, 41.748402, 50.248486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707188, 41.305691, 50.747028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.486496, 41.090206, 50.492348>,  <33.354080, 40.960915, 50.339539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.486496, 41.090206, 50.492348>,  <33.707188, 41.305691, 50.747028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486496, 41.090206, 50.492348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648991, -0.756793, 0.077947,
		-0.523841, -0.370208, 0.767161,
		-0.551726, -0.538712, -0.636701,
		33.320980, 40.928593, 50.301338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501289, 40.519100, 51.118256>,  <33.707188, 41.305691, 50.747028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501289, 40.519100, 51.118256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.479881, 40.476418, 50.721115>,  <33.467037, 40.450809, 50.482830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.479881, 40.476418, 50.721115>,  <33.501289, 40.519100, 51.118256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479881, 40.476418, 50.721115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700958, -0.712149, 0.038755,
		-0.711192, -0.693871, 0.112909,
		-0.053517, -0.106706, -0.992849,
		33.463825, 40.444405, 50.423260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716709, 39.842766, 50.973118>,  <33.501289, 40.519100, 51.118256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716709, 39.842766, 50.973118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.734970, 40.000443, 50.605961>,  <33.745926, 40.095047, 50.385666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.734970, 40.000443, 50.605961>,  <33.716709, 39.842766, 50.973118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734970, 40.000443, 50.605961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711611, -0.657701, -0.247060,
		-0.701089, -0.641904, -0.310536,
		0.045651, 0.394192, -0.917893,
		33.748665, 40.118702, 50.330593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669952, 39.243561, 50.609463>,  <33.716709, 39.842766, 50.973118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669952, 39.243561, 50.609463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.841587, 39.501530, 50.356495>,  <33.944569, 39.656311, 50.204712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.841587, 39.501530, 50.356495>,  <33.669952, 39.243561, 50.609463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841587, 39.501530, 50.356495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674180, -0.694630, -0.250940,
		-0.601136, -0.318691, -0.732852,
		0.429089, 0.644923, -0.632422,
		33.970314, 39.695007, 50.166767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658733, 38.932671, 49.935547>,  <33.669952, 39.243561, 50.609463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658733, 38.932671, 49.935547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.937130, 39.215630, 49.984833>,  <34.104168, 39.385406, 50.014404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.937130, 39.215630, 49.984833>,  <33.658733, 38.932671, 49.935547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937130, 39.215630, 49.984833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715131, -0.667435, -0.207650,
		-0.064650, 0.232640, -0.970412,
		0.695994, 0.707396, 0.123219,
		34.145927, 39.427849, 50.021797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182312, 38.767765, 49.474232>,  <33.658733, 38.932671, 49.935547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182312, 38.767765, 49.474232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.381943, 39.047295, 49.679199>,  <34.501720, 39.215012, 49.802177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.381943, 39.047295, 49.679199>,  <34.182312, 38.767765, 49.474232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381943, 39.047295, 49.679199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866382, -0.414313, -0.278797,
		0.017470, 0.583088, -0.812221,
		0.499077, 0.698823, 0.512415,
		34.531666, 39.256943, 49.832924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783581, 39.044014, 49.039017>,  <34.182312, 38.767765, 49.474232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783581, 39.044014, 49.039017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.895580, 39.133480, 49.412449>,  <34.962780, 39.187160, 49.636509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.895580, 39.133480, 49.412449>,  <34.783581, 39.044014, 49.039017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895580, 39.133480, 49.412449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910232, -0.370909, -0.184133,
		0.305091, 0.901333, -0.307438,
		0.279997, 0.223663, 0.933583,
		34.979580, 39.200581, 49.692524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555752, 39.384254, 49.102116>,  <34.783581, 39.044014, 49.039017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555752, 39.384254, 49.102116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.452831, 39.213589, 49.448929>,  <35.391079, 39.111187, 49.657017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.452831, 39.213589, 49.448929>,  <35.555752, 39.384254, 49.102116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452831, 39.213589, 49.448929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842081, -0.539131, -0.015409,
		0.474021, 0.726149, 0.498007,
		-0.257302, -0.426667, 0.867036,
		35.375641, 39.085590, 49.709038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094658, 39.506756, 49.471149>,  <35.555752, 39.384254, 49.102116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094658, 39.506756, 49.471149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.898739, 39.196735, 49.630848>,  <35.781189, 39.010723, 49.726665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.898739, 39.196735, 49.630848>,  <36.094658, 39.506756, 49.471149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898739, 39.196735, 49.630848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802070, -0.580077, -0.142107,
		0.341732, 0.250618, 0.905765,
		-0.489799, -0.775049, 0.399244,
		35.751801, 38.964222, 49.750622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594852, 39.238075, 49.740768>,  <36.094658, 39.506756, 49.471149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594852, 39.238075, 49.740768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.320896, 38.950668, 49.789196>,  <36.156521, 38.778225, 49.818253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.320896, 38.950668, 49.789196>,  <36.594852, 39.238075, 49.740768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320896, 38.950668, 49.789196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686716, -0.692059, -0.222430,
		0.243609, -0.069198, 0.967402,
		-0.684891, -0.718516, 0.121072,
		36.115429, 38.735115, 49.825520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874458, 38.719509, 50.274178>,  <36.594852, 39.238075, 49.740768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874458, 38.719509, 50.274178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.614635, 38.539852, 50.028790>,  <36.458744, 38.432056, 49.881557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.614635, 38.539852, 50.028790>,  <36.874458, 38.719509, 50.274178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614635, 38.539852, 50.028790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686202, -0.693780, -0.218623,
		-0.327424, -0.562975, 0.758850,
		-0.649555, -0.449142, -0.613474,
		36.419769, 38.405109, 49.844746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782822, 37.998207, 50.515724>,  <36.874458, 38.719509, 50.274178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782822, 37.998207, 50.515724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.667217, 38.020927, 50.133469>,  <36.597855, 38.034561, 49.904114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.667217, 38.020927, 50.133469>,  <36.782822, 37.998207, 50.515724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667217, 38.020927, 50.133469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567215, -0.793990, -0.218738,
		-0.771192, -0.605271, 0.197256,
		-0.289015, 0.056802, -0.955638,
		36.580513, 38.037968, 49.846779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628460, 37.300453, 50.345009>,  <36.782822, 37.998207, 50.515724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628460, 37.300453, 50.345009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.659195, 37.454327, 49.977070>,  <36.677635, 37.546650, 49.756306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.659195, 37.454327, 49.977070>,  <36.628460, 37.300453, 50.345009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659195, 37.454327, 49.977070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470888, -0.827201, -0.306599,
		-0.878840, -0.409585, -0.244702,
		0.076839, 0.384679, -0.919846,
		36.682247, 37.569729, 49.701115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689728, 36.736095, 49.962841>,  <36.628460, 37.300453, 50.345009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689728, 36.736095, 49.962841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.799339, 37.029995, 49.714630>,  <36.865105, 37.206333, 49.565704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.799339, 37.029995, 49.714630>,  <36.689728, 36.736095, 49.962841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799339, 37.029995, 49.714630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552001, -0.648524, -0.524130,
		-0.787530, -0.198905, -0.583295,
		0.274028, 0.734747, -0.620528,
		36.881546, 37.250420, 49.528473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560440, 36.467892, 49.271553>,  <36.689728, 36.736095, 49.962841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560440, 36.467892, 49.271553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.852245, 36.741432, 49.276623>,  <37.027328, 36.905556, 49.279663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.852245, 36.741432, 49.276623>,  <36.560440, 36.467892, 49.271553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852245, 36.741432, 49.276623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517405, -0.539643, -0.664137,
		-0.447334, 0.491050, -0.747504,
		0.729510, 0.683853, 0.012670,
		37.071098, 36.946587, 49.280422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702641, 36.521492, 48.596058>,  <36.560440, 36.467892, 49.271553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702641, 36.521492, 48.596058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.016994, 36.630981, 48.817856>,  <37.205608, 36.696674, 48.950935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.016994, 36.630981, 48.817856>,  <36.702641, 36.521492, 48.596058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016994, 36.630981, 48.817856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568344, -0.673059, -0.473262,
		0.243664, 0.687071, -0.684515,
		0.785883, 0.273723, 0.554493,
		37.252758, 36.713097, 48.984203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153477, 36.560745, 48.123184>,  <36.702641, 36.521492, 48.596058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153477, 36.560745, 48.123184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.102238, 36.674450, 47.743122>,  <36.071495, 36.742672, 47.515087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.102238, 36.674450, 47.743122>,  <36.153477, 36.560745, 48.123184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102238, 36.674450, 47.743122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991744, -0.031081, 0.124406,
		0.005832, 0.958243, 0.285894,
		-0.128098, 0.284259, -0.950151,
		36.063808, 36.759727, 47.458076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743103, 37.131229, 48.106541>,  <36.153477, 36.560745, 48.123184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743103, 37.131229, 48.106541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.723534, 36.930595, 47.761051>,  <35.711792, 36.810215, 47.553757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.723534, 36.930595, 47.761051>,  <35.743103, 37.131229, 48.106541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723534, 36.930595, 47.761051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998525, 0.044941, 0.030460,
		0.023538, 0.863939, -0.503046,
		-0.048923, -0.501588, -0.863723,
		35.708858, 36.780121, 47.501934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395882, 37.593102, 47.565002>,  <35.743103, 37.131229, 48.106541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395882, 37.593102, 47.565002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.361378, 37.207478, 47.464485>,  <35.340675, 36.976105, 47.404175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.361378, 37.207478, 47.464485>,  <35.395882, 37.593102, 47.565002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361378, 37.207478, 47.464485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996189, 0.080191, 0.034301,
		-0.012917, 0.253291, -0.967304,
		-0.086257, -0.964060, -0.251289,
		35.335499, 36.918259, 47.389099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983238, 37.563721, 46.935139>,  <35.395882, 37.593102, 47.565002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983238, 37.563721, 46.935139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.943081, 37.201870, 47.100822>,  <34.918987, 36.984760, 47.200233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.943081, 37.201870, 47.100822>,  <34.983238, 37.563721, 46.935139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943081, 37.201870, 47.100822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994534, 0.079249, -0.067977,
		0.028668, -0.418772, -0.907639,
		-0.100396, -0.904627, 0.414211,
		34.912964, 36.930481, 47.225086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501812, 37.227798, 46.515507>,  <34.983238, 37.563721, 46.935139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501812, 37.227798, 46.515507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.500401, 36.999481, 46.843941>,  <34.499554, 36.862492, 47.041000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.500401, 36.999481, 46.843941>,  <34.501812, 37.227798, 46.515507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500401, 36.999481, 46.843941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996278, 0.072721, 0.046268,
		-0.086120, -0.817864, -0.568930,
		-0.003532, -0.570797, 0.821083,
		34.499340, 36.828243, 47.090267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967426, 36.688389, 46.373390>,  <34.501812, 37.227798, 46.515507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967426, 36.688389, 46.373390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.036369, 36.724018, 46.765789>,  <34.077736, 36.745396, 47.001228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.036369, 36.724018, 46.765789>,  <33.967426, 36.688389, 46.373390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036369, 36.724018, 46.765789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951952, 0.270996, 0.142647,
		-0.253141, -0.958450, 0.131501,
		0.172356, 0.089073, 0.980999,
		34.088078, 36.750740, 47.060089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419888, 36.446609, 46.690170>,  <33.967426, 36.688389, 46.373390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419888, 36.446609, 46.690170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.565807, 36.656540, 46.997799>,  <33.653358, 36.782497, 47.182377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.565807, 36.656540, 46.997799>,  <33.419888, 36.446609, 46.690170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565807, 36.656540, 46.997799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928868, 0.262113, 0.261726,
		-0.064223, -0.809845, 0.583118,
		0.364800, 0.524831, 0.769073,
		33.675247, 36.813988, 47.228519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821877, 36.251926, 47.201321>,  <33.419888, 36.446609, 46.690170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821877, 36.251926, 47.201321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.026108, 36.558285, 47.357635>,  <33.148647, 36.742100, 47.451424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.026108, 36.558285, 47.357635>,  <32.821877, 36.251926, 47.201321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026108, 36.558285, 47.357635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846391, 0.367635, 0.385315,
		0.151441, -0.527496, 0.835951,
		0.510577, 0.765893, 0.390793,
		33.179279, 36.788052, 47.474873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692516, 36.417957, 47.965237>,  <32.821877, 36.251926, 47.201321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692516, 36.417957, 47.965237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.836590, 36.751740, 47.798405>,  <32.923035, 36.952007, 47.698307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.836590, 36.751740, 47.798405>,  <32.692516, 36.417957, 47.965237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836590, 36.751740, 47.798405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756647, 0.522826, 0.392604,
		0.545671, 0.174174, 0.819699,
		0.360179, 0.834455, -0.417079,
		32.944645, 37.002075, 47.673283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424454, 36.889725, 48.415623>,  <32.692516, 36.417957, 47.965237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424454, 36.889725, 48.415623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.527779, 37.111057, 48.098866>,  <32.589775, 37.243858, 47.908810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.527779, 37.111057, 48.098866>,  <32.424454, 36.889725, 48.415623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527779, 37.111057, 48.098866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786952, 0.595978, 0.159739,
		0.560340, 0.581920, 0.589397,
		0.258312, 0.553335, -0.791893,
		32.605270, 37.277058, 47.861298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414543, 37.666634, 48.635559>,  <32.424454, 36.889725, 48.415623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414543, 37.666634, 48.635559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.367699, 37.621578, 48.240875>,  <32.339592, 37.594543, 48.004066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.367699, 37.621578, 48.240875>,  <32.414543, 37.666634, 48.635559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367699, 37.621578, 48.240875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768695, 0.639355, 0.018243,
		0.628804, 0.760616, -0.161461,
		-0.117107, -0.112643, -0.986710,
		32.332565, 37.587784, 47.944862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374817, 38.291580, 48.449326>,  <32.414543, 37.666634, 48.635559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374817, 38.291580, 48.449326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.192665, 38.069847, 48.170658>,  <32.083374, 37.936810, 48.003456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.192665, 38.069847, 48.170658>,  <32.374817, 38.291580, 48.449326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192665, 38.069847, 48.170658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749838, 0.660666, -0.035545,
		0.479969, 0.506202, -0.716512,
		-0.455382, -0.554328, -0.696669,
		32.056049, 37.903549, 47.961658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173668, 38.721390, 47.906876>,  <32.374817, 38.291580, 48.449326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173668, 38.721390, 47.906876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.948324, 38.400497, 47.827831>,  <31.813118, 38.207962, 47.780403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.948324, 38.400497, 47.827831>,  <32.173668, 38.721390, 47.906876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948324, 38.400497, 47.827831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826211, 0.546261, 0.137750,
		-0.002559, 0.240872, -0.970554,
		-0.563356, -0.802234, -0.197613,
		31.779318, 38.159828, 47.768547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664692, 38.878696, 47.485889>,  <32.173668, 38.721390, 47.906876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664692, 38.878696, 47.485889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.507580, 38.550713, 47.652447>,  <31.413313, 38.353920, 47.752380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.507580, 38.550713, 47.652447>,  <31.664692, 38.878696, 47.485889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507580, 38.550713, 47.652447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799963, 0.527987, 0.285111,
		-0.453632, -0.221115, -0.863323,
		-0.392781, -0.819962, 0.416396,
		31.389746, 38.304726, 47.777367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951466, 38.997372, 47.437920>,  <31.664692, 38.878696, 47.485889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951466, 38.997372, 47.437920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.962734, 38.713509, 47.719513>,  <30.969496, 38.543190, 47.888470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.962734, 38.713509, 47.719513>,  <30.951466, 38.997372, 47.437920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962734, 38.713509, 47.719513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574385, 0.564894, 0.592433,
		-0.818101, -0.421046, -0.391703,
		0.028171, -0.709658, 0.703983,
		30.971186, 38.500610, 47.930706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236992, 38.946648, 47.705215>,  <30.951466, 38.997372, 47.437920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.236992, 38.946648, 47.705215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.491817, 38.816456, 47.984703>,  <30.644714, 38.738338, 48.152397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.491817, 38.816456, 47.984703>,  <30.236992, 38.946648, 47.705215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491817, 38.816456, 47.984703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414775, 0.619293, 0.666662,
		-0.649699, -0.714518, 0.259529,
		0.637067, -0.325483, 0.698718,
		30.682938, 38.718811, 48.194317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807438, 38.801800, 48.297955>,  <30.236992, 38.946648, 47.705215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807438, 38.801800, 48.297955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.179459, 38.804413, 48.444904>,  <30.402672, 38.805981, 48.533073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.179459, 38.804413, 48.444904>,  <29.807438, 38.801800, 48.297955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179459, 38.804413, 48.444904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326152, 0.475096, 0.817257,
		-0.169199, -0.879910, 0.443994,
		0.930052, 0.006531, 0.367370,
		30.458475, 38.806374, 48.555115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614477, 38.839207, 49.018753>,  <29.807438, 38.801800, 48.297955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614477, 38.839207, 49.018753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.008734, 38.903305, 48.997467>,  <30.245287, 38.941765, 48.984695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.008734, 38.903305, 48.997467>,  <29.614477, 38.839207, 49.018753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.008734, 38.903305, 48.997467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068846, 0.669161, 0.739921,
		0.154181, -0.725633, 0.670585,
		0.985641, 0.160249, -0.053216,
		30.304426, 38.951382, 48.981503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.776155, 38.868225, 49.744331>,  <29.614477, 38.839207, 49.018753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.776155, 38.868225, 49.744331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.066605, 39.044258, 49.533020>,  <30.240875, 39.149876, 49.406235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.066605, 39.044258, 49.533020>,  <29.776155, 38.868225, 49.744331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066605, 39.044258, 49.533020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012849, 0.776878, 0.629520,
		0.687442, -0.450323, 0.569765,
		0.726125, 0.440079, -0.528273,
		30.284441, 39.176281, 49.374538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.233273, 38.964603, 50.199986>,  <29.776155, 38.868225, 49.744331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.233273, 38.964603, 50.199986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.280006, 39.219032, 49.894894>,  <30.308046, 39.371689, 49.711838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.280006, 39.219032, 49.894894>,  <30.233273, 38.964603, 50.199986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280006, 39.219032, 49.894894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028776, 0.765499, 0.642792,
		0.992734, -0.097050, 0.071134,
		0.116836, 0.636075, -0.762730,
		30.315058, 39.409855, 49.666073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.743853, 39.432251, 50.359383>,  <30.233273, 38.964603, 50.199986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.743853, 39.432251, 50.359383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.527355, 39.632137, 50.088875>,  <30.397457, 39.752071, 49.926571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.527355, 39.632137, 50.088875>,  <30.743853, 39.432251, 50.359383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527355, 39.632137, 50.088875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193221, 0.708815, 0.678415,
		0.818365, 0.497856, -0.287085,
		-0.541243, 0.499721, -0.676266,
		30.364983, 39.782055, 49.885994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989151, 40.169384, 50.280289>,  <30.743853, 39.432251, 50.359383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989151, 40.169384, 50.280289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.610661, 40.158955, 50.151306>,  <30.383566, 40.152699, 50.073917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.610661, 40.158955, 50.151306>,  <30.989151, 40.169384, 50.280289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610661, 40.158955, 50.151306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198990, 0.832795, 0.516581,
		0.255075, 0.552968, -0.793198,
		-0.946224, -0.026071, -0.322460,
		30.326794, 40.151134, 50.054569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788855, 40.889328, 50.122208>,  <30.989151, 40.169384, 50.280289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788855, 40.889328, 50.122208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.438330, 40.711227, 50.195782>,  <30.228014, 40.604366, 50.239925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.438330, 40.711227, 50.195782>,  <30.788855, 40.889328, 50.122208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438330, 40.711227, 50.195782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280098, 0.781550, 0.557426,
		-0.391948, 0.436959, -0.809595,
		-0.876311, -0.445248, 0.183935,
		30.175436, 40.577652, 50.250961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.327969, 41.489868, 50.146774>,  <30.788855, 40.889328, 50.122208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.327969, 41.489868, 50.146774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.096893, 41.192711, 50.282063>,  <29.958248, 41.014416, 50.363235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.096893, 41.192711, 50.282063>,  <30.327969, 41.489868, 50.146774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.096893, 41.192711, 50.282063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348225, 0.599052, 0.721025,
		-0.738253, 0.298750, -0.604757,
		-0.577687, -0.742890, 0.338219,
		29.923588, 40.969845, 50.383530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.678919, 41.781471, 50.237377>,  <30.327969, 41.489868, 50.146774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.678919, 41.781471, 50.237377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.630098, 41.452412, 50.459492>,  <29.600805, 41.254974, 50.592762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.630098, 41.452412, 50.459492>,  <29.678919, 41.781471, 50.237377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.630098, 41.452412, 50.459492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507626, 0.532502, 0.677317,
		-0.852889, -0.199212, -0.482592,
		-0.122052, -0.822652, 0.555290,
		29.593483, 41.205616, 50.626080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.889925, 41.637466, 50.289558>,  <29.678919, 41.781471, 50.237377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.889925, 41.637466, 50.289558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.133156, 41.549583, 50.594707>,  <29.279095, 41.496853, 50.777798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.133156, 41.549583, 50.594707>,  <28.889925, 41.637466, 50.289558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.133156, 41.549583, 50.594707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446489, 0.699910, 0.557470,
		-0.656422, -0.679598, 0.327502,
		0.608077, -0.219710, 0.762869,
		29.315578, 41.483669, 50.823566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427292, 41.769829, 50.800816>,  <28.889925, 41.637466, 50.289558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.427292, 41.769829, 50.800816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.748533, 41.653419, 51.008789>,  <28.941278, 41.583572, 51.133575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.748533, 41.653419, 51.008789>,  <28.427292, 41.769829, 50.800816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.748533, 41.653419, 51.008789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352484, 0.471497, 0.808360,
		-0.480400, -0.832464, 0.276079,
		0.803101, -0.291022, 0.519937,
		28.989464, 41.566113, 51.164772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.155983, 41.384232, 51.299175>,  <28.427292, 41.769829, 50.800816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.155983, 41.384232, 51.299175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.511652, 41.517788, 51.424324>,  <28.725054, 41.597923, 51.499413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.511652, 41.517788, 51.424324>,  <28.155983, 41.384232, 51.299175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.511652, 41.517788, 51.424324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448371, 0.499345, 0.741362,
		0.091306, -0.799480, 0.593712,
		0.889172, 0.333894, 0.312870,
		28.778404, 41.617958, 51.518185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135113, 41.327751, 52.021053>,  <28.155983, 41.384232, 51.299175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135113, 41.327751, 52.021053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.420561, 41.596722, 51.942471>,  <28.591829, 41.758102, 51.895321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.420561, 41.596722, 51.942471>,  <28.135113, 41.327751, 52.021053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.420561, 41.596722, 51.942471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290507, 0.539242, 0.790458,
		0.637460, -0.507013, 0.580157,
		0.713618, 0.672425, -0.196455,
		28.634647, 41.798450, 51.883533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.380651, 41.708649, 52.701645>,  <28.135113, 41.327751, 52.021053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.380651, 41.708649, 52.701645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.497017, 41.951916, 52.406212>,  <28.566835, 42.097874, 52.228951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.497017, 41.951916, 52.406212>,  <28.380651, 41.708649, 52.701645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.497017, 41.951916, 52.406212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327799, 0.788604, 0.520241,
		0.898842, 0.090762, 0.428772,
		0.290913, 0.608165, -0.738583,
		28.584291, 42.134365, 52.184635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.787828, 42.229675, 52.965183>,  <28.380651, 41.708649, 52.701645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.787828, 42.229675, 52.965183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.602896, 42.366005, 52.637749>,  <28.491936, 42.447803, 52.441288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.602896, 42.366005, 52.637749>,  <28.787828, 42.229675, 52.965183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.602896, 42.366005, 52.637749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224930, 0.847904, 0.480069,
		0.857704, 0.406075, -0.315350,
		-0.462331, 0.340825, -0.818589,
		28.464197, 42.468254, 52.392174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669048, 42.869804, 53.155563>,  <28.787828, 42.229675, 52.965183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669048, 42.869804, 53.155563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.487984, 42.905998, 52.800732>,  <28.379345, 42.927715, 52.587833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.487984, 42.905998, 52.800732>,  <28.669048, 42.869804, 53.155563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.487984, 42.905998, 52.800732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408688, 0.863140, 0.296585,
		0.792510, 0.496791, -0.353731,
		-0.452660, 0.090481, -0.887080,
		28.352186, 42.933144, 52.534607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591446, 43.508602, 53.111786>,  <28.669048, 42.869804, 53.155563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.591446, 43.508602, 53.111786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.333267, 43.426445, 52.817516>,  <28.178360, 43.377151, 52.640957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.333267, 43.426445, 52.817516>,  <28.591446, 43.508602, 53.111786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.333267, 43.426445, 52.817516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591324, 0.744020, 0.311080,
		0.483462, 0.635806, -0.601678,
		-0.645446, -0.205391, -0.735672,
		28.139633, 43.364826, 52.596813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.416830, 44.150383, 52.687958>,  <28.591446, 43.508602, 53.111786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.416830, 44.150383, 52.687958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.125919, 43.877628, 52.656712>,  <27.951372, 43.713978, 52.637962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.125919, 43.877628, 52.656712>,  <28.416830, 44.150383, 52.687958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125919, 43.877628, 52.656712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659398, 0.662606, 0.355172,
		-0.190425, 0.309819, -0.931531,
		-0.727277, -0.681884, -0.078117,
		27.907736, 43.673061, 52.633278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.777937, 44.503822, 52.354164>,  <28.416830, 44.150383, 52.687958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.777937, 44.503822, 52.354164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.658304, 44.187809, 52.568226>,  <27.586525, 43.998199, 52.696663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.658304, 44.187809, 52.568226>,  <27.777937, 44.503822, 52.354164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.658304, 44.187809, 52.568226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679290, 0.570147, 0.462057,
		-0.670161, -0.225335, -0.707184,
		-0.299081, -0.790035, 0.535158,
		27.568581, 43.950798, 52.728775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.107592, 44.598225, 52.522282>,  <27.777937, 44.503822, 52.354164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.107592, 44.598225, 52.522282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.190084, 44.310261, 52.787369>,  <27.239580, 44.137482, 52.946423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.190084, 44.310261, 52.787369>,  <27.107592, 44.598225, 52.522282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.190084, 44.310261, 52.787369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583743, 0.453044, 0.673791,
		-0.785311, -0.525815, -0.326810,
		0.206230, -0.719909, 0.662722,
		27.251953, 44.094288, 52.986187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.448912, 44.405926, 52.743355>,  <27.107592, 44.598225, 52.522282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.448912, 44.405926, 52.743355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.711384, 44.301582, 53.026588>,  <26.868868, 44.238976, 53.196529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.711384, 44.301582, 53.026588>,  <26.448912, 44.405926, 52.743355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.711384, 44.301582, 53.026588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642839, 0.298195, 0.705576,
		-0.395204, -0.918167, 0.027978,
		0.656180, -0.260861, 0.708081,
		26.908237, 44.223324, 53.239014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.050634, 44.004341, 53.217175>,  <26.448912, 44.405926, 52.743355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.050634, 44.004341, 53.217175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.367619, 44.100533, 53.441380>,  <26.557808, 44.158249, 53.575905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.367619, 44.100533, 53.441380>,  <26.050634, 44.004341, 53.217175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.367619, 44.100533, 53.441380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593526, 0.092371, 0.799497,
		0.140490, -0.966248, 0.215933,
		0.792458, 0.240483, 0.560516,
		26.605356, 44.172676, 53.609535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.058226, 43.540363, 53.824409>,  <26.050634, 44.004341, 53.217175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.058226, 43.540363, 53.824409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.284769, 43.862301, 53.895359>,  <26.420694, 44.055466, 53.937927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.284769, 43.862301, 53.895359>,  <26.058226, 43.540363, 53.824409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.284769, 43.862301, 53.895359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471123, 0.139582, 0.870953,
		0.676227, -0.576833, 0.458236,
		0.566356, 0.804848, 0.177370,
		26.454676, 44.103756, 53.948570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205828, 42.800095, 53.902912>,  <26.058226, 43.540363, 53.824409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.205828, 42.800095, 53.902912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.072241, 42.669872, 54.256744>,  <25.992088, 42.591740, 54.469044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.072241, 42.669872, 54.256744>,  <26.205828, 42.800095, 53.902912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.072241, 42.669872, 54.256744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198038, -0.941747, -0.271833,
		0.921545, 0.084396, 0.378987,
		-0.333968, -0.325560, 0.884577,
		25.972050, 42.572205, 54.522118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.747293, 42.322716, 53.987381>,  <26.205828, 42.800095, 53.902912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.747293, 42.322716, 53.987381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.417196, 42.239464, 54.197392>,  <26.219137, 42.189514, 54.323399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.417196, 42.239464, 54.197392>,  <26.747293, 42.322716, 53.987381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.417196, 42.239464, 54.197392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110082, -0.971068, -0.211916,
		0.553943, -0.117087, 0.824281,
		-0.825245, -0.208127, 0.525027,
		26.169622, 42.177025, 54.354900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.012411, 41.895191, 54.420200>,  <26.747293, 42.322716, 53.987381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.012411, 41.895191, 54.420200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.620028, 41.824039, 54.389008>,  <26.384598, 41.781349, 54.370293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.620028, 41.824039, 54.389008>,  <27.012411, 41.895191, 54.420200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.620028, 41.824039, 54.389008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183179, -0.980786, -0.067107,
		-0.064550, -0.080115, 0.994693,
		-0.980958, -0.177876, -0.077986,
		26.325741, 41.770676, 54.365612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.954842, 41.345261, 54.907463>,  <27.012411, 41.895191, 54.420200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.954842, 41.345261, 54.907463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.642645, 41.379803, 54.659794>,  <26.455326, 41.400528, 54.511192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.642645, 41.379803, 54.659794>,  <26.954842, 41.345261, 54.907463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.642645, 41.379803, 54.659794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216563, -0.891743, -0.397360,
		-0.586458, -0.444226, 0.677297,
		-0.780492, 0.086358, -0.619172,
		26.408497, 41.405708, 54.474041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.714651, 40.760113, 54.853241>,  <26.954842, 41.345261, 54.907463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.714651, 40.760113, 54.853241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.587097, 40.924786, 54.511757>,  <26.510565, 41.023590, 54.306866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.587097, 40.924786, 54.511757>,  <26.714651, 40.760113, 54.853241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.587097, 40.924786, 54.511757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277897, -0.820540, -0.499488,
		-0.906138, -0.396523, 0.147250,
		-0.318883, 0.411685, -0.853715,
		26.491432, 41.048290, 54.255642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.290218, 40.271236, 54.682484>,  <26.714651, 40.760113, 54.853241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.290218, 40.271236, 54.682484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.361885, 40.483414, 54.351055>,  <26.404884, 40.610722, 54.152199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.361885, 40.483414, 54.351055>,  <26.290218, 40.271236, 54.682484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.361885, 40.483414, 54.351055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382483, -0.813499, -0.438094,
		-0.906425, -0.238421, -0.348640,
		0.179168, 0.530448, -0.828568,
		26.415636, 40.642548, 54.102486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.833664, 39.969528, 54.107372>,  <26.290218, 40.271236, 54.682484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.833664, 39.969528, 54.107372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.144505, 40.170532, 53.955795>,  <26.331009, 40.291134, 53.864849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.144505, 40.170532, 53.955795>,  <25.833664, 39.969528, 54.107372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.144505, 40.170532, 53.955795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271574, -0.810888, -0.518370,
		-0.567767, 0.299915, -0.766611,
		0.777102, 0.502506, -0.378946,
		26.377636, 40.321285, 53.842110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.765291, 39.910786, 53.335606>,  <25.833664, 39.969528, 54.107372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.765291, 39.910786, 53.335606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.139984, 40.028919, 53.410770>,  <26.364799, 40.099800, 53.455868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.139984, 40.028919, 53.410770>,  <25.765291, 39.910786, 53.335606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.139984, 40.028919, 53.410770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345089, -0.689109, -0.637214,
		-0.058704, 0.661744, -0.747428,
		0.936732, 0.295336, 0.187908,
		26.421003, 40.117519, 53.467144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.016241, 40.048008, 52.669724>,  <25.765291, 39.910786, 53.335606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.016241, 40.048008, 52.669724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.351410, 40.005112, 52.883785>,  <26.552511, 39.979374, 53.012222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.351410, 40.005112, 52.883785>,  <26.016241, 40.048008, 52.669724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.351410, 40.005112, 52.883785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423524, -0.490707, -0.761469,
		0.344260, 0.864700, -0.365757,
		0.837922, -0.107237, 0.535152,
		26.602787, 39.972942, 53.044331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.577072, 40.093800, 52.192730>,  <26.016241, 40.048008, 52.669724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.577072, 40.093800, 52.192730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.746756, 39.922813, 52.512058>,  <26.848566, 39.820221, 52.703655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.746756, 39.922813, 52.512058>,  <26.577072, 40.093800, 52.192730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.746756, 39.922813, 52.512058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719197, -0.376663, -0.583850,
		0.550274, 0.821826, 0.147647,
		0.424210, -0.427465, 0.798323,
		26.874020, 39.794575, 52.751556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.266911, 40.209728, 52.049259>,  <26.577072, 40.093800, 52.192730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.266911, 40.209728, 52.049259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.231537, 39.883404, 52.277866>,  <27.210312, 39.687611, 52.415031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.231537, 39.883404, 52.277866>,  <27.266911, 40.209728, 52.049259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.231537, 39.883404, 52.277866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747434, -0.433618, -0.503307,
		0.658423, 0.382662, 0.648111,
		-0.088437, -0.815809, 0.571519,
		27.205006, 39.638660, 52.449322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955544, 39.948311, 52.101696>,  <27.266911, 40.209728, 52.049259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.955544, 39.948311, 52.101696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.746765, 39.628048, 52.219353>,  <27.621498, 39.435890, 52.289948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.746765, 39.628048, 52.219353>,  <27.955544, 39.948311, 52.101696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.746765, 39.628048, 52.219353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681301, -0.598812, -0.421014,
		0.513225, -0.019347, 0.858036,
		-0.521947, -0.800656, 0.294144,
		27.590181, 39.387852, 52.307594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.457460, 39.345345, 52.390121>,  <27.955544, 39.948311, 52.101696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.457460, 39.345345, 52.390121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.118309, 39.165646, 52.277493>,  <27.914818, 39.057827, 52.209915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.118309, 39.165646, 52.277493>,  <28.457460, 39.345345, 52.390121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.118309, 39.165646, 52.277493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526773, -0.653582, -0.543452,
		0.060113, -0.609106, 0.790808,
		-0.847878, -0.449244, -0.281572,
		27.863945, 39.030872, 52.193020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597073, 38.603653, 52.537193>,  <28.457460, 39.345345, 52.390121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597073, 38.603653, 52.537193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.292473, 38.619469, 52.278408>,  <28.109713, 38.628960, 52.123138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.292473, 38.619469, 52.278408>,  <28.597073, 38.603653, 52.537193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.292473, 38.619469, 52.278408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398201, -0.759022, -0.515093,
		-0.511424, -0.649863, 0.562249,
		-0.761500, 0.039543, -0.646958,
		28.064024, 38.631332, 52.084320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515156, 37.847794, 52.358143>,  <28.597073, 38.603653, 52.537193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.515156, 37.847794, 52.358143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.315210, 38.072754, 52.094677>,  <28.195242, 38.207729, 51.936596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.315210, 38.072754, 52.094677>,  <28.515156, 37.847794, 52.358143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.315210, 38.072754, 52.094677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523558, -0.409602, -0.747070,
		-0.689943, -0.718284, -0.089704,
		-0.499865, 0.562401, -0.658665,
		28.165251, 38.241474, 51.897076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261610, 37.359230, 51.931885>,  <28.515156, 37.847794, 52.358143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.261610, 37.359230, 51.931885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.265371, 37.694374, 51.713562>,  <28.267628, 37.895462, 51.582569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.265371, 37.694374, 51.713562>,  <28.261610, 37.359230, 51.931885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.265371, 37.694374, 51.713562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529839, -0.467086, -0.707885,
		-0.848046, -0.282531, -0.448324,
		0.009406, 0.837859, -0.545806,
		28.268192, 37.945732, 51.549820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911591, 37.246658, 51.289131>,  <28.261610, 37.359230, 51.931885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.911591, 37.246658, 51.289131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.179321, 37.538319, 51.232086>,  <28.339960, 37.713314, 51.197861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.179321, 37.538319, 51.232086>,  <27.911591, 37.246658, 51.289131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.179321, 37.538319, 51.232086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417908, -0.528184, -0.739172,
		-0.614294, 0.435150, -0.658246,
		0.669325, 0.729155, -0.142608,
		28.380119, 37.757065, 51.189304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919357, 37.323696, 50.657200>,  <27.911591, 37.246658, 51.289131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919357, 37.323696, 50.657200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.251219, 37.545254, 50.685127>,  <28.450336, 37.678188, 50.701885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.251219, 37.545254, 50.685127>,  <27.919357, 37.323696, 50.657200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251219, 37.545254, 50.685127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366393, -0.445853, -0.816683,
		-0.421226, 0.703147, -0.572847,
		0.829654, 0.553895, 0.069823,
		28.500114, 37.711422, 50.706074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.993145, 37.681919, 49.956974>,  <27.919357, 37.323696, 50.657200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.993145, 37.681919, 49.956974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.339790, 37.661236, 50.155491>,  <28.547777, 37.648827, 50.274601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.339790, 37.661236, 50.155491>,  <27.993145, 37.681919, 49.956974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.339790, 37.661236, 50.155491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471216, -0.242356, -0.848068,
		0.164130, 0.968809, -0.185664,
		0.866612, -0.051706, 0.496296,
		28.599773, 37.645725, 50.304379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.370953, 37.986893, 49.503761>,  <27.993145, 37.681919, 49.956974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.370953, 37.986893, 49.503761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.607906, 37.799953, 49.766262>,  <28.750078, 37.687790, 49.923763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.607906, 37.799953, 49.766262>,  <28.370953, 37.986893, 49.503761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.607906, 37.799953, 49.766262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629339, -0.240133, -0.739100,
		0.503005, 0.850836, 0.151869,
		0.592384, -0.467348, 0.656252,
		28.785622, 37.659748, 49.963139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966244, 37.958050, 49.178020>,  <28.370953, 37.986893, 49.503761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966244, 37.958050, 49.178020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.021633, 37.672726, 49.452835>,  <29.054867, 37.501530, 49.617722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.021633, 37.672726, 49.452835>,  <28.966244, 37.958050, 49.178020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.021633, 37.672726, 49.452835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751283, -0.376346, -0.542160,
		0.645290, 0.591231, 0.483783,
		0.138472, -0.713309, 0.687034,
		29.063175, 37.458733, 49.658947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700371, 37.850468, 49.250893>,  <28.966244, 37.958050, 49.178020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.700371, 37.850468, 49.250893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.530439, 37.511887, 49.379295>,  <29.428480, 37.308739, 49.456337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.530439, 37.511887, 49.379295>,  <29.700371, 37.850468, 49.250893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.530439, 37.511887, 49.379295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674629, -0.532470, -0.511225,
		0.603652, -0.000623, 0.797248,
		-0.424829, -0.846449, 0.321006,
		29.402990, 37.257954, 49.475597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.296604, 37.442417, 49.453529>,  <29.700371, 37.850468, 49.250893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.296604, 37.442417, 49.453529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.001883, 37.175617, 49.409283>,  <29.825050, 37.015537, 49.382732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.001883, 37.175617, 49.409283>,  <30.296604, 37.442417, 49.453529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.001883, 37.175617, 49.409283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611674, -0.587893, -0.529374,
		0.288058, -0.457708, 0.841146,
		-0.736802, -0.666997, -0.110621,
		29.780842, 36.975517, 49.376095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.535795, 36.807827, 49.639935>,  <30.296604, 37.442417, 49.453529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.535795, 36.807827, 49.639935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.222893, 36.724113, 49.405235>,  <30.035151, 36.673885, 49.264416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.222893, 36.724113, 49.405235>,  <30.535795, 36.807827, 49.639935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222893, 36.724113, 49.405235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544908, -0.686348, -0.481665,
		-0.301905, -0.696509, 0.650944,
		-0.782259, -0.209288, -0.586745,
		29.988214, 36.661327, 49.229210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651777, 36.062824, 49.527252>,  <30.535795, 36.807827, 49.639935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651777, 36.062824, 49.527252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.363718, 36.164589, 49.269054>,  <30.190882, 36.225647, 49.114136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.363718, 36.164589, 49.269054>,  <30.651777, 36.062824, 49.527252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363718, 36.164589, 49.269054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264432, -0.759483, -0.594358,
		-0.641452, -0.598715, 0.479667,
		-0.720149, 0.254413, -0.645491,
		30.147673, 36.240913, 49.075409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330412, 35.374493, 49.268032>,  <30.651777, 36.062824, 49.527252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.330412, 35.374493, 49.268032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.251295, 35.650856, 48.989891>,  <30.203825, 35.816673, 48.823006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.251295, 35.650856, 48.989891>,  <30.330412, 35.374493, 49.268032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251295, 35.650856, 48.989891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236367, -0.654821, -0.717872,
		-0.951320, -0.306348, -0.033791,
		-0.197792, 0.690913, -0.695354,
		30.191957, 35.858131, 48.781284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.845352, 35.043926, 48.750332>,  <30.330412, 35.374493, 49.268032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.845352, 35.043926, 48.750332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.016781, 35.354134, 48.564903>,  <30.119638, 35.540257, 48.453648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.016781, 35.354134, 48.564903>,  <29.845352, 35.043926, 48.750332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016781, 35.354134, 48.564903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383635, -0.620729, -0.683755,
		-0.818016, 0.115196, -0.563542,
		0.428573, 0.775517, -0.463573,
		30.145353, 35.586788, 48.425831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.353928, 35.123497, 48.173565>,  <29.845352, 35.043926, 48.750332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.353928, 35.123497, 48.173565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.720718, 35.265594, 48.100952>,  <29.940792, 35.350853, 48.057384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.720718, 35.265594, 48.100952>,  <29.353928, 35.123497, 48.173565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.720718, 35.265594, 48.100952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168418, -0.757209, -0.631086,
		-0.361647, 0.548119, -0.754173,
		0.916977, 0.355247, -0.181529,
		29.995811, 35.372169, 48.046494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544497, 34.943882, 47.476109>,  <29.353928, 35.123497, 48.173565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544497, 34.943882, 47.476109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.904285, 35.027081, 47.629829>,  <30.120159, 35.077000, 47.722061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.904285, 35.027081, 47.629829>,  <29.544497, 34.943882, 47.476109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904285, 35.027081, 47.629829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369877, -0.830682, -0.416123,
		0.232677, 0.516434, -0.824110,
		0.899473, 0.207997, 0.384298,
		30.174128, 35.089481, 47.745117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.014923, 34.703747, 46.973728>,  <29.544497, 34.943882, 47.476109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.014923, 34.703747, 46.973728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.234318, 34.733833, 47.306835>,  <30.365953, 34.751884, 47.506699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.234318, 34.733833, 47.306835>,  <30.014923, 34.703747, 46.973728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234318, 34.733833, 47.306835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499580, -0.828119, -0.254243,
		0.670511, 0.555484, -0.491785,
		0.548485, 0.075213, 0.832771,
		30.398863, 34.756397, 47.556667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702951, 34.677956, 46.773972>,  <30.014923, 34.703747, 46.973728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702951, 34.677956, 46.773972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.676350, 34.526398, 47.143188>,  <30.660389, 34.435463, 47.364719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.676350, 34.526398, 47.143188>,  <30.702951, 34.677956, 46.773972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676350, 34.526398, 47.143188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507175, -0.809509, -0.295751,
		0.859273, 0.448477, 0.246004,
		-0.066505, -0.378898, 0.923046,
		30.656399, 34.412727, 47.420101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279163, 34.248734, 46.795841>,  <30.702951, 34.677956, 46.773972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279163, 34.248734, 46.795841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.087967, 34.125408, 47.124832>,  <30.973249, 34.051411, 47.322227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.087967, 34.125408, 47.124832>,  <31.279163, 34.248734, 46.795841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087967, 34.125408, 47.124832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352548, -0.924980, -0.141855,
		0.804509, 0.222157, 0.550828,
		-0.477991, -0.308317, 0.822476,
		30.944571, 34.032913, 47.371574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730978, 33.867767, 47.248035>,  <31.279163, 34.248734, 46.795841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730978, 33.867767, 47.248035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.379408, 33.709923, 47.355202>,  <31.168467, 33.615215, 47.419502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.379408, 33.709923, 47.355202>,  <31.730978, 33.867767, 47.248035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379408, 33.709923, 47.355202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411732, -0.911265, 0.008545,
		0.240771, 0.117820, 0.963404,
		-0.878923, -0.394607, 0.267917,
		31.115730, 33.591541, 47.435577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.908930, 33.279110, 47.765129>,  <31.730978, 33.867767, 47.248035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.908930, 33.279110, 47.765129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.529284, 33.221512, 47.653099>,  <31.301495, 33.186954, 47.585880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.529284, 33.221512, 47.653099>,  <31.908930, 33.279110, 47.765129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529284, 33.221512, 47.653099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114485, -0.986259, 0.119105,
		-0.293375, 0.080981, 0.952562,
		-0.949118, -0.143996, -0.280073,
		31.244549, 33.178314, 47.569077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585491, 32.943626, 48.402660>,  <31.908930, 33.279110, 47.765129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585491, 32.943626, 48.402660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.406769, 32.852997, 48.056473>,  <31.299536, 32.798618, 47.848763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.406769, 32.852997, 48.056473>,  <31.585491, 32.943626, 48.402660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406769, 32.852997, 48.056473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166906, -0.971524, 0.168174,
		-0.878925, -0.069310, 0.471898,
		-0.446804, -0.226575, -0.865465,
		31.272728, 32.785023, 47.796833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150297, 32.341316, 48.569923>,  <31.585491, 32.943626, 48.402660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150297, 32.341316, 48.569923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.198330, 32.350471, 48.172924>,  <31.227150, 32.355965, 47.934723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.198330, 32.350471, 48.172924>,  <31.150297, 32.341316, 48.569923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198330, 32.350471, 48.172924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215603, -0.976475, 0.003566,
		-0.969069, -0.214414, -0.122193,
		0.120083, 0.022889, -0.992500,
		31.234354, 32.357338, 47.875175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816589, 31.682348, 48.266331>,  <31.150297, 32.341316, 48.569923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816589, 31.682348, 48.266331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.074911, 31.808834, 47.988354>,  <31.229904, 31.884726, 47.821568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.074911, 31.808834, 47.988354>,  <30.816589, 31.682348, 48.266331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074911, 31.808834, 47.988354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276668, -0.945263, -0.173011,
		-0.711612, -0.080537, -0.697942,
		0.645805, 0.316215, -0.694942,
		31.268652, 31.903698, 47.779873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734119, 31.201857, 47.753429>,  <30.816589, 31.682348, 48.266331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734119, 31.201857, 47.753429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.080212, 31.389999, 47.683983>,  <31.287867, 31.502886, 47.642315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.080212, 31.389999, 47.683983>,  <30.734119, 31.201857, 47.753429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080212, 31.389999, 47.683983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379450, -0.840647, -0.386433,
		-0.327713, 0.268474, -0.905829,
		0.865229, 0.470356, -0.173618,
		31.339781, 31.531107, 47.631897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040342, 30.739458, 47.242107>,  <30.734119, 31.201857, 47.753429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040342, 30.739458, 47.242107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.343805, 30.963848, 47.374622>,  <31.525883, 31.098482, 47.454132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.343805, 30.963848, 47.374622>,  <31.040342, 30.739458, 47.242107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343805, 30.963848, 47.374622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622730, -0.773831, -0.115729,
		0.191437, 0.294099, -0.936407,
		0.758656, 0.560973, 0.331284,
		31.571402, 31.132141, 47.474007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599415, 30.697802, 46.755047>,  <31.040342, 30.739458, 47.242107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599415, 30.697802, 46.755047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.814009, 30.813608, 47.072124>,  <31.942764, 30.883093, 47.262371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.814009, 30.813608, 47.072124>,  <31.599415, 30.697802, 46.755047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814009, 30.813608, 47.072124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599877, -0.791506, -0.116902,
		0.593577, 0.538236, -0.598305,
		0.536483, 0.289519, 0.792695,
		31.974953, 30.900463, 47.309933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275986, 30.656591, 46.510757>,  <31.599415, 30.697802, 46.755047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275986, 30.656591, 46.510757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.254555, 30.625690, 46.908985>,  <32.241695, 30.607149, 47.147923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.254555, 30.625690, 46.908985>,  <32.275986, 30.656591, 46.510757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254555, 30.625690, 46.908985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547702, -0.835925, -0.035391,
		0.834956, 0.543380, 0.087097,
		-0.053576, -0.077253, 0.995571,
		32.238483, 30.602514, 47.207657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950226, 30.429520, 46.807915>,  <32.275986, 30.656591, 46.510757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950226, 30.429520, 46.807915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.670277, 30.303825, 47.064484>,  <32.502304, 30.228409, 47.218426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.670277, 30.303825, 47.064484>,  <32.950226, 30.429520, 46.807915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670277, 30.303825, 47.064484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541686, -0.818851, 0.189893,
		0.465561, 0.480353, 0.743313,
		-0.699878, -0.314236, 0.641426,
		32.460312, 30.209555, 47.256912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089470, 30.305311, 47.547607>,  <32.950226, 30.429520, 46.807915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089470, 30.305311, 47.547607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.793957, 30.067999, 47.419720>,  <32.616650, 29.925611, 47.342987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.793957, 30.067999, 47.419720>,  <33.089470, 30.305311, 47.547607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793957, 30.067999, 47.419720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638909, -0.767514, -0.052118,
		-0.214468, -0.242775, 0.946078,
		-0.738781, -0.593280, -0.319719,
		32.572323, 29.890015, 47.323803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189571, 30.989721, 47.844952>,  <33.089470, 30.305311, 47.547607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189571, 30.989721, 47.844952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.496300, 31.038145, 47.592815>,  <33.680336, 31.067200, 47.441536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.496300, 31.038145, 47.592815>,  <33.189571, 30.989721, 47.844952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496300, 31.038145, 47.592815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635805, -0.008725, 0.771800,
		0.087936, -0.992607, -0.083663,
		0.766824, 0.121062, -0.630337,
		33.726345, 31.074463, 47.403713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717445, 30.727003, 48.268555>,  <33.189571, 30.989721, 47.844952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717445, 30.727003, 48.268555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.921932, 30.855009, 47.949493>,  <34.044624, 30.931812, 47.758057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.921932, 30.855009, 47.949493>,  <33.717445, 30.727003, 48.268555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921932, 30.855009, 47.949493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757153, 0.271446, 0.594169,
		0.406663, -0.907693, -0.103534,
		0.511219, 0.320017, -0.797649,
		34.075298, 30.951014, 47.710197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422607, 30.350559, 48.183254>,  <33.717445, 30.727003, 48.268555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422607, 30.350559, 48.183254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.406967, 30.721432, 48.034229>,  <34.397583, 30.943956, 47.944813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.406967, 30.721432, 48.034229>,  <34.422607, 30.350559, 48.183254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406967, 30.721432, 48.034229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932666, 0.167674, 0.319404,
		0.358616, -0.334987, -0.871308,
		-0.039100, 0.927183, -0.372562,
		34.395237, 30.999586, 47.922462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179993, 30.370125, 48.322464>,  <34.422607, 30.350559, 48.183254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179993, 30.370125, 48.322464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.035210, 30.723679, 48.203987>,  <34.948338, 30.935812, 48.132900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.035210, 30.723679, 48.203987>,  <35.179993, 30.370125, 48.322464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035210, 30.723679, 48.203987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913157, 0.400080, 0.077979,
		0.187425, -0.242243, -0.951940,
		-0.361962, 0.883886, -0.296191,
		34.926620, 30.988844, 48.115131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610996, 30.686182, 47.776886>,  <35.179993, 30.370125, 48.322464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610996, 30.686182, 47.776886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.407093, 31.004103, 47.908604>,  <35.284752, 31.194855, 47.987637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.407093, 31.004103, 47.908604>,  <35.610996, 30.686182, 47.776886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407093, 31.004103, 47.908604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833480, 0.551106, -0.039928,
		-0.213212, 0.254108, -0.943382,
		-0.509757, 0.794803, 0.329296,
		35.254166, 31.242544, 48.007393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781723, 31.218966, 47.313522>,  <35.610996, 30.686182, 47.776886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781723, 31.218966, 47.313522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.650318, 31.390120, 47.650330>,  <35.571476, 31.492813, 47.852413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.650318, 31.390120, 47.650330>,  <35.781723, 31.218966, 47.313522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650318, 31.390120, 47.650330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822145, 0.568382, 0.031921,
		-0.464930, 0.702748, -0.538503,
		-0.328508, 0.427886, 0.842019,
		35.551765, 31.518486, 47.902935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933949, 31.909563, 47.196159>,  <35.781723, 31.218966, 47.313522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933949, 31.909563, 47.196159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.871567, 31.930141, 47.590729>,  <35.834137, 31.942488, 47.827469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.871567, 31.930141, 47.590729>,  <35.933949, 31.909563, 47.196159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871567, 31.930141, 47.590729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858692, 0.500623, 0.109654,
		-0.488185, 0.864135, -0.122250,
		-0.155957, 0.051443, 0.986423,
		35.824780, 31.945574, 47.886654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059391, 32.560066, 47.383366>,  <35.933949, 31.909563, 47.196159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059391, 32.560066, 47.383366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.094055, 32.355705, 47.725471>,  <36.114853, 32.233089, 47.930733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.094055, 32.355705, 47.725471>,  <36.059391, 32.560066, 47.383366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094055, 32.355705, 47.725471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826353, 0.516369, 0.224729,
		-0.556444, 0.687272, 0.466933,
		0.086660, -0.510901, 0.855260,
		36.120052, 32.202435, 47.982048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221001, 33.051762, 47.816174>,  <36.059391, 32.560066, 47.383366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221001, 33.051762, 47.816174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.346355, 32.708187, 47.978168>,  <36.421570, 32.502041, 48.075367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.346355, 32.708187, 47.978168>,  <36.221001, 33.051762, 47.816174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346355, 32.708187, 47.978168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886924, 0.417139, 0.198394,
		-0.339344, 0.297018, 0.892539,
		0.313386, -0.858938, 0.404987,
		36.440372, 32.450504, 48.099663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659042, 33.205551, 48.400330>,  <36.221001, 33.051762, 47.816174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659042, 33.205551, 48.400330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.790363, 32.828545, 48.375393>,  <36.869156, 32.602341, 48.360432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.790363, 32.828545, 48.375393>,  <36.659042, 33.205551, 48.400330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790363, 32.828545, 48.375393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936669, 0.333364, -0.107332,
		0.121945, -0.023158, 0.992267,
		0.328300, -0.942514, -0.062344,
		36.888855, 32.545792, 48.356689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186790, 33.046181, 48.907066>,  <36.659042, 33.205551, 48.400330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186790, 33.046181, 48.907066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.250362, 32.810944, 48.589855>,  <37.288506, 32.669800, 48.399529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.250362, 32.810944, 48.589855>,  <37.186790, 33.046181, 48.907066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250362, 32.810944, 48.589855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941501, 0.332056, -0.057567,
		0.297183, -0.737485, 0.606464,
		0.158925, -0.588095, -0.793024,
		37.298038, 32.634514, 48.351948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828011, 32.923035, 49.087154>,  <37.186790, 33.046181, 48.907066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828011, 32.923035, 49.087154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.804035, 32.807636, 48.704914>,  <37.789650, 32.738400, 48.475571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.804035, 32.807636, 48.704914>,  <37.828011, 32.923035, 49.087154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804035, 32.807636, 48.704914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923669, 0.346946, -0.162678,
		0.378474, -0.892413, 0.245676,
		-0.059939, -0.288492, -0.955604,
		37.786053, 32.721088, 48.418232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514091, 32.580769, 48.942463>,  <37.828011, 32.923035, 49.087154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514091, 32.580769, 48.942463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.349754, 32.681175, 48.591873>,  <38.251152, 32.741421, 48.381519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.349754, 32.681175, 48.591873>,  <38.514091, 32.580769, 48.942463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349754, 32.681175, 48.591873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886433, 0.334774, -0.319630,
		0.213186, -0.908249, -0.360049,
		-0.410839, 0.251019, -0.876471,
		38.226501, 32.756481, 48.328934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974945, 32.416630, 48.532696>,  <38.514091, 32.580769, 48.942463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974945, 32.416630, 48.532696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.749668, 32.668793, 48.319004>,  <38.614502, 32.820091, 48.190788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.749668, 32.668793, 48.319004>,  <38.974945, 32.416630, 48.532696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749668, 32.668793, 48.319004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826293, 0.435723, -0.356913,
		0.007774, -0.642439, -0.766298,
		-0.563188, 0.630412, -0.534229,
		38.580711, 32.857918, 48.158733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264458, 32.416451, 47.873901>,  <38.974945, 32.416630, 48.532696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264458, 32.416451, 47.873901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.043659, 32.748821, 47.901806>,  <38.911182, 32.948242, 47.918549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.043659, 32.748821, 47.901806>,  <39.264458, 32.416451, 47.873901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043659, 32.748821, 47.901806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720150, 0.517231, -0.462445,
		-0.420341, -0.205026, -0.883899,
		-0.551994, 0.830925, 0.069764,
		38.878059, 32.998100, 47.922733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185261, 32.676537, 47.203991>,  <39.264458, 32.416451, 47.873901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185261, 32.676537, 47.203991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.097614, 32.986183, 47.441555>,  <39.045025, 33.171970, 47.584095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.097614, 32.986183, 47.441555>,  <39.185261, 32.676537, 47.203991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097614, 32.986183, 47.441555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757165, 0.518822, -0.396894,
		-0.615378, 0.362725, -0.699815,
		-0.219116, 0.774115, 0.593914,
		39.031879, 33.218418, 47.619728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724701, 33.003819, 46.729641>,  <39.185261, 32.676537, 47.203991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724701, 33.003819, 46.729641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.097256, 32.990208, 46.584671>,  <40.320789, 32.982040, 46.497688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.097256, 32.990208, 46.584671>,  <39.724701, 33.003819, 46.729641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097256, 32.990208, 46.584671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157872, -0.859357, 0.486397,
		-0.328008, -0.510243, -0.795024,
		0.931390, -0.034030, -0.362429,
		40.376671, 32.980000, 46.475941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864468, 32.424179, 46.268097>,  <39.724701, 33.003819, 46.729641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864468, 32.424179, 46.268097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.192928, 32.564663, 46.448036>,  <40.390003, 32.648952, 46.556000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.192928, 32.564663, 46.448036>,  <39.864468, 32.424179, 46.268097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192928, 32.564663, 46.448036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155521, -0.896095, 0.415725,
		0.549114, -0.271411, -0.790449,
		0.821150, 0.351212, 0.449848,
		40.439274, 32.670025, 46.582989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520473, 31.997278, 46.275402>,  <39.864468, 32.424179, 46.268097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520473, 31.997278, 46.275402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.777676, 31.918890, 45.979256>,  <40.931995, 31.871857, 45.801567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.777676, 31.918890, 45.979256>,  <40.520473, 31.997278, 46.275402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777676, 31.918890, 45.979256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629496, 0.685844, 0.365176,
		0.436209, -0.700866, 0.564365,
		0.643006, -0.195972, -0.740363,
		40.970577, 31.860098, 45.757145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185246, 31.926992, 46.609585>,  <40.520473, 31.997278, 46.275402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.185246, 31.926992, 46.609585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.208805, 32.044373, 46.227921>,  <41.222942, 32.114799, 45.998924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.208805, 32.044373, 46.227921>,  <41.185246, 31.926992, 46.609585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208805, 32.044373, 46.227921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716510, 0.653103, 0.245092,
		0.695086, -0.698099, -0.171794,
		0.058899, 0.293452, -0.954158,
		41.226475, 32.132408, 45.941673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846226, 31.749578, 46.264820>,  <41.185246, 31.926992, 46.609585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846226, 31.749578, 46.264820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.691872, 32.073601, 46.088230>,  <41.599258, 32.268013, 45.982277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.691872, 32.073601, 46.088230>,  <41.846226, 31.749578, 46.264820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691872, 32.073601, 46.088230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804369, 0.529762, 0.268965,
		0.451754, -0.251319, -0.856012,
		-0.385887, 0.810056, -0.441475,
		41.576107, 32.316616, 45.955788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388222, 32.178036, 46.074406>,  <41.846226, 31.749578, 46.264820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.388222, 32.178036, 46.074406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.078785, 32.423859, 46.012604>,  <41.893124, 32.571350, 45.975521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.078785, 32.423859, 46.012604>,  <42.388222, 32.178036, 46.074406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.078785, 32.423859, 46.012604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571096, 0.781806, 0.250256,
		0.274590, 0.105360, -0.955772,
		-0.773595, 0.614555, -0.154506,
		41.846706, 32.608227, 45.966251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.637016, 32.698280, 45.716557>,  <42.388222, 32.178036, 46.074406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.637016, 32.698280, 45.716557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.303772, 32.849518, 45.878040>,  <42.103825, 32.940262, 45.974930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.303772, 32.849518, 45.878040>,  <42.637016, 32.698280, 45.716557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.303772, 32.849518, 45.878040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545020, 0.685562, 0.482658,
		-0.094276, 0.622134, -0.777214,
		-0.833106, 0.378093, 0.403707,
		42.053841, 32.962944, 45.999153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536896, 33.357758, 45.418262>,  <42.637016, 32.698280, 45.716557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536896, 33.357758, 45.418262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.373886, 33.356396, 45.783539>,  <42.276081, 33.355579, 46.002705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.373886, 33.356396, 45.783539>,  <42.536896, 33.357758, 45.418262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.373886, 33.356396, 45.783539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660634, 0.689291, 0.297389,
		-0.630463, 0.724477, -0.278658,
		-0.407528, -0.003402, 0.913186,
		42.251629, 33.355373, 46.057495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.772526, 34.038719, 45.519039>,  <42.536896, 33.357758, 45.418262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.772526, 34.038719, 45.519039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.655716, 33.844509, 45.848640>,  <42.585629, 33.727982, 46.046402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.655716, 33.844509, 45.848640>,  <42.772526, 34.038719, 45.519039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.655716, 33.844509, 45.848640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707642, 0.469902, 0.527669,
		-0.643400, 0.737193, 0.206357,
		-0.292026, -0.485529, 0.824004,
		42.568108, 33.698849, 46.095840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114403, 33.865379, 45.860260>,  <42.772526, 34.038719, 45.519039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114403, 33.865379, 45.860260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.070068, 33.587105, 45.576363>,  <42.043468, 33.420139, 45.406025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.070068, 33.587105, 45.576363>,  <42.114403, 33.865379, 45.860260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070068, 33.587105, 45.576363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920277, -0.197799, 0.337588,
		-0.375242, 0.690577, -0.618301,
		-0.110832, -0.695686, -0.709745,
		42.036819, 33.378399, 45.363438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566704, 34.015694, 45.516876>,  <42.114403, 33.865379, 45.860260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566704, 34.015694, 45.516876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.631638, 33.621532, 45.496338>,  <41.670597, 33.385036, 45.484016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.631638, 33.621532, 45.496338>,  <41.566704, 34.015694, 45.516876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631638, 33.621532, 45.496338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913035, -0.169736, 0.370887,
		-0.374186, -0.013329, -0.927258,
		0.162332, -0.985399, -0.051343,
		41.680336, 33.325912, 45.480934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169350, 33.702660, 45.079521>,  <41.566704, 34.015694, 45.516876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169350, 33.702660, 45.079521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.242237, 33.425362, 45.358437>,  <41.285969, 33.258984, 45.525784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.242237, 33.425362, 45.358437>,  <41.169350, 33.702660, 45.079521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.242237, 33.425362, 45.358437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979913, -0.069587, 0.186893,
		-0.081042, -0.717330, -0.692005,
		0.182218, -0.693250, 0.697281,
		41.296902, 33.217388, 45.567623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963303, 34.330391, 44.818237>,  <41.169350, 33.702660, 45.079521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963303, 34.330391, 44.818237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.794159, 34.385906, 44.460037>,  <40.692673, 34.419216, 44.245117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.794159, 34.385906, 44.460037>,  <40.963303, 34.330391, 44.818237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794159, 34.385906, 44.460037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899402, 0.056486, 0.433458,
		0.110743, 0.988710, 0.100941,
		-0.422862, 0.138789, -0.895503,
		40.667301, 34.427544, 44.191387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340584, 34.473736, 44.134998>,  <40.963303, 34.330391, 44.818237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340584, 34.473736, 44.134998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.994926, 34.431946, 43.938087>,  <40.787533, 34.406872, 43.819942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.994926, 34.431946, 43.938087>,  <41.340584, 34.473736, 44.134998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994926, 34.431946, 43.938087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451759, 0.269960, -0.850315,
		0.221724, -0.957188, -0.186091,
		-0.864148, -0.104467, -0.492275,
		40.735683, 34.400604, 43.790405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.694500, 34.375076, 43.415344>,  <41.340584, 34.473736, 44.134998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.694500, 34.375076, 43.415344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.307617, 34.456264, 43.354259>,  <41.075489, 34.504978, 43.317608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.307617, 34.456264, 43.354259>,  <41.694500, 34.375076, 43.415344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307617, 34.456264, 43.354259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232363, 0.464215, -0.854700,
		-0.102592, -0.862152, -0.496153,
		-0.967203, 0.202973, -0.152707,
		41.017456, 34.517155, 43.308449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526024, 34.117035, 42.717678>,  <41.694500, 34.375076, 43.415344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526024, 34.117035, 42.717678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.334923, 34.431225, 42.875046>,  <41.220261, 34.619740, 42.969467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.334923, 34.431225, 42.875046>,  <41.526024, 34.117035, 42.717678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334923, 34.431225, 42.875046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274769, 0.558968, -0.782340,
		-0.834418, -0.265668, -0.482874,
		-0.477754, 0.785478, 0.393416,
		41.191597, 34.666866, 42.993069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352108, 34.501411, 42.143578>,  <41.526024, 34.117035, 42.717678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352108, 34.501411, 42.143578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.284111, 34.769371, 42.432667>,  <41.243313, 34.930149, 42.606121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.284111, 34.769371, 42.432667>,  <41.352108, 34.501411, 42.143578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.284111, 34.769371, 42.432667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106205, 0.741583, -0.662401,
		-0.979705, -0.035848, -0.197213,
		-0.169996, 0.669903, 0.722725,
		41.233112, 34.970341, 42.649483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802433, 34.917244, 41.932281>,  <41.352108, 34.501411, 42.143578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802433, 34.917244, 41.932281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.038540, 35.105812, 42.194382>,  <41.180202, 35.218952, 42.351643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.038540, 35.105812, 42.194382>,  <40.802433, 34.917244, 41.932281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038540, 35.105812, 42.194382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166494, 0.723185, -0.670286,
		-0.789853, 0.504740, 0.348380,
		0.590264, 0.471424, 0.655246,
		41.215618, 35.247238, 42.390957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533783, 35.534317, 42.024963>,  <40.802433, 34.917244, 41.932281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533783, 35.534317, 42.024963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.931759, 35.508636, 42.055897>,  <41.170544, 35.493229, 42.074455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.931759, 35.508636, 42.055897>,  <40.533783, 35.534317, 42.024963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931759, 35.508636, 42.055897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099640, 0.528984, -0.842762,
		0.013199, 0.846200, 0.532702,
		0.994936, -0.064202, 0.077333,
		41.230240, 35.489376, 42.079098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796589, 36.161926, 41.722713>,  <40.533783, 35.534317, 42.024963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796589, 36.161926, 41.722713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.099728, 35.901413, 41.707218>,  <41.281609, 35.745106, 41.697922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.099728, 35.901413, 41.707218>,  <40.796589, 36.161926, 41.722713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099728, 35.901413, 41.707218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267184, 0.363977, -0.892263,
		0.595218, 0.665845, 0.449851,
		0.757844, -0.651284, -0.038743,
		41.327080, 35.706028, 41.695595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438847, 36.499584, 41.368332>,  <40.796589, 36.161926, 41.722713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438847, 36.499584, 41.368332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.516781, 36.108505, 41.336975>,  <41.563541, 35.873856, 41.318161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.516781, 36.108505, 41.336975>,  <41.438847, 36.499584, 41.368332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516781, 36.108505, 41.336975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321231, 0.139117, -0.936726,
		0.926742, 0.157324, 0.341172,
		0.194833, -0.977699, -0.078388,
		41.575230, 35.815197, 41.313457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.185364, 36.337688, 41.172878>,  <41.438847, 36.499584, 41.368332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.185364, 36.337688, 41.172878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.926071, 36.066650, 41.033936>,  <41.770496, 35.904026, 40.950569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.926071, 36.066650, 41.033936>,  <42.185364, 36.337688, 41.172878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.926071, 36.066650, 41.033936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484190, -0.014741, -0.874838,
		0.587665, -0.735288, 0.337640,
		-0.648236, -0.677594, -0.347357,
		41.731602, 35.863373, 40.929729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575996, 35.692486, 40.763229>,  <42.185364, 36.337688, 41.172878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575996, 35.692486, 40.763229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.208183, 35.781738, 40.633816>,  <41.987495, 35.835289, 40.556168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.208183, 35.781738, 40.633816>,  <42.575996, 35.692486, 40.763229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208183, 35.781738, 40.633816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334008, 0.009831, -0.942519,
		-0.207123, -0.974739, -0.083567,
		-0.919532, 0.223129, -0.323534,
		41.932323, 35.848679, 40.536755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291466, 35.117195, 40.226151>,  <42.575996, 35.692486, 40.763229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.291466, 35.117195, 40.226151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.237473, 35.513458, 40.218327>,  <42.205078, 35.751217, 40.213631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.237473, 35.513458, 40.218327>,  <42.291466, 35.117195, 40.226151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.237473, 35.513458, 40.218327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634998, 0.071331, -0.769214,
		-0.760630, -0.116251, -0.638692,
		-0.134980, 0.990655, -0.019563,
		42.196980, 35.810654, 40.212460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110252, 35.366112, 39.537067>,  <42.291466, 35.117195, 40.226151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110252, 35.366112, 39.537067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.328533, 35.649944, 39.715370>,  <42.459503, 35.820244, 39.822350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.328533, 35.649944, 39.715370>,  <42.110252, 35.366112, 39.537067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.328533, 35.649944, 39.715370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578195, 0.066191, -0.813210,
		-0.606544, 0.701507, -0.374156,
		0.545706, 0.709582, 0.445755,
		42.492245, 35.862820, 39.849098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.241741, 35.822018, 39.010620>,  <42.110252, 35.366112, 39.537067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.241741, 35.822018, 39.010620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.510750, 35.857857, 39.304474>,  <42.672153, 35.879360, 39.480785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.510750, 35.857857, 39.304474>,  <42.241741, 35.822018, 39.010620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510750, 35.857857, 39.304474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740077, -0.081909, -0.667515,
		0.000367, 0.992604, -0.121393,
		0.672522, 0.089595, 0.734634,
		42.712505, 35.884735, 39.524864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.622326, 36.373310, 38.788158>,  <42.241741, 35.822018, 39.010620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.622326, 36.373310, 38.788158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.850048, 36.146809, 39.026569>,  <42.986679, 36.010906, 39.169617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.850048, 36.146809, 39.026569>,  <42.622326, 36.373310, 38.788158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.850048, 36.146809, 39.026569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751765, 0.065099, -0.656209,
		0.332782, 0.821654, 0.462753,
		0.569302, -0.566257, 0.596027,
		43.020840, 35.976933, 39.205376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.275917, 36.673512, 39.025333>,  <42.622326, 36.373310, 38.788158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.275917, 36.673512, 39.025333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.321690, 36.277653, 38.990669>,  <43.349152, 36.040138, 38.969872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.321690, 36.277653, 38.990669>,  <43.275917, 36.673512, 39.025333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.321690, 36.277653, 38.990669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810768, 0.143443, -0.567520,
		0.574074, -0.005322, 0.818786,
		0.114429, -0.989644, -0.086662,
		43.356018, 35.980759, 38.964672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.999519, 36.436787, 39.075768>,  <43.275917, 36.673512, 39.025333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.999519, 36.436787, 39.075768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.816715, 36.136620, 38.884766>,  <43.707031, 35.956520, 38.770164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.816715, 36.136620, 38.884766>,  <43.999519, 36.436787, 39.075768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.816715, 36.136620, 38.884766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721418, 0.001302, -0.692498,
		0.520286, -0.660960, 0.540772,
		-0.457009, -0.750420, -0.477506,
		43.679611, 35.911495, 38.741512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.420269, 35.681107, 38.970535>,  <43.999519, 36.436787, 39.075768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.420269, 35.681107, 38.970535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.190510, 35.815083, 38.671768>,  <44.052654, 35.895466, 38.492508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.190510, 35.815083, 38.671768>,  <44.420269, 35.681107, 38.970535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.190510, 35.815083, 38.671768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776329, -0.066460, -0.626814,
		-0.259583, -0.939894, -0.221846,
		-0.574395, 0.334936, -0.746919,
		44.018192, 35.915562, 38.447693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.284512, 35.292534, 38.295120>,  <44.420269, 35.681107, 38.970535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.284512, 35.292534, 38.295120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.320343, 35.683174, 38.216911>,  <44.341843, 35.917557, 38.169987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.320343, 35.683174, 38.216911>,  <44.284512, 35.292534, 38.295120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.320343, 35.683174, 38.216911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948940, -0.143307, -0.281027,
		-0.302471, -0.160369, -0.939571,
		0.089579, 0.976599, -0.195527,
		44.347218, 35.976154, 38.158253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.261951, 35.736839, 37.569969>,  <44.284512, 35.292534, 38.295120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.261951, 35.736839, 37.569969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.503746, 35.872742, 37.858181>,  <44.648823, 35.954285, 38.031109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.503746, 35.872742, 37.858181>,  <44.261951, 35.736839, 37.569969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.503746, 35.872742, 37.858181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796365, -0.280440, -0.535869,
		0.019998, 0.897729, -0.440094,
		0.604485, 0.339759, 0.720528,
		44.685093, 35.974670, 38.074341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.735065, 36.193317, 37.198421>,  <44.261951, 35.736839, 37.569969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.735065, 36.193317, 37.198421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.864750, 36.002285, 37.525055>,  <44.942558, 35.887665, 37.721035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.864750, 36.002285, 37.525055>,  <44.735065, 36.193317, 37.198421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.864750, 36.002285, 37.525055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836939, -0.257537, -0.482915,
		0.440933, 0.839992, 0.316214,
		0.324209, -0.477585, 0.816579,
		44.962013, 35.859009, 37.770027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.407894, 36.472763, 37.525909>,  <44.735065, 36.193317, 37.198421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.407894, 36.472763, 37.525909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.342049, 36.079731, 37.560406>,  <45.302540, 35.843910, 37.581104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.342049, 36.079731, 37.560406>,  <45.407894, 36.472763, 37.525909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.342049, 36.079731, 37.560406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793492, -0.183852, -0.580145,
		0.585894, -0.027071, 0.809935,
		-0.164613, -0.982581, 0.086237,
		45.292664, 35.784958, 37.586277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.879246, 36.202408, 37.986874>,  <45.407894, 36.472763, 37.525909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.879246, 36.202408, 37.986874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.729809, 36.037262, 37.654617>,  <45.640148, 35.938175, 37.455261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.729809, 36.037262, 37.654617>,  <45.879246, 36.202408, 37.986874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.729809, 36.037262, 37.654617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873697, 0.144169, -0.464616,
		0.311578, -0.899308, 0.306861,
		-0.373593, -0.412868, -0.830643,
		45.617729, 35.913403, 37.405426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.197407, 35.575306, 37.771404>,  <45.879246, 36.202408, 37.986874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.197407, 35.575306, 37.771404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.060768, 35.824871, 37.490253>,  <45.978783, 35.974609, 37.321564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.060768, 35.824871, 37.490253>,  <46.197407, 35.575306, 37.771404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.060768, 35.824871, 37.490253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895935, -0.009745, -0.444077,
		-0.283917, -0.781431, -0.555659,
		-0.341601, 0.623916, -0.702878,
		45.958286, 36.012047, 37.279388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.341732, 35.258945, 37.046230>,  <46.197407, 35.575306, 37.771404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.341732, 35.258945, 37.046230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.292706, 35.655643, 37.031113>,  <46.263290, 35.893661, 37.022041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.292706, 35.655643, 37.031113>,  <46.341732, 35.258945, 37.046230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.292706, 35.655643, 37.031113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827530, 0.081098, -0.555532,
		-0.547879, -0.099365, -0.830635,
		-0.122564, 0.991741, -0.037796,
		46.255936, 35.953167, 37.019775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.390793, 34.750107, 36.457870>,  <46.341732, 35.258945, 37.046230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.390793, 34.750107, 36.457870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.434059, 34.593285, 36.092445>,  <46.460018, 34.499191, 35.873192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.434059, 34.593285, 36.092445>,  <46.390793, 34.750107, 36.457870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.434059, 34.593285, 36.092445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778030, 0.605429, -0.167702,
		0.618844, -0.692636, 0.370522,
		0.108168, -0.392059, -0.913559,
		46.466511, 34.475666, 35.818378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.062019, 34.484100, 36.340099>,  <46.390793, 34.750107, 36.457870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.062019, 34.484100, 36.340099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.935516, 34.611923, 35.982807>,  <46.859615, 34.688618, 35.768433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.935516, 34.611923, 35.982807>,  <47.062019, 34.484100, 36.340099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.935516, 34.611923, 35.982807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834214, 0.542030, -0.101443,
		0.451741, -0.777229, -0.438002,
		-0.316254, 0.319561, -0.893232,
		46.840641, 34.707790, 35.714836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.647411, 34.429874, 35.916698>,  <47.062019, 34.484100, 36.340099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.647411, 34.429874, 35.916698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.390850, 34.678055, 35.736191>,  <47.236916, 34.826965, 35.627888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.390850, 34.678055, 35.736191>,  <47.647411, 34.429874, 35.916698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.390850, 34.678055, 35.736191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767205, 0.517364, -0.379119,
		-0.001756, -0.589382, -0.807853,
		-0.641400, 0.620454, -0.451268,
		47.198429, 34.864189, 35.600811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.885315, 34.944862, 35.323299>,  <47.647411, 34.429874, 35.916698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.885315, 34.944862, 35.323299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.949688, 34.890224, 34.932312>,  <47.988312, 34.857441, 34.697720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.949688, 34.890224, 34.932312>,  <47.885315, 34.944862, 35.323299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.949688, 34.890224, 34.932312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537041, -0.843044, 0.029392,
		-0.828062, 0.520211, -0.209029,
		0.160931, -0.136595, -0.977467,
		47.997967, 34.849247, 34.639072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<30.549131, 35.477077, 56.060032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.890066, 35.672291, 56.135235>,  <31.094627, 35.789417, 56.180359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.890066, 35.672291, 56.135235>,  <30.549131, 35.477077, 56.060032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890066, 35.672291, 56.135235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485140, -0.603507, -0.632786,
		-0.195353, 0.630559, -0.751155,
		0.852336, 0.488031, 0.188012,
		31.145767, 35.818699, 56.191639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834658, 35.682755, 55.354847>,  <30.549131, 35.477077, 56.060032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834658, 35.682755, 55.354847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.121372, 35.678345, 55.633728>,  <31.293402, 35.675697, 55.801056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.121372, 35.678345, 55.633728>,  <30.834658, 35.682755, 55.354847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121372, 35.678345, 55.633728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581585, -0.542145, -0.606496,
		0.384674, 0.840213, -0.382189,
		0.716788, -0.011028, 0.697204,
		31.336409, 35.675037, 55.842888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389265, 35.968643, 55.045525>,  <30.834658, 35.682755, 55.354847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389265, 35.968643, 55.045525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.535423, 35.739643, 55.339119>,  <31.623119, 35.602245, 55.515274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.535423, 35.739643, 55.339119>,  <31.389265, 35.968643, 55.045525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535423, 35.739643, 55.339119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492256, -0.550390, -0.674356,
		0.790044, 0.607715, 0.080704,
		0.365397, -0.572497, 0.733983,
		31.645042, 35.567894, 55.559315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030022, 35.898094, 54.874153>,  <31.389265, 35.968643, 55.045525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030022, 35.898094, 54.874153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.016113, 35.604187, 55.145126>,  <32.007767, 35.427845, 55.307709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.016113, 35.604187, 55.145126>,  <32.030022, 35.898094, 54.874153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016113, 35.604187, 55.145126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440605, -0.619680, -0.649511,
		0.897027, 0.275894, 0.345289,
		-0.034773, -0.734765, 0.677430,
		32.005680, 35.383759, 55.348354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709743, 35.596478, 54.958755>,  <32.030022, 35.898094, 54.874153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709743, 35.596478, 54.958755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.487072, 35.301128, 55.111023>,  <32.353470, 35.123917, 55.202385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.487072, 35.301128, 55.111023>,  <32.709743, 35.596478, 54.958755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487072, 35.301128, 55.111023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515185, -0.666327, -0.539067,
		0.651687, -0.103969, 0.751329,
		-0.556677, -0.738376, 0.380673,
		32.320068, 35.079617, 55.225224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201408, 35.010757, 55.062286>,  <32.709743, 35.596478, 54.958755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201408, 35.010757, 55.062286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.834671, 34.852436, 55.083202>,  <32.614628, 34.757442, 55.095753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.834671, 34.852436, 55.083202>,  <33.201408, 35.010757, 55.062286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834671, 34.852436, 55.083202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280201, -0.731226, -0.621929,
		0.284393, -0.555563, 0.781326,
		-0.916847, -0.395801, 0.052286,
		32.559616, 34.733696, 55.098888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370903, 34.309921, 55.250736>,  <33.201408, 35.010757, 55.062286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370903, 34.309921, 55.250736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.020775, 34.358063, 55.063408>,  <32.810699, 34.386948, 54.951012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.020775, 34.358063, 55.063408>,  <33.370903, 34.309921, 55.250736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020775, 34.358063, 55.063408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282907, -0.657989, -0.697864,
		-0.392143, -0.743348, 0.541903,
		-0.875322, 0.120354, -0.468324,
		32.758179, 34.394169, 54.922909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139648, 33.531300, 55.274868>,  <33.370903, 34.309921, 55.250736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139648, 33.531300, 55.274868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.914322, 33.726753, 55.008362>,  <32.779125, 33.844025, 54.848457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.914322, 33.726753, 55.008362>,  <33.139648, 33.531300, 55.274868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914322, 33.726753, 55.008362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357539, -0.582815, -0.729721,
		-0.744874, -0.649282, 0.153607,
		-0.563319, 0.488630, -0.666267,
		32.745327, 33.873341, 54.808483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699886, 33.118099, 54.921467>,  <33.139648, 33.531300, 55.274868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699886, 33.118099, 54.921467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.682312, 33.416557, 54.655735>,  <32.671768, 33.595634, 54.496296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.682312, 33.416557, 54.655735>,  <32.699886, 33.118099, 54.921467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682312, 33.416557, 54.655735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078353, -0.660348, -0.746862,
		-0.995957, -0.084867, -0.029449,
		-0.043937, 0.746150, -0.664327,
		32.669132, 33.640404, 54.456436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287697, 32.935383, 54.308750>,  <32.699886, 33.118099, 54.921467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287697, 32.935383, 54.308750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.504601, 33.218372, 54.127449>,  <32.634743, 33.388168, 54.018669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.504601, 33.218372, 54.127449>,  <32.287697, 32.935383, 54.308750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504601, 33.218372, 54.127449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234381, -0.645400, -0.726997,
		-0.806859, 0.287987, -0.515792,
		0.542257, 0.707476, -0.453249,
		32.667278, 33.430614, 53.991474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236462, 32.670593, 53.612000>,  <32.287697, 32.935383, 54.308750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236462, 32.670593, 53.612000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.533150, 32.938843, 53.616196>,  <32.711163, 33.099792, 53.618713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.533150, 32.938843, 53.616196>,  <32.236462, 32.670593, 53.612000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533150, 32.938843, 53.616196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430158, -0.463641, -0.774597,
		-0.514602, 0.579046, -0.632368,
		0.741720, 0.670628, 0.010491,
		32.755665, 33.140030, 53.619343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129620, 32.968372, 53.016563>,  <32.236462, 32.670593, 53.612000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129620, 32.968372, 53.016563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.513172, 32.993942, 53.127174>,  <32.743301, 33.009285, 53.193539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.513172, 32.993942, 53.127174>,  <32.129620, 32.968372, 53.016563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513172, 32.993942, 53.127174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258126, -0.601490, -0.756030,
		0.117997, 0.796319, -0.593256,
		0.958878, 0.063926, 0.276524,
		32.800835, 33.013119, 53.210133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581642, 33.017860, 52.391811>,  <32.129620, 32.968372, 53.016563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581642, 33.017860, 52.391811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.841297, 32.903118, 52.673615>,  <32.997089, 32.834274, 52.842697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.841297, 32.903118, 52.673615>,  <32.581642, 33.017860, 52.391811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841297, 32.903118, 52.673615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450393, -0.601422, -0.659877,
		0.612994, 0.745659, -0.261212,
		0.649142, -0.286853, 0.704507,
		33.036041, 32.817062, 52.884968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295975, 33.048283, 52.131805>,  <32.581642, 33.017860, 52.391811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295975, 33.048283, 52.131805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.317581, 32.770458, 52.418766>,  <33.330547, 32.603764, 52.590942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.317581, 32.770458, 52.418766>,  <33.295975, 33.048283, 52.131805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317581, 32.770458, 52.418766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419954, -0.636023, -0.647390,
		0.905936, 0.336250, 0.257325,
		0.054021, -0.694558, 0.717405,
		33.333786, 32.562092, 52.633987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873894, 32.623871, 51.884449>,  <33.295975, 33.048283, 52.131805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873894, 32.623871, 51.884449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.752792, 32.401718, 52.194260>,  <33.680130, 32.268429, 52.380146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.752792, 32.401718, 52.194260>,  <33.873894, 32.623871, 51.884449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752792, 32.401718, 52.194260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513484, -0.779686, -0.358363,
		0.802917, 0.289213, 0.521230,
		-0.302752, -0.555379, 0.774529,
		33.661968, 32.235104, 52.426617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470875, 32.316010, 52.208057>,  <33.873894, 32.623871, 51.884449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470875, 32.316010, 52.208057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.154072, 32.098751, 52.319569>,  <33.963989, 31.968395, 52.386475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.154072, 32.098751, 52.319569>,  <34.470875, 32.316010, 52.208057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154072, 32.098751, 52.319569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474975, -0.835071, -0.277588,
		0.383570, -0.087440, 0.919363,
		-0.792006, -0.543149, 0.278776,
		33.916470, 31.935806, 52.403202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814835, 31.707167, 52.309292>,  <34.470875, 32.316010, 52.208057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814835, 31.707167, 52.309292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.426922, 31.610565, 52.295471>,  <34.194172, 31.552605, 52.287178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.426922, 31.610565, 52.295471>,  <34.814835, 31.707167, 52.309292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426922, 31.610565, 52.295471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233881, -0.880043, -0.413309,
		0.069407, -0.408902, 0.909935,
		-0.969785, -0.241503, -0.034554,
		34.135986, 31.538115, 52.285107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644569, 30.995453, 52.717987>,  <34.814835, 31.707167, 52.309292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644569, 30.995453, 52.717987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.344894, 31.045336, 52.457779>,  <34.165089, 31.075266, 52.301655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.344894, 31.045336, 52.457779>,  <34.644569, 30.995453, 52.717987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344894, 31.045336, 52.457779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257795, -0.849778, -0.459804,
		-0.610136, -0.512178, 0.604490,
		-0.749184, 0.124708, -0.650517,
		34.120140, 31.082748, 52.262623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327023, 30.365858, 52.660694>,  <34.644569, 30.995453, 52.717987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327023, 30.365858, 52.660694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.240749, 30.556967, 52.320057>,  <34.188984, 30.671633, 52.115673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.240749, 30.556967, 52.320057>,  <34.327023, 30.365858, 52.660694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240749, 30.556967, 52.320057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279919, -0.805267, -0.522677,
		-0.935481, -0.351112, 0.039948,
		-0.215687, 0.477772, -0.851594,
		34.176044, 30.700298, 52.064579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029991, 29.877270, 52.338467>,  <34.327023, 30.365858, 52.660694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029991, 29.877270, 52.338467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.119461, 30.121334, 52.034447>,  <34.173141, 30.267773, 51.852036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.119461, 30.121334, 52.034447>,  <34.029991, 29.877270, 52.338467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119461, 30.121334, 52.034447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209625, -0.791670, -0.573860,
		-0.951855, -0.030970, -0.304978,
		0.223670, 0.610163, -0.760048,
		34.186562, 30.304382, 51.806431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743176, 29.568279, 51.734444>,  <34.029991, 29.877270, 52.338467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743176, 29.568279, 51.734444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.009373, 29.821659, 51.576530>,  <34.169090, 29.973688, 51.481781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.009373, 29.821659, 51.576530>,  <33.743176, 29.568279, 51.734444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009373, 29.821659, 51.576530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277510, -0.700987, -0.656967,
		-0.692894, 0.327654, -0.642294,
		0.665497, 0.633451, -0.394782,
		34.209023, 30.011694, 51.458096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482418, 29.899914, 51.106098>,  <33.743176, 29.568279, 51.734444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482418, 29.899914, 51.106098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.879196, 29.862757, 51.140537>,  <34.117264, 29.840462, 51.161201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.879196, 29.862757, 51.140537>,  <33.482418, 29.899914, 51.106098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879196, 29.862757, 51.140537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009059, -0.730078, -0.683303,
		0.126335, 0.677020, -0.725040,
		0.991946, -0.092893, 0.086101,
		34.176781, 29.834888, 51.166367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751202, 29.921822, 50.910046>,  <33.482418, 29.899914, 51.106098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751202, 29.921822, 50.910046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.591221, 29.976969, 50.547604>,  <32.495232, 30.010057, 50.330139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.591221, 29.976969, 50.547604>,  <32.751202, 29.921822, 50.910046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591221, 29.976969, 50.547604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561848, 0.744204, 0.361230,
		0.724132, 0.653569, -0.220183,
		-0.399950, 0.137869, -0.906108,
		32.471237, 30.018330, 50.275772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929405, 30.648405, 50.766518>,  <32.751202, 29.921822, 50.910046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929405, 30.648405, 50.766518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.609066, 30.532703, 50.556767>,  <32.416862, 30.463284, 50.430916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.609066, 30.532703, 50.556767>,  <32.929405, 30.648405, 50.766518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609066, 30.532703, 50.556767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566996, 0.648060, 0.508461,
		0.192755, 0.704522, -0.683004,
		-0.800850, -0.289253, -0.524378,
		32.368813, 30.445927, 50.399452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613255, 31.245625, 50.571754>,  <32.929405, 30.648405, 50.766518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613255, 31.245625, 50.571754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.317841, 30.983652, 50.507721>,  <32.140591, 30.826469, 50.469299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.317841, 30.983652, 50.507721>,  <32.613255, 31.245625, 50.571754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317841, 30.983652, 50.507721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640682, 0.607793, 0.469163,
		-0.209969, 0.449060, -0.868480,
		-0.738539, -0.654930, -0.160086,
		32.096279, 30.787172, 50.459694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100716, 31.627480, 50.059231>,  <32.613255, 31.245625, 50.571754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100716, 31.627480, 50.059231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.940500, 31.338518, 50.284691>,  <31.844370, 31.165140, 50.419968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.940500, 31.338518, 50.284691>,  <32.100716, 31.627480, 50.059231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940500, 31.338518, 50.284691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607184, 0.669958, 0.427181,
		-0.686217, -0.171133, -0.706979,
		-0.400541, -0.722406, 0.563646,
		31.820337, 31.121796, 50.453785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439074, 31.748226, 49.934772>,  <32.100716, 31.627480, 50.059231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439074, 31.748226, 49.934772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.461824, 31.559296, 50.286606>,  <31.475475, 31.445938, 50.497707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.461824, 31.559296, 50.286606>,  <31.439074, 31.748226, 49.934772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461824, 31.559296, 50.286606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478624, 0.760275, 0.439206,
		-0.876176, -0.445972, -0.182824,
		0.056877, -0.472325, 0.879587,
		31.478888, 31.417599, 50.550484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687374, 31.748463, 50.134693>,  <31.439074, 31.748226, 49.934772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687374, 31.748463, 50.134693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.880816, 31.673311, 50.476646>,  <30.996880, 31.628220, 50.681820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.880816, 31.673311, 50.476646>,  <30.687374, 31.748463, 50.134693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880816, 31.673311, 50.476646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662221, 0.560128, 0.497714,
		-0.572355, -0.806820, 0.146462,
		0.483604, -0.187879, 0.854885,
		31.025896, 31.616947, 50.733112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094154, 31.552155, 50.556728>,  <30.687374, 31.748463, 50.134693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094154, 31.552155, 50.556728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.415800, 31.630939, 50.781086>,  <30.608788, 31.678211, 50.915703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.415800, 31.630939, 50.781086>,  <30.094154, 31.552155, 50.556728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415800, 31.630939, 50.781086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577035, 0.485467, 0.656775,
		-0.142937, -0.851779, 0.504026,
		0.804114, 0.196963, 0.560897,
		30.657034, 31.690029, 50.949356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900492, 31.490694, 51.274998>,  <30.094154, 31.552155, 50.556728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900492, 31.490694, 51.274998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.235714, 31.706163, 51.309624>,  <30.436848, 31.835445, 51.330399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.235714, 31.706163, 51.309624>,  <29.900492, 31.490694, 51.274998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235714, 31.706163, 51.309624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449731, 0.592247, 0.668570,
		0.308872, -0.599230, 0.738594,
		0.838057, 0.538671, 0.086564,
		30.487131, 31.867765, 51.335594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015059, 31.541065, 51.980057>,  <29.900492, 31.490694, 51.274998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015059, 31.541065, 51.980057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.233856, 31.843782, 51.836910>,  <30.365135, 32.025414, 51.751022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.233856, 31.843782, 51.836910>,  <30.015059, 31.541065, 51.980057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233856, 31.843782, 51.836910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466488, 0.630515, 0.620354,
		0.695119, -0.172388, 0.697920,
		0.546990, 0.756791, -0.357866,
		30.397953, 32.070820, 51.729549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243109, 31.956646, 52.603813>,  <30.015059, 31.541065, 51.980057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.243109, 31.956646, 52.603813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.280317, 32.201977, 52.290081>,  <30.302643, 32.349174, 52.101841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.280317, 32.201977, 52.290081>,  <30.243109, 31.956646, 52.603813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280317, 32.201977, 52.290081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365119, 0.753882, 0.546214,
		0.926302, 0.235566, 0.294064,
		0.093020, 0.613328, -0.784332,
		30.308224, 32.385975, 52.054783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687210, 32.375935, 52.744106>,  <30.243109, 31.956646, 52.603813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687210, 32.375935, 52.744106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.494493, 32.559628, 52.445583>,  <30.378862, 32.669842, 52.266468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.494493, 32.559628, 52.445583>,  <30.687210, 32.375935, 52.744106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.494493, 32.559628, 52.445583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207529, 0.767651, 0.606336,
		0.851356, 0.447010, -0.274545,
		-0.481793, 0.459232, -0.746312,
		30.349957, 32.697395, 52.221691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111643, 32.972198, 52.641171>,  <30.687210, 32.375935, 52.744106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111643, 32.972198, 52.641171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.738283, 33.043308, 52.516487>,  <30.514267, 33.085976, 52.441677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.738283, 33.043308, 52.516487>,  <31.111643, 32.972198, 52.641171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738283, 33.043308, 52.516487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050127, 0.795539, 0.603825,
		0.355325, 0.579234, -0.733643,
		-0.933398, 0.177779, -0.311710,
		30.458263, 33.096642, 52.422974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074839, 33.752785, 52.496773>,  <31.111643, 32.972198, 52.641171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074839, 33.752785, 52.496773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.699450, 33.615490, 52.512035>,  <30.474216, 33.533112, 52.521194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.699450, 33.615490, 52.512035>,  <31.074839, 33.752785, 52.496773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699450, 33.615490, 52.512035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272724, 0.804357, 0.527855,
		-0.211873, 0.484970, -0.848477,
		-0.938473, -0.343239, 0.038159,
		30.417908, 33.512520, 52.523483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.694250, 34.336884, 52.501236>,  <31.074839, 33.752785, 52.496773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.694250, 34.336884, 52.501236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.462692, 34.047947, 52.652554>,  <30.323757, 33.874584, 52.743343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.462692, 34.047947, 52.652554>,  <30.694250, 34.336884, 52.501236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462692, 34.047947, 52.652554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395987, 0.654599, 0.643968,
		-0.712794, 0.222990, -0.664981,
		-0.578894, -0.722340, 0.378294,
		30.289024, 33.831245, 52.766041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.043406, 34.714504, 52.607773>,  <30.694250, 34.336884, 52.501236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.043406, 34.714504, 52.607773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.995390, 34.382771, 52.826054>,  <29.966581, 34.183731, 52.957024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.995390, 34.382771, 52.826054>,  <30.043406, 34.714504, 52.607773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995390, 34.382771, 52.826054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412328, 0.541677, 0.732510,
		-0.903092, -0.137080, -0.406981,
		-0.120040, -0.829334, 0.545707,
		29.959377, 34.133972, 52.989765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.349501, 34.744995, 52.722336>,  <30.043406, 34.714504, 52.607773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.349501, 34.744995, 52.722336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.486784, 34.507523, 53.013470>,  <29.569155, 34.365040, 53.188152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.486784, 34.507523, 53.013470>,  <29.349501, 34.744995, 52.722336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486784, 34.507523, 53.013470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540192, 0.509159, 0.670037,
		-0.768375, -0.623135, -0.145955,
		0.343210, -0.593683, 0.727837,
		29.589746, 34.329418, 53.231819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.801367, 34.583523, 53.069309>,  <29.349501, 34.744995, 52.722336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.801367, 34.583523, 53.069309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.114698, 34.540985, 53.314285>,  <29.302698, 34.515465, 53.461273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.114698, 34.540985, 53.314285>,  <28.801367, 34.583523, 53.069309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114698, 34.540985, 53.314285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469573, 0.544352, 0.695113,
		-0.407305, -0.832089, 0.376471,
		0.783328, -0.106342, 0.612444,
		29.349697, 34.509083, 53.498020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453602, 34.391079, 53.762215>,  <28.801367, 34.583523, 53.069309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.453602, 34.391079, 53.762215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.830481, 34.518555, 53.803593>,  <29.056608, 34.595039, 53.828419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.830481, 34.518555, 53.803593>,  <28.453602, 34.391079, 53.762215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.830481, 34.518555, 53.803593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267186, 0.528344, 0.805894,
		0.202177, -0.786950, 0.582954,
		0.942198, 0.318690, 0.103443,
		29.113140, 34.614162, 53.834625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<28.557175, 34.575783, 54.570873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870422, 34.757488, 54.400993>,  <29.058371, 34.866512, 54.299065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870422, 34.757488, 54.400993>,  <28.557175, 34.575783, 54.570873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870422, 34.757488, 54.400993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162236, 0.808523, 0.565659,
		0.600339, -0.374076, 0.706867,
		0.783117, 0.454266, -0.424700,
		29.105358, 34.893768, 54.273582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932014, 34.885860, 55.079102>,  <28.557175, 34.575783, 54.570873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.932014, 34.885860, 55.079102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.069633, 35.073143, 54.753548>,  <29.152205, 35.185513, 54.558212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.069633, 35.073143, 54.753548>,  <28.932014, 34.885860, 55.079102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.069633, 35.073143, 54.753548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073713, 0.877598, 0.473696,
		0.936054, -0.102979, 0.336447,
		0.344047, 0.468206, -0.813889,
		29.172848, 35.213604, 54.509380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517555, 35.275738, 55.242989>,  <28.932014, 34.885860, 55.079102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.517555, 35.275738, 55.242989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396564, 35.457672, 54.907932>,  <29.323971, 35.566833, 54.706898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396564, 35.457672, 54.907932>,  <29.517555, 35.275738, 55.242989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.396564, 35.457672, 54.907932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066573, 0.866575, 0.494587,
		0.950829, 0.205364, -0.231838,
		-0.302475, 0.454834, -0.837636,
		29.305822, 35.594124, 54.656643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024048, 35.751667, 55.060230>,  <29.517555, 35.275738, 55.242989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024048, 35.751667, 55.060230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.672224, 35.873768, 54.914246>,  <29.461130, 35.947029, 54.826656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.672224, 35.873768, 54.914246>,  <30.024048, 35.751667, 55.060230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672224, 35.873768, 54.914246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040930, 0.812763, 0.581156,
		0.474023, 0.496224, -0.727368,
		-0.879561, 0.305252, -0.364958,
		29.408356, 35.965343, 54.804760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140657, 36.468582, 54.948410>,  <30.024048, 35.751667, 55.060230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140657, 36.468582, 54.948410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743258, 36.424347, 54.937637>,  <29.504818, 36.397804, 54.931171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743258, 36.424347, 54.937637>,  <30.140657, 36.468582, 54.948410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743258, 36.424347, 54.937637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105653, 0.807954, 0.579697,
		-0.042348, 0.578775, -0.814387,
		-0.993501, -0.110592, -0.026934,
		29.445208, 36.391171, 54.929558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826170, 37.149792, 54.781994>,  <30.140657, 36.468582, 54.948410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826170, 37.149792, 54.781994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551691, 36.918541, 54.958584>,  <29.387005, 36.779789, 55.064537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551691, 36.918541, 54.958584>,  <29.826170, 37.149792, 54.781994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551691, 36.918541, 54.958584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272372, 0.766965, 0.581015,
		-0.674500, 0.278443, -0.683754,
		-0.686195, -0.578130, 0.441477,
		29.345833, 36.745102, 55.091026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256264, 37.463005, 54.693962>,  <29.826170, 37.149792, 54.781994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.256264, 37.463005, 54.693962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133640, 37.231888, 54.996532>,  <29.060066, 37.093216, 55.178074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133640, 37.231888, 54.996532>,  <29.256264, 37.463005, 54.693962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.133640, 37.231888, 54.996532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473912, 0.781836, 0.405142,
		-0.825488, -0.234279, -0.513501,
		-0.306558, -0.577794, 0.756423,
		29.041674, 37.058548, 55.223461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506319, 37.565304, 54.781250>,  <29.256264, 37.463005, 54.693962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506319, 37.565304, 54.781250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.636812, 37.430378, 55.134472>,  <28.715109, 37.349422, 55.346405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.636812, 37.430378, 55.134472>,  <28.506319, 37.565304, 54.781250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.636812, 37.430378, 55.134472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539474, 0.700665, 0.466943,
		-0.776233, -0.628720, 0.046610,
		0.326235, -0.337312, 0.883058,
		28.734682, 37.329185, 55.399391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.900156, 37.587471, 55.185574>,  <28.506319, 37.565304, 54.781250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.900156, 37.587471, 55.185574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.205626, 37.585365, 55.443806>,  <28.388906, 37.584103, 55.598747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.205626, 37.585365, 55.443806>,  <27.900156, 37.587471, 55.185574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.205626, 37.585365, 55.443806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487078, 0.651629, 0.581493,
		-0.423744, -0.758519, 0.495065,
		0.763672, -0.005269, 0.645582,
		28.434727, 37.583786, 55.637482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567778, 37.497154, 55.841381>,  <27.900156, 37.587471, 55.185574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.567778, 37.497154, 55.841381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.922350, 37.674652, 55.894035>,  <28.135094, 37.781151, 55.925629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.922350, 37.674652, 55.894035>,  <27.567778, 37.497154, 55.841381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.922350, 37.674652, 55.894035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435479, 0.703178, 0.562049,
		0.156844, -0.555542, 0.816561,
		0.886430, 0.443750, 0.131638,
		28.188278, 37.807777, 55.933525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.617306, 37.706070, 56.557178>,  <27.567778, 37.497154, 55.841381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.617306, 37.706070, 56.557178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875675, 37.923748, 56.343029>,  <28.030697, 38.054356, 56.214539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875675, 37.923748, 56.343029>,  <27.617306, 37.706070, 56.557178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.875675, 37.923748, 56.343029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327999, 0.831111, 0.449078,
		0.689346, -0.114467, 0.715332,
		0.645925, 0.544198, -0.535378,
		28.069452, 38.087006, 56.182415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579575, 38.321774, 56.922150>,  <27.617306, 37.706070, 56.557178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579575, 38.321774, 56.922150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.809612, 38.422211, 56.610710>,  <27.947636, 38.482475, 56.423847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.809612, 38.422211, 56.610710>,  <27.579575, 38.321774, 56.922150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.809612, 38.422211, 56.610710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206493, 0.965469, 0.158841,
		0.791597, 0.069426, 0.607087,
		0.575096, 0.251097, -0.778598,
		27.982141, 38.497540, 56.377132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.983978, 38.898273, 57.208435>,  <27.579575, 38.321774, 56.922150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.983978, 38.898273, 57.208435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.984972, 38.926079, 56.809402>,  <27.985567, 38.942764, 56.569984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.984972, 38.926079, 56.809402>,  <27.983978, 38.898273, 57.208435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.984972, 38.926079, 56.809402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195599, 0.978345, 0.067688,
		0.980681, 0.194957, 0.016028,
		0.002484, 0.069515, -0.997578,
		27.985718, 38.946934, 56.510128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.450687, 39.500931, 56.952843>,  <27.983978, 38.898273, 57.208435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.450687, 39.500931, 56.952843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.148083, 39.402256, 56.710575>,  <27.966520, 39.343052, 56.565212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.148083, 39.402256, 56.710575>,  <28.450687, 39.500931, 56.952843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.148083, 39.402256, 56.710575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312677, 0.949852, 0.003683,
		0.574390, 0.192166, -0.795706,
		-0.756511, -0.246684, -0.605672,
		27.921129, 39.328251, 56.528873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285816, 40.147099, 56.705208>,  <28.450687, 39.500931, 56.952843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.285816, 40.147099, 56.705208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.973696, 39.948483, 56.553112>,  <27.786425, 39.829315, 56.461853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.973696, 39.948483, 56.553112>,  <28.285816, 40.147099, 56.705208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.973696, 39.948483, 56.553112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572047, 0.812393, 0.113045,
		0.252774, 0.305725, -0.917953,
		-0.780299, -0.496538, -0.380241,
		27.739607, 39.799522, 56.439041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.003981, 40.600639, 56.120113>,  <28.285816, 40.147099, 56.705208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.003981, 40.600639, 56.120113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712149, 40.355278, 56.241077>,  <27.537050, 40.208061, 56.313656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712149, 40.355278, 56.241077>,  <28.003981, 40.600639, 56.120113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.712149, 40.355278, 56.241077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625468, 0.777307, 0.067700,
		-0.276592, -0.139754, -0.950771,
		-0.729579, -0.613403, 0.302409,
		27.493275, 40.171257, 56.331799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.390123, 40.782543, 55.671364>,  <28.003981, 40.600639, 56.120113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.390123, 40.782543, 55.671364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.251200, 40.594681, 55.996029>,  <27.167847, 40.481964, 56.190830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.251200, 40.594681, 55.996029>,  <27.390123, 40.782543, 55.671364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.251200, 40.594681, 55.996029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674587, 0.726362, 0.131647,
		-0.651392, -0.501816, -0.569095,
		-0.347307, -0.469658, 0.811665,
		27.147007, 40.453785, 56.239529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.668200, 40.951534, 55.693638>,  <27.390123, 40.782543, 55.671364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.668200, 40.951534, 55.693638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.758554, 40.854504, 56.071026>,  <26.812767, 40.796284, 56.297459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.758554, 40.854504, 56.071026>,  <26.668200, 40.951534, 55.693638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.758554, 40.854504, 56.071026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428200, 0.845193, 0.319833,
		-0.874997, -0.476239, 0.087046,
		0.225887, -0.242580, 0.943467,
		26.826321, 40.781731, 56.354065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.989058, 40.984531, 56.016510>,  <26.668200, 40.951534, 55.693638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.989058, 40.984531, 56.016510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.277212, 40.994736, 56.293751>,  <26.450104, 41.000858, 56.460094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.277212, 40.994736, 56.293751>,  <25.989058, 40.984531, 56.016510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.277212, 40.994736, 56.293751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408712, 0.822996, 0.394502,
		-0.560357, -0.567474, 0.603302,
		0.720385, 0.025515, 0.693105,
		26.493328, 41.002392, 56.501682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.645313, 41.194424, 56.640816>,  <25.989058, 40.984531, 56.016510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.645313, 41.194424, 56.640816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.026173, 41.268555, 56.738029>,  <26.254688, 41.313034, 56.796360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.026173, 41.268555, 56.738029>,  <25.645313, 41.194424, 56.640816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.026173, 41.268555, 56.738029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290929, 0.793258, 0.534885,
		-0.093664, -0.579997, 0.809216,
		0.952149, 0.185325, 0.243037,
		26.311817, 41.324154, 56.810940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.528948, 41.340443, 57.318592>,  <25.645313, 41.194424, 56.640816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.528948, 41.340443, 57.318592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.873264, 41.486935, 57.177219>,  <26.079855, 41.574829, 57.092396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.873264, 41.486935, 57.177219>,  <25.528948, 41.340443, 57.318592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.873264, 41.486935, 57.177219> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258414, 0.912744, 0.316417,
		0.438476, -0.181036, 0.880321,
		0.860791, 0.366229, -0.353434,
		26.131502, 41.596802, 57.071190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.747967, 41.787380, 57.891411>,  <25.528948, 41.340443, 57.318592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.747967, 41.787380, 57.891411> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.919449, 41.913681, 57.552822>,  <26.022339, 41.989464, 57.349670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.919449, 41.913681, 57.552822>,  <25.747967, 41.787380, 57.891411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.919449, 41.913681, 57.552822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136588, 0.948819, 0.284756,
		0.893060, -0.006458, 0.449892,
		0.428705, 0.315754, -0.846470,
		26.048059, 42.008408, 57.298882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.830467, 41.164680, 58.135761>,  <25.747967, 41.787380, 57.891411>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.830467, 41.164680, 58.135761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.030010, 40.849777, 58.280735>,  <26.149736, 40.660835, 58.367722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.030010, 40.849777, 58.280735>,  <25.830467, 41.164680, 58.135761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.030010, 40.849777, 58.280735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860354, 0.399383, -0.316676,
		0.104555, 0.469802, 0.876558,
		0.498857, -0.787261, 0.362438,
		26.179667, 40.613598, 58.389465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.339462, 41.526390, 58.610558>,  <25.830467, 41.164680, 58.135761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.339462, 41.526390, 58.610558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.463987, 41.179874, 58.454285>,  <26.538702, 40.971966, 58.360519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.463987, 41.179874, 58.454285>,  <26.339462, 41.526390, 58.610558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.463987, 41.179874, 58.454285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770585, 0.470705, -0.429693,
		0.556134, -0.167287, 0.814083,
		0.311311, -0.866286, -0.390684,
		26.557381, 40.919987, 58.337078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.827871, 42.219696, 58.551838>,  <26.339462, 41.526390, 58.610558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.827871, 42.219696, 58.551838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.161234, 42.432938, 58.610130>,  <27.361252, 42.560883, 58.645103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.161234, 42.432938, 58.610130>,  <26.827871, 42.219696, 58.551838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.161234, 42.432938, 58.610130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523691, -0.846021, 0.099980,
		0.176589, -0.007007, -0.984260,
		0.833405, 0.533103, 0.145728,
		27.411255, 42.592869, 58.653851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398317, 42.077858, 58.087040>,  <26.827871, 42.219696, 58.551838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398317, 42.077858, 58.087040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592325, 42.205322, 58.412792>,  <27.708731, 42.281803, 58.608242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592325, 42.205322, 58.412792>,  <27.398317, 42.077858, 58.087040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.592325, 42.205322, 58.412792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525117, -0.850791, 0.020167,
		0.699291, 0.417861, -0.579987,
		0.485020, 0.318663, 0.814376,
		27.737831, 42.300922, 58.657104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.098570, 41.961147, 57.927959>,  <27.398317, 42.077858, 58.087040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.098570, 41.961147, 57.927959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118711, 42.012154, 58.324181>,  <28.130796, 42.042759, 58.561913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118711, 42.012154, 58.324181>,  <28.098570, 41.961147, 57.927959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.118711, 42.012154, 58.324181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579915, -0.811222, 0.074952,
		0.813119, 0.570665, -0.114799,
		0.050355, 0.127518, 0.990557,
		28.133818, 42.050407, 58.621349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863173, 42.017918, 58.001606>,  <28.098570, 41.961147, 57.927959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863173, 42.017918, 58.001606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666569, 41.926434, 58.337727>,  <28.548607, 41.871544, 58.539398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666569, 41.926434, 58.337727>,  <28.863173, 42.017918, 58.001606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.666569, 41.926434, 58.337727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490073, -0.870258, 0.049787,
		0.719894, 0.436281, 0.539826,
		-0.491509, -0.228713, 0.840303,
		28.519115, 41.857819, 58.589817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382950, 41.761280, 58.443340>,  <28.863173, 42.017918, 58.001606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382950, 41.761280, 58.443340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060852, 41.627735, 58.639347>,  <28.867594, 41.547607, 58.756950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060852, 41.627735, 58.639347>,  <29.382950, 41.761280, 58.443340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060852, 41.627735, 58.639347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419714, -0.904689, 0.073336,
		0.418830, 0.264721, 0.868622,
		-0.805246, -0.333858, 0.490018,
		28.819279, 41.527576, 58.786354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643211, 41.393223, 58.970558>,  <29.382950, 41.761280, 58.443340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643211, 41.393223, 58.970558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273697, 41.244083, 58.935688>,  <29.051989, 41.154598, 58.914764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273697, 41.244083, 58.935688>,  <29.643211, 41.393223, 58.970558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.273697, 41.244083, 58.935688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369967, -0.927815, 0.047795,
		-0.098705, 0.011899, 0.995046,
		-0.923787, -0.372852, -0.087177,
		28.996561, 41.132229, 58.909534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.604145, 40.933167, 59.427219>,  <29.643211, 41.393223, 58.970558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.604145, 40.933167, 59.427219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346430, 40.810715, 59.146881>,  <29.191801, 40.737244, 58.978680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346430, 40.810715, 59.146881>,  <29.604145, 40.933167, 59.427219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.346430, 40.810715, 59.146881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567484, -0.805694, -0.169764,
		-0.512696, -0.507094, 0.692819,
		-0.644286, -0.306126, -0.700844,
		29.153145, 40.718876, 58.936626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439409, 40.188808, 59.566467>,  <29.604145, 40.933167, 59.427219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439409, 40.188808, 59.566467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318811, 40.225166, 59.186817>,  <29.246452, 40.246979, 58.959026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318811, 40.225166, 59.186817>,  <29.439409, 40.188808, 59.566467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318811, 40.225166, 59.186817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374029, -0.904382, -0.205417,
		-0.877043, -0.416933, 0.238668,
		-0.301492, 0.090891, -0.949126,
		29.228363, 40.252434, 58.902081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335915, 39.465488, 59.303776>,  <29.439409, 40.188808, 59.566467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335915, 39.465488, 59.303776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.338467, 39.673054, 58.961857>,  <29.339998, 39.797592, 58.756706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.338467, 39.673054, 58.961857>,  <29.335915, 39.465488, 59.303776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.338467, 39.673054, 58.961857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309654, -0.813827, -0.491731,
		-0.950828, -0.261557, -0.165875,
		0.006378, 0.518915, -0.854802,
		29.340380, 39.828728, 58.705418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905828, 39.116119, 58.769272>,  <29.335915, 39.465488, 59.303776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.905828, 39.116119, 58.769272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183937, 39.331200, 58.578495>,  <29.350801, 39.460247, 58.464027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183937, 39.331200, 58.578495>,  <28.905828, 39.116119, 58.769272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.183937, 39.331200, 58.578495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284096, -0.815128, -0.504833,
		-0.660219, 0.215498, -0.719494,
		0.695270, 0.537705, -0.476940,
		29.392519, 39.492512, 58.435413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.828453, 39.007526, 57.943050>,  <28.905828, 39.116119, 58.769272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.828453, 39.007526, 57.943050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197021, 39.162849, 57.948704>,  <29.418163, 39.256042, 57.952095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197021, 39.162849, 57.948704>,  <28.828453, 39.007526, 57.943050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197021, 39.162849, 57.948704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330817, -0.764884, -0.552733,
		-0.203822, 0.513974, -0.833239,
		0.921421, 0.388308, 0.014131,
		29.473448, 39.279343, 57.952942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.163546, 39.138859, 57.177689>,  <28.828453, 39.007526, 57.943050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.163546, 39.138859, 57.177689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465651, 39.124744, 57.439476>,  <29.646914, 39.116276, 57.596550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465651, 39.124744, 57.439476>,  <29.163546, 39.138859, 57.177689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465651, 39.124744, 57.439476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471675, -0.664066, -0.580119,
		0.455081, 0.746840, -0.484903,
		0.755264, -0.035285, 0.654470,
		29.692230, 39.114159, 57.635818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.684017, 38.976265, 56.702728>,  <29.163546, 39.138859, 57.177689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.684017, 38.976265, 56.702728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827185, 38.883579, 57.064545>,  <29.913086, 38.827969, 57.281635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827185, 38.883579, 57.064545>,  <29.684017, 38.976265, 56.702728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.827185, 38.883579, 57.064545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556331, -0.725090, -0.405882,
		0.749926, 0.648499, -0.130612,
		0.357920, -0.231718, 0.904544,
		29.934561, 38.814064, 57.335907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410892, 38.899185, 56.573887>,  <29.684017, 38.976265, 56.702728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.410892, 38.899185, 56.573887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353325, 38.693676, 56.912193>,  <30.318785, 38.570370, 57.115177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353325, 38.693676, 56.912193>,  <30.410892, 38.899185, 56.573887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353325, 38.693676, 56.912193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553207, -0.750418, -0.361710,
		0.820517, 0.415829, 0.392222,
		-0.143921, -0.513769, 0.845771,
		30.310148, 38.539547, 57.165924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055449, 38.578663, 56.797333>,  <30.410892, 38.899185, 56.573887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.055449, 38.578663, 56.797333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786774, 38.352497, 56.988811>,  <30.625568, 38.216797, 57.103699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786774, 38.352497, 56.988811>,  <31.055449, 38.578663, 56.797333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786774, 38.352497, 56.988811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466143, -0.824769, -0.320104,
		0.575803, 0.008131, 0.817548,
		-0.671686, -0.565411, 0.478694,
		30.585268, 38.182873, 57.132420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464869, 38.052876, 57.147434>,  <31.055449, 38.578663, 56.797333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464869, 38.052876, 57.147434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090467, 37.916336, 57.113064>,  <30.865828, 37.834412, 57.092442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090467, 37.916336, 57.113064>,  <31.464869, 38.052876, 57.147434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090467, 37.916336, 57.113064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351998, -0.907121, -0.230713,
		0.000810, -0.246192, 0.969221,
		-0.936000, -0.341350, -0.085924,
		30.809668, 37.813931, 57.087288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575073, 37.431980, 57.402073>,  <31.464869, 38.052876, 57.147434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575073, 37.431980, 57.402073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240490, 37.394054, 57.186169>,  <31.039740, 37.371300, 57.056625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240490, 37.394054, 57.186169>,  <31.575073, 37.431980, 57.402073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240490, 37.394054, 57.186169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323989, -0.879922, -0.347518,
		-0.442002, -0.465563, 0.766736,
		-0.836460, -0.094810, -0.539765,
		30.989552, 37.365612, 57.024239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399530, 36.776707, 57.636242>,  <31.575073, 37.431980, 57.402073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399530, 36.776707, 57.636242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.229340, 36.861805, 57.284397>,  <31.127226, 36.912865, 57.073292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.229340, 36.861805, 57.284397>,  <31.399530, 36.776707, 57.636242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229340, 36.861805, 57.284397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325600, -0.870897, -0.368135,
		-0.844365, -0.443033, 0.301278,
		-0.425478, 0.212744, -0.879607,
		31.101696, 36.925629, 57.020515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993565, 36.198818, 57.477993>,  <31.399530, 36.776707, 57.636242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993565, 36.198818, 57.477993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063667, 36.381199, 57.128960>,  <31.105728, 36.490627, 56.919540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063667, 36.381199, 57.128960>,  <30.993565, 36.198818, 57.477993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063667, 36.381199, 57.128960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309378, -0.866906, -0.390844,
		-0.934650, -0.201459, -0.292991,
		0.175256, 0.455947, -0.872581,
		31.116243, 36.517982, 56.867184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772461, 35.670132, 57.066334>,  <30.993565, 36.198818, 57.477993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772461, 35.670132, 57.066334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967329, 35.919426, 56.821632>,  <31.084249, 36.069004, 56.674812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967329, 35.919426, 56.821632>,  <30.772461, 35.670132, 57.066334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967329, 35.919426, 56.821632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252512, -0.771107, -0.584492,
		-0.836004, 0.130273, -0.533035,
		0.487171, 0.623236, -0.611753,
		31.113480, 36.106396, 56.638107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.495552, 35.551785, 50.748486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.513969, 35.384403, 51.111313>,  <47.525021, 35.283974, 51.329010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.513969, 35.384403, 51.111313>,  <47.495552, 35.551785, 50.748486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.513969, 35.384403, 51.111313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992055, -0.125575, -0.007578,
		0.117077, -0.899516, -0.420909,
		0.046040, -0.418452, 0.907072,
		47.527782, 35.258869, 51.383434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.133369, 35.035271, 50.746929>,  <47.495552, 35.551785, 50.748486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.133369, 35.035271, 50.746929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.157528, 35.073147, 51.144398>,  <47.172024, 35.095871, 51.382881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.157528, 35.073147, 51.144398>,  <47.133369, 35.035271, 50.746929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.157528, 35.073147, 51.144398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963717, -0.253772, 0.082754,
		0.260003, -0.962618, 0.075930,
		0.060392, 0.094692, 0.993673,
		47.175644, 35.101555, 51.442501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.853886, 34.514053, 51.015556>,  <47.133369, 35.035271, 50.746929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.853886, 34.514053, 51.015556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.847691, 34.747841, 51.340065>,  <46.843975, 34.888111, 51.534771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.847691, 34.747841, 51.340065>,  <46.853886, 34.514053, 51.015556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.847691, 34.747841, 51.340065> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966066, -0.217966, 0.138591,
		0.257831, -0.781595, 0.568007,
		-0.015484, 0.584465, 0.811271,
		46.843044, 34.923180, 51.583447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.583004, 34.088573, 51.639641>,  <46.853886, 34.514053, 51.015556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.583004, 34.088573, 51.639641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.496628, 34.478504, 51.661854>,  <46.444801, 34.712463, 51.675182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.496628, 34.478504, 51.661854>,  <46.583004, 34.088573, 51.639641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.496628, 34.478504, 51.661854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961844, -0.222164, 0.159683,
		0.168000, -0.018930, 0.985605,
		-0.215943, 0.974825, 0.055531,
		46.431847, 34.770950, 51.678513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.046070, 34.047836, 52.061577>,  <46.583004, 34.088573, 51.639641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.046070, 34.047836, 52.061577> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.998348, 34.418964, 51.920200>,  <45.969715, 34.641640, 51.835377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.998348, 34.418964, 51.920200>,  <46.046070, 34.047836, 52.061577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.998348, 34.418964, 51.920200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919787, 0.030753, 0.391210,
		0.373841, 0.371760, 0.849727,
		-0.119304, 0.927819, -0.353438,
		45.962559, 34.697311, 51.814171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.614510, 34.345455, 52.624126>,  <46.046070, 34.047836, 52.061577>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.614510, 34.345455, 52.624126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.593224, 34.575508, 52.297596>,  <45.580452, 34.713539, 52.101677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.593224, 34.575508, 52.297596>,  <45.614510, 34.345455, 52.624126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.593224, 34.575508, 52.297596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964968, 0.180705, 0.190217,
		0.256915, 0.797853, 0.545367,
		-0.053215, 0.575131, -0.816328,
		45.577259, 34.748047, 52.052696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.211700, 34.941299, 52.820351>,  <45.614510, 34.345455, 52.624126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.211700, 34.941299, 52.820351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.169594, 34.928833, 52.422768>,  <45.144329, 34.921352, 52.184219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.169594, 34.928833, 52.422768>,  <45.211700, 34.941299, 52.820351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.169594, 34.928833, 52.422768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991302, 0.082677, 0.102395,
		0.078986, 0.996089, -0.039603,
		-0.105269, -0.031171, -0.993955,
		45.138012, 34.919483, 52.124580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.706104, 35.514297, 52.623459>,  <45.211700, 34.941299, 52.820351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.706104, 35.514297, 52.623459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.717064, 35.280773, 52.298889>,  <44.723640, 35.140659, 52.104145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.717064, 35.280773, 52.298889>,  <44.706104, 35.514297, 52.623459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.717064, 35.280773, 52.298889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979894, 0.144791, -0.137266,
		0.197625, 0.798875, -0.568105,
		0.027402, -0.583810, -0.811427,
		44.725285, 35.105629, 52.055462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.338226, 35.893139, 52.012119>,  <44.706104, 35.514297, 52.623459>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.338226, 35.893139, 52.012119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.348484, 35.500023, 51.938934>,  <44.354641, 35.264153, 51.895023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.348484, 35.500023, 51.938934>,  <44.338226, 35.893139, 52.012119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.348484, 35.500023, 51.938934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943230, 0.036836, -0.330092,
		0.331149, 0.181041, -0.926048,
		0.025648, -0.982785, -0.182961,
		44.356178, 35.205189, 51.884045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.070534, 35.750015, 51.247856>,  <44.338226, 35.893139, 52.012119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.070534, 35.750015, 51.247856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.982315, 35.437977, 51.482056>,  <43.929382, 35.250755, 51.622574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.982315, 35.437977, 51.482056>,  <44.070534, 35.750015, 51.247856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.982315, 35.437977, 51.482056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898234, -0.071535, -0.433657,
		0.380178, -0.621557, -0.684932,
		-0.220546, -0.780096, 0.585500,
		43.916153, 35.203949, 51.657707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.465202, 35.460011, 50.808643>,  <44.070534, 35.750015, 51.247856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.465202, 35.460011, 50.808643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.499214, 35.250256, 51.147533>,  <43.519623, 35.124401, 51.350868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.499214, 35.250256, 51.147533>,  <43.465202, 35.460011, 50.808643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.499214, 35.250256, 51.147533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918310, -0.371186, -0.137579,
		0.386622, -0.766316, -0.513111,
		0.085031, -0.524386, 0.847225,
		43.524723, 35.092941, 51.401699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.268478, 34.755653, 50.653870>,  <43.465202, 35.460011, 50.808643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.268478, 34.755653, 50.653870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.211285, 34.773441, 51.049358>,  <43.176968, 34.784115, 51.286652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.211285, 34.773441, 51.049358>,  <43.268478, 34.755653, 50.653870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.211285, 34.773441, 51.049358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973999, -0.183697, -0.132593,
		0.175730, -0.981977, 0.069578,
		-0.142985, 0.044468, 0.988725,
		43.168388, 34.786781, 51.345978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.807800, 34.168144, 50.783241>,  <43.268478, 34.755653, 50.653870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.807800, 34.168144, 50.783241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.783794, 34.408615, 51.101986>,  <42.769390, 34.552898, 51.293232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.783794, 34.408615, 51.101986>,  <42.807800, 34.168144, 50.783241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.783794, 34.408615, 51.101986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989444, -0.141318, 0.032092,
		0.131904, -0.786524, 0.603309,
		-0.060017, 0.601173, 0.796862,
		42.765789, 34.588966, 51.341045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408211, 33.760033, 51.242748>,  <42.807800, 34.168144, 50.783241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.408211, 33.760033, 51.242748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.388565, 34.139996, 51.366207>,  <42.376778, 34.367973, 51.440281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.388565, 34.139996, 51.366207>,  <42.408211, 33.760033, 51.242748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.388565, 34.139996, 51.366207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998644, -0.052054, 0.001286,
		0.017288, -0.308166, 0.951176,
		-0.049116, 0.949908, 0.308647,
		42.373829, 34.424969, 51.458801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976749, 33.787189, 51.813248>,  <42.408211, 33.760033, 51.242748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976749, 33.787189, 51.813248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.954140, 34.155563, 51.659012>,  <41.940575, 34.376587, 51.566471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.954140, 34.155563, 51.659012>,  <41.976749, 33.787189, 51.813248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954140, 34.155563, 51.659012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964020, -0.150817, -0.218905,
		-0.259751, 0.359340, 0.896328,
		-0.056520, 0.920939, -0.385586,
		41.937183, 34.431847, 51.543335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501282, 34.163105, 52.223595>,  <41.976749, 33.787189, 51.813248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501282, 34.163105, 52.223595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.538536, 34.353565, 51.873829>,  <41.560886, 34.467842, 51.663971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.538536, 34.353565, 51.873829>,  <41.501282, 34.163105, 52.223595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.538536, 34.353565, 51.873829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926547, -0.280038, -0.251176,
		-0.364469, 0.833579, 0.415100,
		0.093131, 0.476155, -0.874416,
		41.566475, 34.496410, 51.611504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805424, 34.299564, 51.926941>,  <41.501282, 34.163105, 52.223595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805424, 34.299564, 51.926941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.008022, 34.346699, 51.585281>,  <41.129581, 34.374981, 51.380283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.008022, 34.346699, 51.585281>,  <40.805424, 34.299564, 51.926941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008022, 34.346699, 51.585281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845672, -0.125383, -0.518766,
		-0.168224, 0.985086, 0.036143,
		0.506497, 0.117835, -0.854152,
		41.159973, 34.382050, 51.329037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376186, 34.837177, 51.520931>,  <40.805424, 34.299564, 51.926941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376186, 34.837177, 51.520931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.598621, 34.643391, 51.250805>,  <40.732082, 34.527119, 51.088730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.598621, 34.643391, 51.250805>,  <40.376186, 34.837177, 51.520931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598621, 34.643391, 51.250805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824464, -0.218892, -0.521868,
		0.105008, 0.846980, -0.521151,
		0.556087, -0.484471, -0.675319,
		40.765446, 34.498051, 51.048210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047882, 35.067539, 50.951847>,  <40.376186, 34.837177, 51.520931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047882, 35.067539, 50.951847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.262230, 34.746227, 50.847855>,  <40.390839, 34.553440, 50.785461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.262230, 34.746227, 50.847855>,  <40.047882, 35.067539, 50.951847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262230, 34.746227, 50.847855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629392, -0.174810, -0.757171,
		0.562774, 0.569369, -0.599253,
		0.535865, -0.803281, -0.259978,
		40.422989, 34.505241, 50.769863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183533, 35.017097, 50.279137>,  <40.047882, 35.067539, 50.951847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183533, 35.017097, 50.279137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.217247, 34.633259, 50.386524>,  <40.237476, 34.402958, 50.450958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.217247, 34.633259, 50.386524>,  <40.183533, 35.017097, 50.279137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217247, 34.633259, 50.386524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688807, -0.250799, -0.680179,
		0.720027, -0.127591, -0.682115,
		0.084289, -0.959594, 0.268468,
		40.242535, 34.345379, 50.467064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210972, 34.574272, 49.664078>,  <40.183533, 35.017097, 50.279137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210972, 34.574272, 49.664078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.087734, 34.350384, 49.971786>,  <40.013790, 34.216049, 50.156414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.087734, 34.350384, 49.971786>,  <40.210972, 34.574272, 49.664078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087734, 34.350384, 49.971786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820252, -0.253338, -0.512841,
		0.481937, -0.789005, -0.381062,
		-0.308097, -0.559724, 0.769276,
		39.995304, 34.182468, 50.202568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697739, 34.224255, 49.209808>,  <40.210972, 34.574272, 49.664078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697739, 34.224255, 49.209808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.788574, 34.083595, 49.573074>,  <39.843075, 33.999199, 49.791035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.788574, 34.083595, 49.573074>,  <39.697739, 34.224255, 49.209808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788574, 34.083595, 49.573074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890807, 0.301851, 0.339631,
		-0.393563, -0.886131, -0.244704,
		0.227094, -0.351650, 0.908169,
		39.856701, 33.978100, 49.845524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283112, 34.722237, 48.734631>,  <39.697739, 34.224255, 49.209808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283112, 34.722237, 48.734631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.269444, 35.120953, 48.705658>,  <39.261242, 35.360180, 48.688274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.269444, 35.120953, 48.705658>,  <39.283112, 34.722237, 48.734631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269444, 35.120953, 48.705658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987343, -0.022440, 0.157006,
		0.154877, 0.076876, 0.984938,
		-0.034172, 0.996788, -0.072428,
		39.259193, 35.419991, 48.683929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717388, 34.136311, 48.504833>,  <39.283112, 34.722237, 48.734631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717388, 34.136311, 48.504833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.837074, 33.868309, 48.233078>,  <38.908886, 33.707508, 48.070026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.837074, 33.868309, 48.233078>,  <38.717388, 34.136311, 48.504833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837074, 33.868309, 48.233078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895445, -0.443127, 0.042635,
		-0.329620, 0.595596, -0.732541,
		0.299215, -0.670003, -0.679387,
		38.926838, 33.667309, 48.029263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229855, 34.127697, 48.105923>,  <38.717388, 34.136311, 48.504833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229855, 34.127697, 48.105923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.434082, 33.786804, 48.060276>,  <38.556618, 33.582268, 48.032887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.434082, 33.786804, 48.060276>,  <38.229855, 34.127697, 48.105923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434082, 33.786804, 48.060276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858193, -0.513289, -0.006323,
		-0.053187, 0.101164, -0.993447,
		0.510565, -0.852233, -0.114118,
		38.587250, 33.531136, 48.026039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795830, 33.692970, 47.575974>,  <38.229855, 34.127697, 48.105923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795830, 33.692970, 47.575974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.057186, 33.446274, 47.751568>,  <38.214001, 33.298256, 47.856926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.057186, 33.446274, 47.751568>,  <37.795830, 33.692970, 47.575974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057186, 33.446274, 47.751568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704102, -0.708107, 0.053156,
		0.278067, -0.343823, -0.896919,
		0.653391, -0.616742, 0.438988,
		38.253204, 33.261250, 47.883263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755142, 33.091530, 47.185719>,  <37.795830, 33.692970, 47.575974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755142, 33.091530, 47.185719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.893108, 32.988079, 47.546638>,  <37.975887, 32.926010, 47.763191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.893108, 32.988079, 47.546638>,  <37.755142, 33.091530, 47.185719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893108, 32.988079, 47.546638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844985, -0.504118, 0.178510,
		0.408698, -0.824000, -0.392414,
		0.344916, -0.258627, 0.902300,
		37.996582, 32.910492, 47.817329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622478, 32.307697, 47.252010>,  <37.755142, 33.091530, 47.185719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622478, 32.307697, 47.252010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.649738, 32.473396, 47.615055>,  <37.666096, 32.572815, 47.832882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.649738, 32.473396, 47.615055>,  <37.622478, 32.307697, 47.252010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649738, 32.473396, 47.615055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695090, -0.632881, 0.341046,
		0.715686, -0.654114, 0.244805,
		0.068150, 0.414243, 0.907611,
		37.670185, 32.597668, 47.887337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682526, 31.743067, 47.555477>,  <37.622478, 32.307697, 47.252010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682526, 31.743067, 47.555477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.544437, 32.032589, 47.794453>,  <37.461586, 32.206303, 47.937836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.544437, 32.032589, 47.794453>,  <37.682526, 31.743067, 47.555477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544437, 32.032589, 47.794453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867999, -0.488331, 0.090057,
		0.356930, -0.487484, 0.796844,
		-0.345222, 0.723804, 0.597436,
		37.440872, 32.249729, 47.973682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253735, 31.363033, 47.987724>,  <37.682526, 31.743067, 47.555477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253735, 31.363033, 47.987724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.147800, 31.732525, 48.098423>,  <37.084240, 31.954220, 48.164841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.147800, 31.732525, 48.098423>,  <37.253735, 31.363033, 47.987724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147800, 31.732525, 48.098423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963916, -0.261619, -0.049205,
		0.026951, -0.279792, 0.959682,
		-0.264838, 0.923727, 0.276747,
		37.068348, 32.009644, 48.181446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739143, 31.269670, 48.513123>,  <37.253735, 31.363033, 47.987724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739143, 31.269670, 48.513123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.652561, 31.637011, 48.380592>,  <36.600613, 31.857414, 48.301075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.652561, 31.637011, 48.380592>,  <36.739143, 31.269670, 48.513123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652561, 31.637011, 48.380592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966356, -0.249831, -0.061153,
		-0.138936, 0.306943, 0.941532,
		-0.216453, 0.918352, -0.331327,
		36.587624, 31.912516, 48.281193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377190, 31.540747, 49.071499>,  <36.739143, 31.269670, 48.513123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377190, 31.540747, 49.071499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.284664, 31.734409, 48.733959>,  <36.229149, 31.850607, 48.531437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.284664, 31.734409, 48.733959>,  <36.377190, 31.540747, 49.071499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284664, 31.734409, 48.733959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957930, -0.264812, 0.110654,
		-0.169887, 0.833945, 0.525046,
		-0.231318, 0.484159, -0.843850,
		36.215267, 31.879658, 48.480804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772308, 31.796778, 49.192055>,  <36.377190, 31.540747, 49.071499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772308, 31.796778, 49.192055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.766453, 31.853819, 48.796185>,  <35.762939, 31.888044, 48.558662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.766453, 31.853819, 48.796185>,  <35.772308, 31.796778, 49.192055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766453, 31.853819, 48.796185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969914, -0.242573, -0.020605,
		-0.243006, 0.959596, 0.141861,
		-0.014639, 0.142600, -0.989672,
		35.762062, 31.896599, 48.499283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161457, 32.071102, 49.016533>,  <35.772308, 31.796778, 49.192055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161457, 32.071102, 49.016533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.269531, 31.929598, 48.658348>,  <35.334373, 31.844694, 48.443436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.269531, 31.929598, 48.658348>,  <35.161457, 32.071102, 49.016533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269531, 31.929598, 48.658348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943672, -0.281813, -0.173394,
		-0.191013, 0.891871, -0.409977,
		0.270182, -0.353763, -0.895463,
		35.350586, 31.823469, 48.389709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720692, 32.275307, 48.492439>,  <35.161457, 32.071102, 49.016533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720692, 32.275307, 48.492439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.867256, 31.945175, 48.320595>,  <34.955196, 31.747095, 48.217487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.867256, 31.945175, 48.320595>,  <34.720692, 32.275307, 48.492439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867256, 31.945175, 48.320595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914158, -0.233298, -0.331493,
		0.173366, 0.514196, -0.839969,
		0.366415, -0.825333, -0.429610,
		34.977180, 31.697575, 48.191711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.313740, 33.375374, 51.837791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.661100, 33.276390, 52.009674>,  <29.869516, 33.216999, 52.112804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.661100, 33.276390, 52.009674>,  <29.313740, 33.375374, 51.837791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.661100, 33.276390, 52.009674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238118, -0.552007, -0.799117,
		0.434951, 0.796273, -0.420437,
		0.868399, -0.247463, 0.429703,
		29.921619, 33.202152, 52.138584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798933, 33.376064, 51.277866>,  <29.313740, 33.375374, 51.837791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798933, 33.376064, 51.277866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.990776, 33.175163, 51.565678>,  <30.105883, 33.054623, 51.738365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.990776, 33.175163, 51.565678>,  <29.798933, 33.376064, 51.277866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.990776, 33.175163, 51.565678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434407, -0.576552, -0.692010,
		0.762408, 0.644461, -0.058337,
		0.479608, -0.502252, 0.719527,
		30.134659, 33.024487, 51.781536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326530, 33.191418, 50.954601>,  <29.798933, 33.376064, 51.277866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326530, 33.191418, 50.954601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.370317, 32.967735, 51.283310>,  <30.396589, 32.833527, 51.480534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.370317, 32.967735, 51.283310>,  <30.326530, 33.191418, 50.954601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370317, 32.967735, 51.283310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459152, -0.704802, -0.540772,
		0.881588, 0.436514, 0.179607,
		0.109467, -0.559205, 0.821771,
		30.403158, 32.799973, 51.529842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039347, 33.042400, 51.166111>,  <30.326530, 33.191418, 50.954601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039347, 33.042400, 51.166111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.833469, 32.735561, 51.319294>,  <30.709942, 32.551460, 51.411205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.833469, 32.735561, 51.319294>,  <31.039347, 33.042400, 51.166111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833469, 32.735561, 51.319294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629341, -0.641357, -0.438852,
		0.582253, 0.015137, 0.812867,
		-0.514695, -0.767093, 0.382958,
		30.679060, 32.505432, 51.434181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538507, 32.579212, 51.230209>,  <31.039347, 33.042400, 51.166111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538507, 32.579212, 51.230209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.205017, 32.360981, 51.264256>,  <31.004923, 32.230042, 51.284683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.205017, 32.360981, 51.264256>,  <31.538507, 32.579212, 51.230209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205017, 32.360981, 51.264256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475525, -0.787759, -0.391552,
		0.280670, -0.285974, 0.916211,
		-0.833727, -0.545578, 0.085112,
		30.954899, 32.197308, 51.289787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695200, 32.047047, 51.703655>,  <31.538507, 32.579212, 51.230209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695200, 32.047047, 51.703655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.372919, 31.920559, 51.503319>,  <31.179550, 31.844666, 51.383118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.372919, 31.920559, 51.503319>,  <31.695200, 32.047047, 51.703655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372919, 31.920559, 51.503319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537874, -0.744722, -0.395072,
		-0.248058, -0.587701, 0.770113,
		-0.805704, -0.316223, -0.500843,
		31.131208, 31.825691, 51.353065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652657, 31.252790, 51.816311>,  <31.695200, 32.047047, 51.703655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652657, 31.252790, 51.816311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.467615, 31.376320, 51.483894>,  <31.356590, 31.450438, 51.284447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.467615, 31.376320, 51.483894>,  <31.652657, 31.252790, 51.816311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467615, 31.376320, 51.483894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477108, -0.703339, -0.526955,
		-0.747240, -0.640266, 0.178023,
		-0.462602, 0.308826, -0.831040,
		31.328835, 31.468967, 51.234581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311373, 30.590986, 51.557407>,  <31.652657, 31.252790, 51.816311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311373, 30.590986, 51.557407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.343178, 30.843809, 51.249073>,  <31.362261, 30.995502, 51.064072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.343178, 30.843809, 51.249073>,  <31.311373, 30.590986, 51.557407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343178, 30.843809, 51.249073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433387, -0.718292, -0.544272,
		-0.897694, -0.290793, -0.331038,
		0.079511, 0.632057, -0.770832,
		31.367031, 31.033426, 51.017822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029890, 30.218685, 50.934727>,  <31.311373, 30.590986, 51.557407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029890, 30.218685, 50.934727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.299837, 30.487728, 50.813301>,  <31.461805, 30.649153, 50.740444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.299837, 30.487728, 50.813301>,  <31.029890, 30.218685, 50.934727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299837, 30.487728, 50.813301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522272, -0.725970, -0.447436,
		-0.521330, 0.143416, -0.841218,
		0.674869, 0.672606, -0.303568,
		31.502298, 30.689510, 50.722229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241583, 29.871935, 50.274464>,  <31.029890, 30.218685, 50.934727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241583, 29.871935, 50.274464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.498178, 30.173338, 50.332039>,  <31.652136, 30.354179, 50.366585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.498178, 30.173338, 50.332039>,  <31.241583, 29.871935, 50.274464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498178, 30.173338, 50.332039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680190, -0.471919, -0.560923,
		-0.354734, 0.457729, -0.815259,
		0.641487, 0.753510, 0.143937,
		31.690624, 30.399391, 50.375221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372036, 30.209818, 49.626160>,  <31.241583, 29.871935, 50.274464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372036, 30.209818, 49.626160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.679865, 30.277084, 49.872566>,  <31.864563, 30.317444, 50.020409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.679865, 30.277084, 49.872566>,  <31.372036, 30.209818, 49.626160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679865, 30.277084, 49.872566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622116, -0.414962, -0.663912,
		0.143976, 0.894162, -0.423963,
		0.769573, 0.168167, 0.616017,
		31.910736, 30.327534, 50.057373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869669, 30.186552, 49.137329>,  <31.372036, 30.209818, 49.626160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869669, 30.186552, 49.137329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.053604, 30.112045, 49.484627>,  <32.163967, 30.067341, 49.693005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.053604, 30.112045, 49.484627>,  <31.869669, 30.186552, 49.137329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053604, 30.112045, 49.484627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748582, -0.444642, -0.491852,
		0.477674, 0.876127, -0.065028,
		0.459839, -0.186266, 0.868247,
		32.191555, 30.056166, 49.745102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452881, 30.425371, 49.002033>,  <31.869669, 30.186552, 49.137329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452881, 30.425371, 49.002033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.503628, 30.163088, 49.299744>,  <32.534077, 30.005718, 49.478371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.503628, 30.163088, 49.299744>,  <32.452881, 30.425371, 49.002033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503628, 30.163088, 49.299744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543460, -0.581754, -0.605155,
		0.829793, 0.481259, 0.282548,
		0.126863, -0.655707, 0.744281,
		32.541687, 29.966375, 49.523029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087154, 30.741163, 48.509171>,  <32.452881, 30.425371, 49.002033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087154, 30.741163, 48.509171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.134430, 30.684055, 48.116100>,  <32.162796, 30.649792, 47.880260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.134430, 30.684055, 48.116100>,  <32.087154, 30.741163, 48.509171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134430, 30.684055, 48.116100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220027, 0.961245, -0.166119,
		0.968307, 0.235849, 0.082200,
		0.118193, -0.142768, -0.982674,
		32.169888, 30.641226, 47.821297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532104, 31.280323, 48.386478>,  <32.087154, 30.741163, 48.509171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532104, 31.280323, 48.386478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.345318, 31.174122, 48.049088>,  <32.233246, 31.110401, 47.846653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.345318, 31.174122, 48.049088>,  <32.532104, 31.280323, 48.386478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345318, 31.174122, 48.049088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314824, 0.941277, -0.121998,
		0.826335, 0.208577, -0.523130,
		-0.466964, -0.265505, -0.843476,
		32.205227, 31.094471, 47.796043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537968, 31.878084, 47.962532>,  <32.532104, 31.280323, 48.386478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537968, 31.878084, 47.962532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.261017, 31.651110, 47.784260>,  <32.094849, 31.514925, 47.677296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.261017, 31.651110, 47.784260>,  <32.537968, 31.878084, 47.962532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261017, 31.651110, 47.784260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507643, 0.822037, -0.257978,
		0.512755, 0.047631, -0.857213,
		-0.692373, -0.567438, -0.445683,
		32.053307, 31.480879, 47.650555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452084, 32.026791, 47.249836>,  <32.537968, 31.878084, 47.962532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452084, 32.026791, 47.249836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.105743, 31.869911, 47.374081>,  <31.897940, 31.775784, 47.448627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.105743, 31.869911, 47.374081>,  <32.452084, 32.026791, 47.249836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105743, 31.869911, 47.374081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483707, 0.814824, -0.319515,
		-0.127780, -0.426897, -0.895227,
		-0.865852, -0.392200, 0.310611,
		31.845987, 31.752251, 47.467262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001789, 32.301105, 46.813301>,  <32.452084, 32.026791, 47.249836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001789, 32.301105, 46.813301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.775366, 32.175854, 47.118332>,  <31.639511, 32.100704, 47.301350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.775366, 32.175854, 47.118332>,  <32.001789, 32.301105, 46.813301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775366, 32.175854, 47.118332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588605, 0.801182, -0.107941,
		-0.577166, -0.509960, -0.637825,
		-0.566060, -0.313127, 0.762580,
		31.605547, 32.081917, 47.347107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357395, 32.341564, 46.626347>,  <32.001789, 32.301105, 46.813301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357395, 32.341564, 46.626347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.312353, 32.338768, 47.023792>,  <31.285328, 32.337090, 47.262260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.312353, 32.338768, 47.023792>,  <31.357395, 32.341564, 46.626347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312353, 32.338768, 47.023792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638997, 0.766284, -0.067024,
		-0.760923, -0.642464, -0.090754,
		-0.112604, -0.006992, 0.993616,
		31.278572, 32.336670, 47.321877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640881, 32.534283, 46.686863>,  <31.357395, 32.341564, 46.626347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640881, 32.534283, 46.686863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.833509, 32.612286, 47.028637>,  <30.949087, 32.659088, 47.233704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.833509, 32.612286, 47.028637>,  <30.640881, 32.534283, 46.686863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833509, 32.612286, 47.028637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440410, 0.896739, 0.043560,
		-0.757713, -0.397280, 0.517725,
		0.481570, 0.195005, 0.854437,
		30.977980, 32.670788, 47.284969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080667, 32.683552, 47.258976>,  <30.640881, 32.534283, 46.686863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080667, 32.683552, 47.258976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.432604, 32.859779, 47.330276>,  <30.643766, 32.965515, 47.373058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.432604, 32.859779, 47.330276>,  <30.080667, 32.683552, 47.258976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432604, 32.859779, 47.330276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474729, 0.796847, 0.373722,
		0.022612, -0.413438, 0.910251,
		0.879842, 0.440573, 0.178253,
		30.696556, 32.991951, 47.383751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002888, 33.182564, 47.832047>,  <30.080667, 32.683552, 47.258976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002888, 33.182564, 47.832047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.356163, 33.322559, 47.707157>,  <30.568129, 33.406555, 47.632221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.356163, 33.322559, 47.707157>,  <30.002888, 33.182564, 47.832047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356163, 33.322559, 47.707157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246344, 0.912640, 0.326195,
		0.399115, -0.211177, 0.892251,
		0.883189, 0.349990, -0.312226,
		30.621120, 33.427555, 47.613491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355581, 33.566036, 48.381073>,  <30.002888, 33.182564, 47.832047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355581, 33.566036, 48.381073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.518337, 33.705200, 48.043221>,  <30.615992, 33.788696, 47.840508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.518337, 33.705200, 48.043221>,  <30.355581, 33.566036, 48.381073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518337, 33.705200, 48.043221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210453, 0.935462, 0.283936,
		0.888904, 0.062225, 0.453847,
		0.406889, 0.347906, -0.844632,
		30.640404, 33.809570, 47.789833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769081, 34.099972, 48.642784>,  <30.355581, 33.566036, 48.381073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769081, 34.099972, 48.642784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.698483, 34.173889, 48.256065>,  <30.656122, 34.218239, 48.024033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.698483, 34.173889, 48.256065>,  <30.769081, 34.099972, 48.642784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698483, 34.173889, 48.256065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221586, 0.949547, 0.221946,
		0.959035, 0.253402, -0.126647,
		-0.176499, 0.184791, -0.966799,
		30.645533, 34.229328, 47.966026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112312, 34.706303, 48.612988>,  <30.769081, 34.099972, 48.642784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112312, 34.706303, 48.612988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.883581, 34.735039, 48.286098>,  <30.746344, 34.752281, 48.089966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.883581, 34.735039, 48.286098>,  <31.112312, 34.706303, 48.612988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883581, 34.735039, 48.286098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200208, 0.953818, 0.223938,
		0.795570, 0.291669, -0.531036,
		-0.571827, 0.071841, -0.817223,
		30.712032, 34.756592, 48.040932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.322483, 35.326450, 48.249580>,  <31.112312, 34.706303, 48.612988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.322483, 35.326450, 48.249580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.953041, 35.250126, 48.116585>,  <30.731377, 35.204330, 48.036789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.953041, 35.250126, 48.116585>,  <31.322483, 35.326450, 48.249580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953041, 35.250126, 48.116585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296868, 0.904754, 0.305433,
		0.242541, 0.380804, -0.892279,
		-0.923603, -0.190809, -0.332489,
		30.675961, 35.192883, 48.016838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205877, 35.908821, 47.861099>,  <31.322483, 35.326450, 48.249580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205877, 35.908821, 47.861099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.850382, 35.739799, 47.932190>,  <30.637085, 35.638386, 47.974846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.850382, 35.739799, 47.932190>,  <31.205877, 35.908821, 47.861099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850382, 35.739799, 47.932190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353874, 0.878860, 0.319965,
		-0.291399, 0.221474, -0.930611,
		-0.888741, -0.422556, 0.177725,
		30.583759, 35.613033, 47.985508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653543, 36.464619, 47.617901>,  <31.205877, 35.908821, 47.861099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653543, 36.464619, 47.617901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.523245, 36.212250, 47.899563>,  <30.445066, 36.060829, 48.068562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.523245, 36.212250, 47.899563>,  <30.653543, 36.464619, 47.617901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523245, 36.212250, 47.899563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411760, 0.765103, 0.495046,
		-0.851084, -0.128684, -0.509016,
		-0.325745, -0.630918, 0.704154,
		30.425522, 36.022976, 48.110809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044773, 37.118999, 47.387108>,  <30.653543, 36.464619, 47.617901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044773, 37.118999, 47.387108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.264759, 37.434261, 47.497635>,  <31.396751, 37.623417, 47.563953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.264759, 37.434261, 47.497635>,  <31.044773, 37.118999, 47.387108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264759, 37.434261, 47.497635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827602, -0.469789, -0.307200,
		-0.112309, 0.397632, -0.910645,
		0.549965, 0.788154, 0.276320,
		31.429749, 37.670708, 47.580532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620901, 37.169846, 46.925079>,  <31.044773, 37.118999, 47.387108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620901, 37.169846, 46.925079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.739449, 37.414406, 47.218571>,  <31.810577, 37.561142, 47.394665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.739449, 37.414406, 47.218571>,  <31.620901, 37.169846, 46.925079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739449, 37.414406, 47.218571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951611, -0.254398, -0.172390,
		0.081258, 0.749311, -0.657214,
		0.296367, 0.611404, 0.733725,
		31.828360, 37.597828, 47.438686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202541, 37.580364, 46.671551>,  <31.620901, 37.169846, 46.925079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202541, 37.580364, 46.671551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.239117, 37.579456, 47.069874>,  <32.261063, 37.578911, 47.308868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.239117, 37.579456, 47.069874>,  <32.202541, 37.580364, 46.671551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239117, 37.579456, 47.069874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930685, -0.355505, -0.086269,
		0.354210, 0.934672, -0.030398,
		0.091440, -0.002267, 0.995808,
		32.266548, 37.578777, 47.368618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817001, 38.031837, 46.788914>,  <32.202541, 37.580364, 46.671551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817001, 38.031837, 46.788914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.778236, 37.810036, 47.119522>,  <32.754978, 37.676956, 47.317886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.778236, 37.810036, 47.119522>,  <32.817001, 38.031837, 46.788914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778236, 37.810036, 47.119522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892266, -0.416342, -0.174701,
		0.440987, 0.720547, 0.535110,
		-0.096908, -0.554501, 0.826521,
		32.749165, 37.643684, 47.367477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415779, 38.121117, 47.207352>,  <32.817001, 38.031837, 46.788914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415779, 38.121117, 47.207352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.268120, 37.773312, 47.338608>,  <33.179523, 37.564629, 47.417362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.268120, 37.773312, 47.338608>,  <33.415779, 38.121117, 47.207352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268120, 37.773312, 47.338608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903345, -0.418674, -0.093165,
		0.218393, 0.262033, 0.940023,
		-0.369151, -0.869512, 0.328141,
		33.157375, 37.512459, 47.437050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906033, 37.938934, 47.686649>,  <33.415779, 38.121117, 47.207352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906033, 37.938934, 47.686649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.682362, 37.623055, 47.585697>,  <33.548161, 37.433525, 47.525124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.682362, 37.623055, 47.585697>,  <33.906033, 37.938934, 47.686649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682362, 37.623055, 47.585697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822012, -0.567696, -0.044926,
		-0.107799, -0.232584, 0.966584,
		-0.559175, -0.789700, -0.252384,
		33.514610, 37.386143, 47.509983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016701, 37.445141, 48.285583>,  <33.906033, 37.938934, 47.686649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016701, 37.445141, 48.285583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.917580, 37.264729, 47.942619>,  <33.858105, 37.156479, 47.736839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.917580, 37.264729, 47.942619>,  <34.016701, 37.445141, 48.285583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917580, 37.264729, 47.942619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873848, -0.486188, 0.003198,
		-0.418307, -0.748457, 0.514617,
		-0.247807, -0.451035, -0.857414,
		33.843239, 37.129417, 47.685394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224316, 36.780262, 48.345032>,  <34.016701, 37.445141, 48.285583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224316, 36.780262, 48.345032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.211136, 36.822063, 47.947441>,  <34.203228, 36.847145, 47.708885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.211136, 36.822063, 47.947441>,  <34.224316, 36.780262, 48.345032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211136, 36.822063, 47.947441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877817, -0.472475, -0.078771,
		-0.477862, -0.875126, -0.076170,
		-0.032946, 0.104505, -0.993979,
		34.201252, 36.853416, 47.649246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771378, 36.312695, 48.262188>,  <34.224316, 36.780262, 48.345032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771378, 36.312695, 48.262188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.649681, 36.473137, 47.916576>,  <34.576664, 36.569401, 47.709209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.649681, 36.473137, 47.916576>,  <34.771378, 36.312695, 48.262188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649681, 36.473137, 47.916576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904829, -0.161927, -0.393782,
		-0.297857, -0.901607, -0.313665,
		-0.304246, 0.401104, -0.864031,
		34.558407, 36.593468, 47.657368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714054, 35.755131, 47.662865>,  <34.771378, 36.312695, 48.262188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714054, 35.755131, 47.662865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.802242, 36.127293, 47.545742>,  <34.855156, 36.350590, 47.475468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.802242, 36.127293, 47.545742>,  <34.714054, 35.755131, 47.662865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802242, 36.127293, 47.545742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923199, -0.295932, -0.245208,
		-0.314794, -0.216255, -0.924196,
		0.220472, 0.930407, -0.292804,
		34.868385, 36.406414, 47.457901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226841, 35.605545, 47.124203>,  <34.714054, 35.755131, 47.662865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226841, 35.605545, 47.124203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.259995, 35.992001, 47.221935>,  <35.279884, 36.223873, 47.280575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.259995, 35.992001, 47.221935>,  <35.226841, 35.605545, 47.124203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259995, 35.992001, 47.221935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961508, -0.013070, -0.274467,
		-0.261981, 0.257677, -0.930037,
		0.082879, 0.966143, 0.244334,
		35.284859, 36.281845, 47.295235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677746, 35.883678, 46.616814>,  <35.226841, 35.605545, 47.124203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677746, 35.883678, 46.616814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.666374, 36.126022, 46.934837>,  <35.659550, 36.271427, 47.125652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.666374, 36.126022, 46.934837>,  <35.677746, 35.883678, 46.616814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666374, 36.126022, 46.934837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915457, 0.335187, -0.222683,
		-0.401409, 0.721515, -0.564169,
		-0.028433, 0.605860, 0.795063,
		35.657845, 36.307781, 47.173355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.162605, 41.458027, 51.588608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.771948, 41.486469, 51.507504>,  <29.537554, 41.503532, 51.458839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.771948, 41.486469, 51.507504>,  <30.162605, 41.458027, 51.588608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771948, 41.486469, 51.507504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084286, -0.741254, -0.665912,
		-0.197644, -0.667449, 0.717948,
		-0.976644, 0.071101, -0.202761,
		29.478954, 41.507801, 51.446674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085033, 40.811066, 51.549160>,  <30.162605, 41.458027, 51.588608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085033, 40.811066, 51.549160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.770365, 40.980576, 51.369576>,  <29.581564, 41.082279, 51.261826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.770365, 40.980576, 51.369576>,  <30.085033, 40.811066, 51.549160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770365, 40.980576, 51.369576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012301, -0.737827, -0.674877,
		-0.617247, -0.525385, 0.585642,
		-0.786673, 0.423770, -0.448959,
		29.534363, 41.107708, 51.234886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491001, 40.261936, 51.515778>,  <30.085033, 40.811066, 51.549160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.491001, 40.261936, 51.515778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.528759, 40.548180, 51.238941>,  <29.551414, 40.719925, 51.072838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.528759, 40.548180, 51.238941>,  <29.491001, 40.261936, 51.515778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528759, 40.548180, 51.238941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131996, -0.698057, -0.703771,
		-0.986745, -0.024921, -0.160351,
		0.094395, 0.715608, -0.692094,
		29.557077, 40.762863, 51.031311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.238804, 40.019119, 50.913071>,  <29.491001, 40.261936, 51.515778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.238804, 40.019119, 50.913071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.423096, 40.325371, 50.733498>,  <29.533670, 40.509121, 50.625751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.423096, 40.325371, 50.733498>,  <29.238804, 40.019119, 50.913071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423096, 40.325371, 50.733498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336714, -0.618790, -0.709734,
		-0.821188, 0.175833, -0.542893,
		0.460732, 0.765625, -0.448937,
		29.561316, 40.555058, 50.598816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055901, 39.990879, 50.175777>,  <29.238804, 40.019119, 50.913071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.055901, 39.990879, 50.175777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.403435, 40.188744, 50.184082>,  <29.611956, 40.307465, 50.189064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.403435, 40.188744, 50.184082>,  <29.055901, 39.990879, 50.175777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.403435, 40.188744, 50.184082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314780, -0.519537, -0.794352,
		-0.382151, 0.696697, -0.607103,
		0.868835, 0.494666, 0.020764,
		29.664085, 40.337143, 50.190311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.181442, 40.103039, 49.504913>,  <29.055901, 39.990879, 50.175777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.181442, 40.103039, 49.504913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.542255, 40.131760, 49.675175>,  <29.758743, 40.148994, 49.777332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.542255, 40.131760, 49.675175>,  <29.181442, 40.103039, 49.504913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542255, 40.131760, 49.675175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366746, -0.647547, -0.667968,
		0.227666, 0.758635, -0.610443,
		0.902034, 0.071804, 0.425650,
		29.812866, 40.153301, 49.802872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616898, 40.384579, 48.940819>,  <29.181442, 40.103039, 49.504913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616898, 40.384579, 48.940819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.835403, 40.207775, 49.225418>,  <29.966507, 40.101692, 49.396175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.835403, 40.207775, 49.225418>,  <29.616898, 40.384579, 48.940819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835403, 40.207775, 49.225418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546692, -0.455415, -0.702656,
		0.634604, 0.772805, -0.007135,
		0.546265, -0.442007, 0.711494,
		29.999283, 40.075172, 49.438866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340332, 40.298969, 48.728912>,  <29.616898, 40.384579, 48.940819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340332, 40.298969, 48.728912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.363096, 40.031574, 49.025528>,  <30.376755, 39.871136, 49.203499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.363096, 40.031574, 49.025528>,  <30.340332, 40.298969, 48.728912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363096, 40.031574, 49.025528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393970, -0.667432, -0.631919,
		0.917360, 0.328109, 0.225380,
		0.056912, -0.668490, 0.741540,
		30.380171, 39.831028, 49.247990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999630, 39.981876, 48.667011>,  <30.340332, 40.298969, 48.728912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999630, 39.981876, 48.667011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.776356, 39.722828, 48.874477>,  <30.642391, 39.567398, 48.998959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.776356, 39.722828, 48.874477>,  <30.999630, 39.981876, 48.667011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776356, 39.722828, 48.874477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453239, -0.761600, -0.463183,
		0.694984, -0.023463, 0.718643,
		-0.558186, -0.647622, 0.518665,
		30.608900, 39.528542, 49.030079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414240, 39.507660, 48.817226>,  <30.999630, 39.981876, 48.667011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414240, 39.507660, 48.817226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.089342, 39.298580, 48.920799>,  <30.894403, 39.173130, 48.982941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.089342, 39.298580, 48.920799>,  <31.414240, 39.507660, 48.817226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089342, 39.298580, 48.920799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296937, -0.752575, -0.587757,
		0.502085, -0.400517, 0.766484,
		-0.812243, -0.522702, 0.258928,
		30.845669, 39.141769, 48.998478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678085, 38.889103, 48.956692>,  <31.414240, 39.507660, 48.817226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678085, 38.889103, 48.956692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.291464, 38.849392, 48.862103>,  <31.059492, 38.825565, 48.805347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.291464, 38.849392, 48.862103>,  <31.678085, 38.889103, 48.956692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.291464, 38.849392, 48.862103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235993, -0.705309, -0.668466,
		-0.100423, -0.701914, 0.705147,
		-0.966552, -0.099280, -0.236476,
		31.001499, 38.819607, 48.791161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377157, 38.203224, 49.141167>,  <31.678085, 38.889103, 48.956692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377157, 38.203224, 49.141167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.170921, 38.354160, 48.833458>,  <31.047180, 38.444725, 48.648834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.170921, 38.354160, 48.833458>,  <31.377157, 38.203224, 49.141167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.170921, 38.354160, 48.833458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198825, -0.820610, -0.535787,
		-0.833456, -0.429191, 0.348061,
		-0.515577, 0.377352, -0.769276,
		31.016245, 38.467365, 48.602676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.943871, 37.594398, 48.848148>,  <31.377157, 38.203224, 49.141167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.943871, 37.594398, 48.848148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.993855, 37.881481, 48.574131>,  <31.023844, 38.053730, 48.409721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.993855, 37.881481, 48.574131>,  <30.943871, 37.594398, 48.848148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993855, 37.881481, 48.574131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239953, -0.691821, -0.681033,
		-0.962709, -0.079278, -0.258664,
		0.124958, 0.717704, -0.685045,
		31.031342, 38.096794, 48.368618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572645, 37.436180, 48.360172>,  <30.943871, 37.594398, 48.848148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572645, 37.436180, 48.360172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.858217, 37.659298, 48.190857>,  <31.029560, 37.793167, 48.089268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.858217, 37.659298, 48.190857>,  <30.572645, 37.436180, 48.360172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858217, 37.659298, 48.190857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063965, -0.653931, -0.753845,
		-0.697291, 0.511116, -0.502539,
		0.713928, 0.557795, -0.423287,
		31.072395, 37.826637, 48.063869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.146872, 36.878323, 47.943485>,  <30.572645, 37.436180, 48.360172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.146872, 36.878323, 47.943485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.150234, 36.557941, 48.182957>,  <30.152252, 36.365715, 48.326637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.150234, 36.557941, 48.182957>,  <30.146872, 36.878323, 47.943485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.150234, 36.557941, 48.182957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401710, 0.545557, 0.735525,
		-0.915729, -0.246676, -0.317163,
		0.008406, -0.800948, 0.598675,
		30.152756, 36.317657, 48.362560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498478, 36.737881, 48.089649>,  <30.146872, 36.878323, 47.943485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498478, 36.737881, 48.089649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.723326, 36.588490, 48.384819>,  <29.858234, 36.498856, 48.561920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.723326, 36.588490, 48.384819>,  <29.498478, 36.737881, 48.089649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723326, 36.588490, 48.384819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665007, 0.326360, 0.671755,
		-0.491718, -0.868332, -0.064914,
		0.562121, -0.373482, 0.737924,
		29.891962, 36.476444, 48.606197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.026819, 36.285999, 48.497387>,  <29.498478, 36.737881, 48.089649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.026819, 36.285999, 48.497387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.331797, 36.422451, 48.717319>,  <29.514782, 36.504322, 48.849277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.331797, 36.422451, 48.717319>,  <29.026819, 36.285999, 48.497387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331797, 36.422451, 48.717319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642418, 0.297507, 0.706250,
		0.077343, -0.891695, 0.445979,
		0.762441, 0.341128, 0.549831,
		29.560530, 36.524792, 48.882267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.844770, 36.094299, 49.216484>,  <29.026819, 36.285999, 48.497387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.844770, 36.094299, 49.216484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.131422, 36.370197, 49.257847>,  <29.303413, 36.535736, 49.282665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.131422, 36.370197, 49.257847>,  <28.844770, 36.094299, 49.216484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.131422, 36.370197, 49.257847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511391, 0.418830, 0.750374,
		0.474258, -0.590621, 0.652875,
		0.716630, 0.689745, 0.103405,
		29.346411, 36.577122, 49.288868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.982378, 36.185829, 49.956997>,  <28.844770, 36.094299, 49.216484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.982378, 36.185829, 49.956997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.114422, 36.525684, 49.792492>,  <29.193647, 36.729599, 49.693790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.114422, 36.525684, 49.792492>,  <28.982378, 36.185829, 49.956997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114422, 36.525684, 49.792492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401538, 0.520696, 0.753421,
		0.854281, -0.083571, 0.513049,
		0.330107, 0.849642, -0.411264,
		29.213453, 36.780579, 49.669113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106709, 36.508610, 50.617252>,  <28.982378, 36.185829, 49.956997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106709, 36.508610, 50.617252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.108747, 36.799328, 50.342522>,  <29.109970, 36.973759, 50.177681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.108747, 36.799328, 50.342522>,  <29.106709, 36.508610, 50.617252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.108747, 36.799328, 50.342522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445880, 0.616435, 0.648998,
		0.895078, 0.302938, 0.327206,
		0.005095, 0.726799, -0.686831,
		29.110275, 37.017368, 50.136471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.506807, 37.005283, 50.767052>,  <29.106709, 36.508610, 50.617252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.506807, 37.005283, 50.767052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.301596, 37.240475, 50.516903>,  <29.178469, 37.381588, 50.366814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.301596, 37.240475, 50.516903>,  <29.506807, 37.005283, 50.767052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301596, 37.240475, 50.516903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349024, 0.522717, 0.777785,
		0.784209, 0.617295, -0.062951,
		-0.513029, 0.587974, -0.625370,
		29.147688, 37.416866, 50.329292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733089, 37.682953, 50.969704>,  <29.506807, 37.005283, 50.767052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733089, 37.682953, 50.969704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.394772, 37.694618, 50.756618>,  <29.191780, 37.701618, 50.628769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.394772, 37.694618, 50.756618>,  <29.733089, 37.682953, 50.969704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.394772, 37.694618, 50.756618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380043, 0.667846, 0.639960,
		0.374430, 0.743728, -0.553778,
		-0.845795, 0.029161, -0.532710,
		29.141033, 37.703365, 50.596806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547272, 38.378407, 50.900597>,  <29.733089, 37.682953, 50.969704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547272, 38.378407, 50.900597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.215796, 38.159611, 50.853138>,  <29.016909, 38.028336, 50.824665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.215796, 38.159611, 50.853138>,  <29.547272, 38.378407, 50.900597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215796, 38.159611, 50.853138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479475, 0.584416, 0.654646,
		-0.288746, 0.599386, -0.746567,
		-0.828691, -0.546987, -0.118642,
		28.967188, 37.995514, 50.817547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998199, 38.862644, 50.865738>,  <29.547272, 38.378407, 50.900597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998199, 38.862644, 50.865738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.847784, 38.513588, 50.990376>,  <28.757536, 38.304153, 51.065159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.847784, 38.513588, 50.990376>,  <28.998199, 38.862644, 50.865738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847784, 38.513588, 50.990376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436401, 0.463436, 0.771220,
		-0.817405, 0.154025, -0.555091,
		-0.376037, -0.872641, 0.311598,
		28.734974, 38.251797, 51.083855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308395, 39.059109, 50.896439>,  <28.998199, 38.862644, 50.865738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308395, 39.059109, 50.896439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.286730, 38.717369, 51.103184>,  <28.273731, 38.512325, 51.227230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.286730, 38.717369, 51.103184>,  <28.308395, 39.059109, 50.896439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.286730, 38.717369, 51.103184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463097, 0.480081, 0.745026,
		-0.884651, -0.199005, -0.421650,
		-0.054163, -0.854353, 0.516863,
		28.270481, 38.461063, 51.258244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.593981, 39.063564, 51.043968>,  <28.308395, 39.059109, 50.896439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.593981, 39.063564, 51.043968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.760887, 38.794304, 51.288185>,  <27.861031, 38.632748, 51.434715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.760887, 38.794304, 51.288185>,  <27.593981, 39.063564, 51.043968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.760887, 38.794304, 51.288185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586373, 0.313844, 0.746773,
		-0.694303, -0.669608, -0.263759,
		0.417265, -0.673148, 0.610542,
		27.886066, 38.592361, 51.471348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.079851, 38.620258, 51.279785>,  <27.593981, 39.063564, 51.043968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.079851, 38.620258, 51.279785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.372364, 38.623882, 51.552593>,  <27.547871, 38.626057, 51.716278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.372364, 38.623882, 51.552593>,  <27.079851, 38.620258, 51.279785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.372364, 38.623882, 51.552593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672531, 0.176289, 0.718766,
		-0.113719, -0.984297, 0.135011,
		0.731280, 0.009062, 0.682017,
		27.591747, 38.626602, 51.757198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.823540, 38.299965, 51.964367>,  <27.079851, 38.620258, 51.279785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.823540, 38.299965, 51.964367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.134584, 38.537212, 52.047821>,  <27.321211, 38.679562, 52.097893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.134584, 38.537212, 52.047821>,  <26.823540, 38.299965, 51.964367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.134584, 38.537212, 52.047821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529680, 0.439199, 0.725633,
		0.338755, -0.674771, 0.655690,
		0.777614, 0.593118, 0.208632,
		27.367868, 38.715149, 52.110409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.111839, 39.457996, 56.308990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.824005, 39.468666, 56.031433>,  <32.651306, 39.475067, 55.864899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.824005, 39.468666, 56.031433>,  <33.111839, 39.457996, 56.308990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824005, 39.468666, 56.031433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311381, -0.880770, -0.356771,
		-0.620679, -0.472792, 0.625480,
		-0.719583, 0.026678, -0.693894,
		32.608131, 39.476669, 55.823265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654514, 38.732143, 56.252193>,  <33.111839, 39.457996, 56.308990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654514, 38.732143, 56.252193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.620010, 38.934723, 55.909016>,  <32.599308, 39.056271, 55.703110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.620010, 38.934723, 55.909016>,  <32.654514, 38.732143, 56.252193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620010, 38.934723, 55.909016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293087, -0.810149, -0.507700,
		-0.952187, -0.295245, -0.078553,
		-0.086256, 0.506448, -0.857946,
		32.594135, 39.086658, 55.651630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353714, 38.241184, 55.811611>,  <32.654514, 38.732143, 56.252193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353714, 38.241184, 55.811611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.533836, 38.500320, 55.565838>,  <32.641911, 38.655804, 55.418373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.533836, 38.500320, 55.565838>,  <32.353714, 38.241184, 55.811611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533836, 38.500320, 55.565838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409899, -0.761343, -0.502334,
		-0.793227, -0.025652, -0.608386,
		0.450304, 0.647841, -0.614433,
		32.668926, 38.694672, 55.381508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149292, 38.058731, 55.132641>,  <32.353714, 38.241184, 55.811611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149292, 38.058731, 55.132641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.487637, 38.264542, 55.076385>,  <32.690643, 38.388027, 55.042633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.487637, 38.264542, 55.076385>,  <32.149292, 38.058731, 55.132641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487637, 38.264542, 55.076385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319993, -0.700430, -0.637967,
		-0.426756, 0.494631, -0.757113,
		0.845863, 0.514527, -0.140634,
		32.741394, 38.418900, 55.034195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284386, 38.027554, 54.429913>,  <32.149292, 38.058731, 55.132641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284386, 38.027554, 54.429913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.642277, 38.095772, 54.595024>,  <32.857010, 38.136703, 54.694092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.642277, 38.095772, 54.595024>,  <32.284386, 38.027554, 54.429913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642277, 38.095772, 54.595024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388411, -0.753352, -0.530657,
		0.220468, 0.635119, -0.740282,
		0.894724, 0.170541, 0.412777,
		32.910694, 38.146935, 54.718857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730911, 37.757622, 53.973263>,  <32.284386, 38.027554, 54.429913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730911, 37.757622, 53.973263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.986675, 37.837528, 54.270248>,  <33.140133, 37.885471, 54.448441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.986675, 37.837528, 54.270248>,  <32.730911, 37.757622, 53.973263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986675, 37.837528, 54.270248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612193, -0.716499, -0.334440,
		0.465166, 0.668374, -0.580428,
		0.639407, 0.199764, 0.742464,
		33.178497, 37.897457, 54.492989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370041, 37.964275, 53.640217>,  <32.730911, 37.757622, 53.973263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370041, 37.964275, 53.640217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466858, 37.828041, 54.003628>,  <33.524948, 37.746300, 54.221676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466858, 37.828041, 54.003628>,  <33.370041, 37.964275, 53.640217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466858, 37.828041, 54.003628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715632, -0.569645, -0.404197,
		0.655200, 0.748002, 0.105855,
		0.242041, -0.340583, 0.908526,
		33.539471, 37.725864, 54.276184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028286, 37.749439, 53.546574>,  <33.370041, 37.964275, 53.640217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028286, 37.749439, 53.546574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.926121, 37.563408, 53.885624>,  <33.864822, 37.451790, 54.089054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.926121, 37.563408, 53.885624>,  <34.028286, 37.749439, 53.546574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926121, 37.563408, 53.885624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535324, -0.798077, -0.276588,
		0.805105, 0.383110, 0.452806,
		-0.255411, -0.465080, 0.847623,
		33.849499, 37.423885, 54.139912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566750, 37.240913, 53.597012>,  <34.028286, 37.749439, 53.546574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566750, 37.240913, 53.597012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.306599, 37.108826, 53.870640>,  <34.150509, 37.029572, 54.034817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.306599, 37.108826, 53.870640>,  <34.566750, 37.240913, 53.597012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306599, 37.108826, 53.870640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426416, -0.903997, -0.030969,
		0.628628, 0.271558, 0.728754,
		-0.650382, -0.330220, 0.684075,
		34.111485, 37.009758, 54.075863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825233, 36.966923, 54.186794>,  <34.566750, 37.240913, 53.597012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825233, 36.966923, 54.186794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.470215, 36.788361, 54.141216>,  <34.257202, 36.681225, 54.113869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.470215, 36.788361, 54.141216>,  <34.825233, 36.966923, 54.186794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470215, 36.788361, 54.141216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445004, -0.894684, 0.038872,
		-0.119294, -0.016204, 0.992727,
		-0.887547, -0.446405, -0.113942,
		34.203949, 36.654438, 54.107033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852741, 36.383350, 54.564182>,  <34.825233, 36.966923, 54.186794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852741, 36.383350, 54.564182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.536087, 36.303013, 54.333366>,  <34.346096, 36.254810, 54.194878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.536087, 36.303013, 54.333366>,  <34.852741, 36.383350, 54.564182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536087, 36.303013, 54.333366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297114, -0.951785, -0.076338,
		-0.533886, -0.231879, 0.813141,
		-0.791636, -0.200840, -0.577040,
		34.298595, 36.242760, 54.160255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519379, 35.757767, 54.897820>,  <34.852741, 36.383350, 54.564182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519379, 35.757767, 54.897820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.414146, 35.813648, 54.515976>,  <34.351006, 35.847179, 54.286869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.414146, 35.813648, 54.515976>,  <34.519379, 35.757767, 54.897820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414146, 35.813648, 54.515976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408817, -0.880092, -0.241469,
		-0.873875, -0.453785, 0.174420,
		-0.263081, 0.139708, -0.954605,
		34.335220, 35.855560, 54.229595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259846, 35.109673, 54.696712>,  <34.519379, 35.757767, 54.897820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259846, 35.109673, 54.696712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.338184, 35.307480, 54.357986>,  <34.385185, 35.426163, 54.154751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.338184, 35.307480, 54.357986>,  <34.259846, 35.109673, 54.696712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338184, 35.307480, 54.357986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569876, -0.760149, -0.312113,
		-0.798052, -0.421455, -0.430684,
		0.195842, 0.494519, -0.846816,
		34.396938, 35.455837, 54.103943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209091, 34.593765, 54.107761>,  <34.259846, 35.109673, 54.696712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209091, 34.593765, 54.107761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.452644, 34.880493, 53.971863>,  <34.598778, 35.052528, 53.890324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.452644, 34.880493, 53.971863>,  <34.209091, 34.593765, 54.107761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452644, 34.880493, 53.971863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670980, -0.693860, -0.261428,
		-0.423135, -0.068785, -0.903452,
		0.608886, 0.716818, -0.339750,
		34.635311, 35.095539, 53.869938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445873, 34.320595, 54.173958>,  <34.209091, 34.593765, 54.107761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445873, 34.320595, 54.173958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.172710, 34.068695, 54.025875>,  <33.008812, 33.917557, 53.937023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.172710, 34.068695, 54.025875>,  <33.445873, 34.320595, 54.173958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172710, 34.068695, 54.025875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688922, 0.386658, 0.613092,
		-0.242949, 0.673730, -0.697899,
		-0.682907, -0.629748, -0.370209,
		32.967838, 33.879772, 53.914814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853722, 34.700619, 53.834419>,  <33.445873, 34.320595, 54.173958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853722, 34.700619, 53.834419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.759148, 34.344177, 53.989353>,  <32.702404, 34.130310, 54.082314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.759148, 34.344177, 53.989353>,  <32.853722, 34.700619, 53.834419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759148, 34.344177, 53.989353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549094, 0.451415, 0.703364,
		-0.801620, -0.046382, -0.596031,
		-0.236434, -0.891108, 0.387331,
		32.688217, 34.076843, 54.105553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121235, 34.509727, 53.789631>,  <32.853722, 34.700619, 53.834419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121235, 34.509727, 53.789631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.278606, 34.316536, 54.102539>,  <32.373028, 34.200619, 54.290283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.278606, 34.316536, 54.102539>,  <32.121235, 34.509727, 53.789631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278606, 34.316536, 54.102539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529827, 0.576261, 0.622259,
		-0.751332, -0.659280, -0.029181,
		0.393427, -0.482984, 0.782267,
		32.396633, 34.171642, 54.337219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575104, 34.333302, 54.245308>,  <32.121235, 34.509727, 53.789631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575104, 34.333302, 54.245308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.912844, 34.339359, 54.459538>,  <32.115490, 34.342995, 54.588074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.912844, 34.339359, 54.459538>,  <31.575104, 34.333302, 54.245308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912844, 34.339359, 54.459538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460713, 0.530814, 0.711323,
		-0.273520, -0.847353, 0.455170,
		0.844352, 0.015142, 0.535575,
		32.166149, 34.343903, 54.620209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404852, 34.152386, 54.908272>,  <31.575104, 34.333302, 54.245308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404852, 34.152386, 54.908272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.751610, 34.334469, 54.989540>,  <31.959665, 34.443718, 55.038300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.751610, 34.334469, 54.989540>,  <31.404852, 34.152386, 54.908272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751610, 34.334469, 54.989540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403562, 0.401627, 0.822091,
		0.292622, -0.794659, 0.531873,
		0.866897, 0.455205, 0.203170,
		32.011681, 34.471031, 55.050491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473339, 34.199986, 55.616692>,  <31.404852, 34.152386, 54.908272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473339, 34.199986, 55.616692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.737186, 34.472073, 55.488811>,  <31.895494, 34.635326, 55.412083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.737186, 34.472073, 55.488811>,  <31.473339, 34.199986, 55.616692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737186, 34.472073, 55.488811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219681, 0.581271, 0.783495,
		0.718782, -0.446573, 0.532847,
		0.659616, 0.680218, -0.319704,
		31.935072, 34.676136, 55.392902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861397, 34.399609, 56.221611>,  <31.473339, 34.199986, 55.616692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861397, 34.399609, 56.221611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.890087, 34.695808, 55.954327>,  <31.907301, 34.873528, 55.793957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.890087, 34.695808, 55.954327>,  <31.861397, 34.399609, 56.221611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.890087, 34.695808, 55.954327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160495, 0.669779, 0.725009,
		0.984427, 0.055242, 0.166888,
		0.071727, 0.740503, -0.668215,
		31.911606, 34.917961, 55.753860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182762, 34.933525, 56.549267>,  <31.861397, 34.399609, 56.221611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182762, 34.933525, 56.549267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.023300, 35.124653, 56.236153>,  <31.927622, 35.239330, 56.048283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.023300, 35.124653, 56.236153>,  <32.182762, 34.933525, 56.549267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023300, 35.124653, 56.236153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205380, 0.785357, 0.583981,
		0.893806, 0.393579, -0.214956,
		-0.398660, 0.477818, -0.782790,
		31.903702, 35.267998, 56.001316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371674, 35.781288, 56.638214>,  <32.182762, 34.933525, 56.549267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371674, 35.781288, 56.638214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.059910, 35.723022, 56.394474>,  <31.872852, 35.688065, 56.248230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.059910, 35.723022, 56.394474>,  <32.371674, 35.781288, 56.638214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059910, 35.723022, 56.394474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384469, 0.879133, 0.281618,
		0.494676, 0.453771, -0.741208,
		-0.779410, -0.145662, -0.609346,
		31.826086, 35.679325, 56.211670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334747, 36.420052, 56.239208>,  <32.371674, 35.781288, 56.638214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334747, 36.420052, 56.239208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.981512, 36.232368, 56.239494>,  <31.769571, 36.119759, 56.239666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.981512, 36.232368, 56.239494>,  <32.334747, 36.420052, 56.239208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981512, 36.232368, 56.239494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430846, 0.811497, 0.394772,
		-0.185810, 0.348310, -0.918779,
		-0.883089, -0.469205, 0.000716,
		31.716585, 36.091606, 56.239708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874308, 36.827717, 55.835739>,  <32.334747, 36.420052, 56.239208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874308, 36.827717, 55.835739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.634256, 36.621651, 56.080509>,  <31.490225, 36.498013, 56.227371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.634256, 36.621651, 56.080509>,  <31.874308, 36.827717, 55.835739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634256, 36.621651, 56.080509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480336, 0.843807, 0.239307,
		-0.639628, -0.150314, -0.753844,
		-0.600128, -0.515166, 0.611924,
		31.454218, 36.467102, 56.264088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078852, 36.925014, 55.664120>,  <31.874308, 36.827717, 55.835739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078852, 36.925014, 55.664120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.111258, 36.802898, 56.043644>,  <31.130701, 36.729630, 56.271358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.111258, 36.802898, 56.043644>,  <31.078852, 36.925014, 55.664120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111258, 36.802898, 56.043644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465880, 0.829949, 0.306823,
		-0.881131, -0.466888, -0.074989,
		0.081015, -0.305287, 0.948808,
		31.135563, 36.711311, 56.328285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446091, 37.119591, 55.919617>,  <31.078852, 36.925014, 55.664120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446091, 37.119591, 55.919617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.662241, 37.054592, 56.249851>,  <30.791931, 37.015591, 56.447990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.662241, 37.054592, 56.249851>,  <30.446091, 37.119591, 55.919617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.662241, 37.054592, 56.249851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413378, 0.803332, 0.428691,
		-0.732881, -0.572932, 0.366926,
		0.540374, -0.162501, 0.825584,
		30.824354, 37.005840, 56.497528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.970922, 37.054710, 56.347683>,  <30.446091, 37.119591, 55.919617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.970922, 37.054710, 56.347683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.284822, 37.180145, 56.561535>,  <30.473164, 37.255405, 56.689846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.284822, 37.180145, 56.561535>,  <29.970922, 37.054710, 56.347683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284822, 37.180145, 56.561535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575043, 0.690222, 0.439226,
		-0.231279, -0.652119, 0.721977,
		0.784752, 0.313584, 0.534631,
		30.520248, 37.274220, 56.721924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.227961, 36.981525, 56.537689>,  <29.970922, 37.054710, 56.347683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.227961, 36.981525, 56.537689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.109509, 37.099712, 56.174370>,  <29.038437, 37.170624, 55.956379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.109509, 37.099712, 56.174370>,  <29.227961, 36.981525, 56.537689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109509, 37.099712, 56.174370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234675, -0.899295, -0.369047,
		-0.925871, -0.322440, 0.196967,
		-0.296127, 0.295467, -0.908300,
		29.020670, 37.188351, 55.901878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.869520, 36.342037, 56.307648>,  <29.227961, 36.981525, 56.537689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.869520, 36.342037, 56.307648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.894955, 36.551117, 55.967590>,  <28.910215, 36.676563, 55.763557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.894955, 36.551117, 55.967590>,  <28.869520, 36.342037, 56.307648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.894955, 36.551117, 55.967590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227067, -0.837101, -0.497697,
		-0.971801, -0.161394, -0.171914,
		0.063584, 0.522698, -0.850143,
		28.914030, 36.707928, 55.712547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422428, 36.016411, 55.718243>,  <28.869520, 36.342037, 56.307648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422428, 36.016411, 55.718243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.674652, 36.256737, 55.521706>,  <28.825987, 36.400932, 55.403782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.674652, 36.256737, 55.521706>,  <28.422428, 36.016411, 55.718243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.674652, 36.256737, 55.521706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144714, -0.712971, -0.686098,
		-0.762528, 0.361523, -0.536518,
		0.630562, 0.600811, -0.491343,
		28.863821, 36.436981, 55.374302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.173552, 36.095955, 54.972210>,  <28.422428, 36.016411, 55.718243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.173552, 36.095955, 54.972210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.561634, 36.191692, 54.987263>,  <28.794483, 36.249134, 54.996292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.561634, 36.191692, 54.987263>,  <28.173552, 36.095955, 54.972210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.561634, 36.191692, 54.987263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202139, -0.714005, -0.670326,
		-0.133569, 0.657960, -0.741112,
		0.970206, 0.239342, 0.037630,
		28.852695, 36.263496, 54.998550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.297564, 36.159523, 54.168358>,  <28.173552, 36.095955, 54.972210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.297564, 36.159523, 54.168358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.625057, 36.116726, 54.394005>,  <28.821554, 36.091049, 54.529392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.625057, 36.116726, 54.394005>,  <28.297564, 36.159523, 54.168358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625057, 36.116726, 54.394005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326792, -0.720999, -0.611039,
		0.472104, 0.684627, -0.555342,
		0.818734, -0.106992, 0.564116,
		28.870678, 36.084629, 54.563240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789963, 36.131496, 53.601723>,  <28.297564, 36.159523, 54.168358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789963, 36.131496, 53.601723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.956926, 35.970821, 53.927769>,  <29.057104, 35.874416, 54.123398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.956926, 35.970821, 53.927769>,  <28.789963, 36.131496, 53.601723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.956926, 35.970821, 53.927769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435473, -0.698871, -0.567400,
		0.797580, 0.591799, -0.116790,
		0.417408, -0.401688, 0.815118,
		29.082150, 35.850315, 54.172302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497068, 35.862827, 53.425625>,  <28.789963, 36.131496, 53.601723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497068, 35.862827, 53.425625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.378031, 35.662010, 53.750439>,  <29.306608, 35.541519, 53.945328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.378031, 35.662010, 53.750439>,  <29.497068, 35.862827, 53.425625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378031, 35.662010, 53.750439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478148, -0.814579, -0.328384,
		0.826325, 0.290546, 0.482463,
		-0.297594, -0.502040, 0.812031,
		29.288754, 35.511398, 53.994049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044350, 35.537201, 53.686729>,  <29.497068, 35.862827, 53.425625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044350, 35.537201, 53.686729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.749256, 35.330219, 53.860161>,  <29.572201, 35.206032, 53.964222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.749256, 35.330219, 53.860161>,  <30.044350, 35.537201, 53.686729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749256, 35.330219, 53.860161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374099, -0.847976, -0.375483,
		0.561962, -0.114803, 0.819158,
		-0.737732, -0.517453, 0.433582,
		29.527937, 35.174984, 53.990234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348486, 35.038883, 54.165668>,  <30.044350, 35.537201, 53.686729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.348486, 35.038883, 54.165668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.993402, 34.897095, 54.048145>,  <29.780354, 34.812019, 53.977631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.993402, 34.897095, 54.048145>,  <30.348486, 35.038883, 54.165668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993402, 34.897095, 54.048145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447691, -0.813528, -0.371141,
		-0.107461, -0.460999, 0.880870,
		-0.887707, -0.354474, -0.293808,
		29.727091, 34.790752, 53.960003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315950, 34.345062, 54.345066>,  <30.348486, 35.038883, 54.165668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.315950, 34.345062, 54.345066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.025063, 34.397446, 54.075550>,  <29.850529, 34.428875, 53.913841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.025063, 34.397446, 54.075550>,  <30.315950, 34.345062, 54.345066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025063, 34.397446, 54.075550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337126, -0.786930, -0.516805,
		-0.597909, -0.602985, 0.528123,
		-0.727222, 0.130958, -0.673795,
		29.806896, 34.436733, 53.873413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059423, 33.615570, 54.186741>,  <30.315950, 34.345062, 54.345066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.059423, 33.615570, 54.186741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.928024, 33.853626, 53.893375>,  <29.849186, 33.996460, 53.717354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.928024, 33.853626, 53.893375>,  <30.059423, 33.615570, 54.186741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928024, 33.853626, 53.893375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132287, -0.739863, -0.659623,
		-0.935195, -0.313705, 0.164313,
		-0.328496, 0.595140, -0.733416,
		29.829475, 34.032169, 53.673351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.653358, 33.123920, 53.797634>,  <30.059423, 33.615570, 54.186741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.653358, 33.123920, 53.797634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.769617, 33.416824, 53.551281>,  <29.839373, 33.592567, 53.403469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.769617, 33.416824, 53.551281>,  <29.653358, 33.123920, 53.797634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769617, 33.416824, 53.551281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143175, -0.669709, -0.728691,
		-0.946058, 0.123612, -0.299490,
		0.290646, 0.732264, -0.615885,
		29.856812, 33.636505, 53.366516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362890, 32.951340, 53.132126>,  <29.653358, 33.123920, 53.797634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362890, 32.951340, 53.132126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.624062, 33.228771, 53.010384>,  <29.780764, 33.395229, 52.937336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.624062, 33.228771, 53.010384>,  <29.362890, 32.951340, 53.132126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.624062, 33.228771, 53.010384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184161, -0.535150, -0.824439,
		-0.734689, 0.482249, -0.477145,
		0.652929, 0.693578, -0.304358,
		29.819941, 33.436844, 52.919075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.264824, 32.937950, 52.475586>,  <29.362890, 32.951340, 53.132126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.264824, 32.937950, 52.475586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.627361, 33.101334, 52.518860>,  <29.844883, 33.199364, 52.544823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.627361, 33.101334, 52.518860>,  <29.264824, 32.937950, 52.475586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.627361, 33.101334, 52.518860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325797, -0.512499, -0.794482,
		-0.269068, 0.755320, -0.597574,
		0.906344, 0.408457, 0.108184,
		29.899265, 33.223869, 52.551315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<26.883743, 38.392902, 52.661449> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.108660, 38.711636, 52.573009>,  <27.243610, 38.902874, 52.519947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.108660, 38.711636, 52.573009>,  <26.883743, 38.392902, 52.661449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.108660, 38.711636, 52.573009> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439059, 0.514248, 0.736733,
		0.700754, -0.317182, 0.639014,
		0.562290, 0.796834, -0.221100,
		27.277348, 38.950687, 52.506680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.102839, 38.712345, 53.331776>,  <26.883743, 38.392902, 52.661449>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.102839, 38.712345, 53.331776> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.144876, 39.004562, 53.061886>,  <27.170099, 39.179893, 52.899952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.144876, 39.004562, 53.061886>,  <27.102839, 38.712345, 53.331776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.144876, 39.004562, 53.061886> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229077, 0.678022, 0.698433,
		0.967718, 0.081163, 0.238608,
		0.105094, 0.730546, -0.674727,
		27.176405, 39.223728, 52.859467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.395096, 39.202446, 53.742943>,  <27.102839, 38.712345, 53.331776>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.395096, 39.202446, 53.742943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.211275, 39.377087, 53.433571>,  <27.100983, 39.481873, 53.247948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.211275, 39.377087, 53.433571>,  <27.395096, 39.202446, 53.742943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.211275, 39.377087, 53.433571> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300252, 0.743182, 0.597937,
		0.835859, 0.507006, -0.210440,
		-0.459553, 0.436606, -0.773425,
		27.073410, 39.508068, 53.201542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.641634, 39.935562, 53.802700>,  <27.395096, 39.202446, 53.742943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.641634, 39.935562, 53.802700> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.319677, 39.957066, 53.566307>,  <27.126503, 39.969967, 53.424473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.319677, 39.957066, 53.566307>,  <27.641634, 39.935562, 53.802700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.319677, 39.957066, 53.566307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328443, 0.789087, 0.519102,
		0.494243, 0.611925, -0.617473,
		-0.804891, 0.053758, -0.590983,
		27.078211, 39.973194, 53.389011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.613487, 40.564056, 53.627792>,  <27.641634, 39.935562, 53.802700>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.613487, 40.564056, 53.627792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.240356, 40.432697, 53.568474>,  <27.016478, 40.353882, 53.532883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.240356, 40.432697, 53.568474>,  <27.613487, 40.564056, 53.627792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.240356, 40.432697, 53.568474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356530, 0.781618, 0.511820,
		-0.052171, 0.530310, -0.846197,
		-0.932826, -0.328397, -0.148294,
		26.960508, 40.334179, 53.523987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.228840, 41.128799, 53.231262>,  <27.613487, 40.564056, 53.627792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.228840, 41.128799, 53.231262> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.980700, 40.872196, 53.411766>,  <26.831816, 40.718235, 53.520069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.980700, 40.872196, 53.411766>,  <27.228840, 41.128799, 53.231262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.980700, 40.872196, 53.411766> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585816, 0.761538, 0.277273,
		-0.521522, -0.092348, -0.848226,
		-0.620350, -0.641508, 0.451258,
		26.794594, 40.679745, 53.547142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.611578, 41.358349, 53.034107>,  <27.228840, 41.128799, 53.231262>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.611578, 41.358349, 53.034107> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.535156, 41.129032, 53.352814>,  <26.489304, 40.991444, 53.544037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.535156, 41.129032, 53.352814>,  <26.611578, 41.358349, 53.034107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.535156, 41.129032, 53.352814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575112, 0.723178, 0.382440,
		-0.795452, -0.385162, -0.467874,
		-0.191054, -0.573293, 0.796765,
		26.477840, 40.957043, 53.591843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.001055, 41.515522, 53.188175>,  <26.611578, 41.358349, 53.034107>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.001055, 41.515522, 53.188175> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.137829, 41.364655, 53.532459>,  <26.219894, 41.274136, 53.739029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.137829, 41.364655, 53.532459>,  <26.001055, 41.515522, 53.188175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.137829, 41.364655, 53.532459> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571818, 0.643326, 0.509074,
		-0.745723, -0.666242, 0.004307,
		0.341937, -0.377165, 0.860712,
		26.240410, 41.251507, 53.790672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.395372, 41.407497, 53.611103>,  <26.001055, 41.515522, 53.188175>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.395372, 41.407497, 53.611103> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.715513, 41.443813, 53.848148>,  <25.907597, 41.465603, 53.990376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.715513, 41.443813, 53.848148>,  <25.395372, 41.407497, 53.611103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.715513, 41.443813, 53.848148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465424, 0.717168, 0.518700,
		-0.377914, -0.690961, 0.616242,
		0.800351, 0.090790, 0.592618,
		25.955618, 41.471050, 54.025932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.074314, 41.525700, 54.227005>,  <25.395372, 41.407497, 53.611103>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.074314, 41.525700, 54.227005> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.464630, 41.591427, 54.284740>,  <25.698820, 41.630863, 54.319382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.464630, 41.591427, 54.284740>,  <25.074314, 41.525700, 54.227005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.464630, 41.591427, 54.284740> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215014, 0.841497, 0.495633,
		-0.040018, -0.514669, 0.856455,
		0.975791, 0.164316, 0.144336,
		25.757368, 41.640720, 54.328041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.987665, 41.868580, 54.919140>,  <25.074314, 41.525700, 54.227005>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.987665, 41.868580, 54.919140> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.359821, 41.925751, 54.784119>,  <25.583115, 41.960052, 54.703106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.359821, 41.925751, 54.784119>,  <24.987665, 41.868580, 54.919140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.359821, 41.925751, 54.784119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078772, 0.821385, 0.564909,
		0.358001, -0.552177, 0.752951,
		0.930392, 0.142927, -0.337553,
		25.638939, 41.968628, 54.682854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.434851, 41.959675, 55.544144>,  <24.987665, 41.868580, 54.919140>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.434851, 41.959675, 55.544144> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.592030, 42.143620, 55.225620>,  <25.686337, 42.253986, 55.034504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.592030, 42.143620, 55.225620>,  <25.434851, 41.959675, 55.544144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.592030, 42.143620, 55.225620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008419, 0.867734, 0.496957,
		0.919522, -0.188574, 0.344847,
		0.392949, 0.459866, -0.796313,
		25.709915, 42.281578, 54.986725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.704237, 42.578770, 55.872532>,  <25.434851, 41.959675, 55.544144>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.704237, 42.578770, 55.872532> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.685894, 42.692970, 55.489620>,  <25.674889, 42.761490, 55.259872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.685894, 42.692970, 55.489620>,  <25.704237, 42.578770, 55.872532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.685894, 42.692970, 55.489620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183029, 0.944467, 0.272914,
		0.982037, -0.162695, -0.095564,
		-0.045855, 0.285503, -0.957280,
		25.672138, 42.778622, 55.202435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.049734, 42.886620, 56.469631>,  <25.704237, 42.578770, 55.872532>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.049734, 42.886620, 56.469631> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.122015, 42.735451, 56.832844>,  <26.165382, 42.644749, 57.050770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.122015, 42.735451, 56.832844>,  <26.049734, 42.886620, 56.469631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.122015, 42.735451, 56.832844> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482156, -0.770644, -0.416693,
		0.857247, 0.513110, 0.042962,
		0.180701, -0.377924, 0.908031,
		26.176226, 42.622074, 57.105251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.714182, 42.654648, 56.432644>,  <26.049734, 42.886620, 56.469631>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.714182, 42.654648, 56.432644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.522007, 42.463249, 56.726643>,  <26.406702, 42.348412, 56.903042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.522007, 42.463249, 56.726643>,  <26.714182, 42.654648, 56.432644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.522007, 42.463249, 56.726643> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405272, -0.864337, -0.297784,
		0.777774, 0.154807, 0.609181,
		-0.480439, -0.478493, 0.734998,
		26.377874, 42.319702, 56.947144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.210724, 42.228218, 56.761246>,  <26.714182, 42.654648, 56.432644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.210724, 42.228218, 56.761246> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.874441, 42.032677, 56.854397>,  <26.672670, 41.915352, 56.910286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.874441, 42.032677, 56.854397>,  <27.210724, 42.228218, 56.761246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.874441, 42.032677, 56.854397> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418549, -0.859526, -0.293311,
		0.343549, -0.149119, 0.927220,
		-0.840708, -0.488854, 0.232875,
		26.622229, 41.886021, 56.924259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505888, 41.602779, 57.143452>,  <27.210724, 42.228218, 56.761246>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.505888, 41.602779, 57.143452> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.134026, 41.514263, 57.025627>,  <26.910908, 41.461155, 56.954933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.134026, 41.514263, 57.025627>,  <27.505888, 41.602779, 57.143452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.134026, 41.514263, 57.025627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256897, -0.962446, -0.087759,
		-0.264082, -0.157258, 0.951593,
		-0.929658, -0.221286, -0.294564,
		26.855127, 41.447876, 56.937260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.390236, 40.985088, 57.435223>,  <27.505888, 41.602779, 57.143452>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.390236, 40.985088, 57.435223> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.129250, 41.001865, 57.132561>,  <26.972658, 41.011932, 56.950962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.129250, 41.001865, 57.132561>,  <27.390236, 40.985088, 57.435223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.129250, 41.001865, 57.132561> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241694, -0.934807, -0.260230,
		-0.718243, -0.352671, 0.599792,
		-0.652465, 0.041942, -0.756657,
		26.933510, 41.014446, 56.905563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.057756, 40.470192, 57.580669>,  <27.390236, 40.985088, 57.435223>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.057756, 40.470192, 57.580669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.975389, 40.566513, 57.201279>,  <26.925970, 40.624306, 56.973644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.975389, 40.566513, 57.201279>,  <27.057756, 40.470192, 57.580669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.975389, 40.566513, 57.201279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275905, -0.915641, -0.292364,
		-0.938869, -0.321892, 0.122106,
		-0.205915, 0.240802, -0.948480,
		26.913614, 40.638752, 56.916737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.581919, 39.915962, 57.315800>,  <27.057756, 40.470192, 57.580669>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.581919, 39.915962, 57.315800> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.779602, 40.079498, 57.008915>,  <26.898212, 40.177620, 56.824783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.779602, 40.079498, 57.008915>,  <26.581919, 39.915962, 57.315800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.779602, 40.079498, 57.008915> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311188, -0.907234, -0.282999,
		-0.811740, -0.098886, -0.575587,
		0.494207, 0.408837, -0.767210,
		26.927864, 40.202148, 56.778751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.475245, 39.531223, 56.693298>,  <26.581919, 39.915962, 57.315800>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.475245, 39.531223, 56.693298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.816637, 39.718575, 56.601917>,  <27.021473, 39.830986, 56.547089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.816637, 39.718575, 56.601917>,  <26.475245, 39.531223, 56.693298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.816637, 39.718575, 56.601917> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349746, -0.839813, -0.415200,
		-0.386326, 0.274467, -0.880580,
		0.853481, 0.468382, -0.228448,
		27.072681, 39.859089, 56.533382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.680204, 39.107983, 56.153015>,  <26.475245, 39.531223, 56.693298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.680204, 39.107983, 56.153015> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.998268, 39.333706, 56.241810>,  <27.189106, 39.469139, 56.295086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.998268, 39.333706, 56.241810>,  <26.680204, 39.107983, 56.153015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.998268, 39.333706, 56.241810> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606397, -0.741075, -0.288257,
		0.001840, 0.363820, -0.931468,
		0.795160, 0.564308, 0.221983,
		27.236816, 39.502998, 56.308403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.033070, 38.943932, 55.602772>,  <26.680204, 39.107983, 56.153015>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.033070, 38.943932, 55.602772> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.294394, 39.081440, 55.872589>,  <27.451187, 39.163944, 56.034481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.294394, 39.081440, 55.872589>,  <27.033070, 38.943932, 55.602772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.294394, 39.081440, 55.872589> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669655, -0.678040, -0.303025,
		0.353197, 0.649681, -0.673177,
		0.653310, 0.343769, 0.674544,
		27.490387, 39.184570, 56.074951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.758057, 39.009399, 55.263821>,  <27.033070, 38.943932, 55.602772>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.758057, 39.009399, 55.263821> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.845922, 38.999901, 55.653934>,  <27.898642, 38.994202, 55.888004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.845922, 38.999901, 55.653934>,  <27.758057, 39.009399, 55.263821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.845922, 38.999901, 55.653934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578728, -0.801632, -0.149868,
		0.785380, 0.597346, -0.162347,
		0.219665, -0.023748, 0.975286,
		27.911821, 38.992775, 55.946522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526653, 39.113693, 55.358841>,  <27.758057, 39.009399, 55.263821>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.526653, 39.113693, 55.358841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.384935, 38.911686, 55.673656>,  <28.299906, 38.790482, 55.862545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.384935, 38.911686, 55.673656>,  <28.526653, 39.113693, 55.358841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.384935, 38.911686, 55.673656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700218, -0.701112, -0.134673,
		0.619816, 0.503387, 0.602022,
		-0.354292, -0.505019, 0.787040,
		28.278648, 38.760181, 55.909767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061701, 38.679459, 55.679508>,  <28.526653, 39.113693, 55.358841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061701, 38.679459, 55.679508> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.739008, 38.498104, 55.831100>,  <28.545391, 38.389294, 55.922054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.739008, 38.498104, 55.831100>,  <29.061701, 38.679459, 55.679508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.739008, 38.498104, 55.831100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392634, -0.890570, -0.229616,
		0.441611, -0.036439, 0.896466,
		-0.806733, -0.453384, 0.378978,
		28.496988, 38.362087, 55.944794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410772, 38.247368, 56.010075>,  <29.061701, 38.679459, 55.679508>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410772, 38.247368, 56.010075> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.039806, 38.097775, 56.012512>,  <28.817226, 38.008018, 56.013973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.039806, 38.097775, 56.012512>,  <29.410772, 38.247368, 56.010075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.039806, 38.097775, 56.012512> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373925, -0.927418, -0.008688,
		0.008897, -0.005780, 0.999944,
		-0.927416, -0.373982, 0.006090,
		28.761581, 37.985580, 56.014339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.384720, 37.706142, 56.514523>,  <29.410772, 38.247368, 56.010075>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.384720, 37.706142, 56.514523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.109789, 37.657490, 56.228088>,  <28.944830, 37.628300, 56.056229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.109789, 37.657490, 56.228088>,  <29.384720, 37.706142, 56.514523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109789, 37.657490, 56.228088> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285497, -0.951769, -0.112371,
		-0.667885, -0.281677, 0.688904,
		-0.687330, -0.121628, -0.716090,
		28.903589, 37.621002, 56.013260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670267, 37.273125, 57.086212>,  <29.384720, 37.706142, 56.514523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670267, 37.273125, 57.086212> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.026987, 37.453583, 57.072582>,  <30.241020, 37.561855, 57.064404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.026987, 37.453583, 57.072582>,  <29.670267, 37.273125, 57.086212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026987, 37.453583, 57.072582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379229, 0.786470, 0.487494,
		0.246730, -0.421825, 0.872461,
		0.891801, 0.451142, -0.034078,
		30.294527, 37.588924, 57.062359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.738626, 37.451923, 57.788490>,  <29.670267, 37.273125, 57.086212>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.738626, 37.451923, 57.788490> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.992630, 37.670769, 57.570343>,  <30.145033, 37.802074, 57.439453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.992630, 37.670769, 57.570343>,  <29.738626, 37.451923, 57.788490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.992630, 37.670769, 57.570343> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275502, 0.819947, 0.501782,
		0.721707, -0.168386, 0.671406,
		0.635010, 0.547113, -0.545371,
		30.183134, 37.834904, 57.406731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141657, 37.842583, 58.281281>,  <29.738626, 37.451923, 57.788490>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141657, 37.842583, 58.281281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.145529, 38.035522, 57.930912>,  <30.147852, 38.151287, 57.720692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.145529, 38.035522, 57.930912>,  <30.141657, 37.842583, 58.281281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.145529, 38.035522, 57.930912> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286348, 0.840619, 0.459745,
		0.958077, 0.246368, 0.146258,
		0.009681, 0.482352, -0.875924,
		30.148434, 38.180229, 57.668137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487301, 38.467590, 58.464767>,  <30.141657, 37.842583, 58.281281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487301, 38.467590, 58.464767> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.324903, 38.585556, 58.118774>,  <30.227465, 38.656338, 57.911179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.324903, 38.585556, 58.118774>,  <30.487301, 38.467590, 58.464767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324903, 38.585556, 58.118774> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110205, 0.923790, 0.366697,
		0.907206, 0.244202, -0.342552,
		-0.405994, 0.294919, -0.864981,
		30.203106, 38.674030, 57.859280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725246, 39.115822, 58.441029>,  <30.487301, 38.467590, 58.464767>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725246, 39.115822, 58.441029> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.404808, 39.103004, 58.201958>,  <30.212545, 39.095314, 58.058514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.404808, 39.103004, 58.201958>,  <30.725246, 39.115822, 58.441029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404808, 39.103004, 58.201958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341617, 0.844424, 0.412608,
		0.491471, 0.534716, -0.687412,
		-0.801095, -0.032047, -0.597678,
		30.164480, 39.093391, 58.022655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660294, 39.832417, 58.146008>,  <30.725246, 39.115822, 58.441029>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660294, 39.832417, 58.146008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.304649, 39.660736, 58.082420>,  <30.091263, 39.557728, 58.044270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.304649, 39.660736, 58.082420>,  <30.660294, 39.832417, 58.146008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304649, 39.660736, 58.082420> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457407, 0.845601, 0.275206,
		0.016300, 0.317399, -0.948152,
		-0.889108, -0.429205, -0.158964,
		30.037916, 39.531975, 58.034733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230831, 40.296291, 57.801651>,  <30.660294, 39.832417, 58.146008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230831, 40.296291, 57.801651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.995516, 40.043972, 58.004044>,  <29.854326, 39.892582, 58.125477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.995516, 40.043972, 58.004044>,  <30.230831, 40.296291, 57.801651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995516, 40.043972, 58.004044> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498652, 0.775560, 0.387108,
		-0.636601, -0.024575, -0.770802,
		-0.588290, -0.630795, 0.505977,
		29.819029, 39.854733, 58.155838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152712, 40.623074, 57.057251>,  <30.230831, 40.296291, 57.801651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152712, 40.623074, 57.057251> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.430243, 40.905640, 57.001286>,  <30.596762, 41.075180, 56.967705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.430243, 40.905640, 57.001286>,  <30.152712, 40.623074, 57.057251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.430243, 40.905640, 57.001286> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616930, -0.683284, -0.390538,
		-0.371483, 0.184649, -0.909893,
		0.693828, 0.706419, -0.139913,
		30.638391, 41.117565, 56.959312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.425335, 40.606529, 56.314461>,  <30.152712, 40.623074, 57.057251>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.425335, 40.606529, 56.314461> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.717499, 40.770622, 56.532894>,  <30.892797, 40.869080, 56.663956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.717499, 40.770622, 56.532894>,  <30.425335, 40.606529, 56.314461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.717499, 40.770622, 56.532894> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682412, -0.471713, -0.558391,
		0.028527, 0.780511, -0.624491,
		0.730411, 0.410231, 0.546086,
		30.936623, 40.893692, 56.696720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890038, 41.000896, 55.882523>,  <30.425335, 40.606529, 56.314461>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890038, 41.000896, 55.882523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.092855, 40.895035, 56.210636>,  <31.214546, 40.831516, 56.407505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.092855, 40.895035, 56.210636>,  <30.890038, 41.000896, 55.882523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092855, 40.895035, 56.210636> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699062, -0.430438, -0.570995,
		0.504198, 0.862948, -0.033240,
		0.507047, -0.264657, 0.820280,
		31.244970, 40.815636, 56.456718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544622, 41.102283, 55.665668>,  <30.890038, 41.000896, 55.882523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544622, 41.102283, 55.665668> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.595976, 40.904018, 56.009258>,  <31.626787, 40.785057, 56.215412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.595976, 40.904018, 56.009258>,  <31.544622, 41.102283, 55.665668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595976, 40.904018, 56.009258> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782026, -0.482052, -0.395046,
		0.609880, 0.722456, 0.325736,
		0.128382, -0.495664, 0.858973,
		31.634491, 40.755318, 56.266949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242756, 41.138977, 55.738930>,  <31.544622, 41.102283, 55.665668>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242756, 41.138977, 55.738930> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.086605, 40.845932, 55.961960>,  <31.992914, 40.670105, 56.095776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.086605, 40.845932, 55.961960>,  <32.242756, 41.138977, 55.738930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086605, 40.845932, 55.961960> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685386, -0.635619, -0.355296,
		0.614698, 0.243453, 0.750251,
		-0.390376, -0.732611, 0.557573,
		31.969492, 40.626148, 56.129230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786835, 40.864422, 56.034348>,  <32.242756, 41.138977, 55.738930>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786835, 40.864422, 56.034348> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.503227, 40.582348, 56.033195>,  <32.333061, 40.413105, 56.032505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.503227, 40.582348, 56.033195>,  <32.786835, 40.864422, 56.034348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503227, 40.582348, 56.033195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589516, -0.590472, -0.551193,
		0.386989, -0.392507, 0.834373,
		-0.709021, -0.705182, -0.002883,
		32.290520, 40.370792, 56.032330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203865, 40.201672, 56.208046>,  <32.786835, 40.864422, 56.034348>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203865, 40.201672, 56.208046> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.854446, 40.080811, 56.055405>,  <32.644794, 40.008293, 55.963818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.854446, 40.080811, 56.055405>,  <33.203865, 40.201672, 56.208046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854446, 40.080811, 56.055405> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460574, -0.766727, -0.447214,
		-0.157459, -0.566419, 0.808935,
		-0.873543, -0.302157, -0.381606,
		32.592384, 39.990162, 55.940922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<27.278854, 45.182526, 54.183346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.025055, 44.878391, 54.127766>,  <26.872776, 44.695911, 54.094418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.025055, 44.878391, 54.127766>,  <27.278854, 45.182526, 54.183346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.025055, 44.878391, 54.127766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622585, -0.396220, -0.674832,
		0.458042, -0.514688, 0.724772,
		-0.634497, -0.760333, -0.138952,
		26.834705, 44.650291, 54.086079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.691547, 44.518635, 54.280499>,  <27.278854, 45.182526, 54.183346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.691547, 44.518635, 54.280499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.355179, 44.429729, 54.083138>,  <27.153358, 44.376385, 53.964722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.355179, 44.429729, 54.083138>,  <27.691547, 44.518635, 54.280499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.355179, 44.429729, 54.083138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526482, -0.546916, -0.650921,
		-0.125175, -0.807143, 0.576932,
		-0.840921, -0.222266, -0.493407,
		27.102903, 44.363049, 53.935116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.578812, 43.778526, 54.250195>,  <27.691547, 44.518635, 54.280499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.578812, 43.778526, 54.250195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.379704, 43.928516, 53.937370>,  <27.260239, 44.018509, 53.749676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.379704, 43.928516, 53.937370>,  <27.578812, 43.778526, 54.250195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.379704, 43.928516, 53.937370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489788, -0.622635, -0.610273,
		-0.715775, -0.686819, 0.126272,
		-0.497769, 0.374972, -0.782063,
		27.230373, 44.041008, 53.702751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.617161, 43.203484, 53.862934>,  <27.578812, 43.778526, 54.250195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.617161, 43.203484, 53.862934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491430, 43.471161, 53.593601>,  <27.415993, 43.631767, 53.432003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491430, 43.471161, 53.593601>,  <27.617161, 43.203484, 53.862934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.491430, 43.471161, 53.593601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275191, -0.614594, -0.739286,
		-0.908553, -0.417672, 0.009026,
		-0.314326, 0.669197, -0.673331,
		27.397133, 43.671921, 53.391602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222490, 42.800514, 53.340923>,  <27.617161, 43.203484, 53.862934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.222490, 42.800514, 53.340923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324949, 43.145306, 53.165936>,  <27.386425, 43.352180, 53.060944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324949, 43.145306, 53.165936>,  <27.222490, 42.800514, 53.340923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.324949, 43.145306, 53.165936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359376, -0.505049, -0.784713,
		-0.897350, 0.043786, -0.439142,
		0.256147, 0.861979, -0.437470,
		27.401793, 43.403900, 53.034695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930822, 42.781654, 52.623543>,  <27.222490, 42.800514, 53.340923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930822, 42.781654, 52.623543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.219051, 43.057468, 52.594379>,  <27.391989, 43.222958, 52.576881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.219051, 43.057468, 52.594379>,  <26.930822, 42.781654, 52.623543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.219051, 43.057468, 52.594379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431097, -0.527878, -0.731779,
		-0.543078, 0.495866, -0.677631,
		0.720570, 0.689538, -0.072913,
		27.435223, 43.264328, 52.572506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.141319, 42.919029, 51.898930>,  <26.930822, 42.781654, 52.623543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.141319, 42.919029, 51.898930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467730, 43.039936, 52.096004>,  <27.663576, 43.112480, 52.214249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467730, 43.039936, 52.096004>,  <27.141319, 42.919029, 51.898930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.467730, 43.039936, 52.096004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568213, -0.575822, -0.587846,
		0.106018, 0.759649, -0.641634,
		0.816024, 0.302262, 0.492690,
		27.712536, 43.130615, 52.243813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.654333, 42.931965, 51.418892>,  <27.141319, 42.919029, 51.898930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.654333, 42.931965, 51.418892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.871017, 42.927513, 51.755089>,  <28.001028, 42.924843, 51.956806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.871017, 42.927513, 51.755089>,  <27.654333, 42.931965, 51.418892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.871017, 42.927513, 51.755089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716052, -0.517596, -0.468364,
		0.440249, 0.855553, -0.272415,
		0.541711, -0.011134, 0.840491,
		28.033531, 42.924171, 52.007236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303308, 43.007805, 51.190109>,  <27.654333, 42.931965, 51.418892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303308, 43.007805, 51.190109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.335682, 42.851761, 51.556992>,  <28.355106, 42.758133, 51.777122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.335682, 42.851761, 51.556992>,  <28.303308, 43.007805, 51.190109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.335682, 42.851761, 51.556992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610045, -0.708341, -0.355103,
		0.788223, 0.588276, 0.180657,
		0.080932, -0.390109, 0.917205,
		28.359961, 42.734730, 51.832153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.003170, 42.904640, 51.260220>,  <28.303308, 43.007805, 51.190109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.003170, 42.904640, 51.260220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868919, 42.659321, 51.546219>,  <28.788368, 42.512131, 51.717819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868919, 42.659321, 51.546219>,  <29.003170, 42.904640, 51.260220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.868919, 42.659321, 51.546219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572775, -0.735458, -0.361981,
		0.747853, 0.288043, 0.598120,
		-0.335626, -0.613297, 0.714998,
		28.768232, 42.475330, 51.760719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576866, 42.603725, 51.479942>,  <29.003170, 42.904640, 51.260220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576866, 42.603725, 51.479942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291872, 42.356358, 51.612560>,  <29.120874, 42.207939, 51.692131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291872, 42.356358, 51.612560>,  <29.576866, 42.603725, 51.479942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291872, 42.356358, 51.612560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489586, -0.776610, -0.396463,
		0.502662, -0.120154, 0.856092,
		-0.712486, -0.618418, 0.331547,
		29.078127, 42.170834, 51.712025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.946274, 42.097256, 51.813606>,  <29.576866, 42.603725, 51.479942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.946274, 42.097256, 51.813606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.581116, 41.971050, 51.710014>,  <29.362020, 41.895325, 51.647858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.581116, 41.971050, 51.710014>,  <29.946274, 42.097256, 51.813606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.581116, 41.971050, 51.710014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406929, -0.753342, -0.516609,
		-0.032104, -0.576997, 0.816115,
		-0.912895, -0.315515, -0.258982,
		29.307247, 41.876396, 51.632320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.231291, 42.624050, 52.111813>,  <29.946274, 42.097256, 51.813606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.231291, 42.624050, 52.111813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.567024, 42.841328, 52.103226>,  <30.768465, 42.971695, 52.098072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.567024, 42.841328, 52.103226>,  <30.231291, 42.624050, 52.111813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567024, 42.841328, 52.103226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237097, 0.401326, 0.884716,
		0.489189, -0.737480, 0.465636,
		0.839332, 0.543194, -0.021470,
		30.818825, 43.004284, 52.096786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493174, 42.534382, 52.812115>,  <30.231291, 42.624050, 52.111813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493174, 42.534382, 52.812115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.652622, 42.873108, 52.671253>,  <30.748291, 43.076344, 52.586735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.652622, 42.873108, 52.671253>,  <30.493174, 42.534382, 52.812115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.652622, 42.873108, 52.671253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159052, 0.441991, 0.882806,
		0.903219, -0.295893, 0.310874,
		0.398620, 0.846812, -0.352153,
		30.772207, 43.127151, 52.565609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993622, 42.822510, 53.240589>,  <30.493174, 42.534382, 52.812115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993622, 42.822510, 53.240589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909996, 43.146282, 53.021095>,  <30.859821, 43.340546, 52.889400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909996, 43.146282, 53.021095>,  <30.993622, 42.822510, 53.240589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909996, 43.146282, 53.021095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340775, 0.465656, 0.816724,
		0.916605, 0.357741, 0.178484,
		-0.209064, 0.809436, -0.548732,
		30.847277, 43.389114, 52.856476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038465, 43.354183, 53.708267>,  <30.993622, 42.822510, 53.240589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038465, 43.354183, 53.708267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.845104, 43.512070, 53.395725>,  <30.729088, 43.606804, 53.208199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.845104, 43.512070, 53.395725>,  <31.038465, 43.354183, 53.708267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845104, 43.512070, 53.395725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461457, 0.643589, 0.610615,
		0.743895, 0.655735, -0.128967,
		-0.483403, 0.394721, -0.781356,
		30.700083, 43.630486, 53.161320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256292, 44.042347, 53.791744>,  <31.038465, 43.354183, 53.708267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256292, 44.042347, 53.791744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915030, 44.012970, 53.585159>,  <30.710272, 43.995346, 53.461208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915030, 44.012970, 53.585159>,  <31.256292, 44.042347, 53.791744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915030, 44.012970, 53.585159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457011, 0.582594, 0.672105,
		0.251527, 0.809439, -0.530607,
		-0.853156, -0.073440, -0.516460,
		30.659082, 43.990936, 53.430222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962799, 44.705654, 53.560913>,  <31.256292, 44.042347, 53.791744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962799, 44.705654, 53.560913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658009, 44.448486, 53.592030>,  <30.475134, 44.294186, 53.610699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658009, 44.448486, 53.592030>,  <30.962799, 44.705654, 53.560913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658009, 44.448486, 53.592030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477751, 0.639152, 0.602692,
		-0.437201, 0.422072, -0.794172,
		-0.761977, -0.642915, 0.077792,
		30.429415, 44.255611, 53.615368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388210, 45.066765, 53.752792>,  <30.962799, 44.705654, 53.560913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.388210, 45.066765, 53.752792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224018, 44.709812, 53.827805>,  <30.125502, 44.495640, 53.872810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224018, 44.709812, 53.827805>,  <30.388210, 45.066765, 53.752792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224018, 44.709812, 53.827805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592041, 0.417227, 0.689499,
		-0.693536, 0.172001, -0.699588,
		-0.410481, -0.892378, 0.187531,
		30.100874, 44.442101, 53.884064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.724232, 45.186230, 53.886803>,  <30.388210, 45.066765, 53.752792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.724232, 45.186230, 53.886803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.788334, 44.826164, 54.048801>,  <29.826796, 44.610126, 54.146000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.788334, 44.826164, 54.048801>,  <29.724232, 45.186230, 53.886803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.788334, 44.826164, 54.048801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655302, 0.209813, 0.725643,
		-0.738172, -0.381684, -0.556255,
		0.160257, -0.900164, 0.404996,
		29.836411, 44.556114, 54.170300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054861, 44.917759, 54.100319>,  <29.724232, 45.186230, 53.886803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054861, 44.917759, 54.100319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321653, 44.722366, 54.325363>,  <29.481728, 44.605133, 54.460388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321653, 44.722366, 54.325363>,  <29.054861, 44.917759, 54.100319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.321653, 44.722366, 54.325363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586146, 0.122155, 0.800944,
		-0.459970, -0.863982, -0.204846,
		0.666979, -0.488480, 0.562607,
		29.521748, 44.575821, 54.494144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622574, 44.570831, 54.541553>,  <29.054861, 44.917759, 54.100319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622574, 44.570831, 54.541553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.976583, 44.510513, 54.717731>,  <29.188990, 44.474323, 54.823441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.976583, 44.510513, 54.717731>,  <28.622574, 44.570831, 54.541553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976583, 44.510513, 54.717731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464980, -0.239682, 0.852259,
		-0.022946, -0.959070, -0.282239,
		0.885024, -0.150791, 0.440449,
		29.242090, 44.465275, 54.849865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.583614, 43.944275, 55.001961>,  <28.622574, 44.570831, 54.541553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.583614, 43.944275, 55.001961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.848299, 44.214428, 55.132191>,  <29.007111, 44.376518, 55.210327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.848299, 44.214428, 55.132191>,  <28.583614, 43.944275, 55.001961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.848299, 44.214428, 55.132191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454353, 0.015798, 0.890682,
		0.596407, -0.737299, 0.317316,
		0.661711, 0.675382, 0.325572,
		29.046812, 44.417042, 55.229862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.589357, 43.791233, 55.786057>,  <28.583614, 43.944275, 55.001961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.589357, 43.791233, 55.786057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.755287, 44.151684, 55.735638>,  <28.854845, 44.367954, 55.705387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.755287, 44.151684, 55.735638>,  <28.589357, 43.791233, 55.786057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.755287, 44.151684, 55.735638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438403, 0.319327, 0.840139,
		0.797323, -0.293251, 0.527522,
		0.414823, 0.901129, -0.126045,
		28.879734, 44.422024, 55.697823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.867786, 43.929390, 56.368179>,  <28.589357, 43.791233, 55.786057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.867786, 43.929390, 56.368179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.830355, 44.296261, 56.213245>,  <28.807896, 44.516384, 56.120285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.830355, 44.296261, 56.213245>,  <28.867786, 43.929390, 56.368179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.830355, 44.296261, 56.213245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376547, 0.327540, 0.866562,
		0.921659, 0.226941, 0.314710,
		-0.093579, 0.917178, -0.387334,
		28.802280, 44.571415, 56.097046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178215, 44.462181, 56.898235>,  <28.867786, 43.929390, 56.368179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178215, 44.462181, 56.898235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.945183, 44.683422, 56.660015>,  <28.805365, 44.816166, 56.517082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.945183, 44.683422, 56.660015>,  <29.178215, 44.462181, 56.898235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.945183, 44.683422, 56.660015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443697, 0.397498, 0.803199,
		0.680981, 0.732170, 0.013835,
		-0.582579, 0.553101, -0.595550,
		28.770409, 44.849354, 56.481350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823210, 44.096317, 56.916321>,  <29.178215, 44.462181, 56.898235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.823210, 44.096317, 56.916321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722385, 43.955860, 57.277023>,  <29.661890, 43.871586, 57.493446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722385, 43.955860, 57.277023>,  <29.823210, 44.096317, 56.916321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722385, 43.955860, 57.277023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535857, -0.826585, -0.172090,
		0.805806, 0.439835, 0.396513,
		-0.252060, -0.351145, 0.901755,
		29.646767, 43.850517, 57.547550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411547, 43.867714, 57.180756>,  <29.823210, 44.096317, 56.916321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411547, 43.867714, 57.180756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110809, 43.663635, 57.347813>,  <29.930367, 43.541187, 57.448048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110809, 43.663635, 57.347813>,  <30.411547, 43.867714, 57.180756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110809, 43.663635, 57.347813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520001, -0.848273, -0.100157,
		0.405374, 0.141871, 0.903075,
		-0.751845, -0.510201, 0.417641,
		29.885256, 43.510574, 57.473106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.654427, 43.400688, 57.642445>,  <30.411547, 43.867714, 57.180756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.654427, 43.400688, 57.642445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.288147, 43.254959, 57.574612>,  <30.068378, 43.167522, 57.533913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.288147, 43.254959, 57.574612>,  <30.654427, 43.400688, 57.642445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288147, 43.254959, 57.574612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383743, -0.918025, -0.099855,
		-0.119304, -0.156514, 0.980444,
		-0.915701, -0.364326, -0.169585,
		30.013437, 43.145660, 57.523735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520870, 42.751335, 58.047810>,  <30.654427, 43.400688, 57.642445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520870, 42.751335, 58.047810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.288179, 42.710060, 57.725086>,  <30.148565, 42.685295, 57.531452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.288179, 42.710060, 57.725086>,  <30.520870, 42.751335, 58.047810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288179, 42.710060, 57.725086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224253, -0.973823, -0.037140,
		-0.781859, -0.202535, 0.589640,
		-0.581728, -0.103190, -0.806811,
		30.113661, 42.679104, 57.483044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.176723, 42.177116, 58.238476>,  <30.520870, 42.751335, 58.047810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.176723, 42.177116, 58.238476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.175779, 42.238369, 57.843193>,  <30.175213, 42.275120, 57.606026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.175779, 42.238369, 57.843193>,  <30.176723, 42.177116, 58.238476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.175779, 42.238369, 57.843193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375891, -0.915598, -0.142780,
		-0.926661, -0.371793, -0.055403,
		-0.002358, 0.153134, -0.988203,
		30.175072, 42.284309, 57.546734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.042017, 41.604233, 57.952969>,  <30.176723, 42.177116, 58.238476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.042017, 41.604233, 57.952969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158600, 41.758327, 57.602737>,  <30.228550, 41.850784, 57.392597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158600, 41.758327, 57.602737>,  <30.042017, 41.604233, 57.952969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158600, 41.758327, 57.602737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284012, -0.908897, -0.305358,
		-0.913450, -0.159678, -0.374316,
		0.291455, 0.385239, -0.875582,
		30.246037, 41.873898, 57.340061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854973, 41.143234, 57.444454>,  <30.042017, 41.604233, 57.952969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854973, 41.143234, 57.444454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133720, 41.360935, 57.257622>,  <30.300968, 41.491554, 57.145523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133720, 41.360935, 57.257622>,  <29.854973, 41.143234, 57.444454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133720, 41.360935, 57.257622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411770, -0.836842, -0.360752,
		-0.587214, 0.059065, -0.807274,
		0.696868, 0.544249, -0.467084,
		30.342781, 41.524212, 57.117496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437996, 40.555115, 57.651722>,  <29.854973, 41.143234, 57.444454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437996, 40.555115, 57.651722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403679, 40.320011, 57.973511>,  <29.383089, 40.178947, 58.166584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403679, 40.320011, 57.973511>,  <29.437996, 40.555115, 57.651722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.403679, 40.320011, 57.973511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570624, 0.690888, 0.443916,
		-0.816718, -0.420967, -0.394663,
		-0.085794, -0.587758, 0.804475,
		29.377941, 40.143684, 58.214851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777704, 40.339157, 57.677429>,  <29.437996, 40.555115, 57.651722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.777704, 40.339157, 57.677429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927164, 40.328136, 58.048294>,  <29.016840, 40.321526, 58.270813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927164, 40.328136, 58.048294>,  <28.777704, 40.339157, 57.677429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.927164, 40.328136, 58.048294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724972, 0.614854, 0.310435,
		-0.578622, -0.788159, 0.209766,
		0.373647, -0.027550, 0.927161,
		29.039259, 40.319870, 58.326443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.206318, 40.409595, 58.123226>,  <28.777704, 40.339157, 57.677429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.206318, 40.409595, 58.123226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.506712, 40.505928, 58.369160>,  <28.686949, 40.563728, 58.516720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.506712, 40.505928, 58.369160>,  <28.206318, 40.409595, 58.123226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.506712, 40.505928, 58.369160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574964, 0.696372, 0.429515,
		-0.324715, -0.676068, 0.661432,
		0.750984, 0.240829, 0.614837,
		28.732008, 40.578178, 58.553612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.859266, 40.482899, 58.826099>,  <28.206318, 40.409595, 58.123226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.859266, 40.482899, 58.826099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197577, 40.695343, 58.805775>,  <28.400562, 40.822811, 58.793579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197577, 40.695343, 58.805775>,  <27.859266, 40.482899, 58.826099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.197577, 40.695343, 58.805775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489867, 0.810755, 0.320478,
		0.211406, -0.246162, 0.945892,
		0.845777, 0.531112, -0.050812,
		28.451309, 40.854675, 58.790531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688309, 41.025837, 59.333378>,  <27.859266, 40.482899, 58.826099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.688309, 41.025837, 59.333378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026031, 41.174305, 59.178780>,  <28.228664, 41.263386, 59.086021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026031, 41.174305, 59.178780>,  <27.688309, 41.025837, 59.333378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026031, 41.174305, 59.178780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261007, 0.914771, 0.308333,
		0.467996, -0.159451, 0.869227,
		0.844307, 0.371173, -0.386491,
		28.279324, 41.285656, 59.062832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.990187, 41.583614, 59.786591>,  <27.688309, 41.025837, 59.333378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.990187, 41.583614, 59.786591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.128283, 41.658207, 59.418671>,  <28.211140, 41.702965, 59.197918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.128283, 41.658207, 59.418671>,  <27.990187, 41.583614, 59.786591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.128283, 41.658207, 59.418671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223024, 0.968287, 0.112606,
		0.911631, 0.166262, 0.375881,
		0.345239, 0.186485, -0.919801,
		28.231853, 41.714153, 59.142731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280243, 42.201714, 59.887028>,  <27.990187, 41.583614, 59.786591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.280243, 42.201714, 59.887028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.214939, 42.159679, 59.494640>,  <28.175756, 42.134460, 59.259209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.214939, 42.159679, 59.494640>,  <28.280243, 42.201714, 59.887028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214939, 42.159679, 59.494640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227822, 0.971453, -0.066149,
		0.959918, 0.212687, -0.182539,
		-0.163259, -0.105084, -0.980971,
		28.165960, 42.128155, 59.200348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458725, 42.813583, 59.563774>,  <28.280243, 42.201714, 59.887028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.458725, 42.813583, 59.563774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.211494, 42.647060, 59.297039>,  <28.063156, 42.547146, 59.136997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.211494, 42.647060, 59.297039>,  <28.458725, 42.813583, 59.563774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.211494, 42.647060, 59.297039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356305, 0.904486, -0.234418,
		0.700734, 0.092709, -0.707373,
		-0.618077, -0.416305, -0.666837,
		28.026072, 42.522167, 59.096989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.471592, 43.422066, 59.030811>,  <28.458725, 42.813583, 59.563774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.471592, 43.422066, 59.030811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187473, 43.167881, 58.909706>,  <28.017002, 43.015369, 58.837044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187473, 43.167881, 58.909706>,  <28.471592, 43.422066, 59.030811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.187473, 43.167881, 58.909706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415275, 0.725599, -0.548684,
		0.568353, -0.263998, -0.779282,
		-0.710297, -0.635462, -0.302764,
		27.974384, 42.977242, 58.818878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<36.981663, 34.082706, 48.156487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.155037, 34.354168, 48.393654>,  <37.259064, 34.517044, 48.535954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.155037, 34.354168, 48.393654>,  <36.981663, 34.082706, 48.156487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155037, 34.354168, 48.393654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794172, -0.023313, 0.607246,
		0.425936, -0.734084, 0.528867,
		0.433440, 0.678659, 0.592919,
		37.285069, 34.557766, 48.571529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895840, 33.873852, 48.895336>,  <36.981663, 34.082706, 48.156487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895840, 33.873852, 48.895336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.936031, 34.270378, 48.861401>,  <36.960144, 34.508293, 48.841038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.936031, 34.270378, 48.861401>,  <36.895840, 33.873852, 48.895336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936031, 34.270378, 48.861401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905657, 0.126432, 0.404724,
		0.411935, 0.036169, 0.910495,
		0.100477, 0.991316, -0.084838,
		36.966175, 34.567772, 48.835949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875359, 34.121506, 49.596153>,  <36.895840, 33.873852, 48.895336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875359, 34.121506, 49.596153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.776546, 34.423851, 49.353619>,  <36.717258, 34.605259, 49.208099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.776546, 34.423851, 49.353619>,  <36.875359, 34.121506, 49.596153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776546, 34.423851, 49.353619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851721, 0.129038, 0.507858,
		0.462113, 0.641886, 0.611910,
		-0.247027, 0.755865, -0.606338,
		36.702438, 34.650612, 49.171719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496578, 34.421555, 49.978802>,  <36.875359, 34.121506, 49.596153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496578, 34.421555, 49.978802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.401627, 34.640152, 49.657555>,  <36.344654, 34.771309, 49.464806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.401627, 34.640152, 49.657555>,  <36.496578, 34.421555, 49.978802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401627, 34.640152, 49.657555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931305, 0.107092, 0.348142,
		0.276264, 0.830590, 0.483527,
		-0.237381, 0.546490, -0.803118,
		36.330414, 34.804100, 49.416618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137558, 34.951397, 50.258976>,  <36.496578, 34.421555, 49.978802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137558, 34.951397, 50.258976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.058426, 34.975994, 49.867653>,  <36.010948, 34.990753, 49.632858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.058426, 34.975994, 49.867653>,  <36.137558, 34.951397, 50.258976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058426, 34.975994, 49.867653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953952, 0.217492, 0.206574,
		0.225476, 0.974123, 0.015634,
		-0.197828, 0.061491, -0.978306,
		35.999077, 34.994442, 49.574162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790333, 35.640434, 50.100578>,  <36.137558, 34.951397, 50.258976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790333, 35.640434, 50.100578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.671463, 35.365604, 49.835365>,  <35.600140, 35.200706, 49.676235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.671463, 35.365604, 49.835365>,  <35.790333, 35.640434, 50.100578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671463, 35.365604, 49.835365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951491, 0.271052, 0.145586,
		0.079689, 0.674138, -0.734294,
		-0.297177, -0.687073, -0.663036,
		35.582310, 35.159481, 49.636456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319443, 35.958755, 49.543381>,  <35.790333, 35.640434, 50.100578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319443, 35.958755, 49.543381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.237549, 35.568054, 49.568806>,  <35.188412, 35.333633, 49.584061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.237549, 35.568054, 49.568806>,  <35.319443, 35.958755, 49.543381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237549, 35.568054, 49.568806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977776, 0.201086, -0.059315,
		0.045155, -0.074291, -0.996214,
		-0.204732, -0.976752, 0.063560,
		35.176128, 35.275028, 49.587875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759209, 35.914757, 49.194683>,  <35.319443, 35.958755, 49.543381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759209, 35.914757, 49.194683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.762917, 35.582497, 49.417370>,  <34.765141, 35.383141, 49.550983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.762917, 35.582497, 49.417370>,  <34.759209, 35.914757, 49.194683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762917, 35.582497, 49.417370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980567, 0.101561, 0.167852,
		-0.195967, -0.547456, -0.813565,
		0.009265, -0.830649, 0.556719,
		34.765697, 35.333302, 49.584385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065346, 35.814739, 49.245232>,  <34.759209, 35.914757, 49.194683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065346, 35.814739, 49.245232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.196423, 35.551899, 49.516769>,  <34.275070, 35.394196, 49.679691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.196423, 35.551899, 49.516769>,  <34.065346, 35.814739, 49.245232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196423, 35.551899, 49.516769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903726, -0.008487, 0.428028,
		-0.275498, -0.753753, -0.596622,
		0.327690, -0.657104, 0.678847,
		34.294731, 35.354767, 49.720425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561241, 35.234558, 49.232807>,  <34.065346, 35.814739, 49.245232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561241, 35.234558, 49.232807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.744381, 35.239029, 49.588390>,  <33.854263, 35.241711, 49.801743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.744381, 35.239029, 49.588390>,  <33.561241, 35.234558, 49.232807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744381, 35.239029, 49.588390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888768, 0.030104, 0.457367,
		-0.021653, -0.999484, 0.023709,
		0.457845, 0.011168, 0.888962,
		33.881733, 35.242382, 49.855080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244061, 34.679569, 49.560219>,  <33.561241, 35.234558, 49.232807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244061, 34.679569, 49.560219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.403015, 34.931732, 49.826950>,  <33.498390, 35.083031, 49.986988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.403015, 34.931732, 49.826950>,  <33.244061, 34.679569, 49.560219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403015, 34.931732, 49.826950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867519, 0.021194, 0.496952,
		0.299151, -0.775973, 0.555315,
		0.397391, 0.630410, 0.666831,
		33.522232, 35.120853, 50.027000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949989, 34.444851, 50.094090>,  <33.244061, 34.679569, 49.560219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949989, 34.444851, 50.094090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.072052, 34.814362, 50.186626>,  <33.145290, 35.036068, 50.242149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.072052, 34.814362, 50.186626>,  <32.949989, 34.444851, 50.094090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072052, 34.814362, 50.186626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909873, 0.211129, 0.357149,
		0.281083, -0.319477, 0.904946,
		0.305162, 0.923774, 0.231339,
		33.163601, 35.091496, 50.256027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730881, 34.673214, 50.797478>,  <32.949989, 34.444851, 50.094090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730881, 34.673214, 50.797478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.802906, 35.031166, 50.634132>,  <32.846119, 35.245937, 50.536125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.802906, 35.031166, 50.634132>,  <32.730881, 34.673214, 50.797478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802906, 35.031166, 50.634132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872125, 0.337246, 0.354489,
		0.454947, 0.292319, 0.841174,
		0.180059, 0.894883, -0.408368,
		32.856922, 35.299629, 50.511623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489429, 35.086479, 51.305687>,  <32.730881, 34.673214, 50.797478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489429, 35.086479, 51.305687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.539001, 35.320087, 50.984798>,  <32.568745, 35.460251, 50.792267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.539001, 35.320087, 50.984798>,  <32.489429, 35.086479, 51.305687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539001, 35.320087, 50.984798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881489, 0.436033, 0.181254,
		0.455651, 0.684686, 0.568847,
		0.123934, 0.584021, -0.802222,
		32.576183, 35.495293, 50.744133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310505, 35.682190, 51.568672>,  <32.489429, 35.086479, 51.305687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310505, 35.682190, 51.568672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.226715, 35.709579, 51.178505>,  <32.176441, 35.726013, 50.944405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.226715, 35.709579, 51.178505>,  <32.310505, 35.682190, 51.568672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226715, 35.709579, 51.178505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908823, 0.354425, 0.220052,
		0.360779, 0.932574, -0.012013,
		-0.209472, 0.068473, -0.975414,
		32.163872, 35.730122, 50.885880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726212, 36.129951, 51.554157>,  <32.310505, 35.682190, 51.568672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726212, 36.129951, 51.554157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.698053, 36.007812, 51.174305>,  <31.681158, 35.934528, 50.946392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.698053, 36.007812, 51.174305>,  <31.726212, 36.129951, 51.554157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698053, 36.007812, 51.174305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997215, 0.045069, 0.059430,
		0.024652, 0.951173, -0.307672,
		-0.070395, -0.305350, -0.949635,
		31.676935, 35.916206, 50.889416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209900, 36.567955, 51.226223>,  <31.726212, 36.129951, 51.554157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209900, 36.567955, 51.226223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.226318, 36.231335, 51.010777>,  <31.236170, 36.029362, 50.881508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.226318, 36.231335, 51.010777>,  <31.209900, 36.567955, 51.226223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226318, 36.231335, 51.010777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997868, -0.007152, -0.064873,
		0.050742, 0.540127, -0.840052,
		0.041047, -0.841553, -0.538613,
		31.238632, 35.978870, 50.849194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780359, 36.691952, 50.568371>,  <31.209900, 36.567955, 51.226223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780359, 36.691952, 50.568371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.793638, 36.298290, 50.638046>,  <30.801605, 36.062096, 50.679852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.793638, 36.298290, 50.638046>,  <30.780359, 36.691952, 50.568371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793638, 36.298290, 50.638046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990531, -0.009169, 0.136982,
		-0.133214, -0.177091, -0.975137,
		0.033200, -0.984152, 0.174192,
		30.803598, 36.003044, 50.690304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.132874, 36.428707, 50.221966>,  <30.780359, 36.691952, 50.568371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.132874, 36.428707, 50.221966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.244165, 36.128174, 50.461327>,  <30.310942, 35.947853, 50.604942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.244165, 36.128174, 50.461327>,  <30.132874, 36.428707, 50.221966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.244165, 36.128174, 50.461327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960362, -0.228684, 0.159399,
		0.017083, -0.619032, -0.785180,
		0.278231, -0.751334, 0.598401,
		30.327635, 35.902775, 50.640846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713579, 35.783916, 49.958401>,  <30.132874, 36.428707, 50.221966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713579, 35.783916, 49.958401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.807638, 35.713100, 50.340679>,  <29.864075, 35.670612, 50.570045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.807638, 35.713100, 50.340679>,  <29.713579, 35.783916, 49.958401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807638, 35.713100, 50.340679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918878, -0.360990, 0.159216,
		0.316811, -0.915611, -0.247565,
		0.235148, -0.177040, 0.955700,
		29.878183, 35.659988, 50.627388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432831, 35.126965, 50.107117>,  <29.713579, 35.783916, 49.958401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432831, 35.126965, 50.107117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.505426, 35.266895, 50.474743>,  <29.548985, 35.350853, 50.695320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.505426, 35.266895, 50.474743>,  <29.432831, 35.126965, 50.107117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505426, 35.266895, 50.474743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801743, -0.488547, 0.344281,
		0.569447, -0.799338, 0.191807,
		0.181490, 0.349830, 0.919065,
		29.559874, 35.371845, 50.750462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358818, 34.623997, 50.579605>,  <29.432831, 35.126965, 50.107117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.358818, 34.623997, 50.579605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.260321, 34.957088, 50.777973>,  <29.201221, 35.156944, 50.896992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.260321, 34.957088, 50.777973>,  <29.358818, 34.623997, 50.579605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260321, 34.957088, 50.777973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824872, -0.448708, 0.343871,
		0.508872, -0.324391, 0.797383,
		-0.246244, 0.832726, 0.495916,
		29.186447, 35.206905, 50.926746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940081, 34.349518, 51.030762>,  <29.358818, 34.623997, 50.579605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940081, 34.349518, 51.030762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.849247, 34.737450, 51.066250>,  <28.794746, 34.970207, 51.087543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.849247, 34.737450, 51.066250>,  <28.940081, 34.349518, 51.030762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849247, 34.737450, 51.066250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912091, -0.243725, 0.329678,
		0.341354, -0.006061, 0.939915,
		-0.227083, 0.969825, 0.088724,
		28.781122, 35.028397, 51.092869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532646, 34.456863, 51.748596>,  <28.940081, 34.349518, 51.030762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532646, 34.456863, 51.748596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.440790, 34.767498, 51.513931>,  <28.385677, 34.953880, 51.373131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.440790, 34.767498, 51.513931>,  <28.532646, 34.456863, 51.748596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440790, 34.767498, 51.513931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938330, -0.016578, 0.345344,
		0.258465, 0.629789, 0.732504,
		-0.229638, 0.776589, -0.586665,
		28.371899, 35.000473, 51.337933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.153225, 34.958614, 52.172497>,  <28.532646, 34.456863, 51.748596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.153225, 34.958614, 52.172497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.049850, 35.040138, 51.794785>,  <27.987825, 35.089054, 51.568157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.049850, 35.040138, 51.794785>,  <28.153225, 34.958614, 52.172497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.049850, 35.040138, 51.794785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963745, -0.121571, 0.237522,
		-0.066388, 0.971432, 0.227843,
		-0.258436, 0.203814, -0.944283,
		27.972321, 35.101284, 51.511501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.547287, 35.295532, 52.299168>,  <28.153225, 34.958614, 52.172497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.547287, 35.295532, 52.299168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.537579, 35.220116, 51.906464>,  <27.531754, 35.174866, 51.670841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.537579, 35.220116, 51.906464>,  <27.547287, 35.295532, 52.299168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.537579, 35.220116, 51.906464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998680, 0.049040, 0.015272,
		0.045266, 0.980839, -0.189486,
		-0.024272, -0.188545, -0.981764,
		27.530296, 35.163551, 51.611935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.017475, 35.790493, 52.016026>,  <27.547287, 35.295532, 52.299168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.017475, 35.790493, 52.016026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.053097, 35.484711, 51.760628>,  <27.074469, 35.301243, 51.607388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.053097, 35.484711, 51.760628>,  <27.017475, 35.790493, 52.016026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053097, 35.484711, 51.760628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987501, -0.151462, 0.043614,
		-0.130048, 0.626628, -0.768391,
		0.089052, -0.764458, -0.638493,
		27.079813, 35.255375, 51.569080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.509518, 35.923172, 51.598801>,  <27.017475, 35.790493, 52.016026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.509518, 35.923172, 51.598801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.584698, 35.534122, 51.544136>,  <26.629805, 35.300694, 51.511337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.584698, 35.534122, 51.544136>,  <26.509518, 35.923172, 51.598801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.584698, 35.534122, 51.544136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975022, -0.201531, 0.093369,
		-0.118355, 0.115703, -0.986207,
		0.187948, -0.972625, -0.136665,
		26.641083, 35.242336, 51.503136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.109440, 35.726856, 51.073055>,  <26.509518, 35.923172, 51.598801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.109440, 35.726856, 51.073055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.197140, 35.394394, 51.277451>,  <26.249760, 35.194916, 51.400089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.197140, 35.394394, 51.277451>,  <26.109440, 35.726856, 51.073055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.197140, 35.394394, 51.277451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964434, -0.263874, -0.015398,
		0.147636, -0.489443, -0.859447,
		0.219249, -0.831154, 0.510993,
		26.262915, 35.145046, 51.430748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.642784, 35.149101, 50.743546>,  <26.109440, 35.726856, 51.073055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.642784, 35.149101, 50.743546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.779446, 35.037609, 51.102562>,  <25.861443, 34.970715, 51.317974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.779446, 35.037609, 51.102562>,  <25.642784, 35.149101, 50.743546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.779446, 35.037609, 51.102562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938105, -0.158914, 0.307742,
		0.056856, -0.947132, -0.315767,
		0.341652, -0.278726, 0.897544,
		25.881941, 34.953991, 51.371826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.316833, 34.447285, 50.881973>,  <25.642784, 35.149101, 50.743546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.316833, 34.447285, 50.881973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.422007, 34.597294, 51.237549>,  <25.485111, 34.687302, 51.450893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.422007, 34.597294, 51.237549>,  <25.316833, 34.447285, 50.881973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.422007, 34.597294, 51.237549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913188, -0.200615, 0.354740,
		0.311373, -0.905046, 0.289723,
		0.262933, 0.375028, 0.888943,
		25.500887, 34.709801, 51.504230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.115871, 33.947880, 51.401455>,  <25.316833, 34.447285, 50.881973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.115871, 33.947880, 51.401455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.174877, 34.270336, 51.630672>,  <25.210279, 34.463810, 51.768204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.174877, 34.270336, 51.630672>,  <25.115871, 33.947880, 51.401455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.174877, 34.270336, 51.630672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833947, -0.210123, 0.510275,
		0.531763, -0.553157, 0.641285,
		0.147513, 0.806143, 0.573039,
		25.219131, 34.512180, 51.802586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.823877, 33.789795, 52.067200>,  <25.115871, 33.947880, 51.401455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.823877, 33.789795, 52.067200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.874249, 34.185833, 52.092049>,  <24.904470, 34.423454, 52.106956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.874249, 34.185833, 52.092049>,  <24.823877, 33.789795, 52.067200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.874249, 34.185833, 52.092049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749638, 0.053957, 0.659645,
		0.649758, -0.129635, 0.749006,
		0.125927, 0.990093, 0.062120,
		24.912027, 34.482861, 52.110683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.719664, 33.938988, 52.704433>,  <24.823877, 33.789795, 52.067200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.719664, 33.938988, 52.704433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.626171, 34.275486, 52.509422>,  <24.570076, 34.477383, 52.392418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.626171, 34.275486, 52.509422>,  <24.719664, 33.938988, 52.704433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.626171, 34.275486, 52.509422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862503, 0.052076, 0.503365,
		0.448841, 0.538143, 0.713403,
		-0.233731, 0.841243, -0.487524,
		24.556051, 34.527859, 52.363167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.493574, 34.504704, 53.229675>,  <24.719664, 33.938988, 52.704433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.493574, 34.504704, 53.229675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.348423, 34.598713, 52.868992>,  <24.261333, 34.655117, 52.652580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.348423, 34.598713, 52.868992>,  <24.493574, 34.504704, 53.229675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.348423, 34.598713, 52.868992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913482, 0.101399, 0.394042,
		0.184041, 0.966687, 0.177892,
		-0.362877, 0.235022, -0.901712,
		24.239559, 34.669220, 52.598476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<35.405064, 29.991823, 50.799435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.029751, 29.946943, 50.930298>,  <34.804562, 29.920015, 51.008816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.029751, 29.946943, 50.930298>,  <35.405064, 29.991823, 50.799435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029751, 29.946943, 50.930298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019283, 0.961416, 0.274420,
		-0.345329, 0.251175, -0.904245,
		-0.938283, -0.112202, 0.327162,
		34.748264, 29.913282, 51.028446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096844, 30.634340, 50.814659>,  <35.405064, 29.991823, 50.799435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096844, 30.634340, 50.814659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.786407, 30.457972, 50.995003>,  <34.600143, 30.352150, 51.103207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.786407, 30.457972, 50.995003>,  <35.096844, 30.634340, 50.814659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786407, 30.457972, 50.995003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159123, 0.828727, 0.536555,
		-0.610213, 0.344675, -0.713329,
		-0.776093, -0.440920, 0.450855,
		34.553581, 30.325695, 51.130260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476967, 31.100557, 50.848270>,  <35.096844, 30.634340, 50.814659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476967, 31.100557, 50.848270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.404953, 30.835245, 51.138828>,  <34.361744, 30.676058, 51.313164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.404953, 30.835245, 51.138828>,  <34.476967, 31.100557, 50.848270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404953, 30.835245, 51.138828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359591, 0.731724, 0.579029,
		-0.915577, -0.156958, -0.370246,
		-0.180035, -0.663283, 0.726391,
		34.350941, 30.636261, 51.356747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864513, 31.293753, 50.984066>,  <34.476967, 31.100557, 50.848270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864513, 31.293753, 50.984066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.958775, 31.122705, 51.333145>,  <34.015331, 31.020077, 51.542595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.958775, 31.122705, 51.333145>,  <33.864513, 31.293753, 50.984066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958775, 31.122705, 51.333145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457765, 0.743292, 0.487819,
		-0.857273, -0.514450, -0.020588,
		0.235656, -0.427619, 0.872702,
		34.029472, 30.994419, 51.594955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251320, 31.266079, 51.306103>,  <33.864513, 31.293753, 50.984066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251320, 31.266079, 51.306103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.527843, 31.214291, 51.590450>,  <33.693756, 31.183218, 51.761059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.527843, 31.214291, 51.590450>,  <33.251320, 31.266079, 51.306103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527843, 31.214291, 51.590450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433990, 0.712189, 0.551760,
		-0.577711, -0.689945, 0.436150,
		0.691305, -0.129473, 0.710869,
		33.735233, 31.175449, 51.803711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935631, 31.282478, 52.010815>,  <33.251320, 31.266079, 51.306103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935631, 31.282478, 52.010815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.316040, 31.383318, 52.082375>,  <33.544285, 31.443821, 52.125309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.316040, 31.383318, 52.082375>,  <32.935631, 31.282478, 52.010815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316040, 31.383318, 52.082375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300444, 0.617625, 0.726824,
		0.072739, -0.744974, 0.663116,
		0.951022, 0.252098, 0.178898,
		33.601345, 31.458946, 52.136044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013485, 31.076191, 52.722687>,  <32.935631, 31.282478, 52.010815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013485, 31.076191, 52.722687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.278969, 31.352438, 52.607769>,  <33.438259, 31.518187, 52.538818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.278969, 31.352438, 52.607769>,  <33.013485, 31.076191, 52.722687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278969, 31.352438, 52.607769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363934, 0.633712, 0.682613,
		0.653491, -0.348495, 0.671938,
		0.663702, 0.690623, -0.287297,
		33.478081, 31.559624, 52.521584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116245, 31.478868, 53.318329>,  <33.013485, 31.076191, 52.722687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116245, 31.478868, 53.318329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.294399, 31.715382, 53.049400>,  <33.401291, 31.857290, 52.888042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.294399, 31.715382, 53.049400>,  <33.116245, 31.478868, 53.318329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294399, 31.715382, 53.049400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118047, 0.783139, 0.610540,
		0.887525, -0.192557, 0.418594,
		0.445381, 0.591283, -0.672324,
		33.428013, 31.892767, 52.847702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459362, 31.942854, 53.730942>,  <33.116245, 31.478868, 53.318329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459362, 31.942854, 53.730942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.451168, 32.137684, 53.381695>,  <33.446251, 32.254581, 53.172146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.451168, 32.137684, 53.381695>,  <33.459362, 31.942854, 53.730942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451168, 32.137684, 53.381695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228921, 0.847818, 0.478331,
		0.973229, 0.209673, 0.094136,
		-0.020483, 0.487076, -0.873120,
		33.445023, 32.283806, 53.119759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817947, 32.512589, 53.863995>,  <33.459362, 31.942854, 53.730942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817947, 32.512589, 53.863995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.589607, 32.605453, 53.548973>,  <33.452602, 32.661171, 53.359962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.589607, 32.605453, 53.548973>,  <33.817947, 32.512589, 53.863995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589607, 32.605453, 53.548973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236537, 0.872025, 0.428513,
		0.786247, 0.430900, -0.442878,
		-0.570847, 0.232160, -0.787550,
		33.418354, 32.675102, 53.312710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025684, 33.186859, 53.585922>,  <33.817947, 32.512589, 53.863995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025684, 33.186859, 53.585922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.641556, 33.127357, 53.491550>,  <33.411079, 33.091656, 53.434929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.641556, 33.127357, 53.491550>,  <34.025684, 33.186859, 53.585922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641556, 33.127357, 53.491550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258404, 0.792879, 0.551879,
		0.104970, 0.590944, -0.799854,
		-0.960317, -0.148755, -0.235931,
		33.353462, 33.082729, 53.420773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729679, 33.969490, 53.573082>,  <34.025684, 33.186859, 53.585922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729679, 33.969490, 53.573082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.424644, 33.711864, 53.597225>,  <33.241623, 33.557289, 53.611713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.424644, 33.711864, 53.597225>,  <33.729679, 33.969490, 53.573082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424644, 33.711864, 53.597225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421908, 0.565931, 0.708319,
		-0.490362, 0.514688, -0.703307,
		-0.762587, -0.644064, 0.060360,
		33.195869, 33.518646, 53.615334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474331, 34.283688, 53.474113>,  <33.729679, 33.969490, 53.573082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474331, 34.283688, 53.474113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.688629, 34.614456, 53.542446>,  <34.817207, 34.812916, 53.583447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.688629, 34.614456, 53.542446>,  <34.474331, 34.283688, 53.474113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688629, 34.614456, 53.542446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758089, -0.381950, -0.528598,
		-0.371860, 0.412695, -0.831506,
		0.535744, 0.826920, 0.170827,
		34.849354, 34.862534, 53.593693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699986, 34.453445, 52.863396>,  <34.474331, 34.283688, 53.474113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699986, 34.453445, 52.863396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.966904, 34.639324, 53.096214>,  <35.127056, 34.750851, 53.235905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.966904, 34.639324, 53.096214>,  <34.699986, 34.453445, 52.863396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966904, 34.639324, 53.096214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741626, -0.342568, -0.576747,
		-0.068620, 0.816522, -0.573222,
		0.667295, 0.464693, 0.582047,
		35.167091, 34.778732, 53.270828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216778, 34.708832, 52.462215>,  <34.699986, 34.453445, 52.863396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216778, 34.708832, 52.462215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.395195, 34.669842, 52.818092>,  <35.502247, 34.646450, 53.031616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.395195, 34.669842, 52.818092>,  <35.216778, 34.708832, 52.462215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395195, 34.669842, 52.818092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821580, -0.349735, -0.450212,
		0.355039, 0.931764, -0.075915,
		0.446042, -0.097472, 0.889689,
		35.529007, 34.640598, 53.084999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887798, 34.973392, 52.409554>,  <35.216778, 34.708832, 52.462215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887798, 34.973392, 52.409554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.895584, 34.729393, 52.726418>,  <35.900257, 34.582993, 52.916534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.895584, 34.729393, 52.726418>,  <35.887798, 34.973392, 52.409554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895584, 34.729393, 52.726418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925923, -0.287926, -0.244470,
		0.377211, 0.738239, 0.559209,
		0.019466, -0.610001, 0.792161,
		35.901424, 34.546394, 52.964066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420204, 35.252556, 52.772991>,  <35.887798, 34.973392, 52.409554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420204, 35.252556, 52.772991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.397446, 34.860260, 52.847725>,  <36.383793, 34.624882, 52.892567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.397446, 34.860260, 52.847725>,  <36.420204, 35.252556, 52.772991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397446, 34.860260, 52.847725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967575, -0.100294, -0.231820,
		0.246094, 0.167591, 0.954647,
		-0.056894, -0.980742, 0.186839,
		36.380379, 34.566036, 52.903778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101505, 34.972015, 52.959702>,  <36.420204, 35.252556, 52.772991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101505, 34.972015, 52.959702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.912819, 34.622688, 52.911041>,  <36.799606, 34.413090, 52.881844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.912819, 34.622688, 52.911041>,  <37.101505, 34.972015, 52.959702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912819, 34.622688, 52.911041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817751, -0.381686, -0.430813,
		0.329806, -0.302698, 0.894204,
		-0.471712, -0.873321, -0.121649,
		36.771305, 34.360691, 52.874546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592297, 34.487419, 52.993782>,  <37.101505, 34.972015, 52.959702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592297, 34.487419, 52.993782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.319366, 34.261517, 52.808102>,  <37.155609, 34.125977, 52.696693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.319366, 34.261517, 52.808102>,  <37.592297, 34.487419, 52.993782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319366, 34.261517, 52.808102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711139, -0.365599, -0.600515,
		0.169432, -0.739859, 0.651077,
		-0.682330, -0.564753, -0.464199,
		37.114666, 34.092091, 52.668842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800705, 33.651745, 52.988586>,  <37.592297, 34.487419, 52.993782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800705, 33.651745, 52.988586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.583210, 33.777481, 52.677322>,  <37.452713, 33.852924, 52.490562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.583210, 33.777481, 52.677322>,  <37.800705, 33.651745, 52.988586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583210, 33.777481, 52.677322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748914, -0.236746, -0.618935,
		-0.378783, -0.919316, -0.106686,
		-0.543739, 0.314340, -0.778163,
		37.420090, 33.871784, 52.443874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926743, 33.121822, 52.408127>,  <37.800705, 33.651745, 52.988586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926743, 33.121822, 52.408127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.755569, 33.429081, 52.217625>,  <37.652866, 33.613438, 52.103321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.755569, 33.429081, 52.217625>,  <37.926743, 33.121822, 52.408127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755569, 33.429081, 52.217625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561962, -0.186568, -0.805848,
		-0.707865, -0.612487, -0.351832,
		-0.427931, 0.768148, -0.476259,
		37.627190, 33.659527, 52.074745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038548, 32.973904, 51.773811>,  <37.926743, 33.121822, 52.408127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038548, 32.973904, 51.773811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.900562, 33.346348, 51.726433>,  <37.817772, 33.569817, 51.698006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.900562, 33.346348, 51.726433>,  <38.038548, 32.973904, 51.773811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900562, 33.346348, 51.726433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387716, 0.026429, -0.921400,
		-0.854798, -0.363769, -0.370125,
		-0.344958, 0.931114, -0.118448,
		37.797073, 33.625683, 51.690899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820004, 33.091602, 51.022861>,  <38.038548, 32.973904, 51.773811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820004, 33.091602, 51.022861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.873802, 33.462463, 51.162743>,  <37.906082, 33.684982, 51.246670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.873802, 33.462463, 51.162743>,  <37.820004, 33.091602, 51.022861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873802, 33.462463, 51.162743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550470, 0.223539, -0.804371,
		-0.823950, 0.300686, -0.480306,
		0.134496, 0.927156, 0.349704,
		37.914150, 33.740612, 51.267654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633823, 33.540249, 50.606937>,  <37.820004, 33.091602, 51.022861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633823, 33.540249, 50.606937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.875320, 33.770657, 50.827370>,  <38.020218, 33.908901, 50.959629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.875320, 33.770657, 50.827370>,  <37.633823, 33.540249, 50.606937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875320, 33.770657, 50.827370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414923, 0.363207, -0.834218,
		-0.680684, 0.732312, -0.019720,
		0.603745, 0.576021, 0.551082,
		38.056442, 33.943462, 50.992695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592102, 34.199539, 50.407513>,  <37.633823, 33.540249, 50.606937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592102, 34.199539, 50.407513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.930916, 34.253162, 50.613255>,  <38.134205, 34.285336, 50.736698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.930916, 34.253162, 50.613255>,  <37.592102, 34.199539, 50.407513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930916, 34.253162, 50.613255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416013, 0.435126, -0.798498,
		-0.330852, 0.890334, 0.312798,
		0.847036, 0.134057, 0.514353,
		38.185028, 34.293381, 50.767559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862095, 34.949402, 50.209198>,  <37.592102, 34.199539, 50.407513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862095, 34.949402, 50.209198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.156178, 34.739712, 50.381088>,  <38.332626, 34.613899, 50.484222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.156178, 34.739712, 50.381088>,  <37.862095, 34.949402, 50.209198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156178, 34.739712, 50.381088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670919, 0.472375, -0.571603,
		0.096654, 0.708557, 0.699003,
		0.735205, -0.524222, 0.429727,
		38.376740, 34.582447, 50.510006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269699, 35.492943, 50.071354>,  <37.862095, 34.949402, 50.209198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269699, 35.492943, 50.071354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.433064, 35.155460, 50.210701>,  <38.531082, 34.952972, 50.294308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.433064, 35.155460, 50.210701>,  <38.269699, 35.492943, 50.071354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433064, 35.155460, 50.210701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735499, 0.078148, -0.673004,
		0.540593, 0.531088, 0.652461,
		0.408412, -0.843706, 0.348368,
		38.555588, 34.902348, 50.315212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078094, 35.986324, 49.636734>,  <38.269699, 35.492943, 50.071354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078094, 35.986324, 49.636734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.078365, 36.117825, 49.258968>,  <38.078529, 36.196724, 49.032307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.078365, 36.117825, 49.258968>,  <38.078094, 35.986324, 49.636734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078365, 36.117825, 49.258968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599944, 0.755706, 0.262632,
		0.800042, 0.566419, 0.197744,
		0.000676, 0.328752, -0.944416,
		38.078568, 36.216450, 48.975643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291355, 36.674229, 49.664589>,  <38.078094, 35.986324, 49.636734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291355, 36.674229, 49.664589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.090073, 36.657429, 49.319332>,  <37.969303, 36.647350, 49.112179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.090073, 36.657429, 49.319332>,  <38.291355, 36.674229, 49.664589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090073, 36.657429, 49.319332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517552, 0.814523, 0.262092,
		0.692045, 0.578608, -0.431609,
		-0.503204, -0.042001, -0.863147,
		37.939110, 36.644829, 49.060387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266884, 37.387871, 49.545094>,  <38.291355, 36.674229, 49.664589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266884, 37.387871, 49.545094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.982929, 37.191502, 49.343082>,  <37.812557, 37.073681, 49.221874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.982929, 37.191502, 49.343082>,  <38.266884, 37.387871, 49.545094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982929, 37.191502, 49.343082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661914, 0.710060, 0.240177,
		0.240694, 0.504785, -0.829011,
		-0.709885, -0.490924, -0.505031,
		37.769962, 37.044224, 49.191574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935608, 37.877449, 49.036140>,  <38.266884, 37.387871, 49.545094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935608, 37.877449, 49.036140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.660976, 37.599369, 49.121273>,  <37.496197, 37.432522, 49.172352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.660976, 37.599369, 49.121273>,  <37.935608, 37.877449, 49.036140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660976, 37.599369, 49.121273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658900, 0.718711, 0.222047,
		-0.307335, 0.012216, -0.951523,
		-0.686583, -0.695201, 0.212836,
		37.455002, 37.390808, 49.185123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318977, 38.126598, 48.728233>,  <37.935608, 37.877449, 49.036140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318977, 38.126598, 48.728233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.200592, 37.871307, 49.012505>,  <37.129562, 37.718132, 49.183067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.200592, 37.871307, 49.012505>,  <37.318977, 38.126598, 48.728233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200592, 37.871307, 49.012505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738171, 0.625016, 0.253886,
		-0.606224, -0.449462, -0.656106,
		-0.295965, -0.638231, 0.710680,
		37.111801, 37.679836, 49.225708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672192, 38.142864, 48.570919>,  <37.318977, 38.126598, 48.728233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672192, 38.142864, 48.570919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.696476, 37.971954, 48.931751>,  <36.711048, 37.869408, 49.148251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.696476, 37.971954, 48.931751>,  <36.672192, 38.142864, 48.570919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696476, 37.971954, 48.931751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846431, 0.456950, 0.273408,
		-0.529027, -0.780147, -0.333919,
		0.060714, -0.427279, 0.902079,
		36.714691, 37.843769, 49.202374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005398, 37.977318, 48.666161>,  <36.672192, 38.142864, 48.570919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005398, 37.977318, 48.666161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.189037, 37.997074, 49.020966>,  <36.299221, 38.008926, 49.233849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.189037, 37.997074, 49.020966>,  <36.005398, 37.977318, 48.666161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189037, 37.997074, 49.020966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821490, 0.403711, 0.402706,
		-0.338206, -0.913553, 0.225917,
		0.459099, 0.049390, 0.887012,
		36.326767, 38.011890, 49.287067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486691, 37.822514, 49.066315>,  <36.005398, 37.977318, 48.666161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486691, 37.822514, 49.066315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.767097, 37.995632, 49.293037>,  <35.935341, 38.099503, 49.429070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.767097, 37.995632, 49.293037>,  <35.486691, 37.822514, 49.066315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767097, 37.995632, 49.293037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683918, 0.633205, 0.362363,
		-0.202073, -0.641669, 0.739884,
		0.701015, 0.432796, 0.566803,
		35.977402, 38.125473, 49.463078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310287, 37.705669, 49.821384>,  <35.486691, 37.822514, 49.066315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310287, 37.705669, 49.821384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.543633, 38.029194, 49.791698>,  <35.683640, 38.223309, 49.773888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.543633, 38.029194, 49.791698>,  <35.310287, 37.705669, 49.821384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543633, 38.029194, 49.791698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723909, 0.559202, 0.404039,
		0.368291, -0.181980, 0.911726,
		0.583367, 0.808811, -0.074212,
		35.718643, 38.271839, 49.769436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114582, 37.960709, 50.367702>,  <35.310287, 37.705669, 49.821384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114582, 37.960709, 50.367702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.313625, 38.263367, 50.198051>,  <35.433052, 38.444962, 50.096260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.313625, 38.263367, 50.198051>,  <35.114582, 37.960709, 50.367702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313625, 38.263367, 50.198051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605176, 0.653133, 0.455170,
		0.621412, 0.030177, 0.782903,
		0.497604, 0.756642, -0.424127,
		35.462906, 38.490360, 50.070812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142696, 38.596844, 50.855774>,  <35.114582, 37.960709, 50.367702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142696, 38.596844, 50.855774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.211620, 38.754341, 50.494602>,  <35.252975, 38.848839, 50.277901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.211620, 38.754341, 50.494602>,  <35.142696, 38.596844, 50.855774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211620, 38.754341, 50.494602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630031, 0.748681, 0.206245,
		0.757212, 0.533334, 0.377075,
		0.172311, 0.393740, -0.902927,
		35.263313, 38.872463, 50.223724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094032, 39.318340, 51.018200>,  <35.142696, 38.596844, 50.855774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094032, 39.318340, 51.018200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.066914, 39.277966, 50.621166>,  <35.050644, 39.253742, 50.382946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.066914, 39.277966, 50.621166>,  <35.094032, 39.318340, 51.018200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066914, 39.277966, 50.621166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660274, 0.750376, -0.031207,
		0.747958, 0.653260, -0.117518,
		-0.067796, -0.100936, -0.992580,
		35.046574, 39.247684, 50.323391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040142, 40.025867, 50.650345>,  <35.094032, 39.318340, 51.018200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040142, 40.025867, 50.650345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.899757, 39.765537, 50.381050>,  <34.815525, 39.609337, 50.219475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.899757, 39.765537, 50.381050>,  <35.040142, 40.025867, 50.650345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899757, 39.765537, 50.381050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827055, 0.552595, -0.103048,
		0.439093, 0.520636, -0.732213,
		-0.350967, -0.650828, -0.673235,
		34.794468, 39.570290, 50.179081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985340, 40.500977, 50.043331>,  <35.040142, 40.025867, 50.650345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985340, 40.500977, 50.043331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.746414, 40.181034, 50.019817>,  <34.603058, 39.989071, 50.005711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.746414, 40.181034, 50.019817>,  <34.985340, 40.500977, 50.043331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746414, 40.181034, 50.019817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799836, 0.599483, -0.029706,
		0.059000, 0.029274, -0.997829,
		-0.597312, -0.799852, -0.058784,
		34.567219, 39.941078, 50.002182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583408, 40.626045, 49.489559>,  <34.985340, 40.500977, 50.043331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583408, 40.626045, 49.489559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.392807, 40.339981, 49.694107>,  <34.278446, 40.168343, 49.816833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.392807, 40.339981, 49.694107>,  <34.583408, 40.626045, 49.489559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392807, 40.339981, 49.694107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846769, 0.529779, -0.048127,
		-0.236492, -0.455941, -0.858015,
		-0.476501, -0.715159, 0.511365,
		34.249855, 40.125435, 49.847515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947121, 40.581680, 49.143387>,  <34.583408, 40.626045, 49.489559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947121, 40.581680, 49.143387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.886913, 40.431503, 49.509205>,  <33.850788, 40.341396, 49.728695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.886913, 40.431503, 49.509205>,  <33.947121, 40.581680, 49.143387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886913, 40.431503, 49.509205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904650, 0.425377, 0.025740,
		-0.398690, -0.823468, -0.403667,
		-0.150514, -0.375439, 0.914544,
		33.841759, 40.318871, 49.783569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233997, 40.306240, 49.138054>,  <33.947121, 40.581680, 49.143387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233997, 40.306240, 49.138054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.291138, 40.331982, 49.533112>,  <33.325424, 40.347427, 49.770149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.291138, 40.331982, 49.533112>,  <33.233997, 40.306240, 49.138054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291138, 40.331982, 49.533112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781608, 0.619521, 0.072683,
		-0.607192, -0.782337, 0.138805,
		0.142855, 0.064358, 0.987649,
		33.333996, 40.351288, 49.829407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579411, 40.087837, 49.595753>,  <33.233997, 40.306240, 49.138054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579411, 40.087837, 49.595753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.816780, 40.342941, 49.792160>,  <32.959202, 40.496006, 49.910004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.816780, 40.342941, 49.792160>,  <32.579411, 40.087837, 49.595753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816780, 40.342941, 49.792160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737410, 0.675298, 0.014091,
		-0.322597, -0.370444, 0.871035,
		0.593429, 0.637765, 0.491018,
		32.994808, 40.534271, 49.939465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065022, 40.348389, 50.132832>,  <32.579411, 40.087837, 49.595753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065022, 40.348389, 50.132832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.362171, 40.616089, 50.139095>,  <32.540462, 40.776707, 50.142853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.362171, 40.616089, 50.139095>,  <32.065022, 40.348389, 50.132832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362171, 40.616089, 50.139095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656442, 0.723676, 0.213022,
		0.131233, -0.168528, 0.976922,
		0.742875, 0.669248, 0.015659,
		32.585033, 40.816864, 50.143791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986494, 40.701473, 50.729546>,  <32.065022, 40.348389, 50.132832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986494, 40.701473, 50.729546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.216583, 40.949078, 50.515652>,  <32.354637, 41.097641, 50.387314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.216583, 40.949078, 50.515652>,  <31.986494, 40.701473, 50.729546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216583, 40.949078, 50.515652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473688, 0.785027, 0.399189,
		0.666885, 0.023675, 0.744784,
		0.575225, 0.619009, -0.534738,
		32.389149, 41.134781, 50.355228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325211, 41.132725, 51.202328>,  <31.986494, 40.701473, 50.729546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325211, 41.132725, 51.202328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.326416, 41.339245, 50.859768>,  <32.327141, 41.463158, 50.654232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.326416, 41.339245, 50.859768>,  <32.325211, 41.132725, 51.202328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326416, 41.339245, 50.859768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186271, 0.841705, 0.506790,
		0.982494, 0.157994, 0.098711,
		0.003016, 0.516305, -0.856400,
		32.327320, 41.494137, 50.602848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768314, 41.640560, 51.373920>,  <32.325211, 41.132725, 51.202328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768314, 41.640560, 51.373920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.588604, 41.789364, 51.049019>,  <32.480778, 41.878647, 50.854076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.588604, 41.789364, 51.049019>,  <32.768314, 41.640560, 51.373920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588604, 41.789364, 51.049019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199766, 0.844328, 0.497196,
		0.870774, 0.385638, -0.305019,
		-0.449274, 0.372013, -0.812256,
		32.453823, 41.900967, 50.805344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032665, 42.303173, 51.320538>,  <32.768314, 41.640560, 51.373920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032665, 42.303173, 51.320538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.694324, 42.314373, 51.107464>,  <32.491322, 42.321095, 50.979618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.694324, 42.314373, 51.107464>,  <33.032665, 42.303173, 51.320538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694324, 42.314373, 51.107464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290393, 0.813500, 0.503875,
		0.447451, 0.580891, -0.679966,
		-0.845848, 0.028002, -0.532688,
		32.440571, 42.322773, 50.947659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961651, 42.933311, 51.054047>,  <33.032665, 42.303173, 51.320538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961651, 42.933311, 51.054047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.589584, 42.787422, 51.037212>,  <32.366344, 42.699886, 51.027111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.589584, 42.787422, 51.037212>,  <32.961651, 42.933311, 51.054047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589584, 42.787422, 51.037212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295611, 0.676004, 0.675005,
		-0.217742, 0.640306, -0.736612,
		-0.930163, -0.364728, -0.042087,
		32.310535, 42.678005, 51.024586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563839, 43.495117, 51.024323>,  <32.961651, 42.933311, 51.054047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563839, 43.495117, 51.024323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.307842, 43.201408, 51.114872>,  <32.154243, 43.025181, 51.169201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.307842, 43.201408, 51.114872>,  <32.563839, 43.495117, 51.024323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307842, 43.201408, 51.114872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528610, 0.634562, 0.563829,
		-0.557654, 0.241185, -0.794262,
		-0.639996, -0.734276, 0.226373,
		32.115845, 42.981125, 51.182785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808109, 43.652153, 50.776039>,  <32.563839, 43.495117, 51.024323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808109, 43.652153, 50.776039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.780546, 43.388844, 51.075886>,  <31.764009, 43.230858, 51.255795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.780546, 43.388844, 51.075886>,  <31.808109, 43.652153, 50.776039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780546, 43.388844, 51.075886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744728, 0.533912, 0.400398,
		-0.663801, -0.530670, -0.527027,
		-0.068907, -0.658276, 0.749616,
		31.759874, 43.191360, 51.300770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770500, 44.253998, 50.500519>,  <31.808109, 43.652153, 50.776039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770500, 44.253998, 50.500519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.424553, 44.097305, 50.626091>,  <31.216984, 44.003288, 50.701435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.424553, 44.097305, 50.626091>,  <31.770500, 44.253998, 50.500519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424553, 44.097305, 50.626091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258265, 0.883457, 0.390900,
		-0.430469, 0.257001, -0.865244,
		-0.864868, -0.391733, 0.313926,
		31.165092, 43.979786, 50.720268>
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
