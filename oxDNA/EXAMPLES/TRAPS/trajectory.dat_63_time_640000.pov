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
	<36.674297, 53.206493, 49.823685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765423, 52.817524, 49.843647>,  <36.820099, 52.584141, 49.855625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765423, 52.817524, 49.843647>,  <36.674297, 53.206493, 49.823685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765423, 52.817524, 49.843647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809272, 0.217592, 0.545649,
		-0.541463, -0.083916, 0.836526,
		0.227811, -0.972426, 0.049907,
		36.833767, 52.525795, 49.858620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857956, 52.921883, 50.581242>,  <36.674297, 53.206493, 49.823685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857956, 52.921883, 50.581242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025642, 52.715374, 50.282516>,  <37.126255, 52.591469, 50.103283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025642, 52.715374, 50.282516>,  <36.857956, 52.921883, 50.581242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025642, 52.715374, 50.282516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904799, 0.169777, 0.390532,
		-0.074829, -0.839429, 0.538294,
		0.419214, -0.516270, -0.746810,
		37.151405, 52.560493, 50.058472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270180, 52.323513, 50.829548>,  <36.857956, 52.921883, 50.581242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270180, 52.323513, 50.829548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381439, 52.529037, 50.504925>,  <37.448196, 52.652351, 50.310150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381439, 52.529037, 50.504925>,  <37.270180, 52.323513, 50.829548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381439, 52.529037, 50.504925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929700, 0.068352, 0.361920,
		0.241432, -0.855173, -0.458682,
		0.278152, 0.513816, -0.811557,
		37.464886, 52.683182, 50.261459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891640, 52.053913, 50.365593>,  <37.270180, 52.323513, 50.829548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891640, 52.053913, 50.365593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892658, 52.452175, 50.402817>,  <37.893269, 52.691132, 50.425152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892658, 52.452175, 50.402817>,  <37.891640, 52.053913, 50.365593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892658, 52.452175, 50.402817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945238, -0.032771, 0.324733,
		0.326372, 0.087136, -0.941217,
		0.002548, 0.995657, 0.093060,
		37.893421, 52.750874, 50.430733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362976, 52.376328, 49.925663>,  <37.891640, 52.053913, 50.365593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362976, 52.376328, 49.925663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285557, 52.543526, 50.280701>,  <38.239105, 52.643845, 50.493721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285557, 52.543526, 50.280701>,  <38.362976, 52.376328, 49.925663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285557, 52.543526, 50.280701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889836, -0.306229, 0.338254,
		0.413194, 0.855280, -0.312677,
		-0.193551, 0.417996, 0.887591,
		38.227493, 52.668926, 50.546978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942204, 52.772438, 50.144505>,  <38.362976, 52.376328, 49.925663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942204, 52.772438, 50.144505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768017, 52.656845, 50.485527>,  <38.663506, 52.587490, 50.690140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768017, 52.656845, 50.485527>,  <38.942204, 52.772438, 50.144505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768017, 52.656845, 50.485527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898762, -0.085981, 0.429924,
		-0.050937, 0.953466, 0.297167,
		-0.435469, -0.288981, 0.852559,
		38.637375, 52.570152, 50.741295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379002, 52.962395, 50.708775>,  <38.942204, 52.772438, 50.144505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379002, 52.962395, 50.708775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130959, 52.682121, 50.849918>,  <38.982132, 52.513958, 50.934605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130959, 52.682121, 50.849918>,  <39.379002, 52.962395, 50.708775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130959, 52.682121, 50.849918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766580, -0.445560, 0.462419,
		-0.166789, 0.557244, 0.813425,
		-0.620110, -0.700682, 0.352858,
		38.944927, 52.471916, 50.955776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519566, 52.798183, 51.355629>,  <39.379002, 52.962395, 50.708775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519566, 52.798183, 51.355629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368694, 52.472763, 51.178600>,  <39.278172, 52.277512, 51.072384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368694, 52.472763, 51.178600>,  <39.519566, 52.798183, 51.355629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368694, 52.472763, 51.178600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808249, -0.522463, 0.271598,
		-0.452185, -0.255265, 0.854616,
		-0.377176, -0.813555, -0.442567,
		39.255543, 52.228695, 51.045830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162666, 52.482075, 51.465225>,  <39.519566, 52.798183, 51.355629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162666, 52.482075, 51.465225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526199, 52.322742, 51.514790>,  <40.744320, 52.227142, 51.544529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526199, 52.322742, 51.514790>,  <40.162666, 52.482075, 51.465225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526199, 52.322742, 51.514790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077436, 0.452963, 0.888160,
		-0.409907, -0.797596, 0.442513,
		0.908834, -0.398329, 0.123910,
		40.798851, 52.203243, 51.551964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192822, 52.238667, 52.238972>,  <40.162666, 52.482075, 51.465225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192822, 52.238667, 52.238972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556232, 52.274246, 52.075668>,  <40.774277, 52.295593, 51.977688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556232, 52.274246, 52.075668>,  <40.192822, 52.238667, 52.238972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556232, 52.274246, 52.075668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321805, 0.474261, 0.819462,
		0.266506, -0.875880, 0.402255,
		0.908524, 0.088944, -0.408256,
		40.828789, 52.300930, 51.953190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797932, 52.017860, 52.637959>,  <40.192822, 52.238667, 52.238972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.797932, 52.017860, 52.637959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.923294, 52.294388, 52.377541>,  <40.998512, 52.460304, 52.221291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.923294, 52.294388, 52.377541>,  <40.797932, 52.017860, 52.637959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923294, 52.294388, 52.377541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538415, 0.435372, 0.721498,
		0.782229, -0.576656, -0.235766,
		0.313410, 0.691317, -0.651041,
		41.017319, 52.501781, 52.182228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587048, 52.085503, 52.588303>,  <40.797932, 52.017860, 52.637959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587048, 52.085503, 52.588303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.431000, 52.437286, 52.479225>,  <41.337372, 52.648357, 52.413776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.431000, 52.437286, 52.479225>,  <41.587048, 52.085503, 52.588303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431000, 52.437286, 52.479225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624424, 0.470347, 0.623593,
		0.676685, 0.072996, -0.732645,
		-0.390117, 0.879457, -0.272697,
		41.313965, 52.701122, 52.397415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.149658, 52.593685, 52.597134>,  <41.587048, 52.085503, 52.588303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.149658, 52.593685, 52.597134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827839, 52.831108, 52.605049>,  <41.634747, 52.973560, 52.609798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827839, 52.831108, 52.605049>,  <42.149658, 52.593685, 52.597134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827839, 52.831108, 52.605049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475109, 0.623287, 0.621116,
		0.356329, 0.509123, -0.783469,
		-0.804550, 0.593555, 0.019794,
		41.586475, 53.009174, 52.610989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226688, 53.301105, 52.249489>,  <42.149658, 52.593685, 52.597134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226688, 53.301105, 52.249489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945763, 53.352104, 52.529633>,  <41.777206, 53.382702, 52.697720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945763, 53.352104, 52.529633>,  <42.226688, 53.301105, 52.249489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945763, 53.352104, 52.529633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534292, 0.744540, 0.400239,
		-0.470418, 0.655289, -0.591019,
		-0.702310, 0.127497, 0.700361,
		41.735069, 53.390354, 52.739742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.476185, 53.854389, 52.520489>,  <42.226688, 53.301105, 52.249489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.476185, 53.854389, 52.520489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.157074, 53.794388, 52.754089>,  <41.965607, 53.758385, 52.894249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.157074, 53.794388, 52.754089>,  <42.476185, 53.854389, 52.520489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.157074, 53.794388, 52.754089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262775, 0.785242, 0.560664,
		-0.542683, 0.600744, -0.587029,
		-0.797775, -0.150006, 0.583998,
		41.917740, 53.749386, 52.929287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.676235, 54.585213, 52.644489>,  <42.476185, 53.854389, 52.520489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.676235, 54.585213, 52.644489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760204, 54.947628, 52.791473>,  <42.810585, 55.165077, 52.879665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760204, 54.947628, 52.791473>,  <42.676235, 54.585213, 52.644489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.760204, 54.947628, 52.791473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554697, -0.419863, 0.718350,
		0.805136, 0.053033, -0.590715,
		0.209923, 0.906037, 0.367464,
		42.823181, 55.219440, 52.901714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.427082, 54.818722, 52.624302>,  <42.676235, 54.585213, 52.644489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.427082, 54.818722, 52.624302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.194767, 54.925533, 52.931908>,  <43.055378, 54.989620, 53.116470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.194767, 54.925533, 52.931908>,  <43.427082, 54.818722, 52.624302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.194767, 54.925533, 52.931908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546073, -0.572801, 0.611312,
		0.603727, 0.774982, 0.186862,
		-0.580791, 0.267025, 0.769012,
		43.020531, 55.005642, 53.162613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.953217, 54.812160, 53.208218>,  <43.427082, 54.818722, 52.624302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.953217, 54.812160, 53.208218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.567242, 54.744850, 53.288788>,  <43.335655, 54.704464, 53.337132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.567242, 54.744850, 53.288788>,  <43.953217, 54.812160, 53.208218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.567242, 54.744850, 53.288788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262002, -0.663066, 0.701213,
		0.015564, 0.729403, 0.683907,
		-0.964942, -0.168271, 0.201425,
		43.277760, 54.694370, 53.349216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.099529, 54.664257, 53.955956>,  <43.953217, 54.812160, 53.208218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.099529, 54.664257, 53.955956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.770168, 54.479645, 53.823891>,  <43.572552, 54.368877, 53.744652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.770168, 54.479645, 53.823891>,  <44.099529, 54.664257, 53.955956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.770168, 54.479645, 53.823891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157602, -0.744920, 0.648272,
		-0.545137, 0.481753, 0.686105,
		-0.823400, -0.461528, -0.330158,
		43.523148, 54.341187, 53.724842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.011436, 54.400436, 54.581997>,  <44.099529, 54.664257, 53.955956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.011436, 54.400436, 54.581997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.799747, 54.166939, 54.335690>,  <43.672733, 54.026840, 54.187904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.799747, 54.166939, 54.335690>,  <44.011436, 54.400436, 54.581997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.799747, 54.166939, 54.335690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107667, -0.766060, 0.633688,
		-0.841623, 0.269066, 0.468268,
		-0.529225, -0.583743, -0.615764,
		43.640980, 53.991817, 54.150959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.373829, 54.099098, 54.925556>,  <44.011436, 54.400436, 54.581997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.373829, 54.099098, 54.925556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527077, 53.883232, 54.625694>,  <43.619026, 53.753712, 54.445778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527077, 53.883232, 54.625694>,  <43.373829, 54.099098, 54.925556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.527077, 53.883232, 54.625694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028706, -0.818145, 0.574295,
		-0.923254, -0.198503, -0.328937,
		0.383118, -0.539663, -0.749657,
		43.642014, 53.721333, 54.400799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.122700, 53.375931, 54.782722>,  <43.373829, 54.099098, 54.925556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.122700, 53.375931, 54.782722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.168907, 53.503830, 55.158897>,  <43.196632, 53.580570, 55.384602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.168907, 53.503830, 55.158897>,  <43.122700, 53.375931, 54.782722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168907, 53.503830, 55.158897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715305, -0.630135, 0.302106,
		0.689199, -0.707596, 0.155925,
		0.115516, 0.319745, 0.940436,
		43.203564, 53.599754, 55.441029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.777336, 52.726288, 54.505367>,  <43.122700, 53.375931, 54.782722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.777336, 52.726288, 54.505367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.860367, 52.703465, 54.114746>,  <42.910187, 52.689770, 53.880375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.860367, 52.703465, 54.114746>,  <42.777336, 52.726288, 54.505367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.860367, 52.703465, 54.114746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968180, -0.130661, 0.213436,
		-0.139776, -0.989784, 0.028123,
		0.207580, -0.057061, -0.976552,
		42.922642, 52.686348, 53.821781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.279160, 52.076752, 54.339943>,  <42.777336, 52.726288, 54.505367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.279160, 52.076752, 54.339943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.323364, 52.420910, 54.140945>,  <43.349888, 52.627407, 54.021545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.323364, 52.420910, 54.140945>,  <43.279160, 52.076752, 54.339943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.323364, 52.420910, 54.140945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945581, 0.063121, 0.319205,
		0.306046, -0.505700, -0.806600,
		0.110508, 0.860397, -0.497498,
		43.356518, 52.679028, 53.991695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.849148, 51.979214, 54.072952>,  <43.279160, 52.076752, 54.339943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.849148, 51.979214, 54.072952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.842789, 52.378487, 54.049728>,  <43.838974, 52.618050, 54.035793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.842789, 52.378487, 54.049728>,  <43.849148, 51.979214, 54.072952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.842789, 52.378487, 54.049728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927650, 0.036395, 0.371674,
		0.373113, -0.047953, -0.926546,
		-0.015899, 0.998186, -0.058062,
		43.838020, 52.677944, 54.032310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.571632, 52.240826, 53.782326>,  <43.849148, 51.979214, 54.072952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.571632, 52.240826, 53.782326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.378414, 52.503681, 54.013786>,  <44.262486, 52.661396, 54.152660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.378414, 52.503681, 54.013786>,  <44.571632, 52.240826, 53.782326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.378414, 52.503681, 54.013786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810503, 0.085532, 0.579456,
		0.331291, 0.748900, -0.573930,
		-0.483044, 0.657141, 0.578650,
		44.233501, 52.700825, 54.187382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.967079, 52.869961, 53.770271>,  <44.571632, 52.240826, 53.782326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.967079, 52.869961, 53.770271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.764771, 52.825211, 54.112427>,  <44.643387, 52.798359, 54.317719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.764771, 52.825211, 54.112427>,  <44.967079, 52.869961, 53.770271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.764771, 52.825211, 54.112427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859086, 0.024969, 0.511222,
		-0.078551, 0.993409, 0.083482,
		-0.505767, -0.111875, 0.855385,
		44.613041, 52.791649, 54.369041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.130989, 53.469341, 54.236549>,  <44.967079, 52.869961, 53.770271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.130989, 53.469341, 54.236549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.047276, 53.113434, 54.398796>,  <44.997047, 52.899891, 54.496143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.047276, 53.113434, 54.398796>,  <45.130989, 53.469341, 54.236549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.047276, 53.113434, 54.398796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938556, -0.066358, 0.338689,
		-0.274437, 0.451571, 0.848980,
		-0.209279, -0.889764, 0.405613,
		44.984493, 52.846504, 54.520481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.171047, 53.423527, 54.947624>,  <45.130989, 53.469341, 54.236549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.171047, 53.423527, 54.947624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.291409, 53.093769, 54.755859>,  <45.363625, 52.895916, 54.640800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.291409, 53.093769, 54.755859>,  <45.171047, 53.423527, 54.947624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.291409, 53.093769, 54.755859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907568, 0.093156, 0.409442,
		-0.292880, -0.558303, 0.776221,
		0.300903, -0.824391, -0.479414,
		45.381680, 52.846451, 54.612034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.337872, 53.035458, 55.452045>,  <45.171047, 53.423527, 54.947624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.337872, 53.035458, 55.452045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.543129, 52.990444, 55.111687>,  <45.666283, 52.963436, 54.907471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.543129, 52.990444, 55.111687>,  <45.337872, 53.035458, 55.452045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.543129, 52.990444, 55.111687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845946, 0.233929, 0.479221,
		0.145120, -0.965719, 0.215237,
		0.513143, -0.112535, -0.850893,
		45.697071, 52.956684, 54.856419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.003571, 52.807800, 55.743359>,  <45.337872, 53.035458, 55.452045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.003571, 52.807800, 55.743359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.085045, 52.938545, 55.374214>,  <46.133930, 53.016994, 55.152729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.085045, 52.938545, 55.374214>,  <46.003571, 52.807800, 55.743359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.085045, 52.938545, 55.374214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902580, 0.302488, 0.306351,
		0.379289, -0.895355, -0.233408,
		0.203689, 0.326865, -0.922859,
		46.146152, 53.036606, 55.097355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.651279, 52.562576, 55.603336>,  <46.003571, 52.807800, 55.743359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.651279, 52.562576, 55.603336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.539860, 52.898109, 55.416245>,  <46.473007, 53.099430, 55.303989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.539860, 52.898109, 55.416245>,  <46.651279, 52.562576, 55.603336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.539860, 52.898109, 55.416245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774090, 0.484356, 0.407657,
		0.568503, -0.248512, -0.784249,
		-0.278548, 0.838833, -0.467728,
		46.456295, 53.149761, 55.275925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.206551, 52.873669, 55.159790>,  <46.651279, 52.562576, 55.603336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.206551, 52.873669, 55.159790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.966953, 53.152802, 55.316887>,  <46.823196, 53.320282, 55.411144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.966953, 53.152802, 55.316887>,  <47.206551, 52.873669, 55.159790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.966953, 53.152802, 55.316887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785702, 0.417536, 0.456439,
		0.154534, 0.581978, -0.798386,
		-0.598992, 0.697829, 0.392738,
		46.787254, 53.362152, 55.434708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.437065, 53.566956, 55.058418>,  <47.206551, 52.873669, 55.159790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.437065, 53.566956, 55.058418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.243427, 53.581970, 55.408104>,  <47.127243, 53.590977, 55.617916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.243427, 53.581970, 55.408104>,  <47.437065, 53.566956, 55.058418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.243427, 53.581970, 55.408104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847285, 0.269631, 0.457610,
		-0.218539, 0.962232, -0.162328,
		-0.484096, 0.037533, 0.874210,
		47.098198, 53.593231, 55.670368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.516979, 54.214092, 55.447937>,  <47.437065, 53.566956, 55.058418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.516979, 54.214092, 55.447937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.483902, 53.882973, 55.669899>,  <47.464058, 53.684303, 55.803078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.483902, 53.882973, 55.669899>,  <47.516979, 54.214092, 55.447937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.483902, 53.882973, 55.669899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936597, 0.125700, 0.327087,
		-0.340512, 0.546768, 0.764916,
		-0.082691, -0.827795, 0.554904,
		47.459095, 53.634636, 55.836369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.627754, 54.456150, 56.113403>,  <47.516979, 54.214092, 55.447937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.627754, 54.456150, 56.113403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.732574, 54.070690, 56.092583>,  <47.795467, 53.839413, 56.080090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.732574, 54.070690, 56.092583>,  <47.627754, 54.456150, 56.113403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.732574, 54.070690, 56.092583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811612, 0.190883, 0.552132,
		-0.522126, -0.186932, 0.832130,
		0.262050, -0.963649, -0.052051,
		47.811188, 53.781597, 56.076969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.214916, 54.884342, 55.695675>,  <47.627754, 54.456150, 56.113403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.214916, 54.884342, 55.695675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.384415, 55.057438, 55.377388>,  <48.486115, 55.161297, 55.186417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.384415, 55.057438, 55.377388>,  <48.214916, 54.884342, 55.695675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.384415, 55.057438, 55.377388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741687, 0.338507, 0.579063,
		0.519943, -0.835552, -0.177519,
		0.423746, 0.432742, -0.795722,
		48.511539, 55.187260, 55.138672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.042713, 54.847622, 55.670601>,  <48.214916, 54.884342, 55.695675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.042713, 54.847622, 55.670601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.002686, 55.171783, 55.439697>,  <48.978668, 55.366280, 55.301155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.002686, 55.171783, 55.439697>,  <49.042713, 54.847622, 55.670601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.002686, 55.171783, 55.439697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883724, 0.338974, 0.322689,
		0.457185, -0.477848, -0.750095,
		-0.100066, 0.810406, -0.577260,
		48.972664, 55.414906, 55.266518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.443069, 54.906471, 54.985374>,  <49.042713, 54.847622, 55.670601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.443069, 54.906471, 54.985374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.399773, 55.265129, 55.157104>,  <49.373795, 55.480324, 55.260143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.399773, 55.265129, 55.157104>,  <49.443069, 54.906471, 54.985374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.399773, 55.265129, 55.157104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963756, -0.011276, 0.266546,
		0.243837, 0.442615, -0.862922,
		-0.108247, 0.896641, 0.429323,
		49.367298, 55.534122, 55.285900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.836533, 55.594807, 54.631107>,  <49.443069, 54.906471, 54.985374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.836533, 55.594807, 54.631107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.799316, 55.633663, 55.027473>,  <49.776989, 55.656979, 55.265293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.799316, 55.633663, 55.027473>,  <49.836533, 55.594807, 54.631107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.799316, 55.633663, 55.027473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995583, 0.021647, 0.091353,
		-0.012577, 0.995035, -0.098725,
		-0.093037, 0.097140, 0.990913,
		49.771404, 55.662804, 55.324749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.348179, 56.115108, 54.870193>,  <49.836533, 55.594807, 54.631107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.348179, 56.115108, 54.870193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.243439, 55.861126, 55.160919>,  <50.180595, 55.708736, 55.335354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.243439, 55.861126, 55.160919>,  <50.348179, 56.115108, 54.870193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.243439, 55.861126, 55.160919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963591, -0.214234, 0.159990,
		0.054121, 0.742246, 0.667939,
		-0.261847, -0.634961, 0.726816,
		50.164886, 55.670639, 55.378963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.638355, 56.350464, 55.470726>,  <50.348179, 56.115108, 54.870193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.638355, 56.350464, 55.470726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.539551, 55.967010, 55.527306>,  <50.480267, 55.736938, 55.561253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.539551, 55.967010, 55.527306>,  <50.638355, 56.350464, 55.470726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.539551, 55.967010, 55.527306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899149, -0.172331, 0.402284,
		-0.361267, 0.226551, 0.904522,
		-0.247015, -0.958633, 0.141446,
		50.465446, 55.679420, 55.569740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.210518, 56.217506, 55.838341>,  <50.638355, 56.350464, 55.470726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.210518, 56.217506, 55.838341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.021641, 55.870747, 55.774437>,  <50.908314, 55.662689, 55.736095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.021641, 55.870747, 55.774437>,  <51.210518, 56.217506, 55.838341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.021641, 55.870747, 55.774437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742930, -0.488918, 0.457180,
		-0.474436, 0.097189, 0.874908,
		-0.472191, -0.866899, -0.159756,
		50.879982, 55.610676, 55.726509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.187325, 55.900818, 56.497425>,  <51.210518, 56.217506, 55.838341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.187325, 55.900818, 56.497425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.157883, 55.619125, 56.214966>,  <51.140217, 55.450111, 56.045490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.157883, 55.619125, 56.214966>,  <51.187325, 55.900818, 56.497425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.157883, 55.619125, 56.214966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870833, -0.390469, 0.298637,
		-0.486037, -0.592953, 0.642009,
		-0.073607, -0.704231, -0.706145,
		51.135799, 55.407856, 56.003120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.243244, 55.270607, 56.940105>,  <51.187325, 55.900818, 56.497425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.243244, 55.270607, 56.940105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.374172, 55.303703, 56.563591>,  <51.452728, 55.323563, 56.337681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.374172, 55.303703, 56.563591>,  <51.243244, 55.270607, 56.940105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.374172, 55.303703, 56.563591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944464, 0.002113, 0.328609,
		0.029179, -0.996569, -0.077456,
		0.327318, 0.082743, -0.941285,
		51.472366, 55.328526, 56.281204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.783768, 54.706821, 56.699318>,  <51.243244, 55.270607, 56.940105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.783768, 54.706821, 56.699318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.869022, 55.048061, 56.508827>,  <51.920174, 55.252808, 56.394531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.869022, 55.048061, 56.508827>,  <51.783768, 54.706821, 56.699318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.869022, 55.048061, 56.508827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976310, -0.167358, 0.137146,
		0.037299, -0.494175, -0.868562,
		0.213135, 0.853102, -0.476226,
		51.932964, 55.303993, 56.365959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.069088, 54.644516, 56.105293>,  <51.783768, 54.706821, 56.699318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.069088, 54.644516, 56.105293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.237965, 54.974155, 56.256348>,  <52.339291, 55.171940, 56.346981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.237965, 54.974155, 56.256348>,  <52.069088, 54.644516, 56.105293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.237965, 54.974155, 56.256348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905023, -0.407002, -0.123623,
		0.051823, 0.393965, -0.917663,
		0.422194, 0.824100, 0.377640,
		52.364624, 55.221386, 56.369640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.713142, 55.019005, 55.757153>,  <52.069088, 54.644516, 56.105293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.713142, 55.019005, 55.757153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.760178, 55.149628, 56.132286>,  <52.788399, 55.228001, 56.357368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.760178, 55.149628, 56.132286>,  <52.713142, 55.019005, 55.757153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.760178, 55.149628, 56.132286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901112, -0.431968, 0.037431,
		0.417338, 0.840695, -0.345052,
		0.117584, 0.326552, 0.937837,
		52.795452, 55.247593, 56.413635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.398438, 55.443073, 55.895489>,  <52.713142, 55.019005, 55.757153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.398438, 55.443073, 55.895489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.301666, 55.298218, 56.255562>,  <53.243603, 55.211304, 56.471603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.301666, 55.298218, 56.255562>,  <53.398438, 55.443073, 55.895489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.301666, 55.298218, 56.255562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918492, -0.384553, 0.092149,
		0.312796, 0.849101, 0.425660,
		-0.241932, -0.362141, 0.900179,
		53.229088, 55.189575, 56.525616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.889618, 55.696480, 56.405033>,  <53.398438, 55.443073, 55.895489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.889618, 55.696480, 56.405033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.780727, 55.335968, 56.539848>,  <53.715393, 55.119663, 56.620739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.780727, 55.335968, 56.539848>,  <53.889618, 55.696480, 56.405033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.780727, 55.335968, 56.539848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958209, -0.221909, 0.180531,
		-0.087917, 0.372096, 0.924021,
		-0.272223, -0.901277, 0.337037,
		53.699059, 55.065586, 56.640961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.146393, 55.574226, 57.131531>,  <53.889618, 55.696480, 56.405033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.146393, 55.574226, 57.131531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.126564, 55.243286, 56.907738>,  <54.114666, 55.044720, 56.773460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.126564, 55.243286, 56.907738>,  <54.146393, 55.574226, 57.131531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.126564, 55.243286, 56.907738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990796, -0.111384, 0.076920,
		-0.125958, -0.550524, 0.825262,
		-0.049575, -0.827355, -0.559487,
		54.111691, 54.995079, 56.739891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.524883, 54.953136, 57.478634>,  <54.146393, 55.574226, 57.131531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.524883, 54.953136, 57.478634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.530457, 54.997673, 57.081161>,  <54.533802, 55.024395, 56.842678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.530457, 54.997673, 57.081161>,  <54.524883, 54.953136, 57.478634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.530457, 54.997673, 57.081161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998810, 0.044898, 0.019040,
		0.046735, -0.992767, -0.110583,
		0.013937, 0.111341, -0.993685,
		54.534637, 55.031075, 56.783054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.062531, 54.538406, 57.087055>,  <54.524883, 54.953136, 57.478634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.062531, 54.538406, 57.087055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.985954, 54.849979, 56.848183>,  <54.940010, 55.036922, 56.704861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.985954, 54.849979, 56.848183>,  <55.062531, 54.538406, 57.087055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.985954, 54.849979, 56.848183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980071, 0.118827, -0.159190,
		-0.053037, -0.615750, -0.786154,
		-0.191438, 0.778930, -0.597177,
		54.928524, 55.083660, 56.669029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.610443, 54.617828, 56.507492>,  <55.062531, 54.538406, 57.087055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.610443, 54.617828, 56.507492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.498474, 54.998947, 56.554520>,  <55.431293, 55.227619, 56.582737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.498474, 54.998947, 56.554520>,  <55.610443, 54.617828, 56.507492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.498474, 54.998947, 56.554520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960007, 0.277098, 0.040049,
		0.005579, 0.124080, -0.992257,
		-0.279921, 0.952796, 0.117571,
		55.414497, 55.284786, 56.589790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.928375, 55.135498, 56.039059>,  <55.610443, 54.617828, 56.507492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.928375, 55.135498, 56.039059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.845879, 55.271820, 56.405952>,  <55.796379, 55.353611, 56.626087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.845879, 55.271820, 56.405952>,  <55.928375, 55.135498, 56.039059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.845879, 55.271820, 56.405952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965166, -0.083372, 0.248000,
		0.160990, 0.936432, -0.311734,
		-0.206245, 0.340800, 0.917234,
		55.784004, 55.374062, 56.681122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.235577, 55.865173, 56.172176>,  <55.928375, 55.135498, 56.039059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.235577, 55.865173, 56.172176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.229477, 55.564011, 56.435356>,  <56.225819, 55.383312, 56.593266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.229477, 55.564011, 56.435356>,  <56.235577, 55.865173, 56.172176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.229477, 55.564011, 56.435356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989648, 0.082552, 0.117396,
		-0.142703, 0.652932, 0.743852,
		-0.015246, -0.752904, 0.657954,
		56.224903, 55.338139, 56.632744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.324310, 55.986061, 56.976364>,  <56.235577, 55.865173, 56.172176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.324310, 55.986061, 56.976364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.492355, 55.652515, 56.833160>,  <56.593182, 55.452389, 56.747238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.492355, 55.652515, 56.833160>,  <56.324310, 55.986061, 56.976364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.492355, 55.652515, 56.833160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907379, 0.380330, 0.178918,
		-0.013031, -0.400018, 0.916414,
		0.420110, -0.833867, -0.358012,
		56.618389, 55.402355, 56.725758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.777443, 55.686638, 57.481487>,  <56.324310, 55.986061, 56.976364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.777443, 55.686638, 57.481487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.907791, 55.603371, 57.112602>,  <56.986000, 55.553410, 56.891270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.907791, 55.603371, 57.112602>,  <56.777443, 55.686638, 57.481487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.907791, 55.603371, 57.112602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836838, 0.517389, 0.178915,
		0.439898, -0.830045, 0.342803,
		0.325870, -0.208166, -0.922212,
		57.005550, 55.540920, 56.835938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.455032, 55.259747, 57.496906>,  <56.777443, 55.686638, 57.481487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.455032, 55.259747, 57.496906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.393456, 55.510662, 57.191536>,  <57.356510, 55.661209, 57.008316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.393456, 55.510662, 57.191536>,  <57.455032, 55.259747, 57.496906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.393456, 55.510662, 57.191536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766856, 0.563075, 0.308025,
		0.623084, -0.538016, -0.567719,
		-0.153946, 0.627284, -0.763423,
		57.347271, 55.698849, 56.962509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.100906, 55.200806, 57.096432>,  <57.455032, 55.259747, 57.496906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.100906, 55.200806, 57.096432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.887047, 55.538780, 57.102531>,  <57.758732, 55.741566, 57.106190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.887047, 55.538780, 57.102531>,  <58.100906, 55.200806, 57.096432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.887047, 55.538780, 57.102531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826688, 0.519188, 0.216866,
		0.175322, 0.128552, -0.976082,
		-0.534649, 0.844937, 0.015247,
		57.726654, 55.792263, 57.107105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.168842, 54.425430, 57.084660>,  <58.100906, 55.200806, 57.096432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.168842, 54.425430, 57.084660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.873329, 54.554195, 56.847824>,  <57.696022, 54.631454, 56.705723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.873329, 54.554195, 56.847824>,  <58.168842, 54.425430, 57.084660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.873329, 54.554195, 56.847824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541259, 0.806861, -0.236673,
		0.401543, -0.495322, -0.770336,
		-0.738784, 0.321917, -0.592088,
		57.651695, 54.650772, 56.670197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.801563, 54.814045, 57.501038>,  <58.168842, 54.425430, 57.084660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.801563, 54.814045, 57.501038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.892609, 54.965042, 57.860077>,  <58.947235, 55.055641, 58.075500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.892609, 54.965042, 57.860077>,  <58.801563, 54.814045, 57.501038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.892609, 54.965042, 57.860077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270117, 0.861144, -0.430660,
		-0.935536, 0.340483, 0.094044,
		0.227618, 0.377495, 0.897601,
		58.960896, 55.078289, 58.129356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.576031, 55.422207, 57.613453>,  <58.801563, 54.814045, 57.501038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.576031, 55.422207, 57.613453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.896111, 55.420879, 57.853340>,  <59.088158, 55.420082, 57.997272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.896111, 55.420879, 57.853340>,  <58.576031, 55.422207, 57.613453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.896111, 55.420879, 57.853340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354602, 0.809083, -0.468661,
		-0.483669, 0.587685, 0.648607,
		0.800201, -0.003321, 0.599722,
		59.136169, 55.419884, 58.033257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.619213, 56.189735, 57.829460>,  <58.576031, 55.422207, 57.613453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.619213, 56.189735, 57.829460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.988312, 56.044846, 57.882118>,  <59.209770, 55.957912, 57.913712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.988312, 56.044846, 57.882118>,  <58.619213, 56.189735, 57.829460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.988312, 56.044846, 57.882118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381563, 0.810488, -0.444432,
		0.054292, 0.460327, 0.886088,
		0.922747, -0.362228, 0.131641,
		59.265137, 55.936176, 57.921612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.172810, 56.547523, 58.281586>,  <58.619213, 56.189735, 57.829460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.172810, 56.547523, 58.281586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.346992, 56.352200, 57.979080>,  <59.451504, 56.235004, 57.797577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.346992, 56.352200, 57.979080>,  <59.172810, 56.547523, 58.281586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.346992, 56.352200, 57.979080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339323, 0.867165, -0.364533,
		0.833808, -0.097878, 0.543308,
		0.435458, -0.488308, -0.756262,
		59.477631, 56.205708, 57.752201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.863041, 56.776508, 57.991833>,  <59.172810, 56.547523, 58.281586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.863041, 56.776508, 57.991833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.130295, 56.746967, 58.287979>,  <60.290649, 56.729244, 58.465668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.130295, 56.746967, 58.287979>,  <59.863041, 56.776508, 57.991833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.130295, 56.746967, 58.287979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722454, 0.302324, -0.621820,
		-0.177910, 0.950340, 0.255346,
		0.668138, -0.073849, 0.740364,
		60.330734, 56.724812, 58.510090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.495419, 57.015106, 57.672512>,  <59.863041, 56.776508, 57.991833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.495419, 57.015106, 57.672512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.639175, 56.998211, 58.045403>,  <60.725430, 56.988071, 58.269138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.639175, 56.998211, 58.045403>,  <60.495419, 57.015106, 57.672512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.639175, 56.998211, 58.045403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828891, 0.473362, -0.298106,
		-0.428690, 0.879854, 0.205137,
		0.359394, -0.042242, 0.932229,
		60.746994, 56.985538, 58.325073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.673134, 57.627338, 58.027401>,  <60.495419, 57.015106, 57.672512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.673134, 57.627338, 58.027401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.932281, 57.364365, 58.181305>,  <61.087769, 57.206581, 58.273647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.932281, 57.364365, 58.181305>,  <60.673134, 57.627338, 58.027401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.932281, 57.364365, 58.181305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761658, 0.551132, -0.340778,
		0.011986, 0.513837, 0.857804,
		0.647868, -0.657439, 0.384762,
		61.126640, 57.167133, 58.296734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.233395, 57.967926, 58.438896>,  <60.673134, 57.627338, 58.027401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.233395, 57.967926, 58.438896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.393837, 57.639160, 58.277122>,  <61.490105, 57.441902, 58.180058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.393837, 57.639160, 58.277122>,  <61.233395, 57.967926, 58.438896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.393837, 57.639160, 58.277122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729858, 0.553552, -0.401108,
		0.553552, -0.134291, 0.821916,
		0.401108, -0.821916, -0.404434,
		61.514168, 57.392586, 58.155792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.843979, 57.615726, 58.714718>,  <61.233395, 57.967926, 58.438896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.843979, 57.615726, 58.714718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.841972, 57.526474, 58.324806>,  <61.840767, 57.472923, 58.090858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.841972, 57.526474, 58.324806>,  <61.843979, 57.615726, 58.714718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.841972, 57.526474, 58.324806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797387, 0.587347, -0.138553,
		0.603447, -0.777970, 0.174972,
		-0.005021, -0.223130, -0.974776,
		61.840466, 57.459534, 58.032375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.519062, 57.288246, 58.432892>,  <61.843979, 57.615726, 58.714718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.519062, 57.288246, 58.432892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.330917, 57.531357, 58.176964>,  <62.218033, 57.677223, 58.023407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.330917, 57.531357, 58.176964>,  <62.519062, 57.288246, 58.432892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.330917, 57.531357, 58.176964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877359, 0.400031, -0.264985,
		0.094897, -0.685991, -0.721395,
		-0.470357, 0.607776, -0.639822,
		62.189812, 57.713688, 57.985016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.913040, 57.255795, 57.834274>,  <62.519062, 57.288246, 58.432892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.913040, 57.255795, 57.834274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.742599, 57.617577, 57.826317>,  <62.640335, 57.834644, 57.821541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.742599, 57.617577, 57.826317>,  <62.913040, 57.255795, 57.834274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.742599, 57.617577, 57.826317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835321, 0.384897, -0.392547,
		-0.347384, -0.183885, -0.919517,
		-0.426103, 0.904456, -0.019896,
		62.614769, 57.888912, 57.820347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.543335, 56.990101, 58.062332>,  <62.913040, 57.255795, 57.834274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.543335, 56.990101, 58.062332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.845406, 57.135029, 58.280846>,  <64.026649, 57.221985, 58.411953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.845406, 57.135029, 58.280846>,  <63.543335, 56.990101, 58.062332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.845406, 57.135029, 58.280846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152490, 0.713404, -0.683961,
		-0.637535, 0.599816, 0.483497,
		0.755179, 0.362321, 0.546286,
		64.071960, 57.243725, 58.444733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.592678, 56.353111, 57.669239>,  <63.543335, 56.990101, 58.062332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.592678, 56.353111, 57.669239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.897552, 56.457375, 57.906265>,  <64.080475, 56.519932, 58.048481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.897552, 56.457375, 57.906265>,  <63.592678, 56.353111, 57.669239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.897552, 56.457375, 57.906265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458606, -0.863454, -0.210065,
		0.456902, 0.431864, -0.777646,
		0.762181, 0.260654, 0.592570,
		64.126205, 56.535572, 58.084038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.198677, 56.236660, 57.374229>,  <63.592678, 56.353111, 57.669239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.198677, 56.236660, 57.374229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.290810, 56.174774, 57.758522>,  <64.346092, 56.137642, 57.989098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.290810, 56.174774, 57.758522>,  <64.198677, 56.236660, 57.374229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.290810, 56.174774, 57.758522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467875, -0.848067, -0.248748,
		0.853251, 0.506799, -0.122952,
		0.230337, -0.154718, 0.960733,
		64.359909, 56.128357, 58.046741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.941368, 56.099827, 57.588890>,  <64.198677, 56.236660, 57.374229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.941368, 56.099827, 57.588890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.707520, 55.923683, 57.861450>,  <64.567215, 55.817997, 58.024986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.707520, 55.923683, 57.861450>,  <64.941368, 56.099827, 57.588890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.707520, 55.923683, 57.861450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518649, -0.848699, -0.103502,
		0.623884, 0.292901, 0.724554,
		-0.584612, -0.440363, 0.681402,
		64.532135, 55.791573, 58.065872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.253845, 55.690502, 58.017197>,  <64.941368, 56.099827, 57.588890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.253845, 55.690502, 58.017197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.879028, 55.551277, 58.005829>,  <64.654137, 55.467743, 57.999008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.879028, 55.551277, 58.005829>,  <65.253845, 55.690502, 58.017197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.879028, 55.551277, 58.005829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347897, -0.923309, -0.162693,
		0.030390, -0.162336, 0.986267,
		-0.937040, -0.348064, -0.028416,
		64.597916, 55.446857, 57.997303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.361443, 56.303753, 58.404388>,  <65.253845, 55.690502, 58.017197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.361443, 56.303753, 58.404388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.126534, 56.605469, 58.286980>,  <64.985588, 56.786499, 58.216534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.126534, 56.605469, 58.286980>,  <65.361443, 56.303753, 58.404388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.126534, 56.605469, 58.286980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698149, 0.655557, 0.287806,
		0.409508, -0.035899, -0.911600,
		-0.587274, 0.754292, -0.293519,
		64.950348, 56.831757, 58.198925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.703667, 56.916668, 58.500099>,  <65.361443, 56.303753, 58.404388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.703667, 56.916668, 58.500099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.371964, 57.101833, 58.374847>,  <65.172943, 57.212933, 58.299694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.371964, 57.101833, 58.374847>,  <65.703667, 56.916668, 58.500099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.371964, 57.101833, 58.374847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448329, 0.885527, 0.121831,
		0.333686, -0.039359, -0.941862,
		-0.829250, 0.462917, -0.313134,
		65.123192, 57.240707, 58.280907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.757629, 57.149109, 57.788834>,  <65.703667, 56.916668, 58.500099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.757629, 57.149109, 57.788834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.600014, 57.322613, 58.112953>,  <65.505440, 57.426716, 58.307426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.600014, 57.322613, 58.112953>,  <65.757629, 57.149109, 57.788834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.600014, 57.322613, 58.112953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653610, 0.752073, -0.084738,
		-0.646159, 0.496228, -0.579859,
		-0.394047, 0.433756, 0.810298,
		65.481796, 57.452740, 58.356041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.794945, 57.810421, 57.783672>,  <65.757629, 57.149109, 57.788834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.794945, 57.810421, 57.783672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.809181, 57.751415, 58.179039>,  <65.817726, 57.716011, 58.416260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.809181, 57.751415, 58.179039>,  <65.794945, 57.810421, 57.783672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.809181, 57.751415, 58.179039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852864, 0.520023, 0.046896,
		-0.520919, 0.841317, 0.144322,
		0.035596, -0.147516, 0.988419,
		65.819862, 57.707161, 58.475563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.773537, 58.466038, 58.078762>,  <65.794945, 57.810421, 57.783672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.773537, 58.466038, 58.078762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.960533, 58.191101, 58.301117>,  <66.072731, 58.026138, 58.434532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.960533, 58.191101, 58.301117>,  <65.773537, 58.466038, 58.078762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.960533, 58.191101, 58.301117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769879, 0.625610, 0.126093,
		-0.434438, 0.369020, 0.821637,
		0.467494, -0.687340, 0.555889,
		66.100784, 57.984898, 58.467884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.012184, 58.705296, 58.777889>,  <65.773537, 58.466038, 58.078762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.012184, 58.705296, 58.777889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.268539, 58.419785, 58.664917>,  <66.422356, 58.248478, 58.597134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.268539, 58.419785, 58.664917>,  <66.012184, 58.705296, 58.777889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.268539, 58.419785, 58.664917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757942, 0.530165, 0.380064,
		-0.121547, -0.457649, 0.880786,
		0.640898, -0.713780, -0.282432,
		66.460808, 58.205650, 58.580189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.511848, 58.430801, 59.362556>,  <66.012184, 58.705296, 58.777889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.511848, 58.430801, 59.362556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.665115, 58.444160, 58.993324>,  <66.757072, 58.452175, 58.771786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.665115, 58.444160, 58.993324>,  <66.511848, 58.430801, 59.362556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.665115, 58.444160, 58.993324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658382, 0.691054, 0.298292,
		0.647858, -0.722031, 0.242796,
		0.383161, 0.033398, -0.923078,
		66.780067, 58.454182, 58.716400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.321007, 58.167385, 59.187382>,  <66.511848, 58.430801, 59.362556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.321007, 58.167385, 59.187382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.203972, 58.460159, 58.941238>,  <67.133751, 58.635822, 58.793552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.203972, 58.460159, 58.941238>,  <67.321007, 58.167385, 59.187382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.203972, 58.460159, 58.941238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735784, 0.583339, 0.344003,
		0.610750, -0.352120, -0.709222,
		-0.292587, 0.731934, -0.615358,
		67.116196, 58.679741, 58.756630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.916901, 58.521603, 58.832592>,  <67.321007, 58.167385, 59.187382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.916901, 58.521603, 58.832592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.610428, 58.775928, 58.869911>,  <67.426544, 58.928524, 58.892303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.610428, 58.775928, 58.869911>,  <67.916901, 58.521603, 58.832592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.610428, 58.775928, 58.869911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595753, 0.648341, 0.474059,
		0.240926, 0.418797, -0.875536,
		-0.766181, 0.635817, 0.093298,
		67.380577, 58.966675, 58.897900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.608414, 58.103718, 58.877224>,  <67.916901, 58.521603, 58.832592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.608414, 58.103718, 58.877224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.699326, 58.484390, 58.959824>,  <68.753868, 58.712795, 59.009384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.699326, 58.484390, 58.959824>,  <68.608414, 58.103718, 58.877224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.699326, 58.484390, 58.959824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761012, -0.305875, 0.572102,
		0.607624, 0.027124, -0.793761,
		0.227274, 0.951685, 0.206499,
		68.767509, 58.769897, 59.021774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.260773, 58.318954, 58.634712>,  <68.608414, 58.103718, 58.877224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.260773, 58.318954, 58.634712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.182838, 58.552841, 58.949707>,  <69.136078, 58.693172, 59.138706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.182838, 58.552841, 58.949707>,  <69.260773, 58.318954, 58.634712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.182838, 58.552841, 58.949707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840650, -0.314085, 0.441201,
		0.505317, 0.747968, -0.430348,
		-0.194838, 0.584718, 0.787491,
		69.124390, 58.728256, 59.185955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.850021, 58.698639, 58.823708>,  <69.260773, 58.318954, 58.634712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.850021, 58.698639, 58.823708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.639030, 58.650955, 59.160172>,  <69.512436, 58.622345, 59.362049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.639030, 58.650955, 59.160172>,  <69.850021, 58.698639, 58.823708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.639030, 58.650955, 59.160172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847038, -0.150139, 0.509888,
		0.065509, 0.981452, 0.180168,
		-0.527481, -0.119207, 0.841162,
		69.480789, 58.615192, 59.412521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.134598, 59.000801, 59.398998>,  <69.850021, 58.698639, 58.823708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.134598, 59.000801, 59.398998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.915070, 58.716518, 59.575043>,  <69.783356, 58.545948, 59.680668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.915070, 58.716518, 59.575043>,  <70.134598, 59.000801, 59.398998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.915070, 58.716518, 59.575043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695119, -0.095544, 0.712517,
		-0.464344, 0.696966, 0.546464,
		-0.548811, -0.710711, 0.440109,
		69.750427, 58.503304, 59.707077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.219299, 59.160221, 60.091656>,  <70.134598, 59.000801, 59.398998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.219299, 59.160221, 60.091656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.116081, 58.773979, 60.078835>,  <70.054153, 58.542236, 60.071140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.116081, 58.773979, 60.078835>,  <70.219299, 59.160221, 60.091656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.116081, 58.773979, 60.078835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670706, -0.202917, 0.713426,
		-0.695391, 0.162593, 0.699997,
		-0.258040, -0.965602, -0.032055,
		70.038666, 58.484299, 60.069218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.914238, 58.943565, 60.840927>,  <70.219299, 59.160221, 60.091656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.914238, 58.943565, 60.840927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.082001, 58.655331, 60.620071>,  <70.182655, 58.482391, 60.487556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.082001, 58.655331, 60.620071>,  <69.914238, 58.943565, 60.840927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.082001, 58.655331, 60.620071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597612, -0.238680, 0.765435,
		-0.683345, -0.650993, 0.330526,
		0.419403, -0.720583, -0.552142,
		70.207825, 58.439156, 60.454430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.279778, 58.676003, 61.308250>,  <69.914238, 58.943565, 60.840927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.279778, 58.676003, 61.308250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.399513, 58.462036, 60.992210>,  <70.471352, 58.333656, 60.802586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.399513, 58.462036, 60.992210>,  <70.279778, 58.676003, 61.308250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.399513, 58.462036, 60.992210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694899, -0.445225, 0.564704,
		-0.653843, -0.718077, 0.238442,
		0.299341, -0.534921, -0.790098,
		70.489319, 58.301559, 60.755180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.284035, 57.864811, 61.469322>,  <70.279778, 58.676003, 61.308250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.284035, 57.864811, 61.469322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.531570, 58.022224, 61.197388>,  <70.680092, 58.116673, 61.034229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.531570, 58.022224, 61.197388>,  <70.284035, 57.864811, 61.469322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.531570, 58.022224, 61.197388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785100, -0.281552, 0.551676,
		0.025697, -0.875133, -0.483200,
		0.618835, 0.393537, -0.679832,
		70.717224, 58.140285, 60.993439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.740089, 57.458672, 61.278961>,  <70.284035, 57.864811, 61.469322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.740089, 57.458672, 61.278961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.959526, 57.772549, 61.163513>,  <71.091187, 57.960873, 61.094242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.959526, 57.772549, 61.163513>,  <70.740089, 57.458672, 61.278961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.959526, 57.772549, 61.163513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827395, -0.459876, 0.322384,
		0.120240, -0.415665, -0.901535,
		0.548598, 0.784689, -0.288623,
		71.124107, 58.007954, 61.076927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.176628, 57.216511, 60.825417>,  <70.740089, 57.458672, 61.278961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.176628, 57.216511, 60.825417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.335114, 57.538891, 61.001350>,  <71.430206, 57.732319, 61.106911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.335114, 57.538891, 61.001350>,  <71.176628, 57.216511, 60.825417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.335114, 57.538891, 61.001350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836083, -0.514681, 0.189920,
		0.379440, 0.292486, -0.877769,
		0.396222, 0.805950, 0.439833,
		71.453979, 57.780678, 61.133301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.836876, 57.515575, 60.509735>,  <71.176628, 57.216511, 60.825417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.836876, 57.515575, 60.509735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.813416, 57.556847, 60.906906>,  <71.799339, 57.581608, 61.145210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.813416, 57.556847, 60.906906>,  <71.836876, 57.515575, 60.509735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.813416, 57.556847, 60.906906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834427, -0.540925, 0.105503,
		0.547988, 0.834718, -0.054364,
		-0.058658, 0.103177, 0.992932,
		71.795815, 57.587799, 61.204784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.455139, 57.842834, 60.735073>,  <71.836876, 57.515575, 60.509735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.455139, 57.842834, 60.735073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.286102, 57.615116, 61.017159>,  <72.184685, 57.478485, 61.186409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.286102, 57.615116, 61.017159>,  <72.455139, 57.842834, 60.735073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.286102, 57.615116, 61.017159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857978, -0.502017, 0.108866,
		0.292050, 0.651059, 0.700592,
		-0.422587, -0.569298, 0.705209,
		72.159325, 57.444328, 61.228722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.855736, 57.891010, 61.350914>,  <72.455139, 57.842834, 60.735073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.855736, 57.891010, 61.350914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.650604, 57.547840, 61.338509>,  <72.527527, 57.341938, 61.331066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.650604, 57.547840, 61.338509>,  <72.855736, 57.891010, 61.350914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.650604, 57.547840, 61.338509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847699, -0.511769, 0.139640,
		-0.135675, 0.045320, 0.989716,
		-0.512834, -0.857927, -0.031017,
		72.496758, 57.290462, 61.329205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.548523, 57.895363, 60.983715>,  <72.855736, 57.891010, 61.350914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.548523, 57.895363, 60.983715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.380257, 57.860069, 60.622551>,  <73.279297, 57.838894, 60.405853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.380257, 57.860069, 60.622551>,  <73.548523, 57.895363, 60.983715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.380257, 57.860069, 60.622551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907062, -0.022777, -0.420381,
		0.016526, -0.995839, 0.089613,
		-0.420673, -0.088231, -0.902911,
		73.254051, 57.833599, 60.351677>
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
