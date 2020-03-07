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
	<36.560081, 53.240936, 49.709141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857666, 53.235359, 49.976372>,  <37.036217, 53.232014, 50.136711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857666, 53.235359, 49.976372>,  <36.560081, 53.240936, 49.709141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857666, 53.235359, 49.976372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629652, 0.349392, -0.693876,
		-0.223744, 0.936873, 0.268715,
		0.743960, -0.013947, 0.668078,
		37.080853, 53.231174, 50.176796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176266, 53.716667, 49.633205>,  <36.560081, 53.240936, 49.709141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176266, 53.716667, 49.633205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400295, 53.545578, 49.917000>,  <37.534714, 53.442924, 50.087276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400295, 53.545578, 49.917000>,  <37.176266, 53.716667, 49.633205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400295, 53.545578, 49.917000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814509, 0.440704, -0.377299,
		-0.151297, 0.789200, 0.595208,
		0.560075, -0.427719, 0.709488,
		37.568317, 53.417263, 50.129845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747589, 54.138508, 49.942982>,  <37.176266, 53.716667, 49.633205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747589, 54.138508, 49.942982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823345, 53.746208, 49.923950>,  <37.868797, 53.510830, 49.912533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823345, 53.746208, 49.923950>,  <37.747589, 54.138508, 49.942982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823345, 53.746208, 49.923950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750562, 0.175840, -0.636975,
		0.633079, 0.084926, 0.769415,
		0.189390, -0.980749, -0.047579,
		37.880161, 53.451984, 49.909676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401470, 53.922405, 50.136471>,  <37.747589, 54.138508, 49.942982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401470, 53.922405, 50.136471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281445, 53.697510, 49.828224>,  <38.209431, 53.562572, 49.643276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281445, 53.697510, 49.828224>,  <38.401470, 53.922405, 50.136471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281445, 53.697510, 49.828224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780677, 0.319498, -0.537089,
		0.548184, -0.762762, 0.343058,
		-0.300065, -0.562241, -0.770614,
		38.191425, 53.528839, 49.597038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978470, 53.530678, 49.925488>,  <38.401470, 53.922405, 50.136471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978470, 53.530678, 49.925488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.713722, 53.592957, 49.632179>,  <38.554874, 53.630322, 49.456192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.713722, 53.592957, 49.632179>,  <38.978470, 53.530678, 49.925488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713722, 53.592957, 49.632179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717334, 0.415534, -0.559253,
		0.217627, -0.896153, -0.386713,
		-0.661869, 0.155694, -0.733273,
		38.515163, 53.639664, 49.412197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246338, 53.319069, 49.339451>,  <38.978470, 53.530678, 49.925488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246338, 53.319069, 49.339451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982578, 53.603088, 49.240631>,  <38.824322, 53.773499, 49.181339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982578, 53.603088, 49.240631>,  <39.246338, 53.319069, 49.339451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982578, 53.603088, 49.240631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695073, 0.450563, -0.560238,
		-0.286482, -0.541137, -0.790632,
		-0.659395, 0.710045, -0.247051,
		38.784760, 53.816101, 49.166515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260204, 53.332661, 48.563484>,  <39.246338, 53.319069, 49.339451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260204, 53.332661, 48.563484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121658, 53.659214, 48.748329>,  <39.038532, 53.855148, 48.859238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121658, 53.659214, 48.748329>,  <39.260204, 53.332661, 48.563484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121658, 53.659214, 48.748329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497377, 0.577480, -0.647404,
		-0.795391, 0.005606, -0.606070,
		-0.346365, 0.816385, 0.462111,
		39.017750, 53.904129, 48.886963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577396, 53.957203, 48.505783>,  <39.260204, 53.332661, 48.563484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577396, 53.957203, 48.505783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894150, 54.060913, 48.726944>,  <40.084202, 54.123138, 48.859642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894150, 54.060913, 48.726944>,  <39.577396, 53.957203, 48.505783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894150, 54.060913, 48.726944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530075, -0.741404, -0.411510,
		0.303229, 0.618946, -0.724539,
		0.791879, 0.259278, 0.552903,
		40.131714, 54.138695, 48.892815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231239, 54.138115, 48.197399>,  <39.577396, 53.957203, 48.505783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231239, 54.138115, 48.197399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314117, 53.960983, 48.546333>,  <40.363846, 53.854702, 48.755695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314117, 53.960983, 48.546333>,  <40.231239, 54.138115, 48.197399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314117, 53.960983, 48.546333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466731, -0.738921, -0.485960,
		0.859786, 0.507835, 0.053583,
		0.207194, -0.442831, 0.872337,
		40.376274, 53.828133, 48.808033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982262, 53.974373, 48.391350>,  <40.231239, 54.138115, 48.197399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982262, 53.974373, 48.391350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.731636, 53.716095, 48.565933>,  <40.581261, 53.561127, 48.670681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.731636, 53.716095, 48.565933>,  <40.982262, 53.974373, 48.391350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731636, 53.716095, 48.565933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536109, -0.763547, -0.359977,
		0.565690, 0.008439, 0.824575,
		-0.626564, -0.645697, 0.436455,
		40.543667, 53.522385, 48.696869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370571, 53.437447, 48.577728>,  <40.982262, 53.974373, 48.391350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370571, 53.437447, 48.577728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.006451, 53.277340, 48.619953>,  <40.787979, 53.181278, 48.645287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.006451, 53.277340, 48.619953>,  <41.370571, 53.437447, 48.577728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006451, 53.277340, 48.619953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378969, -0.908421, -0.176503,
		0.166539, -0.120667, 0.978624,
		-0.910300, -0.400263, 0.105558,
		40.733360, 53.157261, 48.651619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580383, 54.045052, 48.999134>,  <41.370571, 53.437447, 48.577728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580383, 54.045052, 48.999134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874645, 53.838913, 49.174965>,  <42.051201, 53.715229, 49.280464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874645, 53.838913, 49.174965>,  <41.580383, 54.045052, 48.999134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.874645, 53.838913, 49.174965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634404, 0.296794, -0.713754,
		0.237365, 0.803948, 0.545275,
		0.735656, -0.515345, 0.439579,
		42.095341, 53.684311, 49.306839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199738, 54.465046, 49.091415>,  <41.580383, 54.045052, 48.999134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.199738, 54.465046, 49.091415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.272694, 54.073864, 49.050747>,  <42.316467, 53.839153, 49.026344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.272694, 54.073864, 49.050747>,  <42.199738, 54.465046, 49.091415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.272694, 54.073864, 49.050747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601348, 0.192767, -0.775385,
		0.777891, 0.080280, 0.623250,
		0.182390, -0.977955, -0.101676,
		42.327412, 53.780476, 49.020245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.982254, 54.330841, 49.250904>,  <42.199738, 54.465046, 49.091415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.982254, 54.330841, 49.250904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805809, 54.080498, 48.993618>,  <42.699944, 53.930294, 48.839245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805809, 54.080498, 48.993618>,  <42.982254, 54.330841, 49.250904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.805809, 54.080498, 48.993618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579614, 0.348513, -0.736604,
		0.685176, -0.697742, 0.209020,
		-0.441114, -0.625855, -0.643215,
		42.673473, 53.892742, 48.800655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.516693, 54.401691, 48.753494>,  <42.982254, 54.330841, 49.250904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.516693, 54.401691, 48.753494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.258831, 54.132828, 48.607826>,  <43.104115, 53.971508, 48.520424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.258831, 54.132828, 48.607826>,  <43.516693, 54.401691, 48.753494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.258831, 54.132828, 48.607826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487938, 0.004939, -0.872864,
		0.588501, -0.740391, 0.324787,
		-0.644657, -0.672158, -0.364171,
		43.065434, 53.931179, 48.498573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.083614, 54.604687, 49.353729>,  <43.516693, 54.401691, 48.753494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.083614, 54.604687, 49.353729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.219864, 54.902695, 49.583138>,  <44.301613, 55.081497, 49.720783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.219864, 54.902695, 49.583138>,  <44.083614, 54.604687, 49.353729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.219864, 54.902695, 49.583138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102814, -0.635855, 0.764930,
		0.934560, -0.201589, -0.293187,
		0.340627, 0.745017, 0.573519,
		44.322052, 55.126198, 49.755192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.623398, 54.220619, 49.700359>,  <44.083614, 54.604687, 49.353729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.623398, 54.220619, 49.700359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.463070, 54.545391, 49.870113>,  <44.366871, 54.740253, 49.971966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.463070, 54.545391, 49.870113>,  <44.623398, 54.220619, 49.700359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.463070, 54.545391, 49.870113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203094, -0.530450, 0.823028,
		0.893360, 0.243698, 0.377516,
		-0.400824, 0.811932, 0.424390,
		44.342823, 54.788971, 49.997429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.816208, 53.531338, 49.962345>,  <44.623398, 54.220619, 49.700359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.816208, 53.531338, 49.962345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.046940, 53.725132, 50.225418>,  <45.185379, 53.841408, 50.383263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.046940, 53.725132, 50.225418>,  <44.816208, 53.531338, 49.962345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.046940, 53.725132, 50.225418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597084, -0.799517, 0.065288,
		0.557456, 0.355029, -0.750464,
		0.576830, 0.484486, 0.657678,
		45.219990, 53.870476, 50.422722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.336151, 53.147736, 49.875957>,  <44.816208, 53.531338, 49.962345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.336151, 53.147736, 49.875957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.391647, 53.374695, 50.200626>,  <45.424946, 53.510872, 50.395428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.391647, 53.374695, 50.200626>,  <45.336151, 53.147736, 49.875957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.391647, 53.374695, 50.200626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485781, -0.753208, 0.443501,
		0.863000, 0.332764, -0.380131,
		0.138737, 0.567402, 0.811669,
		45.433270, 53.544914, 50.444126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.127617, 53.275414, 50.121098>,  <45.336151, 53.147736, 49.875957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.127617, 53.275414, 50.121098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.840546, 53.269638, 50.399590>,  <45.668304, 53.266174, 50.566685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.840546, 53.269638, 50.399590>,  <46.127617, 53.275414, 50.121098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.840546, 53.269638, 50.399590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532914, -0.654966, 0.535745,
		0.448271, 0.755521, 0.477747,
		-0.717674, -0.014439, 0.696229,
		45.625244, 53.265305, 50.608459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.403240, 53.434738, 50.765560>,  <46.127617, 53.275414, 50.121098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.403240, 53.434738, 50.765560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.072224, 53.229473, 50.856628>,  <45.873611, 53.106316, 50.911270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.072224, 53.229473, 50.856628>,  <46.403240, 53.434738, 50.765560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.072224, 53.229473, 50.856628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490882, -0.464646, 0.736979,
		-0.272403, 0.721643, 0.636418,
		-0.827545, -0.513161, 0.227670,
		45.823959, 53.075523, 50.924931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.269558, 53.605511, 51.470295>,  <46.403240, 53.434738, 50.765560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.269558, 53.605511, 51.470295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.170498, 53.242039, 51.335854>,  <46.111061, 53.023956, 51.255188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.170498, 53.242039, 51.335854>,  <46.269558, 53.605511, 51.470295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.170498, 53.242039, 51.335854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536904, -0.417487, 0.733102,
		-0.806476, 0.001095, 0.591265,
		-0.247649, -0.908682, -0.336106,
		46.096203, 52.969433, 51.235023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.751999, 53.264099, 51.812294>,  <46.269558, 53.605511, 51.470295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.751999, 53.264099, 51.812294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.084393, 53.053650, 51.884590>,  <46.283829, 52.927380, 51.927967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.084393, 53.053650, 51.884590>,  <45.751999, 53.264099, 51.812294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.084393, 53.053650, 51.884590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543616, 0.836966, -0.063006,
		-0.118125, 0.150611, 0.981510,
		0.830980, -0.526122, 0.180741,
		46.333687, 52.895813, 51.938812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.240898, 53.427742, 52.430286>,  <45.751999, 53.264099, 51.812294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.240898, 53.427742, 52.430286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.445183, 53.266953, 52.126289>,  <46.567753, 53.170479, 51.943890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.445183, 53.266953, 52.126289>,  <46.240898, 53.427742, 52.430286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.445183, 53.266953, 52.126289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658725, 0.751011, 0.045432,
		0.552503, -0.523830, 0.648339,
		0.510708, -0.401976, -0.759995,
		46.598396, 53.146358, 51.898293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.995800, 53.339733, 52.627743>,  <46.240898, 53.427742, 52.430286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.995800, 53.339733, 52.627743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.998608, 53.392479, 52.231247>,  <47.000290, 53.424126, 51.993347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.998608, 53.392479, 52.231247>,  <46.995800, 53.339733, 52.627743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.998608, 53.392479, 52.231247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610153, 0.784789, 0.108719,
		0.792253, -0.605573, -0.074952,
		0.007016, 0.131865, -0.991243,
		47.000713, 53.432037, 51.933872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.685043, 53.437363, 52.500011>,  <46.995800, 53.339733, 52.627743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.685043, 53.437363, 52.500011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.451469, 53.610325, 52.225189>,  <47.311325, 53.714104, 52.060295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.451469, 53.610325, 52.225189>,  <47.685043, 53.437363, 52.500011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.451469, 53.610325, 52.225189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571051, 0.820331, 0.030939,
		0.576989, -0.374275, -0.725949,
		-0.583939, 0.432405, -0.687052,
		47.276287, 53.740047, 52.019073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.143307, 53.714096, 51.880550>,  <47.685043, 53.437363, 52.500011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.143307, 53.714096, 51.880550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.800728, 53.911526, 51.941055>,  <47.595181, 54.029984, 51.977360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.800728, 53.911526, 51.941055>,  <48.143307, 53.714096, 51.880550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.800728, 53.911526, 51.941055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503231, 0.863581, 0.031406,
		-0.115128, 0.103018, -0.987994,
		-0.856449, 0.493573, 0.151264,
		47.543793, 54.059597, 51.986435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.983795, 54.177639, 51.373425>,  <48.143307, 53.714096, 51.880550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.983795, 54.177639, 51.373425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.831768, 54.313129, 51.717705>,  <47.740551, 54.394424, 51.924274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.831768, 54.313129, 51.717705>,  <47.983795, 54.177639, 51.373425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.831768, 54.313129, 51.717705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739542, 0.670172, 0.062827,
		-0.555539, 0.660405, -0.505215,
		-0.380072, 0.338724, 0.860704,
		47.717747, 54.414745, 51.975914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.934669, 54.865200, 51.280506>,  <47.983795, 54.177639, 51.373425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.934669, 54.865200, 51.280506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.003075, 54.789425, 51.667259>,  <48.044117, 54.743961, 51.899311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.003075, 54.789425, 51.667259>,  <47.934669, 54.865200, 51.280506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.003075, 54.789425, 51.667259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615511, 0.786826, 0.045293,
		-0.769352, 0.587384, 0.251153,
		0.171009, -0.189434, 0.966887,
		48.054379, 54.732594, 51.957325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.607330, 55.314209, 51.814106>,  <47.934669, 54.865200, 51.280506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.607330, 55.314209, 51.814106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.961685, 55.133354, 51.855637>,  <48.174297, 55.024841, 51.880554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.961685, 55.133354, 51.855637>,  <47.607330, 55.314209, 51.814106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.961685, 55.133354, 51.855637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456035, 0.889816, -0.016133,
		-0.085096, 0.061642, 0.994464,
		0.885884, -0.452138, 0.103831,
		48.227451, 54.997711, 51.886787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.888088, 55.676434, 52.271572>,  <47.607330, 55.314209, 51.814106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.888088, 55.676434, 52.271572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.206093, 55.477425, 52.132759>,  <48.396896, 55.358021, 52.049473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.206093, 55.477425, 52.132759>,  <47.888088, 55.676434, 52.271572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.206093, 55.477425, 52.132759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555581, 0.826861, 0.087355,
		0.243488, -0.262254, 0.933776,
		0.795012, -0.497518, -0.347034,
		48.444595, 55.328171, 52.028648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.426582, 55.804943, 52.605392>,  <47.888088, 55.676434, 52.271572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.426582, 55.804943, 52.605392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.624168, 55.674885, 52.282833>,  <48.742722, 55.596848, 52.089298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.624168, 55.674885, 52.282833>,  <48.426582, 55.804943, 52.605392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.624168, 55.674885, 52.282833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566181, 0.824153, 0.014508,
		0.659878, -0.463733, 0.591196,
		0.493964, -0.325150, -0.806398,
		48.772358, 55.577339, 52.040913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.014790, 56.247849, 52.544521>,  <48.426582, 55.804943, 52.605392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.014790, 56.247849, 52.544521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.095890, 56.002075, 52.239532>,  <49.144550, 55.854610, 52.056538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.095890, 56.002075, 52.239532>,  <49.014790, 56.247849, 52.544521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.095890, 56.002075, 52.239532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719300, 0.621797, -0.309799,
		0.664454, -0.485634, 0.568033,
		0.202752, -0.614433, -0.762472,
		49.156715, 55.817745, 52.010792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.694904, 56.005653, 52.556137>,  <49.014790, 56.247849, 52.544521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.694904, 56.005653, 52.556137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.594685, 55.994934, 52.169044>,  <49.534554, 55.988503, 51.936787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.594685, 55.994934, 52.169044>,  <49.694904, 56.005653, 52.556137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.594685, 55.994934, 52.169044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849503, 0.473322, -0.233045,
		0.464296, -0.880481, -0.095819,
		-0.250545, -0.026804, -0.967734,
		49.519520, 55.986893, 51.878723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.337826, 55.659317, 52.219025>,  <49.694904, 56.005653, 52.556137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.337826, 55.659317, 52.219025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.122314, 55.926399, 52.013546>,  <49.993008, 56.086647, 51.890259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.122314, 55.926399, 52.013546>,  <50.337826, 55.659317, 52.219025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.122314, 55.926399, 52.013546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840012, 0.472115, -0.267371,
		0.064000, -0.575568, -0.815246,
		-0.538780, 0.667704, -0.513699,
		49.960682, 56.126709, 51.859436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.579395, 55.628334, 51.451248>,  <50.337826, 55.659317, 52.219025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.579395, 55.628334, 51.451248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.435822, 55.977402, 51.583679>,  <50.349678, 56.186844, 51.663139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.435822, 55.977402, 51.583679>,  <50.579395, 55.628334, 51.451248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.435822, 55.977402, 51.583679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776631, 0.475986, -0.412652,
		-0.517698, 0.109010, -0.848590,
		-0.358934, 0.872671, 0.331078,
		50.328140, 56.239204, 51.683002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.779251, 56.112553, 50.969437>,  <50.579395, 55.628334, 51.451248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.779251, 56.112553, 50.969437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.720646, 56.327560, 51.301605>,  <50.685482, 56.456566, 51.500908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.720646, 56.327560, 51.301605>,  <50.779251, 56.112553, 50.969437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.720646, 56.327560, 51.301605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868966, 0.471077, -0.151607,
		-0.472685, 0.699396, -0.536109,
		-0.146515, 0.537523, 0.830423,
		50.676693, 56.488819, 51.550732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.915646, 56.820946, 50.742367>,  <50.779251, 56.112553, 50.969437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.915646, 56.820946, 50.742367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.972115, 56.757931, 51.133316>,  <51.005997, 56.720119, 51.367886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.972115, 56.757931, 51.133316>,  <50.915646, 56.820946, 50.742367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.972115, 56.757931, 51.133316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934415, 0.347320, -0.078980,
		-0.327018, 0.924419, 0.196237,
		0.141168, -0.157539, 0.977370,
		51.014465, 56.710670, 51.426529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.075169, 57.424957, 50.983288>,  <50.915646, 56.820946, 50.742367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.075169, 57.424957, 50.983288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.233864, 57.131050, 51.203369>,  <51.329082, 56.954708, 51.335419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.233864, 57.131050, 51.203369>,  <51.075169, 57.424957, 50.983288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.233864, 57.131050, 51.203369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917414, 0.297281, -0.264530,
		0.030803, 0.609710, 0.792025,
		0.396741, -0.734763, 0.550199,
		51.352886, 56.910622, 51.368427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.412758, 57.592968, 51.596794>,  <51.075169, 57.424957, 50.983288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.412758, 57.592968, 51.596794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.590057, 57.292274, 51.401482>,  <51.696438, 57.111858, 51.284294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.590057, 57.292274, 51.401482>,  <51.412758, 57.592968, 51.596794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.590057, 57.292274, 51.401482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883054, 0.459826, 0.093686,
		0.154097, -0.472706, 0.867643,
		0.443250, -0.751738, -0.488282,
		51.723034, 57.066753, 51.254997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.044346, 57.354942, 51.907829>,  <51.412758, 57.592968, 51.596794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.044346, 57.354942, 51.907829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.077000, 57.235783, 51.527390>,  <52.096592, 57.164288, 51.299126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.077000, 57.235783, 51.527390>,  <52.044346, 57.354942, 51.907829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.077000, 57.235783, 51.527390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922030, 0.384897, -0.041413,
		0.378412, -0.873562, 0.306095,
		0.081638, -0.297900, -0.951100,
		52.101490, 57.146412, 51.242058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.328602, 57.961105, 51.619850>,  <52.044346, 57.354942, 51.907829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.328602, 57.961105, 51.619850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.552605, 57.791672, 51.335045>,  <52.687008, 57.690014, 51.164162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.552605, 57.791672, 51.335045>,  <52.328602, 57.961105, 51.619850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.552605, 57.791672, 51.335045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792635, 0.524006, 0.311685,
		0.241076, -0.738916, 0.629194,
		0.560011, -0.423581, -0.712016,
		52.720608, 57.664597, 51.121441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.976513, 57.791069, 51.961498>,  <52.328602, 57.961105, 51.619850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.976513, 57.791069, 51.961498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.054737, 57.793259, 51.569229>,  <53.101673, 57.794571, 51.333866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.054737, 57.793259, 51.569229>,  <52.976513, 57.791069, 51.961498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.054737, 57.793259, 51.569229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894132, 0.409776, 0.180589,
		0.402845, -0.912170, 0.075247,
		0.195562, 0.005468, -0.980676,
		53.113407, 57.794899, 51.275024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.661514, 57.444904, 51.794571>,  <52.976513, 57.791069, 51.961498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.661514, 57.444904, 51.794571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.603024, 57.700306, 51.492332>,  <53.567928, 57.853546, 51.310989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.603024, 57.700306, 51.492332>,  <53.661514, 57.444904, 51.794571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.603024, 57.700306, 51.492332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951063, 0.300910, 0.070224,
		0.272206, -0.708354, -0.651259,
		-0.146227, 0.638504, -0.755599,
		53.559155, 57.891857, 51.265652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.170536, 57.325474, 51.173767>,  <53.661514, 57.444904, 51.794571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.170536, 57.325474, 51.173767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.032982, 57.690849, 51.260818>,  <53.950447, 57.910076, 51.313049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.032982, 57.690849, 51.260818>,  <54.170536, 57.325474, 51.173767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.032982, 57.690849, 51.260818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897839, 0.251980, 0.361096,
		0.275002, 0.319575, -0.906778,
		-0.343887, 0.913443, 0.217632,
		53.929817, 57.964882, 51.326107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.744328, 57.525208, 51.364521>,  <54.170536, 57.325474, 51.173767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.744328, 57.525208, 51.364521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.986595, 57.838745, 51.419304>,  <55.131954, 58.026867, 51.452175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.986595, 57.838745, 51.419304>,  <54.744328, 57.525208, 51.364521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.986595, 57.838745, 51.419304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164585, -0.044990, 0.985336,
		0.778511, -0.619327, 0.101760,
		0.605667, 0.783843, 0.136957,
		55.168297, 58.073898, 51.460392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.396553, 57.481907, 51.766617>,  <54.744328, 57.525208, 51.364521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.396553, 57.481907, 51.766617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.225166, 57.835747, 51.840256>,  <55.122334, 58.048050, 51.884438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.225166, 57.835747, 51.840256>,  <55.396553, 57.481907, 51.766617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.225166, 57.835747, 51.840256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003802, -0.205506, 0.978648,
		0.903548, 0.418621, 0.091417,
		-0.428469, 0.884604, 0.184093,
		55.096626, 58.101128, 51.895485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.926567, 57.682926, 52.129787>,  <55.396553, 57.481907, 51.766617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.926567, 57.682926, 52.129787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.559174, 57.818130, 52.211891>,  <55.338737, 57.899254, 52.261154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.559174, 57.818130, 52.211891>,  <55.926567, 57.682926, 52.129787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.559174, 57.818130, 52.211891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210427, -0.021704, 0.977369,
		0.334820, 0.940891, -0.051193,
		-0.918486, 0.338014, 0.205256,
		55.283627, 57.919537, 52.273468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.185097, 57.221439, 52.803471>,  <55.926567, 57.682926, 52.129787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.185097, 57.221439, 52.803471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.468422, 57.317528, 52.537964>,  <56.638416, 57.375179, 52.378658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.468422, 57.317528, 52.537964>,  <56.185097, 57.221439, 52.803471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.468422, 57.317528, 52.537964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624387, 0.225433, 0.747877,
		0.329291, -0.944179, 0.009685,
		0.708314, 0.240222, -0.663766,
		56.680916, 57.389595, 52.338833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.829437, 56.792122, 52.798347>,  <56.185097, 57.221439, 52.803471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.829437, 56.792122, 52.798347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.911156, 57.163540, 52.674366>,  <56.960186, 57.386391, 52.599976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.911156, 57.163540, 52.674366>,  <56.829437, 56.792122, 52.798347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.911156, 57.163540, 52.674366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564741, 0.146829, 0.812101,
		0.799580, -0.340956, -0.494389,
		0.204300, 0.928542, -0.309954,
		56.972446, 57.442104, 52.581379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.607090, 57.076237, 52.711620>,  <56.829437, 56.792122, 52.798347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.607090, 57.076237, 52.711620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.376740, 57.376389, 52.841419>,  <57.238529, 57.556480, 52.919300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.376740, 57.376389, 52.841419>,  <57.607090, 57.076237, 52.711620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.376740, 57.376389, 52.841419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603536, 0.122470, 0.787874,
		0.551463, 0.649563, -0.523408,
		-0.575875, 0.750379, 0.324497,
		57.203976, 57.601501, 52.938770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.973385, 57.747059, 52.698326>,  <57.607090, 57.076237, 52.711620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.973385, 57.747059, 52.698326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.709999, 57.727951, 52.998764>,  <57.551968, 57.716488, 53.179028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.709999, 57.727951, 52.998764>,  <57.973385, 57.747059, 52.698326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.709999, 57.727951, 52.998764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748838, 0.058291, 0.660185,
		-0.075316, 0.997156, -0.002614,
		-0.658460, -0.047765, 0.751098,
		57.512463, 57.713623, 53.224094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.139938, 58.301060, 53.224525>,  <57.973385, 57.747059, 52.698326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.139938, 58.301060, 53.224525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.948120, 57.985992, 53.379246>,  <57.833031, 57.796951, 53.472076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.948120, 57.985992, 53.379246>,  <58.139938, 58.301060, 53.224525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.948120, 57.985992, 53.379246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774695, -0.172968, 0.608218,
		-0.412171, 0.591319, 0.693150,
		-0.479544, -0.787670, 0.386800,
		57.804256, 57.749691, 53.495285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.774925, 58.328583, 53.913616>,  <58.139938, 58.301060, 53.224525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.774925, 58.328583, 53.913616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.959900, 57.990448, 53.806622>,  <58.070885, 57.787567, 53.742424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.959900, 57.990448, 53.806622>,  <57.774925, 58.328583, 53.913616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.959900, 57.990448, 53.806622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668635, 0.134354, 0.731352,
		-0.582304, -0.517056, 0.627356,
		0.462438, -0.845342, -0.267486,
		58.098633, 57.736847, 53.726376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.961227, 57.963829, 54.538483>,  <57.774925, 58.328583, 53.913616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.961227, 57.963829, 54.538483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.226135, 57.821503, 54.274727>,  <58.385078, 57.736107, 54.116474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.226135, 57.821503, 54.274727>,  <57.961227, 57.963829, 54.538483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.226135, 57.821503, 54.274727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717319, 0.046852, 0.695168,
		-0.216460, -0.933380, 0.286263,
		0.662269, -0.355818, -0.659389,
		58.424816, 57.714756, 54.076912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.175976, 57.191090, 54.738083>,  <57.961227, 57.963829, 54.538483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.175976, 57.191090, 54.738083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.371323, 57.505074, 54.585590>,  <58.488529, 57.693462, 54.494095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.371323, 57.505074, 54.585590>,  <58.175976, 57.191090, 54.738083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.371323, 57.505074, 54.585590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625814, -0.010573, 0.779901,
		0.608160, -0.619456, -0.496403,
		0.488363, 0.784960, -0.381235,
		58.517830, 57.740562, 54.471218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.929169, 57.014721, 54.729046>,  <58.175976, 57.191090, 54.738083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.929169, 57.014721, 54.729046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.859505, 57.407631, 54.756779>,  <58.817707, 57.643375, 54.773418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.859505, 57.407631, 54.756779>,  <58.929169, 57.014721, 54.729046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.859505, 57.407631, 54.756779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417193, 0.009829, 0.908765,
		0.891974, 0.187195, -0.411509,
		-0.174161, 0.982274, 0.069330,
		58.807255, 57.702312, 54.777576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.499748, 57.435841, 54.729637>,  <58.929169, 57.014721, 54.729046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.499748, 57.435841, 54.729637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.209518, 57.611969, 54.941170>,  <59.035381, 57.717644, 55.068089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.209518, 57.611969, 54.941170>,  <59.499748, 57.435841, 54.729637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.209518, 57.611969, 54.941170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535787, -0.120768, 0.835672,
		0.431826, 0.889683, -0.148290,
		-0.725574, 0.440317, 0.528832,
		58.991848, 57.744064, 55.099819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.778538, 57.864498, 55.252377>,  <59.499748, 57.435841, 54.729637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.778538, 57.864498, 55.252377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.415260, 57.736378, 55.360146>,  <59.197292, 57.659508, 55.424805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.415260, 57.736378, 55.360146>,  <59.778538, 57.864498, 55.252377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.415260, 57.736378, 55.360146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343148, -0.201264, 0.917465,
		-0.239639, 0.925690, 0.292697,
		-0.908197, -0.320299, 0.269418,
		59.142799, 57.640289, 55.440971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.645626, 58.385773, 55.948868>,  <59.778538, 57.864498, 55.252377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.645626, 58.385773, 55.948868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.403709, 58.067356, 55.939445>,  <59.258560, 57.876308, 55.933792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.403709, 58.067356, 55.939445>,  <59.645626, 58.385773, 55.948868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.403709, 58.067356, 55.939445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173203, -0.160341, 0.971747,
		-0.777323, 0.583623, 0.234849,
		-0.604790, -0.796037, -0.023552,
		59.222271, 57.828545, 55.932381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.318710, 58.443771, 56.628075>,  <59.645626, 58.385773, 55.948868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.318710, 58.443771, 56.628075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.288048, 58.075710, 56.474480>,  <59.269650, 57.854874, 56.382324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.288048, 58.075710, 56.474480>,  <59.318710, 58.443771, 56.628075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.288048, 58.075710, 56.474480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410368, -0.380107, 0.828925,
		-0.908692, -0.094030, 0.406740,
		-0.076661, -0.920151, -0.383987,
		59.265049, 57.799664, 56.359283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.749214, 58.269356, 57.204956>,  <59.318710, 58.443771, 56.628075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.749214, 58.269356, 57.204956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.729797, 57.922596, 57.006508>,  <59.718147, 57.714542, 56.887440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.729797, 57.922596, 57.006508>,  <59.749214, 58.269356, 57.204956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.729797, 57.922596, 57.006508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568213, -0.432467, 0.700076,
		-0.821449, -0.247915, 0.513576,
		-0.048545, -0.866897, -0.496118,
		59.715233, 57.662525, 56.857674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.667965, 57.585602, 57.645153>,  <59.749214, 58.269356, 57.204956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.667965, 57.585602, 57.645153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.884315, 57.492439, 57.321869>,  <60.014126, 57.436543, 57.127899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.884315, 57.492439, 57.321869>,  <59.667965, 57.585602, 57.645153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.884315, 57.492439, 57.321869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703552, -0.401316, 0.586481,
		-0.460947, -0.885832, -0.053196,
		0.540872, -0.232910, -0.808214,
		60.046577, 57.422565, 57.079403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.618546, 56.774757, 57.518723>,  <59.667965, 57.585602, 57.645153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.618546, 56.774757, 57.518723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.960121, 56.954494, 57.413742>,  <60.165066, 57.062336, 57.350754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.960121, 56.954494, 57.413742>,  <59.618546, 56.774757, 57.518723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.960121, 56.954494, 57.413742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489911, -0.524170, 0.696586,
		0.175433, -0.723421, -0.667746,
		0.853938, 0.449341, -0.262455,
		60.216301, 57.089298, 57.335007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.132130, 56.295078, 57.327011>,  <59.618546, 56.774757, 57.518723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.132130, 56.295078, 57.327011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.346649, 56.614006, 57.437759>,  <60.475361, 56.805363, 57.504208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.346649, 56.614006, 57.437759>,  <60.132130, 56.295078, 57.327011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.346649, 56.614006, 57.437759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562088, -0.582101, 0.587550,
		0.629633, -0.159480, -0.760348,
		0.536302, 0.797323, 0.276868,
		60.507538, 56.853203, 57.520821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.834686, 56.240906, 57.213440>,  <60.132130, 56.295078, 57.327011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.834686, 56.240906, 57.213440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.752769, 56.432751, 57.554741>,  <60.703621, 56.547855, 57.759521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.752769, 56.432751, 57.554741>,  <60.834686, 56.240906, 57.213440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.752769, 56.432751, 57.554741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412083, -0.748460, 0.519611,
		0.887833, 0.458022, -0.044359,
		-0.204793, 0.479608, 0.853250,
		60.691330, 56.576633, 57.810715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.386631, 56.103588, 57.828644>,  <60.834686, 56.240906, 57.213440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.386631, 56.103588, 57.828644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.034767, 56.212364, 57.984718>,  <60.823647, 56.277630, 58.078362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.034767, 56.212364, 57.984718>,  <61.386631, 56.103588, 57.828644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.034767, 56.212364, 57.984718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098028, -0.699121, 0.708252,
		0.465388, 0.661271, 0.588332,
		-0.879662, 0.271939, 0.390185,
		60.770870, 56.293945, 58.101772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.057304, 55.736698, 57.993454>,  <61.386631, 56.103588, 57.828644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.057304, 55.736698, 57.993454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.139610, 55.644547, 57.613014>,  <62.188995, 55.589256, 57.384750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.139610, 55.644547, 57.613014>,  <62.057304, 55.736698, 57.993454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.139610, 55.644547, 57.613014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967428, 0.194330, 0.162228,
		0.147452, -0.953499, 0.262863,
		0.205767, -0.230380, -0.951097,
		62.201340, 55.575432, 57.327686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.674706, 55.256378, 58.137314>,  <62.057304, 55.736698, 57.993454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.674706, 55.256378, 58.137314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.668251, 55.399246, 57.763756>,  <62.664379, 55.484966, 57.539619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.668251, 55.399246, 57.763756>,  <62.674706, 55.256378, 58.137314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.668251, 55.399246, 57.763756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998804, -0.037352, -0.031546,
		-0.046151, -0.933291, -0.356144,
		-0.016139, 0.357174, -0.933898,
		62.663410, 55.506397, 57.483585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.512653, 55.517918, 58.242577>,  <62.674706, 55.256378, 58.137314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.512653, 55.517918, 58.242577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.578224, 55.809662, 58.508255>,  <63.617569, 55.984711, 58.667664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.578224, 55.809662, 58.508255>,  <63.512653, 55.517918, 58.242577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.578224, 55.809662, 58.508255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714963, -0.376056, 0.589414,
		0.679672, -0.571499, 0.459821,
		0.163932, 0.729363, 0.664196,
		63.627403, 56.028469, 58.707512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.743191, 55.204002, 58.893673>,  <63.512653, 55.517918, 58.242577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.743191, 55.204002, 58.893673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.522400, 55.537529, 58.896858>,  <63.389923, 55.737644, 58.898769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.522400, 55.537529, 58.896858>,  <63.743191, 55.204002, 58.893673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.522400, 55.537529, 58.896858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744814, -0.497306, 0.444903,
		0.374927, 0.239648, 0.895544,
		-0.551980, 0.833820, 0.007960,
		63.356808, 55.787674, 58.899246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.161461, 54.618305, 58.755337>,  <63.743191, 55.204002, 58.893673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.161461, 54.618305, 58.755337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.521996, 54.445244, 58.763351>,  <64.738319, 54.341408, 58.768162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.521996, 54.445244, 58.763351>,  <64.161461, 54.618305, 58.755337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.521996, 54.445244, 58.763351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149591, 0.267554, -0.951860,
		0.406465, 0.860944, 0.305878,
		0.901337, -0.432654, 0.020038,
		64.792397, 54.315449, 58.769363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.620506, 54.415649, 59.329037>,  <64.161461, 54.618305, 58.755337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.620506, 54.415649, 59.329037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.249565, 54.545204, 59.404007>,  <64.027000, 54.622936, 59.448990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.249565, 54.545204, 59.404007>,  <64.620506, 54.415649, 59.329037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.249565, 54.545204, 59.404007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363209, 0.899578, 0.242567,
		-0.090040, 0.293018, -0.951858,
		-0.927347, 0.323882, 0.187425,
		63.971359, 54.642368, 59.460236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.268021, 54.702545, 59.182972>,  <64.620506, 54.415649, 59.329037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.268021, 54.702545, 59.182972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.387383, 54.901535, 59.508789>,  <65.459000, 55.020931, 59.704277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.387383, 54.901535, 59.508789>,  <65.268021, 54.702545, 59.182972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.387383, 54.901535, 59.508789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883636, -0.466567, -0.038761,
		0.360754, 0.731322, -0.578813,
		0.298402, 0.497477, 0.814538,
		65.476906, 55.050777, 59.753151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.913551, 54.897297, 58.918449>,  <65.268021, 54.702545, 59.182972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.913551, 54.897297, 58.918449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.869980, 54.830170, 59.310364>,  <65.843834, 54.789894, 59.545513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.869980, 54.830170, 59.310364>,  <65.913551, 54.897297, 58.918449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.869980, 54.830170, 59.310364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817453, -0.575943, -0.007770,
		0.565602, 0.800079, 0.199921,
		-0.108926, -0.167821, 0.979781,
		65.837303, 54.779823, 59.604298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.388603, 55.180027, 59.391670>,  <65.913551, 54.897297, 58.918449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.388603, 55.180027, 59.391670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.237755, 54.825245, 59.498329>,  <66.147247, 54.612377, 59.562325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.237755, 54.825245, 59.498329>,  <66.388603, 55.180027, 59.391670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.237755, 54.825245, 59.498329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920274, -0.391275, 0.000024,
		0.104311, 0.245397, 0.963794,
		-0.377114, -0.886952, 0.266647,
		66.124619, 54.559158, 59.578323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.905228, 54.956985, 59.866451>,  <66.388603, 55.180027, 59.391670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.905228, 54.956985, 59.866451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.705803, 54.620743, 59.781761>,  <66.586151, 54.418999, 59.730946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.705803, 54.620743, 59.781761>,  <66.905228, 54.956985, 59.866451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.705803, 54.620743, 59.781761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854085, -0.518106, 0.045872,
		-0.148258, -0.157965, 0.976251,
		-0.498556, -0.840603, -0.211729,
		66.556236, 54.368561, 59.718243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.158066, 54.487358, 60.341724>,  <66.905228, 54.956985, 59.866451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.158066, 54.487358, 60.341724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.104393, 54.311516, 59.986481>,  <67.072189, 54.206013, 59.773335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.104393, 54.311516, 59.986481>,  <67.158066, 54.487358, 60.341724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.104393, 54.311516, 59.986481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820889, -0.551341, 0.148878,
		-0.555100, -0.709064, 0.434847,
		-0.134185, -0.439603, -0.888112,
		67.064140, 54.179634, 59.720047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.167572, 53.825413, 60.544853>,  <67.158066, 54.487358, 60.341724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.167572, 53.825413, 60.544853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.302170, 53.940681, 60.186249>,  <67.382927, 54.009842, 59.971088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.302170, 53.940681, 60.186249>,  <67.167572, 53.825413, 60.544853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.302170, 53.940681, 60.186249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874338, -0.449168, 0.183794,
		-0.349719, -0.845698, -0.403102,
		0.336495, 0.288171, -0.896509,
		67.403122, 54.027134, 59.917297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.573448, 53.369007, 60.211006>,  <67.167572, 53.825413, 60.544853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.573448, 53.369007, 60.211006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.671028, 53.748009, 60.128326>,  <67.729576, 53.975410, 60.078720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.671028, 53.748009, 60.128326>,  <67.573448, 53.369007, 60.211006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.671028, 53.748009, 60.128326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965762, -0.217964, 0.140698,
		0.088259, -0.233945, -0.968235,
		0.243956, 0.947503, -0.206698,
		67.744217, 54.032261, 60.066319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.069855, 53.553669, 59.628605>,  <67.573448, 53.369007, 60.211006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.069855, 53.553669, 59.628605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.085197, 53.819035, 59.927513>,  <68.094406, 53.978252, 60.106857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.085197, 53.819035, 59.927513>,  <68.069855, 53.553669, 59.628605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.085197, 53.819035, 59.927513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980378, -0.169691, 0.100320,
		0.193358, 0.728757, -0.656906,
		0.038362, 0.663414, 0.747269,
		68.096703, 54.018059, 60.151695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.724190, 53.917549, 59.561016>,  <68.069855, 53.553669, 59.628605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.724190, 53.917549, 59.561016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.600105, 53.824242, 59.929657>,  <68.525650, 53.768257, 60.150841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.600105, 53.824242, 59.929657>,  <68.724190, 53.917549, 59.561016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.600105, 53.824242, 59.929657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875469, -0.447979, 0.181298,
		0.370567, 0.863075, 0.343193,
		-0.310218, -0.233272, 0.921601,
		68.507042, 53.754261, 60.206139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.273560, 53.985512, 59.107525>,  <68.724190, 53.917549, 59.561016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.273560, 53.985512, 59.107525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.163078, 54.062496, 58.730873>,  <69.096786, 54.108688, 58.504883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.163078, 54.062496, 58.730873>,  <69.273560, 53.985512, 59.107525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.163078, 54.062496, 58.730873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119697, 0.979005, 0.164992,
		0.953617, -0.067139, -0.293442,
		-0.276203, 0.192463, -0.941631,
		69.080215, 54.120235, 58.448383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.761520, 54.587883, 58.889397>,  <69.273560, 53.985512, 59.107525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.761520, 54.587883, 58.889397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.489616, 54.591030, 58.596039>,  <69.326477, 54.592918, 58.420025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.489616, 54.591030, 58.596039>,  <69.761520, 54.587883, 58.889397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.489616, 54.591030, 58.596039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225173, 0.953890, -0.198472,
		0.698016, -0.300054, -0.650185,
		-0.679757, 0.007867, -0.733395,
		69.285690, 54.593391, 58.376019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.034645, 54.658562, 58.205357>,  <69.761520, 54.587883, 58.889397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.034645, 54.658562, 58.205357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.674179, 54.815628, 58.278801>,  <69.457901, 54.909866, 58.322868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.674179, 54.815628, 58.278801>,  <70.034645, 54.658562, 58.205357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.674179, 54.815628, 58.278801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376262, 0.918912, -0.118442,
		-0.215232, -0.037649, -0.975837,
		-0.901167, 0.392663, 0.183614,
		69.403831, 54.933426, 58.333885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.644203, 54.847286, 57.582054>,  <70.034645, 54.658562, 58.205357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.644203, 54.847286, 57.582054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.543541, 55.066872, 57.900879>,  <69.483139, 55.198624, 58.092175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.543541, 55.066872, 57.900879>,  <69.644203, 54.847286, 57.582054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.543541, 55.066872, 57.900879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381107, 0.813239, -0.439772,
		-0.889620, 0.193092, -0.413874,
		-0.251662, 0.548961, 0.797062,
		69.468040, 55.231560, 58.139999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.631989, 55.506500, 57.204716>,  <69.644203, 54.847286, 57.582054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.631989, 55.506500, 57.204716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.006683, 55.397293, 57.117081>,  <70.231499, 55.331768, 57.064499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.006683, 55.397293, 57.117081>,  <69.631989, 55.506500, 57.204716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.006683, 55.397293, 57.117081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225706, 0.007336, -0.974168,
		0.267569, 0.961982, -0.054749,
		0.936730, -0.273014, -0.219088,
		70.287704, 55.315388, 57.051353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.958122, 56.010159, 56.661121>,  <69.631989, 55.506500, 57.204716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.958122, 56.010159, 56.661121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.031662, 55.617172, 56.648735>,  <70.075783, 55.381378, 56.641304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.031662, 55.617172, 56.648735>,  <69.958122, 56.010159, 56.661121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.031662, 55.617172, 56.648735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362714, -0.038523, -0.931104,
		0.913586, 0.182411, -0.363437,
		0.183845, -0.982467, -0.030969,
		70.086815, 55.322433, 56.639446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.555283, 56.092037, 56.251129>,  <69.958122, 56.010159, 56.661121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.555283, 56.092037, 56.251129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.567680, 56.452213, 56.424675>,  <70.575119, 56.668320, 56.528801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.567680, 56.452213, 56.424675>,  <70.555283, 56.092037, 56.251129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.567680, 56.452213, 56.424675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786558, -0.289814, 0.545283,
		0.616737, 0.324359, -0.717235,
		0.030997, 0.900444, 0.433866,
		70.576981, 56.722347, 56.554836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.206100, 56.453022, 56.427788>,  <70.555283, 56.092037, 56.251129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.206100, 56.453022, 56.427788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.968086, 56.600788, 56.713295>,  <70.825279, 56.689449, 56.884598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.968086, 56.600788, 56.713295>,  <71.206100, 56.453022, 56.427788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.968086, 56.600788, 56.713295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697965, -0.202790, 0.686819,
		0.398468, 0.906866, -0.137173,
		-0.595036, 0.369418, 0.713767,
		70.789574, 56.711613, 56.927425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.487114, 56.906765, 56.827351>,  <71.206100, 56.453022, 56.427788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.487114, 56.906765, 56.827351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.218994, 56.740650, 57.073357>,  <71.058121, 56.640984, 57.220963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.218994, 56.740650, 57.073357>,  <71.487114, 56.906765, 56.827351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.218994, 56.740650, 57.073357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722912, -0.178173, 0.667573,
		-0.167652, 0.892073, 0.419641,
		-0.670292, -0.415283, 0.615019,
		71.017906, 56.616066, 57.257862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.577576, 57.179848, 57.499046>,  <71.487114, 56.906765, 56.827351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.577576, 57.179848, 57.499046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.413567, 56.815918, 57.524704>,  <71.315163, 56.597561, 57.540100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.413567, 56.815918, 57.524704>,  <71.577576, 57.179848, 57.499046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.413567, 56.815918, 57.524704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700103, -0.268867, 0.661488,
		-0.584587, 0.316131, 0.747207,
		-0.410016, -0.909820, 0.064149,
		71.290565, 56.542973, 57.543949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.400986, 57.019775, 58.256004>,  <71.577576, 57.179848, 57.499046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.400986, 57.019775, 58.256004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.468948, 56.705315, 58.018318>,  <71.509727, 56.516636, 57.875706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.468948, 56.705315, 58.018318>,  <71.400986, 57.019775, 58.256004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.468948, 56.705315, 58.018318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708383, -0.321755, 0.628225,
		-0.685075, -0.527670, 0.502232,
		0.169900, -0.786154, -0.594219,
		71.519920, 56.469467, 57.840054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.362793, 56.228397, 58.578648>,  <71.400986, 57.019775, 58.256004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.362793, 56.228397, 58.578648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.601700, 56.321304, 58.271576>,  <71.745041, 56.377048, 58.087334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.601700, 56.321304, 58.271576>,  <71.362793, 56.228397, 58.578648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.601700, 56.321304, 58.271576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781846, -0.382078, 0.492679,
		-0.178883, -0.894467, -0.409794,
		0.597258, 0.232263, -0.767682,
		71.780876, 56.390984, 58.041271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.728233, 56.167080, 59.300133>,  <71.362793, 56.228397, 58.578648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.728233, 56.167080, 59.300133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.837090, 56.483189, 59.080528>,  <71.902405, 56.672855, 58.948765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.837090, 56.483189, 59.080528>,  <71.728233, 56.167080, 59.300133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.837090, 56.483189, 59.080528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186310, 0.603019, 0.775665,
		0.944050, -0.108801, 0.311340,
		0.272137, 0.790272, -0.549010,
		71.918732, 56.720272, 58.915825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.046570, 56.566891, 59.862858>,  <71.728233, 56.167080, 59.300133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.046570, 56.566891, 59.862858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.923790, 56.769711, 59.540695>,  <71.850121, 56.891403, 59.347397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.923790, 56.769711, 59.540695>,  <72.046570, 56.566891, 59.862858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.923790, 56.769711, 59.540695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407377, 0.694818, 0.592682,
		0.860134, 0.510025, -0.006708,
		-0.306944, 0.507053, -0.805408,
		71.831703, 56.921825, 59.299072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.338028, 57.188686, 59.917057>,  <72.046570, 56.566891, 59.862858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.338028, 57.188686, 59.917057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.976891, 57.196793, 59.745255>,  <71.760208, 57.201656, 59.642174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.976891, 57.196793, 59.745255>,  <72.338028, 57.188686, 59.917057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.976891, 57.196793, 59.745255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288593, 0.711924, 0.640218,
		0.318754, 0.701964, -0.636900,
		-0.902835, 0.020267, -0.429510,
		71.706039, 57.202873, 59.616402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.198502, 57.893883, 59.763233>,  <72.338028, 57.188686, 59.917057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.198502, 57.893883, 59.763233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.847977, 57.701218, 59.760147>,  <71.637657, 57.585617, 59.758297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.847977, 57.701218, 59.760147>,  <72.198502, 57.893883, 59.763233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.847977, 57.701218, 59.760147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351757, 0.628868, 0.693392,
		-0.329134, 0.610346, -0.720519,
		-0.876320, -0.481667, -0.007712,
		71.585083, 57.556717, 59.757835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.904541, 57.708527, 59.799450>,  <72.198502, 57.893883, 59.763233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.904541, 57.708527, 59.799450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.814796, 57.524342, 60.142990>,  <72.760948, 57.413830, 60.349113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.814796, 57.524342, 60.142990>,  <72.904541, 57.708527, 59.799450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.814796, 57.524342, 60.142990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533579, -0.795522, -0.287121,
		0.815447, 0.393847, 0.424183,
		-0.224365, -0.460467, 0.858854,
		72.747490, 57.386200, 60.400646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.364418, 57.704617, 60.222244>,  <72.904541, 57.708527, 59.799450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.364418, 57.704617, 60.222244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.144341, 57.373798, 60.268341>,  <73.012291, 57.175308, 60.295998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.144341, 57.373798, 60.268341>,  <73.364418, 57.704617, 60.222244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.144341, 57.373798, 60.268341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748595, -0.549676, -0.370759,
		0.369979, -0.117723, 0.921551,
		-0.550201, -0.827042, 0.115241,
		72.979279, 57.125687, 60.302914>
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
