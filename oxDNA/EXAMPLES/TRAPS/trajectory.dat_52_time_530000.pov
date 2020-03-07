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
	<36.627552, 52.712345, 49.868073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666428, 52.927933, 50.202751>,  <36.689754, 53.057285, 50.403561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666428, 52.927933, 50.202751>,  <36.627552, 52.712345, 49.868073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666428, 52.927933, 50.202751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491443, -0.705056, 0.511254,
		0.865470, -0.460879, 0.196347,
		0.097191, 0.538968, 0.836700,
		36.695583, 53.089622, 50.453762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712772, 52.206955, 50.416561>,  <36.627552, 52.712345, 49.868073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712772, 52.206955, 50.416561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611919, 52.555344, 50.585239>,  <36.551407, 52.764378, 50.686447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611919, 52.555344, 50.585239>,  <36.712772, 52.206955, 50.416561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611919, 52.555344, 50.585239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635644, -0.477646, 0.606475,
		0.729648, -0.115137, 0.674061,
		-0.252134, 0.870975, 0.421699,
		36.536278, 52.816635, 50.711750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770508, 52.270840, 51.215683>,  <36.712772, 52.206955, 50.416561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770508, 52.270840, 51.215683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496048, 52.520832, 51.066765>,  <36.331371, 52.670826, 50.977413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496048, 52.520832, 51.066765>,  <36.770508, 52.270840, 51.215683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496048, 52.520832, 51.066765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701467, -0.432837, 0.566212,
		0.192727, 0.649659, 0.735391,
		-0.686149, 0.624977, -0.372295,
		36.290203, 52.708324, 50.955078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344341, 52.067711, 51.646790>,  <36.770508, 52.270840, 51.215683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344341, 52.067711, 51.646790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163948, 52.355389, 51.435368>,  <36.055714, 52.527996, 51.308514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163948, 52.355389, 51.435368>,  <36.344341, 52.067711, 51.646790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163948, 52.355389, 51.435368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822342, -0.104627, 0.559292,
		0.346940, 0.686883, 0.638611,
		-0.450984, 0.719197, -0.528553,
		36.028652, 52.571148, 51.276802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120464, 52.740704, 52.044926>,  <36.344341, 52.067711, 51.646790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120464, 52.740704, 52.044926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909172, 52.625404, 51.725456>,  <35.782394, 52.556225, 51.533775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909172, 52.625404, 51.725456>,  <36.120464, 52.740704, 52.044926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909172, 52.625404, 51.725456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756493, -0.267395, 0.596841,
		-0.385601, 0.919462, -0.076813,
		-0.528233, -0.288251, -0.798675,
		35.750702, 52.538929, 51.485855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572910, 52.585560, 52.570091>,  <36.120464, 52.740704, 52.044926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572910, 52.585560, 52.570091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583595, 52.791176, 52.913033>,  <36.590004, 52.914547, 53.118797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583595, 52.791176, 52.913033>,  <36.572910, 52.585560, 52.570091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583595, 52.791176, 52.913033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969544, -0.222198, 0.103018,
		0.243457, 0.828486, -0.504320,
		0.026710, 0.514041, 0.857350,
		36.591610, 52.945389, 53.170238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122284, 52.851437, 52.520012>,  <36.572910, 52.585560, 52.570091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122284, 52.851437, 52.520012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062901, 52.883312, 52.914295>,  <37.027271, 52.902435, 53.150864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062901, 52.883312, 52.914295>,  <37.122284, 52.851437, 52.520012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062901, 52.883312, 52.914295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953926, -0.251269, 0.163981,
		0.260743, 0.964632, -0.038713,
		-0.148454, 0.079686, 0.985704,
		37.018364, 52.907219, 53.210007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778042, 53.301109, 52.875458>,  <37.122284, 52.851437, 52.520012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778042, 53.301109, 52.875458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585892, 53.104477, 53.166000>,  <37.470600, 52.986500, 53.340324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585892, 53.104477, 53.166000>,  <37.778042, 53.301109, 52.875458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585892, 53.104477, 53.166000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871471, -0.174165, 0.458482,
		-0.098875, 0.853239, 0.512061,
		-0.480378, -0.491578, 0.726353,
		37.441780, 52.957005, 53.383907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990280, 53.551331, 53.572430>,  <37.778042, 53.301109, 52.875458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990280, 53.551331, 53.572430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904011, 53.163002, 53.530491>,  <37.852249, 52.930004, 53.505325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904011, 53.163002, 53.530491>,  <37.990280, 53.551331, 53.572430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904011, 53.163002, 53.530491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922525, -0.237772, 0.303995,
		-0.320055, -0.031163, 0.946887,
		-0.215669, -0.970821, -0.104849,
		37.839310, 52.871758, 53.499035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947056, 53.203762, 54.258720>,  <37.990280, 53.551331, 53.572430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947056, 53.203762, 54.258720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103245, 53.019028, 53.940166>,  <38.196960, 52.908188, 53.749035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103245, 53.019028, 53.940166>,  <37.947056, 53.203762, 54.258720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103245, 53.019028, 53.940166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893442, -0.018507, 0.448796,
		-0.222011, -0.886770, 0.405401,
		0.390476, -0.461841, -0.796386,
		38.220387, 52.880474, 53.701252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957825, 53.987362, 54.209957>,  <37.947056, 53.203762, 54.258720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957825, 53.987362, 54.209957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946487, 54.363594, 54.074600>,  <37.939686, 54.589333, 53.993385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946487, 54.363594, 54.074600>,  <37.957825, 53.987362, 54.209957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946487, 54.363594, 54.074600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663555, 0.270889, 0.697362,
		0.747590, -0.204774, -0.631804,
		-0.028347, 0.940578, -0.338392,
		37.937984, 54.645767, 53.973083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568760, 54.260731, 53.914001>,  <37.957825, 53.987362, 54.209957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568760, 54.260731, 53.914001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399422, 54.594536, 54.055069>,  <38.297817, 54.794819, 54.139709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399422, 54.594536, 54.055069>,  <38.568760, 54.260731, 53.914001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399422, 54.594536, 54.055069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721877, 0.075499, 0.687891,
		0.547424, 0.545799, -0.634374,
		-0.423345, 0.834508, 0.352669,
		38.272419, 54.844887, 54.160870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319012, 54.467850, 54.104568>,  <38.568760, 54.260731, 53.914001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319012, 54.467850, 54.104568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265568, 54.794720, 54.328846>,  <39.233501, 54.990841, 54.463413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265568, 54.794720, 54.328846>,  <39.319012, 54.467850, 54.104568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265568, 54.794720, 54.328846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368081, -0.484374, 0.793661,
		0.920144, 0.312419, -0.236070,
		-0.133609, 0.817176, 0.560689,
		39.225487, 55.039871, 54.497051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922764, 54.462250, 54.539341>,  <39.319012, 54.467850, 54.104568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922764, 54.462250, 54.539341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610390, 54.664513, 54.686012>,  <39.422966, 54.785870, 54.774017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610390, 54.664513, 54.686012>,  <39.922764, 54.462250, 54.539341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610390, 54.664513, 54.686012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072805, -0.509359, 0.857469,
		0.620360, 0.696320, 0.360960,
		-0.780931, 0.505660, 0.366681,
		39.376110, 54.816212, 54.796017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569317, 54.531879, 54.202000>,  <39.922764, 54.462250, 54.539341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569317, 54.531879, 54.202000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.917164, 54.701183, 54.303680>,  <41.125874, 54.802765, 54.364689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.917164, 54.701183, 54.303680>,  <40.569317, 54.531879, 54.202000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917164, 54.701183, 54.303680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479607, 0.601936, 0.638474,
		0.117228, -0.677144, 0.726453,
		0.869618, 0.423259, 0.254200,
		41.178047, 54.828159, 54.379940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317837, 55.005054, 54.798691>,  <40.569317, 54.531879, 54.202000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.317837, 55.005054, 54.798691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705078, 55.083580, 54.736416>,  <40.937424, 55.130695, 54.699051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705078, 55.083580, 54.736416>,  <40.317837, 55.005054, 54.798691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705078, 55.083580, 54.736416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073841, 0.817317, 0.571437,
		0.239431, -0.541713, 0.805742,
		0.968101, 0.196316, -0.155690,
		40.995510, 55.142475, 54.689709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766544, 55.034107, 55.457458>,  <40.317837, 55.005054, 54.798691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766544, 55.034107, 55.457458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921524, 55.246460, 55.155983>,  <41.014511, 55.373871, 54.975098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921524, 55.246460, 55.155983>,  <40.766544, 55.034107, 55.457458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921524, 55.246460, 55.155983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023337, 0.811638, 0.583694,
		0.921596, -0.243740, 0.302078,
		0.387447, 0.530881, -0.753691,
		41.037758, 55.405724, 54.929874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282200, 55.571705, 55.706635>,  <40.766544, 55.034107, 55.457458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282200, 55.571705, 55.706635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067135, 55.685196, 55.389038>,  <40.938095, 55.753292, 55.198479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067135, 55.685196, 55.389038>,  <41.282200, 55.571705, 55.706635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067135, 55.685196, 55.389038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164073, 0.888474, 0.428596,
		0.827044, 0.360712, -0.431144,
		-0.537660, 0.283729, -0.793990,
		40.905838, 55.770313, 55.150841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341980, 56.279491, 55.625854>,  <41.282200, 55.571705, 55.706635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341980, 56.279491, 55.625854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988327, 56.205219, 55.454353>,  <40.776134, 56.160656, 55.351452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988327, 56.205219, 55.454353>,  <41.341980, 56.279491, 55.625854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988327, 56.205219, 55.454353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345260, 0.877915, 0.331755,
		0.314809, 0.441347, -0.840303,
		-0.884133, -0.185683, -0.428755,
		40.723087, 56.149513, 55.325726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822994, 56.286304, 56.205616>,  <41.341980, 56.279491, 55.625854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.822994, 56.286304, 56.205616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.036423, 55.990879, 56.040771>,  <42.164478, 55.813625, 55.941864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.036423, 55.990879, 56.040771>,  <41.822994, 56.286304, 56.205616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.036423, 55.990879, 56.040771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833651, 0.377131, 0.403481,
		-0.142577, -0.558839, 0.816928,
		0.533570, -0.738560, -0.412107,
		42.196495, 55.769310, 55.917141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979450, 56.609066, 55.510448>,  <41.822994, 56.286304, 56.205616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979450, 56.609066, 55.510448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222141, 56.877621, 55.340218>,  <42.367756, 57.038754, 55.238079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222141, 56.877621, 55.340218>,  <41.979450, 56.609066, 55.510448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.222141, 56.877621, 55.340218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732709, -0.264749, 0.626933,
		0.308245, -0.692203, -0.652564,
		0.606730, 0.671389, -0.425576,
		42.404160, 57.079037, 55.212543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.588154, 56.406517, 55.303143>,  <41.979450, 56.609066, 55.510448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.588154, 56.406517, 55.303143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716110, 56.771740, 55.404335>,  <42.792885, 56.990875, 55.465050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716110, 56.771740, 55.404335>,  <42.588154, 56.406517, 55.303143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.716110, 56.771740, 55.404335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850837, -0.394309, 0.347271,
		0.416829, 0.104155, -0.902998,
		0.319890, 0.913057, 0.252978,
		42.812077, 57.045658, 55.480228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.257660, 56.603481, 55.071560>,  <42.588154, 56.406517, 55.303143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.257660, 56.603481, 55.071560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.225838, 56.830307, 55.399490>,  <43.206745, 56.966404, 55.596249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.225838, 56.830307, 55.399490>,  <43.257660, 56.603481, 55.071560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.225838, 56.830307, 55.399490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759200, -0.498491, 0.418476,
		0.645977, 0.655703, -0.390856,
		-0.079558, 0.567064, 0.819823,
		43.201969, 57.000427, 55.645435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.952446, 56.765137, 55.273659>,  <43.257660, 56.603481, 55.071560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.952446, 56.765137, 55.273659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.689255, 56.739872, 55.573814>,  <43.531342, 56.724712, 55.753906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.689255, 56.739872, 55.573814>,  <43.952446, 56.765137, 55.273659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.689255, 56.739872, 55.573814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577188, -0.682308, 0.448675,
		0.483653, 0.728331, 0.485400,
		-0.657977, -0.063164, 0.750384,
		43.491863, 56.720924, 55.798931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.689655, 56.794434, 55.658447>,  <43.952446, 56.765137, 55.273659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.689655, 56.794434, 55.658447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.867390, 56.966805, 55.344284>,  <44.974030, 57.070229, 55.155785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.867390, 56.966805, 55.344284>,  <44.689655, 56.794434, 55.658447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.867390, 56.966805, 55.344284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490299, 0.616775, 0.615789,
		0.749781, -0.658703, 0.062772,
		0.444338, 0.430930, -0.785407,
		45.000690, 57.096085, 55.108662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.437195, 56.718506, 55.598213>,  <44.689655, 56.794434, 55.658447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.437195, 56.718506, 55.598213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.339035, 57.080311, 55.458702>,  <45.280140, 57.297394, 55.374996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.339035, 57.080311, 55.458702>,  <45.437195, 56.718506, 55.598213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.339035, 57.080311, 55.458702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639287, 0.421452, 0.643188,
		0.728761, -0.065131, -0.681664,
		-0.245397, 0.904509, -0.348775,
		45.265415, 57.351662, 55.354069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.031273, 57.052399, 55.206612>,  <45.437195, 56.718506, 55.598213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.031273, 57.052399, 55.206612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.789463, 57.304840, 55.401039>,  <45.644375, 57.456303, 55.517696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.789463, 57.304840, 55.401039>,  <46.031273, 57.052399, 55.206612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.789463, 57.304840, 55.401039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762952, 0.283288, 0.581079,
		0.229021, 0.722123, -0.652754,
		-0.604528, 0.631099, 0.486066,
		45.608105, 57.494171, 55.546860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.398293, 57.728199, 55.551857>,  <46.031273, 57.052399, 55.206612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.398293, 57.728199, 55.551857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.060310, 57.713463, 55.765282>,  <45.857521, 57.704620, 55.893337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.060310, 57.713463, 55.765282>,  <46.398293, 57.728199, 55.551857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.060310, 57.713463, 55.765282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469474, 0.426794, 0.772943,
		-0.256198, 0.903598, -0.343327,
		-0.844960, -0.036844, 0.533559,
		45.806824, 57.702412, 55.925350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.122669, 57.966312, 55.803871>,  <46.398293, 57.728199, 55.551857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.122669, 57.966312, 55.803871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.369625, 57.652527, 55.827347>,  <47.517799, 57.464256, 55.841431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.369625, 57.652527, 55.827347>,  <47.122669, 57.966312, 55.803871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.369625, 57.652527, 55.827347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746050, 0.607553, 0.272559,
		-0.249469, -0.124491, 0.960347,
		0.617393, -0.784462, 0.058689,
		47.554844, 57.417187, 55.844952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.643539, 58.152466, 56.289532>,  <47.122669, 57.966312, 55.803871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.643539, 58.152466, 56.289532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.797127, 57.815674, 56.137932>,  <47.889278, 57.613598, 56.046970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.797127, 57.815674, 56.137932>,  <47.643539, 58.152466, 56.289532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.797127, 57.815674, 56.137932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920940, 0.378841, 0.091378,
		0.066643, -0.384124, 0.920873,
		0.383965, -0.841979, -0.379002,
		47.912315, 57.563080, 56.024231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.058224, 57.727020, 56.783249>,  <47.643539, 58.152466, 56.289532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.058224, 57.727020, 56.783249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.194653, 57.683636, 56.409744>,  <48.276512, 57.657604, 56.185642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.194653, 57.683636, 56.409744>,  <48.058224, 57.727020, 56.783249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.194653, 57.683636, 56.409744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914107, 0.269961, 0.302538,
		0.219263, -0.956742, 0.191226,
		0.341074, -0.108466, -0.933758,
		48.296974, 57.651096, 56.129616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.759525, 57.427498, 56.730995>,  <48.058224, 57.727020, 56.783249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.759525, 57.427498, 56.730995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.775715, 57.648651, 56.398087>,  <48.785431, 57.781345, 56.198341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.775715, 57.648651, 56.398087>,  <48.759525, 57.427498, 56.730995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.775715, 57.648651, 56.398087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795505, 0.486181, 0.361664,
		0.604594, -0.676717, -0.420143,
		0.040478, 0.552886, -0.832273,
		48.787857, 57.814518, 56.148403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.326641, 57.256401, 56.351482>,  <48.759525, 57.427498, 56.730995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.326641, 57.256401, 56.351482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.197327, 57.634048, 56.325775>,  <49.119736, 57.860638, 56.310349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.197327, 57.634048, 56.325775>,  <49.326641, 57.256401, 56.351482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.197327, 57.634048, 56.325775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800690, 0.309111, 0.513173,
		0.504360, 0.114443, -0.855876,
		-0.323290, 0.944115, -0.064270,
		49.100338, 57.917282, 56.306496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.838745, 57.703499, 56.138344>,  <49.326641, 57.256401, 56.351482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.838745, 57.703499, 56.138344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.593098, 57.891602, 56.391869>,  <49.445709, 58.004463, 56.543983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.593098, 57.891602, 56.391869>,  <49.838745, 57.703499, 56.138344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.593098, 57.891602, 56.391869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780164, 0.240448, 0.577519,
		0.119183, 0.849143, -0.514541,
		-0.614117, 0.470257, 0.633813,
		49.408863, 58.032681, 56.582012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.894028, 58.494690, 56.234974>,  <49.838745, 57.703499, 56.138344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.894028, 58.494690, 56.234974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.796715, 58.280552, 56.558510>,  <49.738327, 58.152069, 56.752632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.796715, 58.280552, 56.558510>,  <49.894028, 58.494690, 56.234974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.796715, 58.280552, 56.558510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845472, 0.291657, 0.447339,
		-0.475385, 0.792679, 0.381667,
		-0.243280, -0.535347, 0.808837,
		49.723732, 58.119949, 56.801163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.973316, 59.005642, 56.787182>,  <49.894028, 58.494690, 56.234974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.973316, 59.005642, 56.787182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.042477, 58.636345, 56.924431>,  <50.083973, 58.414768, 57.006779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.042477, 58.636345, 56.924431>,  <49.973316, 59.005642, 56.787182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.042477, 58.636345, 56.924431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874557, 0.304151, 0.377679,
		-0.453050, 0.234779, 0.860014,
		0.172903, -0.923239, 0.343123,
		50.094349, 58.359371, 57.027367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.213097, 58.987019, 57.549484>,  <49.973316, 59.005642, 56.787182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.213097, 58.987019, 57.549484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.376537, 58.695343, 57.329910>,  <50.474602, 58.520336, 57.198166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.376537, 58.695343, 57.329910>,  <50.213097, 58.987019, 57.549484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.376537, 58.695343, 57.329910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911726, 0.298103, 0.282650,
		-0.042466, -0.615968, 0.786625,
		0.408599, -0.729190, -0.548935,
		50.499119, 58.476585, 57.165230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.706593, 58.679626, 58.064320>,  <50.213097, 58.987019, 57.549484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.706593, 58.679626, 58.064320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.817661, 58.627182, 57.683647>,  <50.884304, 58.595715, 57.455242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.817661, 58.627182, 57.683647>,  <50.706593, 58.679626, 58.064320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.817661, 58.627182, 57.683647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934450, 0.266750, 0.235897,
		0.222933, -0.954806, 0.196589,
		0.277676, -0.131114, -0.951686,
		50.900963, 58.587849, 57.398140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.459923, 58.954453, 58.083729>,  <50.706593, 58.679626, 58.064320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.459923, 58.954453, 58.083729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.770363, 58.982498, 58.334412>,  <51.956627, 58.999325, 58.484821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.770363, 58.982498, 58.334412>,  <51.459923, 58.954453, 58.083729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.770363, 58.982498, 58.334412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396687, 0.826826, 0.398746,
		-0.490217, -0.558071, 0.669510,
		0.776097, 0.070113, 0.626704,
		52.003193, 59.003532, 58.522423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.247082, 58.980991, 58.867783>,  <51.459923, 58.954453, 58.083729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.247082, 58.980991, 58.867783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.598198, 59.169601, 58.833946>,  <51.808868, 59.282768, 58.813644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.598198, 59.169601, 58.833946>,  <51.247082, 58.980991, 58.867783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.598198, 59.169601, 58.833946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258610, 0.615057, 0.744866,
		0.403249, -0.631959, 0.661830,
		0.877788, 0.471522, -0.084590,
		51.861534, 59.311058, 58.808571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.489803, 59.059521, 59.527966>,  <51.247082, 58.980991, 58.867783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.489803, 59.059521, 59.527966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.695221, 59.331444, 59.318535>,  <51.818474, 59.494598, 59.192875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.695221, 59.331444, 59.318535>,  <51.489803, 59.059521, 59.527966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.695221, 59.331444, 59.318535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058174, 0.636368, 0.769189,
		0.856088, -0.364556, 0.366351,
		0.513547, 0.679805, -0.523579,
		51.849285, 59.535385, 59.161461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.028107, 59.322605, 59.834053>,  <51.489803, 59.059521, 59.527966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.028107, 59.322605, 59.834053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.918507, 59.627956, 59.600067>,  <51.852745, 59.811169, 59.459675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.918507, 59.627956, 59.600067>,  <52.028107, 59.322605, 59.834053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.918507, 59.627956, 59.600067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262329, 0.525849, 0.809114,
		0.925261, 0.375149, 0.056174,
		-0.273999, 0.763378, -0.584960,
		51.836308, 59.856968, 59.424580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.617031, 58.795078, 59.568981>,  <52.028107, 59.322605, 59.834053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.617031, 58.795078, 59.568981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.978065, 58.814518, 59.397881>,  <53.194687, 58.826183, 59.295219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.978065, 58.814518, 59.397881>,  <52.617031, 58.795078, 59.568981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.978065, 58.814518, 59.397881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021622, -0.987235, -0.157794,
		-0.429964, 0.151672, -0.890015,
		0.902587, 0.048602, -0.427755,
		53.248840, 58.829098, 59.269554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.677357, 58.543270, 58.747795>,  <52.617031, 58.795078, 59.568981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.677357, 58.543270, 58.747795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.951138, 58.479568, 59.032379>,  <53.115406, 58.441349, 59.203129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.951138, 58.479568, 59.032379>,  <52.677357, 58.543270, 58.747795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.951138, 58.479568, 59.032379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242589, -0.969993, 0.016257,
		0.687519, -0.183719, -0.702542,
		0.684447, -0.159252, 0.711457,
		53.156471, 58.431793, 59.245815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.146984, 58.105431, 58.478397>,  <52.677357, 58.543270, 58.747795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.146984, 58.105431, 58.478397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.140587, 58.064400, 58.876236>,  <53.136749, 58.039780, 59.114941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.140587, 58.064400, 58.876236>,  <53.146984, 58.105431, 58.478397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.140587, 58.064400, 58.876236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246635, -0.963582, -0.103346,
		0.968977, -0.246954, -0.009893,
		-0.015989, -0.102580, 0.994596,
		53.135788, 58.033627, 59.174614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.680141, 57.669270, 58.677418>,  <53.146984, 58.105431, 58.478397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.680141, 57.669270, 58.677418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.339554, 57.660355, 58.886993>,  <53.135201, 57.655006, 59.012737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.339554, 57.660355, 58.886993>,  <53.680141, 57.669270, 58.677418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.339554, 57.660355, 58.886993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120948, -0.963815, -0.237556,
		0.510271, -0.265640, 0.817961,
		-0.851467, -0.022287, 0.523935,
		53.084114, 57.653667, 59.044174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.060551, 57.622303, 57.992947>,  <53.680141, 57.669270, 58.677418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.060551, 57.622303, 57.992947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.049492, 57.421669, 57.647079>,  <54.042858, 57.301289, 57.439560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.049492, 57.421669, 57.647079>,  <54.060551, 57.622303, 57.992947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.049492, 57.421669, 57.647079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981583, 0.149947, -0.118367,
		0.189025, -0.852012, 0.488206,
		-0.027645, -0.501589, -0.864664,
		54.041199, 57.271191, 57.387680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.593082, 57.081566, 57.809208>,  <54.060551, 57.622303, 57.992947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.593082, 57.081566, 57.809208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.495537, 57.249199, 57.459373>,  <54.437008, 57.349777, 57.249474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.495537, 57.249199, 57.459373>,  <54.593082, 57.081566, 57.809208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.495537, 57.249199, 57.459373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908691, 0.413819, -0.055082,
		0.338837, -0.808163, -0.481729,
		-0.243864, 0.419079, -0.874587,
		54.422379, 57.374924, 57.196999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.971493, 56.853306, 57.219772>,  <54.593082, 57.081566, 57.809208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.971493, 56.853306, 57.219772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.860580, 57.233963, 57.166862>,  <54.794033, 57.462357, 57.135117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.860580, 57.233963, 57.166862>,  <54.971493, 56.853306, 57.219772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.860580, 57.233963, 57.166862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943169, 0.295848, 0.151348,
		0.183162, -0.082794, -0.979590,
		-0.277279, 0.951640, -0.132277,
		54.777397, 57.519455, 57.127178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.338352, 57.141106, 56.663933>,  <54.971493, 56.853306, 57.219772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.338352, 57.141106, 56.663933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.259201, 57.399872, 56.958511>,  <55.211708, 57.555130, 57.135258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.259201, 57.399872, 56.958511>,  <55.338352, 57.141106, 56.663933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.259201, 57.399872, 56.958511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974380, 0.047882, 0.219754,
		0.106899, 0.761059, -0.639814,
		-0.197881, 0.646913, 0.736442,
		55.199837, 57.593945, 57.179443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.756508, 57.907497, 56.706757>,  <55.338352, 57.141106, 56.663933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.756508, 57.907497, 56.706757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.653961, 57.799072, 57.077873>,  <55.592434, 57.734016, 57.300545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.653961, 57.799072, 57.077873>,  <55.756508, 57.907497, 56.706757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.653961, 57.799072, 57.077873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934316, 0.176433, 0.309717,
		-0.247648, 0.946252, 0.208031,
		-0.256366, -0.271068, 0.927792,
		55.577053, 57.717751, 57.356213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.964375, 58.479828, 57.157043>,  <55.756508, 57.907497, 56.706757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.964375, 58.479828, 57.157043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.923706, 58.118134, 57.322945>,  <55.899303, 57.901115, 57.422485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.923706, 58.118134, 57.322945>,  <55.964375, 58.479828, 57.157043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.923706, 58.118134, 57.322945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892009, 0.101718, 0.440424,
		-0.440435, 0.414745, 0.796243,
		-0.101672, -0.904234, 0.414757,
		55.893204, 57.846863, 57.447372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.038776, 58.445984, 57.964806>,  <55.964375, 58.479828, 57.157043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.038776, 58.445984, 57.964806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.152817, 58.091721, 57.818199>,  <56.221241, 57.879162, 57.730236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.152817, 58.091721, 57.818199>,  <56.038776, 58.445984, 57.964806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.152817, 58.091721, 57.818199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860175, 0.067710, 0.505484,
		-0.422868, -0.459380, 0.781123,
		0.285099, -0.885655, -0.366515,
		56.238346, 57.826023, 57.708244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.168522, 58.015102, 58.537563>,  <56.038776, 58.445984, 57.964806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.168522, 58.015102, 58.537563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.372757, 57.891235, 58.216713>,  <56.495296, 57.816914, 58.024204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.372757, 57.891235, 58.216713>,  <56.168522, 58.015102, 58.537563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.372757, 57.891235, 58.216713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848715, 0.032026, 0.527880,
		-0.137780, -0.950305, 0.279174,
		0.510587, -0.309670, -0.802125,
		56.525932, 57.798336, 57.976074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.587692, 57.414768, 58.658955>,  <56.168522, 58.015102, 58.537563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.587692, 57.414768, 58.658955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.754295, 57.595894, 58.343620>,  <56.854256, 57.704571, 58.154419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.754295, 57.595894, 58.343620>,  <56.587692, 57.414768, 58.658955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.754295, 57.595894, 58.343620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898688, -0.074008, 0.432299,
		0.137409, -0.888526, -0.437767,
		0.416507, 0.452817, -0.788339,
		56.879246, 57.731739, 58.107117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.269962, 57.503532, 58.873989>,  <56.587692, 57.414768, 58.658955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.269962, 57.503532, 58.873989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.304871, 57.657440, 58.506439>,  <57.325817, 57.749786, 58.285908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.304871, 57.657440, 58.506439>,  <57.269962, 57.503532, 58.873989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.304871, 57.657440, 58.506439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987135, 0.090644, 0.131711,
		0.133970, -0.918549, -0.371913,
		0.087271, 0.384774, -0.918876,
		57.331051, 57.772873, 58.230778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.868896, 57.142296, 58.588749>,  <57.269962, 57.503532, 58.873989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.868896, 57.142296, 58.588749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.812363, 57.489452, 58.398254>,  <57.778442, 57.697746, 58.283958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.812363, 57.489452, 58.398254>,  <57.868896, 57.142296, 58.588749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.812363, 57.489452, 58.398254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988301, 0.151554, -0.017111,
		0.057324, -0.473079, -0.879153,
		-0.141334, 0.867887, -0.476232,
		57.769962, 57.749817, 58.255386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.371727, 57.188457, 58.001934>,  <57.868896, 57.142296, 58.588749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.371727, 57.188457, 58.001934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.254883, 57.526138, 58.181709>,  <58.184776, 57.728748, 58.289574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.254883, 57.526138, 58.181709>,  <58.371727, 57.188457, 58.001934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.254883, 57.526138, 58.181709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948411, 0.316251, 0.022379,
		-0.123244, 0.432792, -0.893030,
		-0.292108, 0.844201, 0.449441,
		58.167252, 57.779400, 58.316540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.826031, 57.716717, 57.563526>,  <58.371727, 57.188457, 58.001934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.826031, 57.716717, 57.563526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.736176, 57.800117, 57.944275>,  <58.682262, 57.850159, 58.172726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.736176, 57.800117, 57.944275>,  <58.826031, 57.716717, 57.563526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.736176, 57.800117, 57.944275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946360, 0.279503, 0.162112,
		-0.232252, 0.937233, -0.260101,
		-0.224635, 0.208499, 0.951876,
		58.668785, 57.862667, 58.229839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.105072, 58.384121, 57.885590>,  <58.826031, 57.716717, 57.563526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.105072, 58.384121, 57.885590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.073151, 58.130455, 58.193214>,  <59.053997, 57.978256, 58.377789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.073151, 58.130455, 58.193214>,  <59.105072, 58.384121, 57.885590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.073151, 58.130455, 58.193214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939731, 0.209469, 0.270239,
		-0.332472, 0.744280, 0.579231,
		-0.079802, -0.634168, 0.769066,
		59.049210, 57.940205, 58.423935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.353260, 58.744247, 58.430016>,  <59.105072, 58.384121, 57.885590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.353260, 58.744247, 58.430016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.387215, 58.360535, 58.537766>,  <59.407589, 58.130306, 58.602417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.387215, 58.360535, 58.537766>,  <59.353260, 58.744247, 58.430016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.387215, 58.360535, 58.537766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925639, 0.175979, 0.334998,
		-0.368764, 0.220909, 0.902891,
		0.084886, -0.959287, 0.269377,
		59.412682, 58.072750, 58.618580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.582340, 58.740707, 59.162395>,  <59.353260, 58.744247, 58.430016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.582340, 58.740707, 59.162395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.691299, 58.396103, 58.991005>,  <59.756676, 58.189339, 58.888168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.691299, 58.396103, 58.991005>,  <59.582340, 58.740707, 59.162395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.691299, 58.396103, 58.991005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913619, 0.091897, 0.396050,
		-0.301826, -0.499351, 0.812127,
		0.272400, -0.861512, -0.428479,
		59.773018, 58.137650, 58.862461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.902317, 58.210552, 59.572758>,  <59.582340, 58.740707, 59.162395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.902317, 58.210552, 59.572758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.098412, 58.134315, 59.232559>,  <60.216068, 58.088573, 59.028439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.098412, 58.134315, 59.232559>,  <59.902317, 58.210552, 59.572758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.098412, 58.134315, 59.232559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870845, 0.066758, 0.487003,
		-0.036043, -0.979397, 0.198706,
		0.490234, -0.190595, -0.850497,
		60.245483, 58.077137, 58.977409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.434361, 57.670277, 59.620075>,  <59.902317, 58.210552, 59.572758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.434361, 57.670277, 59.620075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.553192, 57.935928, 59.345650>,  <60.624489, 58.095318, 59.180996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.553192, 57.935928, 59.345650>,  <60.434361, 57.670277, 59.620075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.553192, 57.935928, 59.345650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905821, 0.031267, 0.422504,
		0.302048, -0.746966, -0.592291,
		0.297077, 0.664127, -0.686062,
		60.642315, 58.135166, 59.139832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.097569, 57.450844, 59.642708>,  <60.434361, 57.670277, 59.620075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.097569, 57.450844, 59.642708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.098991, 57.784214, 59.421661>,  <61.099846, 57.984238, 59.289032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.098991, 57.784214, 59.421661>,  <61.097569, 57.450844, 59.642708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.098991, 57.784214, 59.421661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860149, 0.279304, 0.426770,
		0.510030, -0.476851, -0.715879,
		0.003558, 0.833428, -0.552617,
		61.100060, 58.034241, 59.255875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.853786, 57.428459, 59.479977>,  <61.097569, 57.450844, 59.642708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.853786, 57.428459, 59.479977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.672142, 57.764809, 59.362190>,  <61.563156, 57.966618, 59.291519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.672142, 57.764809, 59.362190>,  <61.853786, 57.428459, 59.479977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.672142, 57.764809, 59.362190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825530, 0.521430, 0.215895,
		0.335085, -0.145052, -0.930955,
		-0.454112, 0.840875, -0.294468,
		61.535908, 58.017071, 59.273849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.166504, 57.702667, 58.903519>,  <61.853786, 57.428459, 59.479977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.166504, 57.702667, 58.903519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.008362, 58.008064, 59.107780>,  <61.913475, 58.191303, 59.230339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.008362, 58.008064, 59.107780>,  <62.166504, 57.702667, 58.903519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.008362, 58.008064, 59.107780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918420, 0.337061, 0.207107,
		-0.013997, 0.550879, -0.834468,
		-0.395358, 0.763493, 0.510656,
		61.889755, 58.237114, 59.260979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.671524, 58.296898, 58.799370>,  <62.166504, 57.702667, 58.903519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.671524, 58.296898, 58.799370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.438805, 58.418106, 59.101280>,  <62.299171, 58.490833, 59.282425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.438805, 58.418106, 59.101280>,  <62.671524, 58.296898, 58.799370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.438805, 58.418106, 59.101280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785654, 0.449417, 0.425174,
		-0.210370, 0.840357, -0.499543,
		-0.581801, 0.303024, 0.754774,
		62.264263, 58.509014, 59.327713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.711452, 59.065918, 59.062668>,  <62.671524, 58.296898, 58.799370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.711452, 59.065918, 59.062668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.604263, 58.820042, 59.359413>,  <62.539951, 58.672516, 59.537460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.604263, 58.820042, 59.359413>,  <62.711452, 59.065918, 59.062668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.604263, 58.820042, 59.359413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779205, 0.314576, 0.542108,
		-0.566597, 0.723328, 0.394670,
		-0.267968, -0.614686, 0.741858,
		62.523872, 58.635635, 59.581970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.668152, 59.470940, 59.688587>,  <62.711452, 59.065918, 59.062668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.668152, 59.470940, 59.688587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.743896, 59.084763, 59.760201>,  <62.789345, 58.853054, 59.803169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.743896, 59.084763, 59.760201>,  <62.668152, 59.470940, 59.688587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.743896, 59.084763, 59.760201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850861, 0.252346, 0.460822,
		-0.490077, 0.065070, 0.869247,
		0.189366, -0.965447, 0.179034,
		62.800705, 58.795128, 59.813911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.599640, 59.261929, 60.373566>,  <62.668152, 59.470940, 59.688587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.599640, 59.261929, 60.373566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.897667, 59.060799, 60.198280>,  <63.076485, 58.940121, 60.093109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.897667, 59.060799, 60.198280>,  <62.599640, 59.261929, 60.373566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.897667, 59.060799, 60.198280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635339, 0.335074, 0.695751,
		-0.203010, -0.796799, 0.569121,
		0.745071, -0.502829, -0.438214,
		63.121189, 58.909950, 60.066814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.871456, 58.951077, 60.971855>,  <62.599640, 59.261929, 60.373566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.871456, 58.951077, 60.971855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.150246, 58.971909, 60.685776>,  <63.317520, 58.984409, 60.514126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.150246, 58.971909, 60.685776>,  <62.871456, 58.951077, 60.971855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.150246, 58.971909, 60.685776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636366, 0.414822, 0.650354,
		0.330554, -0.908411, 0.255976,
		0.696974, 0.052082, -0.715203,
		63.359337, 58.987534, 60.471214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.473827, 58.463253, 60.974796>,  <62.871456, 58.951077, 60.971855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.473827, 58.463253, 60.974796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.568222, 58.824085, 60.830261>,  <63.624859, 59.040585, 60.743542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.568222, 58.824085, 60.830261>,  <63.473827, 58.463253, 60.974796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.568222, 58.824085, 60.830261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577288, 0.168977, 0.798865,
		0.781697, -0.397114, -0.480885,
		0.235982, 0.902080, -0.361338,
		63.639015, 59.094707, 60.721859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.170830, 58.648712, 61.303715>,  <63.473827, 58.463253, 60.974796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.170830, 58.648712, 61.303715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.022354, 58.998226, 61.178040>,  <63.933266, 59.207935, 61.102634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.022354, 58.998226, 61.178040>,  <64.170830, 58.648712, 61.303715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.022354, 58.998226, 61.178040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644897, 0.486037, 0.589811,
		0.668073, 0.016320, -0.743917,
		-0.371197, 0.873786, -0.314184,
		63.910995, 59.260361, 61.083786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.672684, 59.093292, 60.962437>,  <64.170830, 58.648712, 61.303715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.672684, 59.093292, 60.962437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.414009, 59.299606, 61.187210>,  <64.258804, 59.423393, 61.322075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.414009, 59.299606, 61.187210>,  <64.672684, 59.093292, 60.962437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.414009, 59.299606, 61.187210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760918, 0.385067, 0.522232,
		0.052974, 0.765306, -0.641482,
		-0.646681, 0.515780, 0.561937,
		64.220001, 59.454342, 61.355793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.971703, 59.846474, 61.002029>,  <64.672684, 59.093292, 60.962437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.971703, 59.846474, 61.002029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.736145, 59.754242, 61.311882>,  <64.594810, 59.698902, 61.497791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.736145, 59.754242, 61.311882>,  <64.971703, 59.846474, 61.002029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.736145, 59.754242, 61.311882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681955, 0.372630, 0.629352,
		-0.433763, 0.898878, -0.062194,
		-0.588886, -0.230577, 0.774628,
		64.559479, 59.685070, 61.544270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.410828, 60.079990, 60.429588>,  <64.971703, 59.846474, 61.002029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.410828, 60.079990, 60.429588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.542381, 59.731163, 60.574547>,  <65.621315, 59.521866, 60.661522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.542381, 59.731163, 60.574547>,  <65.410828, 60.079990, 60.429588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.542381, 59.731163, 60.574547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941545, 0.273132, -0.197212,
		0.073002, 0.406068, 0.910923,
		0.328883, -0.872071, 0.362392,
		65.641045, 59.469543, 60.683266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.937332, 60.168549, 61.035381>,  <65.410828, 60.079990, 60.429588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.937332, 60.168549, 61.035381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.992165, 59.818840, 60.849113>,  <66.025063, 59.609013, 60.737350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.992165, 59.818840, 60.849113>,  <65.937332, 60.168549, 61.035381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.992165, 59.818840, 60.849113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968204, 0.217571, -0.123467,
		0.209262, -0.433941, 0.876302,
		0.137081, -0.874276, -0.465672,
		66.033287, 59.556557, 60.709412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.145988, 59.568928, 61.410049>,  <65.937332, 60.168549, 61.035381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.145988, 59.568928, 61.410049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.281593, 59.629929, 61.038712>,  <66.362953, 59.666531, 60.815910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.281593, 59.629929, 61.038712>,  <66.145988, 59.568928, 61.410049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.281593, 59.629929, 61.038712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922653, 0.138902, 0.359747,
		0.183812, -0.978493, -0.093622,
		0.339006, 0.152507, -0.928341,
		66.383293, 59.675682, 60.760208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.595596, 59.045956, 61.280708>,  <66.145988, 59.568928, 61.410049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.595596, 59.045956, 61.280708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.687981, 59.370163, 61.065407>,  <66.743408, 59.564686, 60.936226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.687981, 59.370163, 61.065407>,  <66.595596, 59.045956, 61.280708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.687981, 59.370163, 61.065407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954776, -0.082342, 0.285695,
		0.187240, -0.579899, -0.792880,
		0.230962, 0.810516, -0.538256,
		66.757271, 59.613319, 60.903931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.212555, 58.769661, 60.945091>,  <66.595596, 59.045956, 61.280708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.212555, 58.769661, 60.945091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.210930, 59.167179, 60.989540>,  <67.209953, 59.405689, 61.016209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.210930, 59.167179, 60.989540>,  <67.212555, 58.769661, 60.945091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.210930, 59.167179, 60.989540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980038, -0.018136, 0.197979,
		0.198767, 0.109706, -0.973887,
		-0.004057, 0.993799, 0.111121,
		67.209709, 59.465321, 61.022877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.673203, 59.185013, 60.426712>,  <67.212555, 58.769661, 60.945091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.673203, 59.185013, 60.426712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.666016, 59.366859, 60.782913>,  <67.661705, 59.475967, 60.996635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.666016, 59.366859, 60.782913>,  <67.673203, 59.185013, 60.426712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.666016, 59.366859, 60.782913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978029, 0.193004, -0.078793,
		-0.207692, 0.869524, -0.448099,
		-0.017973, 0.454618, 0.890505,
		67.660622, 59.503246, 61.050064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.153954, 59.779152, 60.391628>,  <67.673203, 59.185013, 60.426712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.153954, 59.779152, 60.391628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.126976, 59.705276, 60.783821>,  <68.110794, 59.660950, 61.019135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.126976, 59.705276, 60.783821>,  <68.153954, 59.779152, 60.391628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.126976, 59.705276, 60.783821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994372, -0.092918, 0.050892,
		0.081705, 0.978394, 0.189918,
		-0.067439, -0.184691, 0.980480,
		68.106743, 59.649868, 61.077965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.629745, 60.242599, 60.789047>,  <68.153954, 59.779152, 60.391628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.629745, 60.242599, 60.789047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.585785, 59.895184, 60.982361>,  <68.559410, 59.686733, 61.098351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.585785, 59.895184, 60.982361>,  <68.629745, 60.242599, 60.789047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.585785, 59.895184, 60.982361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993799, -0.104298, 0.038540,
		0.016933, 0.484525, 0.874613,
		-0.109894, -0.868537, 0.483287,
		68.552818, 59.634621, 61.127346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.871880, 60.110447, 61.609890>,  <68.629745, 60.242599, 60.789047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.871880, 60.110447, 61.609890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.901909, 59.794258, 61.366737>,  <68.919922, 59.604546, 61.220844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.901909, 59.794258, 61.366737>,  <68.871880, 60.110447, 61.609890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.901909, 59.794258, 61.366737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992130, -0.002059, 0.125196,
		-0.100215, -0.612498, 0.784094,
		0.075068, -0.790469, -0.607884,
		68.924431, 59.557117, 61.184372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.415169, 59.653706, 61.808327>,  <68.871880, 60.110447, 61.609890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.415169, 59.653706, 61.808327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.394623, 59.587166, 61.414436>,  <69.382294, 59.547241, 61.178101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.394623, 59.587166, 61.414436>,  <69.415169, 59.653706, 61.808327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.394623, 59.587166, 61.414436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985636, -0.167289, -0.023156,
		-0.160882, -0.971773, 0.172551,
		-0.051368, -0.166347, -0.984728,
		69.379211, 59.537262, 61.119019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.633049, 58.905926, 61.538811>,  <69.415169, 59.653706, 61.808327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.633049, 58.905926, 61.538811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.683655, 59.200172, 61.272621>,  <69.714020, 59.376720, 61.112907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.683655, 59.200172, 61.272621>,  <69.633049, 58.905926, 61.538811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.683655, 59.200172, 61.272621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931829, -0.318161, -0.174551,
		-0.340132, -0.598026, -0.725724,
		0.126511, 0.735621, -0.665475,
		69.721611, 59.420860, 61.072979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.935028, 58.678165, 60.919033>,  <69.633049, 58.905926, 61.538811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.935028, 58.678165, 60.919033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.039925, 59.056179, 60.997147>,  <70.102859, 59.282990, 61.044014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.039925, 59.056179, 60.997147>,  <69.935028, 58.678165, 60.919033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.039925, 59.056179, 60.997147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960745, -0.236684, -0.144743,
		-0.090568, 0.225572, -0.970008,
		0.262236, 0.945039, 0.195281,
		70.118599, 59.339691, 61.055733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.511086, 58.874535, 60.470589>,  <69.935028, 58.678165, 60.919033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.511086, 58.874535, 60.470589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.543739, 59.127274, 60.778900>,  <70.563332, 59.278919, 60.963886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.543739, 59.127274, 60.778900>,  <70.511086, 58.874535, 60.470589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.543739, 59.127274, 60.778900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981201, 0.084743, -0.173385,
		-0.174871, 0.770445, -0.613054,
		0.081632, 0.631849, 0.770780,
		70.568230, 59.316830, 61.010136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.001305, 59.559849, 60.367870>,  <70.511086, 58.874535, 60.470589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.001305, 59.559849, 60.367870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.986191, 59.511105, 60.764603>,  <70.977119, 59.481857, 61.002640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.986191, 59.511105, 60.764603>,  <71.001305, 59.559849, 60.367870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.986191, 59.511105, 60.764603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997070, 0.061456, 0.045542,
		-0.066503, 0.990643, 0.119180,
		-0.037792, -0.121860, 0.991828,
		70.974854, 59.474548, 61.062149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.392357, 60.204655, 60.805954>,  <71.001305, 59.559849, 60.367870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.392357, 60.204655, 60.805954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.419937, 59.836399, 60.959663>,  <71.436485, 59.615444, 61.051888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.419937, 59.836399, 60.959663>,  <71.392357, 60.204655, 60.805954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.419937, 59.836399, 60.959663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993570, 0.098042, 0.056619,
		-0.089800, 0.377900, 0.921481,
		0.068947, -0.920641, 0.384274,
		71.440620, 59.560207, 61.074947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.788162, 60.226154, 61.498810>,  <71.392357, 60.204655, 60.805954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.788162, 60.226154, 61.498810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.785011, 59.850468, 61.361511>,  <71.783119, 59.625057, 61.279133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.785011, 59.850468, 61.361511>,  <71.788162, 60.226154, 61.498810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.785011, 59.850468, 61.361511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982296, -0.071509, 0.173151,
		-0.187171, -0.335808, 0.923147,
		-0.007868, -0.939212, -0.343247,
		71.782654, 59.568703, 61.258537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.976395, 59.725624, 62.051136>,  <71.788162, 60.226154, 61.498810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.976395, 59.725624, 62.051136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.065384, 59.587646, 61.686386>,  <72.118774, 59.504860, 61.467537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.065384, 59.587646, 61.686386>,  <71.976395, 59.725624, 62.051136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.065384, 59.587646, 61.686386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942044, -0.164861, 0.292190,
		-0.251122, -0.924033, 0.288274,
		0.222468, -0.344941, -0.911879,
		72.132126, 59.484165, 61.412823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.230705, 59.022507, 62.179893>,  <71.976395, 59.725624, 62.051136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.230705, 59.022507, 62.179893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.404266, 59.200470, 61.866516>,  <72.508400, 59.307247, 61.678490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.404266, 59.200470, 61.866516>,  <72.230705, 59.022507, 62.179893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.404266, 59.200470, 61.866516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897915, -0.142113, 0.416596,
		0.074008, -0.884231, -0.461150,
		0.433902, 0.444905, -0.783447,
		72.534439, 59.333942, 61.631481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.835297, 59.042301, 62.518398>,  <72.230705, 59.022507, 62.179893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.835297, 59.042301, 62.518398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.753998, 58.675995, 62.379799>,  <72.705223, 58.456211, 62.296638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.753998, 58.675995, 62.379799>,  <72.835297, 59.042301, 62.518398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.753998, 58.675995, 62.379799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564224, 0.179682, -0.805832,
		0.800216, -0.359279, 0.480180,
		-0.203239, -0.915769, -0.346498,
		72.693024, 58.401264, 62.275848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.342674, 58.759499, 62.212460>,  <72.835297, 59.042301, 62.518398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.342674, 58.759499, 62.212460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.048256, 58.563705, 62.025421>,  <72.871605, 58.446232, 61.913197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.048256, 58.563705, 62.025421>,  <73.342674, 58.759499, 62.212460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.048256, 58.563705, 62.025421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469638, 0.128241, -0.873496,
		0.487524, -0.862533, 0.135487,
		-0.736044, -0.489480, -0.467599,
		72.827446, 58.416862, 61.885143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.570602, 58.151920, 61.944248>,  <73.342674, 58.759499, 62.212460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.570602, 58.151920, 61.944248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.261574, 58.239124, 61.705719>,  <73.076157, 58.291447, 61.562603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.261574, 58.239124, 61.705719>,  <73.570602, 58.151920, 61.944248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.261574, 58.239124, 61.705719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603481, -0.039753, -0.796386,
		-0.197322, -0.975138, -0.100850,
		-0.772577, 0.218006, -0.596321,
		73.029800, 58.304527, 61.526821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.306519, 57.585960, 61.507141>,  <73.570602, 58.151920, 61.944248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.306519, 57.585960, 61.507141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.177818, 57.917141, 61.323418>,  <73.100594, 58.115849, 61.213184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.177818, 57.917141, 61.323418>,  <73.306519, 57.585960, 61.507141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.177818, 57.917141, 61.323418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312390, -0.365108, -0.876989,
		-0.893803, -0.425662, -0.141168,
		-0.321759, 0.827955, -0.459307,
		73.081291, 58.165527, 61.185627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.713051, 57.455910, 61.019142>,  <73.306519, 57.585960, 61.507141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.713051, 57.455910, 61.019142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.972420, 57.746704, 60.928780>,  <73.128044, 57.921181, 60.874561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.972420, 57.746704, 60.928780>,  <72.713051, 57.455910, 61.019142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.972420, 57.746704, 60.928780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313595, -0.525479, -0.790904,
		-0.693683, 0.442003, -0.568715,
		0.648430, 0.726983, -0.225906,
		73.166946, 57.964798, 60.861008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.592720, 57.905258, 60.306664>,  <72.713051, 57.455910, 61.019142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.592720, 57.905258, 60.306664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.958260, 57.831009, 60.451126>,  <73.177582, 57.786461, 60.537804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.958260, 57.831009, 60.451126>,  <72.592720, 57.905258, 60.306664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.958260, 57.831009, 60.451126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220084, -0.521032, -0.824675,
		0.341251, 0.833109, -0.435289,
		0.913844, -0.185620, 0.361157,
		73.232414, 57.775322, 60.559475>
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
