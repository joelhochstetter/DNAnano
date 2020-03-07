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
	<36.939896, 52.987041, 50.527744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881866, 53.077007, 50.142338>,  <36.847050, 53.130985, 49.911095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881866, 53.077007, 50.142338>,  <36.939896, 52.987041, 50.527744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881866, 53.077007, 50.142338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970726, 0.220763, -0.094626,
		0.191426, -0.949040, -0.250357,
		-0.145073, 0.224914, -0.963518,
		36.838345, 53.144482, 49.853283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391998, 52.635525, 50.100101>,  <36.939896, 52.987041, 50.527744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391998, 52.635525, 50.100101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307869, 52.976387, 49.908440>,  <37.257393, 53.180904, 49.793442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307869, 52.976387, 49.908440>,  <37.391998, 52.635525, 50.100101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307869, 52.976387, 49.908440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977489, 0.174898, -0.118011,
		-0.016760, -0.493192, -0.869759,
		-0.210321, 0.852157, -0.479159,
		37.244774, 53.232033, 49.764690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728134, 52.656834, 49.339355>,  <37.391998, 52.635525, 50.100101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728134, 52.656834, 49.339355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726963, 53.010773, 49.525703>,  <37.726261, 53.223137, 49.637512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726963, 53.010773, 49.525703>,  <37.728134, 52.656834, 49.339355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726963, 53.010773, 49.525703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929971, 0.173673, -0.324025,
		-0.367622, 0.432299, -0.823390,
		-0.002925, 0.884848, 0.465872,
		37.726086, 53.276226, 49.665466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838657, 53.210564, 48.827457>,  <37.728134, 52.656834, 49.339355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838657, 53.210564, 48.827457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976433, 53.318233, 49.187214>,  <38.059097, 53.382835, 49.403069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976433, 53.318233, 49.187214>,  <37.838657, 53.210564, 48.827457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976433, 53.318233, 49.187214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882080, 0.235183, -0.408197,
		-0.321400, 0.933933, -0.156431,
		0.344438, 0.269179, 0.899391,
		38.079765, 53.398987, 49.457031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016891, 53.885880, 48.926807>,  <37.838657, 53.210564, 48.827457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016891, 53.885880, 48.926807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252857, 53.676819, 49.173004>,  <38.394436, 53.551380, 49.320724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252857, 53.676819, 49.173004>,  <38.016891, 53.885880, 48.926807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252857, 53.676819, 49.173004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803043, 0.459427, -0.379537,
		-0.084408, 0.718163, 0.690737,
		0.589913, -0.522655, 0.615495,
		38.429832, 53.520023, 49.357655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435299, 54.435478, 49.278923>,  <38.016891, 53.885880, 48.926807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435299, 54.435478, 49.278923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629520, 54.088219, 49.237839>,  <38.746052, 53.879864, 49.213188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629520, 54.088219, 49.237839>,  <38.435299, 54.435478, 49.278923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629520, 54.088219, 49.237839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823722, 0.493692, -0.278837,
		0.292782, 0.050783, 0.954830,
		0.485552, -0.868153, -0.102713,
		38.775185, 53.827774, 49.207024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982136, 54.524551, 49.688538>,  <38.435299, 54.435478, 49.278923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982136, 54.524551, 49.688538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046005, 54.271400, 49.385494>,  <39.084328, 54.119511, 49.203671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046005, 54.271400, 49.385494>,  <38.982136, 54.524551, 49.688538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046005, 54.271400, 49.385494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790706, 0.541460, -0.285667,
		0.591006, -0.553429, 0.586880,
		0.159676, -0.632880, -0.757606,
		39.093906, 54.081535, 49.158211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769253, 54.545078, 49.598179>,  <38.982136, 54.524551, 49.688538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769253, 54.545078, 49.598179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575401, 54.398975, 49.280254>,  <39.459091, 54.311314, 49.089500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575401, 54.398975, 49.280254>,  <39.769253, 54.545078, 49.598179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575401, 54.398975, 49.280254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701506, 0.380490, -0.602592,
		0.522516, -0.849598, 0.071832,
		-0.484630, -0.365254, -0.794810,
		39.430012, 54.289398, 49.041813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566307, 54.831558, 49.451073>,  <39.769253, 54.545078, 49.598179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566307, 54.831558, 49.451073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703819, 55.194973, 49.356094>,  <40.786327, 55.413021, 49.299107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703819, 55.194973, 49.356094>,  <40.566307, 54.831558, 49.451073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703819, 55.194973, 49.356094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933168, -0.302267, 0.194503,
		0.104942, -0.288440, -0.951730,
		0.343779, 0.908536, -0.237443,
		40.806953, 55.467533, 49.284863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.305248, 54.752697, 49.159004>,  <40.566307, 54.831558, 49.451073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.305248, 54.752697, 49.159004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296413, 55.142899, 49.246544>,  <41.291115, 55.377022, 49.299068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296413, 55.142899, 49.246544>,  <41.305248, 54.752697, 49.159004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296413, 55.142899, 49.246544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914091, -0.068954, 0.399603,
		0.404906, 0.208874, -0.890181,
		-0.022085, 0.975509, 0.218850,
		41.289787, 55.435551, 49.312199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.029076, 54.983215, 49.091114>,  <41.305248, 54.752697, 49.159004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.029076, 54.983215, 49.091114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846882, 55.241661, 49.336082>,  <41.737564, 55.396729, 49.483063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846882, 55.241661, 49.336082>,  <42.029076, 54.983215, 49.091114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.846882, 55.241661, 49.336082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757069, -0.080807, 0.648318,
		0.468378, 0.758948, -0.452349,
		-0.455487, 0.646118, 0.612425,
		41.710236, 55.435497, 49.519810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402237, 55.563328, 48.982552>,  <42.029076, 54.983215, 49.091114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402237, 55.563328, 48.982552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.237549, 55.507545, 49.342781>,  <42.138737, 55.474075, 49.558918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.237549, 55.507545, 49.342781>,  <42.402237, 55.563328, 48.982552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.237549, 55.507545, 49.342781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910781, -0.096643, 0.401420,
		0.031053, 0.985500, 0.166807,
		-0.411720, -0.139460, 0.900576,
		42.114033, 55.465706, 49.612953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.751762, 55.955013, 49.586441>,  <42.402237, 55.563328, 48.982552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.751762, 55.955013, 49.586441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.540154, 55.686302, 49.793846>,  <42.413189, 55.525078, 49.918289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.540154, 55.686302, 49.793846>,  <42.751762, 55.955013, 49.586441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.540154, 55.686302, 49.793846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806924, -0.209065, 0.552418,
		-0.262696, 0.710642, 0.652670,
		-0.529022, -0.671773, 0.518514,
		42.381447, 55.484772, 49.949402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.623199, 56.143482, 50.332775>,  <42.751762, 55.955013, 49.586441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.623199, 56.143482, 50.332775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.684769, 55.761749, 50.230358>,  <42.721710, 55.532711, 50.168907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.684769, 55.761749, 50.230358>,  <42.623199, 56.143482, 50.332775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.684769, 55.761749, 50.230358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805155, -0.029061, 0.592352,
		-0.572742, -0.297327, 0.763913,
		0.153923, -0.954333, -0.256039,
		42.730946, 55.475449, 50.153545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660938, 55.641487, 50.947868>,  <42.623199, 56.143482, 50.332775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660938, 55.641487, 50.947868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.883625, 55.483551, 50.655521>,  <43.017235, 55.388790, 50.480114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.883625, 55.483551, 50.655521>,  <42.660938, 55.641487, 50.947868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.883625, 55.483551, 50.655521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799958, 0.017668, 0.599796,
		-0.223910, -0.918580, 0.325691,
		0.556715, -0.394839, -0.730869,
		43.050640, 55.365101, 50.436260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.012566, 55.099583, 51.331398>,  <42.660938, 55.641487, 50.947868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.012566, 55.099583, 51.331398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.190689, 55.223515, 50.995373>,  <43.297565, 55.297874, 50.793758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.190689, 55.223515, 50.995373>,  <43.012566, 55.099583, 51.331398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.190689, 55.223515, 50.995373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862259, 0.104416, 0.495587,
		0.241262, -0.945042, -0.220653,
		0.445311, 0.309826, -0.840062,
		43.324284, 55.316463, 50.743355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.520840, 55.284073, 51.770298>,  <43.012566, 55.099583, 51.331398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.520840, 55.284073, 51.770298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.648758, 55.318478, 51.392868>,  <43.725510, 55.339123, 51.166412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.648758, 55.318478, 51.392868>,  <43.520840, 55.284073, 51.770298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.648758, 55.318478, 51.392868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946411, -0.076407, 0.313795,
		-0.045105, -0.993360, -0.105839,
		0.319798, 0.086014, -0.943573,
		43.744698, 55.344280, 51.109795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.235069, 55.104198, 52.440186>,  <43.520840, 55.284073, 51.770298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.235069, 55.104198, 52.440186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070679, 54.905724, 52.746101>,  <42.972046, 54.786640, 52.929649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070679, 54.905724, 52.746101>,  <43.235069, 55.104198, 52.440186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.070679, 54.905724, 52.746101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403342, 0.653370, 0.640643,
		-0.817566, 0.571760, -0.068388,
		-0.410977, -0.496184, 0.764787,
		42.947384, 54.756870, 52.975536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.840561, 55.654003, 52.527027>,  <43.235069, 55.104198, 52.440186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.840561, 55.654003, 52.527027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.140457, 55.904072, 52.440258>,  <44.320396, 56.054111, 52.388199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.140457, 55.904072, 52.440258>,  <43.840561, 55.654003, 52.527027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.140457, 55.904072, 52.440258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433599, -0.216493, 0.874713,
		0.499881, -0.749864, -0.433386,
		0.749740, 0.625168, -0.216919,
		44.365379, 56.091621, 52.375183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.487686, 55.355865, 52.766788>,  <43.840561, 55.654003, 52.527027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.487686, 55.355865, 52.766788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.553291, 55.749641, 52.741573>,  <44.592655, 55.985909, 52.726444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.553291, 55.749641, 52.741573>,  <44.487686, 55.355865, 52.766788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.553291, 55.749641, 52.741573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634361, -0.056322, 0.770983,
		0.755438, -0.166437, -0.633729,
		0.164013, 0.984442, -0.063034,
		44.602493, 56.044975, 52.722664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.181534, 55.436958, 52.568512>,  <44.487686, 55.355865, 52.766788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.181534, 55.436958, 52.568512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.038666, 55.746826, 52.777245>,  <44.952946, 55.932747, 52.902485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.038666, 55.746826, 52.777245>,  <45.181534, 55.436958, 52.568512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.038666, 55.746826, 52.777245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590328, -0.245733, 0.768848,
		0.723837, 0.582665, -0.369542,
		-0.357172, 0.774672, 0.521835,
		44.931515, 55.979229, 52.933796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.743454, 55.581142, 53.102032>,  <45.181534, 55.436958, 52.568512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.743454, 55.581142, 53.102032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.462410, 55.854652, 53.180817>,  <45.293781, 56.018757, 53.228088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.462410, 55.854652, 53.180817>,  <45.743454, 55.581142, 53.102032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.462410, 55.854652, 53.180817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170755, -0.106694, 0.979520,
		0.690782, 0.721855, -0.041792,
		-0.702612, 0.683771, 0.196963,
		45.251625, 56.059784, 53.239906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.047596, 56.171013, 53.406506>,  <45.743454, 55.581142, 53.102032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.047596, 56.171013, 53.406506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.690441, 56.043655, 53.533867>,  <45.476147, 55.967243, 53.610283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.690441, 56.043655, 53.533867>,  <46.047596, 56.171013, 53.406506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.690441, 56.043655, 53.533867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313205, 0.068885, 0.947184,
		-0.323506, 0.945454, 0.038214,
		-0.892886, -0.318389, 0.318406,
		45.422577, 55.948139, 53.629387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.779366, 56.673187, 53.802662>,  <46.047596, 56.171013, 53.406506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.779366, 56.673187, 53.802662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.654839, 56.311245, 53.918816>,  <45.580124, 56.094082, 53.988506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.654839, 56.311245, 53.918816>,  <45.779366, 56.673187, 53.802662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.654839, 56.311245, 53.918816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739246, -0.038577, 0.672330,
		-0.597157, 0.423975, 0.680918,
		-0.311319, -0.904852, 0.290385,
		45.561443, 56.039791, 54.005932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.510868, 56.675434, 54.547832>,  <45.779366, 56.673187, 53.802662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.510868, 56.675434, 54.547832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.703331, 56.367973, 54.379234>,  <45.818810, 56.183498, 54.278076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.703331, 56.367973, 54.379234>,  <45.510868, 56.675434, 54.547832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.703331, 56.367973, 54.379234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801261, 0.190562, 0.567158,
		-0.355625, -0.610624, 0.707581,
		0.481158, -0.768651, -0.421500,
		45.847679, 56.137379, 54.252785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.842899, 56.319466, 55.017933>,  <45.510868, 56.675434, 54.547832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.842899, 56.319466, 55.017933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.038883, 56.249664, 54.676292>,  <46.156475, 56.207783, 54.471310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.038883, 56.249664, 54.676292>,  <45.842899, 56.319466, 55.017933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.038883, 56.249664, 54.676292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870758, 0.051405, 0.489018,
		-0.041428, -0.983315, 0.177133,
		0.489964, -0.174499, -0.854099,
		46.185871, 56.197315, 54.420063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.160694, 55.673435, 54.939732>,  <45.842899, 56.319466, 55.017933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.160694, 55.673435, 54.939732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.365112, 55.886730, 54.670067>,  <46.487762, 56.014706, 54.508270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.365112, 55.886730, 54.670067>,  <46.160694, 55.673435, 54.939732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.365112, 55.886730, 54.670067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848881, -0.189903, 0.493292,
		0.135015, -0.824378, -0.549701,
		0.511049, 0.533233, -0.674159,
		46.518429, 56.046700, 54.467819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.678596, 55.357609, 54.588970>,  <46.160694, 55.673435, 54.939732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.678596, 55.357609, 54.588970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.823631, 55.730370, 54.585381>,  <46.910652, 55.954025, 54.583225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.823631, 55.730370, 54.585381>,  <46.678596, 55.357609, 54.588970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.823631, 55.730370, 54.585381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823204, -0.315748, 0.471846,
		0.436881, -0.178476, -0.881635,
		0.362588, 0.931906, -0.008978,
		46.932407, 56.009941, 54.582687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.487885, 55.428032, 54.426060>,  <46.678596, 55.357609, 54.588970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.487885, 55.428032, 54.426060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.394272, 55.728134, 54.673397>,  <47.338104, 55.908195, 54.821800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.394272, 55.728134, 54.673397>,  <47.487885, 55.428032, 54.426060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.394272, 55.728134, 54.673397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872286, -0.118843, 0.474334,
		0.429357, 0.650383, -0.626622,
		-0.234029, 0.750252, 0.618346,
		47.324062, 55.953209, 54.858902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.996227, 55.952019, 54.371773>,  <47.487885, 55.428032, 54.426060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.996227, 55.952019, 54.371773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.849957, 55.888741, 54.738651>,  <47.762192, 55.850773, 54.958778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.849957, 55.888741, 54.738651>,  <47.996227, 55.952019, 54.371773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.849957, 55.888741, 54.738651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910232, -0.266517, 0.316933,
		0.194311, 0.950759, 0.241455,
		-0.365679, -0.158196, 0.917198,
		47.740253, 55.841282, 55.013809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.439098, 56.298149, 54.750759>,  <47.996227, 55.952019, 54.371773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.439098, 56.298149, 54.750759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.271183, 56.023937, 54.988693>,  <48.170433, 55.859409, 55.131454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.271183, 56.023937, 54.988693>,  <48.439098, 56.298149, 54.750759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.271183, 56.023937, 54.988693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903637, -0.254331, 0.344611,
		-0.084955, 0.682178, 0.726234,
		-0.419789, -0.685528, 0.594835,
		48.145245, 55.818279, 55.167145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.374043, 56.487484, 55.526611>,  <48.439098, 56.298149, 54.750759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.374043, 56.487484, 55.526611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.430195, 56.093353, 55.487762>,  <48.463886, 55.856876, 55.464455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.430195, 56.093353, 55.487762>,  <48.374043, 56.487484, 55.526611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.430195, 56.093353, 55.487762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754209, 0.042870, 0.655234,
		-0.641454, -0.165229, 0.749157,
		0.140380, -0.985323, -0.097118,
		48.472309, 55.797756, 55.458626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.770473, 56.810524, 55.546799>,  <48.374043, 56.487484, 55.526611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.770473, 56.810524, 55.546799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.668465, 56.537785, 55.821037>,  <47.607262, 56.374142, 55.985580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.668465, 56.537785, 55.821037>,  <47.770473, 56.810524, 55.546799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.668465, 56.537785, 55.821037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947094, -0.319045, 0.034984,
		0.194884, 0.658249, 0.727137,
		-0.255017, -0.681849, 0.685600,
		47.591961, 56.333229, 56.026718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.013973, 56.893784, 56.209743>,  <47.770473, 56.810524, 55.546799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.013973, 56.893784, 56.209743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.962482, 56.500874, 56.155228>,  <47.931587, 56.265129, 56.122517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.962482, 56.500874, 56.155228>,  <48.013973, 56.893784, 56.209743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.962482, 56.500874, 56.155228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989723, -0.135882, 0.044548,
		-0.062277, -0.129154, 0.989667,
		-0.128725, -0.982270, -0.136289,
		47.923866, 56.206192, 56.114342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.384708, 56.395264, 56.755272>,  <48.013973, 56.893784, 56.209743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.384708, 56.395264, 56.755272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.358662, 56.284637, 56.371758>,  <48.343033, 56.218262, 56.141647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.358662, 56.284637, 56.371758>,  <48.384708, 56.395264, 56.755272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.358662, 56.284637, 56.371758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977610, -0.210348, -0.005718,
		-0.200098, -0.937690, 0.284074,
		-0.065116, -0.276570, -0.958785,
		48.339127, 56.201668, 56.084122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.403240, 55.700439, 56.618599>,  <48.384708, 56.395264, 56.755272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.403240, 55.700439, 56.618599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.564022, 55.896770, 56.309402>,  <48.660492, 56.014568, 56.123886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.564022, 55.896770, 56.309402>,  <48.403240, 55.700439, 56.618599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.564022, 55.896770, 56.309402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892941, -0.396998, 0.212249,
		-0.202697, -0.775550, -0.597860,
		0.401959, 0.490831, -0.772991,
		48.684608, 56.044022, 56.077507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.895519, 55.299103, 56.163387>,  <48.403240, 55.700439, 56.618599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.895519, 55.299103, 56.163387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.998497, 55.684944, 56.140518>,  <49.060284, 55.916447, 56.126797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.998497, 55.684944, 56.140518>,  <48.895519, 55.299103, 56.163387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.998497, 55.684944, 56.140518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964056, -0.252368, 0.083108,
		0.065736, -0.076517, -0.994899,
		0.257440, 0.964601, -0.057177,
		49.075729, 55.974323, 56.123363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.432022, 55.400185, 55.571922>,  <48.895519, 55.299103, 56.163387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.432022, 55.400185, 55.571922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.442413, 55.701241, 55.835091>,  <49.448647, 55.881874, 55.992992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.442413, 55.701241, 55.835091>,  <49.432022, 55.400185, 55.571922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.442413, 55.701241, 55.835091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994395, 0.048014, -0.094193,
		-0.102483, 0.656678, -0.747176,
		0.025979, 0.752641, 0.657918,
		49.450207, 55.927032, 56.032467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.871456, 55.965866, 55.319489>,  <49.432022, 55.400185, 55.571922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.871456, 55.965866, 55.319489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.880417, 55.979515, 55.719154>,  <49.885792, 55.987705, 55.958954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.880417, 55.979515, 55.719154>,  <49.871456, 55.965866, 55.319489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.880417, 55.979515, 55.719154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994816, 0.098402, -0.025663,
		-0.099196, 0.994561, -0.031743,
		0.022400, 0.034124, 0.999167,
		49.887138, 55.989754, 56.018906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.302116, 56.515575, 55.504375>,  <49.871456, 55.965866, 55.319489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.302116, 56.515575, 55.504375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.272041, 56.204708, 55.754288>,  <50.253994, 56.018188, 55.904236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.272041, 56.204708, 55.754288>,  <50.302116, 56.515575, 55.504375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.272041, 56.204708, 55.754288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993705, -0.110579, -0.017959,
		0.083045, 0.619502, 0.780590,
		-0.075191, -0.777168, 0.624785,
		50.249485, 55.971558, 55.941723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.711464, 56.615570, 56.154953>,  <50.302116, 56.515575, 55.504375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.711464, 56.615570, 56.154953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.669563, 56.235703, 56.036865>,  <50.644424, 56.007782, 55.966011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.669563, 56.235703, 56.036865>,  <50.711464, 56.615570, 56.154953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.669563, 56.235703, 56.036865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994390, -0.095628, -0.045211,
		0.014704, -0.298302, 0.954358,
		-0.104750, -0.949669, -0.295222,
		50.638138, 55.950802, 55.948299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.212208, 56.305447, 56.569447>,  <50.711464, 56.615570, 56.154953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.212208, 56.305447, 56.569447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.116669, 56.075668, 56.256279>,  <51.059345, 55.937801, 56.068378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.116669, 56.075668, 56.256279>,  <51.212208, 56.305447, 56.569447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.116669, 56.075668, 56.256279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967387, -0.210789, -0.140465,
		-0.084340, -0.790934, 0.606061,
		-0.238850, -0.574448, -0.782918,
		51.045013, 55.903336, 56.021404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.484188, 55.447479, 56.589504>,  <51.212208, 56.305447, 56.569447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.484188, 55.447479, 56.589504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.476032, 55.670906, 56.257820>,  <51.471138, 55.804962, 56.058811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.476032, 55.670906, 56.257820>,  <51.484188, 55.447479, 56.589504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.476032, 55.670906, 56.257820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998850, -0.024621, -0.041145,
		-0.043398, -0.829094, -0.557423,
		-0.020389, 0.558568, -0.829208,
		51.469917, 55.838478, 56.009056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.009258, 55.135624, 56.111202>,  <51.484188, 55.447479, 56.589504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.009258, 55.135624, 56.111202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.951042, 55.526001, 56.046272>,  <51.916111, 55.760227, 56.007317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.951042, 55.526001, 56.046272>,  <52.009258, 55.135624, 56.111202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.951042, 55.526001, 56.046272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964946, 0.103808, -0.241047,
		-0.218398, -0.191715, -0.956843,
		-0.145540, 0.975945, -0.162323,
		51.907379, 55.818783, 55.997574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.241905, 55.334618, 55.358341>,  <52.009258, 55.135624, 56.111202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.241905, 55.334618, 55.358341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.254677, 55.621166, 55.637138>,  <52.262341, 55.793095, 55.804417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.254677, 55.621166, 55.637138>,  <52.241905, 55.334618, 55.358341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.254677, 55.621166, 55.637138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947554, 0.200172, -0.249144,
		-0.317997, 0.668391, -0.672407,
		0.031929, 0.716369, 0.696991,
		52.264256, 55.836079, 55.846237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.487503, 56.042095, 55.064671>,  <52.241905, 55.334618, 55.358341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.487503, 56.042095, 55.064671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.589722, 56.028725, 55.451157>,  <52.651054, 56.020702, 55.683048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.589722, 56.028725, 55.451157>,  <52.487503, 56.042095, 55.064671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.589722, 56.028725, 55.451157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951135, 0.187850, -0.245061,
		-0.173313, 0.981629, 0.079797,
		0.255549, -0.033425, 0.966218,
		52.666386, 56.018696, 55.741020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.858448, 56.683353, 55.368656>,  <52.487503, 56.042095, 55.064671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.858448, 56.683353, 55.368656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.980217, 56.330452, 55.512299>,  <53.053280, 56.118710, 55.598484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.980217, 56.330452, 55.512299>,  <52.858448, 56.683353, 55.368656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.980217, 56.330452, 55.512299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931813, 0.197614, -0.304423,
		0.197614, 0.427292, 0.882253,
		0.304423, -0.882253, 0.359105,
		53.071545, 56.065777, 55.620029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.410194, 56.745010, 55.839085>,  <52.858448, 56.683353, 55.368656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.410194, 56.745010, 55.839085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.476845, 56.392910, 55.661369>,  <53.516834, 56.181648, 55.554741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.476845, 56.392910, 55.661369>,  <53.410194, 56.745010, 55.839085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.476845, 56.392910, 55.661369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956612, 0.253540, -0.143566,
		0.239019, -0.401086, 0.884308,
		0.166625, -0.880254, -0.444285,
		53.526833, 56.128834, 55.528084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.912010, 56.325096, 56.192898>,  <53.410194, 56.745010, 55.839085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.912010, 56.325096, 56.192898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.940857, 56.177719, 55.822159>,  <53.958164, 56.089294, 55.599716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.940857, 56.177719, 55.822159>,  <53.912010, 56.325096, 56.192898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.940857, 56.177719, 55.822159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971162, 0.237669, -0.018914,
		0.227252, -0.898756, 0.374958,
		0.072117, -0.368443, -0.926849,
		53.962490, 56.067184, 55.544106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.532101, 55.963184, 56.174828>,  <53.912010, 56.325096, 56.192898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.532101, 55.963184, 56.174828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.474106, 56.071754, 55.794235>,  <54.439308, 56.136898, 55.565880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.474106, 56.071754, 55.794235>,  <54.532101, 55.963184, 56.174828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.474106, 56.071754, 55.794235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954470, 0.291748, -0.062213,
		0.260705, -0.917175, -0.301368,
		-0.144984, 0.271428, -0.951476,
		54.430611, 56.153183, 55.508793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.012577, 55.581047, 55.837589>,  <54.532101, 55.963184, 56.174828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.012577, 55.581047, 55.837589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.897102, 55.912285, 55.645370>,  <54.827820, 56.111027, 55.530041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.897102, 55.912285, 55.645370>,  <55.012577, 55.581047, 55.837589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.897102, 55.912285, 55.645370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955758, 0.278851, -0.093640,
		0.056458, -0.486318, -0.871956,
		-0.288685, 0.828092, -0.480546,
		54.810497, 56.160713, 55.501205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.226093, 56.265732, 56.212620>,  <55.012577, 55.581047, 55.837589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.226093, 56.265732, 56.212620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.332680, 56.642403, 56.294830>,  <55.396633, 56.868404, 56.344158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.332680, 56.642403, 56.294830>,  <55.226093, 56.265732, 56.212620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.332680, 56.642403, 56.294830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846025, -0.126350, -0.517955,
		-0.461777, 0.311901, -0.830349,
		0.266465, 0.941676, 0.205530,
		55.412621, 56.924904, 56.356491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.455669, 56.651836, 55.711918>,  <55.226093, 56.265732, 56.212620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.455669, 56.651836, 55.711918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.638832, 56.770176, 56.047249>,  <55.748730, 56.841179, 56.248447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.638832, 56.770176, 56.047249>,  <55.455669, 56.651836, 55.711918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.638832, 56.770176, 56.047249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885216, -0.238626, -0.399312,
		0.081910, 0.924949, -0.371161,
		0.457911, 0.295850, 0.838326,
		55.776207, 56.858932, 56.298748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.091442, 57.020809, 55.623661>,  <55.455669, 56.651836, 55.711918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.091442, 57.020809, 55.623661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.140244, 56.832806, 55.973335>,  <56.169525, 56.720005, 56.183140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.140244, 56.832806, 55.973335>,  <56.091442, 57.020809, 55.623661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.140244, 56.832806, 55.973335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941438, -0.224143, -0.251903,
		0.314339, 0.853728, 0.415137,
		0.122007, -0.470009, 0.874189,
		56.176846, 56.691803, 56.235592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.843391, 56.991264, 55.707794>,  <56.091442, 57.020809, 55.623661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.843391, 56.991264, 55.707794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.688583, 56.751125, 55.987740>,  <56.595699, 56.607040, 56.155704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.688583, 56.751125, 55.987740>,  <56.843391, 56.991264, 55.707794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.688583, 56.751125, 55.987740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879848, -0.467497, 0.085525,
		0.275837, 0.648870, 0.709142,
		-0.387016, -0.600346, 0.699859,
		56.572479, 56.571022, 56.197697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.297218, 57.078613, 56.327492>,  <56.843391, 56.991264, 55.707794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.297218, 57.078613, 56.327492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.159325, 56.703289, 56.338249>,  <57.076588, 56.478092, 56.344704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.159325, 56.703289, 56.338249>,  <57.297218, 57.078613, 56.327492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.159325, 56.703289, 56.338249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869473, -0.308384, 0.385897,
		-0.353800, 0.156413, 0.922150,
		-0.344736, -0.938315, 0.026891,
		57.055904, 56.421795, 56.346317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.151436, 56.724606, 56.974018>,  <57.297218, 57.078613, 56.327492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.151436, 56.724606, 56.974018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.278183, 56.449078, 56.713211>,  <57.354233, 56.283760, 56.556728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.278183, 56.449078, 56.713211>,  <57.151436, 56.724606, 56.974018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.278183, 56.449078, 56.713211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921884, 0.062058, 0.382464,
		-0.222985, -0.722276, 0.654672,
		0.316872, -0.688816, -0.652016,
		57.373245, 56.242432, 56.517605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.677605, 56.281754, 57.285290>,  <57.151436, 56.724606, 56.974018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.677605, 56.281754, 57.285290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.761818, 56.250484, 56.895508>,  <57.812347, 56.231724, 56.661640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.761818, 56.250484, 56.895508>,  <57.677605, 56.281754, 57.285290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.761818, 56.250484, 56.895508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977419, 0.035228, 0.208351,
		0.018039, -0.996317, 0.083829,
		0.210537, -0.078177, -0.974455,
		57.824978, 56.227032, 56.603172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.116085, 55.678371, 57.190536>,  <57.677605, 56.281754, 57.285290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.116085, 55.678371, 57.190536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.188454, 55.980522, 56.938606>,  <58.231873, 56.161812, 56.787449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.188454, 55.980522, 56.938606>,  <58.116085, 55.678371, 57.190536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.188454, 55.980522, 56.938606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958607, 0.007728, 0.284629,
		0.219868, -0.655247, -0.722709,
		0.180917, 0.755375, -0.629824,
		58.242729, 56.207134, 56.749660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.712551, 55.489819, 56.825191>,  <58.116085, 55.678371, 57.190536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.712551, 55.489819, 56.825191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.657867, 55.883099, 56.873566>,  <58.625057, 56.119068, 56.902588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.657867, 55.883099, 56.873566>,  <58.712551, 55.489819, 56.825191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.657867, 55.883099, 56.873566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898853, 0.071805, 0.432327,
		0.416381, 0.167802, -0.893571,
		-0.136708, 0.983202, 0.120932,
		58.616856, 56.178059, 56.909843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.408676, 55.690739, 56.644810>,  <58.712551, 55.489819, 56.825191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.408676, 55.690739, 56.644810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.200142, 55.959164, 56.855667>,  <59.075020, 56.120220, 56.982182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.200142, 55.959164, 56.855667>,  <59.408676, 55.690739, 56.644810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.200142, 55.959164, 56.855667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846553, 0.328898, 0.418538,
		0.107487, 0.664456, -0.739557,
		-0.521339, 0.671061, 0.527145,
		59.043739, 56.160480, 57.013809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.724827, 56.367393, 56.599617>,  <59.408676, 55.690739, 56.644810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.724827, 56.367393, 56.599617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.521744, 56.326439, 56.941788>,  <59.399895, 56.301868, 57.147091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.521744, 56.326439, 56.941788>,  <59.724827, 56.367393, 56.599617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.521744, 56.326439, 56.941788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730496, 0.475226, 0.490444,
		-0.456733, 0.873886, -0.166486,
		-0.507711, -0.102385, 0.855422,
		59.369431, 56.295723, 57.198414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.547798, 57.007153, 56.917870>,  <59.724827, 56.367393, 56.599617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.547798, 57.007153, 56.917870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.598633, 56.712509, 57.183578>,  <59.629131, 56.535725, 57.343002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.598633, 56.712509, 57.183578>,  <59.547798, 57.007153, 56.917870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.598633, 56.712509, 57.183578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874957, 0.398711, 0.274736,
		-0.467225, 0.546296, 0.695170,
		0.127085, -0.736608, 0.664273,
		59.636757, 56.491528, 57.382862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.502853, 57.092430, 57.720669>,  <59.547798, 57.007153, 56.917870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.502853, 57.092430, 57.720669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.770393, 56.828659, 57.583382>,  <59.930916, 56.670399, 57.501007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.770393, 56.828659, 57.583382>,  <59.502853, 57.092430, 57.720669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.770393, 56.828659, 57.583382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727876, 0.487056, 0.482672,
		-0.151118, -0.572656, 0.805747,
		0.668849, -0.659424, -0.343220,
		59.971046, 56.630833, 57.480415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.953629, 56.806374, 58.360447>,  <59.502853, 57.092430, 57.720669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.953629, 56.806374, 58.360447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.158646, 56.809772, 58.016998>,  <60.281654, 56.811813, 57.810928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.158646, 56.809772, 58.016998>,  <59.953629, 56.806374, 58.360447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.158646, 56.809772, 58.016998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608404, 0.702035, 0.370123,
		0.605928, -0.712092, 0.354651,
		0.512539, 0.008497, -0.858622,
		60.312408, 56.812321, 57.759411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.716122, 56.794144, 58.751312>,  <59.953629, 56.806374, 58.360447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.716122, 56.794144, 58.751312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.560524, 56.661301, 59.095032>,  <60.467167, 56.581596, 59.301262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.560524, 56.661301, 59.095032>,  <60.716122, 56.794144, 58.751312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.560524, 56.661301, 59.095032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357448, -0.805274, -0.473038,
		0.849068, -0.491162, 0.194534,
		-0.388992, -0.332106, 0.859297,
		60.443825, 56.561668, 59.352821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.391121, 56.985657, 58.940163>,  <60.716122, 56.794144, 58.751312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.391121, 56.985657, 58.940163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.646889, 57.278072, 58.844894>,  <61.800350, 57.453522, 58.787735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.646889, 57.278072, 58.844894>,  <61.391121, 56.985657, 58.940163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.646889, 57.278072, 58.844894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035008, -0.281764, -0.958845,
		-0.768060, 0.621442, -0.154574,
		0.639420, 0.731039, -0.238167,
		61.838715, 57.497383, 58.773445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.792927, 57.182087, 59.499531>,  <61.391121, 56.985657, 58.940163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.792927, 57.182087, 59.499531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.664238, 57.551384, 59.583542>,  <61.587025, 57.772964, 59.633949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.664238, 57.551384, 59.583542>,  <61.792927, 57.182087, 59.499531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.664238, 57.551384, 59.583542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782428, 0.384150, -0.490138,
		-0.533199, 0.006642, -0.845964,
		-0.321721, 0.923247, 0.210025,
		61.567722, 57.828358, 59.646549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.333618, 57.470619, 59.137444>,  <61.792927, 57.182087, 59.499531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.333618, 57.470619, 59.137444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.281174, 57.571278, 58.753883>,  <62.249706, 57.631672, 58.523746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.281174, 57.571278, 58.753883>,  <62.333618, 57.470619, 59.137444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.281174, 57.571278, 58.753883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980372, 0.176575, -0.087707,
		0.147245, -0.951574, -0.269862,
		-0.131110, 0.251650, -0.958896,
		62.241840, 57.646774, 58.466213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.691711, 57.050613, 58.664333>,  <62.333618, 57.470619, 59.137444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.691711, 57.050613, 58.664333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.661545, 57.419426, 58.512451>,  <62.643444, 57.640713, 58.421322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.661545, 57.419426, 58.512451>,  <62.691711, 57.050613, 58.664333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.661545, 57.419426, 58.512451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996657, 0.081697, 0.000424,
		0.031411, -0.378403, -0.925108,
		-0.075418, 0.922028, -0.379705,
		62.638920, 57.696033, 58.398540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.396343, 57.154099, 58.673489>,  <62.691711, 57.050613, 58.664333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.396343, 57.154099, 58.673489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.234619, 57.472450, 58.493217>,  <63.137585, 57.663460, 58.385056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.234619, 57.472450, 58.493217>,  <63.396343, 57.154099, 58.673489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.234619, 57.472450, 58.493217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911205, 0.307944, -0.273633,
		-0.078995, -0.521294, -0.849713,
		-0.404307, 0.795879, -0.450680,
		63.113327, 57.711212, 58.358013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.813385, 57.257511, 58.179813>,  <63.396343, 57.154099, 58.673489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.813385, 57.257511, 58.179813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.614082, 57.604023, 58.165375>,  <63.494503, 57.811932, 58.156712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.614082, 57.604023, 58.165375>,  <63.813385, 57.257511, 58.179813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.614082, 57.604023, 58.165375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816833, 0.455039, -0.354574,
		-0.290735, -0.206154, -0.934331,
		-0.498253, 0.866280, -0.036098,
		63.464607, 57.863907, 58.154545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.348114, 57.639465, 57.923271>,  <63.813385, 57.257511, 58.179813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.348114, 57.639465, 57.923271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.474380, 57.279823, 58.044579>,  <64.550140, 57.064037, 58.117363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.474380, 57.279823, 58.044579>,  <64.348114, 57.639465, 57.923271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.474380, 57.279823, 58.044579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302794, -0.207450, -0.930205,
		0.899264, 0.385454, 0.206760,
		0.315659, -0.899105, 0.303265,
		64.569077, 57.010094, 58.135559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.989891, 57.520794, 57.593884>,  <64.348114, 57.639465, 57.923271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.989891, 57.520794, 57.593884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.842918, 57.165546, 57.704330>,  <64.754730, 56.952400, 57.770599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.842918, 57.165546, 57.704330>,  <64.989891, 57.520794, 57.593884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.842918, 57.165546, 57.704330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327383, -0.401394, -0.855396,
		0.870524, -0.223905, 0.438240,
		-0.367435, -0.888115, 0.276120,
		64.732689, 56.899113, 57.787167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.329842, 57.064022, 57.113476>,  <64.989891, 57.520794, 57.593884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.329842, 57.064022, 57.113476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.046356, 56.830132, 57.271370>,  <64.876266, 56.689796, 57.366108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.046356, 56.830132, 57.271370>,  <65.329842, 57.064022, 57.113476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.046356, 56.830132, 57.271370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087464, -0.628024, -0.773263,
		0.700051, -0.513499, 0.496233,
		-0.708716, -0.584727, 0.394736,
		64.833740, 56.654713, 57.389790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.496590, 56.405312, 57.207245>,  <65.329842, 57.064022, 57.113476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.496590, 56.405312, 57.207245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.102386, 56.388123, 57.141624>,  <64.865860, 56.377808, 57.102253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.102386, 56.388123, 57.141624>,  <65.496590, 56.405312, 57.207245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.102386, 56.388123, 57.141624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157722, -0.587727, -0.793537,
		-0.062312, -0.807917, 0.585992,
		-0.985515, -0.042977, -0.164049,
		64.806732, 56.375229, 57.092411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.250999, 56.376286, 57.406857>,  <65.496590, 56.405312, 57.207245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.250999, 56.376286, 57.406857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.526932, 56.526398, 57.654503>,  <66.692490, 56.616463, 57.803089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.526932, 56.526398, 57.654503>,  <66.250999, 56.376286, 57.406857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.526932, 56.526398, 57.654503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635763, 0.095076, -0.766007,
		-0.346329, 0.922023, -0.173002,
		0.689827, 0.375279, 0.619115,
		66.733879, 56.638981, 57.840237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.461792, 55.746544, 56.940521>,  <66.250999, 56.376286, 57.406857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.461792, 55.746544, 56.940521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.747101, 56.004078, 56.829735>,  <66.918289, 56.158600, 56.763264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.747101, 56.004078, 56.829735>,  <66.461792, 55.746544, 56.940521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.747101, 56.004078, 56.829735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226278, -0.585548, -0.778416,
		-0.663350, 0.492555, -0.563344,
		0.713278, 0.643835, -0.276969,
		66.961082, 56.197227, 56.746643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.648674, 55.656528, 56.236172>,  <66.461792, 55.746544, 56.940521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.648674, 55.656528, 56.236172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.978096, 55.856453, 56.343468>,  <67.175751, 55.976410, 56.407845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.978096, 55.856453, 56.343468>,  <66.648674, 55.656528, 56.236172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.978096, 55.856453, 56.343468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469954, -0.336363, -0.816090,
		-0.317668, 0.798150, -0.511901,
		0.823547, 0.499816, 0.268242,
		67.225159, 56.006397, 56.423939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.951408, 55.956627, 55.544243>,  <66.648674, 55.656528, 56.236172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.951408, 55.956627, 55.544243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.231705, 55.892601, 55.822334>,  <67.399879, 55.854187, 55.989189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.231705, 55.892601, 55.822334>,  <66.951408, 55.956627, 55.544243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.231705, 55.892601, 55.822334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674654, -0.168193, -0.718717,
		0.231972, 0.972672, -0.009873,
		0.700736, -0.160061, 0.695233,
		67.441925, 55.844582, 56.030903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.559875, 56.433163, 55.562073>,  <66.951408, 55.956627, 55.544243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.559875, 56.433163, 55.562073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.700432, 56.097702, 55.728531>,  <67.784767, 55.896423, 55.828407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.700432, 56.097702, 55.728531>,  <67.559875, 56.433163, 55.562073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.700432, 56.097702, 55.728531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805966, 0.044801, -0.590264,
		0.476384, 0.542818, 0.691670,
		0.351393, -0.838655, 0.416150,
		67.805847, 55.846104, 55.853374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.244438, 56.581959, 55.657082>,  <67.559875, 56.433163, 55.562073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.244438, 56.581959, 55.657082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.168610, 56.191086, 55.618774>,  <68.123108, 55.956562, 55.595791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.168610, 56.191086, 55.618774>,  <68.244438, 56.581959, 55.657082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.168610, 56.191086, 55.618774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697941, -0.065513, -0.713153,
		0.690608, -0.202036, 0.694436,
		-0.189578, -0.977184, -0.095765,
		68.111732, 55.897930, 55.590046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.868668, 56.118645, 55.776802>,  <68.244438, 56.581959, 55.657082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.868668, 56.118645, 55.776802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.605499, 56.017822, 55.492943>,  <68.447594, 55.957329, 55.322628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.605499, 56.017822, 55.492943>,  <68.868668, 56.118645, 55.776802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.605499, 56.017822, 55.492943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718456, 0.072363, -0.691798,
		0.225727, -0.965002, 0.133485,
		-0.657927, -0.252060, -0.709646,
		68.408119, 55.942204, 55.280048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.117004, 55.572186, 55.515293>,  <68.868668, 56.118645, 55.776802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.117004, 55.572186, 55.515293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.871338, 55.727402, 55.240417>,  <68.723938, 55.820530, 55.075493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.871338, 55.727402, 55.240417>,  <69.117004, 55.572186, 55.515293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.871338, 55.727402, 55.240417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712797, -0.100978, -0.694064,
		-0.338717, -0.916093, -0.214578,
		-0.614159, 0.388042, -0.687191,
		68.687088, 55.843815, 55.034260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.610474, 55.733463, 56.065067>,  <69.117004, 55.572186, 55.515293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.610474, 55.733463, 56.065067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.712273, 55.346924, 56.050087>,  <69.773354, 55.115002, 56.041100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.712273, 55.346924, 56.050087>,  <69.610474, 55.733463, 56.065067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.712273, 55.346924, 56.050087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459490, 0.086758, 0.883936,
		-0.850941, -0.242165, 0.466107,
		0.254497, -0.966348, -0.037447,
		69.788620, 55.057018, 56.038853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.706009, 55.434086, 56.738293>,  <69.610474, 55.733463, 56.065067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.706009, 55.434086, 56.738293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.941116, 55.186943, 56.529381>,  <70.082184, 55.038658, 56.404034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.941116, 55.186943, 56.529381>,  <69.706009, 55.434086, 56.738293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.941116, 55.186943, 56.529381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698527, 0.061882, 0.712903,
		-0.408156, -0.783848, 0.467965,
		0.587766, -0.617862, -0.522281,
		70.117447, 55.001583, 56.372696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.940735, 54.832401, 57.105061>,  <69.706009, 55.434086, 56.738293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.940735, 54.832401, 57.105061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.228249, 54.943172, 56.849983>,  <70.400757, 55.009636, 56.696938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.228249, 54.943172, 56.849983>,  <69.940735, 54.832401, 57.105061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.228249, 54.943172, 56.849983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662188, 0.006683, 0.749308,
		0.211768, -0.960867, -0.178577,
		0.718791, 0.276931, -0.637690,
		70.443886, 55.026253, 56.658676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.584084, 54.598141, 57.431549>,  <69.940735, 54.832401, 57.105061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.584084, 54.598141, 57.431549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.691025, 54.848919, 57.138847>,  <70.755188, 54.999386, 56.963226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.691025, 54.848919, 57.138847>,  <70.584084, 54.598141, 57.431549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.691025, 54.848919, 57.138847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817152, 0.254943, 0.516978,
		0.510674, -0.736164, -0.444155,
		0.267347, 0.626950, -0.731751,
		70.771233, 55.037003, 56.919323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.235954, 54.680557, 57.558193>,  <70.584084, 54.598141, 57.431549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.235954, 54.680557, 57.558193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.192947, 55.001549, 57.323425>,  <71.167145, 55.194141, 57.182564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.192947, 55.001549, 57.323425>,  <71.235954, 54.680557, 57.558193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.192947, 55.001549, 57.323425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760841, 0.446414, 0.470995,
		0.639970, -0.395911, -0.658553,
		-0.107515, 0.802477, -0.586917,
		71.160690, 55.242290, 57.147350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.825180, 54.838554, 57.308262>,  <71.235954, 54.680557, 57.558193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.825180, 54.838554, 57.308262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.609665, 55.174664, 57.332405>,  <71.480354, 55.376331, 57.346893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.609665, 55.174664, 57.332405>,  <71.825180, 54.838554, 57.308262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.609665, 55.174664, 57.332405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664585, 0.379915, 0.643421,
		0.517719, 0.386784, -0.763129,
		-0.538789, 0.840275, 0.060362,
		71.448029, 55.426746, 57.350513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.261269, 55.513481, 57.270161>,  <71.825180, 54.838554, 57.308262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.261269, 55.513481, 57.270161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.933395, 55.583225, 57.488411>,  <71.736671, 55.625072, 57.619362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.933395, 55.583225, 57.488411>,  <72.261269, 55.513481, 57.270161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.933395, 55.583225, 57.488411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503604, 0.673233, 0.541424,
		-0.272928, 0.718579, -0.639652,
		-0.819691, 0.174361, 0.545623,
		71.687485, 55.635532, 57.652100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.251938, 56.208015, 57.434471>,  <72.261269, 55.513481, 57.270161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.251938, 56.208015, 57.434471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.009399, 56.031761, 57.699249>,  <71.863876, 55.926006, 57.858116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.009399, 56.031761, 57.699249>,  <72.251938, 56.208015, 57.434471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.009399, 56.031761, 57.699249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388907, 0.561759, 0.730190,
		-0.693606, 0.700188, -0.169255,
		-0.606351, -0.440640, 0.661948,
		71.827492, 55.899570, 57.897835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.969994, 56.786068, 57.918438>,  <72.251938, 56.208015, 57.434471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.969994, 56.786068, 57.918438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.995033, 56.417557, 58.071968>,  <72.010056, 56.196449, 58.164085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.995033, 56.417557, 58.071968>,  <71.969994, 56.786068, 57.918438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.995033, 56.417557, 58.071968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442136, 0.370383, 0.816904,
		-0.894760, 0.118557, 0.430521,
		0.062608, -0.921282, 0.383822,
		72.013817, 56.141171, 58.187115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.709549, 56.791565, 58.604931>,  <71.969994, 56.786068, 57.918438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.709549, 56.791565, 58.604931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.961411, 56.482719, 58.570602>,  <72.112526, 56.297413, 58.550003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.961411, 56.482719, 58.570602>,  <71.709549, 56.791565, 58.604931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.961411, 56.482719, 58.570602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491901, 0.310745, 0.813309,
		-0.601298, -0.554326, 0.575468,
		0.629662, -0.772114, -0.085824,
		72.150307, 56.251083, 58.544857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.080315, 56.475903, 58.648075>,  <71.709549, 56.791565, 58.604931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.080315, 56.475903, 58.648075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.051903, 56.077213, 58.632591>,  <71.034851, 55.838001, 58.623299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.051903, 56.077213, 58.632591>,  <71.080315, 56.475903, 58.648075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.051903, 56.077213, 58.632591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994024, 0.073960, -0.080296,
		0.082897, 0.032782, -0.996019,
		-0.071033, -0.996723, -0.038717,
		71.030594, 55.778198, 58.620979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.716843, 56.379883, 59.191269>,  <71.080315, 56.475903, 58.648075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.716843, 56.379883, 59.191269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.068321, 56.362717, 59.001091>,  <72.279205, 56.352417, 58.886982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.068321, 56.362717, 59.001091>,  <71.716843, 56.379883, 59.191269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.068321, 56.362717, 59.001091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464975, 0.302530, 0.832030,
		0.108130, -0.952173, 0.285787,
		0.878695, -0.042916, -0.475449,
		72.331932, 56.349842, 58.858456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.229675, 56.151455, 59.587742>,  <71.716843, 56.379883, 59.191269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.229675, 56.151455, 59.587742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.457520, 56.374733, 59.346428>,  <72.594231, 56.508701, 59.201641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.457520, 56.374733, 59.346428>,  <72.229675, 56.151455, 59.587742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.457520, 56.374733, 59.346428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484870, 0.364458, 0.795029,
		0.663655, -0.745376, -0.063052,
		0.569616, 0.558198, -0.603285,
		72.628403, 56.542191, 59.165443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.602715, 56.579868, 60.063126>,  <72.229675, 56.151455, 59.587742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.602715, 56.579868, 60.063126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.769455, 56.724525, 59.729553>,  <72.869499, 56.811321, 59.529411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.769455, 56.724525, 59.729553>,  <72.602715, 56.579868, 60.063126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.769455, 56.724525, 59.729553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568887, 0.611749, 0.549663,
		0.708939, -0.703545, 0.049279,
		0.416860, 0.361644, -0.833932,
		72.894516, 56.833019, 59.479374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.629974, 57.259155, 60.254429>,  <72.602715, 56.579868, 60.063126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.629974, 57.259155, 60.254429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.634697, 57.526562, 59.956985>,  <72.637527, 57.687004, 59.778519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.634697, 57.526562, 59.956985>,  <72.629974, 57.259155, 60.254429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.634697, 57.526562, 59.956985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327424, 0.700076, 0.634576,
		0.944804, -0.250963, -0.210626,
		0.011801, 0.668514, -0.743606,
		72.638237, 57.727116, 59.733902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.350670, 57.562653, 60.103695>,  <72.629974, 57.259155, 60.254429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.350670, 57.562653, 60.103695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.068794, 57.834381, 60.021767>,  <72.899673, 57.997417, 59.972610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.068794, 57.834381, 60.021767>,  <73.350670, 57.562653, 60.103695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.068794, 57.834381, 60.021767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316474, 0.559298, 0.766179,
		0.635034, 0.475093, -0.609113,
		-0.704682, 0.679318, -0.204819,
		72.857391, 58.038177, 59.960320>
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
