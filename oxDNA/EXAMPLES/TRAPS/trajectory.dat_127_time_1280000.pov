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
	<36.469292, 53.171207, 49.274578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507214, 53.115677, 49.668884>,  <36.529968, 53.082359, 49.905468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507214, 53.115677, 49.668884>,  <36.469292, 53.171207, 49.274578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507214, 53.115677, 49.668884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901763, -0.407498, -0.144116,
		0.421706, 0.902592, 0.086556,
		0.094806, -0.138827, 0.985768,
		36.535656, 53.074028, 49.964615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062462, 53.537968, 49.462662>,  <36.469292, 53.171207, 49.274578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062462, 53.537968, 49.462662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974499, 53.238346, 49.712639>,  <36.921722, 53.058571, 49.862625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974499, 53.238346, 49.712639>,  <37.062462, 53.537968, 49.462662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974499, 53.238346, 49.712639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963709, -0.266203, 0.020041,
		0.151350, 0.606670, 0.780413,
		-0.219906, -0.749058, 0.624943,
		36.908527, 53.013630, 49.900124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559689, 53.447495, 50.027351>,  <37.062462, 53.537968, 49.462662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559689, 53.447495, 50.027351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395504, 53.113026, 49.881836>,  <37.296993, 52.912346, 49.794525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395504, 53.113026, 49.881836>,  <37.559689, 53.447495, 50.027351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395504, 53.113026, 49.881836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883871, -0.266707, -0.384238,
		0.224265, -0.479256, 0.848539,
		-0.410460, -0.836171, -0.363787,
		37.272366, 52.862175, 49.772701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859020, 52.906918, 50.350094>,  <37.559689, 53.447495, 50.027351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859020, 52.906918, 50.350094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763958, 52.851791, 49.965485>,  <37.706921, 52.818714, 49.734718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763958, 52.851791, 49.965485>,  <37.859020, 52.906918, 50.350094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763958, 52.851791, 49.965485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968535, 0.041697, -0.245361,
		0.073908, -0.989579, 0.123574,
		-0.237652, -0.137820, -0.961524,
		37.692661, 52.810444, 49.677029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987549, 52.198170, 49.951519>,  <37.859020, 52.906918, 50.350094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987549, 52.198170, 49.951519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664143, 52.227631, 49.717979>,  <37.470100, 52.245308, 49.577854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664143, 52.227631, 49.717979>,  <37.987549, 52.198170, 49.951519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664143, 52.227631, 49.717979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056089, 0.977976, 0.201040,
		0.585799, 0.195291, -0.786575,
		-0.808513, 0.073651, -0.583851,
		37.421589, 52.249725, 49.542824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349266, 51.855564, 49.406826>,  <37.987549, 52.198170, 49.951519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349266, 51.855564, 49.406826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708237, 51.683067, 49.369614>,  <38.923618, 51.579571, 49.347286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708237, 51.683067, 49.369614>,  <38.349266, 51.855564, 49.406826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708237, 51.683067, 49.369614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412629, 0.895121, -0.168807,
		0.156073, 0.113103, 0.981249,
		0.897429, -0.431238, -0.093035,
		38.977467, 51.553696, 49.341702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905003, 52.078465, 49.871635>,  <38.349266, 51.855564, 49.406826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905003, 52.078465, 49.871635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047241, 52.001564, 49.505775>,  <39.132584, 51.955421, 49.286259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047241, 52.001564, 49.505775>,  <38.905003, 52.078465, 49.871635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047241, 52.001564, 49.505775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277999, 0.956080, -0.092882,
		0.892339, -0.221244, 0.393423,
		0.355595, -0.192253, -0.914653,
		39.153919, 51.943890, 49.231380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533249, 52.339645, 49.830158>,  <38.905003, 52.078465, 49.871635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533249, 52.339645, 49.830158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341702, 52.332401, 49.479080>,  <39.226772, 52.328053, 49.268433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341702, 52.332401, 49.479080>,  <39.533249, 52.339645, 49.830158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341702, 52.332401, 49.479080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257916, 0.952763, -0.160382,
		0.839144, -0.303175, -0.451577,
		-0.478870, -0.018114, -0.877699,
		39.198040, 52.326965, 49.215771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912624, 52.652878, 49.337559>,  <39.533249, 52.339645, 49.830158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912624, 52.652878, 49.337559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516098, 52.678200, 49.291458>,  <39.278183, 52.693394, 49.263798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516098, 52.678200, 49.291458>,  <39.912624, 52.652878, 49.337559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516098, 52.678200, 49.291458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090490, 0.964364, -0.248624,
		0.095403, -0.256894, -0.961719,
		-0.991317, 0.063307, -0.115249,
		39.218704, 52.697193, 49.256882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777523, 53.381817, 48.979046>,  <39.912624, 52.652878, 49.337559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777523, 53.381817, 48.979046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408489, 53.280746, 49.095657>,  <39.187069, 53.220104, 49.165627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408489, 53.280746, 49.095657>,  <39.777523, 53.381817, 48.979046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408489, 53.280746, 49.095657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295645, 0.948534, -0.113482,
		-0.247853, -0.190887, -0.949806,
		-0.922585, -0.252679, 0.291532,
		39.131714, 53.204945, 49.183117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404629, 53.090561, 48.478207>,  <39.777523, 53.381817, 48.979046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404629, 53.090561, 48.478207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565598, 53.331192, 48.202187>,  <40.662178, 53.475571, 48.036575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565598, 53.331192, 48.202187>,  <40.404629, 53.090561, 48.478207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565598, 53.331192, 48.202187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841466, -0.539940, 0.020007,
		-0.360549, -0.588703, -0.723486,
		0.402417, 0.601575, -0.690049,
		40.686321, 53.511665, 47.995171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443432, 52.819820, 47.802982>,  <40.404629, 53.090561, 48.478207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443432, 52.819820, 47.802982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758949, 53.047535, 47.895695>,  <40.948261, 53.184162, 47.951321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758949, 53.047535, 47.895695>,  <40.443432, 52.819820, 47.802982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758949, 53.047535, 47.895695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609485, -0.773234, -0.175035,
		0.079574, 0.279332, -0.956892,
		0.788794, 0.569282, 0.231778,
		40.995586, 53.218319, 47.965229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993042, 52.953091, 47.172085>,  <40.443432, 52.819820, 47.802982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993042, 52.953091, 47.172085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.152653, 52.938335, 47.538563>,  <41.248417, 52.929482, 47.758450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.152653, 52.938335, 47.538563>,  <40.993042, 52.953091, 47.172085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.152653, 52.938335, 47.538563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449408, -0.863083, -0.230479,
		0.799258, 0.503714, -0.327810,
		0.399022, -0.036892, 0.916199,
		41.272358, 52.927269, 47.813423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830479, 52.333755, 46.820683>,  <40.993042, 52.953091, 47.172085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830479, 52.333755, 46.820683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.749126, 52.429886, 46.441025>,  <40.700317, 52.487564, 46.213230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.749126, 52.429886, 46.441025>,  <40.830479, 52.333755, 46.820683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749126, 52.429886, 46.441025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809170, 0.587053, -0.024743,
		0.551254, -0.773054, -0.313856,
		-0.203378, 0.240324, -0.949148,
		40.688114, 52.501984, 46.156281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513088, 52.234497, 47.219959>,  <40.830479, 52.333755, 46.820683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513088, 52.234497, 47.219959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.558643, 52.293991, 47.612877>,  <41.585976, 52.329685, 47.848629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.558643, 52.293991, 47.612877>,  <41.513088, 52.234497, 47.219959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.558643, 52.293991, 47.612877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982854, -0.161182, -0.089550,
		0.145010, 0.975653, -0.164538,
		0.113890, 0.148731, 0.982297,
		41.592812, 52.338612, 47.907566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102005, 52.722473, 47.333691>,  <41.513088, 52.234497, 47.219959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.102005, 52.722473, 47.333691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060886, 52.480133, 47.649254>,  <42.036217, 52.334728, 47.838593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060886, 52.480133, 47.649254>,  <42.102005, 52.722473, 47.333691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060886, 52.480133, 47.649254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994424, -0.081366, 0.067087,
		0.023546, 0.791406, 0.610837,
		-0.102795, -0.605851, 0.788909,
		42.030048, 52.298378, 47.885925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.661800, 52.925663, 47.627132>,  <42.102005, 52.722473, 47.333691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.661800, 52.925663, 47.627132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.585682, 52.558006, 47.765099>,  <42.540009, 52.337414, 47.847878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.585682, 52.558006, 47.765099>,  <42.661800, 52.925663, 47.627132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.585682, 52.558006, 47.765099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977519, -0.209897, -0.020014,
		0.090793, 0.333356, 0.938419,
		-0.190300, -0.919139, 0.344919,
		42.528591, 52.282265, 47.868576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264626, 52.816841, 47.962822>,  <42.661800, 52.925663, 47.627132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.264626, 52.816841, 47.962822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.071140, 52.467934, 47.934063>,  <42.955051, 52.258587, 47.916809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.071140, 52.467934, 47.934063>,  <43.264626, 52.816841, 47.962822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.071140, 52.467934, 47.934063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868452, -0.488544, 0.084359,
		-0.108707, -0.021632, 0.993838,
		-0.483709, -0.872271, -0.071894,
		42.926029, 52.206253, 47.912495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.372719, 52.555138, 48.594193>,  <43.264626, 52.816841, 47.962822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.372719, 52.555138, 48.594193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.343746, 52.301399, 48.286331>,  <43.326363, 52.149158, 48.101616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.343746, 52.301399, 48.286331>,  <43.372719, 52.555138, 48.594193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.343746, 52.301399, 48.286331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979454, -0.190860, 0.065132,
		-0.188212, -0.749120, 0.635135,
		-0.072430, -0.634344, -0.769650,
		43.322018, 52.111095, 48.055435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.843494, 53.119156, 48.918114>,  <43.372719, 52.555138, 48.594193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.843494, 53.119156, 48.918114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.223362, 53.084572, 48.797684>,  <44.451283, 53.063820, 48.725426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.223362, 53.084572, 48.797684>,  <43.843494, 53.119156, 48.918114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.223362, 53.084572, 48.797684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191004, 0.921627, 0.337817,
		0.248271, -0.378322, 0.891759,
		0.949673, -0.086459, -0.301074,
		44.508263, 53.058636, 48.707363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.171196, 53.309303, 49.459053>,  <43.843494, 53.119156, 48.918114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.171196, 53.309303, 49.459053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.458256, 53.341267, 49.182331>,  <44.630489, 53.360443, 49.016296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.458256, 53.341267, 49.182331>,  <44.171196, 53.309303, 49.459053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.458256, 53.341267, 49.182331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269461, 0.884158, 0.381647,
		0.642162, -0.460303, 0.612983,
		0.717648, 0.079904, -0.691807,
		44.673550, 53.365238, 48.974789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.215755, 53.831833, 48.892151>,  <44.171196, 53.309303, 49.459053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.215755, 53.831833, 48.892151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.454575, 54.089951, 48.701515>,  <44.597866, 54.244820, 48.587135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.454575, 54.089951, 48.701515>,  <44.215755, 53.831833, 48.892151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.454575, 54.089951, 48.701515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024739, -0.579002, -0.814950,
		-0.801824, 0.498355, -0.329728,
		0.597048, 0.645290, -0.476587,
		44.633690, 54.283539, 48.558540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.747169, 54.030483, 48.319065>,  <44.215755, 53.831833, 48.892151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.747169, 54.030483, 48.319065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.146477, 54.034725, 48.295948>,  <44.386063, 54.037270, 48.282078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.146477, 54.034725, 48.295948>,  <43.747169, 54.030483, 48.319065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.146477, 54.034725, 48.295948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040623, -0.586116, -0.809208,
		-0.042455, 0.810158, -0.584672,
		0.998272, 0.010604, -0.057794,
		44.445957, 54.037907, 48.278610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.841232, 54.215420, 47.594425>,  <43.747169, 54.030483, 48.319065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.841232, 54.215420, 47.594425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967678, 54.451607, 47.297394>,  <44.043545, 54.593319, 47.119175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967678, 54.451607, 47.297394>,  <43.841232, 54.215420, 47.594425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.967678, 54.451607, 47.297394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907681, -0.415956, 0.055649,
		-0.276019, -0.691613, -0.667447,
		0.316116, 0.590468, -0.742575,
		44.062511, 54.628746, 47.074623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.989513, 53.762428, 47.146622>,  <43.841232, 54.215420, 47.594425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.989513, 53.762428, 47.146622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.194195, 54.098812, 47.076252>,  <44.317005, 54.300640, 47.034031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.194195, 54.098812, 47.076252>,  <43.989513, 53.762428, 47.146622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.194195, 54.098812, 47.076252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850304, -0.525025, -0.036493,
		-0.123052, -0.130914, -0.983727,
		0.511704, 0.840958, -0.175922,
		44.347706, 54.351101, 47.023476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.460159, 53.649158, 46.678753>,  <43.989513, 53.762428, 47.146622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.460159, 53.649158, 46.678753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.586185, 53.981575, 46.862099>,  <44.661800, 54.181026, 46.972107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.586185, 53.981575, 46.862099>,  <44.460159, 53.649158, 46.678753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.586185, 53.981575, 46.862099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947483, -0.247517, -0.202512,
		-0.054844, 0.498098, -0.865385,
		0.315068, 0.831044, 0.458364,
		44.680706, 54.230888, 46.999607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.875446, 54.066177, 46.182613>,  <44.460159, 53.649158, 46.678753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.875446, 54.066177, 46.182613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.977142, 54.170437, 46.555157>,  <45.038158, 54.232994, 46.778683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.977142, 54.170437, 46.555157>,  <44.875446, 54.066177, 46.182613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.977142, 54.170437, 46.555157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964726, -0.136362, -0.225185,
		0.068306, 0.955754, -0.286127,
		0.254238, 0.260653, 0.931355,
		45.053413, 54.248634, 46.834564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.482403, 54.575241, 46.179630>,  <44.875446, 54.066177, 46.182613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.482403, 54.575241, 46.179630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.494892, 54.331917, 46.496864>,  <45.502384, 54.185925, 46.687206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.494892, 54.331917, 46.496864>,  <45.482403, 54.575241, 46.179630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.494892, 54.331917, 46.496864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998532, -0.016152, -0.051701,
		0.044260, 0.793537, 0.606910,
		0.031224, -0.608308, 0.793087,
		45.504261, 54.149426, 46.734791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.832485, 54.900002, 46.763271>,  <45.482403, 54.575241, 46.179630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.832485, 54.900002, 46.763271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.856201, 54.500908, 46.750496>,  <45.870430, 54.261452, 46.742828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.856201, 54.500908, 46.750496>,  <45.832485, 54.900002, 46.763271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.856201, 54.500908, 46.750496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997500, 0.057979, 0.040408,
		-0.038464, -0.034258, 0.998673,
		0.059286, -0.997730, -0.031942,
		45.873985, 54.201588, 46.740913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.312191, 54.772999, 47.281593>,  <45.832485, 54.900002, 46.763271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.312191, 54.772999, 47.281593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.299923, 54.518940, 46.972881>,  <46.292561, 54.366505, 46.787655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.299923, 54.518940, 46.972881>,  <46.312191, 54.772999, 47.281593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.299923, 54.518940, 46.972881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969063, 0.170291, -0.178654,
		0.244899, -0.753383, 0.610277,
		-0.030670, -0.635149, -0.771780,
		46.290722, 54.328396, 46.741348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.687134, 54.093269, 47.247009>,  <46.312191, 54.772999, 47.281593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.687134, 54.093269, 47.247009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.700256, 54.254253, 46.881069>,  <46.708130, 54.350845, 46.661507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.700256, 54.254253, 46.881069>,  <46.687134, 54.093269, 47.247009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.700256, 54.254253, 46.881069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950689, 0.269882, 0.152821,
		0.308406, -0.874752, -0.373758,
		0.032810, 0.402458, -0.914850,
		46.710098, 54.374992, 46.606613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.205502, 53.837482, 46.799313>,  <46.687134, 54.093269, 47.247009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.205502, 53.837482, 46.799313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.113331, 54.203758, 46.667610>,  <47.058029, 54.423523, 46.588589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.113331, 54.203758, 46.667610>,  <47.205502, 53.837482, 46.799313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.113331, 54.203758, 46.667610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968474, 0.248724, 0.013953,
		0.094671, -0.315664, -0.944137,
		-0.230424, 0.915693, -0.329259,
		47.044205, 54.478466, 46.568832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.561703, 53.943520, 46.208397>,  <47.205502, 53.837482, 46.799313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.561703, 53.943520, 46.208397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.493294, 54.293091, 46.390388>,  <47.452248, 54.502834, 46.499584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.493294, 54.293091, 46.390388>,  <47.561703, 53.943520, 46.208397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.493294, 54.293091, 46.390388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975985, 0.213503, -0.043239,
		-0.134928, 0.436661, -0.889450,
		-0.171019, 0.873924, 0.454982,
		47.441986, 54.555267, 46.526882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.004162, 54.479530, 45.941521>,  <47.561703, 53.943520, 46.208397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.004162, 54.479530, 45.941521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.927025, 54.635326, 46.301765>,  <47.880741, 54.728806, 46.517914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.927025, 54.635326, 46.301765>,  <48.004162, 54.479530, 45.941521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.927025, 54.635326, 46.301765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922900, 0.383735, 0.031658,
		-0.333267, 0.837283, -0.433463,
		-0.192841, 0.389493, 0.900615,
		47.869171, 54.752174, 46.571949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.168896, 55.182716, 45.829895>,  <48.004162, 54.479530, 45.941521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.168896, 55.182716, 45.829895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.199879, 55.061596, 46.209854>,  <48.218468, 54.988922, 46.437832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.199879, 55.061596, 46.209854>,  <48.168896, 55.182716, 45.829895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.199879, 55.061596, 46.209854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937817, 0.345495, 0.033666,
		-0.338380, 0.888225, 0.310732,
		0.077454, -0.302802, 0.949901,
		48.223114, 54.970757, 46.494823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.568485, 55.684860, 46.150352>,  <48.168896, 55.182716, 45.829895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.568485, 55.684860, 46.150352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.566235, 55.370529, 46.397720>,  <48.564884, 55.181931, 46.546143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.566235, 55.370529, 46.397720>,  <48.568485, 55.684860, 46.150352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.566235, 55.370529, 46.397720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946640, 0.195104, 0.256529,
		-0.322243, 0.586866, 0.742797,
		-0.005626, -0.785826, 0.618422,
		48.564548, 55.134781, 46.583248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.722015, 55.866642, 46.954506>,  <48.568485, 55.684860, 46.150352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.722015, 55.866642, 46.954506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.810432, 55.491322, 46.848125>,  <48.863483, 55.266129, 46.784298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.810432, 55.491322, 46.848125>,  <48.722015, 55.866642, 46.954506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.810432, 55.491322, 46.848125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929642, 0.120288, 0.348276,
		-0.294797, -0.324224, 0.898873,
		0.221044, -0.938301, -0.265952,
		48.876747, 55.209831, 46.768341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.115929, 55.555866, 47.489868>,  <48.722015, 55.866642, 46.954506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.115929, 55.555866, 47.489868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.216839, 55.375038, 47.147644>,  <49.277386, 55.266541, 46.942310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.216839, 55.375038, 47.147644>,  <49.115929, 55.555866, 47.489868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.216839, 55.375038, 47.147644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964455, 0.045604, 0.260282,
		-0.078649, -0.890815, 0.447508,
		0.252271, -0.452072, -0.855564,
		49.292519, 55.239418, 46.890976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.636318, 54.905315, 47.580368>,  <49.115929, 55.555866, 47.489868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.636318, 54.905315, 47.580368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.726711, 55.110672, 47.249222>,  <49.780949, 55.233887, 47.050533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.726711, 55.110672, 47.249222>,  <49.636318, 54.905315, 47.580368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.726711, 55.110672, 47.249222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959014, 0.031888, 0.281557,
		0.170947, -0.857563, -0.485142,
		0.225983, 0.513390, -0.827866,
		49.794506, 55.264690, 47.000862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.227310, 54.586788, 47.127678>,  <49.636318, 54.905315, 47.580368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.227310, 54.586788, 47.127678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.160149, 54.981102, 47.125046>,  <50.119850, 55.217690, 47.123466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.160149, 54.981102, 47.125046>,  <50.227310, 54.586788, 47.127678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.160149, 54.981102, 47.125046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866629, 0.150786, 0.475623,
		0.469853, 0.074158, -0.879624,
		-0.167907, 0.985781, -0.006580,
		50.109776, 55.276836, 47.123074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.837437, 55.102314, 46.791504>,  <50.227310, 54.586788, 47.127678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.837437, 55.102314, 46.791504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.624725, 55.284904, 47.076836>,  <50.497097, 55.394459, 47.248035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.624725, 55.284904, 47.076836>,  <50.837437, 55.102314, 46.791504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.624725, 55.284904, 47.076836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839037, 0.398361, 0.370573,
		-0.115002, 0.795571, -0.594845,
		-0.531781, 0.456481, 0.713326,
		50.465191, 55.421848, 47.290833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.889763, 55.778660, 46.817822>,  <50.837437, 55.102314, 46.791504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.889763, 55.778660, 46.817822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.815327, 55.631496, 47.182243>,  <50.770664, 55.543198, 47.400894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.815327, 55.631496, 47.182243>,  <50.889763, 55.778660, 46.817822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.815327, 55.631496, 47.182243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838673, 0.423577, 0.342360,
		-0.511858, 0.827782, 0.229734,
		-0.186089, -0.367911, 0.911050,
		50.759499, 55.521122, 47.455559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.814880, 56.323460, 47.367760>,  <50.889763, 55.778660, 46.817822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.814880, 56.323460, 47.367760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.027943, 56.000732, 47.469994>,  <51.155781, 55.807095, 47.531334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.027943, 56.000732, 47.469994>,  <50.814880, 56.323460, 47.367760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.027943, 56.000732, 47.469994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683117, 0.588138, 0.432949,
		-0.499629, -0.056020, 0.864426,
		0.532656, -0.806818, 0.255583,
		51.187740, 55.758686, 47.546669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.320381, 56.684269, 47.734112>,  <50.814880, 56.323460, 47.367760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.320381, 56.684269, 47.734112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.426731, 56.303612, 47.795677>,  <51.490540, 56.075218, 47.832619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.426731, 56.303612, 47.795677>,  <51.320381, 56.684269, 47.734112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.426731, 56.303612, 47.795677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705077, 0.300848, 0.642150,
		-0.657402, -0.062207, 0.750968,
		0.265873, -0.951641, 0.153917,
		51.506493, 56.018120, 47.841854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.155380, 56.473648, 48.443153>,  <51.320381, 56.684269, 47.734112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.155380, 56.473648, 48.443153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.486851, 56.316048, 48.284126>,  <51.685734, 56.221485, 48.188709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.486851, 56.316048, 48.284126>,  <51.155380, 56.473648, 48.443153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.486851, 56.316048, 48.284126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551099, 0.450057, 0.702665,
		-0.097925, -0.801379, 0.590086,
		0.828674, -0.394005, -0.397567,
		51.735455, 56.197845, 48.164856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.575954, 56.176773, 49.081745>,  <51.155380, 56.473648, 48.443153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.575954, 56.176773, 49.081745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.807983, 56.307522, 48.783302>,  <51.947201, 56.385971, 48.604237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.807983, 56.307522, 48.783302>,  <51.575954, 56.176773, 49.081745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.807983, 56.307522, 48.783302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305292, 0.761952, 0.571163,
		0.755187, -0.559098, 0.342203,
		0.580077, 0.326863, -0.746103,
		51.982006, 56.405582, 48.559471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.327675, 56.281845, 49.238232>,  <51.575954, 56.176773, 49.081745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.327675, 56.281845, 49.238232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.193069, 56.534042, 48.958450>,  <52.112305, 56.685360, 48.790581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.193069, 56.534042, 48.958450>,  <52.327675, 56.281845, 49.238232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.193069, 56.534042, 48.958450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158415, 0.770092, 0.617950,
		0.928258, 0.097145, -0.359026,
		-0.336514, 0.630493, -0.699455,
		52.092113, 56.723190, 48.748615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.826881, 56.809658, 49.155029>,  <52.327675, 56.281845, 49.238232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.826881, 56.809658, 49.155029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.455215, 56.933411, 49.074097>,  <52.232216, 57.007664, 49.025539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.455215, 56.933411, 49.074097>,  <52.826881, 56.809658, 49.155029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.455215, 56.933411, 49.074097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070304, 0.685222, 0.724933,
		0.362923, 0.659356, -0.658435,
		-0.929163, 0.309385, -0.202328,
		52.176468, 57.026226, 49.013397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.504131, 56.488766, 49.255466>,  <52.826881, 56.809658, 49.155029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.504131, 56.488766, 49.255466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.397400, 56.872055, 49.214249>,  <53.333363, 57.102028, 49.189518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.397400, 56.872055, 49.214249>,  <53.504131, 56.488766, 49.255466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.397400, 56.872055, 49.214249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009980, -0.109662, -0.993919,
		-0.963692, -0.264179, 0.038824,
		-0.266830, 0.958219, -0.103043,
		53.317352, 57.159519, 49.183334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.795937, 55.697598, 49.451153>,  <53.504131, 56.488766, 49.255466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.795937, 55.697598, 49.451153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.832432, 55.408127, 49.724785>,  <53.854328, 55.234444, 49.888966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.832432, 55.408127, 49.724785>,  <53.795937, 55.697598, 49.451153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.832432, 55.408127, 49.724785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995828, 0.067485, -0.061426,
		-0.001713, 0.686831, 0.726816,
		0.091239, -0.723678, 0.684080,
		53.859802, 55.191025, 49.930008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.300144, 55.823948, 49.921501>,  <53.795937, 55.697598, 49.451153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.300144, 55.823948, 49.921501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.287407, 55.429565, 49.987083>,  <54.279766, 55.192936, 50.026432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.287407, 55.429565, 49.987083>,  <54.300144, 55.823948, 49.921501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.287407, 55.429565, 49.987083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989502, -0.054231, -0.133959,
		0.140969, 0.157974, 0.977329,
		-0.031840, -0.985953, 0.163960,
		54.277855, 55.133778, 50.036270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.833805, 55.604424, 50.588001>,  <54.300144, 55.823948, 49.921501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.833805, 55.604424, 50.588001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.756821, 55.347046, 50.291637>,  <54.710629, 55.192619, 50.113819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.756821, 55.347046, 50.291637>,  <54.833805, 55.604424, 50.588001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.756821, 55.347046, 50.291637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969742, -0.240270, -0.043245,
		-0.150192, -0.726811, 0.670214,
		-0.192464, -0.643440, -0.740906,
		54.699081, 55.154015, 50.069366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.083000, 55.001289, 50.742416>,  <54.833805, 55.604424, 50.588001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.083000, 55.001289, 50.742416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.067940, 54.958397, 50.345009>,  <55.058903, 54.932659, 50.106564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.067940, 54.958397, 50.345009>,  <55.083000, 55.001289, 50.742416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.067940, 54.958397, 50.345009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973160, -0.229814, -0.012075,
		-0.227030, -0.967309, 0.113009,
		-0.037651, -0.107234, -0.993521,
		55.056644, 54.926228, 50.046951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.548286, 54.396061, 50.501606>,  <55.083000, 55.001289, 50.742416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.548286, 54.396061, 50.501606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.523735, 54.667049, 50.208412>,  <55.509003, 54.829643, 50.032497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.523735, 54.667049, 50.208412>,  <55.548286, 54.396061, 50.501606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.523735, 54.667049, 50.208412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973785, -0.120510, -0.192928,
		-0.219035, -0.725610, -0.652314,
		-0.061381, 0.677471, -0.732984,
		55.505322, 54.870289, 49.988518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.883457, 54.236782, 49.829605>,  <55.548286, 54.396061, 50.501606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.883457, 54.236782, 49.829605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.901924, 54.619995, 49.942772>,  <55.913002, 54.849922, 50.010670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.901924, 54.619995, 49.942772>,  <55.883457, 54.236782, 49.829605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.901924, 54.619995, 49.942772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951831, -0.128127, 0.278570,
		0.303129, 0.256426, -0.917801,
		0.046163, 0.958034, 0.282913,
		55.915771, 54.907406, 50.027645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.424248, 54.566971, 49.561790>,  <55.883457, 54.236782, 49.829605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.424248, 54.566971, 49.561790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.345596, 54.765999, 49.899727>,  <56.298405, 54.885418, 50.102489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.345596, 54.765999, 49.899727>,  <56.424248, 54.566971, 49.561790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.345596, 54.765999, 49.899727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949742, -0.117395, 0.290188,
		0.243570, 0.859441, -0.449483,
		-0.196632, 0.497574, 0.844841,
		56.286606, 54.915272, 50.153179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.006313, 55.095036, 49.706974>,  <56.424248, 54.566971, 49.561790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.006313, 55.095036, 49.706974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.828064, 54.965683, 50.040882>,  <56.721115, 54.888069, 50.241226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.828064, 54.965683, 50.040882>,  <57.006313, 55.095036, 49.706974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.828064, 54.965683, 50.040882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889328, -0.266728, 0.371418,
		0.102546, 0.907897, 0.406457,
		-0.445623, -0.323386, 0.834771,
		56.694378, 54.868668, 50.291313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.300755, 55.293320, 50.384666>,  <57.006313, 55.095036, 49.706974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.300755, 55.293320, 50.384666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.115387, 54.939976, 50.412735>,  <57.004166, 54.727970, 50.429577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.115387, 54.939976, 50.412735>,  <57.300755, 55.293320, 50.384666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.115387, 54.939976, 50.412735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836420, -0.409896, 0.363849,
		-0.292646, 0.227305, 0.928811,
		-0.463421, -0.883356, 0.070168,
		56.976360, 54.674969, 50.433784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.443844, 55.049244, 51.090176>,  <57.300755, 55.293320, 50.384666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.443844, 55.049244, 51.090176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.380341, 54.784431, 50.797188>,  <57.342239, 54.625546, 50.621395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.380341, 54.784431, 50.797188>,  <57.443844, 55.049244, 51.090176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.380341, 54.784431, 50.797188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827746, -0.493636, 0.266758,
		-0.538176, -0.563950, 0.626360,
		-0.158756, -0.662030, -0.732470,
		57.332714, 54.585823, 50.577446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.021095, 54.574646, 50.993782>,  <57.443844, 55.049244, 51.090176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.021095, 54.574646, 50.993782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.303169, 54.291206, 51.003582>,  <58.472412, 54.121143, 51.009460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.303169, 54.291206, 51.003582>,  <58.021095, 54.574646, 50.993782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.303169, 54.291206, 51.003582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037037, -0.002313, 0.999311,
		-0.708059, -0.705603, -0.027876,
		0.705182, -0.708603, 0.024495,
		58.514725, 54.078625, 51.010929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.395275, 55.302509, 51.044395>,  <58.021095, 54.574646, 50.993782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.395275, 55.302509, 51.044395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.675583, 55.081661, 51.225101>,  <58.843765, 54.949150, 51.333523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.675583, 55.081661, 51.225101>,  <58.395275, 55.302509, 51.044395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.675583, 55.081661, 51.225101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463578, 0.833763, 0.299891,
		-0.542238, -0.000728, 0.840225,
		0.700767, -0.552122, 0.451760,
		58.885815, 54.916023, 51.360630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.024387, 55.572632, 50.829674>,  <58.395275, 55.302509, 51.044395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.024387, 55.572632, 50.829674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.222649, 55.286270, 51.026371>,  <59.341606, 55.114452, 51.144390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.222649, 55.286270, 51.026371>,  <59.024387, 55.572632, 50.829674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.222649, 55.286270, 51.026371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828647, 0.559382, -0.020867,
		-0.260133, 0.417824, 0.870490,
		0.495655, -0.715901, 0.491743,
		59.371346, 55.071499, 51.173893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.324821, 55.771759, 51.503174>,  <59.024387, 55.572632, 50.829674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.324821, 55.771759, 51.503174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.544952, 55.517876, 51.286182>,  <59.677032, 55.365543, 51.155987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.544952, 55.517876, 51.286182>,  <59.324821, 55.771759, 51.503174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.544952, 55.517876, 51.286182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685388, 0.714467, -0.140638,
		0.476845, -0.294409, 0.828216,
		0.550328, -0.634712, -0.542475,
		59.710052, 55.327461, 51.123440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.015774, 55.640762, 51.671017>,  <59.324821, 55.771759, 51.503174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.015774, 55.640762, 51.671017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.025764, 55.612545, 51.272137>,  <60.031761, 55.595615, 51.032810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.025764, 55.612545, 51.272137>,  <60.015774, 55.640762, 51.671017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.025764, 55.612545, 51.272137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818693, 0.573881, -0.020088,
		0.573689, -0.815895, 0.072086,
		0.024979, -0.070540, -0.997196,
		60.033257, 55.591381, 50.972977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.780212, 55.320587, 51.692230>,  <60.015774, 55.640762, 51.671017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.780212, 55.320587, 51.692230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.922554, 55.663948, 51.544441>,  <61.007961, 55.869965, 51.455769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.922554, 55.663948, 51.544441>,  <60.780212, 55.320587, 51.692230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.922554, 55.663948, 51.544441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174538, 0.327348, 0.928644,
		0.918097, -0.394952, -0.033335,
		0.355858, 0.858404, -0.369472,
		61.029312, 55.921471, 51.433601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.449440, 55.486629, 51.906651>,  <60.780212, 55.320587, 51.692230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.449440, 55.486629, 51.906651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.223412, 55.815598, 51.880379>,  <61.087795, 56.012978, 51.864616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.223412, 55.815598, 51.880379>,  <61.449440, 55.486629, 51.906651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.223412, 55.815598, 51.880379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003279, 0.081843, 0.996640,
		0.825034, 0.562960, -0.048944,
		-0.565074, 0.822422, -0.065678,
		61.053890, 56.062325, 51.860676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.787079, 56.002903, 52.388214>,  <61.449440, 55.486629, 51.906651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.787079, 56.002903, 52.388214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.398621, 56.074535, 52.325214>,  <61.165546, 56.117516, 52.287415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.398621, 56.074535, 52.325214>,  <61.787079, 56.002903, 52.388214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.398621, 56.074535, 52.325214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131810, 0.147330, 0.980265,
		0.198753, 0.972740, -0.119474,
		-0.971145, 0.179083, -0.157499,
		61.107277, 56.128262, 52.277966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.625446, 56.621311, 52.766495>,  <61.787079, 56.002903, 52.388214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.625446, 56.621311, 52.766495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.281204, 56.427021, 52.705265>,  <61.074661, 56.310448, 52.668526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.281204, 56.427021, 52.705265>,  <61.625446, 56.621311, 52.766495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.281204, 56.427021, 52.705265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295959, 0.232387, 0.926501,
		-0.414452, 0.842655, -0.343748,
		-0.860603, -0.485726, -0.153078,
		61.023022, 56.281303, 52.659340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.345818, 56.579441, 52.948219>,  <61.625446, 56.621311, 52.766495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.345818, 56.579441, 52.948219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.065079, 56.654339, 53.223129>,  <61.896637, 56.699276, 53.388077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.065079, 56.654339, 53.223129>,  <62.345818, 56.579441, 52.948219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.065079, 56.654339, 53.223129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141508, -0.982254, 0.123096,
		0.698130, -0.010861, 0.715888,
		-0.701847, 0.187241, 0.687278,
		61.854523, 56.710510, 53.429314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.582298, 56.400738, 53.582111>,  <62.345818, 56.579441, 52.948219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.582298, 56.400738, 53.582111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.183617, 56.384422, 53.554039>,  <61.944408, 56.374634, 53.537197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.183617, 56.384422, 53.554039>,  <62.582298, 56.400738, 53.582111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.183617, 56.384422, 53.554039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034835, -0.995849, 0.084090,
		-0.073315, 0.081368, 0.993984,
		-0.996700, -0.040790, -0.070176,
		61.884605, 56.372185, 53.532986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.067001, 56.669704, 54.110485>,  <62.582298, 56.400738, 53.582111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.067001, 56.669704, 54.110485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.288612, 56.559921, 54.424866>,  <63.421581, 56.494049, 54.613495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.288612, 56.559921, 54.424866>,  <63.067001, 56.669704, 54.110485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.288612, 56.559921, 54.424866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284102, 0.949749, 0.131392,
		-0.782519, 0.150495, 0.604165,
		0.554031, -0.274461, 0.785952,
		63.454823, 56.477585, 54.660652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.274220, 57.238342, 54.438709>,  <63.067001, 56.669704, 54.110485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.274220, 57.238342, 54.438709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.491669, 56.978760, 54.651627>,  <63.622139, 56.823009, 54.779377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.491669, 56.978760, 54.651627>,  <63.274220, 57.238342, 54.438709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.491669, 56.978760, 54.651627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417662, 0.759248, 0.499099,
		-0.728033, -0.049004, 0.683788,
		0.543622, -0.648953, 0.532291,
		63.654755, 56.784073, 54.811314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.194294, 57.281528, 55.200989>,  <63.274220, 57.238342, 54.438709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.194294, 57.281528, 55.200989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.571678, 57.173969, 55.123459>,  <63.798111, 57.109436, 55.076939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.571678, 57.173969, 55.123459>,  <63.194294, 57.281528, 55.200989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.571678, 57.173969, 55.123459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328206, 0.839691, 0.432666,
		0.046413, -0.471821, 0.880472,
		0.943465, -0.268895, -0.193828,
		63.854717, 57.093300, 55.065311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.533596, 57.576935, 55.728268>,  <63.194294, 57.281528, 55.200989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.533596, 57.576935, 55.728268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.812263, 57.504482, 55.450607>,  <63.979462, 57.461010, 55.284012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.812263, 57.504482, 55.450607>,  <63.533596, 57.576935, 55.728268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.812263, 57.504482, 55.450607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440424, 0.871781, 0.214532,
		0.566289, -0.455178, 0.687117,
		0.696666, -0.181136, -0.694151,
		64.021263, 57.450142, 55.242363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.275620, 57.894878, 55.891190>,  <63.533596, 57.576935, 55.728268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.275620, 57.894878, 55.891190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.330193, 57.879616, 55.495224>,  <64.362938, 57.870457, 55.257645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.330193, 57.879616, 55.495224>,  <64.275620, 57.894878, 55.891190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.330193, 57.879616, 55.495224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361766, 0.932165, 0.013930,
		0.922231, -0.360017, 0.140985,
		0.136436, -0.038157, -0.989914,
		64.371124, 57.868168, 55.198250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.602509, 58.412918, 56.363918>,  <64.275620, 57.894878, 55.891190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.602509, 58.412918, 56.363918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.458336, 58.338913, 56.729622>,  <64.371834, 58.294510, 56.949043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.458336, 58.338913, 56.729622>,  <64.602509, 58.412918, 56.363918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.458336, 58.338913, 56.729622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042083, -0.975909, -0.214080,
		0.931838, -0.115635, 0.343958,
		-0.360427, -0.185013, 0.914255,
		64.350204, 58.283409, 57.003899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.148300, 58.037155, 56.932335>,  <64.602509, 58.412918, 56.363918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.148300, 58.037155, 56.932335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.756073, 57.960426, 56.948738>,  <64.520737, 57.914391, 56.958580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.756073, 57.960426, 56.948738>,  <65.148300, 58.037155, 56.932335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.756073, 57.960426, 56.948738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190110, -0.980855, -0.042205,
		0.048320, -0.033589, 0.998267,
		-0.980573, -0.191820, 0.041009,
		64.461899, 57.902882, 56.961040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.947617, 57.547688, 57.427643>,  <65.148300, 58.037155, 56.932335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.947617, 57.547688, 57.427643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.580475, 57.567993, 57.270187>,  <64.360191, 57.580177, 57.175713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.580475, 57.567993, 57.270187>,  <64.947617, 57.547688, 57.427643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.580475, 57.567993, 57.270187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166267, -0.949748, 0.265207,
		-0.360398, 0.308873, 0.880176,
		-0.917861, 0.050764, -0.393643,
		64.305115, 57.583221, 57.152096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.677216, 57.048946, 57.662876>,  <64.947617, 57.547688, 57.427643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.677216, 57.048946, 57.662876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.364059, 57.089794, 57.417389>,  <64.176163, 57.114304, 57.270096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.364059, 57.089794, 57.417389>,  <64.677216, 57.048946, 57.662876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.364059, 57.089794, 57.417389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282275, -0.937370, 0.204106,
		-0.554435, 0.333030, 0.762688,
		-0.782894, 0.102124, -0.613717,
		64.129189, 57.120430, 57.233273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.983688, 57.086292, 58.419155>,  <64.677216, 57.048946, 57.662876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.983688, 57.086292, 58.419155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.322060, 56.933128, 58.270676>,  <65.525085, 56.841228, 58.181587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.322060, 56.933128, 58.270676>,  <64.983688, 57.086292, 58.419155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.322060, 56.933128, 58.270676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532442, -0.566899, -0.628595,
		0.030265, 0.729386, -0.683433,
		0.845925, -0.382913, -0.371199,
		65.575836, 56.818253, 58.159317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.347748, 57.117397, 58.628647>,  <64.983688, 57.086292, 58.419155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.347748, 57.117397, 58.628647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.481865, 56.859985, 58.903877>,  <64.562340, 56.705540, 59.069016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.481865, 56.859985, 58.903877>,  <64.347748, 57.117397, 58.628647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.481865, 56.859985, 58.903877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808725, -0.571242, -0.140169,
		0.483260, -0.509466, -0.711972,
		0.335297, -0.643527, 0.688076,
		64.582451, 56.666927, 59.110298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.281670, 57.540459, 59.311954>,  <64.347748, 57.117397, 58.628647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.281670, 57.540459, 59.311954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.649414, 57.406990, 59.395325>,  <64.870064, 57.326908, 59.445347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.649414, 57.406990, 59.395325>,  <64.281670, 57.540459, 59.311954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.649414, 57.406990, 59.395325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284163, 0.196799, -0.938361,
		0.272083, 0.921919, 0.275745,
		0.919360, -0.333669, 0.208430,
		64.925224, 57.306889, 59.457855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.176903, 57.901562, 60.000584>,  <64.281670, 57.540459, 59.311954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.176903, 57.901562, 60.000584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.295479, 57.591873, 60.224266>,  <64.366623, 57.406059, 60.358475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.295479, 57.591873, 60.224266>,  <64.176903, 57.901562, 60.000584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.295479, 57.591873, 60.224266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921359, 0.077674, -0.380873,
		0.251444, 0.628135, 0.736358,
		0.296435, -0.774218, 0.559207,
		64.384407, 57.359608, 60.392029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.613136, 57.978161, 60.564552>,  <64.176903, 57.901562, 60.000584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.613136, 57.978161, 60.564552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.709198, 57.639183, 60.375168>,  <64.766838, 57.435795, 60.261536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.709198, 57.639183, 60.375168>,  <64.613136, 57.978161, 60.564552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.709198, 57.639183, 60.375168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863330, 0.409456, -0.294969,
		0.443831, -0.337914, 0.829957,
		0.240157, -0.847443, -0.473461,
		64.781242, 57.384949, 60.233131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.273621, 57.943954, 60.688927>,  <64.613136, 57.978161, 60.564552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.273621, 57.943954, 60.688927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.160492, 57.721214, 60.376534>,  <65.092613, 57.587570, 60.189098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.160492, 57.721214, 60.376534>,  <65.273621, 57.943954, 60.688927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.160492, 57.721214, 60.376534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822498, 0.278097, -0.496145,
		0.493467, -0.782673, 0.379358,
		-0.282821, -0.556852, -0.780979,
		65.075645, 57.554157, 60.142239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.751152, 57.763752, 60.060261>,  <65.273621, 57.943954, 60.688927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.751152, 57.763752, 60.060261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.704590, 58.021782, 59.758179>,  <65.676651, 58.176601, 59.576931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.704590, 58.021782, 59.758179>,  <65.751152, 57.763752, 60.060261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.704590, 58.021782, 59.758179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431804, -0.651881, -0.623375,
		-0.894425, -0.398662, -0.202665,
		-0.116402, 0.645074, -0.755202,
		65.669670, 58.215305, 59.531616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.401962, 58.295132, 59.922554>,  <65.751152, 57.763752, 60.060261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.401962, 58.295132, 59.922554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.493202, 57.951748, 60.106300>,  <66.547943, 57.745716, 60.216549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.493202, 57.951748, 60.106300>,  <66.401962, 58.295132, 59.922554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.493202, 57.951748, 60.106300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918455, 0.346297, 0.191101,
		-0.323129, 0.378312, 0.867449,
		0.228099, -0.858463, 0.459361,
		66.561630, 57.694210, 60.244110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.786987, 58.291744, 60.537342>,  <66.401962, 58.295132, 59.922554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.786987, 58.291744, 60.537342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.889336, 57.933743, 60.391190>,  <66.950745, 57.718941, 60.303497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.889336, 57.933743, 60.391190>,  <66.786987, 58.291744, 60.537342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.889336, 57.933743, 60.391190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965061, 0.258558, 0.042487,
		0.056447, -0.363488, 0.929887,
		0.255873, -0.895000, -0.365383,
		66.966095, 57.665241, 60.281574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.262314, 57.780884, 61.029072>,  <66.786987, 58.291744, 60.537342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.262314, 57.780884, 61.029072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.326790, 57.724121, 60.638405>,  <67.365471, 57.690063, 60.404003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.326790, 57.724121, 60.638405>,  <67.262314, 57.780884, 61.029072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.326790, 57.724121, 60.638405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963068, 0.238886, 0.124229,
		0.215683, -0.960623, 0.175170,
		0.161183, -0.141907, -0.976669,
		67.375145, 57.681549, 60.345406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.803650, 57.162460, 60.874413>,  <67.262314, 57.780884, 61.029072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.803650, 57.162460, 60.874413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.815453, 57.445969, 60.592484>,  <67.822533, 57.616074, 60.423328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.815453, 57.445969, 60.592484>,  <67.803650, 57.162460, 60.874413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.815453, 57.445969, 60.592484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968192, 0.155012, 0.196408,
		0.248464, -0.688194, -0.681655,
		0.029502, 0.708774, -0.704819,
		67.824303, 57.658600, 60.381039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.288918, 56.998825, 60.390091>,  <67.803650, 57.162460, 60.874413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.288918, 56.998825, 60.390091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.239418, 57.395313, 60.408752>,  <68.209717, 57.633205, 60.419949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.239418, 57.395313, 60.408752>,  <68.288918, 56.998825, 60.390091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.239418, 57.395313, 60.408752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936956, 0.101225, 0.334466,
		0.326806, 0.085100, -0.941252,
		-0.123741, 0.991217, 0.046654,
		68.202293, 57.692677, 60.422749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.760696, 57.279320, 59.882370>,  <68.288918, 56.998825, 60.390091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.760696, 57.279320, 59.882370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.667404, 57.513443, 60.192986>,  <68.611427, 57.653919, 60.379353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.667404, 57.513443, 60.192986>,  <68.760696, 57.279320, 59.882370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.667404, 57.513443, 60.192986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932213, 0.361836, 0.007265,
		-0.276726, 0.725592, -0.630031,
		-0.233239, 0.585313, 0.776536,
		68.597435, 57.689037, 60.425945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.305656, 57.857788, 59.811161>,  <68.760696, 57.279320, 59.882370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.305656, 57.857788, 59.811161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.978027, 57.970390, 59.611214>,  <68.781448, 58.037952, 59.491245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.978027, 57.970390, 59.611214>,  <69.305656, 57.857788, 59.811161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.978027, 57.970390, 59.611214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008711, 0.865129, 0.501474,
		0.573620, 0.415100, -0.706154,
		-0.819075, 0.281504, -0.499871,
		68.732307, 58.054840, 59.461254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.844765, 58.019127, 59.284794>,  <69.305656, 57.857788, 59.811161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.844765, 58.019127, 59.284794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.899841, 58.288803, 58.994553>,  <69.932892, 58.450607, 58.820408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.899841, 58.288803, 58.994553>,  <69.844765, 58.019127, 59.284794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.899841, 58.288803, 58.994553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016023, -0.734006, -0.678955,
		-0.990344, 0.081866, -0.111875,
		0.137701, 0.674191, -0.725606,
		69.941154, 58.491062, 58.776871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.588715, 58.130356, 59.403797>,  <69.844765, 58.019127, 59.284794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.588715, 58.130356, 59.403797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.975494, 58.088070, 59.311005>,  <71.207565, 58.062698, 59.255329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.975494, 58.088070, 59.311005>,  <70.588715, 58.130356, 59.403797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.975494, 58.088070, 59.311005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201382, -0.241251, 0.949338,
		-0.156319, -0.964688, -0.211992,
		0.966959, -0.105708, -0.231983,
		71.265579, 58.056358, 59.241409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.889832, 57.563293, 59.804329>,  <70.588715, 58.130356, 59.403797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.889832, 57.563293, 59.804329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.182938, 57.812859, 59.695679>,  <71.358803, 57.962597, 59.630489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.182938, 57.812859, 59.695679>,  <70.889832, 57.563293, 59.804329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.182938, 57.812859, 59.695679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437248, -0.125862, 0.890491,
		0.521402, -0.771292, -0.365033,
		0.732772, 0.623913, -0.271621,
		71.402771, 58.000034, 59.614193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.512344, 57.246284, 59.939739>,  <70.889832, 57.563293, 59.804329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.512344, 57.246284, 59.939739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.554489, 57.640099, 59.995720>,  <71.579773, 57.876389, 60.029308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.554489, 57.640099, 59.995720>,  <71.512344, 57.246284, 59.939739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.554489, 57.640099, 59.995720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183936, -0.157598, 0.970222,
		0.977275, -0.076481, -0.197696,
		0.105360, 0.984537, 0.139949,
		71.586098, 57.935459, 60.037704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.192055, 57.504982, 60.264286>,  <71.512344, 57.246284, 59.939739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.192055, 57.504982, 60.264286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.893478, 57.752472, 60.362282>,  <71.714333, 57.900967, 60.421078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.893478, 57.752472, 60.362282>,  <72.192055, 57.504982, 60.264286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.893478, 57.752472, 60.362282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149686, -0.202602, 0.967753,
		0.648406, 0.759035, 0.058615,
		-0.746434, 0.618723, 0.244985,
		71.669548, 57.938087, 60.435776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.865517, 57.320248, 60.101723>,  <72.192055, 57.504982, 60.264286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.865517, 57.320248, 60.101723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.152283, 57.044151, 60.140907>,  <73.324341, 56.878494, 60.164417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.152283, 57.044151, 60.140907>,  <72.865517, 57.320248, 60.101723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.152283, 57.044151, 60.140907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688000, 0.723181, 0.060538,
		-0.112629, 0.023996, 0.993347,
		0.716917, -0.690242, 0.097961,
		73.367355, 56.837078, 60.170296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.173569, 57.333290, 60.915260>,  <72.865517, 57.320248, 60.101723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.173569, 57.333290, 60.915260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.431000, 57.222702, 60.629776>,  <73.585457, 57.156349, 60.458485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.431000, 57.222702, 60.629776>,  <73.173569, 57.333290, 60.915260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.431000, 57.222702, 60.629776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723361, 0.524435, 0.449129,
		0.250124, -0.805316, 0.537497,
		0.643573, -0.276467, -0.713708,
		73.624069, 57.139763, 60.415665>
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
