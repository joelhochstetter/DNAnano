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
	<36.861942, 53.639793, 49.933598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538857, 53.660675, 50.168503>,  <36.345005, 53.673206, 50.309444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538857, 53.660675, 50.168503>,  <36.861942, 53.639793, 49.933598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538857, 53.660675, 50.168503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230866, -0.888523, 0.396521,
		0.542496, 0.455853, 0.705618,
		-0.807712, 0.052208, 0.587261,
		36.296543, 53.676338, 50.344681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018852, 53.414051, 50.634621>,  <36.861942, 53.639793, 49.933598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018852, 53.414051, 50.634621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622528, 53.371788, 50.600834>,  <36.384735, 53.346432, 50.580563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622528, 53.371788, 50.600834>,  <37.018852, 53.414051, 50.634621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622528, 53.371788, 50.600834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049855, -0.865700, 0.498075,
		-0.125748, 0.489286, 0.863011,
		-0.990809, -0.105657, -0.084467,
		36.325287, 53.340092, 50.575493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089878, 52.802917, 50.359692>,  <37.018852, 53.414051, 50.634621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089878, 52.802917, 50.359692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365452, 52.526379, 50.272598>,  <37.530796, 52.360455, 50.220341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365452, 52.526379, 50.272598>,  <37.089878, 52.802917, 50.359692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365452, 52.526379, 50.272598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722863, 0.677427, 0.136241,
		0.053309, -0.251253, 0.966452,
		0.688932, -0.691350, -0.217734,
		37.572132, 52.318974, 50.207279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649513, 52.844509, 50.762669>,  <37.089878, 52.802917, 50.359692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649513, 52.844509, 50.762669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813629, 52.636589, 50.462944>,  <37.912098, 52.511837, 50.283112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813629, 52.636589, 50.462944>,  <37.649513, 52.844509, 50.762669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813629, 52.636589, 50.462944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873864, 0.459081, 0.160022,
		0.260813, -0.720450, 0.642595,
		0.410291, -0.519805, -0.749309,
		37.936718, 52.480648, 50.238152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394775, 52.724529, 50.990681>,  <37.649513, 52.844509, 50.762669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394775, 52.724529, 50.990681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324371, 52.759483, 50.598480>,  <38.282131, 52.780457, 50.363159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324371, 52.759483, 50.598480>,  <38.394775, 52.724529, 50.990681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324371, 52.759483, 50.598480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781735, 0.617754, -0.085269,
		0.598258, -0.781501, -0.177043,
		-0.176007, 0.087388, -0.980502,
		38.271568, 52.785698, 50.304329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924049, 52.476326, 50.390144>,  <38.394775, 52.724529, 50.990681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924049, 52.476326, 50.390144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724232, 52.813293, 50.309361>,  <38.604340, 53.015472, 50.260891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724232, 52.813293, 50.309361>,  <38.924049, 52.476326, 50.390144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724232, 52.813293, 50.309361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845792, 0.524700, 0.096569,
		0.187318, -0.122572, -0.974622,
		-0.499548, 0.842417, -0.201956,
		38.574368, 53.066017, 50.248775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270782, 52.917534, 50.057568>,  <38.924049, 52.476326, 50.390144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270782, 52.917534, 50.057568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996300, 53.188011, 50.164806>,  <38.831612, 53.350300, 50.229149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996300, 53.188011, 50.164806>,  <39.270782, 52.917534, 50.057568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996300, 53.188011, 50.164806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722133, 0.677574, 0.139346,
		-0.087432, 0.289223, -0.953261,
		-0.686207, 0.676198, 0.268099,
		38.790436, 53.390869, 50.245235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102478, 53.560253, 49.645584>,  <39.270782, 52.917534, 50.057568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102478, 53.560253, 49.645584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.102879, 53.601463, 50.043457>,  <39.103119, 53.626190, 50.282181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.102879, 53.601463, 50.043457>,  <39.102478, 53.560253, 49.645584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102879, 53.601463, 50.043457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867746, 0.494273, -0.052069,
		-0.497007, 0.863181, -0.088899,
		0.001004, 0.103021, 0.994679,
		39.103180, 53.632370, 50.341862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609135, 54.050980, 49.764252>,  <39.102478, 53.560253, 49.645584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609135, 54.050980, 49.764252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553680, 53.929409, 50.141273>,  <39.520409, 53.856464, 50.367485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553680, 53.929409, 50.141273>,  <39.609135, 54.050980, 49.764252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553680, 53.929409, 50.141273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807968, 0.515653, 0.285112,
		-0.572685, 0.801080, 0.174079,
		-0.138633, -0.303930, 0.942554,
		39.512089, 53.838230, 50.424038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108498, 54.427952, 50.055172>,  <39.609135, 54.050980, 49.764252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108498, 54.427952, 50.055172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948696, 54.223660, 50.359684>,  <39.852814, 54.101086, 50.542393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948696, 54.223660, 50.359684>,  <40.108498, 54.427952, 50.055172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948696, 54.223660, 50.359684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701038, 0.364895, 0.612697,
		-0.590710, 0.778464, 0.212263,
		-0.399508, -0.510731, 0.761280,
		39.828842, 54.070438, 50.588066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313538, 54.849918, 50.649944>,  <40.108498, 54.427952, 50.055172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313538, 54.849918, 50.649944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.185684, 54.504864, 50.806759>,  <40.108971, 54.297832, 50.900848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.185684, 54.504864, 50.806759>,  <40.313538, 54.849918, 50.649944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185684, 54.504864, 50.806759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547259, 0.169690, 0.819581,
		-0.773524, 0.476513, 0.417846,
		-0.319637, -0.862636, 0.392036,
		40.089794, 54.246075, 50.924370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025211, 54.970718, 51.368824>,  <40.313538, 54.849918, 50.649944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025211, 54.970718, 51.368824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162769, 54.596725, 51.334068>,  <40.245304, 54.372330, 51.313213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162769, 54.596725, 51.334068>,  <40.025211, 54.970718, 51.368824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162769, 54.596725, 51.334068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726355, 0.206230, 0.655650,
		-0.595100, -0.288588, 0.750049,
		0.343895, -0.934979, -0.086890,
		40.265938, 54.316231, 51.308002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034729, 54.620922, 51.913963>,  <40.025211, 54.970718, 51.368824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034729, 54.620922, 51.913963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339294, 54.471863, 51.701782>,  <40.522034, 54.382427, 51.574474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339294, 54.471863, 51.701782>,  <40.034729, 54.620922, 51.913963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339294, 54.471863, 51.701782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641480, 0.315012, 0.699479,
		-0.093562, -0.872868, 0.478902,
		0.761413, -0.372651, -0.530454,
		40.567719, 54.360069, 51.542645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561256, 54.064674, 52.200233>,  <40.034729, 54.620922, 51.913963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.561256, 54.064674, 52.200233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772575, 54.301468, 51.956772>,  <40.899364, 54.443546, 51.810696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772575, 54.301468, 51.956772>,  <40.561256, 54.064674, 52.200233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772575, 54.301468, 51.956772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588018, 0.262017, 0.765233,
		0.612486, -0.762165, -0.209678,
		0.528295, 0.591988, -0.608649,
		40.931065, 54.479065, 51.774178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289383, 53.992485, 52.492481>,  <40.561256, 54.064674, 52.200233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289383, 53.992485, 52.492481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296455, 54.315811, 52.257088>,  <41.300697, 54.509808, 52.115852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296455, 54.315811, 52.257088>,  <41.289383, 53.992485, 52.492481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296455, 54.315811, 52.257088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631566, 0.447264, 0.633308,
		0.775121, -0.382865, -0.502595,
		0.017679, 0.808312, -0.588488,
		41.301758, 54.558304, 52.080540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514538, 54.517727, 52.932182>,  <41.289383, 53.992485, 52.492481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514538, 54.517727, 52.932182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.847462, 54.544178, 53.152325>,  <42.047215, 54.560051, 53.284409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.847462, 54.544178, 53.152325>,  <41.514538, 54.517727, 52.932182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.847462, 54.544178, 53.152325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467946, 0.448389, -0.761560,
		-0.297135, 0.891389, 0.342253,
		0.832308, 0.066130, 0.550354,
		42.097153, 54.564018, 53.317432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935699, 55.113846, 52.838062>,  <41.514538, 54.517727, 52.932182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935699, 55.113846, 52.838062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.240170, 54.878742, 52.947720>,  <42.422852, 54.737682, 53.013512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.240170, 54.878742, 52.947720>,  <41.935699, 55.113846, 52.838062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.240170, 54.878742, 52.947720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568817, 0.401980, -0.717537,
		0.311537, 0.702109, 0.640303,
		0.761178, -0.587754, 0.274139,
		42.468521, 54.702415, 53.029961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.567654, 55.516163, 52.926685>,  <41.935699, 55.113846, 52.838062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.567654, 55.516163, 52.926685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.662556, 55.142014, 52.821777>,  <42.719498, 54.917522, 52.758831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.662556, 55.142014, 52.821777>,  <42.567654, 55.516163, 52.926685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.662556, 55.142014, 52.821777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452090, 0.345277, -0.822434,
		0.859840, 0.076553, 0.504791,
		0.237253, -0.935373, -0.262274,
		42.733730, 54.861401, 52.743095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.420605, 55.427238, 52.794640>,  <42.567654, 55.516163, 52.926685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.420605, 55.427238, 52.794640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.169453, 55.195984, 52.586205>,  <43.018761, 55.057232, 52.461143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.169453, 55.195984, 52.586205>,  <43.420605, 55.427238, 52.794640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.169453, 55.195984, 52.586205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406926, 0.326866, -0.852977,
		0.663462, -0.747607, 0.030027,
		-0.627876, -0.578137, -0.521084,
		42.981091, 55.022541, 52.429878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.020878, 55.137882, 52.565437>,  <43.420605, 55.427238, 52.794640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.020878, 55.137882, 52.565437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.988800, 55.392281, 52.872444>,  <43.969555, 55.544918, 53.056648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.988800, 55.392281, 52.872444>,  <44.020878, 55.137882, 52.565437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.988800, 55.392281, 52.872444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844534, 0.452353, -0.286599,
		-0.529463, 0.625207, -0.573398,
		-0.080195, 0.635997, 0.767513,
		43.964741, 55.583080, 53.102699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.948185, 55.895008, 52.361076>,  <44.020878, 55.137882, 52.565437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.948185, 55.895008, 52.361076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.140072, 55.870079, 52.711159>,  <44.255203, 55.855122, 52.921207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.140072, 55.870079, 52.711159>,  <43.948185, 55.895008, 52.361076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.140072, 55.870079, 52.711159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808833, 0.418029, -0.413571,
		-0.340085, 0.906293, 0.250948,
		0.479721, -0.062326, 0.875205,
		44.283989, 55.851383, 52.973721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.144478, 56.610165, 52.590206>,  <43.948185, 55.895008, 52.361076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.144478, 56.610165, 52.590206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.377300, 56.337143, 52.766991>,  <44.516994, 56.173332, 52.873062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.377300, 56.337143, 52.766991>,  <44.144478, 56.610165, 52.590206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.377300, 56.337143, 52.766991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809533, 0.537589, -0.235911,
		-0.076574, 0.495098, 0.865456,
		0.582059, -0.682551, 0.441964,
		44.551918, 56.132378, 52.899578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.441666, 56.871090, 53.173695>,  <44.144478, 56.610165, 52.590206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.441666, 56.871090, 53.173695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.686577, 56.622787, 52.977829>,  <44.833523, 56.473804, 52.860310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.686577, 56.622787, 52.977829>,  <44.441666, 56.871090, 53.173695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.686577, 56.622787, 52.977829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666431, 0.738441, -0.102836,
		0.425427, -0.263366, 0.865823,
		0.612276, -0.620760, -0.489668,
		44.870258, 56.436558, 52.830929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.172306, 56.807526, 53.323372>,  <44.441666, 56.871090, 53.173695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.172306, 56.807526, 53.323372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.130711, 56.778801, 52.926579>,  <45.105755, 56.761566, 52.688503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.130711, 56.778801, 52.926579>,  <45.172306, 56.807526, 53.323372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.130711, 56.778801, 52.926579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599863, 0.791031, -0.120144,
		0.793317, -0.607547, -0.039178,
		-0.103984, -0.071811, -0.991983,
		45.099514, 56.757259, 52.628983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.953899, 56.856670, 53.027618>,  <45.172306, 56.807526, 53.323372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.953899, 56.856670, 53.027618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.649189, 56.993801, 52.807739>,  <45.466362, 57.076080, 52.675812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.649189, 56.993801, 52.807739>,  <45.953899, 56.856670, 53.027618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.649189, 56.993801, 52.807739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493034, 0.857219, -0.148635,
		0.420258, -0.384247, -0.822032,
		-0.761775, 0.342824, -0.549700,
		45.420658, 57.096649, 52.642830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.432701, 56.589352, 53.592747>,  <45.953899, 56.856670, 53.027618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.432701, 56.589352, 53.592747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.694389, 56.864807, 53.467674>,  <46.851402, 57.030083, 53.392632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.694389, 56.864807, 53.467674>,  <46.432701, 56.589352, 53.592747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.694389, 56.864807, 53.467674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741630, -0.665178, 0.086733,
		-0.148259, -0.288635, -0.945890,
		0.654220, 0.688642, -0.312679,
		46.890656, 57.071400, 53.373871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.804668, 56.296848, 52.998318>,  <46.432701, 56.589352, 53.592747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.804668, 56.296848, 52.998318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.005531, 56.533653, 53.250462>,  <47.126049, 56.675735, 53.401749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.005531, 56.533653, 53.250462>,  <46.804668, 56.296848, 52.998318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.005531, 56.533653, 53.250462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686028, -0.716508, 0.126417,
		0.526502, 0.368967, -0.765937,
		0.502157, 0.592013, 0.630364,
		47.156178, 56.711258, 53.439571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.517345, 56.291229, 52.875023>,  <46.804668, 56.296848, 52.998318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.517345, 56.291229, 52.875023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.493656, 56.403477, 53.258221>,  <47.479443, 56.470825, 53.488140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.493656, 56.403477, 53.258221>,  <47.517345, 56.291229, 52.875023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.493656, 56.403477, 53.258221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928015, -0.338116, 0.156417,
		0.367805, 0.898293, -0.240393,
		-0.059227, 0.280619, 0.957990,
		47.475887, 56.487663, 53.545616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.947536, 56.929440, 53.094994>,  <47.517345, 56.291229, 52.875023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.947536, 56.929440, 53.094994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.897709, 56.673603, 53.398418>,  <47.867813, 56.520103, 53.580471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.897709, 56.673603, 53.398418>,  <47.947536, 56.929440, 53.094994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.897709, 56.673603, 53.398418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982472, -0.186362, 0.004207,
		0.138675, 0.745786, 0.651593,
		-0.124570, -0.639588, 0.758557,
		47.860336, 56.481728, 53.625984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.245178, 57.187855, 53.727638>,  <47.947536, 56.929440, 53.094994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.245178, 57.187855, 53.727638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.241875, 56.788116, 53.741680>,  <48.239895, 56.548271, 53.750107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.241875, 56.788116, 53.741680>,  <48.245178, 57.187855, 53.727638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.241875, 56.788116, 53.741680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998227, -0.010305, -0.058615,
		0.058939, 0.034563, 0.997663,
		-0.008255, -0.999349, 0.035109,
		48.239399, 56.488312, 53.752213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.722672, 56.887989, 54.213474>,  <48.245178, 57.187855, 53.727638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.722672, 56.887989, 54.213474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.682896, 56.641533, 53.900940>,  <48.659031, 56.493660, 53.713421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.682896, 56.641533, 53.900940>,  <48.722672, 56.887989, 54.213474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.682896, 56.641533, 53.900940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993870, -0.023378, -0.108052,
		0.048310, -0.787291, 0.614686,
		-0.099439, -0.616139, -0.781336,
		48.653065, 56.456692, 53.666538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.000950, 56.116180, 54.234913>,  <48.722672, 56.887989, 54.213474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.000950, 56.116180, 54.234913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.017212, 56.289463, 53.874760>,  <49.026970, 56.393433, 53.658669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.017212, 56.289463, 53.874760>,  <49.000950, 56.116180, 54.234913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.017212, 56.289463, 53.874760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973117, -0.221614, -0.062689,
		-0.226694, -0.873626, -0.430567,
		0.040653, 0.433203, -0.900379,
		49.029408, 56.419422, 53.604645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.243519, 55.648537, 53.741657>,  <49.000950, 56.116180, 54.234913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.243519, 55.648537, 53.741657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.313419, 56.024593, 53.624626>,  <49.355358, 56.250225, 53.554405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.313419, 56.024593, 53.624626>,  <49.243519, 55.648537, 53.741657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.313419, 56.024593, 53.624626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961382, -0.227088, -0.155486,
		-0.212620, -0.254110, -0.943515,
		0.174750, 0.940138, -0.292581,
		49.365845, 56.306633, 53.536854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.446674, 55.667629, 53.013004>,  <49.243519, 55.648537, 53.741657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.446674, 55.667629, 53.013004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.602379, 55.960999, 53.235916>,  <49.695801, 56.137020, 53.369663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.602379, 55.960999, 53.235916>,  <49.446674, 55.667629, 53.013004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.602379, 55.960999, 53.235916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918057, -0.358257, -0.169774,
		0.075134, 0.577704, -0.812781,
		0.389264, 0.733423, 0.557282,
		49.719158, 56.181026, 53.403099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.079414, 55.764091, 52.672504>,  <49.446674, 55.667629, 53.013004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.079414, 55.764091, 52.672504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.118866, 55.949169, 53.024910>,  <50.142536, 56.060215, 53.236355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.118866, 55.949169, 53.024910>,  <50.079414, 55.764091, 52.672504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.118866, 55.949169, 53.024910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972232, -0.233610, 0.013851,
		0.212222, 0.855183, -0.472888,
		0.098626, 0.462696, 0.881014,
		50.148453, 56.087978, 53.289215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.574539, 56.339054, 52.653591>,  <50.079414, 55.764091, 52.672504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.574539, 56.339054, 52.653591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.559189, 56.123089, 52.989929>,  <50.549980, 55.993511, 53.191734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.559189, 56.123089, 52.989929>,  <50.574539, 56.339054, 52.653591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.559189, 56.123089, 52.989929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948087, -0.285508, -0.140059,
		0.315688, 0.791822, 0.522837,
		-0.038373, -0.539910, 0.840848,
		50.547676, 55.961117, 53.242184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.272995, 56.323933, 53.068851>,  <50.574539, 56.339054, 52.653591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.272995, 56.323933, 53.068851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.474243, 56.606907, 53.267406>,  <51.594994, 56.776691, 53.386539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.474243, 56.606907, 53.267406>,  <51.272995, 56.323933, 53.068851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.474243, 56.606907, 53.267406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861370, -0.363943, -0.354383,
		-0.070049, 0.605868, -0.792475,
		0.503125, 0.707438, 0.496383,
		51.625179, 56.819138, 53.416321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.527035, 56.864223, 52.535030>,  <51.272995, 56.323933, 53.068851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.527035, 56.864223, 52.535030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.721146, 56.766563, 52.870865>,  <51.837612, 56.707970, 53.072365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.721146, 56.766563, 52.870865>,  <51.527035, 56.864223, 52.535030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.721146, 56.766563, 52.870865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803390, -0.254452, -0.538348,
		0.345069, 0.935760, 0.072666,
		0.485274, -0.244146, 0.839584,
		51.866730, 56.693321, 53.122742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.177940, 57.097752, 52.459141>,  <51.527035, 56.864223, 52.535030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.177940, 57.097752, 52.459141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.187298, 56.808617, 52.735386>,  <52.192913, 56.635136, 52.901134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.187298, 56.808617, 52.735386>,  <52.177940, 57.097752, 52.459141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.187298, 56.808617, 52.735386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734288, -0.456372, -0.502539,
		0.678435, 0.518868, 0.520098,
		0.023393, -0.722842, 0.690618,
		52.194317, 56.591763, 52.942570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.834061, 57.101624, 52.901241>,  <52.177940, 57.097752, 52.459141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.834061, 57.101624, 52.901241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.661537, 56.746437, 52.837379>,  <52.558022, 56.533325, 52.799065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.661537, 56.746437, 52.837379>,  <52.834061, 57.101624, 52.901241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.661537, 56.746437, 52.837379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840810, -0.331456, -0.427991,
		0.327123, -0.318834, 0.889570,
		-0.431311, -0.887965, -0.159652,
		52.532143, 56.480049, 52.789482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.105110, 56.458000, 53.170570>,  <52.834061, 57.101624, 52.901241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.105110, 56.458000, 53.170570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.962364, 56.398361, 52.801697>,  <52.876717, 56.362579, 52.580372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.962364, 56.398361, 52.801697>,  <53.105110, 56.458000, 53.170570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.962364, 56.398361, 52.801697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917503, -0.241508, -0.316008,
		-0.175600, -0.958877, 0.222980,
		-0.356865, -0.149094, -0.922181,
		52.855305, 56.353634, 52.525043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.239754, 55.763908, 52.803974>,  <53.105110, 56.458000, 53.170570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.239754, 55.763908, 52.803974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.243145, 56.112572, 52.607956>,  <53.245178, 56.321770, 52.490345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.243145, 56.112572, 52.607956>,  <53.239754, 55.763908, 52.803974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.243145, 56.112572, 52.607956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941142, -0.172552, -0.290649,
		-0.337904, -0.458741, -0.821814,
		0.008474, 0.871655, -0.490047,
		53.245686, 56.374069, 52.460941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.595577, 55.690254, 52.106670>,  <53.239754, 55.763908, 52.803974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.595577, 55.690254, 52.106670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.603035, 56.074921, 52.216103>,  <53.607510, 56.305721, 52.281761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.603035, 56.074921, 52.216103>,  <53.595577, 55.690254, 52.106670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.603035, 56.074921, 52.216103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964813, 0.054476, -0.257234,
		-0.262277, 0.268748, -0.926815,
		0.018642, 0.961669, 0.273580,
		53.608627, 56.363422, 52.298176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.075867, 55.940022, 51.577999>,  <53.595577, 55.690254, 52.106670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.075867, 55.940022, 51.577999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.048035, 56.194481, 51.885368>,  <54.031334, 56.347157, 52.069790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.048035, 56.194481, 51.885368>,  <54.075867, 55.940022, 51.577999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.048035, 56.194481, 51.885368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988835, 0.145731, -0.031102,
		-0.131768, 0.757678, -0.639188,
		-0.069585, 0.636149, 0.768422,
		54.027161, 56.385326, 52.115894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.681931, 56.069500, 51.975273>,  <54.075867, 55.940022, 51.577999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.681931, 56.069500, 51.975273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.584236, 56.373253, 52.216499>,  <54.525620, 56.555504, 52.361237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.584236, 56.373253, 52.216499>,  <54.681931, 56.069500, 51.975273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.584236, 56.373253, 52.216499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969705, 0.194152, 0.148246,
		-0.004513, 0.621007, -0.783792,
		-0.244236, 0.759378, 0.603070,
		54.510963, 56.601067, 52.397419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.960888, 56.726147, 51.809883>,  <54.681931, 56.069500, 51.975273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.960888, 56.726147, 51.809883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.897827, 56.734356, 52.204796>,  <54.859989, 56.739281, 52.441742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.897827, 56.734356, 52.204796>,  <54.960888, 56.726147, 51.809883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.897827, 56.734356, 52.204796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915614, 0.377501, 0.138361,
		-0.369859, 0.925782, -0.078307,
		-0.157653, 0.020524, 0.987281,
		54.850533, 56.740513, 52.500980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.023979, 57.396225, 52.110085>,  <54.960888, 56.726147, 51.809883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.023979, 57.396225, 52.110085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.123634, 57.105980, 52.366653>,  <55.183426, 56.931835, 52.520596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.123634, 57.105980, 52.366653>,  <55.023979, 57.396225, 52.110085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.123634, 57.105980, 52.366653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876305, 0.450881, 0.169693,
		-0.412335, 0.519805, 0.748186,
		0.249136, -0.725610, 0.641422,
		55.198376, 56.888298, 52.559078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.165726, 57.818115, 52.759777>,  <55.023979, 57.396225, 52.110085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.165726, 57.818115, 52.759777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.324219, 57.453690, 52.805305>,  <55.419315, 57.235035, 52.832623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.324219, 57.453690, 52.805305>,  <55.165726, 57.818115, 52.759777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.324219, 57.453690, 52.805305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864861, 0.411977, 0.286862,
		-0.308243, -0.015224, 0.951186,
		0.396234, -0.911067, 0.113822,
		55.443089, 57.180370, 52.839451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.322994, 57.770252, 53.395233>,  <55.165726, 57.818115, 52.759777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.322994, 57.770252, 53.395233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.552742, 57.524887, 53.178410>,  <55.690590, 57.377670, 53.048317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.552742, 57.524887, 53.178410>,  <55.322994, 57.770252, 53.395233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.552742, 57.524887, 53.178410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817190, 0.390880, 0.423572,
		-0.047943, -0.686252, 0.725782,
		0.574371, -0.613410, -0.542058,
		55.725052, 57.340866, 53.015793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.941689, 57.584736, 53.780830>,  <55.322994, 57.770252, 53.395233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.941689, 57.584736, 53.780830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.048302, 57.536621, 53.398315>,  <56.112270, 57.507751, 53.168804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.048302, 57.536621, 53.398315>,  <55.941689, 57.584736, 53.780830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.048302, 57.536621, 53.398315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884676, 0.424288, 0.193205,
		0.382504, -0.897503, 0.219498,
		0.266532, -0.120284, -0.956291,
		56.128262, 57.500538, 53.111427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.697861, 57.326855, 53.674549>,  <55.941689, 57.584736, 53.780830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.697861, 57.326855, 53.674549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.614265, 57.548470, 53.352215>,  <56.564106, 57.681438, 53.158813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.614265, 57.548470, 53.352215>,  <56.697861, 57.326855, 53.674549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.614265, 57.548470, 53.352215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825687, 0.541504, 0.158160,
		0.523988, -0.632311, -0.570631,
		-0.208993, 0.554036, -0.805832,
		56.551567, 57.714680, 53.110466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.258423, 57.434868, 53.067829>,  <56.697861, 57.326855, 53.674549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.258423, 57.434868, 53.067829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.048798, 57.773586, 53.104263>,  <56.923023, 57.976818, 53.126122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.048798, 57.773586, 53.104263>,  <57.258423, 57.434868, 53.067829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.048798, 57.773586, 53.104263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848774, 0.510453, 0.137914,
		0.070292, 0.149585, -0.986247,
		-0.524063, 0.846795, 0.091083,
		56.891579, 58.027626, 53.131588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.274612, 56.868282, 53.586788>,  <57.258423, 57.434868, 53.067829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.274612, 56.868282, 53.586788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.374702, 56.482441, 53.553505>,  <57.434757, 56.250935, 53.533535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.374702, 56.482441, 53.553505>,  <57.274612, 56.868282, 53.586788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.374702, 56.482441, 53.553505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524344, 0.062770, 0.849190,
		-0.813909, -0.256121, 0.521492,
		0.250230, -0.964604, -0.083207,
		57.449772, 56.193058, 53.528542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.731987, 56.698711, 54.079689>,  <57.274612, 56.868282, 53.586788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.731987, 56.698711, 54.079689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.719498, 56.319122, 53.954170>,  <57.712006, 56.091370, 53.878860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.719498, 56.319122, 53.954170>,  <57.731987, 56.698711, 54.079689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.719498, 56.319122, 53.954170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593579, -0.270196, 0.758062,
		-0.804170, -0.162592, 0.571730,
		-0.031224, -0.948977, -0.313795,
		57.710129, 56.034428, 53.860031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.349487, 56.271980, 54.513611>,  <57.731987, 56.698711, 54.079689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.349487, 56.271980, 54.513611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.661598, 56.067501, 54.369476>,  <57.848866, 55.944813, 54.282993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.661598, 56.067501, 54.369476>,  <57.349487, 56.271980, 54.513611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.661598, 56.067501, 54.369476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387154, -0.057708, 0.920207,
		-0.491204, -0.857522, 0.152885,
		0.780275, -0.511200, -0.360340,
		57.895679, 55.914143, 54.261375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.622147, 55.722076, 54.957661>,  <57.349487, 56.271980, 54.513611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.622147, 55.722076, 54.957661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.949478, 55.794014, 54.739307>,  <58.145878, 55.837177, 54.608295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.949478, 55.794014, 54.739307>,  <57.622147, 55.722076, 54.957661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.949478, 55.794014, 54.739307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538064, 0.094159, 0.837628,
		0.202045, -0.979177, -0.019717,
		0.818331, 0.179848, -0.545884,
		58.194977, 55.847969, 54.575542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.952404, 55.738663, 55.545376>,  <57.622147, 55.722076, 54.957661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.952404, 55.738663, 55.545376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.165482, 55.864082, 55.230942>,  <58.293327, 55.939335, 55.042282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.165482, 55.864082, 55.230942>,  <57.952404, 55.738663, 55.545376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.165482, 55.864082, 55.230942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682887, 0.389404, 0.618085,
		0.499902, -0.866056, -0.006683,
		0.532694, 0.313546, -0.786082,
		58.325291, 55.958145, 54.995117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.583946, 55.380322, 55.471554>,  <57.952404, 55.738663, 55.545376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.583946, 55.380322, 55.471554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.608788, 55.750557, 55.322189>,  <58.623692, 55.972698, 55.232571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.608788, 55.750557, 55.322189>,  <58.583946, 55.380322, 55.471554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.608788, 55.750557, 55.322189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773055, 0.192032, 0.604574,
		0.631291, -0.326214, -0.703602,
		0.062106, 0.925586, -0.373409,
		58.627419, 56.028233, 55.210167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.153835, 55.666664, 55.152721>,  <58.583946, 55.380322, 55.471554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.153835, 55.666664, 55.152721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.999344, 55.972702, 55.358810>,  <58.906647, 56.156326, 55.482464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.999344, 55.972702, 55.358810>,  <59.153835, 55.666664, 55.152721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.999344, 55.972702, 55.358810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857072, 0.091206, 0.507059,
		0.340959, 0.637421, -0.690971,
		-0.386231, 0.765099, 0.515218,
		58.883476, 56.202232, 55.513374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.628902, 56.262737, 55.143253>,  <59.153835, 55.666664, 55.152721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.628902, 56.262737, 55.143253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.429863, 56.246712, 55.489845>,  <59.310440, 56.237099, 55.697800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.429863, 56.246712, 55.489845>,  <59.628902, 56.262737, 55.143253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.429863, 56.246712, 55.489845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862876, 0.079130, 0.499182,
		-0.088562, 0.996059, -0.004808,
		-0.497595, -0.040060, 0.866484,
		59.280586, 56.234695, 55.749790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.606678, 56.487965, 54.364967>,  <59.628902, 56.262737, 55.143253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.606678, 56.487965, 54.364967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.380455, 56.817074, 54.387535>,  <59.244720, 57.014538, 54.401073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.380455, 56.817074, 54.387535>,  <59.606678, 56.487965, 54.364967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.380455, 56.817074, 54.387535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412405, 0.222913, 0.883307,
		0.714186, 0.522831, -0.465387,
		-0.565561, 0.822774, 0.056417,
		59.210785, 57.063908, 54.404461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.900959, 56.965546, 54.858288>,  <59.606678, 56.487965, 54.364967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.900959, 56.965546, 54.858288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.529442, 57.113747, 54.861629>,  <59.306530, 57.202667, 54.863636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.529442, 57.113747, 54.861629>,  <59.900959, 56.965546, 54.858288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.529442, 57.113747, 54.861629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055795, 0.117504, 0.991504,
		0.366376, 0.921367, -0.129810,
		-0.928792, 0.370506, 0.008357,
		59.250805, 57.224899, 54.864136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.500698, 57.511536, 54.547565>,  <59.900959, 56.965546, 54.858288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.500698, 57.511536, 54.547565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.243668, 57.235939, 54.413471>,  <60.089447, 57.070580, 54.333015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.243668, 57.235939, 54.413471>,  <60.500698, 57.511536, 54.547565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.243668, 57.235939, 54.413471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502979, 0.049246, 0.862894,
		-0.578018, 0.723094, -0.378193,
		-0.642579, -0.688992, -0.335236,
		60.050896, 57.029240, 54.312901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.787537, 56.829128, 54.460503>,  <60.500698, 57.511536, 54.547565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.787537, 56.829128, 54.460503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.562271, 56.944923, 54.150909>,  <60.427113, 57.014400, 53.965153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.562271, 56.944923, 54.150909>,  <60.787537, 56.829128, 54.460503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.562271, 56.944923, 54.150909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291640, 0.945987, 0.141613,
		0.773170, -0.145973, -0.617171,
		-0.563164, 0.289483, -0.773981,
		60.393322, 57.031769, 53.918716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.080406, 57.487434, 54.100006>,  <60.787537, 56.829128, 54.460503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.080406, 57.487434, 54.100006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.264168, 57.786625, 54.291622>,  <61.374424, 57.966141, 54.406590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.264168, 57.786625, 54.291622>,  <61.080406, 57.487434, 54.100006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.264168, 57.786625, 54.291622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682034, -0.642555, 0.349217,
		0.569014, 0.166287, -0.805339,
		0.459405, 0.747978, 0.479037,
		61.401989, 58.011017, 54.435333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.719429, 57.421371, 53.934856>,  <61.080406, 57.487434, 54.100006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.719429, 57.421371, 53.934856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.712654, 57.631966, 54.274864>,  <61.708588, 57.758324, 54.478867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.712654, 57.631966, 54.274864>,  <61.719429, 57.421371, 53.934856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.712654, 57.631966, 54.274864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668347, -0.626339, 0.401262,
		0.743656, 0.574902, -0.341267,
		-0.016938, 0.526486, 0.850015,
		61.707573, 57.789913, 54.529869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.391552, 57.435883, 54.087864>,  <61.719429, 57.421371, 53.934856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.391552, 57.435883, 54.087864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.158379, 57.431908, 54.412849>,  <62.018475, 57.429523, 54.607841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.158379, 57.431908, 54.412849>,  <62.391552, 57.435883, 54.087864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.158379, 57.431908, 54.412849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522986, -0.769846, 0.365819,
		0.621835, 0.638153, 0.453963,
		-0.582930, -0.009937, 0.812462,
		61.983501, 57.428928, 54.656590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.838497, 57.504524, 54.665039>,  <62.391552, 57.435883, 54.087864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.838497, 57.504524, 54.665039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.493340, 57.327095, 54.761921>,  <62.286247, 57.220638, 54.820049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.493340, 57.327095, 54.761921>,  <62.838497, 57.504524, 54.665039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.493340, 57.327095, 54.761921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504810, -0.733460, 0.455196,
		-0.024263, 0.515053, 0.856815,
		-0.862889, -0.443573, 0.242208,
		62.234474, 57.194023, 54.834583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.759083, 57.353893, 55.392017>,  <62.838497, 57.504524, 54.665039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.759083, 57.353893, 55.392017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.549301, 57.083790, 55.184563>,  <62.423431, 56.921730, 55.060089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.549301, 57.083790, 55.184563>,  <62.759083, 57.353893, 55.392017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.549301, 57.083790, 55.184563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312794, -0.719332, 0.620259,
		-0.791903, 0.163070, 0.588471,
		-0.524452, -0.675255, -0.518633,
		62.391964, 56.881214, 55.028973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.292614, 57.054867, 55.844345>,  <62.759083, 57.353893, 55.392017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.292614, 57.054867, 55.844345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.443985, 56.826752, 55.552711>,  <62.534809, 56.689880, 55.377731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.443985, 56.826752, 55.552711>,  <62.292614, 57.054867, 55.844345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.443985, 56.826752, 55.552711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336661, -0.648912, 0.682328,
		-0.862235, -0.503666, -0.053573,
		0.378430, -0.570292, -0.729080,
		62.557514, 56.655663, 55.333988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.058739, 56.366795, 55.909863>,  <62.292614, 57.054867, 55.844345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.058739, 56.366795, 55.909863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.420029, 56.409496, 55.743591>,  <62.636803, 56.435120, 55.643829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.420029, 56.409496, 55.743591>,  <62.058739, 56.366795, 55.909863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.420029, 56.409496, 55.743591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385200, -0.628707, 0.675536,
		-0.189220, -0.770280, -0.608987,
		0.903226, 0.106757, -0.415676,
		62.690998, 56.441525, 55.618889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.369408, 55.725750, 55.810684>,  <62.058739, 56.366795, 55.909863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.369408, 55.725750, 55.810684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.648941, 56.007484, 55.860542>,  <62.816662, 56.176525, 55.890457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.648941, 56.007484, 55.860542>,  <62.369408, 55.725750, 55.810684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.648941, 56.007484, 55.860542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446197, -0.565465, 0.693656,
		0.559052, -0.429133, -0.709440,
		0.698834, 0.704340, 0.124646,
		62.858593, 56.218788, 55.897938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.068039, 55.364609, 55.864323>,  <62.369408, 55.725750, 55.810684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.068039, 55.364609, 55.864323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.088531, 55.730930, 56.023659>,  <63.100826, 55.950722, 56.119263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.088531, 55.730930, 56.023659>,  <63.068039, 55.364609, 55.864323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.088531, 55.730930, 56.023659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434151, -0.379628, 0.816943,
		0.899382, 0.131089, -0.417046,
		0.051230, 0.915805, 0.398343,
		63.103901, 56.005672, 56.143162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.708035, 55.394249, 56.176071>,  <63.068039, 55.364609, 55.864323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.708035, 55.394249, 56.176071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.481194, 55.689365, 56.322533>,  <63.345089, 55.866436, 56.410408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.481194, 55.689365, 56.322533>,  <63.708035, 55.394249, 56.176071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.481194, 55.689365, 56.322533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363764, -0.174494, 0.915002,
		0.738969, 0.652089, -0.169426,
		-0.567098, 0.737789, 0.366152,
		63.311066, 55.910702, 56.432377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.024933, 56.029148, 56.384541>,  <63.708035, 55.394249, 56.176071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.024933, 56.029148, 56.384541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.695015, 56.012989, 56.610130>,  <63.497063, 56.003292, 56.745483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.695015, 56.012989, 56.610130>,  <64.024933, 56.029148, 56.384541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.695015, 56.012989, 56.610130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560700, 0.070169, 0.825040,
		-0.072903, 0.996717, -0.035225,
		-0.824803, -0.040397, 0.563975,
		63.447575, 56.000870, 56.779324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.946175, 56.568886, 56.903450>,  <64.024933, 56.029148, 56.384541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.946175, 56.568886, 56.903450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.755188, 56.246361, 57.043098>,  <63.640598, 56.052845, 57.126888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.755188, 56.246361, 57.043098>,  <63.946175, 56.568886, 56.903450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.755188, 56.246361, 57.043098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266938, 0.245441, 0.931935,
		-0.837121, 0.538158, 0.098047,
		-0.477464, -0.806315, 0.349119,
		63.611950, 56.004467, 57.147835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.285976, 56.583740, 57.218639>,  <63.946175, 56.568886, 56.903450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.285976, 56.583740, 57.218639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.589905, 56.349556, 57.331711>,  <63.772263, 56.209045, 57.399555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.589905, 56.349556, 57.331711>,  <63.285976, 56.583740, 57.218639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.589905, 56.349556, 57.331711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196731, 0.621468, 0.758336,
		-0.619656, -0.520586, 0.587382,
		0.759818, -0.585464, 0.282681,
		63.817852, 56.173916, 57.416515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.342815, 56.316696, 57.947617>,  <63.285976, 56.583740, 57.218639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.342815, 56.316696, 57.947617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.726082, 56.249039, 57.855263>,  <63.956043, 56.208443, 57.799850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.726082, 56.249039, 57.855263>,  <63.342815, 56.316696, 57.947617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.726082, 56.249039, 57.855263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284833, 0.484481, 0.827132,
		-0.028051, -0.858293, 0.512392,
		0.958166, -0.169148, -0.230881,
		64.013535, 56.198296, 57.785999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.738758, 56.097939, 58.543713>,  <63.342815, 56.316696, 57.947617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.738758, 56.097939, 58.543713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.006172, 56.288589, 58.315369>,  <64.166618, 56.402981, 58.178364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.006172, 56.288589, 58.315369>,  <63.738758, 56.097939, 58.543713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.006172, 56.288589, 58.315369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231099, 0.596466, 0.768649,
		0.706859, -0.645797, 0.288613,
		0.668538, 0.476628, -0.570860,
		64.206734, 56.431580, 58.144112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.367805, 56.169113, 58.837818>,  <63.738758, 56.097939, 58.543713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.367805, 56.169113, 58.837818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.388107, 56.468258, 58.573051>,  <64.400284, 56.647743, 58.414192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.388107, 56.468258, 58.573051>,  <64.367805, 56.169113, 58.837818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.388107, 56.468258, 58.573051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287289, 0.623822, 0.726851,
		0.956499, -0.227046, -0.183194,
		0.050748, 0.747861, -0.661912,
		64.403336, 56.692616, 58.374477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.087425, 56.553677, 58.844780>,  <64.367805, 56.169113, 58.837818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.087425, 56.553677, 58.844780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.809433, 56.814804, 58.724228>,  <64.642639, 56.971481, 58.651897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.809433, 56.814804, 58.724228>,  <65.087425, 56.553677, 58.844780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.809433, 56.814804, 58.724228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324828, 0.658997, 0.678388,
		0.641471, 0.373572, -0.670044,
		-0.694984, 0.652815, -0.301380,
		64.600937, 57.010647, 58.633812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.473167, 57.177692, 58.780807>,  <65.087425, 56.553677, 58.844780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.473167, 57.177692, 58.780807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.087357, 57.204475, 58.882957>,  <64.855873, 57.220547, 58.944248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.087357, 57.204475, 58.882957>,  <65.473167, 57.177692, 58.780807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.087357, 57.204475, 58.882957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249291, 0.549401, 0.797504,
		-0.086903, 0.832872, -0.546601,
		-0.964522, 0.066957, 0.255372,
		64.797997, 57.224564, 58.959568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.675934, 57.841541, 58.448315>,  <65.473167, 57.177692, 58.780807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.675934, 57.841541, 58.448315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.609901, 57.594868, 58.140434>,  <65.570282, 57.446861, 57.955704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.609901, 57.594868, 58.140434>,  <65.675934, 57.841541, 58.448315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.609901, 57.594868, 58.140434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979597, 0.193220, 0.055284,
		0.114629, 0.763127, -0.636001,
		-0.165077, -0.616687, -0.769706,
		65.560379, 57.409863, 57.909523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.258583, 58.285080, 58.535046>,  <65.675934, 57.841541, 58.448315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.258583, 58.285080, 58.535046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.392349, 58.654671, 58.460808>,  <66.472610, 58.876423, 58.416264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.392349, 58.654671, 58.460808>,  <66.258583, 58.285080, 58.535046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.392349, 58.654671, 58.460808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497061, -0.005606, 0.867698,
		0.800689, -0.382416, -0.461145,
		0.334407, 0.923973, -0.185596,
		66.492668, 58.931862, 58.405128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.944618, 58.367611, 58.660690>,  <66.258583, 58.285080, 58.535046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.944618, 58.367611, 58.660690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.843033, 58.754112, 58.677940>,  <66.782082, 58.986012, 58.688290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.843033, 58.754112, 58.677940>,  <66.944618, 58.367611, 58.660690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.843033, 58.754112, 58.677940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519359, 0.098615, 0.848847,
		0.815948, 0.237971, -0.526877,
		-0.253959, 0.966253, 0.043128,
		66.766846, 59.043987, 58.690880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.668953, 57.997055, 58.833401>,  <66.944618, 58.367611, 58.660690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.668953, 57.997055, 58.833401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.976578, 58.232887, 58.932159>,  <68.161148, 58.374386, 58.991413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.976578, 58.232887, 58.932159>,  <67.668953, 57.997055, 58.833401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.976578, 58.232887, 58.932159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000571, -0.385627, 0.922655,
		0.639185, -0.709711, -0.296230,
		0.769053, 0.589577, 0.246892,
		68.207291, 58.409760, 59.006226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.150070, 57.612122, 59.183510>,  <67.668953, 57.997055, 58.833401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.150070, 57.612122, 59.183510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.219986, 57.983349, 59.315041>,  <68.261940, 58.206085, 59.393959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.219986, 57.983349, 59.315041>,  <68.150070, 57.612122, 59.183510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.219986, 57.983349, 59.315041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213121, -0.361716, 0.907602,
		0.961263, -0.088565, -0.261018,
		0.174797, 0.928072, 0.328829,
		68.272423, 58.261772, 59.413689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.730919, 57.636997, 59.416611>,  <68.150070, 57.612122, 59.183510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.730919, 57.636997, 59.416611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.543472, 57.935925, 59.605042>,  <68.431000, 58.115280, 59.718098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.543472, 57.935925, 59.605042>,  <68.730919, 57.636997, 59.416611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.543472, 57.935925, 59.605042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266364, -0.388899, 0.881934,
		0.842284, 0.538772, -0.016811,
		-0.468623, 0.747317, 0.471073,
		68.402885, 58.160118, 59.746365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.202217, 58.046230, 59.853481>,  <68.730919, 57.636997, 59.416611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.202217, 58.046230, 59.853481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.823730, 58.033234, 59.982231>,  <68.596634, 58.025436, 60.059479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.823730, 58.033234, 59.982231>,  <69.202217, 58.046230, 59.853481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.823730, 58.033234, 59.982231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293291, -0.506025, 0.811122,
		0.136517, 0.861907, 0.488344,
		-0.946226, -0.032495, 0.321871,
		68.539864, 58.023483, 60.078793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.406059, 58.602879, 60.277275>,  <69.202217, 58.046230, 59.853481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.406059, 58.602879, 60.277275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.672112, 58.387177, 60.070656>,  <69.831741, 58.257755, 59.946686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.672112, 58.387177, 60.070656>,  <69.406059, 58.602879, 60.277275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.672112, 58.387177, 60.070656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408595, -0.316181, 0.856201,
		-0.625029, -0.780537, 0.010036,
		0.665123, -0.539251, -0.516545,
		69.871651, 58.225403, 59.915691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.452217, 57.970806, 60.603607>,  <69.406059, 58.602879, 60.277275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.452217, 57.970806, 60.603607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.796417, 58.017883, 60.405342>,  <70.002937, 58.046127, 60.286385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.796417, 58.017883, 60.405342>,  <69.452217, 57.970806, 60.603607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.796417, 58.017883, 60.405342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505073, -0.324214, 0.799866,
		-0.066563, -0.938634, -0.338431,
		0.860506, 0.117691, -0.495659,
		70.054565, 58.053192, 60.256645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.984818, 57.370785, 60.656429>,  <69.452217, 57.970806, 60.603607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.984818, 57.370785, 60.656429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.166931, 57.725677, 60.626663>,  <70.276199, 57.938614, 60.608803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.166931, 57.725677, 60.626663>,  <69.984818, 57.370785, 60.656429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.166931, 57.725677, 60.626663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616707, -0.253975, 0.745097,
		0.642173, -0.385125, -0.662792,
		0.455288, 0.887229, -0.074413,
		70.303520, 57.991848, 60.604340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.791283, 57.392605, 60.560417>,  <69.984818, 57.370785, 60.656429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.791283, 57.392605, 60.560417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.636024, 57.680241, 60.790985>,  <70.542870, 57.852821, 60.929325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.636024, 57.680241, 60.790985>,  <70.791283, 57.392605, 60.560417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.636024, 57.680241, 60.790985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699233, -0.177657, 0.692468,
		0.600353, 0.671822, -0.433858,
		-0.388137, 0.719092, 0.576416,
		70.519585, 57.895969, 60.963909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.282890, 58.040062, 60.691673>,  <70.791283, 57.392605, 60.560417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.282890, 58.040062, 60.691673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.027565, 57.914124, 60.972649>,  <70.874367, 57.838562, 61.141235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.027565, 57.914124, 60.972649>,  <71.282890, 58.040062, 60.691673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.027565, 57.914124, 60.972649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768892, -0.217195, 0.601359,
		-0.036770, 0.923957, 0.380724,
		-0.638321, -0.314847, 0.702437,
		70.836067, 57.819668, 61.183380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.525902, 58.329262, 61.292515>,  <71.282890, 58.040062, 60.691673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.525902, 58.329262, 61.292515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.329010, 57.987724, 61.360237>,  <71.210876, 57.782803, 61.400871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.329010, 57.987724, 61.360237>,  <71.525902, 58.329262, 61.292515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.329010, 57.987724, 61.360237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743912, -0.311631, 0.591169,
		-0.452007, 0.416935, 0.788578,
		-0.492224, -0.853845, 0.169304,
		71.181343, 57.731571, 61.411030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.801979, 57.662907, 61.390480>,  <71.525902, 58.329262, 61.292515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.801979, 57.662907, 61.390480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.701187, 57.277924, 61.350113>,  <71.640709, 57.046936, 61.325893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.701187, 57.277924, 61.350113>,  <71.801979, 57.662907, 61.390480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.701187, 57.277924, 61.350113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595537, -0.236421, 0.767750,
		-0.762785, 0.133356, 0.632752,
		-0.251980, -0.962456, -0.100920,
		71.625595, 56.989185, 61.319836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.108070, 57.014702, 61.076508>,  <71.801979, 57.662907, 61.390480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.108070, 57.014702, 61.076508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.064804, 57.147537, 60.701698>,  <72.038841, 57.227238, 60.476810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.064804, 57.147537, 60.701698>,  <72.108070, 57.014702, 61.076508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.064804, 57.147537, 60.701698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772692, 0.621133, 0.130928,
		0.625497, -0.709869, -0.323790,
		-0.108174, 0.332085, -0.937026,
		72.032349, 57.247162, 60.420589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.762741, 56.789131, 60.677696>,  <72.108070, 57.014702, 61.076508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.762741, 56.789131, 60.677696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.571480, 57.128059, 60.585251>,  <72.456718, 57.331417, 60.529785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.571480, 57.128059, 60.585251>,  <72.762741, 56.789131, 60.677696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.571480, 57.128059, 60.585251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813790, 0.526407, 0.246256,
		0.330317, -0.070327, -0.941246,
		-0.478160, 0.847319, -0.231113,
		72.428032, 57.382256, 60.515919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.157692, 57.140797, 60.226044>,  <72.762741, 56.789131, 60.677696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.157692, 57.140797, 60.226044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.934151, 57.395004, 60.439133>,  <72.800026, 57.547531, 60.566986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.934151, 57.395004, 60.439133>,  <73.157692, 57.140797, 60.226044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.934151, 57.395004, 60.439133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829031, 0.443440, 0.340688,
		-0.019715, 0.632038, -0.774687,
		-0.558855, 0.635523, 0.532721,
		72.766495, 57.585663, 60.598949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.368179, 57.798916, 59.974926>,  <73.157692, 57.140797, 60.226044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.368179, 57.798916, 59.974926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.229797, 57.794338, 60.350197>,  <73.146767, 57.791592, 60.575359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.229797, 57.794338, 60.350197>,  <73.368179, 57.798916, 59.974926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.229797, 57.794338, 60.350197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880835, 0.340457, 0.328967,
		-0.323175, 0.940190, -0.107703,
		-0.345960, -0.011445, 0.938179,
		73.126007, 57.790905, 60.631649>
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
