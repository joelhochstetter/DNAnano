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
	<36.385788, 52.912865, 49.942059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496979, 52.855537, 49.562126>,  <36.563694, 52.821140, 49.334167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496979, 52.855537, 49.562126>,  <36.385788, 52.912865, 49.942059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496979, 52.855537, 49.562126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820992, 0.548796, 0.157465,
		0.498697, -0.823579, 0.270222,
		0.277982, -0.143323, -0.949834,
		36.580372, 52.812542, 49.277176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112869, 52.716728, 49.765411>,  <36.385788, 52.912865, 49.942059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112869, 52.716728, 49.765411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943771, 52.972221, 49.508255>,  <36.842312, 53.125515, 49.353962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943771, 52.972221, 49.508255>,  <37.112869, 52.716728, 49.765411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943771, 52.972221, 49.508255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733328, 0.657907, 0.171432,
		0.532461, -0.398978, -0.746527,
		-0.422748, 0.638730, -0.642891,
		36.816948, 53.163841, 49.315388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695591, 53.117973, 49.388153>,  <37.112869, 52.716728, 49.765411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695591, 53.117973, 49.388153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345341, 53.309639, 49.363876>,  <37.135193, 53.424641, 49.349308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345341, 53.309639, 49.363876>,  <37.695591, 53.117973, 49.388153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345341, 53.309639, 49.363876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450173, 0.855182, 0.256923,
		0.175015, 0.197644, -0.964524,
		-0.875622, 0.479168, -0.060695,
		37.082653, 53.453388, 49.345669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172184, 53.640713, 49.638874>,  <37.695591, 53.117973, 49.388153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172184, 53.640713, 49.638874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114090, 53.595200, 49.245743>,  <38.079231, 53.567894, 49.009865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114090, 53.595200, 49.245743>,  <38.172184, 53.640713, 49.638874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114090, 53.595200, 49.245743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764431, 0.617749, -0.184478,
		0.628134, -0.778101, -0.002744,
		-0.145238, -0.113780, -0.982832,
		38.070518, 53.561066, 48.950893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840916, 53.442711, 49.365147>,  <38.172184, 53.640713, 49.638874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840916, 53.442711, 49.365147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577137, 53.656887, 49.154079>,  <38.418869, 53.785393, 49.027439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577137, 53.656887, 49.154079>,  <38.840916, 53.442711, 49.365147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577137, 53.656887, 49.154079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649764, 0.758982, -0.041871,
		0.378074, -0.370474, -0.848416,
		-0.659444, 0.535440, -0.527672,
		38.379303, 53.817520, 48.995777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106758, 53.647072, 48.601929>,  <38.840916, 53.442711, 49.365147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106758, 53.647072, 48.601929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868683, 53.892052, 48.810028>,  <38.725838, 54.039040, 48.934887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868683, 53.892052, 48.810028>,  <39.106758, 53.647072, 48.601929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868683, 53.892052, 48.810028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751979, 0.652757, 0.091849,
		-0.283343, 0.445883, -0.849061,
		-0.595184, 0.612451, 0.520249,
		38.690128, 54.075787, 48.966103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224991, 54.328308, 48.449295>,  <39.106758, 53.647072, 48.601929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224991, 54.328308, 48.449295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129276, 54.336166, 48.837593>,  <39.071846, 54.340881, 49.070572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129276, 54.336166, 48.837593>,  <39.224991, 54.328308, 48.449295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129276, 54.336166, 48.837593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582822, 0.802546, 0.127427,
		-0.776568, 0.596266, -0.203491,
		-0.239291, 0.019643, 0.970749,
		39.057487, 54.342060, 49.128819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947960, 54.221046, 48.822845>,  <39.224991, 54.328308, 48.449295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947960, 54.221046, 48.822845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256039, 53.981575, 48.734871>,  <40.440887, 53.837891, 48.682083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256039, 53.981575, 48.734871>,  <39.947960, 54.221046, 48.822845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256039, 53.981575, 48.734871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499109, 0.351047, 0.792247,
		-0.397095, -0.719962, 0.569184,
		0.770198, -0.598682, -0.219941,
		40.487099, 53.801971, 48.668888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130653, 53.995476, 49.404842>,  <39.947960, 54.221046, 48.822845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130653, 53.995476, 49.404842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445648, 53.887718, 49.183105>,  <40.634644, 53.823063, 49.050064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445648, 53.887718, 49.183105>,  <40.130653, 53.995476, 49.404842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445648, 53.887718, 49.183105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592227, 0.081631, 0.801626,
		-0.170701, -0.959564, 0.223826,
		0.787483, -0.269394, -0.554345,
		40.681892, 53.806900, 49.016804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462360, 53.484268, 49.709866>,  <40.130653, 53.995476, 49.404842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462360, 53.484268, 49.709866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743954, 53.705868, 49.532108>,  <40.912910, 53.838829, 49.425453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743954, 53.705868, 49.532108>,  <40.462360, 53.484268, 49.709866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743954, 53.705868, 49.532108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587255, -0.102165, 0.802928,
		0.399421, -0.826224, -0.397262,
		0.703984, 0.554001, -0.444398,
		40.955151, 53.872066, 49.398788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056248, 53.171280, 49.843136>,  <40.462360, 53.484268, 49.709866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056248, 53.171280, 49.843136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204891, 53.524136, 49.727386>,  <41.294079, 53.735851, 49.657936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204891, 53.524136, 49.727386>,  <41.056248, 53.171280, 49.843136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204891, 53.524136, 49.727386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781239, -0.128738, 0.610813,
		0.501570, -0.453050, -0.737003,
		0.371609, 0.882141, -0.289369,
		41.316376, 53.788776, 49.640575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540756, 52.945000, 50.328213>,  <41.056248, 53.171280, 49.843136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540756, 52.945000, 50.328213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.852123, 52.707699, 50.410297>,  <42.038944, 52.565319, 50.459549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.852123, 52.707699, 50.410297>,  <41.540756, 52.945000, 50.328213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.852123, 52.707699, 50.410297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137636, 0.480241, 0.866271,
		-0.612468, -0.646079, 0.455483,
		0.778421, -0.593254, 0.205208,
		42.085651, 52.529724, 50.471859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520618, 52.596584, 50.972706>,  <41.540756, 52.945000, 50.328213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520618, 52.596584, 50.972706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.880711, 52.737026, 50.869701>,  <42.096764, 52.821293, 50.807899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.880711, 52.737026, 50.869701>,  <41.520618, 52.596584, 50.972706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.880711, 52.737026, 50.869701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025572, 0.633026, 0.773708,
		0.434666, -0.689929, 0.578847,
		0.900229, 0.351107, -0.257513,
		42.150780, 52.842358, 50.792446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.121979, 52.515972, 51.439281>,  <41.520618, 52.596584, 50.972706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.121979, 52.515972, 51.439281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101501, 52.857746, 51.232468>,  <42.089214, 53.062809, 51.108379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101501, 52.857746, 51.232468>,  <42.121979, 52.515972, 51.439281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101501, 52.857746, 51.232468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146170, 0.518550, 0.842461,
		0.987934, -0.032446, -0.151439,
		-0.051194, 0.854431, -0.517036,
		42.086143, 53.114075, 51.077358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573082, 52.986465, 51.710030>,  <42.121979, 52.515972, 51.439281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573082, 52.986465, 51.710030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.326344, 53.234043, 51.515541>,  <42.178303, 53.382591, 51.398849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.326344, 53.234043, 51.515541>,  <42.573082, 52.986465, 51.710030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326344, 53.234043, 51.515541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012389, 0.610033, 0.792279,
		0.786988, 0.494737, -0.368627,
		-0.616845, 0.618947, -0.486217,
		42.141289, 53.419727, 51.369675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.783226, 53.647503, 51.635326>,  <42.573082, 52.986465, 51.710030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.783226, 53.647503, 51.635326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.385822, 53.626602, 51.675735>,  <42.147381, 53.614063, 51.699982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.385822, 53.626602, 51.675735>,  <42.783226, 53.647503, 51.635326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.385822, 53.626602, 51.675735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081444, 0.293147, 0.952592,
		-0.079389, 0.954639, -0.286989,
		-0.993511, -0.052252, 0.101022,
		42.087769, 53.610928, 51.706043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.565788, 54.381660, 51.990185>,  <42.783226, 53.647503, 51.635326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.565788, 54.381660, 51.990185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.327339, 54.067635, 52.057487>,  <42.184269, 53.879219, 52.097870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.327339, 54.067635, 52.057487>,  <42.565788, 54.381660, 51.990185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.327339, 54.067635, 52.057487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101512, 0.134184, 0.985743,
		-0.796449, 0.604705, -0.000297,
		-0.596124, -0.785064, 0.168256,
		42.148502, 53.832115, 52.107964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396095, 54.026497, 52.670536>,  <42.565788, 54.381660, 51.990185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396095, 54.026497, 52.670536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.790211, 53.958149, 52.669502>,  <43.026680, 53.917141, 52.668880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.790211, 53.958149, 52.669502>,  <42.396095, 54.026497, 52.670536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.790211, 53.958149, 52.669502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096968, 0.546555, 0.831790,
		-0.140711, -0.819806, 0.555084,
		0.985291, -0.170868, -0.002589,
		43.085796, 53.906887, 52.668724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.681084, 53.710415, 53.247181>,  <42.396095, 54.026497, 52.670536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.681084, 53.710415, 53.247181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.002586, 53.899094, 53.102142>,  <43.195488, 54.012302, 53.015118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.002586, 53.899094, 53.102142>,  <42.681084, 53.710415, 53.247181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.002586, 53.899094, 53.102142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158813, 0.417241, 0.894812,
		0.573374, -0.776794, 0.260447,
		0.803754, 0.471700, -0.362601,
		43.243713, 54.040604, 52.993362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.309612, 53.643341, 53.604450>,  <42.681084, 53.710415, 53.247181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.309612, 53.643341, 53.604450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290577, 53.993507, 53.412041>,  <43.279156, 54.203606, 53.296597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290577, 53.993507, 53.412041>,  <43.309612, 53.643341, 53.604450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.290577, 53.993507, 53.412041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127534, 0.482953, 0.866309,
		0.990692, -0.020123, -0.134627,
		-0.047586, 0.875415, -0.481024,
		43.276302, 54.256130, 53.267735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.951107, 54.112072, 53.610313>,  <43.309612, 53.643341, 53.604450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.951107, 54.112072, 53.610313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.591591, 54.286194, 53.589573>,  <43.375881, 54.390667, 53.577129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.591591, 54.286194, 53.589573>,  <43.951107, 54.112072, 53.610313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.591591, 54.286194, 53.589573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030527, 0.180138, 0.983168,
		0.437315, 0.882078, -0.175195,
		-0.898790, 0.435303, -0.051850,
		43.321953, 54.416786, 53.574017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.012524, 54.827892, 53.750961>,  <43.951107, 54.112072, 53.610313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.012524, 54.827892, 53.750961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.680370, 54.641106, 53.872559>,  <43.481079, 54.529034, 53.945515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.680370, 54.641106, 53.872559>,  <44.012524, 54.827892, 53.750961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.680370, 54.641106, 53.872559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277116, 0.127206, 0.952379,
		-0.483398, 0.875078, 0.023774,
		-0.830382, -0.466966, 0.303989,
		43.431255, 54.501015, 53.963757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613602, 55.315300, 54.095325>,  <44.012524, 54.827892, 53.750961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613602, 55.315300, 54.095325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.571629, 54.942654, 54.234512>,  <43.546444, 54.719067, 54.318024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.571629, 54.942654, 54.234512>,  <43.613602, 55.315300, 54.095325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.571629, 54.942654, 54.234512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290491, 0.305921, 0.906657,
		-0.951106, 0.196222, 0.238525,
		-0.104936, -0.931617, 0.347964,
		43.540146, 54.663170, 54.338902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.249859, 55.519417, 54.747997>,  <43.613602, 55.315300, 54.095325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.249859, 55.519417, 54.747997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.450138, 55.173813, 54.769115>,  <43.570305, 54.966450, 54.781788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.450138, 55.173813, 54.769115>,  <43.249859, 55.519417, 54.747997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.450138, 55.173813, 54.769115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326055, 0.244749, 0.913119,
		-0.801864, -0.439985, 0.404261,
		0.500701, -0.864009, 0.052796,
		43.600349, 54.914612, 54.784954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.107533, 55.260002, 55.390907>,  <43.249859, 55.519417, 54.747997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.107533, 55.260002, 55.390907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.455181, 55.118877, 55.252251>,  <43.663769, 55.034203, 55.169056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.455181, 55.118877, 55.252251>,  <43.107533, 55.260002, 55.390907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.455181, 55.118877, 55.252251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399638, 0.087987, 0.912441,
		-0.291416, -0.931550, 0.217467,
		0.869118, -0.352808, -0.346641,
		43.715916, 55.013035, 55.148258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.391724, 54.708530, 55.748772>,  <43.107533, 55.260002, 55.390907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.391724, 54.708530, 55.748772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.717632, 54.882278, 55.595161>,  <43.913177, 54.986526, 55.502995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.717632, 54.882278, 55.595161>,  <43.391724, 54.708530, 55.748772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.717632, 54.882278, 55.595161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335732, 0.186536, 0.923303,
		0.472691, -0.881207, 0.006151,
		0.814769, 0.434372, -0.384023,
		43.962063, 55.012589, 55.479954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.087788, 54.794136, 56.125046>,  <43.391724, 54.708530, 55.748772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.087788, 54.794136, 56.125046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.162163, 55.079468, 55.854759>,  <44.206787, 55.250668, 55.692589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.162163, 55.079468, 55.854759>,  <44.087788, 54.794136, 56.125046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.162163, 55.079468, 55.854759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764133, 0.327341, 0.555831,
		0.617679, -0.619685, -0.484213,
		0.185937, 0.713328, -0.675714,
		44.217945, 55.293465, 55.652046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.631554, 54.679073, 55.640209>,  <44.087788, 54.794136, 56.125046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.631554, 54.679073, 55.640209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.562901, 55.033524, 55.812408>,  <44.521709, 55.246193, 55.915730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.562901, 55.033524, 55.812408>,  <44.631554, 54.679073, 55.640209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.562901, 55.033524, 55.812408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865592, -0.073022, 0.495397,
		0.470418, 0.457663, -0.754488,
		-0.171631, 0.886122, 0.430500,
		44.511410, 55.299358, 55.941559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.254570, 55.050995, 55.851456>,  <44.631554, 54.679073, 55.640209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.254570, 55.050995, 55.851456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.029247, 55.333771, 56.022530>,  <44.894054, 55.503437, 56.125175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.029247, 55.333771, 56.022530>,  <45.254570, 55.050995, 55.851456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.029247, 55.333771, 56.022530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786403, 0.299927, 0.540013,
		0.253482, 0.640530, -0.724892,
		-0.563309, 0.706941, 0.427689,
		44.860256, 55.545853, 56.150837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.731049, 55.578129, 55.942562>,  <45.254570, 55.050995, 55.851456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.731049, 55.578129, 55.942562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.436516, 55.662109, 56.199852>,  <45.259796, 55.712498, 56.354225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.436516, 55.662109, 56.199852>,  <45.731049, 55.578129, 55.942562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.436516, 55.662109, 56.199852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676606, 0.222882, 0.701803,
		0.003979, 0.951969, -0.306167,
		-0.736335, 0.209947, 0.643221,
		45.215614, 55.725094, 56.392818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.569683, 55.349274, 55.244034>,  <45.731049, 55.578129, 55.942562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.569683, 55.349274, 55.244034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.611629, 55.502438, 54.876907>,  <45.636795, 55.594334, 54.656631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.611629, 55.502438, 54.876907>,  <45.569683, 55.349274, 55.244034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.611629, 55.502438, 54.876907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936488, 0.272546, 0.220700,
		0.334655, -0.882667, -0.330009,
		0.104862, 0.382907, -0.917816,
		45.643089, 55.617310, 54.601562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.291306, 55.105820, 54.980843>,  <45.569683, 55.349274, 55.244034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.291306, 55.105820, 54.980843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.170013, 55.464840, 54.852806>,  <46.097237, 55.680252, 54.775986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.170013, 55.464840, 54.852806>,  <46.291306, 55.105820, 54.980843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.170013, 55.464840, 54.852806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871243, 0.397197, 0.288393,
		0.385985, -0.191427, -0.902425,
		-0.303234, 0.897547, -0.320091,
		46.079044, 55.734104, 54.756779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.646580, 55.251759, 54.342972>,  <46.291306, 55.105820, 54.980843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.646580, 55.251759, 54.342972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.571007, 55.571667, 54.570892>,  <46.525661, 55.763611, 54.707645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.571007, 55.571667, 54.570892>,  <46.646580, 55.251759, 54.342972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.571007, 55.571667, 54.570892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973441, 0.076142, 0.215906,
		0.129289, 0.595456, -0.792916,
		-0.188937, 0.799771, 0.569797,
		46.514324, 55.811600, 54.741833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.152332, 55.880062, 54.189121>,  <46.646580, 55.251759, 54.342972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.152332, 55.880062, 54.189121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.997276, 55.833153, 54.554848>,  <46.904243, 55.805008, 54.774284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.997276, 55.833153, 54.554848>,  <47.152332, 55.880062, 54.189121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.997276, 55.833153, 54.554848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920577, -0.100525, 0.377403,
		0.047652, 0.987999, 0.146928,
		-0.387643, -0.117274, 0.914319,
		46.880985, 55.797970, 54.829144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.280617, 56.425320, 54.542828>,  <47.152332, 55.880062, 54.189121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.280617, 56.425320, 54.542828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.261398, 56.071758, 54.728905>,  <47.249866, 55.859619, 54.840549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.261398, 56.071758, 54.728905>,  <47.280617, 56.425320, 54.542828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.261398, 56.071758, 54.728905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979935, 0.048483, 0.193329,
		-0.193439, 0.465143, 0.863842,
		-0.048044, -0.883907, 0.465188,
		47.246986, 55.806587, 54.868462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.594250, 56.616386, 55.132698>,  <47.280617, 56.425320, 54.542828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.594250, 56.616386, 55.132698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.624393, 56.221642, 55.075539>,  <47.642479, 55.984795, 55.041245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.624393, 56.221642, 55.075539>,  <47.594250, 56.616386, 55.132698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.624393, 56.221642, 55.075539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975453, 0.043219, 0.215926,
		-0.206914, -0.155658, 0.965897,
		0.075356, -0.986865, -0.142895,
		47.646999, 55.925583, 55.032669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.820621, 56.307461, 55.757641>,  <47.594250, 56.616386, 55.132698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.820621, 56.307461, 55.757641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.941631, 56.096474, 55.440086>,  <48.014236, 55.969883, 55.249554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.941631, 56.096474, 55.440086>,  <47.820621, 56.307461, 55.757641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.941631, 56.096474, 55.440086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949161, 0.242773, 0.200388,
		0.087037, -0.814151, 0.574093,
		0.302520, -0.527465, -0.793890,
		48.032387, 55.938232, 55.201920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.294647, 55.816002, 56.092667>,  <47.820621, 56.307461, 55.757641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.294647, 55.816002, 56.092667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.360886, 55.890724, 55.705330>,  <48.400631, 55.935558, 55.472927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.360886, 55.890724, 55.705330>,  <48.294647, 55.816002, 56.092667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.360886, 55.890724, 55.705330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939132, 0.269830, 0.212657,
		0.301013, -0.944614, -0.130753,
		0.165598, 0.186806, -0.968339,
		48.410564, 55.946766, 55.414829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.019020, 55.680882, 56.275471>,  <48.294647, 55.816002, 56.092667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.019020, 55.680882, 56.275471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.296543, 55.414803, 56.385841>,  <49.463058, 55.255154, 56.452065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.296543, 55.414803, 56.385841>,  <49.019020, 55.680882, 56.275471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.296543, 55.414803, 56.385841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555439, 0.738155, 0.382903,
		-0.458388, -0.112398, 0.881616,
		0.693808, -0.665202, 0.275931,
		49.504684, 55.215240, 56.468620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.145672, 55.566246, 57.028061>,  <49.019020, 55.680882, 56.275471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.145672, 55.566246, 57.028061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.462528, 55.547836, 56.784622>,  <49.652641, 55.536789, 56.638557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.462528, 55.547836, 56.784622>,  <49.145672, 55.566246, 57.028061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.462528, 55.547836, 56.784622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348612, 0.852609, 0.389264,
		0.500980, -0.520518, 0.691434,
		0.792142, -0.046029, -0.608599,
		49.700172, 55.534027, 56.602043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.845715, 55.435970, 57.228764>,  <49.145672, 55.566246, 57.028061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.845715, 55.435970, 57.228764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.769352, 55.698177, 56.936501>,  <49.723534, 55.855499, 56.761143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.769352, 55.698177, 56.936501>,  <49.845715, 55.435970, 57.228764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.769352, 55.698177, 56.936501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182068, 0.755076, 0.629851,
		0.964576, -0.012789, -0.263494,
		-0.190903, 0.655513, -0.730657,
		49.712082, 55.894833, 56.717304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.327805, 56.027271, 57.206562>,  <49.845715, 55.435970, 57.228764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.327805, 56.027271, 57.206562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.996410, 56.170521, 57.034348>,  <49.797573, 56.256470, 56.931019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.996410, 56.170521, 57.034348>,  <50.327805, 56.027271, 57.206562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.996410, 56.170521, 57.034348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219074, 0.914787, 0.339370,
		0.515383, 0.186844, -0.836343,
		-0.828485, 0.358126, -0.430533,
		49.747864, 56.277958, 56.905190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.872246, 55.510002, 57.388969>,  <50.327805, 56.027271, 57.206562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.872246, 55.510002, 57.388969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.894978, 55.460667, 56.992676>,  <50.908619, 55.431065, 56.754898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.894978, 55.460667, 56.992676>,  <50.872246, 55.510002, 57.388969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.894978, 55.460667, 56.992676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840143, 0.542021, -0.019283,
		0.539379, -0.831265, 0.134424,
		0.056831, -0.123336, -0.990736,
		50.912025, 55.423664, 56.695454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.532928, 55.200291, 57.240540>,  <50.872246, 55.510002, 57.388969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.532928, 55.200291, 57.240540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.412498, 55.409386, 56.921516>,  <51.340240, 55.534843, 56.730103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.412498, 55.409386, 56.921516>,  <51.532928, 55.200291, 57.240540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.412498, 55.409386, 56.921516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821289, 0.567167, 0.061694,
		0.484599, -0.636453, -0.600077,
		-0.301078, 0.522733, -0.797560,
		51.322174, 55.566204, 56.682247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.065453, 55.282566, 56.666313>,  <51.532928, 55.200291, 57.240540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.065453, 55.282566, 56.666313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.884834, 55.632011, 56.738876>,  <51.776463, 55.841679, 56.782413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.884834, 55.632011, 56.738876>,  <52.065453, 55.282566, 56.666313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.884834, 55.632011, 56.738876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891750, 0.448651, 0.059107,
		-0.029753, 0.188462, -0.981630,
		-0.451549, 0.873610, 0.181409,
		51.749371, 55.894093, 56.793301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.335400, 55.960300, 56.384808>,  <52.065453, 55.282566, 56.666313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.335400, 55.960300, 56.384808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.129570, 56.090302, 56.702194>,  <52.006073, 56.168301, 56.892624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.129570, 56.090302, 56.702194>,  <52.335400, 55.960300, 56.384808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.129570, 56.090302, 56.702194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746623, 0.624862, 0.228258,
		-0.421620, 0.709874, -0.564194,
		-0.514578, 0.325001, 0.793463,
		51.975197, 56.187801, 56.940231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.141125, 56.704971, 56.328640>,  <52.335400, 55.960300, 56.384808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.141125, 56.704971, 56.328640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.224651, 56.547405, 56.686684>,  <52.274769, 56.452866, 56.901508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.224651, 56.547405, 56.686684>,  <52.141125, 56.704971, 56.328640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.224651, 56.547405, 56.686684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821696, 0.566984, 0.057827,
		-0.530293, 0.723433, 0.442079,
		0.208818, -0.393920, 0.895110,
		52.287296, 56.429230, 56.955215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.322292, 57.279842, 56.609234>,  <52.141125, 56.704971, 56.328640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.322292, 57.279842, 56.609234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.483326, 56.974319, 56.811035>,  <52.579945, 56.791004, 56.932117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.483326, 56.974319, 56.811035>,  <52.322292, 57.279842, 56.609234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.483326, 56.974319, 56.811035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797757, 0.563030, 0.215825,
		-0.448900, 0.315584, 0.836000,
		0.402582, -0.763809, 0.504503,
		52.604099, 56.745178, 56.962387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.019840, 57.548660, 56.921703>,  <52.322292, 57.279842, 56.609234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.019840, 57.548660, 56.921703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.012287, 57.162991, 57.027534>,  <53.007755, 56.931587, 57.091034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.012287, 57.162991, 57.027534>,  <53.019840, 57.548660, 56.921703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.012287, 57.162991, 57.027534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896271, 0.100959, 0.431863,
		-0.443105, 0.245290, 0.862260,
		-0.018879, -0.964179, 0.264581,
		53.006622, 56.873737, 57.106911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.062607, 57.684155, 57.619011>,  <53.019840, 57.548660, 56.921703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.062607, 57.684155, 57.619011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.224144, 57.351845, 57.465797>,  <53.321068, 57.152458, 57.373867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.224144, 57.351845, 57.465797>,  <53.062607, 57.684155, 57.619011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.224144, 57.351845, 57.465797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891914, 0.264430, 0.366833,
		-0.203471, -0.489779, 0.847771,
		0.403843, -0.830779, -0.383037,
		53.345299, 57.102612, 57.350887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.511364, 57.399818, 58.051922>,  <53.062607, 57.684155, 57.619011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.511364, 57.399818, 58.051922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.624012, 57.298950, 57.681602>,  <53.691601, 57.238430, 57.459412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.624012, 57.298950, 57.681602>,  <53.511364, 57.399818, 58.051922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.624012, 57.298950, 57.681602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944531, 0.242765, 0.221195,
		0.168973, -0.936737, 0.306547,
		0.281620, -0.252168, -0.925798,
		53.708500, 57.223301, 57.403862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.097942, 57.007706, 58.147949>,  <53.511364, 57.399818, 58.051922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.097942, 57.007706, 58.147949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.129539, 57.177040, 57.786942>,  <54.148499, 57.278641, 57.570335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.129539, 57.177040, 57.786942>,  <54.097942, 57.007706, 58.147949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.129539, 57.177040, 57.786942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868864, 0.414600, 0.270520,
		0.488707, -0.805538, -0.335073,
		0.078993, 0.423338, -0.902521,
		54.153236, 57.304043, 57.516186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.704353, 56.814068, 57.964291>,  <54.097942, 57.007706, 58.147949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.704353, 56.814068, 57.964291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.622795, 57.122414, 57.722893>,  <54.573860, 57.307419, 57.578056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.622795, 57.122414, 57.722893>,  <54.704353, 56.814068, 57.964291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.622795, 57.122414, 57.722893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877345, 0.417397, 0.236739,
		0.434389, -0.481201, -0.761415,
		-0.203894, 0.770860, -0.603491,
		54.561626, 57.353672, 57.541843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.196201, 56.887787, 57.391842>,  <54.704353, 56.814068, 57.964291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.196201, 56.887787, 57.391842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.064781, 57.259541, 57.459129>,  <54.985928, 57.482594, 57.499500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.064781, 57.259541, 57.459129>,  <55.196201, 56.887787, 57.391842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.064781, 57.259541, 57.459129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937646, 0.299558, 0.176308,
		0.113468, 0.215655, -0.969855,
		-0.328550, 0.929386, 0.168218,
		54.966217, 57.538357, 57.509594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.490772, 57.397594, 56.786304>,  <55.196201, 56.887787, 57.391842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.490772, 57.397594, 56.786304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.427155, 57.514790, 57.163422>,  <55.388985, 57.585106, 57.389694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.427155, 57.514790, 57.163422>,  <55.490772, 57.397594, 56.786304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.427155, 57.514790, 57.163422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966256, 0.242180, 0.087744,
		-0.202618, 0.924938, -0.321615,
		-0.159046, 0.292984, 0.942796,
		55.379440, 57.602684, 57.446262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.707645, 58.167435, 56.844368>,  <55.490772, 57.397594, 56.786304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.707645, 58.167435, 56.844368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.743813, 57.904209, 57.143372>,  <55.765511, 57.746273, 57.322773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.743813, 57.904209, 57.143372>,  <55.707645, 58.167435, 56.844368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.743813, 57.904209, 57.143372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994306, 0.102147, -0.030343,
		-0.056388, 0.745999, 0.663556,
		0.090416, -0.658067, 0.747511,
		55.770939, 57.706791, 57.367626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.041954, 58.500729, 57.332188>,  <55.707645, 58.167435, 56.844368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.041954, 58.500729, 57.332188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.100960, 58.105309, 57.319466>,  <56.136364, 57.868057, 57.311832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.100960, 58.105309, 57.319466>,  <56.041954, 58.500729, 57.332188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.100960, 58.105309, 57.319466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988619, 0.146407, 0.034610,
		-0.029558, -0.036544, 0.998895,
		0.147510, -0.988549, -0.031801,
		56.145214, 57.808743, 57.309925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.711288, 58.402641, 57.695862>,  <56.041954, 58.500729, 57.332188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.711288, 58.402641, 57.695862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.663223, 58.046146, 57.520927>,  <56.634384, 57.832249, 57.415966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.663223, 58.046146, 57.520927>,  <56.711288, 58.402641, 57.695862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.663223, 58.046146, 57.520927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967658, -0.203572, 0.148983,
		-0.221809, -0.405291, 0.886871,
		-0.120161, -0.891234, -0.437337,
		56.627174, 57.778778, 57.389725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.883400, 57.885231, 58.184963>,  <56.711288, 58.402641, 57.695862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.883400, 57.885231, 58.184963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.941719, 57.771790, 57.805847>,  <56.976711, 57.703724, 57.578377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.941719, 57.771790, 57.805847>,  <56.883400, 57.885231, 58.184963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.941719, 57.771790, 57.805847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975319, -0.119374, 0.185750,
		-0.165821, -0.951482, 0.259201,
		0.145796, -0.283605, -0.947793,
		56.985458, 57.686707, 57.521507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.273205, 57.329060, 58.236244>,  <56.883400, 57.885231, 58.184963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.273205, 57.329060, 58.236244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.313866, 57.508957, 57.881302>,  <57.338261, 57.616894, 57.668335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.313866, 57.508957, 57.881302>,  <57.273205, 57.329060, 58.236244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.313866, 57.508957, 57.881302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994814, -0.049108, 0.089073,
		-0.003517, -0.891807, -0.452403,
		0.101652, 0.449743, -0.887354,
		57.344360, 57.643879, 57.615097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.861286, 56.963097, 57.976799>,  <57.273205, 57.329060, 58.236244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.861286, 56.963097, 57.976799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.844048, 57.296104, 57.755875>,  <57.833702, 57.495911, 57.623318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.844048, 57.296104, 57.755875>,  <57.861286, 56.963097, 57.976799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.844048, 57.296104, 57.755875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998495, 0.017127, -0.052099,
		-0.033915, -0.553729, -0.832006,
		-0.043099, 0.832521, -0.552315,
		57.831120, 57.545860, 57.590179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.436993, 56.771679, 57.574631>,  <57.861286, 56.963097, 57.976799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.436993, 56.771679, 57.574631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.420898, 57.163296, 57.494781>,  <58.411243, 57.398266, 57.446873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.420898, 57.163296, 57.494781>,  <58.436993, 56.771679, 57.574631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.420898, 57.163296, 57.494781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917229, -0.043055, -0.396027,
		-0.396323, -0.199032, -0.896278,
		-0.040232, 0.979047, -0.199621,
		58.408829, 57.457008, 57.434895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.416164, 57.028290, 56.796673>,  <58.436993, 56.771679, 57.574631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.416164, 57.028290, 56.796673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.578430, 57.303177, 57.037727>,  <58.675789, 57.468109, 57.182362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.578430, 57.303177, 57.037727>,  <58.416164, 57.028290, 56.796673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.578430, 57.303177, 57.037727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835204, -0.010859, -0.549832,
		-0.371310, 0.726371, -0.578372,
		0.405663, 0.687218, 0.602636,
		58.700130, 57.509342, 57.218517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.619549, 57.698822, 56.448738>,  <58.416164, 57.028290, 56.796673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.619549, 57.698822, 56.448738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.849030, 57.626793, 56.768349>,  <58.986717, 57.583576, 56.960114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.849030, 57.626793, 56.768349>,  <58.619549, 57.698822, 56.448738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.849030, 57.626793, 56.768349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813091, 0.242822, -0.529076,
		-0.098748, 0.953211, 0.285724,
		0.573701, -0.180074, 0.799025,
		59.021141, 57.572769, 57.008057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.924564, 58.304794, 56.786503>,  <58.619549, 57.698822, 56.448738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.924564, 58.304794, 56.786503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.153526, 57.976891, 56.778938>,  <59.290901, 57.780148, 56.774399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.153526, 57.976891, 56.778938>,  <58.924564, 58.304794, 56.786503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.153526, 57.976891, 56.778938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749896, 0.532676, -0.392316,
		0.331679, 0.210379, 0.919636,
		0.572403, -0.819755, -0.018915,
		59.325249, 57.730965, 56.773262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.626507, 58.421871, 57.083687>,  <58.924564, 58.304794, 56.786503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.626507, 58.421871, 57.083687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.660439, 58.125896, 56.816765>,  <59.680798, 57.948311, 56.656612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.660439, 58.125896, 56.816765>,  <59.626507, 58.421871, 57.083687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.660439, 58.125896, 56.816765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660734, 0.543070, -0.518175,
		0.745811, -0.396955, 0.534970,
		0.084834, -0.739934, -0.667309,
		59.685890, 57.903915, 56.616573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.382034, 58.214252, 56.966682>,  <59.626507, 58.421871, 57.083687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.382034, 58.214252, 56.966682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.156792, 58.177742, 56.638153>,  <60.021645, 58.155838, 56.441036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.156792, 58.177742, 56.638153>,  <60.382034, 58.214252, 56.966682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.156792, 58.177742, 56.638153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524645, 0.728406, -0.440650,
		0.638479, -0.679039, -0.362286,
		-0.563110, -0.091275, -0.821326,
		59.987858, 58.150360, 56.391754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.857674, 58.316662, 56.527088>,  <60.382034, 58.214252, 56.966682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.857674, 58.316662, 56.527088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.520271, 58.348042, 56.314545>,  <60.317829, 58.366871, 56.187019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.520271, 58.348042, 56.314545>,  <60.857674, 58.316662, 56.527088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.520271, 58.348042, 56.314545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386844, 0.775038, -0.499667,
		0.372626, -0.627026, -0.684097,
		-0.843506, 0.078450, -0.531360,
		60.267220, 58.371578, 56.155136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.287579, 58.389328, 57.184475>,  <60.857674, 58.316662, 56.527088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.287579, 58.389328, 57.184475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.463539, 58.059822, 57.327530>,  <61.569115, 57.862118, 57.413361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.463539, 58.059822, 57.327530>,  <61.287579, 58.389328, 57.184475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.463539, 58.059822, 57.327530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888030, 0.458324, -0.036630,
		-0.133738, 0.333704, 0.933143,
		0.439905, -0.823760, 0.357635,
		61.595512, 57.812695, 57.434822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.645428, 58.568161, 57.765236>,  <61.287579, 58.389328, 57.184475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.645428, 58.568161, 57.765236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.808128, 58.260117, 57.568672>,  <61.905750, 58.075291, 57.450733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.808128, 58.260117, 57.568672>,  <61.645428, 58.568161, 57.765236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.808128, 58.260117, 57.568672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789310, 0.567088, -0.235376,
		0.459940, -0.292138, 0.838517,
		0.406751, -0.770108, -0.491413,
		61.930153, 58.029083, 57.421249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.316460, 58.466095, 57.978554>,  <61.645428, 58.568161, 57.765236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.316460, 58.466095, 57.978554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.303719, 58.405502, 57.583374>,  <62.296074, 58.369144, 57.346268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.303719, 58.405502, 57.583374>,  <62.316460, 58.466095, 57.978554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.303719, 58.405502, 57.583374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812123, 0.572256, -0.113932,
		0.582617, -0.805962, 0.104796,
		-0.031854, -0.151486, -0.987946,
		62.294163, 58.360058, 57.286991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.629967, 58.155945, 58.534508>,  <62.316460, 58.466095, 57.978554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.629967, 58.155945, 58.534508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.609833, 58.149723, 58.933952>,  <62.597752, 58.145992, 59.173618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.609833, 58.149723, 58.933952>,  <62.629967, 58.155945, 58.534508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.609833, 58.149723, 58.933952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800689, -0.598276, 0.031040,
		0.596963, 0.801139, 0.042564,
		-0.050332, -0.015550, 0.998611,
		62.594734, 58.145058, 59.233536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.266346, 58.548985, 58.893929>,  <62.629967, 58.155945, 58.534508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.266346, 58.548985, 58.893929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.111946, 58.236061, 59.089478>,  <63.019306, 58.048306, 59.206806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.111946, 58.236061, 59.089478>,  <63.266346, 58.548985, 58.893929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.111946, 58.236061, 59.089478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921683, -0.349342, 0.168702,
		0.038807, 0.515705, 0.855887,
		-0.385998, -0.782310, 0.488873,
		62.996147, 58.001369, 59.236141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.677948, 58.382874, 59.440041>,  <63.266346, 58.548985, 58.893929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.677948, 58.382874, 59.440041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.523605, 58.021088, 59.367310>,  <63.431000, 57.804016, 59.323669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.523605, 58.021088, 59.367310>,  <63.677948, 58.382874, 59.440041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.523605, 58.021088, 59.367310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921849, -0.385730, -0.037507,
		-0.036213, -0.182091, 0.982615,
		-0.385854, -0.904464, -0.181829,
		63.407848, 57.749748, 59.312759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.924427, 57.888615, 59.857189>,  <63.677948, 58.382874, 59.440041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.924427, 57.888615, 59.857189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.823929, 57.714600, 59.511330>,  <63.763630, 57.610191, 59.303814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.823929, 57.714600, 59.511330>,  <63.924427, 57.888615, 59.857189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.823929, 57.714600, 59.511330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831885, -0.553721, 0.036874,
		-0.494817, -0.710025, 0.501020,
		-0.251244, -0.435037, -0.864650,
		63.748554, 57.584087, 59.251934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.338387, 58.488346, 59.864330>,  <63.924427, 57.888615, 59.857189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.338387, 58.488346, 59.864330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.476807, 58.710327, 59.561737>,  <64.559860, 58.843517, 59.380180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.476807, 58.710327, 59.561737>,  <64.338387, 58.488346, 59.864330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.476807, 58.710327, 59.561737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935240, -0.268183, 0.231094,
		-0.074631, -0.787469, -0.611820,
		0.346059, 0.554952, -0.756486,
		64.580627, 58.876812, 59.334789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.648460, 57.798656, 59.902153>,  <64.338387, 58.488346, 59.864330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.648460, 57.798656, 59.902153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.418091, 57.715771, 60.218475>,  <64.279869, 57.666039, 60.408268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.418091, 57.715771, 60.218475>,  <64.648460, 57.798656, 59.902153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.418091, 57.715771, 60.218475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264007, -0.962654, -0.059973,
		0.773703, 0.174240, 0.609118,
		-0.575920, -0.207212, 0.790809,
		64.245316, 57.653606, 60.455719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.076645, 57.377739, 60.279324>,  <64.648460, 57.798656, 59.902153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.076645, 57.377739, 60.279324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.680016, 57.327408, 60.291603>,  <64.442039, 57.297211, 60.298973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.680016, 57.327408, 60.291603>,  <65.076645, 57.377739, 60.279324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.680016, 57.327408, 60.291603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117079, -0.972162, -0.202962,
		0.055386, -0.197658, 0.978705,
		-0.991577, -0.125827, 0.030702,
		64.382545, 57.289661, 60.300816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.953873, 56.818295, 60.850449>,  <65.076645, 57.377739, 60.279324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.953873, 56.818295, 60.850449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.696281, 56.844536, 60.545555>,  <64.541725, 56.860279, 60.362621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.696281, 56.844536, 60.545555>,  <64.953873, 56.818295, 60.850449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.696281, 56.844536, 60.545555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193162, -0.950095, -0.244965,
		-0.740260, -0.304985, 0.599165,
		-0.643974, 0.065602, -0.762229,
		64.503090, 56.864216, 60.316887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.295601, 56.524437, 60.832386>,  <64.953873, 56.818295, 60.850449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.295601, 56.524437, 60.832386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.504501, 56.547085, 60.492020>,  <64.629837, 56.560673, 60.287800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.504501, 56.547085, 60.492020>,  <64.295601, 56.524437, 60.832386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.504501, 56.547085, 60.492020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401613, -0.896548, 0.186837,
		-0.752307, -0.439313, -0.490958,
		0.522247, 0.056616, -0.850913,
		64.661179, 56.564068, 60.236744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.267090, 55.896427, 60.527248>,  <64.295601, 56.524437, 60.832386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.267090, 55.896427, 60.527248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.616585, 56.073822, 60.447350>,  <64.826286, 56.180260, 60.399410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.616585, 56.073822, 60.447350>,  <64.267090, 55.896427, 60.527248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.616585, 56.073822, 60.447350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480331, -0.722107, 0.497839,
		0.076547, -0.530926, -0.843954,
		0.873741, 0.443485, -0.199745,
		64.878708, 56.206867, 60.387424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.765640, 55.342079, 60.656727>,  <64.267090, 55.896427, 60.527248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.765640, 55.342079, 60.656727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.966278, 55.688107, 60.653854>,  <65.086662, 55.895725, 60.652130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.966278, 55.688107, 60.653854>,  <64.765640, 55.342079, 60.656727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.966278, 55.688107, 60.653854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706089, -0.404591, 0.581158,
		0.499838, -0.296577, -0.813759,
		0.501597, 0.865071, -0.007180,
		65.116760, 55.947628, 60.651699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.340561, 55.178772, 60.355053>,  <64.765640, 55.342079, 60.656727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.340561, 55.178772, 60.355053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.401764, 55.495651, 60.591362>,  <65.438484, 55.685780, 60.733147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.401764, 55.495651, 60.591362>,  <65.340561, 55.178772, 60.355053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.401764, 55.495651, 60.591362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744835, -0.485328, 0.457906,
		0.649471, 0.369969, -0.664312,
		0.152999, 0.792199, 0.590772,
		65.447662, 55.733311, 60.768593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.109398, 55.372852, 60.398533>,  <65.340561, 55.178772, 60.355053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.109398, 55.372852, 60.398533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.903084, 55.474075, 60.725929>,  <65.779297, 55.534809, 60.922367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.903084, 55.474075, 60.725929>,  <66.109398, 55.372852, 60.398533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.903084, 55.474075, 60.725929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776504, -0.265534, 0.571431,
		0.361940, 0.930298, -0.059538,
		-0.515792, 0.253055, 0.818488,
		65.748344, 55.549992, 60.971474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.499146, 55.774445, 60.765972>,  <66.109398, 55.372852, 60.398533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.499146, 55.774445, 60.765972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.259583, 55.574219, 61.016014>,  <66.115845, 55.454082, 61.166039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.259583, 55.574219, 61.016014>,  <66.499146, 55.774445, 60.765972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.259583, 55.574219, 61.016014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800642, -0.357580, 0.480738,
		-0.017113, 0.788401, 0.614924,
		-0.598898, -0.500561, 0.625108,
		66.079910, 55.424049, 61.203545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.891464, 55.874889, 61.405075>,  <66.499146, 55.774445, 60.765972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.891464, 55.874889, 61.405075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.636711, 55.566635, 61.414017>,  <66.483856, 55.381683, 61.419380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.636711, 55.566635, 61.414017>,  <66.891464, 55.874889, 61.405075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.636711, 55.566635, 61.414017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686721, -0.553886, 0.470770,
		-0.350410, 0.315177, 0.881973,
		-0.636888, -0.770632, 0.022352,
		66.445648, 55.335445, 61.420723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.060059, 56.641731, 61.538158>,  <66.891464, 55.874889, 61.405075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.060059, 56.641731, 61.538158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.147408, 57.031292, 61.513420>,  <67.199814, 57.265030, 61.498577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.147408, 57.031292, 61.513420>,  <67.060059, 56.641731, 61.538158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.147408, 57.031292, 61.513420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452871, -0.157266, -0.877596,
		-0.864422, 0.163629, -0.475395,
		0.218364, 0.973906, -0.061841,
		67.212914, 57.323463, 61.494869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.131943, 56.586983, 62.300770>,  <67.060059, 56.641731, 61.538158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.131943, 56.586983, 62.300770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.396790, 56.809860, 62.100319>,  <67.555702, 56.943584, 61.980049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.396790, 56.809860, 62.100319>,  <67.131943, 56.586983, 62.300770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.396790, 56.809860, 62.100319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571865, 0.056496, 0.818401,
		0.484317, -0.828461, -0.281231,
		0.662124, 0.557191, -0.501129,
		67.595428, 56.977016, 61.949982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.792465, 56.376637, 62.463661>,  <67.131943, 56.586983, 62.300770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.792465, 56.376637, 62.463661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.828018, 56.767624, 62.387077>,  <67.849350, 57.002216, 62.341125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.828018, 56.767624, 62.387077>,  <67.792465, 56.376637, 62.463661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.828018, 56.767624, 62.387077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381675, 0.144127, 0.912990,
		0.920013, -0.154221, -0.360265,
		0.088878, 0.977468, -0.191461,
		67.854683, 57.060863, 62.329639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.397209, 56.792412, 62.437557>,  <67.792465, 56.376637, 62.463661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.397209, 56.792412, 62.437557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.182625, 57.105064, 62.564850>,  <68.053879, 57.292656, 62.641228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.182625, 57.105064, 62.564850>,  <68.397209, 56.792412, 62.437557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.182625, 57.105064, 62.564850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616422, 0.105360, 0.780335,
		0.576404, 0.614781, -0.538334,
		-0.536454, 0.781629, 0.318235,
		68.021690, 57.339554, 62.660320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.918312, 57.223156, 62.611664>,  <68.397209, 56.792412, 62.437557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.918312, 57.223156, 62.611664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.588982, 57.286476, 62.829681>,  <68.391380, 57.324471, 62.960491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.588982, 57.286476, 62.829681>,  <68.918312, 57.223156, 62.611664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.588982, 57.286476, 62.829681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567049, 0.188309, 0.801869,
		0.024300, 0.969268, -0.244805,
		-0.823325, 0.158302, 0.545047,
		68.341988, 57.333965, 62.993195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.318901, 57.771004, 62.511921>,  <68.918312, 57.223156, 62.611664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.318901, 57.771004, 62.511921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.561821, 57.880283, 62.810333>,  <69.707573, 57.945850, 62.989380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.561821, 57.880283, 62.810333>,  <69.318901, 57.771004, 62.511921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.561821, 57.880283, 62.810333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674066, 0.319830, -0.665841,
		-0.420511, 0.907231, 0.010073,
		0.607293, 0.273203, 0.746026,
		69.744011, 57.962246, 63.034142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.675690, 58.437981, 62.343361>,  <69.318901, 57.771004, 62.511921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.675690, 58.437981, 62.343361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.900703, 58.162540, 62.526390>,  <70.035713, 57.997276, 62.636208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.900703, 58.162540, 62.526390>,  <69.675690, 58.437981, 62.343361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.900703, 58.162540, 62.526390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772912, 0.241519, -0.586750,
		0.293523, 0.683738, 0.668092,
		0.562540, -0.688601, 0.457578,
		70.069466, 57.955959, 62.663662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.329681, 58.634296, 62.495579>,  <69.675690, 58.437981, 62.343361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.329681, 58.634296, 62.495579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.396889, 58.261047, 62.368423>,  <70.437218, 58.037098, 62.292130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.396889, 58.261047, 62.368423>,  <70.329681, 58.634296, 62.495579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.396889, 58.261047, 62.368423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665552, 0.345263, -0.661690,
		0.727192, -0.100394, 0.679052,
		0.168022, -0.933121, -0.317890,
		70.447296, 57.981110, 62.273056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.823509, 58.033794, 62.672962>,  <70.329681, 58.634296, 62.495579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.823509, 58.033794, 62.672962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.904556, 58.229702, 62.333771>,  <70.953186, 58.347248, 62.130257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.904556, 58.229702, 62.333771>,  <70.823509, 58.033794, 62.672962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.904556, 58.229702, 62.333771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782468, -0.601644, -0.160526,
		-0.588803, -0.630993, -0.505132,
		0.202619, 0.489768, -0.847982,
		70.965340, 58.376633, 62.079376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.980682, 57.472519, 62.240307>,  <70.823509, 58.033794, 62.672962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.980682, 57.472519, 62.240307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.133636, 57.818733, 62.110924>,  <71.225410, 58.026463, 62.033295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.133636, 57.818733, 62.110924>,  <70.980682, 57.472519, 62.240307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.133636, 57.818733, 62.110924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900710, -0.427269, -0.078509,
		-0.206157, -0.261325, -0.942979,
		0.382389, 0.865535, -0.323462,
		71.248352, 58.078392, 62.013885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.512535, 57.180805, 62.055649>,  <70.980682, 57.472519, 62.240307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.512535, 57.180805, 62.055649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.563568, 57.570820, 61.982964>,  <71.594185, 57.804829, 61.939354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.563568, 57.570820, 61.982964>,  <71.512535, 57.180805, 62.055649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.563568, 57.570820, 61.982964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951832, -0.171867, -0.253924,
		-0.278816, -0.140560, -0.950002,
		0.127583, 0.975041, -0.181709,
		71.601845, 57.863331, 61.928452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.703705, 57.354641, 61.335293>,  <71.512535, 57.180805, 62.055649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.703705, 57.354641, 61.335293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.886070, 57.612949, 61.580284>,  <71.995491, 57.767933, 61.727280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.886070, 57.612949, 61.580284>,  <71.703705, 57.354641, 61.335293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.886070, 57.612949, 61.580284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836192, -0.075085, -0.543273,
		-0.304841, 0.759831, -0.574220,
		0.455911, 0.645770, 0.612476,
		72.022842, 57.806679, 61.764027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.045128, 57.868412, 60.907749>,  <71.703705, 57.354641, 61.335293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.045128, 57.868412, 60.907749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.228218, 57.861168, 61.263313>,  <72.338074, 57.856823, 61.476650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.228218, 57.861168, 61.263313>,  <72.045128, 57.868412, 60.907749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.228218, 57.861168, 61.263313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884874, 0.106603, -0.453469,
		-0.086549, 0.994137, 0.064818,
		0.457720, -0.018109, 0.888912,
		72.365532, 57.855736, 61.529987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.538704, 58.161919, 60.338570>,  <72.045128, 57.868412, 60.907749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.538704, 58.161919, 60.338570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.909340, 58.112778, 60.480736>,  <73.131721, 58.083294, 60.566036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.909340, 58.112778, 60.480736>,  <72.538704, 58.161919, 60.338570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.909340, 58.112778, 60.480736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011397, 0.935526, 0.353075,
		-0.375880, -0.331209, 0.865456,
		0.926598, -0.122850, 0.355420,
		73.187317, 58.075924, 60.587360>
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
