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
	<36.747566, 52.998672, 49.282131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435448, 53.066769, 49.522846>,  <36.248177, 53.107628, 49.667274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435448, 53.066769, 49.522846>,  <36.747566, 52.998672, 49.282131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435448, 53.066769, 49.522846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165487, 0.871737, -0.461181,
		-0.603114, -0.459448, -0.652044,
		-0.780300, 0.170240, 0.601790,
		36.201359, 53.117840, 49.703384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431393, 53.407566, 49.589272>,  <36.747566, 52.998672, 49.282131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431393, 53.407566, 49.589272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052891, 53.494720, 49.493660>,  <36.825790, 53.547012, 49.436295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052891, 53.494720, 49.493660>,  <37.431393, 53.407566, 49.589272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052891, 53.494720, 49.493660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254505, 0.957666, -0.134547,
		0.199591, -0.188149, -0.961646,
		-0.946251, 0.217889, -0.239027,
		36.769016, 53.560085, 49.421951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158810, 53.247181, 49.617691>,  <37.431393, 53.407566, 49.589272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158810, 53.247181, 49.617691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282288, 53.455406, 49.936119>,  <38.356373, 53.580341, 50.127174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282288, 53.455406, 49.936119>,  <38.158810, 53.247181, 49.617691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282288, 53.455406, 49.936119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696852, -0.693418, 0.183217,
		0.647384, 0.498184, -0.576807,
		0.308693, 0.520561, 0.796068,
		38.374897, 53.611576, 50.174938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951199, 53.319672, 49.345470>,  <38.158810, 53.247181, 49.617691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951199, 53.319672, 49.345470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853092, 53.328320, 49.733154>,  <38.794228, 53.333508, 49.965767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853092, 53.328320, 49.733154>,  <38.951199, 53.319672, 49.345470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853092, 53.328320, 49.733154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773650, -0.598109, 0.209121,
		0.584217, 0.801123, 0.129970,
		-0.245267, 0.021621, 0.969214,
		38.779510, 53.334805, 50.023918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550774, 53.533485, 49.748222>,  <38.951199, 53.319672, 49.345470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550774, 53.533485, 49.748222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314507, 53.279076, 49.946854>,  <39.172749, 53.126431, 50.066032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314507, 53.279076, 49.946854>,  <39.550774, 53.533485, 49.748222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314507, 53.279076, 49.946854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766664, -0.634289, 0.099516,
		0.251679, 0.439490, 0.862268,
		-0.590664, -0.636024, 0.496578,
		39.137306, 53.088268, 50.095829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928631, 53.068645, 50.342392>,  <39.550774, 53.533485, 49.748222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928631, 53.068645, 50.342392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644188, 52.810699, 50.230339>,  <39.473522, 52.655930, 50.163109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644188, 52.810699, 50.230339>,  <39.928631, 53.068645, 50.342392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644188, 52.810699, 50.230339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598485, -0.764288, 0.240165,
		-0.368973, 0.003131, 0.929435,
		-0.711108, -0.644867, -0.280128,
		39.430855, 52.617241, 50.146301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250393, 53.536335, 49.853840>,  <39.928631, 53.068645, 50.342392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250393, 53.536335, 49.853840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.357670, 53.920780, 49.827530>,  <40.422035, 54.151447, 49.811745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.357670, 53.920780, 49.827530>,  <40.250393, 53.536335, 49.853840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357670, 53.920780, 49.827530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958096, -0.273234, -0.085995,
		-0.100623, -0.039955, -0.994122,
		0.268192, 0.961117, -0.065774,
		40.438129, 54.209114, 49.807796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941257, 53.445637, 50.102375>,  <40.250393, 53.536335, 49.853840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941257, 53.445637, 50.102375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293251, 53.407681, 50.288551>,  <41.504448, 53.384907, 50.400257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293251, 53.407681, 50.288551>,  <40.941257, 53.445637, 50.102375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.293251, 53.407681, 50.288551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153673, 0.870283, 0.467966,
		-0.449466, -0.483326, 0.751250,
		0.879980, -0.094888, 0.465437,
		41.557243, 53.379215, 50.428181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844559, 53.585667, 50.903152>,  <40.941257, 53.445637, 50.102375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844559, 53.585667, 50.903152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228035, 53.630295, 50.798492>,  <41.458122, 53.657070, 50.735695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228035, 53.630295, 50.798492>,  <40.844559, 53.585667, 50.903152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228035, 53.630295, 50.798492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000520, 0.920551, 0.390621,
		0.284446, -0.374349, 0.882583,
		0.958692, 0.111570, -0.261653,
		41.515644, 53.663765, 50.719997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201214, 53.744179, 51.462185>,  <40.844559, 53.585667, 50.903152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201214, 53.744179, 51.462185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363384, 53.900593, 51.131676>,  <41.460686, 53.994442, 50.933372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363384, 53.900593, 51.131676>,  <41.201214, 53.744179, 51.462185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363384, 53.900593, 51.131676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028305, 0.898086, 0.438909,
		0.913691, -0.201331, 0.353036,
		0.405422, 0.391034, -0.826271,
		41.485012, 54.017902, 50.883793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490711, 54.459900, 51.768471>,  <41.201214, 53.744179, 51.462185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.490711, 54.459900, 51.768471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.494087, 54.486782, 51.369389>,  <41.496113, 54.502911, 51.129940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.494087, 54.486782, 51.369389>,  <41.490711, 54.459900, 51.768471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494087, 54.486782, 51.369389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054245, 0.996239, 0.067567,
		0.998492, -0.054690, 0.004764,
		0.008441, 0.067207, -0.997704,
		41.496620, 54.506943, 51.070076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.154575, 54.774151, 51.520763>,  <41.490711, 54.459900, 51.768471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.154575, 54.774151, 51.520763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.823338, 54.839825, 51.306358>,  <41.624596, 54.879227, 51.177715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.823338, 54.839825, 51.306358>,  <42.154575, 54.774151, 51.520763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.823338, 54.839825, 51.306358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047038, 0.973130, 0.225401,
		0.558615, 0.161440, -0.813564,
		-0.828093, 0.164181, -0.536011,
		41.574909, 54.889080, 51.145554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.382694, 55.245171, 51.088333>,  <42.154575, 54.774151, 51.520763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.382694, 55.245171, 51.088333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.987915, 55.279861, 51.142609>,  <41.751049, 55.300674, 51.175175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.987915, 55.279861, 51.142609>,  <42.382694, 55.245171, 51.088333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.987915, 55.279861, 51.142609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137861, 0.890495, 0.433603,
		-0.083224, 0.446650, -0.890830,
		-0.986949, 0.086725, 0.135686,
		41.691830, 55.305878, 51.183315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793301, 55.527634, 51.732418>,  <42.382694, 55.245171, 51.088333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793301, 55.527634, 51.732418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.922073, 55.312767, 52.044266>,  <42.999336, 55.183849, 52.231377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.922073, 55.312767, 52.044266>,  <42.793301, 55.527634, 51.732418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.922073, 55.312767, 52.044266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899827, -0.082459, -0.428383,
		0.294399, 0.839437, 0.456809,
		0.321933, -0.537165, 0.779624,
		43.018654, 55.151619, 52.278152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.265892, 55.781509, 52.129719>,  <42.793301, 55.527634, 51.732418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.265892, 55.781509, 52.129719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.320099, 55.385254, 52.123047>,  <43.352623, 55.147503, 52.119045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.320099, 55.385254, 52.123047>,  <43.265892, 55.781509, 52.129719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.320099, 55.385254, 52.123047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886791, 0.128786, -0.443865,
		0.441855, 0.045365, 0.895939,
		0.135521, -0.990634, -0.016675,
		43.360756, 55.088062, 52.118046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.893585, 55.632397, 52.414486>,  <43.265892, 55.781509, 52.129719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.893585, 55.632397, 52.414486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.773438, 55.371624, 52.135986>,  <43.701351, 55.215160, 51.968887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.773438, 55.371624, 52.135986>,  <43.893585, 55.632397, 52.414486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.773438, 55.371624, 52.135986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695537, 0.349800, -0.627589,
		0.652694, -0.672775, 0.348374,
		-0.300365, -0.651931, -0.696252,
		43.683327, 55.176044, 51.927109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.535259, 55.096008, 52.264896>,  <43.893585, 55.632397, 52.414486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.535259, 55.096008, 52.264896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.263187, 55.203453, 51.992073>,  <44.099945, 55.267921, 51.828377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.263187, 55.203453, 51.992073>,  <44.535259, 55.096008, 52.264896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.263187, 55.203453, 51.992073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733045, 0.251810, -0.631852,
		0.002028, -0.929753, -0.368179,
		-0.680177, 0.268611, -0.682061,
		44.059135, 55.284035, 51.787457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.770142, 54.869698, 51.630554>,  <44.535259, 55.096008, 52.264896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.770142, 54.869698, 51.630554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.549580, 55.192162, 51.544712>,  <44.417244, 55.385639, 51.493206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.549580, 55.192162, 51.544712>,  <44.770142, 54.869698, 51.630554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.549580, 55.192162, 51.544712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723891, 0.334507, -0.603396,
		-0.414650, -0.488063, -0.768023,
		-0.551404, 0.806164, -0.214601,
		44.384159, 55.434010, 51.480331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.834320, 54.997066, 50.869362>,  <44.770142, 54.869698, 51.630554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.834320, 54.997066, 50.869362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.756508, 55.314461, 51.100029>,  <44.709820, 55.504898, 51.238430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.756508, 55.314461, 51.100029>,  <44.834320, 54.997066, 50.869362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.756508, 55.314461, 51.100029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615897, 0.556367, -0.557787,
		-0.763432, 0.246663, -0.596933,
		-0.194528, 0.793482, 0.576668,
		44.698151, 55.552505, 51.273029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.533592, 55.423077, 51.056599>,  <44.834320, 54.997066, 50.869362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.533592, 55.423077, 51.056599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.831589, 55.159340, 51.016090>,  <46.010387, 55.001099, 50.991787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.831589, 55.159340, 51.016090>,  <45.533592, 55.423077, 51.056599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.831589, 55.159340, 51.016090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607745, 0.733458, -0.304443,
		0.275008, 0.165262, 0.947132,
		0.744995, -0.659339, -0.101270,
		46.055088, 54.961540, 50.985710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.124523, 55.822441, 51.128849>,  <45.533592, 55.423077, 51.056599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.124523, 55.822441, 51.128849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.268105, 55.473690, 50.995598>,  <46.354252, 55.264439, 50.915646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.268105, 55.473690, 50.995598>,  <46.124523, 55.822441, 51.128849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.268105, 55.473690, 50.995598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857780, 0.448853, -0.250490,
		0.367923, -0.195838, 0.908999,
		0.358951, -0.871882, -0.333129,
		46.375790, 55.212124, 50.895660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.831974, 55.833370, 51.287594>,  <46.124523, 55.822441, 51.128849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.831974, 55.833370, 51.287594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.802448, 55.560143, 50.996948>,  <46.784733, 55.396206, 50.822559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.802448, 55.560143, 50.996948>,  <46.831974, 55.833370, 51.287594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.802448, 55.560143, 50.996948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944280, 0.186470, -0.271226,
		0.320758, -0.706148, 0.631244,
		-0.073818, -0.683070, -0.726613,
		46.780304, 55.355221, 50.778965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.270451, 55.284153, 51.417999>,  <46.831974, 55.833370, 51.287594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.270451, 55.284153, 51.417999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.236557, 55.362530, 51.027222>,  <47.216221, 55.409554, 50.792755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.236557, 55.362530, 51.027222>,  <47.270451, 55.284153, 51.417999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.236557, 55.362530, 51.027222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979635, 0.195506, -0.045756,
		0.182034, -0.960930, -0.208513,
		-0.084734, 0.195938, -0.976949,
		47.211136, 55.421310, 50.734138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.681641, 54.762646, 51.101707>,  <47.270451, 55.284153, 51.417999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.681641, 54.762646, 51.101707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.626255, 55.091511, 50.880844>,  <47.593025, 55.288830, 50.748325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.626255, 55.091511, 50.880844>,  <47.681641, 54.762646, 51.101707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.626255, 55.091511, 50.880844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983296, 0.180635, 0.022385,
		0.118144, -0.539838, -0.833437,
		-0.138463, 0.822159, -0.552161,
		47.584717, 55.338158, 50.715195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.189659, 54.799801, 50.510220>,  <47.681641, 54.762646, 51.101707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.189659, 54.799801, 50.510220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.066151, 55.161133, 50.629318>,  <47.992046, 55.377934, 50.700779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.066151, 55.161133, 50.629318>,  <48.189659, 54.799801, 50.510220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.066151, 55.161133, 50.629318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939481, 0.240794, 0.243708,
		0.148453, 0.354979, -0.923012,
		-0.308767, 0.903332, 0.297749,
		47.973522, 55.432133, 50.718643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.614937, 55.332458, 50.040096>,  <48.189659, 54.799801, 50.510220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.614937, 55.332458, 50.040096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.486214, 55.428249, 50.406506>,  <48.408981, 55.485722, 50.626350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.486214, 55.428249, 50.406506>,  <48.614937, 55.332458, 50.040096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.486214, 55.428249, 50.406506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918731, 0.312833, 0.240975,
		-0.228854, 0.919123, -0.320684,
		-0.321806, 0.239474, 0.916020,
		48.389671, 55.500092, 50.681313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.814064, 56.033146, 50.185257>,  <48.614937, 55.332458, 50.040096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.814064, 56.033146, 50.185257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.766064, 55.830120, 50.526543>,  <48.737263, 55.708305, 50.731316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.766064, 55.830120, 50.526543>,  <48.814064, 56.033146, 50.185257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.766064, 55.830120, 50.526543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947717, 0.197406, 0.250727,
		-0.295690, 0.838698, 0.457334,
		-0.120003, -0.507560, 0.853219,
		48.730064, 55.677853, 50.782509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.860210, 56.436230, 50.923256>,  <48.814064, 56.033146, 50.185257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.860210, 56.436230, 50.923256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.972435, 56.053947, 50.887688>,  <49.039772, 55.824577, 50.866348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.972435, 56.053947, 50.887688>,  <48.860210, 56.436230, 50.923256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.972435, 56.053947, 50.887688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959671, 0.277595, 0.044414,
		-0.017764, -0.097794, 0.995048,
		0.280564, -0.955708, -0.088919,
		49.056602, 55.767235, 50.861012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.070171, 56.166767, 51.564442>,  <48.860210, 56.436230, 50.923256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.070171, 56.166767, 51.564442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.237236, 56.020035, 51.231937>,  <49.337475, 55.931995, 51.032436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.237236, 56.020035, 51.231937>,  <49.070171, 56.166767, 51.564442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.237236, 56.020035, 51.231937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876076, 0.405186, 0.261372,
		0.240937, -0.837413, 0.490601,
		0.417662, -0.366830, -0.831261,
		49.362534, 55.909985, 50.982559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.620140, 55.825848, 51.769730>,  <49.070171, 56.166767, 51.564442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.620140, 55.825848, 51.769730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.653900, 56.016758, 51.419853>,  <49.674156, 56.131306, 51.209927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.653900, 56.016758, 51.419853>,  <49.620140, 55.825848, 51.769730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.653900, 56.016758, 51.419853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792991, 0.499365, 0.348997,
		0.603358, -0.723078, -0.336330,
		0.084401, 0.477277, -0.874690,
		49.679222, 56.159943, 51.157448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.275616, 55.732830, 51.428192>,  <49.620140, 55.825848, 51.769730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.275616, 55.732830, 51.428192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.113647, 56.080257, 51.313904>,  <50.016468, 56.288712, 51.245331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.113647, 56.080257, 51.313904>,  <50.275616, 55.732830, 51.428192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.113647, 56.080257, 51.313904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831163, 0.479875, 0.280868,
		0.381063, -0.123752, -0.916230,
		-0.404918, 0.868565, -0.285721,
		49.992172, 56.340828, 51.228188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.801395, 56.273491, 51.175602>,  <50.275616, 55.732830, 51.428192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.801395, 56.273491, 51.175602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.494431, 56.518055, 51.252815>,  <50.310253, 56.664795, 51.299145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.494431, 56.518055, 51.252815>,  <50.801395, 56.273491, 51.175602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.494431, 56.518055, 51.252815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635928, 0.687456, 0.350712,
		0.081725, 0.391897, -0.916372,
		-0.767409, 0.611409, 0.193036,
		50.264206, 56.701477, 51.310726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.777012, 57.056175, 50.836918>,  <50.801395, 56.273491, 51.175602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.777012, 57.056175, 50.836918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.635544, 56.994335, 51.205921>,  <50.550663, 56.957230, 51.427322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.635544, 56.994335, 51.205921>,  <50.777012, 57.056175, 50.836918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.635544, 56.994335, 51.205921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632843, 0.686701, 0.357703,
		-0.688787, 0.710310, -0.145027,
		-0.353670, -0.154601, 0.922505,
		50.529442, 56.947956, 51.482674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.518612, 57.673882, 51.148777>,  <50.777012, 57.056175, 50.836918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.518612, 57.673882, 51.148777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.673084, 57.405609, 51.402092>,  <50.765770, 57.244644, 51.554081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.673084, 57.405609, 51.402092>,  <50.518612, 57.673882, 51.148777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.673084, 57.405609, 51.402092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616572, 0.698324, 0.363569,
		-0.686076, 0.250060, 0.683205,
		0.386185, -0.670681, 0.633284,
		50.788940, 57.204403, 51.592075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.903236, 58.071636, 51.606682>,  <50.518612, 57.673882, 51.148777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.903236, 58.071636, 51.606682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.088787, 57.725491, 51.682545>,  <51.200119, 57.517803, 51.728062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.088787, 57.725491, 51.682545>,  <50.903236, 58.071636, 51.606682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.088787, 57.725491, 51.682545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642869, 0.476115, 0.600028,
		-0.609539, -0.156415, 0.777172,
		0.463877, -0.865360, 0.189657,
		51.227951, 57.465881, 51.739441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.469349, 57.773022, 52.092121>,  <50.903236, 58.071636, 51.606682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.469349, 57.773022, 52.092121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.751396, 57.810539, 52.373268>,  <51.920624, 57.833050, 52.541954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.751396, 57.810539, 52.373268>,  <51.469349, 57.773022, 52.092121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.751396, 57.810539, 52.373268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614816, 0.412988, -0.671894,
		-0.353293, 0.905894, 0.233539,
		0.705114, 0.093791, 0.702864,
		51.962929, 57.838676, 52.584126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.665043, 58.478214, 52.265610>,  <51.469349, 57.773022, 52.092121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.665043, 58.478214, 52.265610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.977741, 58.230137, 52.291618>,  <52.165359, 58.081291, 52.307224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.977741, 58.230137, 52.291618>,  <51.665043, 58.478214, 52.265610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.977741, 58.230137, 52.291618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551345, 0.638687, -0.536747,
		0.291357, 0.455452, 0.841234,
		0.781748, -0.620195, 0.065025,
		52.212265, 58.044079, 52.311127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.256756, 58.783722, 52.620148>,  <51.665043, 58.478214, 52.265610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.256756, 58.783722, 52.620148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.385979, 58.503365, 52.365784>,  <52.463512, 58.335152, 52.213165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.385979, 58.503365, 52.365784>,  <52.256756, 58.783722, 52.620148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.385979, 58.503365, 52.365784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468508, 0.702273, -0.536015,
		0.822273, -0.124765, 0.555248,
		0.323060, -0.700889, -0.635914,
		52.482895, 58.293098, 52.175011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.651009, 59.219738, 52.087650>,  <52.256756, 58.783722, 52.620148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.651009, 59.219738, 52.087650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.857738, 59.203747, 52.429714>,  <52.981777, 59.194153, 52.634953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.857738, 59.203747, 52.429714>,  <52.651009, 59.219738, 52.087650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.857738, 59.203747, 52.429714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548418, 0.782495, -0.294856,
		-0.657370, 0.621373, 0.426335,
		0.516820, -0.039980, 0.855160,
		53.012783, 59.191753, 52.686264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.680382, 59.933975, 52.569672>,  <52.651009, 59.219738, 52.087650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.680382, 59.933975, 52.569672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.986679, 59.692238, 52.657677>,  <53.170456, 59.547195, 52.710480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.986679, 59.692238, 52.657677>,  <52.680382, 59.933975, 52.569672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.986679, 59.692238, 52.657677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637926, 0.757201, -0.140349,
		-0.081775, 0.247823, 0.965348,
		0.765744, -0.604343, 0.220012,
		53.216404, 59.510933, 52.723679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.099567, 60.183849, 53.176022>,  <52.680382, 59.933975, 52.569672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.099567, 60.183849, 53.176022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.326870, 59.932076, 52.964024>,  <53.463249, 59.781010, 52.836826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.326870, 59.932076, 52.964024>,  <53.099567, 60.183849, 53.176022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.326870, 59.932076, 52.964024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777355, 0.621858, 0.094933,
		0.269827, -0.465940, 0.842670,
		0.568254, -0.629439, -0.529995,
		53.497345, 59.743244, 52.805027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.655220, 60.127193, 53.501919>,  <53.099567, 60.183849, 53.176022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.655220, 60.127193, 53.501919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.748455, 60.085011, 53.115231>,  <53.804394, 60.059700, 52.883217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.748455, 60.085011, 53.115231>,  <53.655220, 60.127193, 53.501919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.748455, 60.085011, 53.115231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779087, 0.615180, 0.120733,
		0.581976, -0.781301, 0.225551,
		0.233083, -0.105460, -0.966721,
		53.818378, 60.053371, 52.825214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.341152, 59.842243, 53.310341>,  <53.655220, 60.127193, 53.501919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.341152, 59.842243, 53.310341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.221779, 60.089954, 53.019844>,  <54.150154, 60.238583, 52.845547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.221779, 60.089954, 53.019844>,  <54.341152, 59.842243, 53.310341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.221779, 60.089954, 53.019844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890047, 0.455313, 0.022504,
		0.344603, -0.639672, -0.687073,
		-0.298438, 0.619282, -0.726240,
		54.132248, 60.275738, 52.801971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.495911, 59.351650, 52.729137>,  <54.341152, 59.842243, 53.310341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.495911, 59.351650, 52.729137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.855522, 59.251766, 52.873020>,  <55.071289, 59.191833, 52.959351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.855522, 59.251766, 52.873020>,  <54.495911, 59.351650, 52.729137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.855522, 59.251766, 52.873020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394631, 0.106069, -0.912697,
		0.189758, 0.962493, 0.193904,
		0.899032, -0.249712, 0.359703,
		55.125233, 59.176853, 52.980930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.058697, 59.835526, 52.686321>,  <54.495911, 59.351650, 52.729137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.058697, 59.835526, 52.686321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.164101, 59.449860, 52.674026>,  <55.227345, 59.218460, 52.666649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.164101, 59.449860, 52.674026>,  <55.058697, 59.835526, 52.686321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.164101, 59.449860, 52.674026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540706, 0.174015, -0.823017,
		0.798875, 0.200251, 0.567185,
		0.263508, -0.964167, -0.030739,
		55.243153, 59.160610, 52.664806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.740986, 59.791374, 52.544441>,  <55.058697, 59.835526, 52.686321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.740986, 59.791374, 52.544441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.569344, 59.443657, 52.446304>,  <55.466358, 59.235027, 52.387424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.569344, 59.443657, 52.446304>,  <55.740986, 59.791374, 52.544441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.569344, 59.443657, 52.446304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482236, 0.009184, -0.875993,
		0.763752, -0.494205, 0.415265,
		-0.429106, -0.869297, -0.245338,
		55.440613, 59.182869, 52.372704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.861916, 60.019428, 51.919037>,  <55.740986, 59.791374, 52.544441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.861916, 60.019428, 51.919037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.066437, 60.362938, 51.932144>,  <56.189148, 60.569046, 51.940010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.066437, 60.362938, 51.932144>,  <55.861916, 60.019428, 51.919037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.066437, 60.362938, 51.932144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707597, -0.442315, 0.551057,
		0.487730, -0.258567, -0.833824,
		0.511298, 0.858778, 0.032770,
		56.219826, 60.620571, 51.941975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.587357, 59.850262, 51.796059>,  <55.861916, 60.019428, 51.919037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.587357, 59.850262, 51.796059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.543076, 60.161694, 52.043140>,  <56.516506, 60.348553, 52.191391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.543076, 60.161694, 52.043140>,  <56.587357, 59.850262, 51.796059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.543076, 60.161694, 52.043140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633135, -0.423839, 0.647689,
		0.766085, 0.462789, -0.446027,
		-0.110699, 0.778580, 0.617705,
		56.509865, 60.395267, 52.228451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.300167, 60.099922, 52.034603>,  <56.587357, 59.850262, 51.796059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.300167, 60.099922, 52.034603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.010536, 60.147411, 52.306374>,  <56.836758, 60.175907, 52.469437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.010536, 60.147411, 52.306374>,  <57.300167, 60.099922, 52.034603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.010536, 60.147411, 52.306374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609651, -0.350496, 0.710970,
		0.322546, 0.929008, 0.181405,
		-0.724079, 0.118726, 0.679422,
		56.793312, 60.183029, 52.510201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.860977, 59.929180, 52.475960>,  <57.300167, 60.099922, 52.034603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.860977, 59.929180, 52.475960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.529732, 59.727310, 52.573555>,  <57.330982, 59.606190, 52.632111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.529732, 59.727310, 52.573555>,  <57.860977, 59.929180, 52.475960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.529732, 59.727310, 52.573555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151524, -0.620587, -0.769359,
		0.539688, -0.600149, 0.590388,
		-0.828117, -0.504671, 0.243987,
		57.281296, 59.575909, 52.646751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.090382, 59.259613, 52.408161>,  <57.860977, 59.929180, 52.475960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.090382, 59.259613, 52.408161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.696365, 59.299778, 52.352139>,  <57.459957, 59.323875, 52.318523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.696365, 59.299778, 52.352139>,  <58.090382, 59.259613, 52.408161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.696365, 59.299778, 52.352139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047424, -0.623394, -0.780468,
		-0.165675, -0.775434, 0.609306,
		-0.985039, 0.100408, -0.140056,
		57.400852, 59.329899, 52.310123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.813335, 58.536144, 52.172703>,  <58.090382, 59.259613, 52.408161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.813335, 58.536144, 52.172703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.580917, 58.828285, 52.029053>,  <57.441467, 59.003571, 51.942863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.580917, 58.828285, 52.029053>,  <57.813335, 58.536144, 52.172703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.580917, 58.828285, 52.029053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230996, -0.275118, -0.933248,
		-0.780403, -0.625214, -0.008854,
		-0.581043, 0.730355, -0.359125,
		57.406605, 59.047390, 51.921314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.475399, 58.207512, 52.313320>,  <57.813335, 58.536144, 52.172703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.475399, 58.207512, 52.313320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.856850, 58.327133, 52.326927>,  <59.085720, 58.398907, 52.335091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.856850, 58.327133, 52.326927>,  <58.475399, 58.207512, 52.313320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.856850, 58.327133, 52.326927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288737, 0.877072, 0.383896,
		0.084970, -0.375917, 0.922750,
		0.953630, 0.299052, 0.034017,
		59.142941, 58.416847, 52.337132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.803570, 58.270039, 53.001720>,  <58.475399, 58.207512, 52.313320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.803570, 58.270039, 53.001720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.976028, 58.552910, 52.777576>,  <59.079502, 58.722633, 52.643089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.976028, 58.552910, 52.777576>,  <58.803570, 58.270039, 53.001720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.976028, 58.552910, 52.777576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386879, 0.705957, 0.593253,
		0.815130, -0.038985, 0.577964,
		0.431146, 0.707180, -0.560365,
		59.105373, 58.765064, 52.609467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.316441, 58.725471, 53.365093>,  <58.803570, 58.270039, 53.001720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.316441, 58.725471, 53.365093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.100060, 58.885971, 53.069424>,  <58.970230, 58.982269, 52.892021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.100060, 58.885971, 53.069424>,  <59.316441, 58.725471, 53.365093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.100060, 58.885971, 53.069424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476324, 0.578174, 0.662443,
		0.693171, 0.710435, -0.121642,
		-0.540953, 0.401245, -0.739170,
		58.937775, 59.006344, 52.847672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.425491, 59.491341, 53.255486>,  <59.316441, 58.725471, 53.365093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.425491, 59.491341, 53.255486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.039864, 59.433208, 53.166534>,  <58.808487, 59.398327, 53.113163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.039864, 59.433208, 53.166534>,  <59.425491, 59.491341, 53.255486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.039864, 59.433208, 53.166534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264330, 0.608331, 0.748373,
		0.026515, 0.780263, -0.624889,
		-0.964068, -0.145334, -0.222377,
		58.750645, 59.389606, 53.099823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.201626, 60.045475, 53.487606>,  <59.425491, 59.491341, 53.255486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.201626, 60.045475, 53.487606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.851700, 59.853683, 53.459892>,  <58.641747, 59.738609, 53.443264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.851700, 59.853683, 53.459892>,  <59.201626, 60.045475, 53.487606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.851700, 59.853683, 53.459892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367928, 0.564513, 0.738887,
		-0.315170, 0.671879, -0.670258,
		-0.874813, -0.479481, -0.069286,
		58.589256, 59.709839, 53.439106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.886711, 60.509472, 53.902714>,  <59.201626, 60.045475, 53.487606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.886711, 60.509472, 53.902714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.011551, 60.218494, 54.147148>,  <59.086456, 60.043907, 54.293808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.011551, 60.218494, 54.147148>,  <58.886711, 60.509472, 53.902714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.011551, 60.218494, 54.147148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758071, 0.578380, 0.301337,
		-0.572644, 0.369198, 0.731965,
		0.312101, -0.727440, 0.611084,
		59.105183, 60.000263, 54.330475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.958881, 60.802059, 54.599148>,  <58.886711, 60.509472, 53.902714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.958881, 60.802059, 54.599148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.221336, 60.523205, 54.483578>,  <59.378811, 60.355892, 54.414234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.221336, 60.523205, 54.483578>,  <58.958881, 60.802059, 54.599148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.221336, 60.523205, 54.483578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751912, 0.636467, 0.171863,
		0.064080, -0.330014, 0.941798,
		0.656141, -0.697137, -0.288926,
		59.418179, 60.314064, 54.396900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.467628, 60.864864, 55.158085>,  <58.958881, 60.802059, 54.599148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.467628, 60.864864, 55.158085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.554024, 60.722916, 54.794235>,  <59.605862, 60.637745, 54.575924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.554024, 60.722916, 54.794235>,  <59.467628, 60.864864, 55.158085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.554024, 60.722916, 54.794235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801863, 0.596020, -0.042130,
		0.557104, -0.720294, 0.413293,
		0.215985, -0.354875, -0.909623,
		59.618820, 60.616451, 54.521347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.269394, 60.579720, 54.909515>,  <59.467628, 60.864864, 55.158085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.269394, 60.579720, 54.909515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.031494, 60.750542, 54.637077>,  <59.888752, 60.853035, 54.473614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.031494, 60.750542, 54.637077>,  <60.269394, 60.579720, 54.909515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.031494, 60.750542, 54.637077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716218, 0.666263, -0.207667,
		0.365102, -0.611323, -0.702129,
		-0.594754, 0.427057, -0.681094,
		59.853069, 60.878658, 54.432751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.693913, 60.469761, 54.306564>,  <60.269394, 60.579720, 54.909515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.693913, 60.469761, 54.306564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.458481, 60.793087, 54.301018>,  <60.317223, 60.987083, 54.297691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.458481, 60.793087, 54.301018>,  <60.693913, 60.469761, 54.306564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.458481, 60.793087, 54.301018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762340, 0.549230, -0.342323,
		-0.269090, -0.212056, -0.939480,
		-0.588582, 0.808319, -0.013867,
		60.281906, 61.035583, 54.296856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.979774, 60.827740, 53.808411>,  <60.693913, 60.469761, 54.306564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.979774, 60.827740, 53.808411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.802147, 61.082554, 54.060440>,  <60.695572, 61.235443, 54.211658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.802147, 61.082554, 54.060440>,  <60.979774, 60.827740, 53.808411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.802147, 61.082554, 54.060440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831779, 0.554517, 0.025576,
		-0.333091, 0.535436, -0.776118,
		-0.444065, 0.637039, 0.630069,
		60.668926, 61.273666, 54.249462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.595333, 60.447144, 53.978996>,  <60.979774, 60.827740, 53.808411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.595333, 60.447144, 53.978996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.829247, 60.428368, 53.655064>,  <61.969593, 60.417103, 53.460705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.829247, 60.428368, 53.655064>,  <61.595333, 60.447144, 53.978996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.829247, 60.428368, 53.655064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793235, -0.175795, 0.582988,
		-0.169719, -0.983308, -0.065582,
		0.584785, -0.046922, -0.809830,
		62.004681, 60.414284, 53.412113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.936031, 59.820271, 53.982082>,  <61.595333, 60.447144, 53.978996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.936031, 59.820271, 53.982082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.162666, 60.090469, 53.793327>,  <62.298649, 60.252590, 53.680073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.162666, 60.090469, 53.793327>,  <61.936031, 59.820271, 53.982082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.162666, 60.090469, 53.793327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807564, -0.341411, 0.480914,
		0.163749, -0.653560, -0.738949,
		0.566592, 0.675498, -0.471886,
		62.332645, 60.293118, 53.651760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.092083, 59.213131, 53.540855>,  <61.936031, 59.820271, 53.982082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.092083, 59.213131, 53.540855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.392380, 59.473671, 53.496803>,  <62.572559, 59.629993, 53.470371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.392380, 59.473671, 53.496803>,  <62.092083, 59.213131, 53.540855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.392380, 59.473671, 53.496803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599027, -0.600969, 0.529153,
		0.278482, -0.463226, -0.841350,
		0.750743, 0.651351, -0.110126,
		62.617603, 59.669075, 53.463764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.708958, 58.883591, 53.261742>,  <62.092083, 59.213131, 53.540855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.708958, 58.883591, 53.261742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.843071, 59.209690, 53.450615>,  <62.923538, 59.405350, 53.563938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.843071, 59.209690, 53.450615>,  <62.708958, 58.883591, 53.261742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.843071, 59.209690, 53.450615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846562, -0.480639, 0.228734,
		0.413423, 0.323038, -0.851309,
		0.335282, 0.815250, 0.472179,
		62.943657, 59.454266, 53.592270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.533630, 58.836086, 53.253044>,  <62.708958, 58.883591, 53.261742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.533630, 58.836086, 53.253044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.465996, 59.053558, 53.581875>,  <63.425415, 59.184044, 53.779175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.465996, 59.053558, 53.581875>,  <63.533630, 58.836086, 53.253044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.465996, 59.053558, 53.581875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760254, -0.458865, 0.459844,
		0.627233, 0.702746, -0.335747,
		-0.169091, 0.543682, 0.822081,
		63.415268, 59.216663, 53.828499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.153221, 59.317215, 53.433296>,  <63.533630, 58.836086, 53.253044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.153221, 59.317215, 53.433296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.904449, 59.133194, 53.686768>,  <63.755184, 59.022781, 53.838852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.904449, 59.133194, 53.686768>,  <64.153221, 59.317215, 53.433296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.904449, 59.133194, 53.686768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782954, -0.351669, 0.513139,
		-0.013224, 0.815281, 0.578914,
		-0.621938, -0.460049, 0.633678,
		63.717869, 58.995178, 53.876869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.193367, 59.547363, 54.201859>,  <64.153221, 59.317215, 53.433296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.193367, 59.547363, 54.201859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.056503, 59.173981, 54.158813>,  <63.974384, 58.949951, 54.132988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.056503, 59.173981, 54.158813>,  <64.193367, 59.547363, 54.201859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.056503, 59.173981, 54.158813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920837, -0.355908, 0.159338,
		-0.187036, -0.044574, 0.981341,
		-0.342165, -0.933457, -0.107613,
		63.953854, 58.893944, 54.126530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.230522, 59.337662, 54.950661>,  <64.193367, 59.547363, 54.201859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.230522, 59.337662, 54.950661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.180611, 58.967125, 55.092827>,  <64.150665, 58.744801, 55.178127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.180611, 58.967125, 55.092827>,  <64.230522, 59.337662, 54.950661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.180611, 58.967125, 55.092827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821243, 0.104591, 0.560911,
		-0.556770, 0.361868, 0.747703,
		-0.124773, -0.926344, 0.355414,
		64.143181, 58.689220, 55.199451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.542465, 59.357208, 55.559917>,  <64.230522, 59.337662, 54.950661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.542465, 59.357208, 55.559917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.494102, 58.960209, 55.552612>,  <64.465080, 58.722012, 55.548229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.494102, 58.960209, 55.552612>,  <64.542465, 59.357208, 55.559917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.494102, 58.960209, 55.552612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637950, -0.091793, 0.764587,
		-0.760525, 0.080798, 0.644261,
		-0.120915, -0.992495, -0.018266,
		64.457825, 58.662460, 55.547134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.105400, 58.968750, 56.075005>,  <64.542465, 59.357208, 55.559917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.105400, 58.968750, 56.075005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.433998, 58.792656, 55.930038>,  <64.631157, 58.687000, 55.843060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.433998, 58.792656, 55.930038>,  <64.105400, 58.968750, 56.075005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.433998, 58.792656, 55.930038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503894, 0.262953, 0.822767,
		-0.266909, -0.858517, 0.437844,
		0.821493, -0.440231, -0.362417,
		64.680443, 58.660587, 55.821312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.489136, 58.692417, 56.633884>,  <64.105400, 58.968750, 56.075005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.489136, 58.692417, 56.633884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.762619, 58.751427, 56.348007>,  <64.926712, 58.786835, 56.176483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.762619, 58.751427, 56.348007>,  <64.489136, 58.692417, 56.633884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.762619, 58.751427, 56.348007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656013, 0.304760, 0.690484,
		0.319678, -0.940933, 0.111583,
		0.683706, 0.147533, -0.714689,
		64.967728, 58.795685, 56.133602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.110878, 58.485275, 56.980278>,  <64.489136, 58.692417, 56.633884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.110878, 58.485275, 56.980278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.248329, 58.715050, 56.683105>,  <65.330795, 58.852917, 56.504803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.248329, 58.715050, 56.683105>,  <65.110878, 58.485275, 56.980278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.248329, 58.715050, 56.683105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763931, 0.289134, 0.576898,
		0.546199, -0.765781, -0.339479,
		0.343623, 0.574440, -0.742928,
		65.351418, 58.887383, 56.460228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.815376, 58.381046, 56.940525>,  <65.110878, 58.485275, 56.980278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.815376, 58.381046, 56.940525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.794502, 58.737419, 56.760071>,  <65.781975, 58.951241, 56.651798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.794502, 58.737419, 56.760071>,  <65.815376, 58.381046, 56.940525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.794502, 58.737419, 56.760071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801602, 0.306792, 0.513141,
		0.595576, -0.334849, -0.730181,
		-0.052189, 0.890929, -0.451133,
		65.778847, 59.004700, 56.624729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.513824, 58.401512, 56.882591>,  <65.815376, 58.381046, 56.940525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.513824, 58.401512, 56.882591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.337433, 58.759457, 56.910202>,  <66.231598, 58.974224, 56.926769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.337433, 58.759457, 56.910202>,  <66.513824, 58.401512, 56.882591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.337433, 58.759457, 56.910202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770871, 0.338249, 0.539765,
		0.459666, 0.291234, -0.838981,
		-0.440982, 0.894858, 0.069022,
		66.205139, 59.027912, 56.930908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.998543, 58.891346, 57.167580>,  <66.513824, 58.401512, 56.882591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.998543, 58.891346, 57.167580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.674980, 59.125343, 57.191025>,  <66.480843, 59.265743, 57.205093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.674980, 59.125343, 57.191025>,  <66.998543, 58.891346, 57.167580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.674980, 59.125343, 57.191025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481291, 0.601644, 0.637482,
		0.337661, 0.543879, -0.768232,
		-0.808915, 0.584996, 0.058612,
		66.432304, 59.300842, 57.208607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.241074, 59.568550, 57.210316>,  <66.998543, 58.891346, 57.167580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.241074, 59.568550, 57.210316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.875954, 59.588280, 57.372482>,  <66.656883, 59.600117, 57.469784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.875954, 59.588280, 57.372482>,  <67.241074, 59.568550, 57.210316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.875954, 59.588280, 57.372482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352116, 0.597952, 0.720047,
		-0.206908, 0.800013, -0.563177,
		-0.912800, 0.049320, 0.405419,
		66.602112, 59.603077, 57.494106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.164551, 60.246872, 57.270969>,  <67.241074, 59.568550, 57.210316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.164551, 60.246872, 57.270969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.968117, 60.017532, 57.533302>,  <66.850258, 59.879929, 57.690701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.968117, 60.017532, 57.533302>,  <67.164551, 60.246872, 57.270969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.968117, 60.017532, 57.533302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421152, 0.502765, 0.754890,
		-0.762540, 0.646918, -0.005434,
		-0.491083, -0.573346, 0.655829,
		66.820793, 59.845528, 57.730053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.652702, 60.608295, 57.715813>,  <67.164551, 60.246872, 57.270969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.652702, 60.608295, 57.715813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.812920, 60.281532, 57.881813>,  <66.909050, 60.085476, 57.981415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.812920, 60.281532, 57.881813>,  <66.652702, 60.608295, 57.715813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.812920, 60.281532, 57.881813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494729, 0.574041, 0.652472,
		-0.771239, -0.056029, 0.634076,
		0.400543, -0.816908, 0.415003,
		66.933083, 60.036461, 58.006313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.565979, 60.584454, 58.360802>,  <66.652702, 60.608295, 57.715813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.565979, 60.584454, 58.360802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.875328, 60.331474, 58.343307>,  <67.060936, 60.179688, 58.332809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.875328, 60.331474, 58.343307>,  <66.565979, 60.584454, 58.360802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.875328, 60.331474, 58.343307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474637, 0.531888, 0.701295,
		-0.420271, -0.563116, 0.711528,
		0.773364, -0.632452, -0.043738,
		67.107338, 60.141739, 58.330185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.668877, 60.436108, 59.071659>,  <66.565979, 60.584454, 58.360802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.668877, 60.436108, 59.071659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.997574, 60.402748, 58.846169>,  <67.194794, 60.382732, 58.710876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.997574, 60.402748, 58.846169>,  <66.668877, 60.436108, 59.071659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.997574, 60.402748, 58.846169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495655, 0.592718, 0.634832,
		0.281184, -0.801081, 0.528399,
		0.821743, -0.083399, -0.563722,
		67.244095, 60.377728, 58.677052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.364128, 59.638824, 59.148209>,  <66.668877, 60.436108, 59.071659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.364128, 59.638824, 59.148209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.611649, 59.702866, 58.840584>,  <66.760162, 59.741291, 58.656010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.611649, 59.702866, 58.840584>,  <66.364128, 59.638824, 59.148209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.611649, 59.702866, 58.840584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750974, 0.166690, 0.638946,
		0.230495, -0.972924, -0.017088,
		0.618797, 0.160107, -0.769062,
		66.797287, 59.750896, 58.609867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.918678, 59.256561, 59.202351>,  <66.364128, 59.638824, 59.148209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.918678, 59.256561, 59.202351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.051285, 59.550186, 58.965286>,  <67.130852, 59.726360, 58.823048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.051285, 59.550186, 58.965286>,  <66.918678, 59.256561, 59.202351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.051285, 59.550186, 58.965286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760964, 0.163292, 0.627909,
		0.557701, -0.659158, -0.504461,
		0.331517, 0.734062, -0.592663,
		67.150742, 59.770405, 58.787487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.582207, 59.082684, 58.968781>,  <66.918678, 59.256561, 59.202351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.582207, 59.082684, 58.968781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.527039, 59.473320, 59.034805>,  <67.493935, 59.707703, 59.074421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.527039, 59.473320, 59.034805>,  <67.582207, 59.082684, 58.968781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.527039, 59.473320, 59.034805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914140, 0.061376, 0.400725,
		0.381214, 0.206165, -0.901206,
		-0.137928, 0.976591, 0.165066,
		67.485657, 59.766296, 59.084324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.958809, 59.661049, 58.467560>,  <67.582207, 59.082684, 58.968781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.958809, 59.661049, 58.467560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.916725, 59.744812, 58.856422>,  <67.891472, 59.795071, 59.089741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.916725, 59.744812, 58.856422>,  <67.958809, 59.661049, 58.467560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.916725, 59.744812, 58.856422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976656, -0.162342, 0.140672,
		0.187278, 0.964259, -0.187435,
		-0.105215, 0.209404, 0.972152,
		67.885162, 59.807632, 59.148067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.546516, 60.130341, 58.589184>,  <67.958809, 59.661049, 58.467560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.546516, 60.130341, 58.589184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.452713, 59.961105, 58.939270>,  <68.396431, 59.859566, 59.149323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.452713, 59.961105, 58.939270>,  <68.546516, 60.130341, 58.589184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.452713, 59.961105, 58.939270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954058, -0.272882, 0.123729,
		0.186483, 0.864022, 0.467643,
		-0.234516, -0.423086, 0.875215,
		68.382355, 59.834179, 59.201836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.948105, 60.421219, 59.129272>,  <68.546516, 60.130341, 58.589184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.948105, 60.421219, 59.129272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.838333, 60.040962, 59.187210>,  <68.772469, 59.812809, 59.221973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.838333, 60.040962, 59.187210>,  <68.948105, 60.421219, 59.129272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.838333, 60.040962, 59.187210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936132, -0.229662, 0.266293,
		-0.219883, 0.208670, 0.952947,
		-0.274423, -0.950638, 0.144844,
		68.756004, 59.755772, 59.230663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.354378, 60.271770, 59.620365>,  <68.948105, 60.421219, 59.129272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.354378, 60.271770, 59.620365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.212547, 59.915161, 59.507607>,  <69.127449, 59.701195, 59.439953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.212547, 59.915161, 59.507607>,  <69.354378, 60.271770, 59.620365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.212547, 59.915161, 59.507607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872957, -0.423655, 0.241790,
		-0.334987, -0.160347, 0.928479,
		-0.354584, -0.891519, -0.281894,
		69.106171, 59.647705, 59.423038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.627632, 59.747196, 59.973812>,  <69.354378, 60.271770, 59.620365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.627632, 59.747196, 59.973812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.482925, 59.526138, 59.673492>,  <69.396103, 59.393501, 59.493301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.482925, 59.526138, 59.673492>,  <69.627632, 59.747196, 59.973812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.482925, 59.526138, 59.673492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756732, -0.644448, 0.109742,
		-0.544502, -0.528456, 0.651346,
		-0.361765, -0.552649, -0.750803,
		69.374397, 59.360344, 59.448250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.634712, 59.054604, 60.225578>,  <69.627632, 59.747196, 59.973812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.634712, 59.054604, 60.225578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.669052, 59.114048, 59.831512>,  <69.689659, 59.149715, 59.595074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.669052, 59.114048, 59.831512>,  <69.634712, 59.054604, 60.225578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.669052, 59.114048, 59.831512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700852, -0.711802, -0.046303,
		-0.708122, -0.686478, -0.165263,
		0.085848, 0.148613, -0.985162,
		69.694809, 59.158630, 59.535965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.578102, 58.450485, 59.950161>,  <69.634712, 59.054604, 60.225578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.578102, 58.450485, 59.950161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.815971, 58.680702, 59.725624>,  <69.958694, 58.818832, 59.590900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.815971, 58.680702, 59.725624>,  <69.578102, 58.450485, 59.950161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.815971, 58.680702, 59.725624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702909, -0.711109, 0.015548,
		-0.390227, -0.403819, -0.827438,
		0.594677, 0.575547, -0.561342,
		69.994377, 58.853367, 59.557220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.688164, 58.088573, 59.341061>,  <69.578102, 58.450485, 59.950161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.688164, 58.088573, 59.341061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.990883, 58.340530, 59.410927>,  <70.172516, 58.491703, 59.452847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.990883, 58.340530, 59.410927>,  <69.688164, 58.088573, 59.341061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.990883, 58.340530, 59.410927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650277, -0.752642, -0.103293,
		0.066401, 0.191755, -0.979194,
		0.756790, 0.629889, 0.174670,
		70.217918, 58.529495, 59.463329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.191269, 57.955288, 58.866718>,  <69.688164, 58.088573, 59.341061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.191269, 57.955288, 58.866718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.388008, 58.124817, 59.170944>,  <70.506050, 58.226532, 59.353481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.388008, 58.124817, 59.170944>,  <70.191269, 57.955288, 58.866718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.388008, 58.124817, 59.170944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674339, -0.738004, -0.024840,
		0.550773, 0.525097, -0.648785,
		0.491849, 0.423820, 0.760566,
		70.535561, 58.251965, 59.399113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.885651, 58.059383, 58.751648>,  <70.191269, 57.955288, 58.866718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.885651, 58.059383, 58.751648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.871674, 57.979160, 59.143272>,  <70.863289, 57.931026, 59.378246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.871674, 57.979160, 59.143272>,  <70.885651, 58.059383, 58.751648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.871674, 57.979160, 59.143272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693327, -0.710427, -0.120793,
		0.719776, 0.674588, 0.163872,
		-0.034934, -0.200561, 0.979058,
		70.861191, 57.918991, 59.436989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.531166, 58.138893, 59.042282>,  <70.885651, 58.059383, 58.751648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.531166, 58.138893, 59.042282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.316582, 57.850521, 59.217773>,  <71.187836, 57.677498, 59.323067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.316582, 57.850521, 59.217773>,  <71.531166, 58.138893, 59.042282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.316582, 57.850521, 59.217773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761123, -0.637874, -0.117511,
		0.364568, 0.270883, 0.890905,
		-0.536454, -0.720929, 0.438724,
		71.155647, 57.634243, 59.349392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.999321, 57.827286, 59.486908>,  <71.531166, 58.138893, 59.042282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.999321, 57.827286, 59.486908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.715561, 57.549225, 59.440407>,  <71.545303, 57.382389, 59.412506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.715561, 57.549225, 59.440407>,  <71.999321, 57.827286, 59.486908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.715561, 57.549225, 59.440407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704633, -0.695905, -0.138593,
		0.015440, -0.180235, 0.983502,
		-0.709404, -0.695148, -0.116255,
		71.502739, 57.340679, 59.405529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.447289, 57.351139, 59.884289>,  <71.999321, 57.827286, 59.486908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.447289, 57.351139, 59.884289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.336533, 57.154358, 60.214455>,  <72.270081, 57.036289, 60.412556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.336533, 57.154358, 60.214455>,  <72.447289, 57.351139, 59.884289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.336533, 57.154358, 60.214455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413478, 0.836410, 0.359798,
		-0.867391, -0.241668, -0.435004,
		-0.276890, -0.491950, 0.825419,
		72.253464, 57.006771, 60.462082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.104164, 57.507824, 60.064705>,  <72.447289, 57.351139, 59.884289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.104164, 57.507824, 60.064705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.845596, 57.807922, 60.120232>,  <72.690453, 57.987980, 60.153549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.845596, 57.807922, 60.120232>,  <73.104164, 57.507824, 60.064705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.845596, 57.807922, 60.120232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738237, 0.660977, -0.134593,
		-0.192731, 0.015475, -0.981129,
		-0.646421, 0.750247, 0.138815,
		72.651672, 58.032997, 60.161877>
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
