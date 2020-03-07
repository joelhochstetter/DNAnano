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
	<36.584610, 53.010181, 50.388287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562515, 53.407330, 50.430527>,  <36.549259, 53.645618, 50.455872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562515, 53.407330, 50.430527>,  <36.584610, 53.010181, 50.388287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562515, 53.407330, 50.430527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883876, 0.097819, -0.457378,
		-0.464448, 0.068074, -0.882980,
		-0.055236, 0.992873, 0.105601,
		36.545944, 53.705193, 50.462208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536892, 53.420246, 49.710224>,  <36.584610, 53.010181, 50.388287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536892, 53.420246, 49.710224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706413, 53.643330, 49.995697>,  <36.808128, 53.777180, 50.166981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706413, 53.643330, 49.995697>,  <36.536892, 53.420246, 49.710224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706413, 53.643330, 49.995697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830851, 0.074374, -0.551503,
		-0.360658, 0.826697, -0.431853,
		0.423807, 0.557710, 0.713686,
		36.833557, 53.810642, 50.209805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710442, 53.913330, 49.158947>,  <36.536892, 53.420246, 49.710224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710442, 53.913330, 49.158947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381859, 54.013508, 48.954014>,  <36.184708, 54.073612, 48.831055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381859, 54.013508, 48.954014>,  <36.710442, 53.913330, 49.158947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381859, 54.013508, 48.954014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556304, 0.154342, -0.816520,
		-0.125417, -0.955749, -0.266108,
		-0.821460, 0.250443, -0.512330,
		36.135422, 54.088642, 48.800316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696117, 53.543983, 48.509743>,  <36.710442, 53.913330, 49.158947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696117, 53.543983, 48.509743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495731, 53.888618, 48.477009>,  <36.375500, 54.095402, 48.457371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495731, 53.888618, 48.477009>,  <36.696117, 53.543983, 48.509743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495731, 53.888618, 48.477009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497925, 0.209592, -0.841511,
		-0.707887, -0.462314, -0.534006,
		-0.500966, 0.861590, -0.081830,
		36.345440, 54.147095, 48.452461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247993, 53.624878, 47.908985>,  <36.696117, 53.543983, 48.509743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247993, 53.624878, 47.908985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395267, 53.974453, 48.035900>,  <36.483631, 54.184196, 48.112049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395267, 53.974453, 48.035900>,  <36.247993, 53.624878, 47.908985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395267, 53.974453, 48.035900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451230, 0.130413, -0.882827,
		-0.812916, 0.468213, -0.346331,
		0.368185, 0.873939, 0.317286,
		36.505722, 54.236633, 48.131084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187263, 54.293381, 47.342514>,  <36.247993, 53.624878, 47.908985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187263, 54.293381, 47.342514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496880, 54.267437, 47.594437>,  <36.682648, 54.251869, 47.745590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496880, 54.267437, 47.594437>,  <36.187263, 54.293381, 47.342514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496880, 54.267437, 47.594437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632221, 0.132629, -0.763352,
		-0.034019, 0.989041, 0.143666,
		0.774041, -0.064860, 0.629805,
		36.729092, 54.247978, 47.783379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781090, 54.670448, 47.026436>,  <36.187263, 54.293381, 47.342514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781090, 54.670448, 47.026436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979694, 54.488319, 47.322044>,  <37.098858, 54.379044, 47.499409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979694, 54.488319, 47.322044>,  <36.781090, 54.670448, 47.026436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979694, 54.488319, 47.322044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867713, 0.237380, -0.436720,
		0.023419, 0.858098, 0.512951,
		0.496513, -0.455322, 0.739024,
		37.128647, 54.351723, 47.543751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171864, 55.148922, 47.374619>,  <36.781090, 54.670448, 47.026436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171864, 55.148922, 47.374619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.330818, 54.781933, 47.381943>,  <37.426189, 54.561741, 47.386337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.330818, 54.781933, 47.381943>,  <37.171864, 55.148922, 47.374619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330818, 54.781933, 47.381943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829734, 0.350715, -0.434211,
		0.391954, 0.187741, 0.900625,
		0.397382, -0.917470, 0.018311,
		37.450031, 54.506691, 47.387436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949566, 55.142357, 47.506378>,  <37.171864, 55.148922, 47.374619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949566, 55.142357, 47.506378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874481, 54.782894, 47.347797>,  <37.829430, 54.567215, 47.252647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874481, 54.782894, 47.347797>,  <37.949566, 55.142357, 47.506378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874481, 54.782894, 47.347797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882016, 0.023393, -0.470638,
		0.432217, -0.438025, 0.788240,
		-0.187712, -0.898658, -0.396456,
		37.818169, 54.513298, 47.228859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513317, 54.799381, 47.468147>,  <37.949566, 55.142357, 47.506378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513317, 54.799381, 47.468147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316086, 54.559677, 47.215874>,  <38.197746, 54.415855, 47.064510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316086, 54.559677, 47.215874>,  <38.513317, 54.799381, 47.468147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316086, 54.559677, 47.215874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824692, -0.091105, -0.558196,
		0.277044, -0.795357, 0.539124,
		-0.493082, -0.599256, -0.630684,
		38.168159, 54.379902, 47.026669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954773, 54.152752, 47.406780>,  <38.513317, 54.799381, 47.468147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954773, 54.152752, 47.406780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731934, 54.233494, 47.084564>,  <38.598228, 54.281940, 46.891235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731934, 54.233494, 47.084564>,  <38.954773, 54.152752, 47.406780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731934, 54.233494, 47.084564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760492, -0.265655, -0.592519,
		-0.333599, -0.942699, -0.005513,
		-0.557103, 0.201856, -0.805538,
		38.564804, 54.294048, 46.842903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625515, 53.899429, 47.471390>,  <38.954773, 54.152752, 47.406780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625515, 53.899429, 47.471390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924057, 53.683636, 47.315483>,  <40.103180, 53.554161, 47.221939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924057, 53.683636, 47.315483>,  <39.625515, 53.899429, 47.471390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924057, 53.683636, 47.315483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628065, 0.764673, 0.144260,
		0.220214, -0.352465, 0.909546,
		0.746352, -0.539486, -0.389762,
		40.147961, 53.521790, 47.198555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237881, 53.963936, 47.922237>,  <39.625515, 53.899429, 47.471390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237881, 53.963936, 47.922237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316986, 53.913383, 47.533409>,  <40.364449, 53.883053, 47.300114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316986, 53.913383, 47.533409>,  <40.237881, 53.963936, 47.922237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316986, 53.913383, 47.533409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577138, 0.816569, 0.011256,
		0.792339, -0.563243, 0.234428,
		0.197767, -0.126378, -0.972068,
		40.376316, 53.875469, 47.241787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802582, 53.849384, 48.399029>,  <40.237881, 53.963936, 47.922237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802582, 53.849384, 48.399029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844421, 53.647583, 48.741848>,  <40.869526, 53.526505, 48.947540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844421, 53.647583, 48.741848>,  <40.802582, 53.849384, 48.399029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844421, 53.647583, 48.741848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586565, -0.664635, -0.462819,
		0.803120, 0.551125, 0.226404,
		0.104595, -0.504500, 0.857053,
		40.875801, 53.496231, 48.998962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503910, 53.663200, 48.485760>,  <40.802582, 53.849384, 48.399029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.503910, 53.663200, 48.485760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277714, 53.391304, 48.672600>,  <41.141998, 53.228168, 48.784702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277714, 53.391304, 48.672600>,  <41.503910, 53.663200, 48.485760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277714, 53.391304, 48.672600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422632, -0.725160, -0.543622,
		0.708240, -0.110002, 0.697349,
		-0.565489, -0.679737, 0.467097,
		41.108067, 53.187382, 48.812729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852772, 53.777458, 49.155544>,  <41.503910, 53.663200, 48.485760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.852772, 53.777458, 49.155544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.765194, 54.160919, 49.228252>,  <41.712646, 54.390995, 49.271877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.765194, 54.160919, 49.228252>,  <41.852772, 53.777458, 49.155544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.765194, 54.160919, 49.228252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955227, 0.172601, 0.240313,
		0.199004, 0.226245, -0.953525,
		-0.218949, 0.958657, 0.181767,
		41.699509, 54.448517, 49.282784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.297920, 54.173409, 48.749344>,  <41.852772, 53.777458, 49.155544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.297920, 54.173409, 48.749344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.175606, 54.417828, 49.041405>,  <42.102219, 54.564480, 49.216640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.175606, 54.417828, 49.041405>,  <42.297920, 54.173409, 48.749344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.175606, 54.417828, 49.041405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951692, 0.218660, 0.215570,
		-0.027933, 0.760798, -0.648387,
		-0.305782, 0.611044, 0.730153,
		42.083870, 54.601139, 49.260452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.756950, 54.606697, 48.780788>,  <42.297920, 54.173409, 48.749344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.756950, 54.606697, 48.780788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577793, 54.640938, 49.136780>,  <42.470299, 54.661484, 49.350376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577793, 54.640938, 49.136780>,  <42.756950, 54.606697, 48.780788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.577793, 54.640938, 49.136780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832601, 0.402691, 0.380282,
		-0.325835, 0.911325, -0.251633,
		-0.447891, 0.085601, 0.889981,
		42.443424, 54.666618, 49.403774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.108692, 55.166916, 48.934723>,  <42.756950, 54.606697, 48.780788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.108692, 55.166916, 48.934723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.910530, 54.997536, 49.238106>,  <42.791634, 54.895908, 49.420135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.910530, 54.997536, 49.238106>,  <43.108692, 55.166916, 48.934723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.910530, 54.997536, 49.238106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668992, 0.370963, 0.644078,
		-0.554094, 0.826486, 0.099504,
		-0.495409, -0.423447, 0.758461,
		42.761906, 54.870502, 49.465645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.038532, 55.525078, 49.453114>,  <43.108692, 55.166916, 48.934723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.038532, 55.525078, 49.453114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.999893, 55.199520, 49.682285>,  <42.976707, 55.004185, 49.819790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.999893, 55.199520, 49.682285>,  <43.038532, 55.525078, 49.453114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.999893, 55.199520, 49.682285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537746, 0.441705, 0.718140,
		-0.837555, 0.377464, 0.394998,
		-0.096600, -0.813890, 0.572932,
		42.970913, 54.955353, 49.854164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.795723, 55.645405, 50.110504>,  <43.038532, 55.525078, 49.453114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.795723, 55.645405, 50.110504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.028107, 55.319847, 50.107338>,  <43.167538, 55.124512, 50.105438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.028107, 55.319847, 50.107338>,  <42.795723, 55.645405, 50.110504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.028107, 55.319847, 50.107338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594758, 0.417868, 0.686767,
		-0.555648, -0.403692, 0.726835,
		0.580963, -0.813892, -0.007911,
		43.202396, 55.075680, 50.104965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.296940, 55.825901, 50.681580>,  <42.795723, 55.645405, 50.110504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.296940, 55.825901, 50.681580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.465614, 55.506695, 50.509369>,  <43.566818, 55.315170, 50.406044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.465614, 55.506695, 50.509369>,  <43.296940, 55.825901, 50.681580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.465614, 55.506695, 50.509369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744269, 0.033420, 0.667044,
		-0.517922, -0.601711, 0.608030,
		0.421688, -0.798014, -0.430525,
		43.592121, 55.267292, 50.380211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.693226, 55.482502, 51.212997>,  <43.296940, 55.825901, 50.681580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.693226, 55.482502, 51.212997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.831982, 55.291985, 50.889809>,  <43.915234, 55.177673, 50.695896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.831982, 55.291985, 50.889809>,  <43.693226, 55.482502, 51.212997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.831982, 55.291985, 50.889809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893157, -0.095167, 0.439561,
		-0.286251, -0.874123, 0.392390,
		0.346887, -0.476291, -0.807970,
		43.936047, 55.149097, 50.647419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.900314, 54.710281, 51.368843>,  <43.693226, 55.482502, 51.212997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.900314, 54.710281, 51.368843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.104546, 54.896183, 51.079483>,  <44.227085, 55.007725, 50.905869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.104546, 54.896183, 51.079483>,  <43.900314, 54.710281, 51.368843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.104546, 54.896183, 51.079483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848964, -0.139167, 0.509797,
		0.136257, -0.874434, -0.465616,
		0.510583, 0.464754, -0.723401,
		44.257721, 55.035610, 50.862461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.548157, 54.380325, 51.203796>,  <43.900314, 54.710281, 51.368843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.548157, 54.380325, 51.203796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.641300, 54.753990, 51.095642>,  <44.697186, 54.978191, 51.030750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.641300, 54.753990, 51.095642>,  <44.548157, 54.380325, 51.203796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.641300, 54.753990, 51.095642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894900, -0.096986, 0.435600,
		0.380699, -0.343404, -0.858570,
		0.232856, 0.934167, -0.270390,
		44.711159, 55.034241, 51.014526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.042408, 54.007599, 51.654167>,  <44.548157, 54.380325, 51.203796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.042408, 54.007599, 51.654167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.299225, 53.754772, 51.827728>,  <44.453316, 53.603077, 51.931866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.299225, 53.754772, 51.827728>,  <44.042408, 54.007599, 51.654167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.299225, 53.754772, 51.827728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175249, 0.671970, 0.719544,
		-0.746368, -0.385939, 0.542205,
		0.642046, -0.632065, 0.433902,
		44.491840, 53.565151, 51.957897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.914379, 54.009411, 52.377697>,  <44.042408, 54.007599, 51.654167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.914379, 54.009411, 52.377697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.289349, 53.907154, 52.283134>,  <44.514328, 53.845798, 52.226395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.289349, 53.907154, 52.283134>,  <43.914379, 54.009411, 52.377697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.289349, 53.907154, 52.283134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347420, 0.732077, 0.585971,
		0.023273, -0.631435, 0.775079,
		0.937421, -0.255641, -0.236411,
		44.570576, 53.830463, 52.212212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.433403, 53.782158, 52.917358>,  <43.914379, 54.009411, 52.377697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.433403, 53.782158, 52.917358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.671524, 53.951946, 52.644466>,  <44.814396, 54.053818, 52.480732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.671524, 53.951946, 52.644466>,  <44.433403, 53.782158, 52.917358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.671524, 53.951946, 52.644466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403969, 0.575852, 0.710777,
		0.694567, -0.698728, 0.171335,
		0.595303, 0.424468, -0.682232,
		44.850117, 54.079288, 52.439796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.171638, 53.651985, 53.046070>,  <44.433403, 53.782158, 52.917358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.171638, 53.651985, 53.046070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.080391, 54.010948, 52.895004>,  <45.025642, 54.226326, 52.804363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.080391, 54.010948, 52.895004>,  <45.171638, 53.651985, 53.046070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.080391, 54.010948, 52.895004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518293, 0.440291, 0.733155,
		0.824218, -0.028498, -0.565555,
		-0.228115, 0.897403, -0.377666,
		45.011955, 54.280170, 52.781704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.841358, 54.069466, 52.846272>,  <45.171638, 53.651985, 53.046070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.841358, 54.069466, 52.846272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.529869, 54.259209, 53.010506>,  <45.342976, 54.373055, 53.109047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.529869, 54.259209, 53.010506>,  <45.841358, 54.069466, 52.846272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.529869, 54.259209, 53.010506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560355, 0.231593, 0.795215,
		0.282126, 0.849324, -0.446154,
		-0.778722, 0.474355, 0.410584,
		45.296253, 54.401516, 53.133682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.134068, 54.659565, 53.074226>,  <45.841358, 54.069466, 52.846272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.134068, 54.659565, 53.074226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.798985, 54.621338, 53.289307>,  <45.597935, 54.598400, 53.418354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.798985, 54.621338, 53.289307>,  <46.134068, 54.659565, 53.074226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.798985, 54.621338, 53.289307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507916, 0.225450, 0.831380,
		-0.200680, 0.969556, -0.140319,
		-0.837704, -0.095571, 0.537697,
		45.547672, 54.592667, 53.450615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.814568, 55.240894, 53.451366>,  <46.134068, 54.659565, 53.074226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.814568, 55.240894, 53.451366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.791428, 54.885361, 53.633194>,  <45.777546, 54.672043, 53.742290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.791428, 54.885361, 53.633194>,  <45.814568, 55.240894, 53.451366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.791428, 54.885361, 53.633194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522335, 0.361088, 0.772516,
		-0.850776, 0.282126, 0.443379,
		-0.057848, -0.888831, 0.454569,
		45.774075, 54.618710, 53.769566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.664810, 55.407249, 54.192036>,  <45.814568, 55.240894, 53.451366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.664810, 55.407249, 54.192036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.844307, 55.052559, 54.147575>,  <45.952003, 54.839745, 54.120899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.844307, 55.052559, 54.147575>,  <45.664810, 55.407249, 54.192036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.844307, 55.052559, 54.147575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647057, 0.236596, 0.724803,
		-0.616401, -0.397171, 0.679930,
		0.448740, -0.886723, -0.111154,
		45.978928, 54.786541, 54.114227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.767185, 55.127216, 54.822372>,  <45.664810, 55.407249, 54.192036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.767185, 55.127216, 54.822372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.044823, 54.993164, 54.567524>,  <46.211403, 54.912731, 54.414616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.044823, 54.993164, 54.567524>,  <45.767185, 55.127216, 54.822372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.044823, 54.993164, 54.567524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715173, 0.219896, 0.663456,
		-0.082246, -0.916150, 0.392306,
		0.694092, -0.335134, -0.637120,
		46.253052, 54.892624, 54.376389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.283588, 54.677132, 55.143845>,  <45.767185, 55.127216, 54.822372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.283588, 54.677132, 55.143845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.466476, 54.822739, 54.819267>,  <46.576210, 54.910103, 54.624519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.466476, 54.822739, 54.819267>,  <46.283588, 54.677132, 55.143845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.466476, 54.822739, 54.819267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839637, 0.124106, 0.528779,
		0.293192, -0.923085, -0.248902,
		0.457218, 0.364021, -0.811444,
		46.603642, 54.931946, 54.575832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.894863, 54.286194, 55.151398>,  <46.283588, 54.677132, 55.143845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.894863, 54.286194, 55.151398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.935558, 54.623062, 54.939587>,  <46.959976, 54.825184, 54.812500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.935558, 54.623062, 54.939587>,  <46.894863, 54.286194, 55.151398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.935558, 54.623062, 54.939587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875392, 0.177079, 0.449814,
		0.472588, -0.509305, -0.719214,
		0.101735, 0.842170, -0.529527,
		46.966080, 54.875713, 54.780727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.619934, 54.452930, 54.798965>,  <46.894863, 54.286194, 55.151398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.619934, 54.452930, 54.798965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.403366, 54.776257, 54.891472>,  <47.273426, 54.970253, 54.946976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.403366, 54.776257, 54.891472>,  <47.619934, 54.452930, 54.798965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.403366, 54.776257, 54.891472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781036, 0.381744, 0.494220,
		0.311203, 0.448209, -0.838010,
		-0.541419, 0.808320, 0.231268,
		47.240940, 55.018753, 54.960854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.035786, 54.883835, 54.995213>,  <47.619934, 54.452930, 54.798965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.035786, 54.883835, 54.995213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.722256, 55.084946, 55.140999>,  <47.534138, 55.205612, 55.228470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.722256, 55.084946, 55.140999>,  <48.035786, 54.883835, 54.995213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.722256, 55.084946, 55.140999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615592, 0.551976, 0.562467,
		0.081617, 0.665239, -0.742157,
		-0.783827, 0.502772, 0.364465,
		47.487106, 55.235779, 55.250340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.104141, 55.620308, 54.845207>,  <48.035786, 54.883835, 54.995213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.104141, 55.620308, 54.845207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.916969, 55.535324, 55.188347>,  <47.804668, 55.484333, 55.394230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.916969, 55.535324, 55.188347>,  <48.104141, 55.620308, 54.845207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.916969, 55.535324, 55.188347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834453, 0.213497, 0.508043,
		-0.291087, 0.953561, 0.077387,
		-0.467928, -0.212461, 0.857848,
		47.776592, 55.471584, 55.445702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.172482, 56.140648, 55.247818>,  <48.104141, 55.620308, 54.845207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.172482, 56.140648, 55.247818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.157635, 55.794365, 55.447487>,  <48.148727, 55.586594, 55.567287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.157635, 55.794365, 55.447487>,  <48.172482, 56.140648, 55.247818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.157635, 55.794365, 55.447487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672883, 0.347654, 0.652967,
		-0.738817, 0.360119, 0.569617,
		-0.037116, -0.865709, 0.499171,
		48.146500, 55.534653, 55.597237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.610615, 56.264008, 55.789799>,  <48.172482, 56.140648, 55.247818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.610615, 56.264008, 55.789799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.526897, 55.873230, 55.806633>,  <48.476665, 55.638763, 55.816734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.526897, 55.873230, 55.806633>,  <48.610615, 56.264008, 55.789799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.526897, 55.873230, 55.806633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725730, -0.126342, 0.676280,
		-0.655372, 0.172084, 0.735442,
		-0.209294, -0.976947, 0.042085,
		48.464108, 55.580147, 55.819260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.349407, 55.979202, 56.475853>,  <48.610615, 56.264008, 55.789799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.349407, 55.979202, 56.475853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.532394, 55.687881, 56.271774>,  <48.642185, 55.513088, 56.149326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.532394, 55.687881, 56.271774>,  <48.349407, 55.979202, 56.475853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.532394, 55.687881, 56.271774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670158, -0.094742, 0.736147,
		-0.584474, -0.678675, 0.444737,
		0.457469, -0.728303, -0.510193,
		48.669636, 55.469391, 56.118717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.420219, 55.353970, 56.779575>,  <48.349407, 55.979202, 56.475853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.420219, 55.353970, 56.779575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.735561, 55.419834, 56.542465>,  <48.924767, 55.459351, 56.400200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.735561, 55.419834, 56.542465>,  <48.420219, 55.353970, 56.779575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.735561, 55.419834, 56.542465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586020, 0.092314, 0.805021,
		0.187275, -0.982021, -0.023717,
		0.788358, 0.164659, -0.592772,
		48.972069, 55.469231, 56.364632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.062363, 54.850163, 56.854183>,  <48.420219, 55.353970, 56.779575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.062363, 54.850163, 56.854183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.174206, 55.219322, 56.748291>,  <49.241310, 55.440819, 56.684757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.174206, 55.219322, 56.748291>,  <49.062363, 54.850163, 56.854183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.174206, 55.219322, 56.748291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608687, 0.042842, 0.792253,
		0.742510, -0.382654, -0.549777,
		0.279605, 0.922898, -0.264727,
		49.258087, 55.496193, 56.668873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.659706, 54.898678, 57.005325>,  <49.062363, 54.850163, 56.854183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.659706, 54.898678, 57.005325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.580952, 55.290848, 57.006248>,  <49.533699, 55.526150, 57.006802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.580952, 55.290848, 57.006248>,  <49.659706, 54.898678, 57.005325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.580952, 55.290848, 57.006248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517676, 0.101959, 0.849480,
		0.832614, 0.168450, -0.527616,
		-0.196890, 0.980423, 0.002310,
		49.521885, 55.584976, 57.006943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.116283, 55.414165, 56.744579>,  <49.659706, 54.898678, 57.005325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.116283, 55.414165, 56.744579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.271564, 55.071850, 56.881355>,  <50.364731, 54.866459, 56.963421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.271564, 55.071850, 56.881355>,  <50.116283, 55.414165, 56.744579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.271564, 55.071850, 56.881355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762424, 0.089805, -0.640816,
		0.517698, 0.509466, 0.687338,
		0.388200, -0.855792, 0.341937,
		50.388023, 54.815113, 56.983936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.763008, 55.331848, 57.208057>,  <50.116283, 55.414165, 56.744579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.763008, 55.331848, 57.208057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.705166, 55.010788, 56.976593>,  <50.670460, 54.818153, 56.837715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.705166, 55.010788, 56.976593>,  <50.763008, 55.331848, 57.208057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.705166, 55.010788, 56.976593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905778, 0.128039, -0.403947,
		0.398318, -0.582547, 0.708506,
		-0.144601, -0.802649, -0.578659,
		50.661785, 54.769993, 56.802994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.304993, 54.889507, 57.285027>,  <50.763008, 55.331848, 57.208057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.304993, 54.889507, 57.285027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.144230, 54.901382, 56.918945>,  <51.047771, 54.908508, 56.699299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.144230, 54.901382, 56.918945>,  <51.304993, 54.889507, 57.285027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.144230, 54.901382, 56.918945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877780, 0.297073, -0.375833,
		0.260724, -0.954393, -0.145454,
		-0.401903, 0.029688, -0.915201,
		51.023659, 54.910290, 56.644386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.627037, 54.389858, 56.776836>,  <51.304993, 54.889507, 57.285027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.627037, 54.389858, 56.776836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.500340, 54.732094, 56.613060>,  <51.424320, 54.937435, 56.514793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.500340, 54.732094, 56.613060>,  <51.627037, 54.389858, 56.776836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.500340, 54.732094, 56.613060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937953, 0.218301, -0.269423,
		-0.141135, -0.469371, -0.871649,
		-0.316741, 0.855591, -0.409438,
		51.405315, 54.988770, 56.490227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.987133, 54.380882, 56.225727>,  <51.627037, 54.389858, 56.776836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.987133, 54.380882, 56.225727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.883068, 54.753918, 56.325798>,  <51.820629, 54.977741, 56.385841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.883068, 54.753918, 56.325798>,  <51.987133, 54.380882, 56.225727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.883068, 54.753918, 56.325798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938168, 0.305433, -0.162947,
		-0.228376, 0.192316, -0.954390,
		-0.260165, 0.932591, 0.250178,
		51.805019, 55.033695, 56.400852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.387615, 54.858868, 55.769768>,  <51.987133, 54.380882, 56.225727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.387615, 54.858868, 55.769768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.268566, 55.056694, 56.096405>,  <52.197136, 55.175392, 56.292385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.268566, 55.056694, 56.096405>,  <52.387615, 54.858868, 55.769768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.268566, 55.056694, 56.096405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913598, 0.395775, 0.093279,
		-0.277053, 0.773798, -0.569630,
		-0.297624, 0.494570, 0.816591,
		52.179279, 55.205067, 56.341381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.564964, 55.567585, 55.737404>,  <52.387615, 54.858868, 55.769768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.564964, 55.567585, 55.737404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.555943, 55.430077, 56.112915>,  <52.550529, 55.347572, 56.338223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.555943, 55.430077, 56.112915>,  <52.564964, 55.567585, 55.737404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.555943, 55.430077, 56.112915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939594, 0.313512, 0.137380,
		-0.341547, 0.885173, 0.315934,
		-0.022556, -0.343772, 0.938782,
		52.549175, 55.326946, 56.394550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.910297, 56.172867, 55.941582>,  <52.564964, 55.567585, 55.737404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.910297, 56.172867, 55.941582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.934799, 55.956482, 56.277107>,  <52.949501, 55.826653, 56.478424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.934799, 55.956482, 56.277107>,  <52.910297, 56.172867, 55.941582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.934799, 55.956482, 56.277107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852900, 0.464903, 0.237543,
		-0.518469, 0.700874, 0.489864,
		0.061252, -0.540963, 0.838813,
		52.953175, 55.794193, 56.528751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.554379, 56.691467, 56.085014>,  <52.910297, 56.172867, 55.941582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.554379, 56.691467, 56.085014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.699444, 56.937759, 56.364830>,  <53.786484, 57.085537, 56.532719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.699444, 56.937759, 56.364830>,  <53.554379, 56.691467, 56.085014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.699444, 56.937759, 56.364830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926764, -0.159431, -0.340132,
		-0.097903, 0.771657, -0.628458,
		0.362661, 0.615733, 0.699536,
		53.808243, 57.122478, 56.574692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.928139, 57.183102, 55.697601>,  <53.554379, 56.691467, 56.085014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.928139, 57.183102, 55.697601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.061485, 57.138641, 56.072090>,  <54.141495, 57.111965, 56.296783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.061485, 57.138641, 56.072090>,  <53.928139, 57.183102, 55.697601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.061485, 57.138641, 56.072090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937963, 0.139524, -0.317424,
		-0.095342, 0.983960, 0.150773,
		0.333369, -0.111155, 0.936221,
		54.161495, 57.105293, 56.352955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.349632, 57.701706, 55.654858>,  <53.928139, 57.183102, 55.697601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.349632, 57.701706, 55.654858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.486923, 57.469036, 55.949844>,  <54.569298, 57.329433, 56.126835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.486923, 57.469036, 55.949844>,  <54.349632, 57.701706, 55.654858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.486923, 57.469036, 55.949844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936081, 0.147366, -0.319431,
		0.077126, 0.799964, 0.595071,
		0.343226, -0.581671, 0.737465,
		54.589890, 57.294537, 56.171085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.781345, 58.143372, 56.148266>,  <54.349632, 57.701706, 55.654858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.781345, 58.143372, 56.148266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.907387, 57.766571, 56.102074>,  <54.983013, 57.540489, 56.074356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.907387, 57.766571, 56.102074>,  <54.781345, 58.143372, 56.148266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.907387, 57.766571, 56.102074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891474, 0.335524, -0.304463,
		0.325553, -0.007013, 0.945498,
		0.315102, -0.942006, -0.115483,
		55.001919, 57.483971, 56.067429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.293713, 57.832581, 56.651379>,  <54.781345, 58.143372, 56.148266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.293713, 57.832581, 56.651379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.346725, 57.702980, 56.276688>,  <55.378532, 57.625221, 56.051872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.346725, 57.702980, 56.276688>,  <55.293713, 57.832581, 56.651379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.346725, 57.702980, 56.276688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861820, 0.504483, -0.052559,
		0.489593, -0.800326, 0.346089,
		0.132532, -0.323999, -0.936728,
		55.386486, 57.605782, 55.995670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.034988, 57.530659, 56.503319>,  <55.293713, 57.832581, 56.651379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.034988, 57.530659, 56.503319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.829063, 57.715187, 56.214279>,  <55.705509, 57.825905, 56.040855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.829063, 57.715187, 56.214279>,  <56.034988, 57.530659, 56.503319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.829063, 57.715187, 56.214279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714989, 0.696108, -0.064986,
		0.473029, -0.550108, -0.688204,
		-0.514814, 0.461318, -0.722601,
		55.674618, 57.853584, 55.997498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.347397, 57.461777, 55.893578>,  <56.034988, 57.530659, 56.503319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.347397, 57.461777, 55.893578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.138069, 57.802475, 55.903885>,  <56.012474, 58.006893, 55.910069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.138069, 57.802475, 55.903885>,  <56.347397, 57.461777, 55.893578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.138069, 57.802475, 55.903885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742223, 0.470460, -0.477255,
		-0.418622, -0.230633, -0.878387,
		-0.523317, 0.851749, 0.025764,
		55.981075, 58.057999, 55.911613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.585617, 56.763401, 55.950298>,  <56.347397, 57.461777, 55.893578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.585617, 56.763401, 55.950298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.583099, 56.378445, 55.841667>,  <56.581589, 56.147469, 55.776489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.583099, 56.378445, 55.841667>,  <56.585617, 56.763401, 55.950298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.583099, 56.378445, 55.841667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718786, -0.184454, 0.670316,
		-0.695203, 0.199429, -0.690595,
		-0.006297, -0.962395, -0.271580,
		56.581211, 56.089725, 55.760193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.325298, 56.998890, 56.014240>,  <56.585617, 56.763401, 55.950298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.325298, 56.998890, 56.014240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.466576, 56.671368, 56.195267>,  <57.551342, 56.474854, 56.303883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.466576, 56.671368, 56.195267>,  <57.325298, 56.998890, 56.014240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.466576, 56.671368, 56.195267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020933, -0.476705, -0.878814,
		0.935317, 0.319862, -0.151227,
		0.353190, -0.818804, 0.452566,
		57.572533, 56.425728, 56.331036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.999683, 57.057983, 55.765347>,  <57.325298, 56.998890, 56.014240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.999683, 57.057983, 55.765347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.315475, 56.874603, 55.602104>,  <58.504951, 56.764576, 55.504158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.315475, 56.874603, 55.602104>,  <57.999683, 57.057983, 55.765347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.315475, 56.874603, 55.602104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425835, -0.069725, 0.902110,
		-0.442027, -0.885981, 0.140177,
		0.789479, -0.458449, -0.408102,
		58.552319, 56.737068, 55.479675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.696835, 57.280392, 56.026497>,  <57.999683, 57.057983, 55.765347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.696835, 57.280392, 56.026497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.993439, 57.128128, 56.247498>,  <59.171402, 57.036770, 56.380096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.993439, 57.128128, 56.247498>,  <58.696835, 57.280392, 56.026497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.993439, 57.128128, 56.247498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670129, 0.460703, -0.581963,
		-0.033007, 0.801778, 0.596709,
		0.741511, -0.380663, 0.552501,
		59.215893, 57.013927, 56.413246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.181683, 57.706276, 56.340981>,  <58.696835, 57.280392, 56.026497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.181683, 57.706276, 56.340981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.268539, 58.095749, 56.313286>,  <59.320656, 58.329433, 56.296669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.268539, 58.095749, 56.313286>,  <59.181683, 57.706276, 56.340981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.268539, 58.095749, 56.313286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026718, 0.064970, 0.997529,
		0.975774, -0.218457, -0.011907,
		0.217144, 0.973681, -0.069232,
		59.333683, 58.387852, 56.292515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.842922, 57.931034, 56.594162>,  <59.181683, 57.706276, 56.340981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.842922, 57.931034, 56.594162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.593102, 58.237129, 56.656563>,  <59.443207, 58.420788, 56.694004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.593102, 58.237129, 56.656563>,  <59.842922, 57.931034, 56.594162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.593102, 58.237129, 56.656563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432338, 0.172422, 0.885073,
		0.650396, 0.620223, -0.438530,
		-0.624556, 0.765241, 0.156003,
		59.405735, 58.466702, 56.703365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.350868, 57.468277, 56.622734>,  <59.842922, 57.931034, 56.594162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.350868, 57.468277, 56.622734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.314590, 57.538712, 57.014809>,  <60.292824, 57.580971, 57.250053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.314590, 57.538712, 57.014809>,  <60.350868, 57.468277, 56.622734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.314590, 57.538712, 57.014809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105621, -0.980394, 0.166348,
		0.990262, -0.088442, 0.107510,
		-0.090690, 0.176083, 0.980189,
		60.287384, 57.591537, 57.308865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.854958, 56.993633, 56.274921>,  <60.350868, 57.468277, 56.622734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.854958, 56.993633, 56.274921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.956627, 57.232174, 56.579491>,  <61.017628, 57.375298, 56.762230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.956627, 57.232174, 56.579491>,  <60.854958, 56.993633, 56.274921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.956627, 57.232174, 56.579491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862659, 0.216166, -0.457266,
		-0.437284, 0.773070, -0.459506,
		0.254169, 0.596352, 0.761422,
		61.032879, 57.411079, 56.807919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.962482, 57.809334, 56.058910>,  <60.854958, 56.993633, 56.274921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.962482, 57.809334, 56.058910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.178940, 57.668831, 56.364532>,  <61.308815, 57.584530, 56.547905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.178940, 57.668831, 56.364532>,  <60.962482, 57.809334, 56.058910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.178940, 57.668831, 56.364532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839990, 0.182860, -0.510862,
		0.039729, 0.918249, 0.394006,
		0.541146, -0.351256, 0.764055,
		61.341282, 57.563454, 56.593750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.502411, 58.039211, 56.472343>,  <60.962482, 57.809334, 56.058910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.502411, 58.039211, 56.472343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.702576, 57.755077, 56.670341>,  <61.822674, 57.584599, 56.789139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.702576, 57.755077, 56.670341>,  <61.502411, 58.039211, 56.472343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.702576, 57.755077, 56.670341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850606, 0.509961, -0.128097,
		-0.161435, 0.485143, 0.859404,
		0.500408, -0.710335, 0.494991,
		61.852699, 57.541977, 56.818840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.923508, 58.395023, 57.028576>,  <61.502411, 58.039211, 56.472343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.923508, 58.395023, 57.028576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.105736, 58.056042, 56.919563>,  <62.215073, 57.852654, 56.854156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.105736, 58.056042, 56.919563>,  <61.923508, 58.395023, 57.028576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.105736, 58.056042, 56.919563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824013, 0.517294, -0.231107,
		0.336831, -0.119282, 0.933979,
		0.455574, -0.847454, -0.272531,
		62.242409, 57.801804, 56.837803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.555168, 58.669617, 56.845890>,  <61.923508, 58.395023, 57.028576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.555168, 58.669617, 56.845890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.641846, 58.308296, 56.697784>,  <62.693851, 58.091503, 56.608921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.641846, 58.308296, 56.697784>,  <62.555168, 58.669617, 56.845890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.641846, 58.308296, 56.697784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899205, 0.332354, -0.284555,
		0.380098, -0.271285, 0.884268,
		0.216694, -0.903297, -0.370268,
		62.706856, 58.037308, 56.586704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.215088, 58.425240, 57.135456>,  <62.555168, 58.669617, 56.845890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.215088, 58.425240, 57.135456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.146614, 58.263405, 56.776123>,  <63.105530, 58.166306, 56.560524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.146614, 58.263405, 56.776123>,  <63.215088, 58.425240, 57.135456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.146614, 58.263405, 56.776123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848871, 0.402266, -0.342928,
		0.500113, -0.821276, 0.274577,
		-0.171186, -0.404583, -0.898336,
		63.095257, 58.142029, 56.506622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.807449, 57.901146, 56.880928>,  <63.215088, 58.425240, 57.135456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.807449, 57.901146, 56.880928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.578362, 58.115700, 56.632965>,  <63.440910, 58.244431, 56.484188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.578362, 58.115700, 56.632965>,  <63.807449, 57.901146, 56.880928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.578362, 58.115700, 56.632965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813100, 0.467846, -0.346393,
		0.104223, -0.702433, -0.704077,
		-0.572718, 0.536383, -0.619909,
		63.406548, 58.276615, 56.446991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.942780, 57.705837, 56.129631>,  <63.807449, 57.901146, 56.880928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.942780, 57.705837, 56.129631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.819237, 58.076366, 56.215919>,  <63.745113, 58.298683, 56.267693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.819237, 58.076366, 56.215919>,  <63.942780, 57.705837, 56.129631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.819237, 58.076366, 56.215919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915677, 0.350929, -0.195918,
		-0.257185, 0.137017, -0.956599,
		-0.308854, 0.926323, 0.215717,
		63.726582, 58.354263, 56.280636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.200394, 58.132080, 55.586533>,  <63.942780, 57.705837, 56.129631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.200394, 58.132080, 55.586533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.164024, 58.328239, 55.933228>,  <64.142204, 58.445934, 56.141247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.164024, 58.328239, 55.933228>,  <64.200394, 58.132080, 55.586533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.164024, 58.328239, 55.933228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896570, 0.419150, -0.143094,
		-0.433468, 0.764083, -0.477789,
		-0.090930, 0.490398, 0.866742,
		64.136742, 58.475361, 56.193249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.421768, 58.833805, 55.545788>,  <64.200394, 58.132080, 55.586533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.421768, 58.833805, 55.545788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.462799, 58.734848, 55.931175>,  <64.487419, 58.675472, 56.162407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.462799, 58.734848, 55.931175>,  <64.421768, 58.833805, 55.545788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.462799, 58.734848, 55.931175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870126, 0.491681, 0.033616,
		-0.482037, 0.834893, 0.265695,
		0.102571, -0.247392, 0.963471,
		64.493568, 58.660629, 56.220215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.581047, 59.380257, 55.828175>,  <64.421768, 58.833805, 55.545788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.581047, 59.380257, 55.828175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.759605, 59.080681, 56.024063>,  <64.866737, 58.900936, 56.141598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.759605, 59.080681, 56.024063>,  <64.581047, 59.380257, 55.828175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.759605, 59.080681, 56.024063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832708, 0.548034, 0.079093,
		-0.327622, 0.372490, 0.868283,
		0.446387, -0.748939, 0.489724,
		64.893524, 58.855999, 56.170979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.944008, 59.832230, 56.331528>,  <64.581047, 59.380257, 55.828175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.944008, 59.832230, 56.331528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.147514, 59.489693, 56.296104>,  <65.269615, 59.284172, 56.274849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.147514, 59.489693, 56.296104>,  <64.944008, 59.832230, 56.331528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.147514, 59.489693, 56.296104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860903, 0.506427, 0.048765,
		0.003088, -0.101049, 0.994877,
		0.508760, -0.856341, -0.088557,
		65.300140, 59.232792, 56.269539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.497627, 60.019230, 56.671989>,  <64.944008, 59.832230, 56.331528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.497627, 60.019230, 56.671989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.598709, 59.701897, 56.450447>,  <65.659355, 59.511497, 56.317520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.598709, 59.701897, 56.450447>,  <65.497627, 60.019230, 56.671989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.598709, 59.701897, 56.450447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953800, 0.300402, 0.004889,
		0.162502, -0.529507, 0.832595,
		0.252703, -0.793335, -0.553860,
		65.674522, 59.463898, 56.284290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.066154, 59.643600, 57.014290>,  <65.497627, 60.019230, 56.671989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.066154, 59.643600, 57.014290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.081184, 59.530685, 56.630852>,  <66.090202, 59.462936, 56.400787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.081184, 59.530685, 56.630852>,  <66.066154, 59.643600, 57.014290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.081184, 59.530685, 56.630852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894081, 0.437947, -0.093922,
		0.446326, -0.853532, 0.268842,
		0.037573, -0.282286, -0.958594,
		66.092453, 59.445999, 56.343273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.769257, 59.354015, 56.787056>,  <66.066154, 59.643600, 57.014290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.769257, 59.354015, 56.787056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.580093, 59.528957, 56.481094>,  <66.466599, 59.633923, 56.297516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.580093, 59.528957, 56.481094>,  <66.769257, 59.354015, 56.787056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.580093, 59.528957, 56.481094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802906, 0.571454, -0.169654,
		0.362908, -0.694376, -0.621401,
		-0.472906, 0.437358, -0.764904,
		66.438225, 59.660164, 56.251625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.113045, 59.141262, 56.093987>,  <66.769257, 59.354015, 56.787056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.113045, 59.141262, 56.093987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.946907, 59.502937, 56.133850>,  <66.847221, 59.719944, 56.157768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.946907, 59.502937, 56.133850>,  <67.113045, 59.141262, 56.093987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.946907, 59.502937, 56.133850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894900, 0.386488, 0.223119,
		0.163225, 0.181856, -0.969683,
		-0.415346, 0.904188, 0.099659,
		66.822304, 59.774193, 56.163746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.995972, 58.322308, 56.409401>,  <67.113045, 59.141262, 56.093987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.995972, 58.322308, 56.409401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.840149, 58.370323, 56.774658>,  <66.746651, 58.399132, 56.993813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.840149, 58.370323, 56.774658>,  <66.995972, 58.322308, 56.409401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.840149, 58.370323, 56.774658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416258, -0.907376, -0.058303,
		0.821566, -0.402816, 0.403445,
		-0.389562, 0.120037, 0.913144,
		66.723282, 58.406334, 57.048603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.030319, 57.743126, 56.792606>,  <66.995972, 58.322308, 56.409401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.030319, 57.743126, 56.792606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.717941, 57.953850, 56.926834>,  <66.530518, 58.080284, 57.007370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.717941, 57.953850, 56.926834>,  <67.030319, 57.743126, 56.792606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.717941, 57.953850, 56.926834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572156, -0.818853, -0.046023,
		0.250537, -0.227940, 0.940890,
		-0.780941, 0.526805, 0.335570,
		66.483658, 58.111893, 57.027504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.490112, 57.781010, 56.277500>,  <67.030319, 57.743126, 56.792606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.490112, 57.781010, 56.277500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.823166, 57.569157, 56.212730>,  <68.022995, 57.442043, 56.173870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.823166, 57.569157, 56.212730>,  <67.490112, 57.781010, 56.277500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.823166, 57.569157, 56.212730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077957, -0.177378, 0.981050,
		-0.548320, -0.829472, -0.106401,
		0.832627, -0.529635, -0.161924,
		68.072952, 57.410267, 56.164154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.513969, 57.020859, 56.646378>,  <67.490112, 57.781010, 56.277500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.513969, 57.020859, 56.646378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.854462, 57.225029, 56.597588>,  <68.058754, 57.347530, 56.568314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.854462, 57.225029, 56.597588>,  <67.513969, 57.020859, 56.646378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.854462, 57.225029, 56.597588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165941, -0.041296, 0.985271,
		0.497868, -0.858932, -0.119852,
		0.851229, 0.510423, -0.121972,
		68.109833, 57.378155, 56.560997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.066956, 56.691341, 56.957520>,  <67.513969, 57.020859, 56.646378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.066956, 56.691341, 56.957520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.137009, 57.085148, 56.960609>,  <68.179039, 57.321430, 56.962463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.137009, 57.085148, 56.960609>,  <68.066956, 56.691341, 56.957520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.137009, 57.085148, 56.960609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347345, -0.069122, 0.935186,
		0.921239, -0.161099, -0.354072,
		0.175131, 0.984515, 0.007721,
		68.189545, 57.380501, 56.962925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.751373, 56.881512, 57.077900>,  <68.066956, 56.691341, 56.957520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.751373, 56.881512, 57.077900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.510345, 57.158905, 57.235886>,  <68.365730, 57.325340, 57.330677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.510345, 57.158905, 57.235886>,  <68.751373, 56.881512, 57.077900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.510345, 57.158905, 57.235886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117167, -0.412660, 0.903318,
		0.789424, 0.590582, 0.167399,
		-0.602562, 0.693487, 0.394961,
		68.329575, 57.366951, 57.354374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.763702, 57.630730, 56.959919>,  <68.751373, 56.881512, 57.077900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.763702, 57.630730, 56.959919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.801643, 57.999565, 57.109985>,  <68.824409, 58.220867, 57.200024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.801643, 57.999565, 57.109985>,  <68.763702, 57.630730, 56.959919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.801643, 57.999565, 57.109985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821501, -0.285358, 0.493668,
		0.562264, 0.261375, -0.784565,
		0.094849, 0.922092, 0.375166,
		68.830101, 58.276192, 57.222534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.452232, 57.942394, 56.764477>,  <68.763702, 57.630730, 56.959919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.452232, 57.942394, 56.764477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.326813, 58.108643, 57.105988>,  <69.251564, 58.208393, 57.310894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.326813, 58.108643, 57.105988>,  <69.452232, 57.942394, 56.764477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.326813, 58.108643, 57.105988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906457, -0.136843, 0.399511,
		0.282881, 0.899183, -0.333839,
		-0.313550, 0.415625, 0.853781,
		69.232750, 58.233330, 57.362122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.938042, 58.473507, 56.842342>,  <69.452232, 57.942394, 56.764477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.938042, 58.473507, 56.842342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.774467, 58.285507, 57.155228>,  <69.676323, 58.172707, 57.342960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.774467, 58.285507, 57.155228>,  <69.938042, 58.473507, 56.842342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.774467, 58.285507, 57.155228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912388, -0.227183, 0.340494,
		0.017673, 0.852927, 0.521731,
		-0.408945, -0.470003, 0.782215,
		69.651787, 58.144505, 57.389893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.211838, 58.532391, 57.576881>,  <69.938042, 58.473507, 56.842342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.211838, 58.532391, 57.576881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.086060, 58.153442, 57.552856>,  <70.010597, 57.926071, 57.538441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.086060, 58.153442, 57.552856>,  <70.211838, 58.532391, 57.576881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.086060, 58.153442, 57.552856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931664, -0.320120, 0.171829,
		-0.182014, -0.001928, 0.983294,
		-0.314441, -0.947375, -0.060063,
		69.991730, 57.869228, 57.534836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.517227, 58.168552, 58.172306>,  <70.211838, 58.532391, 57.576881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.517227, 58.168552, 58.172306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.459244, 57.912704, 57.870346>,  <70.424454, 57.759197, 57.689171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.459244, 57.912704, 57.870346>,  <70.517227, 58.168552, 58.172306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.459244, 57.912704, 57.870346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958022, -0.281463, 0.054516,
		-0.247346, -0.715307, 0.653572,
		-0.144960, -0.639621, -0.754898,
		70.415756, 57.720818, 57.643875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.746986, 57.521900, 58.309856>,  <70.517227, 58.168552, 58.172306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.746986, 57.521900, 58.309856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.751389, 57.517365, 57.909904>,  <70.754028, 57.514645, 57.669933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.751389, 57.517365, 57.909904>,  <70.746986, 57.521900, 58.309856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.751389, 57.517365, 57.909904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912868, -0.407991, 0.014667,
		-0.408106, -0.912916, 0.005849,
		0.011003, -0.011325, -0.999875,
		70.754684, 57.513966, 57.609943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.817657, 57.771526, 59.068336>,  <70.746986, 57.521900, 58.309856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.817657, 57.771526, 59.068336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.640137, 57.903175, 59.401733>,  <70.533623, 57.982162, 59.601772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.640137, 57.903175, 59.401733>,  <70.817657, 57.771526, 59.068336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.640137, 57.903175, 59.401733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098516, 0.942395, -0.319666,
		-0.890690, -0.059758, -0.450666,
		-0.443808, 0.329121, 0.833495,
		70.506996, 58.001911, 59.651783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.493919, 57.898071, 59.170353>,  <70.817657, 57.771526, 59.068336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.493919, 57.898071, 59.170353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.456062, 57.660278, 59.489761>,  <71.433350, 57.517605, 59.681408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.456062, 57.660278, 59.489761>,  <71.493919, 57.898071, 59.170353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.456062, 57.660278, 59.489761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906144, 0.280725, 0.316382,
		-0.412248, 0.753516, 0.512118,
		-0.094634, -0.594480, 0.798522,
		71.427673, 57.481934, 59.729317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.720444, 58.196472, 59.843105>,  <71.493919, 57.898071, 59.170353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.720444, 58.196472, 59.843105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.777443, 57.803299, 59.796555>,  <71.811638, 57.567394, 59.768623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.777443, 57.803299, 59.796555>,  <71.720444, 58.196472, 59.843105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.777443, 57.803299, 59.796555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984264, 0.128297, 0.121510,
		-0.104505, -0.131862, 0.985744,
		0.142490, -0.982930, -0.116380,
		71.820190, 57.508419, 59.761642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.970665, 57.853195, 60.585300>,  <71.720444, 58.196472, 59.843105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.970665, 57.853195, 60.585300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.222252, 57.670605, 60.333580>,  <72.373207, 57.561050, 60.182549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.222252, 57.670605, 60.333580>,  <71.970665, 57.853195, 60.585300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.222252, 57.670605, 60.333580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776428, 0.409847, 0.478732,
		0.039386, -0.789716, 0.612206,
		0.628973, -0.456479, -0.629301,
		72.410942, 57.533661, 60.144791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.554657, 57.531464, 60.960499>,  <71.970665, 57.853195, 60.585300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.554657, 57.531464, 60.960499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.693893, 57.537071, 60.585556>,  <72.777435, 57.540436, 60.360592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.693893, 57.537071, 60.585556>,  <72.554657, 57.531464, 60.960499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.693893, 57.537071, 60.585556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866677, 0.376346, 0.327467,
		0.357362, -0.926373, 0.118851,
		0.348086, 0.014018, -0.937358,
		72.798317, 57.541279, 60.304348>
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
