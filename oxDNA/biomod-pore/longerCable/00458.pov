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
	<24.155903, 35.088562, 34.938992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.459080, 34.841469, 34.855160>,  <24.640985, 34.693211, 34.804859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.459080, 34.841469, 34.855160>,  <24.155903, 35.088562, 34.938992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.459080, 34.841469, 34.855160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608062, 0.785387, -0.115882,
		0.236189, -0.039608, 0.970899,
		0.757942, -0.617737, -0.209584,
		24.686462, 34.656147, 34.792286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.650791, 35.089645, 35.499241>,  <24.155903, 35.088562, 34.938992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.650791, 35.089645, 35.499241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.759352, 35.053741, 35.115932>,  <24.824488, 35.032200, 34.885948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.759352, 35.053741, 35.115932>,  <24.650791, 35.089645, 35.499241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.759352, 35.053741, 35.115932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553908, 0.828798, 0.079242,
		0.787101, -0.552301, 0.274656,
		0.271400, -0.089763, -0.958272,
		24.840773, 35.026814, 34.828449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.310226, 35.182301, 35.481747>,  <24.650791, 35.089645, 35.499241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.310226, 35.182301, 35.481747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.209599, 35.287380, 35.109146>,  <25.149221, 35.350430, 34.885586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.209599, 35.287380, 35.109146>,  <25.310226, 35.182301, 35.481747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.209599, 35.287380, 35.109146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469464, 0.874771, 0.119912,
		0.846354, -0.407142, -0.343395,
		-0.251571, 0.262699, -0.931505,
		25.134127, 35.366192, 34.829693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.854836, 35.479126, 35.321541>,  <25.310226, 35.182301, 35.481747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.854836, 35.479126, 35.321541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.622959, 35.612267, 35.024040>,  <25.483833, 35.692150, 34.845539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.622959, 35.612267, 35.024040>,  <25.854836, 35.479126, 35.321541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.622959, 35.612267, 35.024040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401010, 0.911113, 0.095204,
		0.709332, -0.243063, -0.661641,
		-0.579689, 0.332856, -0.743752,
		25.449053, 35.712124, 34.800915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.283041, 35.926674, 34.863312>,  <25.854836, 35.479126, 35.321541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.283041, 35.926674, 34.863312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.906200, 36.041615, 34.794170>,  <25.680096, 36.110580, 34.752686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.906200, 36.041615, 34.794170>,  <26.283041, 35.926674, 34.863312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.906200, 36.041615, 34.794170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257236, 0.949962, 0.177207,
		0.215123, 0.122483, -0.968876,
		-0.942100, 0.287351, -0.172851,
		25.623569, 36.127819, 34.742313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.364336, 36.405148, 34.272018>,  <26.283041, 35.926674, 34.863312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.364336, 36.405148, 34.272018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.027447, 36.455002, 34.481827>,  <25.825314, 36.484913, 34.607712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.027447, 36.455002, 34.481827>,  <26.364336, 36.405148, 34.272018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.027447, 36.455002, 34.481827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293630, 0.921995, 0.252402,
		-0.452151, 0.366595, -0.813122,
		-0.842224, 0.124634, 0.524524,
		25.774780, 36.492393, 34.639183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.113426, 37.038158, 34.008698>,  <26.364336, 36.405148, 34.272018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.113426, 37.038158, 34.008698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.931566, 36.992672, 34.362049>,  <25.822451, 36.965382, 34.574062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.931566, 36.992672, 34.362049>,  <26.113426, 37.038158, 34.008698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.931566, 36.992672, 34.362049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144120, 0.969354, 0.198952,
		-0.878933, 0.217767, -0.424328,
		-0.454649, -0.113711, 0.883382,
		25.795172, 36.958557, 34.627064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.640253, 37.548241, 34.063538>,  <26.113426, 37.038158, 34.008698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.640253, 37.548241, 34.063538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.744318, 37.464241, 34.440517>,  <25.806757, 37.413841, 34.666706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.744318, 37.464241, 34.440517>,  <25.640253, 37.548241, 34.063538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.744318, 37.464241, 34.440517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315858, 0.940871, 0.122455,
		-0.912441, 0.265823, 0.311110,
		0.260163, -0.210000, 0.942452,
		25.822367, 37.401241, 34.723251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.278065, 38.006741, 34.494640>,  <25.640253, 37.548241, 34.063538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.278065, 38.006741, 34.494640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.603754, 37.887428, 34.693867>,  <25.799168, 37.815842, 34.813400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.603754, 37.887428, 34.693867>,  <25.278065, 38.006741, 34.494640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.603754, 37.887428, 34.693867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310868, 0.948565, 0.059886,
		-0.490309, 0.106071, 0.865070,
		0.814222, -0.298285, 0.498064,
		25.848021, 37.797943, 34.843285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.313421, 38.369228, 35.107315>,  <25.278065, 38.006741, 34.494640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.313421, 38.369228, 35.107315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.686501, 38.255344, 35.018757>,  <25.910347, 38.187012, 34.965622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.686501, 38.255344, 35.018757>,  <25.313421, 38.369228, 35.107315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.686501, 38.255344, 35.018757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292678, 0.956205, 0.003327,
		0.210754, -0.067902, 0.975178,
		0.932696, -0.284712, -0.221398,
		25.966309, 38.169930, 34.952339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.724638, 38.794868, 35.444744>,  <25.313421, 38.369228, 35.107315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.724638, 38.794868, 35.444744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944315, 38.636444, 35.150391>,  <26.076120, 38.541389, 34.973778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944315, 38.636444, 35.150391>,  <25.724638, 38.794868, 35.444744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.944315, 38.636444, 35.150391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367914, 0.905222, -0.212632,
		0.750352, -0.153965, 0.642858,
		0.549192, -0.396065, -0.735881,
		26.109072, 38.517624, 34.929626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.462662, 38.948467, 35.529785>,  <25.724638, 38.794868, 35.444744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.462662, 38.948467, 35.529785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.334478, 38.909405, 35.152901>,  <26.257568, 38.885967, 34.926769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.334478, 38.909405, 35.152901>,  <26.462662, 38.948467, 35.529785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.334478, 38.909405, 35.152901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343266, 0.915094, -0.211594,
		0.882879, -0.391237, -0.259727,
		-0.320458, -0.097656, -0.942216,
		26.238340, 38.880108, 34.870235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.999241, 39.158279, 35.082130>,  <26.462662, 38.948467, 35.529785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.999241, 39.158279, 35.082130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.629141, 39.203186, 34.937187>,  <26.407080, 39.230129, 34.850220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.629141, 39.203186, 34.937187>,  <26.999241, 39.158279, 35.082130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.629141, 39.203186, 34.937187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282115, 0.842233, -0.459407,
		0.253612, -0.527294, -0.810951,
		-0.925252, 0.112271, -0.362358,
		26.351564, 39.236866, 34.828480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.041330, 39.227318, 34.466980>,  <26.999241, 39.158279, 35.082130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.041330, 39.227318, 34.466980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.687082, 39.407928, 34.510445>,  <26.474533, 39.516293, 34.536522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.687082, 39.407928, 34.510445>,  <27.041330, 39.227318, 34.466980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.687082, 39.407928, 34.510445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289088, 0.719094, -0.631927,
		-0.363467, -0.528234, -0.767373,
		-0.885618, 0.451523, 0.108661,
		26.421396, 39.543385, 34.543041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.774479, 39.255417, 33.768391>,  <27.041330, 39.227318, 34.466980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.774479, 39.255417, 33.768391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669014, 39.541557, 34.027237>,  <26.605736, 39.713242, 34.182545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669014, 39.541557, 34.027237>,  <26.774479, 39.255417, 33.768391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.669014, 39.541557, 34.027237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558716, 0.660115, -0.502080,
		-0.786332, 0.229172, -0.573726,
		-0.263663, 0.715352, 0.647112,
		26.589914, 39.756165, 34.221371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.674444, 38.532303, 33.829132>,  <26.774479, 39.255417, 33.768391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.674444, 38.532303, 33.829132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.567318, 38.663837, 34.191380>,  <26.503042, 38.742760, 34.408726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.567318, 38.663837, 34.191380>,  <26.674444, 38.532303, 33.829132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.567318, 38.663837, 34.191380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237127, -0.933536, 0.268851,
		0.933834, -0.142744, 0.327993,
		-0.267816, 0.328838, 0.905616,
		26.486973, 38.762489, 34.463066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.094667, 38.121078, 34.247311>,  <26.674444, 38.532303, 33.829132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.094667, 38.121078, 34.247311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.776489, 38.245670, 34.455250>,  <26.585583, 38.320427, 34.580013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.776489, 38.245670, 34.455250>,  <27.094667, 38.121078, 34.247311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.776489, 38.245670, 34.455250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201647, -0.944963, 0.257651,
		0.571493, 0.100121, 0.814476,
		-0.795446, 0.311483, 0.519851,
		26.537855, 38.339115, 34.611206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.115786, 37.603813, 34.769421>,  <27.094667, 38.121078, 34.247311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.115786, 37.603813, 34.769421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.771990, 37.799160, 34.829784>,  <26.565712, 37.916370, 34.866001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.771990, 37.799160, 34.829784>,  <27.115786, 37.603813, 34.769421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.771990, 37.799160, 34.829784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419586, -0.842686, 0.337383,
		0.291934, 0.226659, 0.929193,
		-0.859490, 0.488370, 0.150906,
		26.514143, 37.945671, 34.875057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.958380, 37.413128, 35.334122>,  <27.115786, 37.603813, 34.769421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.958380, 37.413128, 35.334122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.611740, 37.528107, 35.170963>,  <26.403755, 37.597095, 35.073067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.611740, 37.528107, 35.170963>,  <26.958380, 37.413128, 35.334122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.611740, 37.528107, 35.170963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426266, -0.851398, 0.305645,
		-0.259425, 0.438744, 0.860350,
		-0.866600, 0.287446, -0.407896,
		26.351761, 37.614342, 35.048595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.407818, 37.284050, 35.867519>,  <26.958380, 37.413128, 35.334122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.407818, 37.284050, 35.867519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.255009, 37.302940, 35.498341>,  <26.163324, 37.314274, 35.276833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.255009, 37.302940, 35.498341>,  <26.407818, 37.284050, 35.867519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.255009, 37.302940, 35.498341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518952, -0.837328, 0.171960,
		-0.764689, 0.544657, 0.344383,
		-0.382021, 0.047223, -0.922946,
		26.140402, 37.317108, 35.221458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.632660, 37.474525, 35.889362>,  <26.407818, 37.284050, 35.867519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.632660, 37.474525, 35.889362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.783451, 37.243214, 35.599957>,  <25.873926, 37.104427, 35.426311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.783451, 37.243214, 35.599957>,  <25.632660, 37.474525, 35.889362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.783451, 37.243214, 35.599957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722931, -0.672030, 0.160458,
		-0.579014, 0.462562, -0.671401,
		0.376979, -0.578284, -0.723516,
		25.896545, 37.069729, 35.382900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.237329, 36.825424, 35.769077>,  <25.632660, 37.474525, 35.889362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.237329, 36.825424, 35.769077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396544, 36.880077, 35.406223>,  <25.492071, 36.912868, 35.188511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396544, 36.880077, 35.406223>,  <25.237329, 36.825424, 35.769077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.396544, 36.880077, 35.406223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412238, -0.856742, -0.309924,
		-0.819530, 0.497317, -0.284687,
		0.398034, 0.136633, -0.907139,
		25.515953, 36.921066, 35.134083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.628771, 36.716312, 35.262623>,  <25.237329, 36.825424, 35.769077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.628771, 36.716312, 35.262623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.984442, 36.653336, 35.090771>,  <25.197844, 36.615551, 34.987659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.984442, 36.653336, 35.090771>,  <24.628771, 36.716312, 35.262623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.984442, 36.653336, 35.090771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341574, -0.853145, -0.394297,
		-0.304456, 0.497349, -0.812374,
		0.889176, -0.157439, -0.429627,
		25.251194, 36.606102, 34.961884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.137325, 36.109016, 35.214405>,  <24.628771, 36.716312, 35.262623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.137325, 36.109016, 35.214405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.494717, 36.030720, 35.376087>,  <24.709152, 35.983742, 35.473095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.494717, 36.030720, 35.376087>,  <24.137325, 36.109016, 35.214405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.494717, 36.030720, 35.376087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449062, -0.376813, 0.810158,
		-0.006271, -0.905372, -0.424574,
		0.893479, -0.195740, 0.404205,
		24.762760, 35.971996, 35.497349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.417063, 36.480885, 34.555519>,  <24.137325, 36.109016, 35.214405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.417063, 36.480885, 34.555519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.794888, 36.368725, 34.623840>,  <25.021584, 36.301430, 34.664833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.794888, 36.368725, 34.623840>,  <24.417063, 36.480885, 34.555519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.794888, 36.368725, 34.623840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151889, -0.834392, -0.529830,
		0.291082, 0.474516, -0.830726,
		0.944564, -0.280402, 0.170803,
		25.078257, 36.284603, 34.675079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.620886, 36.149914, 33.950989>,  <24.417063, 36.480885, 34.555519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.620886, 36.149914, 33.950989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.870056, 36.009029, 34.230392>,  <25.019558, 35.924500, 34.398033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.870056, 36.009029, 34.230392>,  <24.620886, 36.149914, 33.950989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.870056, 36.009029, 34.230392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019689, -0.899684, -0.436097,
		0.782033, 0.257903, -0.567371,
		0.622926, -0.352213, 0.698505,
		25.056934, 35.903366, 34.439945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.873724, 35.654766, 33.576828>,  <24.620886, 36.149914, 33.950989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.873724, 35.654766, 33.576828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.933481, 35.567200, 33.962524>,  <24.969336, 35.514660, 34.193943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.933481, 35.567200, 33.962524>,  <24.873724, 35.654766, 33.576828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.933481, 35.567200, 33.962524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257861, -0.950063, -0.175749,
		0.954562, -0.222384, -0.198382,
		0.149392, -0.218918, 0.964239,
		24.978298, 35.501526, 34.251797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.287550, 35.094891, 33.638996>,  <24.873724, 35.654766, 33.576828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.287550, 35.094891, 33.638996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.074785, 35.093437, 33.977711>,  <24.947126, 35.092564, 34.180939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.074785, 35.093437, 33.977711>,  <25.287550, 35.094891, 33.638996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.074785, 35.093437, 33.977711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207584, -0.968919, -0.134552,
		0.820961, -0.247350, 0.514627,
		-0.531914, -0.003634, 0.846791,
		24.915211, 35.092346, 34.231747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.683689, 34.549637, 33.413857>,  <25.287550, 35.094891, 33.638996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.683689, 34.549637, 33.413857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.781874, 34.737206, 33.753235>,  <25.840784, 34.849747, 33.956863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.781874, 34.737206, 33.753235>,  <25.683689, 34.549637, 33.413857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.781874, 34.737206, 33.753235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425977, -0.838371, 0.340115,
		0.870800, 0.277933, -0.405539,
		0.245463, 0.468922, 0.848446,
		25.855513, 34.877884, 34.007767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.476950, 34.444836, 33.561352>,  <25.683689, 34.549637, 33.413857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.476950, 34.444836, 33.561352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.222260, 34.499344, 33.864933>,  <26.069445, 34.532051, 34.047081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.222260, 34.499344, 33.864933>,  <26.476950, 34.444836, 33.561352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.222260, 34.499344, 33.864933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294077, -0.866953, 0.402383,
		0.712809, 0.479399, 0.511938,
		-0.636727, 0.136273, 0.758952,
		26.031240, 34.540226, 34.092617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.875408, 34.211563, 34.018562>,  <26.476950, 34.444836, 33.561352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.875408, 34.211563, 34.018562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.495916, 34.204845, 34.144821>,  <26.268221, 34.200817, 34.220577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.495916, 34.204845, 34.144821>,  <26.875408, 34.211563, 34.018562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.495916, 34.204845, 34.144821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181638, -0.846213, 0.500930,
		0.258690, 0.532580, 0.805877,
		-0.948729, -0.016793, 0.315644,
		26.211298, 34.199806, 34.239513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281353, 34.663254, 34.592197>,  <26.875408, 34.211563, 34.018562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281353, 34.663254, 34.592197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.211502, 34.453846, 34.925766>,  <27.169592, 34.328201, 35.125908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.211502, 34.453846, 34.925766>,  <27.281353, 34.663254, 34.592197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.211502, 34.453846, 34.925766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696998, 0.532501, 0.480246,
		-0.695485, 0.665109, 0.271903,
		-0.174627, -0.523520, 0.833926,
		27.159115, 34.296791, 35.175945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.285973, 35.121624, 35.282093>,  <27.281353, 34.663254, 34.592197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.285973, 35.121624, 35.282093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337561, 34.743786, 35.402832>,  <27.368513, 34.517082, 35.475273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337561, 34.743786, 35.402832>,  <27.285973, 35.121624, 35.282093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337561, 34.743786, 35.402832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647983, 0.310688, 0.695407,
		-0.750656, 0.105905, 0.652149,
		0.128968, -0.944593, 0.301845,
		27.376251, 34.460407, 35.493385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.298979, 35.185104, 36.019585>,  <27.285973, 35.121624, 35.282093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.298979, 35.185104, 36.019585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.486662, 34.840687, 35.941162>,  <27.599272, 34.634037, 35.894108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.486662, 34.840687, 35.941162>,  <27.298979, 35.185104, 36.019585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.486662, 34.840687, 35.941162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691572, 0.220219, 0.687919,
		-0.549155, -0.458367, 0.698805,
		0.469210, -0.861048, -0.196060,
		27.627424, 34.582371, 35.882343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457123, 35.711952, 36.472034>,  <27.298979, 35.185104, 36.019585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457123, 35.711952, 36.472034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.827206, 35.826206, 36.372112>,  <28.049255, 35.894760, 36.312160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.827206, 35.826206, 36.372112>,  <27.457123, 35.711952, 36.472034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.827206, 35.826206, 36.372112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315527, -0.213415, 0.924606,
		0.210788, -0.934274, -0.287579,
		0.925209, 0.285635, -0.249803,
		28.104769, 35.911896, 36.297173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.992661, 35.135342, 36.582092>,  <27.457123, 35.711952, 36.472034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.992661, 35.135342, 36.582092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148279, 35.500957, 36.628002>,  <28.241650, 35.720325, 36.655548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148279, 35.500957, 36.628002>,  <27.992661, 35.135342, 36.582092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.148279, 35.500957, 36.628002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517040, -0.319767, 0.793988,
		0.762438, -0.249557, -0.597000,
		0.389047, 0.914040, 0.114772,
		28.264994, 35.775169, 36.662434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.406418, 34.671852, 36.670910>,  <27.992661, 35.135342, 36.582092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.406418, 34.671852, 36.670910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.687954, 34.604767, 36.394798>,  <27.856876, 34.564518, 36.229134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.687954, 34.604767, 36.394798>,  <27.406418, 34.671852, 36.670910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.687954, 34.604767, 36.394798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695567, 0.359962, 0.621783,
		0.144194, -0.917769, 0.370010,
		0.703842, -0.167710, -0.690275,
		27.899107, 34.554455, 36.187717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.932270, 34.300774, 37.027309>,  <27.406418, 34.671852, 36.670910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.932270, 34.300774, 37.027309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148912, 34.401783, 36.706585>,  <28.278898, 34.462391, 36.514153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148912, 34.401783, 36.706585>,  <27.932270, 34.300774, 37.027309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.148912, 34.401783, 36.706585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814582, 0.077953, 0.574787,
		0.207652, -0.964445, -0.163483,
		0.541606, 0.252526, -0.801806,
		28.311394, 34.477539, 36.466042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525118, 34.036728, 37.168892>,  <27.932270, 34.300774, 37.027309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525118, 34.036728, 37.168892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611845, 34.294239, 36.875351>,  <28.663881, 34.448746, 36.699226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611845, 34.294239, 36.875351>,  <28.525118, 34.036728, 37.168892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611845, 34.294239, 36.875351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758237, 0.362426, 0.541963,
		0.614872, -0.673941, -0.409556,
		0.216817, 0.643778, -0.733853,
		28.676889, 34.487373, 36.655193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196896, 34.153202, 37.077785>,  <28.525118, 34.036728, 37.168892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196896, 34.153202, 37.077785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.043730, 34.497906, 36.944675>,  <28.951830, 34.704727, 36.864807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.043730, 34.497906, 36.944675>,  <29.196896, 34.153202, 37.077785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.043730, 34.497906, 36.944675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774207, 0.495891, 0.393313,
		0.503964, -0.107034, -0.857067,
		-0.382915, 0.861763, -0.332778,
		28.928856, 34.756435, 36.844841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592669, 34.601749, 36.537785>,  <29.196896, 34.153202, 37.077785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592669, 34.601749, 36.537785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358570, 34.828957, 36.769245>,  <29.218111, 34.965282, 36.908123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358570, 34.828957, 36.769245>,  <29.592669, 34.601749, 36.537785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.358570, 34.828957, 36.769245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808538, 0.462707, 0.363549,
		-0.061242, 0.680627, -0.730066,
		-0.585248, 0.568022, 0.578650,
		29.182995, 34.999363, 36.942841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.598478, 35.403820, 36.468330>,  <29.592669, 34.601749, 36.537785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.598478, 35.403820, 36.468330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.509951, 35.332047, 36.851749>,  <29.456835, 35.288982, 37.081802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.509951, 35.332047, 36.851749>,  <29.598478, 35.403820, 36.468330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.509951, 35.332047, 36.851749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869689, 0.408381, 0.277247,
		-0.441201, 0.895002, 0.065668,
		-0.221319, -0.179433, 0.958552,
		29.443556, 35.278217, 37.139317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840391, 35.580658, 36.296890>,  <29.598478, 35.403820, 36.468330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.840391, 35.580658, 36.296890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.994175, 35.228481, 36.407902>,  <29.086445, 35.017178, 36.474506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.994175, 35.228481, 36.407902>,  <28.840391, 35.580658, 36.296890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994175, 35.228481, 36.407902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711582, -0.474159, -0.518482,
		0.588082, 0.001855, -0.808800,
		0.384461, -0.880437, 0.277524,
		29.109514, 34.964352, 36.491158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960247, 35.182625, 35.631714>,  <28.840391, 35.580658, 36.296890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.960247, 35.182625, 35.631714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.913803, 34.938061, 35.944813>,  <28.885937, 34.791321, 36.132671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.913803, 34.938061, 35.944813>,  <28.960247, 35.182625, 35.631714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.913803, 34.938061, 35.944813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715492, -0.495121, -0.492876,
		0.688905, -0.617279, -0.379970,
		-0.116111, -0.611410, 0.782749,
		28.878969, 34.754639, 36.179638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863449, 34.604839, 35.247009>,  <28.960247, 35.182625, 35.631714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863449, 34.604839, 35.247009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721161, 34.561501, 35.618324>,  <28.635788, 34.535496, 35.841114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721161, 34.561501, 35.618324>,  <28.863449, 34.604839, 35.247009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721161, 34.561501, 35.618324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749433, -0.560383, -0.352592,
		0.558401, -0.821116, 0.118139,
		-0.355722, -0.108350, 0.928290,
		28.614445, 34.528996, 35.896812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.711874, 33.947624, 35.365215>,  <28.863449, 34.604839, 35.247009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.711874, 33.947624, 35.365215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.465675, 34.128044, 35.623737>,  <28.317955, 34.236298, 35.778851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.465675, 34.128044, 35.623737>,  <28.711874, 33.947624, 35.365215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.465675, 34.128044, 35.623737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783318, -0.440655, -0.438447,
		0.087035, -0.776128, 0.624541,
		-0.615498, 0.451054, 0.646307,
		28.281027, 34.263359, 35.817631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.230076, 33.480476, 35.514637>,  <28.711874, 33.947624, 35.365215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.230076, 33.480476, 35.514637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.049414, 33.810162, 35.651276>,  <27.941017, 34.007973, 35.733257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.049414, 33.810162, 35.651276>,  <28.230076, 33.480476, 35.514637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.049414, 33.810162, 35.651276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883420, -0.359572, -0.300462,
		-0.124815, -0.437479, 0.890524,
		-0.451653, 0.824209, 0.341598,
		27.913918, 34.057423, 35.753754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.718884, 33.253681, 35.908997>,  <28.230076, 33.480476, 35.514637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.718884, 33.253681, 35.908997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.614773, 33.617363, 35.779015>,  <27.552307, 33.835571, 35.701023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.614773, 33.617363, 35.779015>,  <27.718884, 33.253681, 35.908997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.614773, 33.617363, 35.779015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874671, -0.364561, -0.319447,
		-0.408910, 0.201086, 0.890144,
		-0.260275, 0.909208, -0.324957,
		27.536690, 33.890125, 35.681526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.009567, 33.417713, 36.034916>,  <27.718884, 33.253681, 35.908997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.009567, 33.417713, 36.034916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.097277, 33.665653, 35.733532>,  <27.149902, 33.814419, 35.552700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.097277, 33.665653, 35.733532>,  <27.009567, 33.417713, 36.034916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.097277, 33.665653, 35.733532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789929, -0.340478, -0.509987,
		-0.572653, 0.707007, 0.414981,
		0.219273, 0.619851, -0.753461,
		27.163059, 33.851608, 35.507492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.404673, 33.692776, 35.925442>,  <27.009567, 33.417713, 36.034916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.404673, 33.692776, 35.925442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.606161, 33.724243, 35.581333>,  <26.727055, 33.743122, 35.374866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.606161, 33.724243, 35.581333>,  <26.404673, 33.692776, 35.925442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.606161, 33.724243, 35.581333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807631, -0.310541, -0.501295,
		-0.306588, 0.947299, -0.092891,
		0.503723, 0.078670, -0.860276,
		26.757278, 33.747845, 35.323250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.889513, 33.064026, 36.158958>,  <26.404673, 33.692776, 35.925442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.889513, 33.064026, 36.158958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.495464, 33.001034, 36.131443>,  <25.259035, 32.963238, 36.114933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.495464, 33.001034, 36.131443>,  <25.889513, 33.064026, 36.158958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.495464, 33.001034, 36.131443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168388, -0.964497, -0.203449,
		-0.034308, -0.212006, 0.976666,
		-0.985124, -0.157479, -0.068789,
		25.199926, 32.953789, 36.110806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.940510, 32.436119, 36.478859>,  <25.889513, 33.064026, 36.158958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.940510, 32.436119, 36.478859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.609428, 32.468311, 36.256714>,  <25.410780, 32.487625, 36.123425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.609428, 32.468311, 36.256714>,  <25.940510, 32.436119, 36.478859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.609428, 32.468311, 36.256714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132278, -0.989756, 0.053716,
		-0.545355, 0.117923, 0.829869,
		-0.827702, 0.080480, -0.555367,
		25.361118, 32.492455, 36.090103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.167944, 32.056160, 35.830067>,  <25.940510, 32.436119, 36.478859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.167944, 32.056160, 35.830067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386551, 32.341221, 36.005993>,  <26.517715, 32.512257, 36.111549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386551, 32.341221, 36.005993>,  <26.167944, 32.056160, 35.830067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.386551, 32.341221, 36.005993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817469, -0.339951, -0.464949,
		-0.181832, 0.613641, -0.768363,
		0.546518, 0.712656, 0.439818,
		26.550507, 32.555019, 36.137939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.638226, 32.299564, 35.311996>,  <26.167944, 32.056160, 35.830067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.638226, 32.299564, 35.311996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815491, 32.382278, 35.660900>,  <26.921850, 32.431908, 35.870243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815491, 32.382278, 35.660900>,  <26.638226, 32.299564, 35.311996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.815491, 32.382278, 35.660900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830683, -0.460524, -0.312864,
		0.337002, 0.863225, -0.375861,
		0.443165, 0.206786, 0.872264,
		26.948441, 32.444313, 35.922581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.208597, 32.847393, 35.359421>,  <26.638226, 32.299564, 35.311996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.208597, 32.847393, 35.359421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.232489, 32.526085, 35.596466>,  <27.246824, 32.333298, 35.738693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.232489, 32.526085, 35.596466>,  <27.208597, 32.847393, 35.359421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.232489, 32.526085, 35.596466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604626, -0.443262, -0.661775,
		0.794267, 0.397834, 0.459204,
		0.059729, -0.803273, 0.592609,
		27.250408, 32.285103, 35.774250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.890406, 32.644119, 35.578037>,  <27.208597, 32.847393, 35.359421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.890406, 32.644119, 35.578037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.696342, 32.294994, 35.556805>,  <27.579905, 32.085518, 35.544064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.696342, 32.294994, 35.556805>,  <27.890406, 32.644119, 35.578037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.696342, 32.294994, 35.556805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486622, -0.219058, -0.845703,
		0.726513, -0.436131, 0.531008,
		-0.485158, -0.872814, -0.053083,
		27.550795, 32.033150, 35.540878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.952087, 32.632641, 34.874660>,  <27.890406, 32.644119, 35.578037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.952087, 32.632641, 34.874660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.173231, 32.965446, 34.856335>,  <28.305918, 33.165131, 34.845341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.173231, 32.965446, 34.856335>,  <27.952087, 32.632641, 34.874660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.173231, 32.965446, 34.856335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182220, 0.067069, -0.980968,
		-0.813106, 0.550686, 0.188689,
		0.552860, 0.832014, -0.045812,
		28.339088, 33.215050, 34.842590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.620491, 32.762585, 35.283031>,  <27.952087, 32.632641, 34.874660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.620491, 32.762585, 35.283031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.735811, 32.436539, 35.484016>,  <28.805004, 32.240913, 35.604607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.735811, 32.436539, 35.484016>,  <28.620491, 32.762585, 35.283031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.735811, 32.436539, 35.484016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732627, -0.525656, -0.432371,
		0.616556, -0.243468, -0.748721,
		0.288301, -0.815113, 0.502467,
		28.822302, 32.192005, 35.634758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.780706, 32.252068, 34.746170>,  <28.620491, 32.762585, 35.283031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.780706, 32.252068, 34.746170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.656553, 32.107368, 35.097805>,  <28.582062, 32.020550, 35.308788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.656553, 32.107368, 35.097805>,  <28.780706, 32.252068, 34.746170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.656553, 32.107368, 35.097805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667972, -0.574983, -0.472449,
		0.676370, -0.733848, -0.063172,
		-0.310383, -0.361748, 0.879091,
		28.563438, 31.998844, 35.361534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308577, 32.711422, 34.368740>,  <28.780706, 32.252068, 34.746170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.308577, 32.711422, 34.368740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.349684, 32.735825, 34.765873>,  <29.374348, 32.750465, 35.004154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.349684, 32.735825, 34.765873>,  <29.308577, 32.711422, 34.368740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349684, 32.735825, 34.765873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855170, 0.504383, -0.119511,
		-0.508058, 0.861323, -0.000333,
		0.102770, 0.061003, 0.992833,
		29.380514, 32.754124, 35.063725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426571, 33.432468, 34.466003>,  <29.308577, 32.711422, 34.368740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426571, 33.432468, 34.466003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.561535, 33.156288, 34.721951>,  <29.642513, 32.990582, 34.875519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.561535, 33.156288, 34.721951>,  <29.426571, 33.432468, 34.466003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.561535, 33.156288, 34.721951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940273, 0.214563, -0.264290,
		0.045186, 0.690827, 0.721607,
		0.337409, -0.690450, 0.639870,
		29.662758, 32.949154, 34.913910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941874, 33.706867, 34.970470>,  <29.426571, 33.432468, 34.466003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941874, 33.706867, 34.970470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998110, 33.316631, 34.902992>,  <30.031851, 33.082489, 34.862507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998110, 33.316631, 34.902992>,  <29.941874, 33.706867, 34.970470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998110, 33.316631, 34.902992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934407, 0.187070, -0.303131,
		0.327289, -0.115010, 0.937899,
		0.140590, -0.975591, -0.168692,
		30.040287, 33.023952, 34.852386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538355, 33.446503, 35.274094>,  <29.941874, 33.706867, 34.970470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538355, 33.446503, 35.274094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.455448, 33.265896, 34.926952>,  <30.405704, 33.157532, 34.718666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.455448, 33.265896, 34.926952>,  <30.538355, 33.446503, 35.274094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455448, 33.265896, 34.926952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904763, 0.248934, -0.345595,
		0.372081, -0.856834, 0.356919,
		-0.207268, -0.451517, -0.867855,
		30.393269, 33.130440, 34.666595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171000, 33.202888, 35.105049>,  <30.538355, 33.446503, 35.274094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171000, 33.202888, 35.105049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963570, 33.233223, 34.764385>,  <30.839111, 33.251423, 34.559986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963570, 33.233223, 34.764385>,  <31.171000, 33.202888, 35.105049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963570, 33.233223, 34.764385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844339, 0.202462, -0.496085,
		0.134806, -0.976349, -0.169027,
		-0.518574, 0.075841, -0.851663,
		30.807997, 33.255974, 34.508888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622803, 32.865429, 34.708366>,  <31.171000, 33.202888, 35.105049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622803, 32.865429, 34.708366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.373943, 33.102741, 34.504032>,  <31.224627, 33.245129, 34.381432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.373943, 33.102741, 34.504032>,  <31.622803, 32.865429, 34.708366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.373943, 33.102741, 34.504032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769384, 0.342617, -0.539131,
		-0.144836, -0.728446, -0.669619,
		-0.622150, 0.593280, -0.510831,
		31.187298, 33.280724, 34.350784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920984, 32.549419, 34.098675>,  <31.622803, 32.865429, 34.708366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920984, 32.549419, 34.098675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658144, 32.821751, 33.969250>,  <31.500441, 32.985149, 33.891594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658144, 32.821751, 33.969250>,  <31.920984, 32.549419, 34.098675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658144, 32.821751, 33.969250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471288, 0.036057, -0.881242,
		-0.588310, -0.731553, -0.344560,
		-0.657099, 0.680831, -0.323560,
		31.461014, 33.026001, 33.872181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602335, 32.323540, 33.493797>,  <31.920984, 32.549419, 34.098675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602335, 32.323540, 33.493797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591869, 32.723282, 33.503639>,  <31.585590, 32.963127, 33.509544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591869, 32.723282, 33.503639>,  <31.602335, 32.323540, 33.493797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591869, 32.723282, 33.503639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274615, 0.030851, -0.961059,
		-0.961199, -0.018386, -0.275245,
		-0.026162, 0.999355, 0.024605,
		31.584021, 33.023087, 33.511021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165653, 32.527870, 32.912308>,  <31.602335, 32.323540, 33.493797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165653, 32.527870, 32.912308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443787, 32.792915, 33.023632>,  <31.610666, 32.951942, 33.090427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443787, 32.792915, 33.023632>,  <31.165653, 32.527870, 32.912308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443787, 32.792915, 33.023632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238966, 0.152054, -0.959049,
		-0.677796, 0.733365, -0.052614,
		0.695333, 0.662612, 0.278311,
		31.652386, 32.991699, 33.107124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039024, 33.129379, 32.588871>,  <31.165653, 32.527870, 32.912308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039024, 33.129379, 32.588871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431032, 33.114788, 32.667084>,  <31.666237, 33.106033, 32.714012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431032, 33.114788, 32.667084>,  <31.039024, 33.129379, 32.588871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431032, 33.114788, 32.667084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197879, 0.078906, -0.977045,
		0.020216, 0.996214, 0.084548,
		0.980018, -0.036482, 0.195534,
		31.725039, 33.103844, 32.725742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277401, 33.517433, 32.065437>,  <31.039024, 33.129379, 32.588871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277401, 33.517433, 32.065437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617426, 33.342545, 32.182903>,  <31.821440, 33.237614, 32.253384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617426, 33.342545, 32.182903>,  <31.277401, 33.517433, 32.065437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617426, 33.342545, 32.182903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243932, -0.167337, -0.955246,
		0.466792, 0.883651, -0.035595,
		0.850060, -0.437218, 0.293663,
		31.872444, 33.211380, 32.271004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897354, 33.849293, 31.748993>,  <31.277401, 33.517433, 32.065437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897354, 33.849293, 31.748993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026867, 33.484577, 31.850037>,  <32.104576, 33.265747, 31.910664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026867, 33.484577, 31.850037>,  <31.897354, 33.849293, 31.748993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026867, 33.484577, 31.850037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411351, -0.104776, -0.905435,
		0.852029, 0.397077, 0.341139,
		0.323784, -0.911785, 0.252610,
		32.124001, 33.211040, 31.925819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526268, 33.866188, 31.513981>,  <31.897354, 33.849293, 31.748993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526268, 33.866188, 31.513981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468216, 33.472435, 31.553827>,  <32.433384, 33.236183, 31.577736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468216, 33.472435, 31.553827>,  <32.526268, 33.866188, 31.513981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468216, 33.472435, 31.553827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467641, -0.156976, -0.869868,
		0.871922, -0.079660, 0.483120,
		-0.145132, -0.984385, 0.099618,
		32.424675, 33.177120, 31.583714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114304, 33.535046, 31.510809>,  <32.526268, 33.866188, 31.513981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114304, 33.535046, 31.510809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.858097, 33.261627, 31.370808>,  <32.704372, 33.097576, 31.286808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.858097, 33.261627, 31.370808>,  <33.114304, 33.535046, 31.510809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858097, 33.261627, 31.370808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501342, -0.026955, -0.864829,
		0.581720, -0.729405, 0.359958,
		-0.640513, -0.683551, -0.350002,
		32.665943, 33.056561, 31.265806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577587, 33.175217, 31.092424>,  <33.114304, 33.535046, 31.510809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577587, 33.175217, 31.092424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215046, 33.042915, 30.987261>,  <32.997520, 32.963535, 30.924162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215046, 33.042915, 30.987261>,  <33.577587, 33.175217, 31.092424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215046, 33.042915, 30.987261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338893, -0.197480, -0.919866,
		0.252326, -0.922825, 0.291076,
		-0.906356, -0.330750, -0.262910,
		32.943138, 32.943691, 30.908388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721687, 32.699886, 30.629894>,  <33.577587, 33.175217, 31.092424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721687, 32.699886, 30.629894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329498, 32.747681, 30.567423>,  <33.094185, 32.776360, 30.529940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329498, 32.747681, 30.567423>,  <33.721687, 32.699886, 30.629894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329498, 32.747681, 30.567423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166245, 0.079470, -0.982877,
		-0.105032, -0.989650, -0.097783,
		-0.980475, 0.119489, -0.156178,
		33.035355, 32.783527, 30.520569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514027, 32.261543, 30.071228>,  <33.721687, 32.699886, 30.629894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514027, 32.261543, 30.071228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221161, 32.533649, 30.084915>,  <33.045441, 32.696915, 30.093128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221161, 32.533649, 30.084915>,  <33.514027, 32.261543, 30.071228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221161, 32.533649, 30.084915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034484, 0.087194, -0.995594,
		-0.680253, -0.727760, -0.087298,
		-0.732165, 0.680267, 0.034218,
		33.001511, 32.737728, 30.095181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052010, 32.033508, 29.596294>,  <33.514027, 32.261543, 30.071228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052010, 32.033508, 29.596294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005730, 32.427048, 29.650930>,  <32.977962, 32.663170, 29.683712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005730, 32.427048, 29.650930>,  <33.052010, 32.033508, 29.596294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005730, 32.427048, 29.650930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065365, 0.129675, -0.989400,
		-0.991131, -0.123402, 0.049306,
		-0.115700, 0.983848, 0.136591,
		32.971020, 32.722202, 29.691908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698849, 32.245918, 28.965342>,  <33.052010, 32.033508, 29.596294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698849, 32.245918, 28.965342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822071, 32.595566, 29.115555>,  <32.896004, 32.805355, 29.205683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822071, 32.595566, 29.115555>,  <32.698849, 32.245918, 28.965342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822071, 32.595566, 29.115555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354243, 0.260954, -0.898006,
		-0.882958, 0.409664, -0.229262,
		0.308054, 0.874116, 0.375532,
		32.914486, 32.857800, 29.228214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530346, 32.686451, 28.342443>,  <32.698849, 32.245918, 28.965342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530346, 32.686451, 28.342443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791794, 32.887157, 28.569077>,  <32.948662, 33.007580, 28.705057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791794, 32.887157, 28.569077>,  <32.530346, 32.686451, 28.342443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791794, 32.887157, 28.569077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457219, 0.334784, -0.823936,
		-0.603104, 0.797592, -0.010595,
		0.653618, 0.501763, 0.566584,
		32.987881, 33.037685, 28.739052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600636, 33.381474, 28.082298>,  <32.530346, 32.686451, 28.342443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600636, 33.381474, 28.082298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945984, 33.326309, 28.276442>,  <33.153194, 33.293209, 28.392927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945984, 33.326309, 28.276442>,  <32.600636, 33.381474, 28.082298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945984, 33.326309, 28.276442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501643, 0.338120, -0.796259,
		-0.054293, 0.930942, 0.361107,
		0.863369, -0.137915, 0.485358,
		33.204994, 33.284935, 28.422049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938602, 33.986969, 28.139212>,  <32.600636, 33.381474, 28.082298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938602, 33.986969, 28.139212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221447, 33.705681, 28.168800>,  <33.391155, 33.536907, 28.186554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221447, 33.705681, 28.168800>,  <32.938602, 33.986969, 28.139212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221447, 33.705681, 28.168800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432989, 0.347918, -0.831549,
		0.559024, 0.620030, 0.550504,
		0.707116, -0.703218, 0.073971,
		33.433582, 33.494717, 28.190992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645401, 34.378304, 28.063305>,  <32.938602, 33.986969, 28.139212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645401, 34.378304, 28.063305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654781, 33.988689, 27.973238>,  <33.660408, 33.754921, 27.919197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654781, 33.988689, 27.973238>,  <33.645401, 34.378304, 28.063305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654781, 33.988689, 27.973238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390138, 0.216288, -0.894992,
		0.920458, -0.066861, 0.385081,
		0.023448, -0.974037, -0.225169,
		33.661816, 33.696480, 27.905687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254627, 34.301823, 27.763552>,  <33.645401, 34.378304, 28.063305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254627, 34.301823, 27.763552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084129, 33.963352, 27.635611>,  <33.981831, 33.760269, 27.558846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084129, 33.963352, 27.635611>,  <34.254627, 34.301823, 27.763552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084129, 33.963352, 27.635611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285893, 0.209452, -0.935090,
		0.858244, -0.490019, 0.152638,
		-0.426242, -0.846174, -0.319854,
		33.956257, 33.709499, 27.539654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651951, 34.182236, 27.275951>,  <34.254627, 34.301823, 27.763552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651951, 34.182236, 27.275951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334225, 33.952213, 27.197590>,  <34.143589, 33.814201, 27.150574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334225, 33.952213, 27.197590>,  <34.651951, 34.182236, 27.275951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334225, 33.952213, 27.197590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074471, 0.227872, -0.970839,
		0.602925, -0.785741, -0.138177,
		-0.794314, -0.575053, -0.195904,
		34.095932, 33.779697, 27.138819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795380, 33.850277, 26.671337>,  <34.651951, 34.182236, 27.275951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795380, 33.850277, 26.671337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396515, 33.827160, 26.690613>,  <34.157196, 33.813290, 26.702179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396515, 33.827160, 26.690613>,  <34.795380, 33.850277, 26.671337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396515, 33.827160, 26.690613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052515, 0.075785, -0.995740,
		0.053886, -0.995448, -0.078605,
		-0.997165, -0.057784, 0.048192,
		34.097366, 33.809822, 26.705070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595398, 33.422367, 26.099361>,  <34.795380, 33.850277, 26.671337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595398, 33.422367, 26.099361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268219, 33.634129, 26.189425>,  <34.071911, 33.761185, 26.243462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268219, 33.634129, 26.189425>,  <34.595398, 33.422367, 26.099361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268219, 33.634129, 26.189425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198241, 0.108032, -0.974182,
		-0.540058, -0.841464, 0.016585,
		-0.817947, 0.529403, 0.225156,
		34.022835, 33.792950, 26.256971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043335, 33.182625, 25.684298>,  <34.595398, 33.422367, 26.099361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043335, 33.182625, 25.684298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882092, 33.531349, 25.795620>,  <33.785347, 33.740582, 25.862413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882092, 33.531349, 25.795620>,  <34.043335, 33.182625, 25.684298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882092, 33.531349, 25.795620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190606, 0.217457, -0.957278,
		-0.895082, -0.438935, 0.078513,
		-0.403109, 0.871808, 0.278306,
		33.761158, 33.792892, 25.879112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352417, 33.173431, 25.323006>,  <34.043335, 33.182625, 25.684298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352417, 33.173431, 25.323006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442898, 33.552620, 25.412611>,  <33.497185, 33.780132, 25.466373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442898, 33.552620, 25.412611>,  <33.352417, 33.173431, 25.323006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442898, 33.552620, 25.412611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141312, 0.259477, -0.955355,
		-0.963776, 0.184447, 0.192654,
		0.226202, 0.947972, 0.224013,
		33.510757, 33.837013, 25.479815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895115, 33.541466, 24.998068>,  <33.352417, 33.173431, 25.323006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895115, 33.541466, 24.998068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192600, 33.800804, 25.063236>,  <33.371090, 33.956406, 25.102337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192600, 33.800804, 25.063236>,  <32.895115, 33.541466, 24.998068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192600, 33.800804, 25.063236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099641, 0.348495, -0.931999,
		-0.661034, 0.676905, 0.323781,
		0.743711, 0.648345, 0.162920,
		33.415714, 33.995308, 25.112112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624050, 34.144695, 24.887947>,  <32.895115, 33.541466, 24.998068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624050, 34.144695, 24.887947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014767, 34.205215, 24.827291>,  <33.249195, 34.241528, 24.790897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014767, 34.205215, 24.827291>,  <32.624050, 34.144695, 24.887947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014767, 34.205215, 24.827291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196926, 0.355642, -0.913641,
		-0.084308, 0.922294, 0.377182,
		0.976787, 0.151304, -0.151640,
		33.307804, 34.250607, 24.781799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671494, 34.688225, 24.550209>,  <32.624050, 34.144695, 24.887947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671494, 34.688225, 24.550209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028618, 34.525585, 24.472673>,  <33.242893, 34.428001, 24.426153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028618, 34.525585, 24.472673>,  <32.671494, 34.688225, 24.550209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028618, 34.525585, 24.472673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056385, 0.326065, -0.943664,
		0.446894, 0.853441, 0.268188,
		0.892808, -0.406596, -0.193837,
		33.296459, 34.403606, 24.414522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890354, 35.085403, 24.026812>,  <32.671494, 34.688225, 24.550209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890354, 35.085403, 24.026812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159462, 34.789593, 24.018122>,  <33.320927, 34.612106, 24.012907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159462, 34.789593, 24.018122>,  <32.890354, 35.085403, 24.026812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159462, 34.789593, 24.018122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232510, 0.239217, -0.942716,
		0.702363, 0.629184, 0.332887,
		0.672774, -0.739529, -0.021725,
		33.361294, 34.567734, 24.011604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436810, 35.325710, 23.644205>,  <32.890354, 35.085403, 24.026812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436810, 35.325710, 23.644205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448879, 34.926746, 23.618069>,  <33.456120, 34.687370, 23.602386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448879, 34.926746, 23.618069>,  <33.436810, 35.325710, 23.644205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448879, 34.926746, 23.618069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325006, 0.071608, -0.942997,
		0.945230, 0.007216, 0.326324,
		0.030172, -0.997407, -0.065341,
		33.457932, 34.627525, 23.598467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080292, 35.119923, 23.399010>,  <33.436810, 35.325710, 23.644205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080292, 35.119923, 23.399010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850136, 34.806351, 23.305733>,  <33.712040, 34.618206, 23.249767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850136, 34.806351, 23.305733>,  <34.080292, 35.119923, 23.399010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850136, 34.806351, 23.305733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287809, 0.072804, -0.954917,
		0.765564, -0.616567, 0.183731,
		-0.575394, -0.783929, -0.233190,
		33.677517, 34.571171, 23.235775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524494, 34.571018, 23.106432>,  <34.080292, 35.119923, 23.399010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524494, 34.571018, 23.106432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143578, 34.528275, 22.992085>,  <33.915028, 34.502628, 22.923477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143578, 34.528275, 22.992085>,  <34.524494, 34.571018, 23.106432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143578, 34.528275, 22.992085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287285, 0.002214, -0.957842,
		0.102993, -0.994271, 0.028593,
		-0.952292, -0.106866, -0.285868,
		33.857891, 34.496216, 22.906324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489067, 34.063179, 22.651339>,  <34.524494, 34.571018, 23.106432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489067, 34.063179, 22.651339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175320, 34.298462, 22.572577>,  <33.987072, 34.439632, 22.525318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175320, 34.298462, 22.572577>,  <34.489067, 34.063179, 22.651339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175320, 34.298462, 22.572577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255313, 0.016844, -0.966712,
		-0.565309, -0.808535, -0.163389,
		-0.784373, 0.588206, -0.196907,
		33.940006, 34.474922, 22.513504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332691, 33.880093, 21.958477>,  <34.489067, 34.063179, 22.651339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332691, 33.880093, 21.958477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123852, 34.214546, 22.025749>,  <33.998547, 34.415218, 22.066113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123852, 34.214546, 22.025749>,  <34.332691, 33.880093, 21.958477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123852, 34.214546, 22.025749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208538, 0.316358, -0.925435,
		-0.826997, -0.448098, -0.339537,
		-0.522101, 0.836138, 0.168182,
		33.967220, 34.465389, 22.076204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144306, 34.073788, 21.280085>,  <34.332691, 33.880093, 21.958477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144306, 34.073788, 21.280085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071754, 34.409008, 21.485909>,  <34.028221, 34.610142, 21.609404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071754, 34.409008, 21.485909>,  <34.144306, 34.073788, 21.280085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071754, 34.409008, 21.485909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231657, 0.544925, -0.805848,
		-0.955738, -0.026965, -0.292980,
		-0.181382, 0.838051, 0.514559,
		34.017342, 34.660423, 21.640276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635468, 34.449535, 20.854155>,  <34.144306, 34.073788, 21.280085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635468, 34.449535, 20.854155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845493, 34.693485, 21.091595>,  <33.971508, 34.839855, 21.234058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845493, 34.693485, 21.091595>,  <33.635468, 34.449535, 20.854155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845493, 34.693485, 21.091595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242706, 0.561215, -0.791285,
		-0.815719, 0.559548, 0.146657,
		0.525068, 0.609872, 0.593599,
		34.003014, 34.876446, 21.269674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452606, 35.164623, 20.602066>,  <33.635468, 34.449535, 20.854155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452606, 35.164623, 20.602066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792755, 35.163197, 20.812531>,  <33.996845, 35.162338, 20.938808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792755, 35.163197, 20.812531>,  <33.452606, 35.164623, 20.602066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792755, 35.163197, 20.812531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445100, 0.538180, -0.715715,
		-0.280615, 0.842822, 0.459245,
		0.850377, -0.003570, 0.526162,
		34.047867, 35.162125, 20.970379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693798, 35.808807, 20.474524>,  <33.452606, 35.164623, 20.602066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693798, 35.808807, 20.474524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007790, 35.596905, 20.603003>,  <34.196186, 35.469765, 20.680090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007790, 35.596905, 20.603003>,  <33.693798, 35.808807, 20.474524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007790, 35.596905, 20.603003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579218, 0.443615, -0.683895,
		0.219807, 0.722888, 0.655071,
		0.784978, -0.529754, 0.321200,
		34.243282, 35.437977, 20.699362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366661, 36.280739, 20.497644>,  <33.693798, 35.808807, 20.474524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366661, 36.280739, 20.497644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509930, 35.907341, 20.490677>,  <34.595890, 35.683304, 20.486496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509930, 35.907341, 20.490677>,  <34.366661, 36.280739, 20.497644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509930, 35.907341, 20.490677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751856, 0.299443, -0.587407,
		0.553555, 0.197299, 0.809104,
		0.358176, -0.933492, -0.017418,
		34.617382, 35.627293, 20.485451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043179, 36.468777, 20.619957>,  <34.366661, 36.280739, 20.497644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043179, 36.468777, 20.619957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050217, 36.089909, 20.491863>,  <35.054440, 35.862587, 20.415007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050217, 36.089909, 20.491863>,  <35.043179, 36.468777, 20.619957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050217, 36.089909, 20.491863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792119, 0.208643, -0.573599,
		0.610113, -0.243572, 0.753946,
		0.017593, -0.947175, -0.320234,
		35.055496, 35.805756, 20.395792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739838, 36.289711, 20.653433>,  <35.043179, 36.468777, 20.619957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739838, 36.289711, 20.653433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554398, 36.038082, 20.403845>,  <35.443134, 35.887104, 20.254091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554398, 36.038082, 20.403845>,  <35.739838, 36.289711, 20.653433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554398, 36.038082, 20.403845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753543, 0.090525, -0.651136,
		0.466097, -0.772058, 0.432066,
		-0.463602, -0.629073, -0.623972,
		35.415318, 35.849361, 20.216654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281845, 35.858719, 20.449009>,  <35.739838, 36.289711, 20.653433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281845, 35.858719, 20.449009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990761, 35.816784, 20.177881>,  <35.816109, 35.791622, 20.015203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990761, 35.816784, 20.177881>,  <36.281845, 35.858719, 20.449009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990761, 35.816784, 20.177881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671667, 0.091223, -0.735215,
		0.138915, -0.990296, 0.004035,
		-0.727713, -0.104843, -0.677822,
		35.772446, 35.785332, 19.974535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625057, 35.505478, 19.874443>,  <36.281845, 35.858719, 20.449009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625057, 35.505478, 19.874443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310368, 35.680061, 19.699829>,  <36.121552, 35.784809, 19.595060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310368, 35.680061, 19.699829>,  <36.625057, 35.505478, 19.874443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310368, 35.680061, 19.699829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603346, 0.394174, -0.693253,
		-0.130503, -0.808785, -0.573442,
		-0.786729, 0.436456, -0.436537,
		36.074348, 35.810997, 19.568869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822727, 35.444210, 19.238483>,  <36.625057, 35.505478, 19.874443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822727, 35.444210, 19.238483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516258, 35.698242, 19.199177>,  <36.332378, 35.850662, 19.175592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516258, 35.698242, 19.199177>,  <36.822727, 35.444210, 19.238483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516258, 35.698242, 19.199177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428605, 0.391047, -0.814482,
		-0.478835, -0.666148, -0.571807,
		-0.766169, 0.635082, -0.098267,
		36.286407, 35.888767, 19.169697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655369, 35.549534, 18.526978>,  <36.822727, 35.444210, 19.238483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655369, 35.549534, 18.526978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500065, 35.880142, 18.690006>,  <36.406883, 36.078506, 18.787823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500065, 35.880142, 18.690006>,  <36.655369, 35.549534, 18.526978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500065, 35.880142, 18.690006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362565, 0.543602, -0.756996,
		-0.847231, -0.146140, -0.510728,
		-0.388260, 0.826523, 0.407571,
		36.383587, 36.128098, 18.812277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219585, 35.921703, 18.027645>,  <36.655369, 35.549534, 18.526978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219585, 35.921703, 18.027645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311348, 36.215088, 18.283583>,  <36.366405, 36.391121, 18.437145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311348, 36.215088, 18.283583>,  <36.219585, 35.921703, 18.027645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311348, 36.215088, 18.283583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419520, 0.518669, -0.744974,
		-0.878279, 0.439333, -0.188714,
		0.229411, 0.733464, 0.639845,
		36.380173, 36.435127, 18.475536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104538, 36.578735, 17.648808>,  <36.219585, 35.921703, 18.027645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104538, 36.578735, 17.648808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325974, 36.689968, 17.962805>,  <36.458836, 36.756706, 18.151203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325974, 36.689968, 17.962805>,  <36.104538, 36.578735, 17.648808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325974, 36.689968, 17.962805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543604, 0.593432, -0.593577,
		-0.630900, 0.755322, 0.177353,
		0.553589, 0.278078, 0.784992,
		36.492050, 36.773392, 18.198303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986496, 37.197239, 17.891548>,  <36.104538, 36.578735, 17.648808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986496, 37.197239, 17.891548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372272, 37.125687, 17.969372>,  <36.603737, 37.082756, 18.016066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372272, 37.125687, 17.969372>,  <35.986496, 37.197239, 17.891548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372272, 37.125687, 17.969372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263547, 0.595590, -0.758825,
		0.019860, 0.783119, 0.621555,
		0.964442, -0.178879, 0.194560,
		36.661606, 37.072021, 18.027740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409733, 37.829063, 18.138250>,  <35.986496, 37.197239, 17.891548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409733, 37.829063, 18.138250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615425, 37.549702, 17.939131>,  <36.738842, 37.382084, 17.819660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615425, 37.549702, 17.939131>,  <36.409733, 37.829063, 18.138250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615425, 37.549702, 17.939131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365273, 0.703491, -0.609652,
		0.775977, 0.131671, 0.616865,
		0.514233, -0.698400, -0.497797,
		36.769695, 37.340183, 17.789791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087723, 38.021858, 18.043980>,  <36.409733, 37.829063, 18.138250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087723, 38.021858, 18.043980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931618, 37.798916, 17.750845>,  <36.837955, 37.665150, 17.574965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931618, 37.798916, 17.750845>,  <37.087723, 38.021858, 18.043980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931618, 37.798916, 17.750845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372924, 0.632045, -0.679299,
		0.841795, -0.538399, -0.038815,
		-0.390267, -0.557356, -0.732834,
		36.814537, 37.631710, 17.530994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792358, 37.954182, 18.197361>,  <37.087723, 38.021858, 18.043980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792358, 37.954182, 18.197361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815445, 38.277233, 18.432108>,  <37.829296, 38.471062, 18.572956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815445, 38.277233, 18.432108>,  <37.792358, 37.954182, 18.197361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815445, 38.277233, 18.432108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459446, 0.500407, -0.733828,
		-0.886329, 0.311987, -0.342178,
		0.057717, 0.807625, 0.586866,
		37.832760, 38.519520, 18.608168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618507, 38.545338, 17.818855>,  <37.792358, 37.954182, 18.197361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618507, 38.545338, 17.818855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850346, 38.712574, 18.098646>,  <37.989449, 38.812916, 18.266521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850346, 38.712574, 18.098646>,  <37.618507, 38.545338, 17.818855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850346, 38.712574, 18.098646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495678, 0.500432, -0.709839,
		-0.646816, 0.758137, 0.082812,
		0.579597, 0.418087, 0.699479,
		38.024223, 38.838001, 18.308491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369503, 38.315063, 17.804800>,  <37.618507, 38.545338, 17.818855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369503, 38.315063, 17.804800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451969, 38.216454, 18.183580>,  <38.501450, 38.157288, 18.410849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451969, 38.216454, 18.183580>,  <38.369503, 38.315063, 17.804800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451969, 38.216454, 18.183580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917399, 0.287957, 0.274699,
		-0.340402, -0.925368, -0.166795,
		0.206168, -0.246525, 0.946953,
		38.513821, 38.142494, 18.467667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109097, 38.559914, 17.922567>,  <38.369503, 38.315063, 17.804800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109097, 38.559914, 17.922567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977718, 38.917484, 18.044561>,  <38.898891, 39.132027, 18.117758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977718, 38.917484, 18.044561>,  <39.109097, 38.559914, 17.922567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977718, 38.917484, 18.044561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529642, -0.441668, 0.724161,
		0.782049, 0.076317, 0.618527,
		-0.328449, 0.893927, 0.304985,
		38.879185, 39.185661, 18.136057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218693, 38.802670, 18.716400>,  <39.109097, 38.559914, 17.922567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218693, 38.802670, 18.716400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.894741, 38.964390, 18.546396>,  <38.700371, 39.061424, 18.444393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.894741, 38.964390, 18.546396>,  <39.218693, 38.802670, 18.716400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894741, 38.964390, 18.546396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577587, -0.423138, 0.698103,
		0.102408, 0.810859, 0.576212,
		-0.809880, 0.404304, -0.425009,
		38.651775, 39.085682, 18.418894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813770, 39.133068, 19.248833>,  <39.218693, 38.802670, 18.716400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813770, 39.133068, 19.248833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549889, 39.081097, 18.952749>,  <38.391560, 39.049915, 18.775099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549889, 39.081097, 18.952749>,  <38.813770, 39.133068, 19.248833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549889, 39.081097, 18.952749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721562, -0.165832, 0.672197,
		-0.210086, 0.977558, 0.015652,
		-0.659706, -0.129925, -0.740207,
		38.351978, 39.042118, 18.730686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203575, 39.556332, 19.340096>,  <38.813770, 39.133068, 19.248833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203575, 39.556332, 19.340096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077702, 39.248558, 19.117764>,  <38.002178, 39.063892, 18.984365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077702, 39.248558, 19.117764>,  <38.203575, 39.556332, 19.340096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077702, 39.248558, 19.117764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591842, -0.298756, 0.748643,
		-0.742088, 0.564551, -0.361368,
		-0.314687, -0.769433, -0.555829,
		37.983295, 39.017727, 18.951015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496132, 39.622543, 19.309128>,  <38.203575, 39.556332, 19.340096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496132, 39.622543, 19.309128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554577, 39.231113, 19.251106>,  <37.589645, 38.996254, 19.216293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554577, 39.231113, 19.251106>,  <37.496132, 39.622543, 19.309128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554577, 39.231113, 19.251106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643453, -0.205383, 0.737418,
		-0.751410, -0.014415, -0.659678,
		0.146116, -0.978575, -0.145052,
		37.598412, 38.937542, 19.207590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795475, 39.251339, 19.281944>,  <37.496132, 39.622543, 19.309128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795475, 39.251339, 19.281944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097511, 39.017574, 19.400803>,  <37.278732, 38.877316, 19.472118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097511, 39.017574, 19.400803>,  <36.795475, 39.251339, 19.281944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097511, 39.017574, 19.400803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539571, -0.296485, 0.788010,
		-0.372428, -0.755349, -0.539208,
		0.755090, -0.584418, 0.297146,
		37.324039, 38.842251, 19.489946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439960, 38.876537, 19.645519>,  <36.795475, 39.251339, 19.281944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439960, 38.876537, 19.645519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808289, 38.764904, 19.754478>,  <37.029285, 38.697926, 19.819855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808289, 38.764904, 19.754478>,  <36.439960, 38.876537, 19.645519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808289, 38.764904, 19.754478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348523, -0.275496, 0.895898,
		-0.174979, -0.919901, -0.350948,
		0.920823, -0.279077, 0.272400,
		37.084534, 38.681179, 19.836199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398666, 38.213703, 20.074911>,  <36.439960, 38.876537, 19.645519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398666, 38.213703, 20.074911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738689, 38.391399, 20.188082>,  <36.942703, 38.498016, 20.255983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738689, 38.391399, 20.188082>,  <36.398666, 38.213703, 20.074911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738689, 38.391399, 20.188082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161102, -0.292120, 0.942716,
		0.501441, -0.846945, -0.176751,
		0.850061, 0.444241, 0.282925,
		36.993710, 38.524673, 20.272959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592262, 37.727261, 20.658997>,  <36.398666, 38.213703, 20.074911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592262, 37.727261, 20.658997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828484, 38.046829, 20.704533>,  <36.970219, 38.238571, 20.731853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828484, 38.046829, 20.704533>,  <36.592262, 37.727261, 20.658997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828484, 38.046829, 20.704533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046463, -0.174491, 0.983562,
		0.805657, -0.575561, -0.140168,
		0.590558, 0.798926, 0.113838,
		37.005650, 38.286507, 20.738684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173279, 37.485504, 20.980474>,  <36.592262, 37.727261, 20.658997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173279, 37.485504, 20.980474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.200008, 37.875134, 21.066931>,  <37.216045, 38.108910, 21.118805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.200008, 37.875134, 21.066931>,  <37.173279, 37.485504, 20.980474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200008, 37.875134, 21.066931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143379, -0.223752, 0.964043,
		0.987409, -0.033435, -0.154614,
		0.066828, 0.974073, 0.216141,
		37.220058, 38.167355, 21.131773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814491, 37.585930, 21.579466>,  <37.173279, 37.485504, 20.980474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814491, 37.585930, 21.579466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590466, 37.917240, 21.572678>,  <37.456051, 38.116028, 21.568604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590466, 37.917240, 21.572678>,  <37.814491, 37.585930, 21.579466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590466, 37.917240, 21.572678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085029, 0.077849, 0.993333,
		0.824077, 0.554883, -0.114028,
		-0.560060, 0.828278, -0.016972,
		37.422447, 38.165722, 21.567585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193542, 38.140610, 21.937359>,  <37.814491, 37.585930, 21.579466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193542, 38.140610, 21.937359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801643, 38.219837, 21.925650>,  <37.566502, 38.267376, 21.918623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801643, 38.219837, 21.925650>,  <38.193542, 38.140610, 21.937359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801643, 38.219837, 21.925650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025777, 0.020211, 0.999463,
		0.198557, 0.979979, -0.014696,
		-0.979750, 0.198071, -0.029274,
		37.507717, 38.279259, 21.916868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112373, 38.752598, 22.327757>,  <38.193542, 38.140610, 21.937359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112373, 38.752598, 22.327757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751392, 38.580711, 22.315544>,  <37.534805, 38.477581, 22.308216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751392, 38.580711, 22.315544>,  <38.112373, 38.752598, 22.327757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751392, 38.580711, 22.315544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069365, 0.075000, 0.994768,
		-0.425175, 0.899846, -0.097491,
		-0.902449, -0.429713, -0.030530,
		37.480659, 38.451797, 22.306385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757576, 39.075291, 22.884195>,  <38.112373, 38.752598, 22.327757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757576, 39.075291, 22.884195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534988, 38.755798, 22.792656>,  <37.401436, 38.564102, 22.737732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534988, 38.755798, 22.792656>,  <37.757576, 39.075291, 22.884195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534988, 38.755798, 22.792656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333669, -0.037421, 0.941947,
		-0.760926, 0.600525, -0.245688,
		-0.556469, -0.798730, -0.228851,
		37.368050, 38.516178, 22.724001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097946, 39.163345, 23.244551>,  <37.757576, 39.075291, 22.884195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097946, 39.163345, 23.244551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163338, 38.775326, 23.172682>,  <37.202572, 38.542515, 23.129560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163338, 38.775326, 23.172682>,  <37.097946, 39.163345, 23.244551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163338, 38.775326, 23.172682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125128, -0.201041, 0.971558,
		-0.978579, -0.136347, -0.154246,
		0.163479, -0.970047, -0.179674,
		37.212383, 38.484310, 23.118780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633781, 38.918724, 23.661686>,  <37.097946, 39.163345, 23.244551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633781, 38.918724, 23.661686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836639, 38.584423, 23.577463>,  <36.958355, 38.383842, 23.526930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836639, 38.584423, 23.577463>,  <36.633781, 38.918724, 23.661686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836639, 38.584423, 23.577463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257409, -0.380030, 0.888436,
		-0.822526, -0.396362, -0.407857,
		0.507140, -0.835748, -0.210557,
		36.988781, 38.333698, 23.514296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176254, 38.295956, 23.720354>,  <36.633781, 38.918724, 23.661686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176254, 38.295956, 23.720354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553959, 38.180882, 23.784367>,  <36.780582, 38.111835, 23.822775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553959, 38.180882, 23.784367>,  <36.176254, 38.295956, 23.720354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553959, 38.180882, 23.784367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304002, -0.575468, 0.759223,
		-0.126325, -0.765553, -0.630849,
		0.944259, -0.287688, 0.160034,
		36.837238, 38.094574, 23.832376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179554, 37.591091, 23.730978>,  <36.176254, 38.295956, 23.720354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179554, 37.591091, 23.730978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503448, 37.711514, 23.932449>,  <36.697784, 37.783768, 24.053333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503448, 37.711514, 23.932449>,  <36.179554, 37.591091, 23.730978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503448, 37.711514, 23.932449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322459, -0.488842, 0.810589,
		0.490256, -0.818777, -0.298752,
		0.809734, 0.301061, 0.503680,
		36.746368, 37.801830, 24.083553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318649, 37.014370, 24.110098>,  <36.179554, 37.591091, 23.730978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318649, 37.014370, 24.110098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527332, 37.308407, 24.283289>,  <36.652542, 37.484829, 24.387203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527332, 37.308407, 24.283289>,  <36.318649, 37.014370, 24.110098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527332, 37.308407, 24.283289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130651, -0.432691, 0.892025,
		0.843063, -0.521942, -0.129696,
		0.521704, 0.735089, 0.432978,
		36.683842, 37.528934, 24.413183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713943, 36.665291, 24.546768>,  <36.318649, 37.014370, 24.110098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713943, 36.665291, 24.546768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665024, 37.039810, 24.678459>,  <36.635670, 37.264523, 24.757473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665024, 37.039810, 24.678459>,  <36.713943, 36.665291, 24.546768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665024, 37.039810, 24.678459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253349, -0.350180, 0.901769,
		0.959613, 0.026878, 0.280038,
		-0.122302, 0.936297, 0.329227,
		36.628334, 37.320698, 24.777227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123772, 36.728466, 25.192863>,  <36.713943, 36.665291, 24.546768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123772, 36.728466, 25.192863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853394, 37.020214, 25.235046>,  <36.691166, 37.195263, 25.260357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853394, 37.020214, 25.235046>,  <37.123772, 36.728466, 25.192863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853394, 37.020214, 25.235046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274028, -0.381596, 0.882776,
		0.684109, 0.567810, 0.457805,
		-0.675946, 0.729367, 0.105457,
		36.650608, 37.239025, 25.266684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226032, 37.078423, 25.838749>,  <37.123772, 36.728466, 25.192863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226032, 37.078423, 25.838749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849316, 37.138184, 25.718275>,  <36.623287, 37.174038, 25.645990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849316, 37.138184, 25.718275>,  <37.226032, 37.078423, 25.838749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849316, 37.138184, 25.718275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319618, -0.119977, 0.939920,
		0.104288, 0.981471, 0.160744,
		-0.941790, 0.149399, -0.301184,
		36.566780, 37.183002, 25.627920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918747, 37.327671, 26.387548>,  <37.226032, 37.078423, 25.838749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918747, 37.327671, 26.387548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602188, 37.210178, 26.173105>,  <36.412254, 37.139683, 26.044439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602188, 37.210178, 26.173105>,  <36.918747, 37.327671, 26.387548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602188, 37.210178, 26.173105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500619, -0.191872, 0.844136,
		-0.350813, 0.936433, 0.004799,
		-0.791398, -0.293732, -0.536107,
		36.364769, 37.122059, 26.012274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387928, 37.632942, 26.690077>,  <36.918747, 37.327671, 26.387548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387928, 37.632942, 26.690077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199104, 37.335697, 26.500366>,  <36.085812, 37.157349, 26.386539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199104, 37.335697, 26.500366>,  <36.387928, 37.632942, 26.690077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199104, 37.335697, 26.500366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604451, -0.118782, 0.787737,
		-0.641715, 0.658536, -0.393105,
		-0.472060, -0.743115, -0.474277,
		36.057487, 37.112762, 26.358084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755104, 37.751209, 26.910347>,  <36.387928, 37.632942, 26.690077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755104, 37.751209, 26.910347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746029, 37.370110, 26.789188>,  <35.740585, 37.141449, 26.716494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746029, 37.370110, 26.789188>,  <35.755104, 37.751209, 26.910347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746029, 37.370110, 26.789188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556757, -0.239607, 0.795368,
		-0.830365, 0.186684, -0.525016,
		-0.022685, -0.952753, -0.302899,
		35.739223, 37.084282, 26.698318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107323, 37.503513, 26.948921>,  <35.755104, 37.751209, 26.910347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107323, 37.503513, 26.948921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327747, 37.169991, 26.962130>,  <35.460003, 36.969875, 26.970055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327747, 37.169991, 26.962130>,  <35.107323, 37.503513, 26.948921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327747, 37.169991, 26.962130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552492, -0.334915, 0.763272,
		-0.625365, -0.438853, -0.645233,
		0.551063, -0.833810, 0.033018,
		35.493065, 36.919849, 26.972034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537601, 37.061115, 26.957300>,  <35.107323, 37.503513, 26.948921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537601, 37.061115, 26.957300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864456, 36.844788, 27.037102>,  <35.060570, 36.714993, 27.084984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864456, 36.844788, 27.037102>,  <34.537601, 37.061115, 26.957300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864456, 36.844788, 27.037102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510746, -0.518802, 0.685553,
		-0.267256, -0.662087, -0.700153,
		0.817137, -0.540819, 0.199506,
		35.109596, 36.682541, 27.096952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361214, 36.242638, 26.955606>,  <34.537601, 37.061115, 26.957300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361214, 36.242638, 26.955606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674400, 36.325058, 27.190388>,  <34.862312, 36.374512, 27.331257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674400, 36.325058, 27.190388>,  <34.361214, 36.242638, 26.955606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674400, 36.325058, 27.190388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494155, -0.367124, 0.788055,
		0.377865, -0.907063, -0.185622,
		0.782962, 0.206052, 0.586953,
		34.909290, 36.386875, 27.366474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363194, 35.643406, 27.439331>,  <34.361214, 36.242638, 26.955606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363194, 35.643406, 27.439331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613106, 35.909016, 27.603634>,  <34.763054, 36.068382, 27.702215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613106, 35.909016, 27.603634>,  <34.363194, 35.643406, 27.439331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613106, 35.909016, 27.603634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296002, -0.285369, 0.911563,
		0.722515, -0.691114, 0.018258,
		0.624784, 0.664023, 0.410755,
		34.800541, 36.108223, 27.726860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675217, 35.212044, 27.964003>,  <34.363194, 35.643406, 27.439331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675217, 35.212044, 27.964003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742889, 35.590107, 28.075758>,  <34.783493, 35.816944, 28.142811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742889, 35.590107, 28.075758>,  <34.675217, 35.212044, 27.964003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742889, 35.590107, 28.075758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362533, -0.203924, 0.909387,
		0.916487, -0.255139, 0.308150,
		0.169181, 0.945156, 0.279390,
		34.793644, 35.873653, 28.159575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157433, 35.127552, 28.616743>,  <34.675217, 35.212044, 27.964003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157433, 35.127552, 28.616743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002663, 35.496239, 28.627579>,  <34.909801, 35.717449, 28.634081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002663, 35.496239, 28.627579>,  <35.157433, 35.127552, 28.616743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002663, 35.496239, 28.627579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094821, -0.068992, 0.993101,
		0.917225, 0.381683, 0.114092,
		-0.386921, 0.921715, 0.027089,
		34.886585, 35.772755, 28.635706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409878, 35.455086, 29.197823>,  <35.157433, 35.127552, 28.616743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409878, 35.455086, 29.197823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089565, 35.678036, 29.110111>,  <34.897377, 35.811806, 29.057486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089565, 35.678036, 29.110111>,  <35.409878, 35.455086, 29.197823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089565, 35.678036, 29.110111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287202, -0.036056, 0.957191,
		0.525607, 0.829479, 0.188952,
		-0.800782, 0.557373, -0.219277,
		34.849331, 35.845249, 29.044329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374645, 36.068218, 29.684500>,  <35.409878, 35.455086, 29.197823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374645, 36.068218, 29.684500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015236, 35.970875, 29.538387>,  <34.799591, 35.912468, 29.450720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015236, 35.970875, 29.538387>,  <35.374645, 36.068218, 29.684500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015236, 35.970875, 29.538387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382317, 0.025128, 0.923690,
		-0.215607, 0.969611, -0.115617,
		-0.898525, -0.243357, -0.365281,
		34.745678, 35.897869, 29.428802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868645, 36.506012, 29.926657>,  <35.374645, 36.068218, 29.684500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868645, 36.506012, 29.926657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639458, 36.191772, 29.833239>,  <34.501945, 36.003227, 29.777187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639458, 36.191772, 29.833239>,  <34.868645, 36.506012, 29.926657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639458, 36.191772, 29.833239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461706, 0.073959, 0.883945,
		-0.677155, 0.614297, -0.405092,
		-0.572965, -0.785601, -0.233543,
		34.467567, 35.956093, 29.763176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196327, 36.722569, 30.251881>,  <34.868645, 36.506012, 29.926657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196327, 36.722569, 30.251881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148746, 36.332954, 30.174826>,  <34.120197, 36.099186, 30.128593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148746, 36.332954, 30.174826>,  <34.196327, 36.722569, 30.251881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148746, 36.332954, 30.174826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137788, -0.175944, 0.974709,
		-0.983293, 0.142489, -0.113281,
		-0.118954, -0.974033, -0.192638,
		34.113060, 36.040745, 30.117035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635601, 36.550694, 30.590971>,  <34.196327, 36.722569, 30.251881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635601, 36.550694, 30.590971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784100, 36.185291, 30.524427>,  <33.873199, 35.966049, 30.484501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784100, 36.185291, 30.524427>,  <33.635601, 36.550694, 30.590971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784100, 36.185291, 30.524427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194063, -0.251544, 0.948191,
		-0.908028, -0.319729, -0.270663,
		0.371248, -0.913509, -0.166361,
		33.895473, 35.911240, 30.474520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186806, 36.151321, 30.923027>,  <33.635601, 36.550694, 30.590971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186806, 36.151321, 30.923027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478889, 35.880211, 30.888603>,  <33.654140, 35.717545, 30.867949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478889, 35.880211, 30.888603>,  <33.186806, 36.151321, 30.923027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478889, 35.880211, 30.888603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206782, -0.339301, 0.917669,
		-0.651178, -0.652296, -0.387914,
		0.730211, -0.677779, -0.086062,
		33.697952, 35.676876, 30.862785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896832, 35.464264, 31.137253>,  <33.186806, 36.151321, 30.923027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896832, 35.464264, 31.137253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293678, 35.458462, 31.187046>,  <33.531788, 35.454983, 31.216923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293678, 35.458462, 31.187046>,  <32.896832, 35.464264, 31.137253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293678, 35.458462, 31.187046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124994, -0.042395, 0.991251,
		-0.009088, -0.998996, -0.043872,
		0.992116, -0.014492, 0.124484,
		33.591312, 35.454113, 31.224392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975014, 35.096561, 31.719301>,  <32.896832, 35.464264, 31.137253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975014, 35.096561, 31.719301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341221, 35.254883, 31.690554>,  <33.560944, 35.349876, 31.673306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341221, 35.254883, 31.690554>,  <32.975014, 35.096561, 31.719301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341221, 35.254883, 31.690554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089835, -0.027020, 0.995590,
		0.392120, -0.917936, -0.060294,
		0.915517, 0.395807, -0.071868,
		33.615875, 35.373623, 31.668993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463032, 34.518398, 31.855637>,  <32.975014, 35.096561, 31.719301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463032, 34.518398, 31.855637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605240, 34.879700, 31.951750>,  <33.690567, 35.096481, 32.009418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605240, 34.879700, 31.951750>,  <33.463032, 34.518398, 31.855637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605240, 34.879700, 31.951750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193318, -0.322582, 0.926590,
		0.914457, -0.282972, -0.289300,
		0.355522, 0.903254, 0.240284,
		33.711895, 35.150677, 32.023834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051567, 34.372791, 32.281372>,  <33.463032, 34.518398, 31.855637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051567, 34.372791, 32.281372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002735, 34.765060, 32.342541>,  <33.973438, 35.000420, 32.379242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002735, 34.765060, 32.342541>,  <34.051567, 34.372791, 32.281372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002735, 34.765060, 32.342541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321213, -0.106742, 0.940972,
		0.939106, 0.163991, -0.301973,
		-0.122078, 0.980670, 0.152918,
		33.966110, 35.059261, 32.388416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600620, 34.523849, 32.634232>,  <34.051567, 34.372791, 32.281372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600620, 34.523849, 32.634232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363831, 34.834606, 32.720024>,  <34.221756, 35.021061, 32.771500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363831, 34.834606, 32.720024>,  <34.600620, 34.523849, 32.634232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363831, 34.834606, 32.720024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158008, -0.149082, 0.976119,
		0.790315, 0.611728, -0.034503,
		-0.591976, 0.776893, 0.214479,
		34.186237, 35.067673, 32.784367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901417, 34.869858, 33.288380>,  <34.600620, 34.523849, 32.634232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901417, 34.869858, 33.288380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511726, 34.957703, 33.267796>,  <34.277912, 35.010410, 33.255444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511726, 34.957703, 33.267796>,  <34.901417, 34.869858, 33.288380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511726, 34.957703, 33.267796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117278, -0.298291, 0.947242,
		0.192679, 0.928865, 0.316360,
		-0.974228, 0.219616, -0.051461,
		34.219460, 35.023586, 33.252357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297134, 34.406315, 33.858356>,  <34.901417, 34.869858, 33.288380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297134, 34.406315, 33.858356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628773, 34.188213, 33.808895>,  <35.827755, 34.057350, 33.779217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628773, 34.188213, 33.808895>,  <35.297134, 34.406315, 33.858356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628773, 34.188213, 33.808895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398461, 0.731396, -0.553433,
		0.392203, 0.409579, 0.823663,
		0.829099, -0.545256, -0.123655,
		35.877502, 34.024635, 33.771797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911179, 34.894344, 33.940220>,  <35.297134, 34.406315, 33.858356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911179, 34.894344, 33.940220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998142, 34.589394, 33.696411>,  <36.050320, 34.406425, 33.550125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998142, 34.589394, 33.696411>,  <35.911179, 34.894344, 33.940220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998142, 34.589394, 33.696411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521680, 0.618547, -0.587579,
		0.824974, -0.190230, 0.532195,
		0.217412, -0.762373, -0.609524,
		36.063366, 34.360683, 33.513554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510315, 35.108742, 33.670177>,  <35.911179, 34.894344, 33.940220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510315, 35.108742, 33.670177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408779, 34.807995, 33.426781>,  <36.347858, 34.627548, 33.280743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408779, 34.807995, 33.426781>,  <36.510315, 35.108742, 33.670177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408779, 34.807995, 33.426781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436316, 0.472451, -0.765780,
		0.863247, -0.459879, 0.208126,
		-0.253837, -0.751865, -0.608495,
		36.332626, 34.582436, 33.244232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124676, 34.951488, 33.406452>,  <36.510315, 35.108742, 33.670177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124676, 34.951488, 33.406452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831421, 34.822071, 33.167175>,  <36.655468, 34.744419, 33.023609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831421, 34.822071, 33.167175>,  <37.124676, 34.951488, 33.406452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831421, 34.822071, 33.167175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482790, 0.371891, -0.792850,
		0.478985, -0.870066, -0.116441,
		-0.733136, -0.323547, -0.598189,
		36.611481, 34.725006, 32.987720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444950, 34.573509, 32.857941>,  <37.124676, 34.951488, 33.406452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444950, 34.573509, 32.857941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089935, 34.681862, 32.708858>,  <36.876926, 34.746872, 32.619411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089935, 34.681862, 32.708858>,  <37.444950, 34.573509, 32.857941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089935, 34.681862, 32.708858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453916, 0.375328, -0.808140,
		-0.079026, -0.886426, -0.456074,
		-0.887534, 0.270883, -0.372702,
		36.823677, 34.763126, 32.597050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408695, 34.234035, 32.147560>,  <37.444950, 34.573509, 32.857941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408695, 34.234035, 32.147560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135517, 34.525928, 32.134388>,  <36.971611, 34.701065, 32.126484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135517, 34.525928, 32.134388>,  <37.408695, 34.234035, 32.147560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135517, 34.525928, 32.134388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307420, 0.246230, -0.919164,
		-0.662631, -0.637862, -0.392494,
		-0.682944, 0.729728, -0.032932,
		36.930634, 34.744846, 32.124508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276112, 34.228493, 31.476152>,  <37.408695, 34.234035, 32.147560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276112, 34.228493, 31.476152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111847, 34.578403, 31.579014>,  <37.013290, 34.788349, 31.640732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111847, 34.578403, 31.579014>,  <37.276112, 34.228493, 31.476152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111847, 34.578403, 31.579014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383004, 0.421441, -0.822007,
		-0.827447, -0.239071, -0.508110,
		-0.410657, 0.874776, 0.257155,
		36.988651, 34.840836, 31.656160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904148, 34.320694, 30.885660>,  <37.276112, 34.228493, 31.476152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904148, 34.320694, 30.885660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969677, 34.664669, 31.079016>,  <37.008995, 34.871056, 31.195028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969677, 34.664669, 31.079016>,  <36.904148, 34.320694, 30.885660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969677, 34.664669, 31.079016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153376, 0.461847, -0.873598,
		-0.974493, 0.217258, -0.056231,
		0.163826, 0.859940, 0.483388,
		37.018826, 34.922649, 31.224031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561691, 34.829479, 30.485558>,  <36.904148, 34.320694, 30.885660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561691, 34.829479, 30.485558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818108, 35.061928, 30.686104>,  <36.971958, 35.201397, 30.806431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818108, 35.061928, 30.686104>,  <36.561691, 34.829479, 30.485558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818108, 35.061928, 30.686104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306307, 0.405255, -0.861362,
		-0.703735, 0.705739, 0.081784,
		0.641040, 0.581120, 0.501365,
		37.010418, 35.236263, 30.836514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429543, 35.546463, 30.213066>,  <36.561691, 34.829479, 30.485558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429543, 35.546463, 30.213066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783104, 35.590580, 30.394857>,  <36.995239, 35.617050, 30.503933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783104, 35.590580, 30.394857>,  <36.429543, 35.546463, 30.213066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783104, 35.590580, 30.394857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367916, 0.435927, -0.821344,
		-0.288710, 0.893198, 0.344737,
		0.883903, 0.110296, 0.454478,
		37.048275, 35.623669, 30.531200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619007, 36.265015, 30.176067>,  <36.429543, 35.546463, 30.213066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619007, 36.265015, 30.176067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965763, 36.072426, 30.227755>,  <37.173817, 35.956875, 30.258766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965763, 36.072426, 30.227755>,  <36.619007, 36.265015, 30.176067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965763, 36.072426, 30.227755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367046, 0.441064, -0.818987,
		0.337324, 0.757397, 0.559073,
		0.866885, -0.481469, 0.129218,
		37.225830, 35.927986, 30.266520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198559, 36.705898, 29.860493>,  <36.619007, 36.265015, 30.176067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198559, 36.705898, 29.860493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.390984, 36.355980, 29.883482>,  <37.506439, 36.146027, 29.897276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.390984, 36.355980, 29.883482>,  <37.198559, 36.705898, 29.860493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390984, 36.355980, 29.883482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576498, 0.266269, -0.772496,
		0.660476, 0.404754, 0.632413,
		0.481063, -0.874800, 0.057475,
		37.535301, 36.093540, 29.900724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879673, 36.880325, 29.879923>,  <37.198559, 36.705898, 29.860493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879673, 36.880325, 29.879923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834919, 36.499989, 29.764421>,  <37.808067, 36.271786, 29.695120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834919, 36.499989, 29.764421>,  <37.879673, 36.880325, 29.879923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834919, 36.499989, 29.764421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478271, 0.203184, -0.854384,
		0.871056, -0.233698, 0.432027,
		-0.111887, -0.950842, -0.288756,
		37.801353, 36.214737, 29.677795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485126, 36.668823, 29.801981>,  <37.879673, 36.880325, 29.879923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485126, 36.668823, 29.801981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318810, 36.367523, 29.598129>,  <38.219017, 36.186741, 29.475819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318810, 36.367523, 29.598129>,  <38.485126, 36.668823, 29.801981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318810, 36.367523, 29.598129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644839, 0.150976, -0.749259,
		0.641324, -0.640168, 0.422952,
		-0.415796, -0.753254, -0.509630,
		38.194069, 36.141548, 29.445240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039989, 36.264111, 29.588228>,  <38.485126, 36.668823, 29.801981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039989, 36.264111, 29.588228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743225, 36.188278, 29.330973>,  <38.565166, 36.142780, 29.176619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743225, 36.188278, 29.330973>,  <39.039989, 36.264111, 29.588228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743225, 36.188278, 29.330973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615470, 0.188008, -0.765409,
		0.266023, -0.963697, -0.022802,
		-0.741909, -0.189582, -0.643140,
		38.520653, 36.131405, 29.138031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385143, 35.893250, 29.056150>,  <39.039989, 36.264111, 29.588228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385143, 35.893250, 29.056150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043270, 36.008610, 28.883480>,  <38.838146, 36.077824, 28.779877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043270, 36.008610, 28.883480>,  <39.385143, 35.893250, 29.056150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043270, 36.008610, 28.883480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495471, 0.204866, -0.844120,
		-0.155007, -0.935338, -0.317988,
		-0.854682, 0.288398, -0.431677,
		38.786865, 36.095131, 28.753977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472340, 35.652943, 28.360281>,  <39.385143, 35.893250, 29.056150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472340, 35.652943, 28.360281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178246, 35.923237, 28.339104>,  <39.001789, 36.085415, 28.326397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178246, 35.923237, 28.339104>,  <39.472340, 35.652943, 28.360281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178246, 35.923237, 28.339104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427674, 0.401890, -0.809679,
		-0.525854, -0.617949, -0.584480,
		-0.735237, 0.675739, -0.052945,
		38.957676, 36.125957, 28.323219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170208, 35.625477, 27.682241>,  <39.472340, 35.652943, 28.360281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170208, 35.625477, 27.682241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045731, 35.990265, 27.789177>,  <38.971043, 36.209137, 27.853338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045731, 35.990265, 27.789177>,  <39.170208, 35.625477, 27.682241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045731, 35.990265, 27.789177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177125, 0.332039, -0.926486,
		-0.933693, -0.240967, -0.264862,
		-0.311197, 0.911968, 0.267341,
		38.952370, 36.263855, 27.869379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651859, 35.787323, 27.207399>,  <39.170208, 35.625477, 27.682241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651859, 35.787323, 27.207399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778294, 36.131069, 27.368183>,  <38.854156, 36.337318, 27.464653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778294, 36.131069, 27.368183>,  <38.651859, 35.787323, 27.207399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778294, 36.131069, 27.368183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072895, 0.400431, -0.913423,
		-0.945925, 0.318025, 0.063929,
		0.316090, 0.859369, 0.401960,
		38.873119, 36.388882, 27.488771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320297, 36.294102, 26.839565>,  <38.651859, 35.787323, 27.207399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320297, 36.294102, 26.839565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614544, 36.500919, 27.014622>,  <38.791092, 36.625011, 27.119656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614544, 36.500919, 27.014622>,  <38.320297, 36.294102, 26.839565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614544, 36.500919, 27.014622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027906, 0.668647, -0.743057,
		-0.676818, 0.534395, 0.506299,
		0.735621, 0.517043, 0.437639,
		38.835232, 36.656033, 27.145914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149754, 37.024628, 26.910522>,  <38.320297, 36.294102, 26.839565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149754, 37.024628, 26.910522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548908, 37.016312, 26.885887>,  <38.788403, 37.011322, 26.871105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548908, 37.016312, 26.885887>,  <38.149754, 37.024628, 26.910522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548908, 37.016312, 26.885887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043365, 0.492898, -0.869006,
		0.048424, 0.869839, 0.490954,
		0.997885, -0.020790, -0.061588,
		38.848274, 37.010075, 26.867411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308849, 37.610302, 26.691603>,  <38.149754, 37.024628, 26.910522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308849, 37.610302, 26.691603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622337, 37.376457, 26.607695>,  <38.810432, 37.236149, 26.557350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622337, 37.376457, 26.607695>,  <38.308849, 37.610302, 26.691603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622337, 37.376457, 26.607695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025774, 0.306834, -0.951414,
		0.620575, 0.751052, 0.225405,
		0.783724, -0.584614, -0.209771,
		38.857456, 37.201073, 26.544764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745258, 38.082588, 26.352028>,  <38.308849, 37.610302, 26.691603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745258, 38.082588, 26.352028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901360, 37.724136, 26.267500>,  <38.995022, 37.509068, 26.216784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901360, 37.724136, 26.267500>,  <38.745258, 38.082588, 26.352028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901360, 37.724136, 26.267500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083538, 0.263037, -0.961162,
		0.916909, 0.357446, 0.177512,
		0.390255, -0.896128, -0.211320,
		39.018436, 37.455299, 26.204103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293644, 38.246166, 25.828695>,  <38.745258, 38.082588, 26.352028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293644, 38.246166, 25.828695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199993, 37.859406, 25.788118>,  <39.143803, 37.627350, 25.763773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199993, 37.859406, 25.788118>,  <39.293644, 38.246166, 25.828695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199993, 37.859406, 25.788118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216445, 0.049881, -0.975020,
		0.947805, -0.250239, 0.197601,
		-0.234131, -0.966898, -0.101440,
		39.129753, 37.569336, 25.757687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875259, 37.858955, 25.460363>,  <39.293644, 38.246166, 25.828695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875259, 37.858955, 25.460363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564148, 37.616768, 25.392883>,  <39.377480, 37.471455, 25.352396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564148, 37.616768, 25.392883>,  <39.875259, 37.858955, 25.460363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564148, 37.616768, 25.392883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077758, 0.173648, -0.981733,
		0.623707, -0.776691, -0.087980,
		-0.777781, -0.605473, -0.168699,
		39.330814, 37.435127, 25.342274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105309, 37.250530, 24.944214>,  <39.875259, 37.858955, 25.460363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105309, 37.250530, 24.944214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710548, 37.314484, 24.935543>,  <39.473694, 37.352856, 24.930340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710548, 37.314484, 24.935543>,  <40.105309, 37.250530, 24.944214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710548, 37.314484, 24.935543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044595, 0.141173, -0.988980,
		-0.155058, -0.976989, -0.146454,
		-0.986898, 0.159880, -0.021678,
		39.414478, 37.362446, 24.929039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807953, 36.673962, 24.682789>,  <40.105309, 37.250530, 24.944214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807953, 36.673962, 24.682789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.549847, 36.970894, 24.610596>,  <39.394981, 37.149052, 24.567280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.549847, 36.970894, 24.610596>,  <39.807953, 36.673962, 24.682789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549847, 36.970894, 24.610596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034018, -0.208094, -0.977517,
		-0.763197, -0.636901, 0.109024,
		-0.645269, 0.742330, -0.180483,
		39.356266, 37.193592, 24.556452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513607, 36.386860, 24.108475>,  <39.807953, 36.673962, 24.682789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513607, 36.386860, 24.108475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389980, 36.767273, 24.106853>,  <39.315804, 36.995522, 24.105881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389980, 36.767273, 24.106853>,  <39.513607, 36.386860, 24.108475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389980, 36.767273, 24.106853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063382, -0.024851, -0.997680,
		-0.948926, -0.308093, 0.067959,
		-0.309067, 0.951032, -0.004054,
		39.297260, 37.052582, 24.105637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946785, 36.372700, 23.755932>,  <39.513607, 36.386860, 24.108475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946785, 36.372700, 23.755932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.084103, 36.746944, 23.723001>,  <39.166492, 36.971493, 23.703243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.084103, 36.746944, 23.723001>,  <38.946785, 36.372700, 23.755932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084103, 36.746944, 23.723001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089853, -0.054537, -0.994461,
		-0.934918, 0.348794, 0.065345,
		0.343299, 0.935611, -0.082328,
		39.187092, 37.027626, 23.698303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657101, 36.655037, 23.105537>,  <38.946785, 36.372700, 23.755932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657101, 36.655037, 23.105537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932369, 36.930626, 23.196518>,  <39.097530, 37.095978, 23.251106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932369, 36.930626, 23.196518>,  <38.657101, 36.655037, 23.105537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932369, 36.930626, 23.196518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182270, 0.139267, -0.973336,
		-0.702276, 0.711283, -0.029738,
		0.688176, 0.688971, 0.227449,
		39.138821, 37.137318, 23.264753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456245, 37.303028, 22.791866>,  <38.657101, 36.655037, 23.105537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456245, 37.303028, 22.791866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853546, 37.292568, 22.837065>,  <39.091927, 37.286293, 22.864183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853546, 37.292568, 22.837065>,  <38.456245, 37.303028, 22.791866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853546, 37.292568, 22.837065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115622, 0.146703, -0.982400,
		0.009113, 0.988835, 0.148736,
		0.993251, -0.026150, 0.112995,
		39.151520, 37.284721, 22.870964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672234, 37.914768, 22.411852>,  <38.456245, 37.303028, 22.791866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672234, 37.914768, 22.411852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994709, 37.683151, 22.460457>,  <39.188194, 37.544182, 22.489620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994709, 37.683151, 22.460457>,  <38.672234, 37.914768, 22.411852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994709, 37.683151, 22.460457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156945, 0.011277, -0.987543,
		0.570459, 0.815220, 0.099969,
		0.806192, -0.579042, 0.121511,
		39.236568, 37.509438, 22.496910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138378, 38.324718, 22.162115>,  <38.672234, 37.914768, 22.411852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138378, 38.324718, 22.162115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308651, 37.963188, 22.144712>,  <39.410816, 37.746269, 22.134270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308651, 37.963188, 22.144712>,  <39.138378, 38.324718, 22.162115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308651, 37.963188, 22.144712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131299, 0.109269, -0.985302,
		0.895295, 0.413715, 0.165186,
		0.425684, -0.903825, -0.043508,
		39.436356, 37.692039, 22.131660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639942, 38.292381, 21.563400>,  <39.138378, 38.324718, 22.162115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639942, 38.292381, 21.563400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591469, 37.900143, 21.625031>,  <39.562386, 37.664799, 21.662008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591469, 37.900143, 21.625031>,  <39.639942, 38.292381, 21.563400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591469, 37.900143, 21.625031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066725, -0.162915, -0.984381,
		0.990385, -0.109010, 0.085173,
		-0.121183, -0.980600, 0.154075,
		39.555115, 37.605965, 21.671253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183598, 37.878296, 21.275427>,  <39.639942, 38.292381, 21.563400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183598, 37.878296, 21.275427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873367, 37.627110, 21.301151>,  <39.687229, 37.476398, 21.316586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873367, 37.627110, 21.301151>,  <40.183598, 37.878296, 21.275427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873367, 37.627110, 21.301151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100637, -0.223578, -0.969477,
		0.623181, -0.745431, 0.236599,
		-0.775576, -0.627970, 0.064312,
		39.640694, 37.438717, 21.320444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405926, 37.232872, 20.875631>,  <40.183598, 37.878296, 21.275427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405926, 37.232872, 20.875631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006741, 37.212212, 20.890579>,  <39.767227, 37.199814, 20.899548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006741, 37.212212, 20.890579>,  <40.405926, 37.232872, 20.875631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006741, 37.212212, 20.890579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014740, -0.383359, -0.923482,
		0.062027, -0.922154, 0.381818,
		-0.997966, -0.051653, 0.037371,
		39.707352, 37.196716, 20.901791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259251, 36.567097, 20.564671>,  <40.405926, 37.232872, 20.875631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259251, 36.567097, 20.564671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915657, 36.769779, 20.535313>,  <39.709499, 36.891388, 20.517698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915657, 36.769779, 20.535313>,  <40.259251, 36.567097, 20.564671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915657, 36.769779, 20.535313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056874, -0.236894, -0.969869,
		-0.508827, -0.828932, 0.232307,
		-0.858988, 0.506708, -0.073393,
		39.657959, 36.921791, 20.513294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710114, 36.152390, 20.273932>,  <40.259251, 36.567097, 20.564671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710114, 36.152390, 20.273932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605782, 36.531605, 20.201061>,  <39.543182, 36.759136, 20.157339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605782, 36.531605, 20.201061>,  <39.710114, 36.152390, 20.273932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605782, 36.531605, 20.201061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118081, -0.218620, -0.968639,
		-0.958137, -0.231135, 0.168967,
		-0.260826, 0.948041, -0.182176,
		39.527534, 36.816017, 20.146408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263840, 35.836590, 19.669626>,  <39.710114, 36.152390, 20.273932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263840, 35.836590, 19.669626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309753, 35.483124, 19.488096>,  <40.337303, 35.271046, 19.379177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309753, 35.483124, 19.488096>,  <40.263840, 35.836590, 19.669626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309753, 35.483124, 19.488096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122392, -0.465945, 0.876308,
		-0.985822, -0.045041, -0.161637,
		0.114783, -0.883667, -0.453826,
		40.344189, 35.218025, 19.351948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646160, 35.372410, 19.754736>,  <40.263840, 35.836590, 19.669626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646160, 35.372410, 19.754736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999832, 35.185753, 19.746082>,  <40.212036, 35.073761, 19.740891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999832, 35.185753, 19.746082>,  <39.646160, 35.372410, 19.754736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999832, 35.185753, 19.746082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200931, -0.421719, 0.884183,
		-0.421719, -0.777433, -0.466639,
		-0.884183, 0.466639, 0.021636,
		40.265087, 35.045761, 19.739592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573662, 34.646282, 19.748934>,  <39.646160, 35.372410, 19.754736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573662, 34.646282, 19.748934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923740, 34.745121, 19.915291>,  <40.133789, 34.804424, 20.015104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923740, 34.745121, 19.915291>,  <39.573662, 34.646282, 19.748934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923740, 34.745121, 19.915291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233993, -0.536213, 0.811001,
		0.423406, -0.807104, -0.411474,
		0.875200, 0.247100, 0.415892,
		40.186302, 34.819252, 20.040058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697483, 34.080692, 20.169430>,  <39.573662, 34.646282, 19.748934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697483, 34.080692, 20.169430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980270, 34.328621, 20.305676>,  <40.149944, 34.477379, 20.387423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980270, 34.328621, 20.305676>,  <39.697483, 34.080692, 20.169430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980270, 34.328621, 20.305676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148538, -0.340741, 0.928349,
		0.691472, -0.706907, -0.148826,
		0.706967, 0.619821, 0.340616,
		40.192360, 34.514568, 20.407860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091286, 33.714275, 20.730995>,  <39.697483, 34.080692, 20.169430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091286, 33.714275, 20.730995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135098, 34.106045, 20.798800>,  <40.161385, 34.341106, 20.839481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135098, 34.106045, 20.798800>,  <40.091286, 33.714275, 20.730995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135098, 34.106045, 20.798800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006714, -0.169804, 0.985455,
		0.993961, -0.109075, -0.012022,
		0.109530, 0.979423, 0.169511,
		40.167957, 34.399872, 20.849653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534744, 33.722832, 21.220909>,  <40.091286, 33.714275, 20.730995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534744, 33.722832, 21.220909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346230, 34.074593, 21.247837>,  <40.233120, 34.285648, 21.263994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346230, 34.074593, 21.247837>,  <40.534744, 33.722832, 21.220909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346230, 34.074593, 21.247837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109301, -0.133976, 0.984939,
		0.875179, 0.456834, 0.159261,
		-0.471291, 0.879405, 0.067321,
		40.204842, 34.338413, 21.268034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725803, 33.947628, 21.865259>,  <40.534744, 33.722832, 21.220909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725803, 33.947628, 21.865259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397480, 34.165707, 21.797096>,  <40.200485, 34.296555, 21.756199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397480, 34.165707, 21.797096>,  <40.725803, 33.947628, 21.865259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397480, 34.165707, 21.797096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236959, -0.053553, 0.970043,
		0.519734, 0.836599, 0.173145,
		-0.820809, 0.545192, -0.170406,
		40.151237, 34.329266, 21.745974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634506, 34.406979, 22.492064>,  <40.725803, 33.947628, 21.865259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.634506, 34.406979, 22.492064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271931, 34.426525, 22.324266>,  <40.054386, 34.438251, 22.223587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271931, 34.426525, 22.324266>,  <40.634506, 34.406979, 22.492064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271931, 34.426525, 22.324266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389805, 0.285452, 0.875540,
		0.162531, 0.957147, -0.239696,
		-0.906441, 0.048868, -0.419495,
		40.000000, 34.441185, 22.198418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291008, 34.932518, 22.830545>,  <40.634506, 34.406979, 22.492064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291008, 34.932518, 22.830545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.992584, 34.734032, 22.652933>,  <39.813530, 34.614941, 22.546366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.992584, 34.734032, 22.652933>,  <40.291008, 34.932518, 22.830545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992584, 34.734032, 22.652933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547843, 0.078371, 0.832902,
		-0.378500, 0.864655, -0.330317,
		-0.746061, -0.496215, -0.444032,
		39.768764, 34.585167, 22.519724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701416, 35.317444, 22.998505>,  <40.291008, 34.932518, 22.830545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701416, 35.317444, 22.998505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563030, 34.953903, 22.905291>,  <39.480000, 34.735779, 22.849361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563030, 34.953903, 22.905291>,  <39.701416, 35.317444, 22.998505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563030, 34.953903, 22.905291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462257, -0.051031, 0.885277,
		-0.816474, 0.413994, -0.402466,
		-0.345961, -0.908848, -0.233037,
		39.459240, 34.681248, 22.835379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108997, 35.369457, 23.184242>,  <39.701416, 35.317444, 22.998505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108997, 35.369457, 23.184242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176720, 34.975246, 23.180998>,  <39.217354, 34.738720, 23.179050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176720, 34.975246, 23.180998>,  <39.108997, 35.369457, 23.184242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176720, 34.975246, 23.180998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345546, -0.067068, 0.936002,
		-0.923002, -0.155670, -0.351901,
		0.169308, -0.985530, -0.008113,
		39.227512, 34.679588, 23.178564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689297, 35.115028, 23.692141>,  <39.108997, 35.369457, 23.184242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689297, 35.115028, 23.692141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936504, 34.807571, 23.626120>,  <39.084827, 34.623096, 23.586506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936504, 34.807571, 23.626120>,  <38.689297, 35.115028, 23.692141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936504, 34.807571, 23.626120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063636, -0.258170, 0.964001,
		-0.783583, -0.585268, -0.208467,
		0.618020, -0.768641, -0.165054,
		39.121910, 34.576981, 23.576603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457279, 34.523453, 24.059879>,  <38.689297, 35.115028, 23.692141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457279, 34.523453, 24.059879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842869, 34.428112, 24.012667>,  <39.074223, 34.370907, 23.984339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842869, 34.428112, 24.012667>,  <38.457279, 34.523453, 24.059879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842869, 34.428112, 24.012667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020204, -0.376862, 0.926049,
		-0.265210, -0.895077, -0.358471,
		0.963979, -0.238355, -0.118032,
		39.132061, 34.356606, 23.977257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346447, 33.927963, 24.192759>,  <38.457279, 34.523453, 24.059879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346447, 33.927963, 24.192759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725445, 34.035606, 24.261858>,  <38.952843, 34.100193, 24.303318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725445, 34.035606, 24.261858>,  <38.346447, 33.927963, 24.192759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725445, 34.035606, 24.261858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092968, -0.285074, 0.953986,
		0.305969, -0.919954, -0.245087,
		0.947492, 0.269105, 0.172750,
		39.009693, 34.116337, 24.313683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557861, 33.310131, 24.449190>,  <38.346447, 33.927963, 24.192759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557861, 33.310131, 24.449190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805668, 33.602547, 24.563574>,  <38.954353, 33.777996, 24.632204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805668, 33.602547, 24.563574>,  <38.557861, 33.310131, 24.449190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805668, 33.602547, 24.563574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098082, -0.289345, 0.952187,
		0.778828, -0.617947, -0.107553,
		0.619521, 0.731041, 0.285959,
		38.991524, 33.821857, 24.649363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941689, 33.095810, 24.967712>,  <38.557861, 33.310131, 24.449190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941689, 33.095810, 24.967712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016354, 33.483566, 25.031519>,  <39.061153, 33.716221, 25.069803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016354, 33.483566, 25.031519>,  <38.941689, 33.095810, 24.967712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016354, 33.483566, 25.031519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116343, -0.139415, 0.983376,
		0.975511, -0.202116, 0.086758,
		0.186660, 0.969388, 0.159516,
		39.072353, 33.774384, 25.079374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561760, 33.165909, 25.507723>,  <38.941689, 33.095810, 24.967712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561760, 33.165909, 25.507723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331387, 33.492828, 25.500542>,  <39.193161, 33.688980, 25.496233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331387, 33.492828, 25.500542>,  <39.561760, 33.165909, 25.507723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331387, 33.492828, 25.500542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078142, -0.033181, 0.996390,
		0.813752, 0.575258, 0.082975,
		-0.575935, 0.817299, -0.017951,
		39.158607, 33.738018, 25.495157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910271, 33.864990, 25.786221>,  <39.561760, 33.165909, 25.507723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910271, 33.864990, 25.786221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517536, 33.934265, 25.817213>,  <39.281895, 33.975830, 25.835808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517536, 33.934265, 25.817213>,  <39.910271, 33.864990, 25.786221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517536, 33.934265, 25.817213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093128, 0.084117, 0.992094,
		0.165302, 0.981290, -0.098718,
		-0.981836, 0.173189, 0.077481,
		39.222984, 33.986221, 25.840458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846458, 34.354088, 26.391415>,  <39.910271, 33.864990, 25.786221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846458, 34.354088, 26.391415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468357, 34.247669, 26.315832>,  <39.241493, 34.183819, 26.270483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468357, 34.247669, 26.315832>,  <39.846458, 34.354088, 26.391415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468357, 34.247669, 26.315832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239946, 0.174223, 0.955025,
		-0.221163, 0.948084, -0.228523,
		-0.945258, -0.266049, -0.188957,
		39.184780, 34.167854, 26.259146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379951, 34.874016, 26.544996>,  <39.846458, 34.354088, 26.391415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379951, 34.874016, 26.544996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176392, 34.532005, 26.584883>,  <39.054256, 34.326797, 26.608814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176392, 34.532005, 26.584883>,  <39.379951, 34.874016, 26.544996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176392, 34.532005, 26.584883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245564, 0.255223, 0.935179,
		-0.825054, 0.451429, -0.339848,
		-0.508904, -0.855028, 0.099718,
		39.023720, 34.275497, 26.614798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037273, 34.949799, 27.064339>,  <39.379951, 34.874016, 26.544996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037273, 34.949799, 27.064339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991180, 34.553741, 27.032499>,  <38.963524, 34.316109, 27.013395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991180, 34.553741, 27.032499>,  <39.037273, 34.949799, 27.064339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991180, 34.553741, 27.032499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234597, -0.050739, 0.970768,
		-0.965238, 0.130542, -0.226438,
		-0.115236, -0.990144, -0.079600,
		38.956608, 34.256699, 27.008619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471298, 34.927029, 27.440054>,  <39.037273, 34.949799, 27.064339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471298, 34.927029, 27.440054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631054, 34.560986, 27.417933>,  <38.726910, 34.341358, 27.404659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631054, 34.560986, 27.417933>,  <38.471298, 34.927029, 27.440054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631054, 34.560986, 27.417933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307153, -0.190405, 0.932418,
		-0.863796, -0.355413, -0.357125,
		0.399393, -0.915111, -0.055305,
		38.750870, 34.286453, 27.401340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866009, 34.542103, 27.659674>,  <38.471298, 34.927029, 27.440054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866009, 34.542103, 27.659674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212452, 34.349968, 27.715004>,  <38.420319, 34.234688, 27.748203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212452, 34.349968, 27.715004>,  <37.866009, 34.542103, 27.659674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212452, 34.349968, 27.715004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266563, -0.209739, 0.940720,
		-0.422850, -0.851637, -0.309697,
		0.866107, -0.480337, 0.138327,
		38.472282, 34.205868, 27.756502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762321, 33.746361, 27.945036>,  <37.866009, 34.542103, 27.659674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762321, 33.746361, 27.945036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141083, 33.822014, 28.049042>,  <38.368340, 33.867405, 28.111446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141083, 33.822014, 28.049042>,  <37.762321, 33.746361, 27.945036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141083, 33.822014, 28.049042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145062, -0.470408, 0.870444,
		0.286944, -0.861943, -0.417993,
		0.946900, 0.189133, 0.260016,
		38.425152, 33.878754, 28.127047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893604, 33.198593, 28.348228>,  <37.762321, 33.746361, 27.945036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893604, 33.198593, 28.348228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182663, 33.453304, 28.455776>,  <38.356098, 33.606133, 28.520306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182663, 33.453304, 28.455776>,  <37.893604, 33.198593, 28.348228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182663, 33.453304, 28.455776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033396, -0.356362, 0.933751,
		0.690410, -0.683752, -0.236258,
		0.722647, 0.636781, 0.268870,
		38.399456, 33.644341, 28.536438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360199, 32.826992, 28.783361>,  <37.893604, 33.198593, 28.348228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360199, 32.826992, 28.783361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419819, 33.206242, 28.895676>,  <38.455593, 33.433792, 28.963064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419819, 33.206242, 28.895676>,  <38.360199, 32.826992, 28.783361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419819, 33.206242, 28.895676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081644, -0.271186, 0.959058,
		0.985453, -0.165873, 0.036988,
		0.149051, 0.948127, 0.280783,
		38.464535, 33.490681, 28.979910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997147, 32.878178, 29.149364>,  <38.360199, 32.826992, 28.783361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997147, 32.878178, 29.149364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778576, 33.191380, 29.268238>,  <38.647434, 33.379303, 29.339563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778576, 33.191380, 29.268238>,  <38.997147, 32.878178, 29.149364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778576, 33.191380, 29.268238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165388, -0.246973, 0.954804,
		0.821017, 0.570878, 0.005451,
		-0.546423, 0.783009, 0.297185,
		38.614651, 33.426281, 29.357393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446945, 33.281052, 29.573380>,  <38.997147, 32.878178, 29.149364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446945, 33.281052, 29.573380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063755, 33.359539, 29.657070>,  <38.833839, 33.406631, 29.707285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063755, 33.359539, 29.657070>,  <39.446945, 33.281052, 29.573380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063755, 33.359539, 29.657070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187723, -0.122638, 0.974536,
		0.216883, 0.972860, 0.080649,
		-0.957978, 0.196220, 0.209226,
		38.776363, 33.418404, 29.719837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414242, 33.861721, 29.976292>,  <39.446945, 33.281052, 29.573380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414242, 33.861721, 29.976292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074940, 33.666775, 30.059181>,  <38.871361, 33.549809, 30.108915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074940, 33.666775, 30.059181>,  <39.414242, 33.861721, 29.976292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074940, 33.666775, 30.059181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282351, -0.085148, 0.955525,
		-0.448045, 0.869037, 0.209835,
		-0.848253, -0.487366, 0.207223,
		38.820465, 33.520565, 30.121347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311390, 34.084888, 30.706961>,  <39.414242, 33.861721, 29.976292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311390, 34.084888, 30.706961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093151, 33.753063, 30.659388>,  <38.962208, 33.553967, 30.630844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093151, 33.753063, 30.659388>,  <39.311390, 34.084888, 30.706961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093151, 33.753063, 30.659388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246252, -0.294349, 0.923427,
		-0.801049, 0.474535, 0.364879,
		-0.545601, -0.829563, -0.118933,
		38.929470, 33.504192, 30.623707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700775, 33.978535, 31.345324>,  <39.311390, 34.084888, 30.706961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700775, 33.978535, 31.345324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821049, 33.641903, 31.165844>,  <38.893211, 33.439922, 31.058157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821049, 33.641903, 31.165844>,  <38.700775, 33.978535, 31.345324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821049, 33.641903, 31.165844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067897, -0.450386, 0.890249,
		-0.951305, -0.298146, -0.078281,
		0.300681, -0.841583, -0.448698,
		38.911255, 33.389427, 31.031235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535164, 33.424854, 31.854017>,  <38.700775, 33.978535, 31.345324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535164, 33.424854, 31.854017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702690, 33.181530, 31.584333>,  <38.803204, 33.035538, 31.422523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702690, 33.181530, 31.584333>,  <38.535164, 33.424854, 31.854017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702690, 33.181530, 31.584333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136046, -0.692047, 0.708916,
		-0.897824, -0.388626, -0.207080,
		0.418813, -0.608309, -0.674208,
		38.828335, 32.999039, 31.382071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185307, 32.839256, 31.887083>,  <38.535164, 33.424854, 31.854017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185307, 32.839256, 31.887083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536720, 32.755173, 31.715506>,  <38.747566, 32.704723, 31.612558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536720, 32.755173, 31.715506>,  <38.185307, 32.839256, 31.887083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536720, 32.755173, 31.715506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139083, -0.746496, 0.650691,
		-0.456989, -0.631311, -0.626584,
		0.878531, -0.210212, -0.428945,
		38.800282, 32.692108, 31.586823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146469, 32.122276, 31.836075>,  <38.185307, 32.839256, 31.887083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146469, 32.122276, 31.836075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534683, 32.218475, 31.830126>,  <38.767612, 32.276196, 31.826557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534683, 32.218475, 31.830126>,  <38.146469, 32.122276, 31.836075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534683, 32.218475, 31.830126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183408, -0.697301, 0.692916,
		0.156276, -0.675228, -0.720864,
		0.970535, 0.240498, -0.014871,
		38.825844, 32.290627, 31.825665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440525, 31.510164, 31.902601>,  <38.146469, 32.122276, 31.836075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440525, 31.510164, 31.902601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740845, 31.745899, 32.021915>,  <38.921036, 31.887341, 32.093502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740845, 31.745899, 32.021915>,  <38.440525, 31.510164, 31.902601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740845, 31.745899, 32.021915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276207, -0.690330, 0.668696,
		0.600004, -0.419670, -0.681082,
		0.750803, 0.589340, 0.298285,
		38.966087, 31.922701, 32.111401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928535, 31.070747, 31.838774>,  <38.440525, 31.510164, 31.902601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928535, 31.070747, 31.838774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040611, 31.365007, 32.085453>,  <39.107857, 31.541563, 32.233459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040611, 31.365007, 32.085453>,  <38.928535, 31.070747, 31.838774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040611, 31.365007, 32.085453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295817, -0.677333, 0.673581,
		0.913230, -0.006298, -0.407397,
		0.280185, 0.735649, 0.616698,
		39.124668, 31.585703, 32.270462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507408, 30.875814, 32.072250>,  <38.928535, 31.070747, 31.838774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507408, 30.875814, 32.072250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418446, 31.155958, 32.343552>,  <39.365067, 31.324043, 32.506332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418446, 31.155958, 32.343552>,  <39.507408, 30.875814, 32.072250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418446, 31.155958, 32.343552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317972, -0.605536, 0.729534,
		0.921644, 0.377922, -0.088018,
		-0.222409, 0.700358, 0.678257,
		39.351723, 31.366066, 32.547028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082737, 31.098627, 32.422649>,  <39.507408, 30.875814, 32.072250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082737, 31.098627, 32.422649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783878, 31.144434, 32.684540>,  <39.604565, 31.171919, 32.841675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783878, 31.144434, 32.684540>,  <40.082737, 31.098627, 32.422649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783878, 31.144434, 32.684540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507615, -0.537586, 0.673297,
		0.429075, 0.835397, 0.343522,
		-0.747142, 0.114518, 0.654724,
		39.559734, 31.178789, 32.880959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403725, 31.174463, 32.972805>,  <40.082737, 31.098627, 32.422649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403725, 31.174463, 32.972805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045158, 31.090189, 33.128780>,  <39.830017, 31.039623, 33.222366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045158, 31.090189, 33.128780>,  <40.403725, 31.174463, 32.972805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045158, 31.090189, 33.128780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441500, -0.501780, 0.743837,
		0.038945, 0.838944, 0.542822,
		-0.896416, -0.210687, 0.389936,
		39.776234, 31.026983, 33.245762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345383, 31.451521, 33.672909>,  <40.403725, 31.174463, 32.972805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345383, 31.451521, 33.672909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074215, 31.158171, 33.652546>,  <39.911514, 30.982161, 33.640327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074215, 31.158171, 33.652546>,  <40.345383, 31.451521, 33.672909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074215, 31.158171, 33.652546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281218, -0.322682, 0.903766,
		-0.679226, 0.598361, 0.424989,
		-0.677915, -0.733376, -0.050904,
		39.870842, 30.938158, 33.637276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928658, 31.366640, 34.298523>,  <40.345383, 31.451521, 33.672909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928658, 31.366640, 34.298523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969769, 31.014301, 34.113678>,  <39.994434, 30.802898, 34.002773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969769, 31.014301, 34.113678>,  <39.928658, 31.366640, 34.298523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969769, 31.014301, 34.113678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417263, -0.383541, 0.823886,
		-0.902956, -0.277495, 0.328127,
		0.102774, -0.880848, -0.462108,
		40.000599, 30.750048, 33.975044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521946, 30.691242, 34.602005>,  <39.928658, 31.366640, 34.298523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521946, 30.691242, 34.602005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874271, 30.639925, 34.419704>,  <40.085667, 30.609135, 34.310322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874271, 30.639925, 34.419704>,  <39.521946, 30.691242, 34.602005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874271, 30.639925, 34.419704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346532, -0.481232, 0.805191,
		-0.322623, -0.867155, -0.379417,
		0.880812, -0.128293, -0.455753,
		40.138515, 30.601437, 34.282978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732201, 29.946222, 34.534950>,  <39.521946, 30.691242, 34.602005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732201, 29.946222, 34.534950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054634, 30.181915, 34.557007>,  <40.248093, 30.323330, 34.570240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054634, 30.181915, 34.557007>,  <39.732201, 29.946222, 34.534950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054634, 30.181915, 34.557007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271974, -0.451588, 0.849764,
		0.525608, -0.669981, -0.524272,
		0.806081, 0.589232, 0.055141,
		40.296459, 30.358685, 34.573547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411320, 29.512745, 34.685326>,  <39.732201, 29.946222, 34.534950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411320, 29.512745, 34.685326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466755, 29.889833, 34.806698>,  <40.500015, 30.116087, 34.879520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466755, 29.889833, 34.806698>,  <40.411320, 29.512745, 34.685326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466755, 29.889833, 34.806698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458139, -0.332659, 0.824286,
		0.878011, 0.024777, -0.477999,
		0.138587, 0.942722, 0.303429,
		40.508331, 30.172649, 34.897728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128170, 29.450029, 34.983280>,  <40.411320, 29.512745, 34.685326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128170, 29.450029, 34.983280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935879, 29.774267, 35.117046>,  <40.820503, 29.968809, 35.197308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935879, 29.774267, 35.117046>,  <41.128170, 29.450029, 34.983280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935879, 29.774267, 35.117046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505963, -0.055066, 0.860796,
		0.716172, 0.583012, -0.383659,
		-0.480728, 0.810595, 0.334419,
		40.791660, 30.017447, 35.217373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.661762, 29.713812, 35.413902>,  <41.128170, 29.450029, 34.983280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.661762, 29.713812, 35.413902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.319134, 29.868511, 35.550552>,  <41.113556, 29.961330, 35.632542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.319134, 29.868511, 35.550552>,  <41.661762, 29.713812, 35.413902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319134, 29.868511, 35.550552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372559, 0.005423, 0.927992,
		0.357046, 0.922169, -0.148732,
		-0.856573, 0.386748, 0.341627,
		41.062160, 29.984535, 35.653042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914494, 30.180824, 35.952827>,  <41.661762, 29.713812, 35.413902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914494, 30.180824, 35.952827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.535149, 30.077074, 36.025856>,  <41.307541, 30.014824, 36.069672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.535149, 30.077074, 36.025856>,  <41.914494, 30.180824, 35.952827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.535149, 30.077074, 36.025856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237455, -0.198945, 0.950808,
		-0.210296, 0.945063, 0.250262,
		-0.948362, -0.259377, 0.182573,
		41.250641, 29.999260, 36.080627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571739, 30.625315, 36.477970>,  <41.914494, 30.180824, 35.952827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571739, 30.625315, 36.477970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413918, 30.258228, 36.459507>,  <41.319225, 30.037977, 36.448429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413918, 30.258228, 36.459507>,  <41.571739, 30.625315, 36.477970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413918, 30.258228, 36.459507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130846, -0.105829, 0.985738,
		-0.909510, 0.382884, 0.161834,
		-0.394550, -0.917714, -0.046154,
		41.295551, 29.982914, 36.445660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105328, 30.528593, 36.981251>,  <41.571739, 30.625315, 36.477970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105328, 30.528593, 36.981251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210098, 30.145826, 36.931126>,  <41.272961, 29.916166, 36.901051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210098, 30.145826, 36.931126>,  <41.105328, 30.528593, 36.981251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210098, 30.145826, 36.931126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100459, -0.102109, 0.989688,
		-0.959845, -0.271816, 0.069385,
		0.261928, -0.956917, -0.125315,
		41.288677, 29.858751, 36.893532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835316, 30.269894, 37.603119>,  <41.105328, 30.528593, 36.981251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835316, 30.269894, 37.603119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071045, 29.981556, 37.457199>,  <41.212482, 29.808554, 37.369648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071045, 29.981556, 37.457199>,  <40.835316, 30.269894, 37.603119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071045, 29.981556, 37.457199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226212, -0.286245, 0.931071,
		-0.775579, -0.631225, -0.005628,
		0.589326, -0.720846, -0.364796,
		41.247845, 29.765303, 37.347759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682411, 29.705780, 38.033100>,  <40.835316, 30.269894, 37.603119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682411, 29.705780, 38.033100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.042595, 29.660055, 37.865246>,  <41.258705, 29.632620, 37.764534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.042595, 29.660055, 37.865246>,  <40.682411, 29.705780, 38.033100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042595, 29.660055, 37.865246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335635, -0.430994, 0.837612,
		-0.276612, -0.895085, -0.349727,
		0.900464, -0.114313, -0.419639,
		41.312733, 29.625761, 37.739353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739128, 28.921968, 37.829147>,  <40.682411, 29.705780, 38.033100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739128, 28.921968, 37.829147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.100464, 29.037348, 37.702171>,  <41.317265, 29.106575, 37.625984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.100464, 29.037348, 37.702171>,  <40.739128, 28.921968, 37.829147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.100464, 29.037348, 37.702171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347122, -0.056918, 0.936091,
		0.251947, -0.955802, -0.151543,
		0.903343, 0.288450, -0.317440,
		41.371468, 29.123882, 37.606941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235859, 28.430748, 38.131916>,  <40.739128, 28.921968, 37.829147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235859, 28.430748, 38.131916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450874, 28.764671, 38.084343>,  <41.579884, 28.965025, 38.055801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450874, 28.764671, 38.084343>,  <41.235859, 28.430748, 38.131916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450874, 28.764671, 38.084343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215801, 0.000150, 0.976438,
		0.815157, -0.550539, -0.180072,
		0.537539, 0.834810, -0.118929,
		41.612137, 29.015114, 38.048664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919853, 28.352678, 38.494457>,  <41.235859, 28.430748, 38.131916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919853, 28.352678, 38.494457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889297, 28.751350, 38.483223>,  <41.870964, 28.990555, 38.476482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889297, 28.751350, 38.483223>,  <41.919853, 28.352678, 38.494457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889297, 28.751350, 38.483223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385549, 0.055502, 0.921017,
		0.919520, 0.059528, -0.388509,
		-0.076390, 0.996682, -0.028084,
		41.866379, 29.050356, 38.474796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.636745, 28.693779, 38.737701>,  <41.919853, 28.352678, 38.494457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.636745, 28.693779, 38.737701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.310738, 28.918310, 38.795193>,  <42.115131, 29.053028, 38.829685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.310738, 28.918310, 38.795193>,  <42.636745, 28.693779, 38.737701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.310738, 28.918310, 38.795193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291965, 0.183584, 0.938645,
		0.500502, 0.806975, -0.313512,
		-0.815018, 0.561328, 0.143724,
		42.066231, 29.086708, 38.838310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.870560, 29.389774, 38.892300>,  <42.636745, 28.693779, 38.737701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.870560, 29.389774, 38.892300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.514858, 29.299126, 39.051235>,  <42.301437, 29.244738, 39.146595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.514858, 29.299126, 39.051235>,  <42.870560, 29.389774, 38.892300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.514858, 29.299126, 39.051235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425756, -0.092508, 0.900096,
		-0.167222, 0.969580, 0.178747,
		-0.889251, -0.226619, 0.397336,
		42.248081, 29.231140, 39.170437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.687725, 29.908756, 39.382217>,  <42.870560, 29.389774, 38.892300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.687725, 29.908756, 39.382217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.501175, 29.568964, 39.480911>,  <42.389244, 29.365088, 39.540127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.501175, 29.568964, 39.480911>,  <42.687725, 29.908756, 39.382217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.501175, 29.568964, 39.480911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301966, 0.109284, 0.947034,
		-0.831453, 0.516174, 0.205548,
		-0.466372, -0.849483, 0.246732,
		42.361263, 29.314119, 39.554932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292950, 30.113165, 39.918301>,  <42.687725, 29.908756, 39.382217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292950, 30.113165, 39.918301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.337528, 29.716166, 39.938408>,  <42.364277, 29.477966, 39.950474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.337528, 29.716166, 39.938408>,  <42.292950, 30.113165, 39.918301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.337528, 29.716166, 39.938408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372217, 0.088591, 0.923908,
		-0.921430, -0.084257, 0.379297,
		0.111448, -0.992498, 0.050269,
		42.370964, 29.418417, 39.953487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.995293, 29.933777, 40.525612>,  <42.292950, 30.113165, 39.918301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.995293, 29.933777, 40.525612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254261, 29.647299, 40.421371>,  <42.409641, 29.475412, 40.358826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254261, 29.647299, 40.421371>,  <41.995293, 29.933777, 40.525612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254261, 29.647299, 40.421371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380974, 0.007975, 0.924551,
		-0.660082, -0.697853, 0.278015,
		0.647419, -0.716196, -0.260600,
		42.448486, 29.432440, 40.343193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097271, 29.566441, 41.136597>,  <41.995293, 29.933777, 40.525612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097271, 29.566441, 41.136597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.391003, 29.486593, 40.877087>,  <42.567242, 29.438684, 40.721382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.391003, 29.486593, 40.877087>,  <42.097271, 29.566441, 41.136597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.391003, 29.486593, 40.877087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646161, -0.087207, 0.758203,
		-0.207929, -0.975985, 0.064947,
		0.734331, -0.199618, -0.648776,
		42.611301, 29.426708, 40.682453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271641, 29.721626, 41.797676>,  <42.097271, 29.566441, 41.136597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.271641, 29.721626, 41.797676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.050045, 29.572334, 42.095345>,  <41.917088, 29.482759, 42.273945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.050045, 29.572334, 42.095345>,  <42.271641, 29.721626, 41.797676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.050045, 29.572334, 42.095345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136113, -0.922454, -0.361319,
		0.821319, -0.098877, 0.561835,
		-0.553993, -0.373231, 0.744171,
		41.883846, 29.460365, 42.318596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.585175, 29.161207, 42.225201>,  <42.271641, 29.721626, 41.797676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.585175, 29.161207, 42.225201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188919, 29.107101, 42.217945>,  <41.951164, 29.074638, 42.213593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188919, 29.107101, 42.217945>,  <42.585175, 29.161207, 42.225201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188919, 29.107101, 42.217945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132207, -0.918169, -0.373479,
		0.033868, -0.372382, 0.927461,
		-0.990644, -0.135266, -0.018135,
		41.891727, 29.066521, 42.212505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.561302, 28.508551, 41.982460>,  <42.585175, 29.161207, 42.225201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.561302, 28.508551, 41.982460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170734, 28.587574, 42.017273>,  <41.936394, 28.634989, 42.038162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170734, 28.587574, 42.017273>,  <42.561302, 28.508551, 41.982460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170734, 28.587574, 42.017273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215108, -0.856247, -0.469649,
		-0.018261, -0.477296, 0.878553,
		-0.976420, 0.197560, 0.087034,
		41.877808, 28.646843, 42.043385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979141, 27.748543, 41.823097>,  <42.561302, 28.508551, 41.982460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.979141, 27.748543, 41.823097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.809746, 27.980764, 41.544926>,  <42.708107, 28.120096, 41.378025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.809746, 27.980764, 41.544926>,  <42.979141, 27.748543, 41.823097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809746, 27.980764, 41.544926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844286, 0.531213, -0.070672,
		0.328391, -0.617067, -0.715114,
		-0.423487, 0.580552, -0.695426,
		42.682701, 28.154930, 41.336296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.287346, 27.605612, 41.138844>,  <42.979141, 27.748543, 41.823097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.287346, 27.605612, 41.138844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.166241, 27.970564, 41.249043>,  <43.093578, 28.189535, 41.315163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.166241, 27.970564, 41.249043>,  <43.287346, 27.605612, 41.138844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.166241, 27.970564, 41.249043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941383, 0.331407, -0.062983,
		-0.148767, 0.240281, -0.959236,
		-0.302764, 0.912378, 0.275499,
		43.075413, 28.244278, 41.331692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.718391, 28.045513, 40.751137>,  <43.287346, 27.605612, 41.138844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.718391, 28.045513, 40.751137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.568657, 28.214520, 41.081314>,  <43.478817, 28.315924, 41.279419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.568657, 28.214520, 41.081314>,  <43.718391, 28.045513, 40.751137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.568657, 28.214520, 41.081314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905852, 0.356937, 0.228096,
		-0.198257, 0.833114, -0.516349,
		-0.374334, 0.422514, 0.825443,
		43.456356, 28.341274, 41.328945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.209324, 28.407124, 40.201763>,  <43.718391, 28.045513, 40.751137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.209324, 28.407124, 40.201763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948578, 28.704538, 40.261398>,  <42.792130, 28.882988, 40.297180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948578, 28.704538, 40.261398>,  <43.209324, 28.407124, 40.201763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.948578, 28.704538, 40.261398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431597, -0.202114, -0.879133,
		-0.623535, -0.637420, 0.452659,
		-0.651865, 0.743536, 0.149083,
		42.753017, 28.927599, 40.306122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.515774, 28.115993, 40.032928>,  <43.209324, 28.407124, 40.201763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.515774, 28.115993, 40.032928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481155, 28.513832, 40.009979>,  <42.460384, 28.752535, 39.996208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481155, 28.513832, 40.009979>,  <42.515774, 28.115993, 40.032928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.481155, 28.513832, 40.009979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583018, -0.097264, -0.806616,
		-0.807837, -0.036358, 0.588284,
		-0.086546, 0.994594, -0.057376,
		42.455193, 28.812210, 39.992767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846985, 28.178659, 39.759087>,  <42.515774, 28.115993, 40.032928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846985, 28.178659, 39.759087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009895, 28.536152, 39.683861>,  <42.107643, 28.750648, 39.638725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009895, 28.536152, 39.683861>,  <41.846985, 28.178659, 39.759087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.009895, 28.536152, 39.683861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570808, 0.088351, -0.816316,
		-0.712953, 0.439815, 0.546133,
		0.407280, 0.893732, -0.188060,
		42.132080, 28.804272, 39.627441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378021, 28.681156, 39.639317>,  <41.846985, 28.178659, 39.759087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378021, 28.681156, 39.639317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712383, 28.752600, 39.431717>,  <41.913002, 28.795465, 39.307156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712383, 28.752600, 39.431717>,  <41.378021, 28.681156, 39.639317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.712383, 28.752600, 39.431717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543542, 0.137872, -0.827981,
		-0.076329, 0.974213, 0.212329,
		0.835904, 0.178608, -0.519002,
		41.963154, 28.806183, 39.276016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442852, 29.405930, 39.291382>,  <41.378021, 28.681156, 39.639317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442852, 29.405930, 39.291382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.584312, 29.090263, 39.090523>,  <41.669189, 28.900864, 38.970009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.584312, 29.090263, 39.090523>,  <41.442852, 29.405930, 39.291382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.584312, 29.090263, 39.090523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768669, 0.060709, -0.636759,
		0.532993, 0.611174, -0.585137,
		0.353647, -0.789165, -0.502148,
		41.690407, 28.853514, 38.939880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.406425, 29.983269, 38.885471>,  <41.442852, 29.405930, 39.291382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.406425, 29.983269, 38.885471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744061, 29.771639, 38.850609>,  <41.946640, 29.644661, 38.829693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744061, 29.771639, 38.850609>,  <41.406425, 29.983269, 38.885471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.744061, 29.771639, 38.850609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073636, 0.046626, -0.996195,
		0.531124, 0.847294, 0.000398,
		0.844088, -0.529074, -0.087156,
		41.997288, 29.612917, 38.824463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.886749, 30.328867, 38.482708>,  <41.406425, 29.983269, 38.885471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.886749, 30.328867, 38.482708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.920593, 29.931131, 38.457001>,  <41.940899, 29.692490, 38.441574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.920593, 29.931131, 38.457001>,  <41.886749, 30.328867, 38.482708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.920593, 29.931131, 38.457001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229586, 0.043313, -0.972324,
		0.969604, 0.097023, -0.224622,
		0.084609, -0.994339, -0.064272,
		41.945976, 29.632830, 38.437717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320370, 30.117184, 37.918602>,  <41.886749, 30.328867, 38.482708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320370, 30.117184, 37.918602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080860, 29.799496, 37.959946>,  <41.937157, 29.608883, 37.984753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080860, 29.799496, 37.959946>,  <42.320370, 30.117184, 37.918602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080860, 29.799496, 37.959946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222671, 0.041111, -0.974026,
		0.769344, -0.606235, -0.201466,
		-0.598772, -0.794222, 0.103363,
		41.901230, 29.561230, 37.990955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.507828, 29.700985, 37.452709>,  <42.320370, 30.117184, 37.918602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.507828, 29.700985, 37.452709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120079, 29.633694, 37.524292>,  <41.887432, 29.593319, 37.567242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120079, 29.633694, 37.524292>,  <42.507828, 29.700985, 37.452709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120079, 29.633694, 37.524292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167436, -0.080439, -0.982596,
		0.179697, -0.982460, 0.049807,
		-0.969368, -0.168230, 0.178954,
		41.829269, 29.583225, 37.577980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338943, 29.162275, 37.057011>,  <42.507828, 29.700985, 37.452709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.338943, 29.162275, 37.057011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.990257, 29.344070, 37.130276>,  <41.781044, 29.453148, 37.174236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.990257, 29.344070, 37.130276>,  <42.338943, 29.162275, 37.057011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.990257, 29.344070, 37.130276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242882, -0.076108, -0.967066,
		-0.425579, -0.887495, 0.176732,
		-0.871717, 0.454488, 0.183167,
		41.728741, 29.480417, 37.185226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.833858, 28.645260, 36.838051>,  <42.338943, 29.162275, 37.057011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.833858, 28.645260, 36.838051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.693878, 29.019371, 36.859192>,  <41.609890, 29.243837, 36.871876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.693878, 29.019371, 36.859192>,  <41.833858, 28.645260, 36.838051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.693878, 29.019371, 36.859192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245874, -0.037264, -0.968585,
		-0.903925, -0.351952, 0.243001,
		-0.349951, 0.935276, 0.052852,
		41.588894, 29.299953, 36.875046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242073, 28.608973, 36.390484>,  <41.833858, 28.645260, 36.838051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242073, 28.608973, 36.390484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.261028, 28.991102, 36.507179>,  <41.272400, 29.220379, 36.577198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.261028, 28.991102, 36.507179>,  <41.242073, 28.608973, 36.390484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.261028, 28.991102, 36.507179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383614, 0.287077, -0.877740,
		-0.922277, -0.070324, 0.380078,
		0.047386, 0.955323, 0.291742,
		41.275246, 29.277699, 36.594704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583332, 28.813177, 36.179092>,  <41.242073, 28.608973, 36.390484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583332, 28.813177, 36.179092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757835, 29.160379, 36.273956>,  <40.862537, 29.368702, 36.330875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757835, 29.160379, 36.273956>,  <40.583332, 28.813177, 36.179092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757835, 29.160379, 36.273956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422763, 0.430381, -0.797524,
		-0.794326, 0.247660, 0.554717,
		0.436254, 0.868007, 0.237161,
		40.888710, 29.420782, 36.345104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084995, 29.469830, 36.297421>,  <40.583332, 28.813177, 36.179092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084995, 29.469830, 36.297421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439205, 29.637926, 36.218178>,  <40.651730, 29.738785, 36.170631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439205, 29.637926, 36.218178>,  <40.084995, 29.469830, 36.297421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439205, 29.637926, 36.218178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373861, 0.391389, -0.840858,
		-0.275826, 0.818664, 0.503696,
		0.885522, 0.420242, -0.198111,
		40.704861, 29.763998, 36.158745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898506, 30.120209, 36.096897>,  <40.084995, 29.469830, 36.297421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898506, 30.120209, 36.096897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256718, 30.026615, 35.945488>,  <40.471645, 29.970459, 35.854641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256718, 30.026615, 35.945488>,  <39.898506, 30.120209, 36.096897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256718, 30.026615, 35.945488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313986, 0.270522, -0.910072,
		0.315343, 0.933846, 0.168792,
		0.895528, -0.233986, -0.378522,
		40.525375, 29.956419, 35.831932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114281, 30.724586, 35.864845>,  <39.898506, 30.120209, 36.096897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114281, 30.724586, 35.864845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291878, 30.425083, 35.667976>,  <40.398434, 30.245380, 35.549854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291878, 30.425083, 35.667976>,  <40.114281, 30.724586, 35.864845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291878, 30.425083, 35.667976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277264, 0.407515, -0.870090,
		0.852056, 0.522771, -0.026673,
		0.443988, -0.748760, -0.492171,
		40.425076, 30.200455, 35.520325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228138, 31.469870, 36.074097>,  <40.114281, 30.724586, 35.864845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228138, 31.469870, 36.074097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619213, 31.386349, 36.064930>,  <40.853859, 31.336237, 36.059429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619213, 31.386349, 36.064930>,  <40.228138, 31.469870, 36.074097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619213, 31.386349, 36.064930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109464, 0.413314, 0.903985,
		-0.179281, -0.886326, 0.426949,
		0.977689, -0.208803, -0.022921,
		40.912521, 31.323708, 36.058052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152416, 31.830189, 36.798328>,  <40.228138, 31.469870, 36.074097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152416, 31.830189, 36.798328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065838, 31.531712, 37.050152>,  <40.013889, 31.352625, 37.201244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065838, 31.531712, 37.050152>,  <40.152416, 31.830189, 36.798328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065838, 31.531712, 37.050152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918267, 0.063400, 0.390853,
		-0.331566, 0.662703, 0.671482,
		-0.216448, -0.746193, 0.629560,
		40.000904, 31.307854, 37.239021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233768, 32.036446, 37.518848>,  <40.152416, 31.830189, 36.798328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233768, 32.036446, 37.518848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303181, 31.649858, 37.443142>,  <40.344830, 31.417906, 37.397717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303181, 31.649858, 37.443142>,  <40.233768, 32.036446, 37.518848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303181, 31.649858, 37.443142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943319, 0.107915, 0.313852,
		-0.282904, -0.233003, 0.930417,
		0.173535, -0.966470, -0.189266,
		40.355240, 31.359917, 37.386364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440338, 31.605276, 38.088757>,  <40.233768, 32.036446, 37.518848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440338, 31.605276, 38.088757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618137, 31.436619, 37.772621>,  <40.724815, 31.335424, 37.582939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618137, 31.436619, 37.772621>,  <40.440338, 31.605276, 38.088757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618137, 31.436619, 37.772621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875043, 0.393127, 0.282402,
		0.191632, -0.817110, 0.543699,
		0.444496, -0.421643, -0.790342,
		40.751488, 31.310125, 37.535519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979218, 30.995199, 38.318272>,  <40.440338, 31.605276, 38.088757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979218, 30.995199, 38.318272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061649, 31.218658, 37.996914>,  <41.111111, 31.352734, 37.804100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061649, 31.218658, 37.996914>,  <40.979218, 30.995199, 38.318272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061649, 31.218658, 37.996914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791400, 0.387718, 0.472610,
		0.575514, -0.733203, -0.362213,
		0.206083, 0.558649, -0.803394,
		41.123474, 31.386253, 37.755898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692333, 30.855227, 37.995190>,  <40.979218, 30.995199, 38.318272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692333, 30.855227, 37.995190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.539745, 31.224924, 37.988842>,  <41.448193, 31.446743, 37.985035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.539745, 31.224924, 37.988842>,  <41.692333, 30.855227, 37.995190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.539745, 31.224924, 37.988842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829107, 0.349693, 0.436229,
		0.408733, 0.153250, -0.899696,
		-0.381469, 0.924245, -0.015870,
		41.425304, 31.502197, 37.984081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199223, 31.330917, 37.630142>,  <41.692333, 30.855227, 37.995190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.199223, 31.330917, 37.630142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.970974, 31.511936, 37.904251>,  <41.834026, 31.620546, 38.068718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.970974, 31.511936, 37.904251>,  <42.199223, 31.330917, 37.630142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.970974, 31.511936, 37.904251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812398, 0.433022, 0.390514,
		-0.120012, 0.779548, -0.614737,
		-0.570619, 0.452545, 0.685271,
		41.799789, 31.647699, 38.109833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.704628, 31.591478, 37.956646>,  <42.199223, 31.330917, 37.630142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.704628, 31.591478, 37.956646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396278, 31.729530, 38.170799>,  <42.211269, 31.812361, 38.299294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396278, 31.729530, 38.170799>,  <42.704628, 31.591478, 37.956646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.396278, 31.729530, 38.170799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634469, 0.490663, 0.597242,
		-0.056569, 0.800085, -0.597214,
		-0.770875, 0.345128, 0.535385,
		42.165016, 31.833069, 38.331413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.858181, 32.377525, 37.682465>,  <42.704628, 31.591478, 37.956646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.858181, 32.377525, 37.682465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118877, 32.330952, 37.982246>,  <43.275295, 32.303005, 38.162113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118877, 32.330952, 37.982246>,  <42.858181, 32.377525, 37.682465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118877, 32.330952, 37.982246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490422, 0.818469, -0.299323,
		-0.578549, 0.562628, 0.590534,
		0.651741, -0.116438, 0.749450,
		43.314400, 32.296021, 38.207081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.963470, 32.997654, 37.959625>,  <42.858181, 32.377525, 37.682465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.963470, 32.997654, 37.959625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.297169, 32.803185, 38.063683>,  <43.497387, 32.686504, 38.126118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.297169, 32.803185, 38.063683>,  <42.963470, 32.997654, 37.959625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.297169, 32.803185, 38.063683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540044, 0.815652, -0.207520,
		-0.111293, 0.313609, 0.943008,
		0.834246, -0.486170, 0.260139,
		43.547443, 32.657333, 38.141724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311684, 33.419640, 38.469009>,  <42.963470, 32.997654, 37.959625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.311684, 33.419640, 38.469009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.555870, 33.182156, 38.259308>,  <43.702381, 33.039665, 38.133488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.555870, 33.182156, 38.259308>,  <43.311684, 33.419640, 38.469009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.555870, 33.182156, 38.259308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485092, 0.803494, -0.345084,
		0.626112, -0.043647, 0.778511,
		0.610467, -0.593710, -0.524251,
		43.739010, 33.004044, 38.102032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.045795, 33.360470, 38.753880>,  <43.311684, 33.419640, 38.469009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.045795, 33.360470, 38.753880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.015354, 33.361092, 38.355042>,  <43.997089, 33.361465, 38.115738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.015354, 33.361092, 38.355042>,  <44.045795, 33.360470, 38.753880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.015354, 33.361092, 38.355042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554674, 0.831055, -0.041039,
		0.828580, -0.556188, -0.064105,
		-0.076100, 0.001554, -0.997099,
		43.992523, 33.361557, 38.055912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.774586, 33.367119, 38.492619>,  <44.045795, 33.360470, 38.753880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.774586, 33.367119, 38.492619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.466618, 33.532307, 38.298019>,  <44.281837, 33.631420, 38.181259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.466618, 33.532307, 38.298019>,  <44.774586, 33.367119, 38.492619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.466618, 33.532307, 38.298019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493676, 0.868531, -0.044027,
		0.404355, -0.274069, -0.872573,
		-0.769923, 0.412966, -0.486495,
		44.235641, 33.656197, 38.152069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.065769, 32.695312, 38.846245>,  <44.774586, 33.367119, 38.492619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.065769, 32.695312, 38.846245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.292122, 32.953136, 39.051891>,  <45.427933, 33.107830, 39.175282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.292122, 32.953136, 39.051891>,  <45.065769, 32.695312, 38.846245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.292122, 32.953136, 39.051891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004607, -0.621080, 0.783734,
		0.824475, -0.445867, -0.348487,
		0.565879, 0.644564, 0.514119,
		45.461887, 33.146507, 39.206127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.542522, 32.273838, 39.271008>,  <45.065769, 32.695312, 38.846245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.542522, 32.273838, 39.271008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.501324, 32.637371, 39.432705>,  <45.476604, 32.855492, 39.529724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.501324, 32.637371, 39.432705>,  <45.542522, 32.273838, 39.271008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.501324, 32.637371, 39.432705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149597, -0.415940, 0.897003,
		0.983368, 0.031911, 0.178798,
		-0.102993, 0.908832, 0.404248,
		45.470425, 32.910019, 39.553978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.791672, 32.508717, 38.565102>,  <45.542522, 32.273838, 39.271008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.791672, 32.508717, 38.565102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.939724, 32.299637, 38.257912>,  <46.028553, 32.174191, 38.073597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.939724, 32.299637, 38.257912>,  <45.791672, 32.508717, 38.565102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.939724, 32.299637, 38.257912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920093, -0.092178, -0.380701,
		0.128201, 0.847520, -0.515048,
		0.370127, -0.522698, -0.767980,
		46.050762, 32.142826, 38.027519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.495930, 32.874897, 38.033325>,  <45.791672, 32.508717, 38.565102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.495930, 32.874897, 38.033325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.610222, 32.518543, 37.892090>,  <45.678799, 32.304729, 37.807346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.610222, 32.518543, 37.892090>,  <45.495930, 32.874897, 38.033325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.610222, 32.518543, 37.892090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897875, -0.120103, -0.423552,
		0.334931, 0.438055, -0.834224,
		0.285732, -0.890889, -0.353092,
		45.695942, 32.251278, 37.786163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.446896, 32.720741, 37.277771>,  <45.495930, 32.874897, 38.033325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.446896, 32.720741, 37.277771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.377949, 32.399040, 37.505272>,  <45.336582, 32.206020, 37.641773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.377949, 32.399040, 37.505272>,  <45.446896, 32.720741, 37.277771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.377949, 32.399040, 37.505272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959194, 0.005661, -0.282692,
		0.224135, -0.594266, -0.772406,
		-0.172367, -0.804249, 0.568748,
		45.326241, 32.157764, 37.675896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.023170, 32.875439, 36.834122>,  <45.446896, 32.720741, 37.277771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.023170, 32.875439, 36.834122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.048210, 33.220005, 36.632511>,  <46.063232, 33.426746, 36.511543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.048210, 33.220005, 36.632511>,  <46.023170, 32.875439, 36.834122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.048210, 33.220005, 36.632511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813245, -0.336776, -0.474567,
		-0.578544, -0.380192, -0.721624,
		0.062599, 0.861415, -0.504029,
		46.066990, 33.478428, 36.481304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.147160, 32.837231, 36.044365>,  <46.023170, 32.875439, 36.834122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.147160, 32.837231, 36.044365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.321552, 33.191875, 36.106113>,  <46.426189, 33.404663, 36.143162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.321552, 33.191875, 36.106113>,  <46.147160, 32.837231, 36.044365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.321552, 33.191875, 36.106113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829446, -0.329314, -0.451188,
		-0.349194, 0.324754, -0.878976,
		0.435984, 0.886615, 0.154372,
		46.452347, 33.457859, 36.152424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.431114, 33.128044, 35.388794>,  <46.147160, 32.837231, 36.044365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.431114, 33.128044, 35.388794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.634628, 33.249954, 35.710850>,  <46.756737, 33.323101, 35.904083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.634628, 33.249954, 35.710850>,  <46.431114, 33.128044, 35.388794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.634628, 33.249954, 35.710850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859998, -0.222559, -0.459207,
		0.039236, 0.926056, -0.375340,
		0.508787, 0.304774, 0.805139,
		46.787266, 33.341385, 35.952393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.006065, 33.650013, 35.318932>,  <46.431114, 33.128044, 35.388794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.006065, 33.650013, 35.318932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.084110, 33.350002, 35.571724>,  <47.130936, 33.169998, 35.723400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.084110, 33.350002, 35.571724>,  <47.006065, 33.650013, 35.318932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.084110, 33.350002, 35.571724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910203, -0.101543, -0.401521,
		0.365323, 0.653571, 0.662861,
		0.195114, -0.750023, 0.631978,
		47.142643, 33.124996, 35.761318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.324234, 34.119312, 34.859249>,  <47.006065, 33.650013, 35.318932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.324234, 34.119312, 34.859249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.590939, 34.295120, 35.099998>,  <47.750961, 34.400604, 35.244450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.590939, 34.295120, 35.099998>,  <47.324234, 34.119312, 34.859249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.590939, 34.295120, 35.099998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182400, 0.686795, -0.703592,
		-0.722605, 0.578911, 0.377761,
		0.666762, 0.439516, 0.601876,
		47.790966, 34.426975, 35.280560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.157898, 34.787663, 34.962772>,  <47.324234, 34.119312, 34.859249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.157898, 34.787663, 34.962772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.552788, 34.724880, 34.951752>,  <47.789722, 34.687210, 34.945141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.552788, 34.724880, 34.951752>,  <47.157898, 34.787663, 34.962772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.552788, 34.724880, 34.951752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086384, 0.672370, -0.735158,
		0.133915, 0.723383, 0.677336,
		0.987221, -0.156959, -0.027552,
		47.848953, 34.677792, 34.943485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.651031, 35.366394, 35.116856>,  <47.157898, 34.787663, 34.962772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.651031, 35.366394, 35.116856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.768959, 35.105644, 34.837387>,  <47.839714, 34.949196, 34.669704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.768959, 35.105644, 34.837387>,  <47.651031, 35.366394, 35.116856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.768959, 35.105644, 34.837387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100891, 0.748318, -0.655622,
		0.950213, 0.122797, 0.286384,
		0.294815, -0.651874, -0.698673,
		47.857403, 34.910084, 34.627785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.717255, 32.030624, 24.254692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.327782, 32.113457, 24.216612>,  <36.094097, 32.163155, 24.193764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.327782, 32.113457, 24.216612>,  <36.717255, 32.030624, 24.254692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327782, 32.113457, 24.216612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089031, 0.038926, 0.995268,
		0.209803, 0.977550, -0.019465,
		-0.973682, 0.207077, -0.095199,
		36.035679, 32.175579, 24.188051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599171, 32.564396, 24.657743>,  <36.717255, 32.030624, 24.254692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599171, 32.564396, 24.657743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.237072, 32.401409, 24.609583>,  <36.019814, 32.303616, 24.580687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.237072, 32.401409, 24.609583>,  <36.599171, 32.564396, 24.657743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237072, 32.401409, 24.609583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178384, 0.107289, 0.978094,
		-0.385628, 0.906893, -0.169810,
		-0.905246, -0.407471, -0.120402,
		35.965500, 32.279167, 24.573462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992565, 32.996288, 25.016287>,  <36.599171, 32.564396, 24.657743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992565, 32.996288, 25.016287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.862434, 32.621136, 24.968056>,  <35.784355, 32.396046, 24.939117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.862434, 32.621136, 24.968056>,  <35.992565, 32.996288, 25.016287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862434, 32.621136, 24.968056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296865, -0.019765, 0.954715,
		-0.897792, 0.346393, -0.271994,
		-0.325330, -0.937881, -0.120577,
		35.764835, 32.339771, 24.931883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300121, 32.874329, 25.312637>,  <35.992565, 32.996288, 25.016287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300121, 32.874329, 25.312637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.462467, 32.508850, 25.320978>,  <35.559875, 32.289562, 25.325983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.462467, 32.508850, 25.320978>,  <35.300121, 32.874329, 25.312637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462467, 32.508850, 25.320978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200759, -0.066874, 0.977355,
		-0.891611, -0.400859, -0.210574,
		0.405864, -0.913695, 0.020851,
		35.584225, 32.234741, 25.327234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882092, 32.558838, 25.714752>,  <35.300121, 32.874329, 25.312637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882092, 32.558838, 25.714752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.171173, 32.282970, 25.732914>,  <35.344624, 32.117451, 25.743811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.171173, 32.282970, 25.732914>,  <34.882092, 32.558838, 25.714752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171173, 32.282970, 25.732914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248081, -0.197524, 0.948388,
		-0.645102, -0.696667, -0.313844,
		0.722702, -0.689666, 0.045407,
		35.387985, 32.076069, 25.746536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556133, 32.050022, 25.935257>,  <34.882092, 32.558838, 25.714752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556133, 32.050022, 25.935257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.941349, 31.964861, 26.001270>,  <35.172478, 31.913763, 26.040878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.941349, 31.964861, 26.001270>,  <34.556133, 32.050022, 25.935257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941349, 31.964861, 26.001270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206761, -0.191522, 0.959463,
		-0.172653, -0.958122, -0.228460,
		0.963038, -0.212890, 0.165035,
		35.230259, 31.900990, 26.050779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657997, 31.260258, 26.241266>,  <34.556133, 32.050022, 25.935257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657997, 31.260258, 26.241266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.962585, 31.489571, 26.362267>,  <35.145340, 31.627157, 26.434866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.962585, 31.489571, 26.362267>,  <34.657997, 31.260258, 26.241266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962585, 31.489571, 26.362267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084623, -0.374766, 0.923249,
		0.642648, -0.728629, -0.236863,
		0.761474, 0.573280, 0.302501,
		35.191029, 31.661554, 26.453016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865932, 30.888853, 26.888271>,  <34.657997, 31.260258, 26.241266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865932, 30.888853, 26.888271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.057541, 31.238808, 26.916868>,  <35.172504, 31.448780, 26.934027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.057541, 31.238808, 26.916868>,  <34.865932, 30.888853, 26.888271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057541, 31.238808, 26.916868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126702, -0.149501, 0.980610,
		0.868613, -0.460672, -0.182464,
		0.479018, 0.874889, 0.071490,
		35.201248, 31.501274, 26.938314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405685, 30.711012, 27.221193>,  <34.865932, 30.888853, 26.888271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405685, 30.711012, 27.221193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.381893, 31.106245, 27.277985>,  <35.367619, 31.343384, 27.312059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.381893, 31.106245, 27.277985>,  <35.405685, 30.711012, 27.221193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381893, 31.106245, 27.277985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095585, -0.135941, 0.986095,
		0.993643, 0.072224, -0.086360,
		-0.059480, 0.988081, 0.141980,
		35.364048, 31.402670, 27.320580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977909, 30.952421, 27.705280>,  <35.405685, 30.711012, 27.221193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977909, 30.952421, 27.705280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.690762, 31.230608, 27.717819>,  <35.518471, 31.397520, 27.725342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.690762, 31.230608, 27.717819>,  <35.977909, 30.952421, 27.705280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690762, 31.230608, 27.717819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067106, 0.024309, 0.997450,
		0.692932, 0.718146, -0.064121,
		-0.717873, 0.695468, 0.031347,
		35.475399, 31.439249, 27.727224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148014, 31.355465, 28.273111>,  <35.977909, 30.952421, 27.705280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148014, 31.355465, 28.273111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.769333, 31.468052, 28.210468>,  <35.542122, 31.535604, 28.172882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.769333, 31.468052, 28.210468>,  <36.148014, 31.355465, 28.273111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769333, 31.468052, 28.210468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111879, 0.168594, 0.979316,
		0.302047, 0.944645, -0.128119,
		-0.946705, 0.281465, -0.156609,
		35.485321, 31.552492, 28.163486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132938, 31.994413, 28.512150>,  <36.148014, 31.355465, 28.273111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132938, 31.994413, 28.512150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.754807, 31.863997, 28.514702>,  <35.527927, 31.785746, 28.516233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.754807, 31.863997, 28.514702>,  <36.132938, 31.994413, 28.512150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754807, 31.863997, 28.514702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092573, 0.287069, 0.953426,
		-0.312690, 0.900715, -0.301558,
		-0.945333, -0.326043, 0.006382,
		35.471207, 31.766184, 28.516617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873158, 32.373405, 29.091228>,  <36.132938, 31.994413, 28.512150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873158, 32.373405, 29.091228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.567451, 32.122898, 29.029665>,  <35.384029, 31.972593, 28.992727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.567451, 32.122898, 29.029665>,  <35.873158, 32.373405, 29.091228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567451, 32.122898, 29.029665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266703, 0.089648, 0.959600,
		-0.587168, 0.774438, -0.235543,
		-0.764266, -0.626266, -0.153907,
		35.338173, 31.935019, 28.983494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244862, 32.661583, 29.320400>,  <35.873158, 32.373405, 29.091228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244862, 32.661583, 29.320400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.198246, 32.265587, 29.352224>,  <35.170277, 32.027988, 29.371319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.198246, 32.265587, 29.352224>,  <35.244862, 32.661583, 29.320400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198246, 32.265587, 29.352224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358984, 0.116675, 0.926022,
		-0.926040, 0.079356, -0.368990,
		-0.116538, -0.989995, 0.079558,
		35.163284, 31.968588, 29.376091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667488, 32.556824, 29.730673>,  <35.244862, 32.661583, 29.320400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667488, 32.556824, 29.730673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.863300, 32.208900, 29.755295>,  <34.980789, 32.000145, 29.770067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.863300, 32.208900, 29.755295>,  <34.667488, 32.556824, 29.730673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863300, 32.208900, 29.755295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300506, -0.102016, 0.948308,
		-0.818568, -0.482725, -0.311323,
		0.489532, -0.869810, 0.061554,
		35.010159, 31.947958, 29.773762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192886, 32.042416, 29.816967>,  <34.667488, 32.556824, 29.730673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192886, 32.042416, 29.816967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.531910, 31.876373, 29.949230>,  <34.735325, 31.776747, 30.028587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.531910, 31.876373, 29.949230>,  <34.192886, 32.042416, 29.816967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531910, 31.876373, 29.949230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423194, -0.152676, 0.893083,
		-0.320245, -0.896868, -0.305074,
		0.847555, -0.415111, 0.330656,
		34.786179, 31.751841, 30.048428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963844, 31.414764, 30.228840>,  <34.192886, 32.042416, 29.816967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963844, 31.414764, 30.228840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.335804, 31.507938, 30.342707>,  <34.558979, 31.563843, 30.411026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.335804, 31.507938, 30.342707>,  <33.963844, 31.414764, 30.228840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335804, 31.507938, 30.342707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249422, -0.169479, 0.953449,
		0.270338, -0.957610, -0.099499,
		0.929896, 0.232936, 0.284665,
		34.614773, 31.577820, 30.428106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160030, 30.839655, 30.650078>,  <33.963844, 31.414764, 30.228840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160030, 30.839655, 30.650078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.430984, 31.110828, 30.764313>,  <34.593555, 31.273533, 30.832853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.430984, 31.110828, 30.764313>,  <34.160030, 30.839655, 30.650078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430984, 31.110828, 30.764313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009780, -0.396488, 0.917988,
		0.735565, -0.619036, -0.275205,
		0.677383, 0.677932, 0.285588,
		34.634201, 31.314207, 30.849989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786709, 30.454155, 30.930222>,  <34.160030, 30.839655, 30.650078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786709, 30.454155, 30.930222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.771084, 30.821863, 31.086895>,  <34.761711, 31.042488, 31.180899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.771084, 30.821863, 31.086895>,  <34.786709, 30.454155, 30.930222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771084, 30.821863, 31.086895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075366, -0.393574, 0.916198,
		0.996391, 0.006266, 0.084654,
		-0.039059, 0.919271, 0.391681,
		34.759365, 31.097645, 31.204399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251442, 30.385765, 31.490953>,  <34.786709, 30.454155, 30.930222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251442, 30.385765, 31.490953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.018124, 30.705975, 31.545990>,  <34.878132, 30.898100, 31.579012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.018124, 30.705975, 31.545990>,  <35.251442, 30.385765, 31.490953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018124, 30.705975, 31.545990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044066, -0.137955, 0.989458,
		0.811065, 0.583207, 0.045192,
		-0.583293, 0.800524, 0.137590,
		34.843136, 30.946131, 31.587267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667210, 30.767447, 32.035618>,  <35.251442, 30.385765, 31.490953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667210, 30.767447, 32.035618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.283806, 30.881052, 32.025936>,  <35.053764, 30.949215, 32.020126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.283806, 30.881052, 32.025936>,  <35.667210, 30.767447, 32.035618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283806, 30.881052, 32.025936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046655, -0.072538, 0.996274,
		0.281202, 0.956072, 0.082780,
		-0.958514, 0.284016, -0.024208,
		34.996250, 30.966257, 32.018673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051094, 30.111347, 32.237251>,  <35.667210, 30.767447, 32.035618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051094, 30.111347, 32.237251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.451069, 30.114143, 32.240635>,  <36.691055, 30.115822, 32.242664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.451069, 30.114143, 32.240635>,  <36.051094, 30.111347, 32.237251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451069, 30.114143, 32.240635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010396, -0.356351, -0.934294,
		-0.003517, 0.934326, -0.356402,
		0.999940, 0.006991, 0.008460,
		36.751049, 30.116241, 32.243172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236240, 30.221970, 31.603777>,  <36.051094, 30.111347, 32.237251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236240, 30.221970, 31.603777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.590954, 30.106808, 31.748400>,  <36.803783, 30.037710, 31.835173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.590954, 30.106808, 31.748400>,  <36.236240, 30.221970, 31.603777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590954, 30.106808, 31.748400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254645, -0.348482, -0.902062,
		0.385705, 0.892003, -0.235715,
		0.886785, -0.287906, 0.361556,
		36.856991, 30.020435, 31.856867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744835, 30.646881, 31.322628>,  <36.236240, 30.221970, 31.603777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744835, 30.646881, 31.322628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.904491, 30.290001, 31.407158>,  <37.000286, 30.075872, 31.457876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.904491, 30.290001, 31.407158>,  <36.744835, 30.646881, 31.322628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904491, 30.290001, 31.407158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163666, -0.157451, -0.973870,
		0.902162, 0.423303, 0.083178,
		0.399146, -0.892202, 0.211326,
		37.024235, 30.022341, 31.470556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382984, 30.527214, 30.861214>,  <36.744835, 30.646881, 31.322628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382984, 30.527214, 30.861214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.257996, 30.174679, 31.002979>,  <37.183002, 29.963158, 31.088037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.257996, 30.174679, 31.002979>,  <37.382984, 30.527214, 30.861214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257996, 30.174679, 31.002979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144691, -0.412898, -0.899211,
		0.938843, -0.229697, 0.256540,
		-0.312471, -0.881337, 0.354412,
		37.164253, 29.910278, 31.109303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889954, 30.099583, 30.726229>,  <37.382984, 30.527214, 30.861214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889954, 30.099583, 30.726229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.558540, 29.879311, 30.766781>,  <37.359692, 29.747147, 30.791113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.558540, 29.879311, 30.766781>,  <37.889954, 30.099583, 30.726229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558540, 29.879311, 30.766781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129208, -0.364199, -0.922315,
		0.544823, -0.751072, 0.372905,
		-0.828537, -0.550681, 0.101380,
		37.309978, 29.714106, 30.797195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123150, 29.454691, 30.595161>,  <37.889954, 30.099583, 30.726229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123150, 29.454691, 30.595161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.728924, 29.397507, 30.558893>,  <37.492390, 29.363197, 30.537132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.728924, 29.397507, 30.558893>,  <38.123150, 29.454691, 30.595161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728924, 29.397507, 30.558893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129974, -0.295817, -0.946361,
		0.108469, -0.944487, 0.310128,
		-0.985566, -0.142960, -0.090672,
		37.433254, 29.354618, 30.531693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893810, 28.733942, 30.313305>,  <38.123150, 29.454691, 30.595161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893810, 28.733942, 30.313305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.624241, 29.009575, 30.206726>,  <37.462498, 29.174953, 30.142778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.624241, 29.009575, 30.206726>,  <37.893810, 28.733942, 30.313305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624241, 29.009575, 30.206726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158789, -0.217121, -0.963143,
		-0.721534, -0.691395, 0.036905,
		-0.673925, 0.689081, -0.266446,
		37.422062, 29.216299, 30.126793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610706, 28.420368, 29.606337>,  <37.893810, 28.733942, 30.313305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610706, 28.420368, 29.606337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.424255, 28.771986, 29.646353>,  <37.312386, 28.982956, 29.670362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.424255, 28.771986, 29.646353>,  <37.610706, 28.420368, 29.606337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424255, 28.771986, 29.646353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191313, 0.010253, -0.981475,
		-0.863785, -0.476632, 0.163393,
		-0.466127, 0.879043, 0.100043,
		37.284416, 29.035700, 29.676365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995937, 28.385471, 29.166273>,  <37.610706, 28.420368, 29.606337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995937, 28.385471, 29.166273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.018360, 28.783117, 29.203356>,  <37.031815, 29.021706, 29.225605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.018360, 28.783117, 29.203356>,  <36.995937, 28.385471, 29.166273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018360, 28.783117, 29.203356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436768, 0.107913, -0.893078,
		-0.897826, 0.009577, 0.440247,
		0.056061, 0.994114, 0.092704,
		37.035179, 29.081352, 29.231167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432468, 28.738121, 28.848370>,  <36.995937, 28.385471, 29.166273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432468, 28.738121, 28.848370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.689163, 29.044815, 28.841610>,  <36.843182, 29.228832, 28.837553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.689163, 29.044815, 28.841610>,  <36.432468, 28.738121, 28.848370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689163, 29.044815, 28.841610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092613, 0.055601, -0.994148,
		-0.761310, 0.639549, 0.106691,
		0.641739, 0.766737, -0.016901,
		36.881683, 29.274836, 28.836540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276886, 29.109074, 28.216047>,  <36.432468, 28.738121, 28.848370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276886, 29.109074, 28.216047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.647690, 29.231842, 28.302263>,  <36.870171, 29.305504, 28.353992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.647690, 29.231842, 28.302263>,  <36.276886, 29.109074, 28.216047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647690, 29.231842, 28.302263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156690, 0.205198, -0.966096,
		-0.340744, 0.929351, 0.142129,
		0.927007, 0.306922, 0.215540,
		36.925793, 29.323919, 28.366926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390724, 29.707052, 27.906178>,  <36.276886, 29.109074, 28.216047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390724, 29.707052, 27.906178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.765999, 29.597971, 27.991440>,  <36.991165, 29.532522, 28.042597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.765999, 29.597971, 27.991440>,  <36.390724, 29.707052, 27.906178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765999, 29.597971, 27.991440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262842, 0.160633, -0.951373,
		0.225203, 0.948594, 0.222382,
		0.938189, -0.272704, 0.213155,
		37.047455, 29.516159, 28.055386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945698, 30.285881, 27.735174>,  <36.390724, 29.707052, 27.906178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945698, 30.285881, 27.735174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.106819, 29.919876, 27.726223>,  <37.203491, 29.700274, 27.720852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.106819, 29.919876, 27.726223>,  <36.945698, 30.285881, 27.735174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106819, 29.919876, 27.726223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281167, 0.146969, -0.948338,
		0.871032, 0.375699, 0.316471,
		0.402801, -0.915014, -0.022380,
		37.227661, 29.645372, 27.719509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599213, 30.346663, 27.546206>,  <36.945698, 30.285881, 27.735174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599213, 30.346663, 27.546206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.479500, 29.984398, 27.426065>,  <37.407673, 29.767040, 27.353981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.479500, 29.984398, 27.426065>,  <37.599213, 30.346663, 27.546206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479500, 29.984398, 27.426065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318351, 0.201960, -0.926210,
		0.899489, -0.372817, 0.227874,
		-0.299285, -0.905660, -0.300348,
		37.389713, 29.712700, 27.335960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133961, 30.163420, 27.054190>,  <37.599213, 30.346663, 27.546206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133961, 30.163420, 27.054190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.819382, 29.933098, 26.964790>,  <37.630634, 29.794905, 26.911150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.819382, 29.933098, 26.964790>,  <38.133961, 30.163420, 27.054190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819382, 29.933098, 26.964790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235653, 0.054760, -0.970293,
		0.570939, -0.815751, 0.092625,
		-0.786446, -0.575805, -0.223499,
		37.583447, 29.760357, 26.897741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436321, 29.573799, 26.661963>,  <38.133961, 30.163420, 27.054190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436321, 29.573799, 26.661963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.044987, 29.606359, 26.585829>,  <37.810184, 29.625896, 26.540150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.044987, 29.606359, 26.585829>,  <38.436321, 29.573799, 26.661963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044987, 29.606359, 26.585829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197283, 0.088111, -0.976379,
		-0.062709, -0.992779, -0.102262,
		-0.978339, 0.081402, -0.190333,
		37.751484, 29.630779, 26.528728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354317, 29.186245, 26.103134>,  <38.436321, 29.573799, 26.661963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354317, 29.186245, 26.103134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.049702, 29.445404, 26.096275>,  <37.866932, 29.600901, 26.092159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.049702, 29.445404, 26.096275>,  <38.354317, 29.186245, 26.103134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049702, 29.445404, 26.096275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180085, 0.186106, -0.965885,
		-0.622605, -0.738642, -0.258403,
		-0.761533, 0.647899, -0.017148,
		37.821243, 29.639774, 26.091131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052994, 29.101913, 25.448252>,  <38.354317, 29.186245, 26.103134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052994, 29.101913, 25.448252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.855526, 29.436935, 25.541887>,  <37.737045, 29.637949, 25.598068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.855526, 29.436935, 25.541887>,  <38.052994, 29.101913, 25.448252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855526, 29.436935, 25.541887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030462, 0.252355, -0.967155,
		-0.869117, -0.484583, -0.099066,
		-0.493667, 0.837554, 0.234087,
		37.707424, 29.688202, 25.612114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575119, 29.142302, 24.963585>,  <38.052994, 29.101913, 25.448252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575119, 29.142302, 24.963585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.621391, 29.512434, 25.108017>,  <37.649155, 29.734514, 25.194675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.621391, 29.512434, 25.108017>,  <37.575119, 29.142302, 24.963585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621391, 29.512434, 25.108017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205842, 0.377961, -0.902648,
		-0.971723, 0.030097, 0.234197,
		0.115684, 0.925332, 0.361079,
		37.656097, 29.790033, 25.216341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.395954, 29.639025, 24.456142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.564175, 29.907183, 24.700668>,  <37.665108, 30.068077, 24.847383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.564175, 29.907183, 24.700668>,  <37.395954, 29.639025, 24.456142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564175, 29.907183, 24.700668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123956, 0.625020, -0.770704,
		-0.898761, 0.399897, 0.179754,
		0.420552, 0.670397, 0.611313,
		37.690342, 30.108301, 24.884062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138939, 30.257147, 24.284748>,  <37.395954, 29.639025, 24.456142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138939, 30.257147, 24.284748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.473663, 30.352798, 24.481754>,  <37.674496, 30.410191, 24.599958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.473663, 30.352798, 24.481754>,  <37.138939, 30.257147, 24.284748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473663, 30.352798, 24.481754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213604, 0.685689, -0.695848,
		-0.504109, 0.687494, 0.522710,
		0.836808, 0.239130, 0.492514,
		37.724705, 30.424538, 24.629509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124470, 30.887426, 24.236212>,  <37.138939, 30.257147, 24.284748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124470, 30.887426, 24.236212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.505039, 30.828514, 24.344362>,  <37.733379, 30.793167, 24.409252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.505039, 30.828514, 24.344362>,  <37.124470, 30.887426, 24.236212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505039, 30.828514, 24.344362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285876, 0.748667, -0.598141,
		-0.114329, 0.646379, 0.754402,
		0.951422, -0.147281, 0.270379,
		37.790466, 30.784330, 24.425476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376503, 31.576853, 24.336367>,  <37.124470, 30.887426, 24.236212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376503, 31.576853, 24.336367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.680046, 31.326538, 24.264231>,  <37.862171, 31.176350, 24.220949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.680046, 31.326538, 24.264231>,  <37.376503, 31.576853, 24.336367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680046, 31.326538, 24.264231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385542, 0.654852, -0.650020,
		0.524868, 0.423747, 0.738209,
		0.758862, -0.625785, -0.180338,
		37.907703, 31.138803, 24.210129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019939, 32.051701, 24.401676>,  <37.376503, 31.576853, 24.336367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019939, 32.051701, 24.401676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.136795, 31.741652, 24.177589>,  <38.206909, 31.555622, 24.043137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.136795, 31.741652, 24.177589>,  <38.019939, 32.051701, 24.401676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136795, 31.741652, 24.177589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303746, 0.630643, -0.714162,
		0.906858, 0.038473, 0.419677,
		0.292142, -0.775119, -0.560217,
		38.224438, 31.509115, 24.009523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733738, 32.177738, 24.022848>,  <38.019939, 32.051701, 24.401676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733738, 32.177738, 24.022848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.511139, 31.919834, 23.813238>,  <38.377579, 31.765093, 23.687471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.511139, 31.919834, 23.813238>,  <38.733738, 32.177738, 24.022848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511139, 31.919834, 23.813238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175155, 0.525495, -0.832572,
		0.812179, -0.555108, -0.179503,
		-0.556495, -0.644756, -0.524026,
		38.344189, 31.726408, 23.656031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155792, 32.006966, 23.505772>,  <38.733738, 32.177738, 24.022848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155792, 32.006966, 23.505772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.806171, 31.888428, 23.351782>,  <38.596397, 31.817305, 23.259388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.806171, 31.888428, 23.351782>,  <39.155792, 32.006966, 23.505772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806171, 31.888428, 23.351782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313895, 0.260330, -0.913071,
		0.370807, -0.918916, -0.134520,
		-0.874055, -0.296348, -0.384975,
		38.543953, 31.799524, 23.236290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273945, 31.669422, 22.875114>,  <39.155792, 32.006966, 23.505772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273945, 31.669422, 22.875114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.882408, 31.735811, 22.827248>,  <38.647488, 31.775644, 22.798529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.882408, 31.735811, 22.827248>,  <39.273945, 31.669422, 22.875114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882408, 31.735811, 22.827248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160752, 0.261954, -0.951598,
		-0.126591, -0.950702, -0.283092,
		-0.978843, 0.165971, -0.119666,
		38.588757, 31.785603, 22.791348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969276, 31.307257, 22.321953>,  <39.273945, 31.669422, 22.875114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969276, 31.307257, 22.321953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.727539, 31.618843, 22.388870>,  <38.582497, 31.805794, 22.429022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.727539, 31.618843, 22.388870>,  <38.969276, 31.307257, 22.321953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727539, 31.618843, 22.388870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005316, 0.213917, -0.976837,
		-0.796709, -0.589453, -0.133420,
		-0.604340, 0.778964, 0.167296,
		38.546238, 31.852531, 22.439058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461468, 31.211946, 21.765186>,  <38.969276, 31.307257, 22.321953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461468, 31.211946, 21.765186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.430099, 31.586376, 21.902365>,  <38.411278, 31.811035, 21.984673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.430099, 31.586376, 21.902365>,  <38.461468, 31.211946, 21.765186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430099, 31.586376, 21.902365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071866, 0.348419, -0.934580,
		-0.994327, -0.048642, -0.094595,
		-0.078419, 0.936076, 0.342946,
		38.406574, 31.867199, 22.005249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932098, 31.483603, 21.282507>,  <38.461468, 31.211946, 21.765186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932098, 31.483603, 21.282507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.136520, 31.794394, 21.429546>,  <38.259174, 31.980867, 21.517769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.136520, 31.794394, 21.429546>,  <37.932098, 31.483603, 21.282507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136520, 31.794394, 21.429546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119007, 0.359585, -0.925492,
		-0.851268, 0.516726, 0.091303,
		0.511057, 0.776977, 0.367597,
		38.289837, 32.027485, 21.539825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602886, 32.059147, 21.095802>,  <37.932098, 31.483603, 21.282507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602886, 32.059147, 21.095802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.974640, 32.182209, 21.177376>,  <38.197693, 32.256046, 21.226320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.974640, 32.182209, 21.177376>,  <37.602886, 32.059147, 21.095802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974640, 32.182209, 21.177376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088317, 0.351095, -0.932166,
		-0.358389, 0.884352, 0.299131,
		0.929386, 0.307659, 0.203932,
		38.253456, 32.274506, 21.238556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487198, 32.510811, 20.632601>,  <37.602886, 32.059147, 21.095802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487198, 32.510811, 20.632601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.876465, 32.553051, 20.714380>,  <38.110023, 32.578396, 20.763449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.876465, 32.553051, 20.714380>,  <37.487198, 32.510811, 20.632601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876465, 32.553051, 20.714380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171172, 0.261599, -0.949877,
		-0.153791, 0.959383, 0.236503,
		0.973164, 0.105600, 0.204451,
		38.168415, 32.584732, 20.775715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712753, 33.192951, 20.355452>,  <37.487198, 32.510811, 20.632601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712753, 33.192951, 20.355452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.035557, 32.959766, 20.393150>,  <38.229240, 32.819855, 20.415770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.035557, 32.959766, 20.393150>,  <37.712753, 33.192951, 20.355452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035557, 32.959766, 20.393150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352285, 0.347166, -0.869121,
		0.473947, 0.734594, 0.485537,
		0.807012, -0.582965, 0.094248,
		38.277660, 32.784878, 20.421425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386147, 33.662617, 20.298920>,  <37.712753, 33.192951, 20.355452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386147, 33.662617, 20.298920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.499172, 33.290810, 20.204138>,  <38.566986, 33.067726, 20.147268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.499172, 33.290810, 20.204138>,  <38.386147, 33.662617, 20.298920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499172, 33.290810, 20.204138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337613, 0.327585, -0.882443,
		0.897874, 0.169344, 0.406381,
		0.282561, -0.929522, -0.236957,
		38.583939, 33.011951, 20.133051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076382, 33.765163, 19.947752>,  <38.386147, 33.662617, 20.298920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076382, 33.765163, 19.947752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.952206, 33.402699, 19.832857>,  <38.877701, 33.185219, 19.763920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.952206, 33.402699, 19.832857>,  <39.076382, 33.765163, 19.947752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952206, 33.402699, 19.832857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353700, 0.170358, -0.919714,
		0.882339, -0.387113, 0.267622,
		-0.310442, -0.906158, -0.287235,
		38.859074, 33.130852, 19.746687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683788, 33.380798, 19.729723>,  <39.076382, 33.765163, 19.947752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683788, 33.380798, 19.729723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.385750, 33.206345, 19.527882>,  <39.206928, 33.101673, 19.406776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.385750, 33.206345, 19.527882>,  <39.683788, 33.380798, 19.729723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385750, 33.206345, 19.527882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547422, 0.032295, -0.836233,
		0.381008, -0.899301, 0.214688,
		-0.745092, -0.436137, -0.504602,
		39.162224, 33.075504, 19.376501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035015, 33.121700, 19.206429>,  <39.683788, 33.380798, 19.729723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035015, 33.121700, 19.206429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.659473, 33.050835, 19.088337>,  <39.434147, 33.008316, 19.017483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.659473, 33.050835, 19.088337>,  <40.035015, 33.121700, 19.206429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659473, 33.050835, 19.088337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283407, 0.089270, -0.954836,
		0.195522, -0.980124, -0.033601,
		-0.938856, -0.177168, -0.295228,
		39.377815, 32.997684, 18.999769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049530, 32.583408, 18.648201>,  <40.035015, 33.121700, 19.206429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049530, 32.583408, 18.648201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.711151, 32.796387, 18.636381>,  <39.508121, 32.924171, 18.629290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.711151, 32.796387, 18.636381>,  <40.049530, 32.583408, 18.648201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711151, 32.796387, 18.636381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164503, 0.207851, -0.964229,
		-0.507254, -0.820550, -0.263420,
		-0.845950, 0.532443, -0.029550,
		39.457367, 32.956120, 18.627516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741642, 32.357460, 18.065578>,  <40.049530, 32.583408, 18.648201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741642, 32.357460, 18.065578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.580147, 32.717255, 18.132412>,  <39.483250, 32.933132, 18.172512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.580147, 32.717255, 18.132412>,  <39.741642, 32.357460, 18.065578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580147, 32.717255, 18.132412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165471, 0.251412, -0.953631,
		-0.899787, -0.357367, -0.250343,
		-0.403736, 0.899489, 0.167083,
		39.459026, 32.987103, 18.182537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364384, 32.555843, 17.456846>,  <39.741642, 32.357460, 18.065578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364384, 32.555843, 17.456846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.442223, 32.886501, 17.668047>,  <39.488926, 33.084896, 17.794767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.442223, 32.886501, 17.668047>,  <39.364384, 32.555843, 17.456846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442223, 32.886501, 17.668047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318570, 0.455846, -0.831094,
		-0.927709, 0.329934, -0.174638,
		0.194598, 0.826649, 0.528000,
		39.500603, 33.134495, 17.826447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083630, 33.139477, 17.016439>,  <39.364384, 32.555843, 17.456846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083630, 33.139477, 17.016439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.367794, 33.286060, 17.256779>,  <39.538292, 33.374012, 17.400982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.367794, 33.286060, 17.256779>,  <39.083630, 33.139477, 17.016439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367794, 33.286060, 17.256779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348548, 0.558489, -0.752732,
		-0.611414, 0.744175, 0.269028,
		0.710413, 0.366462, 0.600849,
		39.580917, 33.396000, 17.437033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996670, 33.962482, 16.962967>,  <39.083630, 33.139477, 17.016439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996670, 33.962482, 16.962967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.347919, 33.802242, 17.067589>,  <39.558670, 33.706097, 17.130362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.347919, 33.802242, 17.067589>,  <38.996670, 33.962482, 16.962967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347919, 33.802242, 17.067589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442810, 0.473566, -0.761351,
		0.181134, 0.784382, 0.593241,
		0.878128, -0.400600, 0.261554,
		39.611359, 33.682064, 17.146055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244614, 33.906338, 16.912750>,  <38.996670, 33.962482, 16.962967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244614, 33.906338, 16.912750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.903427, 34.047150, 16.758593>,  <37.698715, 34.131638, 16.666098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.903427, 34.047150, 16.758593>,  <38.244614, 33.906338, 16.912750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903427, 34.047150, 16.758593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381470, 0.083552, 0.920597,
		0.356278, 0.932252, 0.063022,
		-0.852963, 0.352029, -0.385394,
		37.647537, 34.152760, 16.642975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971569, 34.464836, 17.324728>,  <38.244614, 33.906338, 16.912750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971569, 34.464836, 17.324728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.651524, 34.320862, 17.132782>,  <37.459496, 34.234478, 17.017614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.651524, 34.320862, 17.132782>,  <37.971569, 34.464836, 17.324728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651524, 34.320862, 17.132782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494284, -0.057649, 0.867387,
		-0.339865, 0.931195, -0.131783,
		-0.800110, -0.359933, -0.479867,
		37.411491, 34.212883, 16.988821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486351, 34.688004, 17.759150>,  <37.971569, 34.464836, 17.324728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486351, 34.688004, 17.759150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.298019, 34.409588, 17.542316>,  <37.185020, 34.242538, 17.412216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.298019, 34.409588, 17.542316>,  <37.486351, 34.688004, 17.759150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298019, 34.409588, 17.542316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634161, -0.160149, 0.756433,
		-0.613319, 0.699919, -0.365995,
		-0.470829, -0.696035, -0.542084,
		37.156773, 34.200779, 17.379690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691132, 34.788284, 17.821529>,  <37.486351, 34.688004, 17.759150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691132, 34.788284, 17.821529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.792126, 34.413170, 17.726189>,  <36.852722, 34.188103, 17.668983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.792126, 34.413170, 17.726189>,  <36.691132, 34.788284, 17.821529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792126, 34.413170, 17.726189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651095, -0.346880, 0.675092,
		-0.715771, -0.015260, -0.698168,
		0.252482, -0.937785, -0.238351,
		36.867870, 34.131836, 17.654684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124992, 34.454800, 17.513655>,  <36.691132, 34.788284, 17.821529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124992, 34.454800, 17.513655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.370728, 34.165401, 17.639603>,  <36.518169, 33.991760, 17.715172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.370728, 34.165401, 17.639603>,  <36.124992, 34.454800, 17.513655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370728, 34.165401, 17.639603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691434, -0.301359, 0.656583,
		-0.380149, -0.621072, -0.685387,
		0.614334, -0.723500, 0.314869,
		36.555027, 33.948353, 17.734064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721542, 33.987606, 17.761543>,  <36.124992, 34.454800, 17.513655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721542, 33.987606, 17.761543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.047207, 33.819767, 17.922085>,  <36.242603, 33.719063, 18.018410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.047207, 33.819767, 17.922085>,  <35.721542, 33.987606, 17.761543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047207, 33.819767, 17.922085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541487, -0.299129, 0.785693,
		-0.209615, -0.857008, -0.470743,
		0.814159, -0.419594, 0.401356,
		36.291454, 33.693890, 18.042492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433670, 33.495605, 18.097422>,  <35.721542, 33.987606, 17.761543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433670, 33.495605, 18.097422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.799152, 33.487389, 18.259762>,  <36.018444, 33.482456, 18.357166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.799152, 33.487389, 18.259762>,  <35.433670, 33.495605, 18.097422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799152, 33.487389, 18.259762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387956, -0.341342, 0.856140,
		0.120945, -0.939715, -0.319857,
		0.913708, -0.020544, 0.405852,
		36.073265, 33.481224, 18.381517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502121, 32.867851, 18.424984>,  <35.433670, 33.495605, 18.097422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502121, 32.867851, 18.424984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.780811, 33.101871, 18.591015>,  <35.948025, 33.242283, 18.690634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.780811, 33.101871, 18.591015>,  <35.502121, 32.867851, 18.424984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780811, 33.101871, 18.591015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199584, -0.397692, 0.895549,
		0.689012, -0.706796, -0.160317,
		0.696727, 0.585048, 0.415080,
		35.989830, 33.277386, 18.715538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811459, 32.462975, 18.986334>,  <35.502121, 32.867851, 18.424984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811459, 32.462975, 18.986334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.942627, 32.828426, 19.082453>,  <36.021328, 33.047699, 19.140123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.942627, 32.828426, 19.082453>,  <35.811459, 32.462975, 18.986334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942627, 32.828426, 19.082453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068647, -0.276735, 0.958491,
		0.942207, -0.297815, -0.153466,
		0.327922, 0.913632, 0.240297,
		36.041004, 33.102516, 19.154541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482468, 32.411358, 19.419954>,  <35.811459, 32.462975, 18.986334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482468, 32.411358, 19.419954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.258141, 32.730164, 19.509621>,  <36.123547, 32.921448, 19.563419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.258141, 32.730164, 19.509621>,  <36.482468, 32.411358, 19.419954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258141, 32.730164, 19.509621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049626, -0.237903, 0.970020,
		0.826452, 0.555126, 0.093867,
		-0.560815, 0.797017, 0.224164,
		36.089897, 32.969269, 19.576870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815907, 32.640221, 19.852779>,  <36.482468, 32.411358, 19.419954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815907, 32.640221, 19.852779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.470894, 32.836555, 19.901968>,  <36.263885, 32.954357, 19.931480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.470894, 32.836555, 19.901968>,  <36.815907, 32.640221, 19.852779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470894, 32.836555, 19.901968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016373, -0.215818, 0.976296,
		0.505744, 0.844097, 0.178112,
		-0.862528, 0.490840, 0.122969,
		36.212135, 32.983807, 19.938858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002644, 33.024162, 20.352293>,  <36.815907, 32.640221, 19.852779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002644, 33.024162, 20.352293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.602852, 33.023846, 20.365244>,  <36.362976, 33.023655, 20.373014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.602852, 33.023846, 20.365244>,  <37.002644, 33.024162, 20.352293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602852, 33.023846, 20.365244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032294, -0.099766, 0.994487,
		0.002440, 0.995011, 0.099739,
		-0.999475, -0.000795, 0.032376,
		36.303009, 33.023605, 20.374956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712379, 33.440464, 20.906168>,  <37.002644, 33.024162, 20.352293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712379, 33.440464, 20.906168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.417168, 33.180313, 20.834255>,  <36.240040, 33.024223, 20.791107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.417168, 33.180313, 20.834255>,  <36.712379, 33.440464, 20.906168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417168, 33.180313, 20.834255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024985, -0.239911, 0.970473,
		-0.674305, 0.720730, 0.160812,
		-0.738030, -0.650377, -0.179781,
		36.195759, 32.985199, 20.780321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204823, 33.560101, 21.347076>,  <36.712379, 33.440464, 20.906168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204823, 33.560101, 21.347076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.088993, 33.191242, 21.244474>,  <36.019493, 32.969929, 21.182913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.088993, 33.191242, 21.244474>,  <36.204823, 33.560101, 21.347076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088993, 33.191242, 21.244474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171947, -0.213508, 0.961691,
		-0.941584, 0.322587, -0.096734,
		-0.289576, -0.922145, -0.256503,
		36.002121, 32.914600, 21.167522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659672, 33.427460, 21.774488>,  <36.204823, 33.560101, 21.347076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659672, 33.427460, 21.774488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.772247, 33.059711, 21.664541>,  <35.839794, 32.839062, 21.598574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.772247, 33.059711, 21.664541>,  <35.659672, 33.427460, 21.774488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772247, 33.059711, 21.664541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028755, -0.294396, 0.955251,
		-0.959148, -0.260940, -0.109291,
		0.281438, -0.919370, -0.274866,
		35.856678, 32.783901, 21.582081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177887, 33.069969, 21.984411>,  <35.659672, 33.427460, 21.774488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177887, 33.069969, 21.984411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.494450, 32.831135, 21.932018>,  <35.684387, 32.687832, 21.900581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.494450, 32.831135, 21.932018>,  <35.177887, 33.069969, 21.984411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494450, 32.831135, 21.932018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091571, -0.327657, 0.940349,
		-0.604390, -0.732206, -0.313987,
		0.791408, -0.597090, -0.130984,
		35.731873, 32.652008, 21.892723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002449, 32.372986, 22.159929>,  <35.177887, 33.069969, 21.984411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002449, 32.372986, 22.159929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.397610, 32.395020, 22.217909>,  <35.634708, 32.408241, 22.252697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.397610, 32.395020, 22.217909>,  <35.002449, 32.372986, 22.159929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397610, 32.395020, 22.217909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111747, -0.395155, 0.911792,
		0.107506, -0.916961, -0.384219,
		0.987904, 0.055088, 0.144950,
		35.693981, 32.411545, 22.261395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208797, 31.703779, 22.390503>,  <35.002449, 32.372986, 22.159929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208797, 31.703779, 22.390503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.493958, 31.957481, 22.510166>,  <35.665054, 32.109703, 22.581964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.493958, 31.957481, 22.510166>,  <35.208797, 31.703779, 22.390503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493958, 31.957481, 22.510166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010199, -0.417172, 0.908770,
		0.701194, -0.650911, -0.290933,
		0.712898, 0.634257, 0.299157,
		35.707829, 32.147758, 22.599913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456593, 31.250977, 22.872477>,  <35.208797, 31.703779, 22.390503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456593, 31.250977, 22.872477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.644688, 31.599392, 22.929285>,  <35.757545, 31.808441, 22.963371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.644688, 31.599392, 22.929285>,  <35.456593, 31.250977, 22.872477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644688, 31.599392, 22.929285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044959, -0.137074, 0.989540,
		0.881393, -0.471706, -0.025296,
		0.470239, 0.871036, 0.142023,
		35.785759, 31.860703, 22.971891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844379, 31.090567, 23.412914>,  <35.456593, 31.250977, 22.872477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844379, 31.090567, 23.412914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.804096, 31.487886, 23.390230>,  <35.779926, 31.726278, 23.376619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.804096, 31.487886, 23.390230>,  <35.844379, 31.090567, 23.412914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804096, 31.487886, 23.390230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189426, 0.036813, 0.981205,
		0.976716, 0.109562, 0.184449,
		-0.100712, 0.993298, -0.056710,
		35.773884, 31.785875, 23.373217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341270, 31.317163, 23.902370>,  <35.844379, 31.090567, 23.412914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341270, 31.317163, 23.902370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.048409, 31.584917, 23.851967>,  <35.872692, 31.745569, 23.821726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.048409, 31.584917, 23.851967>,  <36.341270, 31.317163, 23.902370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048409, 31.584917, 23.851967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090280, 0.087996, 0.992021,
		0.675130, 0.737688, -0.003995,
		-0.732153, 0.669383, -0.126007,
		35.828762, 31.785732, 23.814165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.832287, 28.515596, 27.777805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.650883, 28.869881, 27.738117>,  <37.542038, 29.082451, 27.714304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.650883, 28.869881, 27.738117>,  <37.832287, 28.515596, 27.777805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650883, 28.869881, 27.738117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226278, -0.006747, 0.974039,
		0.862047, 0.464191, 0.203477,
		-0.453513, 0.885710, -0.099220,
		37.514828, 29.135593, 27.708351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238907, 29.020805, 28.117567>,  <37.832287, 28.515596, 27.777805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238907, 29.020805, 28.117567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.863190, 29.155144, 28.089472>,  <37.637760, 29.235746, 28.072615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.863190, 29.155144, 28.089472>,  <38.238907, 29.020805, 28.117567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863190, 29.155144, 28.089472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015869, 0.247014, 0.968882,
		0.342744, 0.908951, -0.237348,
		-0.939295, 0.335845, -0.070238,
		37.581402, 29.255898, 28.068399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200729, 29.617111, 28.506924>,  <38.238907, 29.020805, 28.117567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200729, 29.617111, 28.506924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.813019, 29.530085, 28.461016>,  <37.580395, 29.477869, 28.433472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.813019, 29.530085, 28.461016>,  <38.200729, 29.617111, 28.506924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813019, 29.530085, 28.461016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174715, 0.280491, 0.943822,
		-0.173153, 0.934874, -0.309885,
		-0.969274, -0.217567, -0.114769,
		37.522236, 29.464815, 28.426584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879471, 30.101063, 28.851627>,  <38.200729, 29.617111, 28.506924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879471, 30.101063, 28.851627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.577278, 29.839569, 28.834291>,  <37.395962, 29.682673, 28.823891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.577278, 29.839569, 28.834291>,  <37.879471, 30.101063, 28.851627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577278, 29.839569, 28.834291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213123, 0.182665, 0.959798,
		-0.619537, 0.734346, -0.277326,
		-0.755481, -0.653735, -0.043338,
		37.350636, 29.643448, 28.821289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587795, 30.199860, 29.485706>,  <37.879471, 30.101063, 28.851627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587795, 30.199860, 29.485706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.373283, 29.878117, 29.383404>,  <37.244576, 29.685070, 29.322021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.373283, 29.878117, 29.383404>,  <37.587795, 30.199860, 29.485706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373283, 29.878117, 29.383404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386597, -0.035276, 0.921574,
		-0.750299, 0.593095, -0.292045,
		-0.536278, -0.804360, -0.255756,
		37.212399, 29.636808, 29.306677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831982, 30.253088, 29.703386>,  <37.587795, 30.199860, 29.485706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831982, 30.253088, 29.703386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.961414, 29.875376, 29.679296>,  <37.039074, 29.648748, 29.664843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.961414, 29.875376, 29.679296>,  <36.831982, 30.253088, 29.703386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961414, 29.875376, 29.679296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188290, -0.126639, 0.973914,
		-0.927275, -0.303805, -0.218777,
		0.323585, -0.944280, -0.060226,
		37.058491, 29.592093, 29.661228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322777, 29.807947, 29.940342>,  <36.831982, 30.253088, 29.703386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322777, 29.807947, 29.940342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.671120, 29.619370, 29.995968>,  <36.880127, 29.506222, 30.029345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.671120, 29.619370, 29.995968>,  <36.322777, 29.807947, 29.940342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671120, 29.619370, 29.995968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143523, 0.026700, 0.989287,
		-0.470108, -0.881491, -0.044411,
		0.870861, -0.471446, 0.139066,
		36.932377, 29.477936, 30.037687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132835, 29.235994, 30.433701>,  <36.322777, 29.807947, 29.940342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132835, 29.235994, 30.433701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.529747, 29.283058, 30.449398>,  <36.767895, 29.311296, 30.458817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.529747, 29.283058, 30.449398>,  <36.132835, 29.235994, 30.433701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529747, 29.283058, 30.449398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065462, 0.228067, 0.971442,
		0.105350, -0.966510, 0.234008,
		0.992278, 0.117660, 0.039243,
		36.827431, 29.318357, 30.461170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360905, 28.818794, 30.962376>,  <36.132835, 29.235994, 30.433701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360905, 28.818794, 30.962376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.635845, 29.104301, 30.908579>,  <36.800808, 29.275606, 30.876301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.635845, 29.104301, 30.908579>,  <36.360905, 28.818794, 30.962376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635845, 29.104301, 30.908579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115902, 0.075006, 0.990424,
		0.717023, -0.696352, -0.031172,
		0.687346, 0.713770, -0.134490,
		36.842049, 29.318432, 30.868233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856346, 28.668139, 31.501730>,  <36.360905, 28.818794, 30.962376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856346, 28.668139, 31.501730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.936710, 29.043528, 31.389370>,  <36.984928, 29.268761, 31.321955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.936710, 29.043528, 31.389370>,  <36.856346, 28.668139, 31.501730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936710, 29.043528, 31.389370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326508, 0.206198, 0.922429,
		0.923594, -0.277044, -0.264990,
		0.200913, 0.938472, -0.280901,
		36.996983, 29.325069, 31.305099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546112, 28.880867, 31.750523>,  <36.856346, 28.668139, 31.501730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546112, 28.880867, 31.750523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.360222, 29.226889, 31.674932>,  <37.248688, 29.434502, 31.629578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.360222, 29.226889, 31.674932>,  <37.546112, 28.880867, 31.750523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360222, 29.226889, 31.674932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177289, 0.300004, 0.937319,
		0.867526, 0.402090, -0.292784,
		-0.464722, 0.865056, -0.188976,
		37.220806, 29.486404, 31.618240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928371, 29.440935, 32.114147>,  <37.546112, 28.880867, 31.750523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928371, 29.440935, 32.114147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.594093, 29.639896, 32.021019>,  <37.393528, 29.759274, 31.965141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.594093, 29.639896, 32.021019>,  <37.928371, 29.440935, 32.114147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594093, 29.639896, 32.021019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198404, 0.668734, 0.716541,
		0.512107, 0.552615, -0.657543,
		-0.835693, 0.497404, -0.232823,
		37.343384, 29.789118, 31.951172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057945, 30.093441, 32.358395>,  <37.928371, 29.440935, 32.114147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057945, 30.093441, 32.358395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.662018, 30.120104, 32.308079>,  <37.424461, 30.136101, 32.277889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.662018, 30.120104, 32.308079>,  <38.057945, 30.093441, 32.358395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662018, 30.120104, 32.308079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065723, 0.569859, 0.819110,
		0.126284, 0.819035, -0.559673,
		-0.989815, 0.066657, -0.125794,
		37.365074, 30.140100, 32.270340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591320, 30.288614, 32.719242>,  <38.057945, 30.093441, 32.358395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591320, 30.288614, 32.719242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.687504, 30.652985, 32.585140>,  <38.745213, 30.871607, 32.504681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.687504, 30.652985, 32.585140>,  <38.591320, 30.288614, 32.719242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687504, 30.652985, 32.585140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312659, 0.399665, 0.861691,
		0.918926, -0.102377, 0.380911,
		0.240454, 0.910926, -0.335253,
		38.759640, 30.926262, 32.484566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875443, 30.115108, 33.412296>,  <38.591320, 30.288614, 32.719242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875443, 30.115108, 33.412296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.175014, 30.356422, 33.521954>,  <39.354759, 30.501211, 33.587746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.175014, 30.356422, 33.521954>,  <38.875443, 30.115108, 33.412296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175014, 30.356422, 33.521954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303606, 0.680121, -0.667277,
		-0.589007, 0.416512, 0.692523,
		0.748929, 0.603285, 0.274140,
		39.399693, 30.537409, 33.604195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574329, 30.787714, 33.597683>,  <38.875443, 30.115108, 33.412296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574329, 30.787714, 33.597683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.951488, 30.865585, 33.489578>,  <39.177784, 30.912308, 33.424717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.951488, 30.865585, 33.489578>,  <38.574329, 30.787714, 33.597683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951488, 30.865585, 33.489578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323066, 0.731988, -0.599852,
		0.081052, 0.652913, 0.753084,
		0.942899, 0.194677, -0.270263,
		39.234360, 30.923988, 33.408501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562775, 31.542011, 33.568279>,  <38.574329, 30.787714, 33.597683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562775, 31.542011, 33.568279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.882397, 31.424294, 33.358555>,  <39.074169, 31.353662, 33.232719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.882397, 31.424294, 33.358555>,  <38.562775, 31.542011, 33.568279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882397, 31.424294, 33.358555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001413, 0.872941, -0.487823,
		0.601257, 0.389056, 0.697943,
		0.799054, -0.294294, -0.524312,
		39.122112, 31.336006, 33.201260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045280, 32.135963, 33.502331>,  <38.562775, 31.542011, 33.568279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045280, 32.135963, 33.502331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.184807, 31.910542, 33.202801>,  <39.268520, 31.775288, 33.023083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.184807, 31.910542, 33.202801>,  <39.045280, 32.135963, 33.502331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184807, 31.910542, 33.202801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161518, 0.823199, -0.544294,
		0.923169, 0.068908, 0.378167,
		0.348813, -0.563556, -0.748822,
		39.289452, 31.741474, 32.978153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580185, 32.462269, 33.068954>,  <39.045280, 32.135963, 33.502331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580185, 32.462269, 33.068954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.437801, 32.194031, 32.808617>,  <39.352371, 32.033089, 32.652412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.437801, 32.194031, 32.808617>,  <39.580185, 32.462269, 33.068954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437801, 32.194031, 32.808617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220824, 0.616381, -0.755852,
		0.908038, -0.412771, -0.071320,
		-0.355954, -0.670593, -0.650847,
		39.331017, 31.992853, 32.613361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000854, 32.576412, 32.483742>,  <39.580185, 32.462269, 33.068954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000854, 32.576412, 32.483742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.683823, 32.382412, 32.335907>,  <39.493603, 32.266010, 32.247208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.683823, 32.382412, 32.335907>,  <40.000854, 32.576412, 32.483742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683823, 32.382412, 32.335907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006701, 0.599137, -0.800619,
		0.609739, -0.637026, -0.471610,
		-0.792575, -0.485008, -0.369586,
		39.446049, 32.236912, 32.225033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059563, 32.727448, 31.748617>,  <40.000854, 32.576412, 32.483742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059563, 32.727448, 31.748617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.688160, 32.578918, 31.748501>,  <39.465321, 32.489799, 31.748432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.688160, 32.578918, 31.748501>,  <40.059563, 32.727448, 31.748617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688160, 32.578918, 31.748501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169938, 0.425625, -0.888799,
		0.330154, -0.825205, -0.458297,
		-0.928504, -0.371323, -0.000288,
		39.409611, 32.467522, 31.748413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928211, 32.424656, 31.074888>,  <40.059563, 32.727448, 31.748617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928211, 32.424656, 31.074888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.580860, 32.509521, 31.254181>,  <39.372452, 32.560440, 31.361757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.580860, 32.509521, 31.254181>,  <39.928211, 32.424656, 31.074888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580860, 32.509521, 31.254181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291420, 0.513014, -0.807397,
		-0.401248, -0.831748, -0.383661,
		-0.868374, 0.212160, 0.448234,
		39.320347, 32.573170, 31.388651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507320, 32.239594, 30.573685>,  <39.928211, 32.424656, 31.074888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507320, 32.239594, 30.573685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.297195, 32.467312, 30.826651>,  <39.171120, 32.603943, 30.978430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.297195, 32.467312, 30.826651>,  <39.507320, 32.239594, 30.573685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297195, 32.467312, 30.826651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427261, 0.466263, -0.774627,
		-0.735862, -0.677130, -0.001698,
		-0.525315, 0.569293, 0.632416,
		39.139603, 32.638100, 31.016375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886860, 32.172859, 30.369753>,  <39.507320, 32.239594, 30.573685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886860, 32.172859, 30.369753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.881451, 32.497684, 30.603117>,  <38.878204, 32.692581, 30.743135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.881451, 32.497684, 30.603117>,  <38.886860, 32.172859, 30.369753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881451, 32.497684, 30.603117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411017, 0.527378, -0.743598,
		-0.911527, -0.249852, 0.326638,
		-0.013527, 0.812063, 0.583412,
		38.877392, 32.741302, 30.778141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234749, 32.421165, 30.369999>,  <38.886860, 32.172859, 30.369753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234749, 32.421165, 30.369999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.430725, 32.757771, 30.461050>,  <38.548309, 32.959732, 30.515680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.430725, 32.757771, 30.461050>,  <38.234749, 32.421165, 30.369999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430725, 32.757771, 30.461050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355941, 0.431462, -0.828943,
		-0.795780, 0.325108, 0.510919,
		0.489938, 0.841514, 0.227629,
		38.577705, 33.010223, 30.529339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739456, 32.866966, 30.183651>,  <38.234749, 32.421165, 30.369999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739456, 32.866966, 30.183651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.077629, 33.080593, 30.181845>,  <38.280533, 33.208771, 30.180761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.077629, 33.080593, 30.181845>,  <37.739456, 32.866966, 30.183651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077629, 33.080593, 30.181845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335640, 0.524702, -0.782326,
		-0.415449, 0.662915, 0.622853,
		0.845428, 0.534071, -0.004514,
		38.331257, 33.240814, 30.180490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545654, 33.704071, 30.113491>,  <37.739456, 32.866966, 30.183651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545654, 33.704071, 30.113491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.923481, 33.637630, 30.000204>,  <38.150177, 33.597767, 29.932232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.923481, 33.637630, 30.000204>,  <37.545654, 33.704071, 30.113491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923481, 33.637630, 30.000204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173920, 0.478514, -0.860684,
		0.278481, 0.862227, 0.423099,
		0.944564, -0.166098, -0.283216,
		38.206848, 33.587799, 29.915239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842201, 34.356579, 29.841223>,  <37.545654, 33.704071, 30.113491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842201, 34.356579, 29.841223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.047939, 34.054382, 29.678896>,  <38.171383, 33.873066, 29.581501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.047939, 34.054382, 29.678896>,  <37.842201, 34.356579, 29.841223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047939, 34.054382, 29.678896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163516, 0.378132, -0.911196,
		0.841851, 0.535025, 0.070955,
		0.514343, -0.755490, -0.405816,
		38.202244, 33.827736, 29.557152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101810, 34.986042, 30.046124>,  <37.842201, 34.356579, 29.841223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101810, 34.986042, 30.046124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.935322, 35.347458, 30.005371>,  <37.835430, 35.564308, 29.980919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.935322, 35.347458, 30.005371>,  <38.101810, 34.986042, 30.046124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935322, 35.347458, 30.005371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412031, -0.087535, 0.906955,
		0.810551, 0.419470, 0.408720,
		-0.416218, 0.903539, -0.101882,
		37.810455, 35.618519, 29.974806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300987, 35.307930, 30.594093>,  <38.101810, 34.986042, 30.046124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300987, 35.307930, 30.594093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.965515, 35.488762, 30.472603>,  <37.764233, 35.597260, 30.399710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.965515, 35.488762, 30.472603>,  <38.300987, 35.307930, 30.594093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965515, 35.488762, 30.472603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408966, -0.154454, 0.899384,
		0.359680, 0.878504, 0.314421,
		-0.838676, 0.452077, -0.303724,
		37.713913, 35.624386, 30.381485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194920, 35.724495, 31.112221>,  <38.300987, 35.307930, 30.594093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194920, 35.724495, 31.112221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.844894, 35.681351, 30.923483>,  <37.634880, 35.655464, 30.810240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.844894, 35.681351, 30.923483>,  <38.194920, 35.724495, 31.112221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844894, 35.681351, 30.923483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439802, -0.229859, 0.868182,
		-0.202103, 0.967228, 0.153701,
		-0.875059, -0.107865, -0.471844,
		37.582378, 35.648991, 30.781929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735977, 36.088955, 31.453016>,  <38.194920, 35.724495, 31.112221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735977, 36.088955, 31.453016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.513149, 35.805096, 31.280472>,  <37.379452, 35.634781, 31.176945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.513149, 35.805096, 31.280472>,  <37.735977, 36.088955, 31.453016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513149, 35.805096, 31.280472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517647, -0.109453, 0.848564,
		-0.649397, 0.696001, -0.306376,
		-0.557068, -0.709650, -0.431361,
		37.346027, 35.592201, 31.151064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137234, 36.229622, 31.730000>,  <37.735977, 36.088955, 31.453016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137234, 36.229622, 31.730000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.108749, 35.860241, 31.579182>,  <37.091660, 35.638611, 31.488691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.108749, 35.860241, 31.579182>,  <37.137234, 36.229622, 31.730000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108749, 35.860241, 31.579182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469566, -0.302463, 0.829472,
		-0.880021, 0.236114, -0.412084,
		-0.071210, -0.923454, -0.377045,
		37.087387, 35.583206, 31.466068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532219, 35.969501, 32.068508>,  <37.137234, 36.229622, 31.730000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532219, 35.969501, 32.068508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.651894, 35.622463, 31.909628>,  <36.723698, 35.414242, 31.814301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.651894, 35.622463, 31.909628>,  <36.532219, 35.969501, 32.068508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651894, 35.622463, 31.909628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236288, -0.470667, 0.850082,
		-0.924475, -0.160481, -0.345820,
		0.299189, -0.867593, -0.397200,
		36.741650, 35.362186, 31.790468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956268, 35.620449, 32.086266>,  <36.532219, 35.969501, 32.068508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956268, 35.620449, 32.086266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.265926, 35.367790, 32.102840>,  <36.451721, 35.216194, 32.112785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.265926, 35.367790, 32.102840>,  <35.956268, 35.620449, 32.086266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265926, 35.367790, 32.102840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466897, -0.525567, 0.711187,
		-0.427442, -0.569910, -0.701781,
		0.774145, -0.631651, 0.041440,
		36.498169, 35.178295, 32.115273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605095, 35.065102, 32.245319>,  <35.956268, 35.620449, 32.086266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605095, 35.065102, 32.245319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.982704, 34.984821, 32.350033>,  <36.209270, 34.936653, 32.412861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.982704, 34.984821, 32.350033>,  <35.605095, 35.065102, 32.245319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982704, 34.984821, 32.350033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327256, -0.470153, 0.819670,
		-0.041432, -0.859461, -0.509519,
		0.944027, -0.200704, 0.261785,
		36.265911, 34.924610, 32.428570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638966, 34.335800, 32.191563>,  <35.605095, 35.065102, 32.245319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638966, 34.335800, 32.191563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.936844, 34.456017, 32.429924>,  <36.115570, 34.528145, 32.572941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.936844, 34.456017, 32.429924>,  <35.638966, 34.335800, 32.191563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936844, 34.456017, 32.429924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277771, -0.672294, 0.686196,
		0.606849, -0.676534, -0.417177,
		0.744700, 0.300538, 0.595902,
		36.160255, 34.546177, 32.608696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029293, 33.735043, 32.340351>,  <35.638966, 34.335800, 32.191563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029293, 33.735043, 32.340351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.125790, 34.006737, 32.617607>,  <36.183689, 34.169754, 32.783958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.125790, 34.006737, 32.617607>,  <36.029293, 33.735043, 32.340351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125790, 34.006737, 32.617607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133270, -0.684278, 0.716940,
		0.961271, -0.265330, -0.074554,
		0.241241, 0.679238, 0.693137,
		36.198162, 34.210506, 32.825546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597851, 33.422585, 32.755135>,  <36.029293, 33.735043, 32.340351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597851, 33.422585, 32.755135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.372448, 33.679523, 32.962925>,  <36.237206, 33.833687, 33.087597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.372448, 33.679523, 32.962925>,  <36.597851, 33.422585, 32.755135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372448, 33.679523, 32.962925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049385, -0.653885, 0.754980,
		0.824634, 0.399783, 0.400191,
		-0.563507, 0.642345, 0.519473,
		36.203396, 33.872227, 33.118767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022266, 33.518532, 33.406834>,  <36.597851, 33.422585, 32.755135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022266, 33.518532, 33.406834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.654083, 33.644470, 33.499474>,  <36.433174, 33.720032, 33.555058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.654083, 33.644470, 33.499474>,  <37.022266, 33.518532, 33.406834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654083, 33.644470, 33.499474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001803, -0.589123, 0.808041,
		0.390849, 0.744182, 0.541692,
		-0.920453, 0.314846, 0.231599,
		36.377949, 33.738922, 33.568954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.156368, 36.981289, 26.894896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757679, 36.997772, 26.867071>,  <39.518463, 37.007660, 26.850376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757679, 36.997772, 26.867071>,  <40.156368, 36.981289, 26.894896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757679, 36.997772, 26.867071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077701, -0.250404, 0.965018,
		0.022344, 0.967264, 0.252786,
		-0.996726, 0.041204, -0.069562,
		39.458660, 37.010132, 26.846203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876968, 37.338547, 27.565119>,  <40.156368, 36.981289, 26.894896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876968, 37.338547, 27.565119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574551, 37.125706, 27.412664>,  <39.393101, 36.998001, 27.321192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574551, 37.125706, 27.412664>,  <39.876968, 37.338547, 27.565119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574551, 37.125706, 27.412664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246858, -0.307495, 0.918971,
		-0.606188, 0.788867, 0.101124,
		-0.756041, -0.532106, -0.381137,
		39.347740, 36.966072, 27.298323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249527, 37.582535, 27.880432>,  <39.876968, 37.338547, 27.565119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249527, 37.582535, 27.880432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155930, 37.211357, 27.764391>,  <39.099770, 36.988651, 27.694767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155930, 37.211357, 27.764391>,  <39.249527, 37.582535, 27.880432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155930, 37.211357, 27.764391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438579, -0.165554, 0.883312,
		-0.867695, 0.333922, -0.368240,
		-0.233993, -0.927948, -0.290102,
		39.085732, 36.932972, 27.677361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686901, 37.460732, 28.274481>,  <39.249527, 37.582535, 27.880432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686901, 37.460732, 28.274481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737766, 37.082314, 28.155260>,  <38.768284, 36.855263, 28.083727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737766, 37.082314, 28.155260>,  <38.686901, 37.460732, 28.274481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737766, 37.082314, 28.155260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629664, -0.309173, 0.712696,
		-0.766389, 0.097043, -0.635004,
		0.127164, -0.946041, -0.298052,
		38.775917, 36.798500, 28.065845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030586, 37.087570, 28.233913>,  <38.686901, 37.460732, 28.274481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030586, 37.087570, 28.233913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293709, 36.788181, 28.267561>,  <38.451584, 36.608547, 28.287750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293709, 36.788181, 28.267561>,  <38.030586, 37.087570, 28.233913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293709, 36.788181, 28.267561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495315, -0.345748, 0.796945,
		-0.567407, -0.565903, -0.598166,
		0.657808, -0.748473, 0.084120,
		38.491051, 36.563641, 28.292797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674847, 36.455452, 28.173620>,  <38.030586, 37.087570, 28.233913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674847, 36.455452, 28.173620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015171, 36.366501, 28.364061>,  <38.219364, 36.313129, 28.478325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015171, 36.366501, 28.364061>,  <37.674847, 36.455452, 28.173620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015171, 36.366501, 28.364061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525132, -0.392456, 0.755125,
		0.018930, -0.892484, -0.450681,
		0.850810, -0.222373, 0.476101,
		38.270412, 36.299789, 28.506891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595661, 35.752312, 28.317253>,  <37.674847, 36.455452, 28.173620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595661, 35.752312, 28.317253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887680, 35.860081, 28.568474>,  <38.062889, 35.924740, 28.719206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887680, 35.860081, 28.568474>,  <37.595661, 35.752312, 28.317253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887680, 35.860081, 28.568474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438225, -0.520638, 0.732731,
		0.524401, -0.810153, -0.262021,
		0.730043, 0.269420, 0.628053,
		38.106693, 35.940907, 28.756889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527542, 35.230042, 28.788404>,  <37.595661, 35.752312, 28.317253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527542, 35.230042, 28.788404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751476, 35.496593, 28.985390>,  <37.885838, 35.656525, 29.103580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751476, 35.496593, 28.985390>,  <37.527542, 35.230042, 28.788404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751476, 35.496593, 28.985390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458583, -0.245831, 0.853972,
		0.690134, -0.703919, 0.167966,
		0.559837, 0.666382, 0.492462,
		37.919426, 35.696507, 29.133129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962555, 34.924847, 29.285711>,  <37.527542, 35.230042, 28.788404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962555, 34.924847, 29.285711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882957, 35.288956, 29.430933>,  <37.835197, 35.507420, 29.518066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882957, 35.288956, 29.430933>,  <37.962555, 34.924847, 29.285711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882957, 35.288956, 29.430933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527310, -0.411718, 0.743258,
		0.826041, -0.043535, 0.561926,
		-0.198997, 0.910271, 0.363053,
		37.823257, 35.562038, 29.539848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658813, 34.726711, 29.242514>,  <37.962555, 34.924847, 29.285711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658813, 34.726711, 29.242514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616566, 34.340176, 29.148684>,  <38.591217, 34.108253, 29.092386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616566, 34.340176, 29.148684>,  <38.658813, 34.726711, 29.242514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616566, 34.340176, 29.148684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048789, 0.230573, -0.971831,
		0.993209, -0.114092, 0.022793,
		-0.105623, -0.966343, -0.234574,
		38.584877, 34.050274, 29.078312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242249, 34.581051, 28.846577>,  <38.658813, 34.726711, 29.242514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242249, 34.581051, 28.846577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983353, 34.291626, 28.750622>,  <38.828014, 34.117970, 28.693048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983353, 34.291626, 28.750622>,  <39.242249, 34.581051, 28.846577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983353, 34.291626, 28.750622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035704, 0.285571, -0.957692,
		0.761453, -0.628418, -0.158997,
		-0.647236, -0.723561, -0.239886,
		38.789181, 34.074558, 28.678656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670528, 34.162323, 28.369387>,  <39.242249, 34.581051, 28.846577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670528, 34.162323, 28.369387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281322, 34.089214, 28.313040>,  <39.047798, 34.045349, 28.279232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281322, 34.089214, 28.313040>,  <39.670528, 34.162323, 28.369387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281322, 34.089214, 28.313040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142937, 0.001862, -0.989730,
		0.181156, -0.983154, 0.024313,
		-0.973012, -0.182771, -0.140867,
		38.989418, 34.034382, 28.270781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640800, 33.575329, 27.863529>,  <39.670528, 34.162323, 28.369387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640800, 33.575329, 27.863529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278809, 33.740135, 27.821112>,  <39.061611, 33.839020, 27.795662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278809, 33.740135, 27.821112>,  <39.640800, 33.575329, 27.863529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278809, 33.740135, 27.821112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041654, -0.162249, -0.985870,
		-0.423403, -0.896613, 0.129671,
		-0.904983, 0.412019, -0.106045,
		39.007313, 33.863739, 27.789299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309158, 33.146965, 27.316519>,  <39.640800, 33.575329, 27.863529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309158, 33.146965, 27.316519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117554, 33.497429, 27.338001>,  <39.002590, 33.707706, 27.350891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117554, 33.497429, 27.338001>,  <39.309158, 33.146965, 27.316519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117554, 33.497429, 27.338001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160819, -0.027447, -0.986602,
		-0.862950, -0.481232, 0.154052,
		-0.479013, 0.876163, 0.053706,
		38.973850, 33.760277, 27.354113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781677, 32.999428, 26.934189>,  <39.309158, 33.146965, 27.316519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781677, 32.999428, 26.934189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806892, 33.397663, 26.961967>,  <38.822021, 33.636604, 26.978634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806892, 33.397663, 26.961967>,  <38.781677, 32.999428, 26.934189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806892, 33.397663, 26.961967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201634, 0.080855, -0.976118,
		-0.977430, 0.047528, 0.205842,
		0.063037, 0.995592, 0.069446,
		38.825802, 33.696342, 26.982801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166668, 33.325073, 26.574900>,  <38.781677, 32.999428, 26.934189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166668, 33.325073, 26.574900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439285, 33.617523, 26.587248>,  <38.602856, 33.792995, 26.594656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439285, 33.617523, 26.587248>,  <38.166668, 33.325073, 26.574900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439285, 33.617523, 26.587248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053842, 0.092169, -0.994286,
		-0.729796, 0.675985, 0.102183,
		0.681541, 0.731128, 0.030868,
		38.643749, 33.836861, 26.596508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974136, 33.707115, 26.086683>,  <38.166668, 33.325073, 26.574900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974136, 33.707115, 26.086683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340656, 33.852551, 26.153849>,  <38.560570, 33.939812, 26.194149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340656, 33.852551, 26.153849>,  <37.974136, 33.707115, 26.086683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340656, 33.852551, 26.153849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107639, 0.180264, -0.977711,
		-0.385750, 0.913953, 0.126041,
		0.916303, 0.363585, 0.167914,
		38.615547, 33.961628, 26.204224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037437, 34.384403, 25.819595>,  <37.974136, 33.707115, 26.086683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037437, 34.384403, 25.819595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413021, 34.249092, 25.844625>,  <38.638371, 34.167904, 25.859644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413021, 34.249092, 25.844625>,  <38.037437, 34.384403, 25.819595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413021, 34.249092, 25.844625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159352, 0.266479, -0.950577,
		0.304884, 0.902528, 0.304119,
		0.938964, -0.338277, 0.062575,
		38.694710, 34.147610, 25.863398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402760, 34.789307, 25.470737>,  <38.037437, 34.384403, 25.819595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402760, 34.789307, 25.470737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647114, 34.474060, 25.500921>,  <38.793724, 34.284912, 25.519032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647114, 34.474060, 25.500921>,  <38.402760, 34.789307, 25.470737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647114, 34.474060, 25.500921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415099, 0.237669, -0.878183,
		0.674177, 0.567791, 0.472334,
		0.610884, -0.788116, 0.075458,
		38.830379, 34.237625, 25.523560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049488, 35.023273, 25.343699>,  <38.402760, 34.789307, 25.470737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049488, 35.023273, 25.343699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069614, 34.635082, 25.249350>,  <39.081688, 34.402168, 25.192739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069614, 34.635082, 25.249350>,  <39.049488, 35.023273, 25.343699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069614, 34.635082, 25.249350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404657, 0.235728, -0.883564,
		0.913083, -0.050993, 0.404572,
		0.050313, -0.970481, -0.235874,
		39.084709, 34.343937, 25.178587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751560, 34.873257, 25.092175>,  <39.049488, 35.023273, 25.343699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751560, 34.873257, 25.092175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527325, 34.576767, 24.944481>,  <39.392784, 34.398872, 24.855865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527325, 34.576767, 24.944481>,  <39.751560, 34.873257, 25.092175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527325, 34.576767, 24.944481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460509, 0.091534, -0.882923,
		0.688238, -0.664991, 0.290026,
		-0.560589, -0.741221, -0.369232,
		39.359150, 34.354401, 24.833712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273277, 34.549320, 24.598221>,  <39.751560, 34.873257, 25.092175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273277, 34.549320, 24.598221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900204, 34.425732, 24.523783>,  <39.676357, 34.351578, 24.479120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900204, 34.425732, 24.523783>,  <40.273277, 34.549320, 24.598221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900204, 34.425732, 24.523783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164962, 0.093414, -0.981866,
		0.320751, -0.946473, -0.036158,
		-0.932688, -0.308970, -0.186094,
		39.620396, 34.333042, 24.467955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386082, 34.053242, 23.979113>,  <40.273277, 34.549320, 24.598221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386082, 34.053242, 23.979113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002556, 34.166065, 23.965738>,  <39.772442, 34.233761, 23.957714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002556, 34.166065, 23.965738>,  <40.386082, 34.053242, 23.979113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002556, 34.166065, 23.965738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018169, -0.056574, -0.998233,
		-0.283456, -0.957726, 0.049119,
		-0.958813, 0.282063, -0.033437,
		39.714912, 34.250683, 23.955708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.643951, 34.123760, 22.552792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.009418, 34.247662, 22.658064>,  <33.228699, 34.322002, 22.721228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.009418, 34.247662, 22.658064>,  <32.643951, 34.123760, 22.552792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009418, 34.247662, 22.658064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122684, -0.407130, 0.905093,
		0.387504, -0.859243, -0.333980,
		0.913668, 0.309753, 0.263179,
		33.283520, 34.340588, 22.737019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992638, 33.526016, 22.878183>,  <32.643951, 34.123760, 22.552792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992638, 33.526016, 22.878183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.177067, 33.855854, 23.009310>,  <33.287724, 34.053757, 23.087986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.177067, 33.855854, 23.009310>,  <32.992638, 33.526016, 22.878183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177067, 33.855854, 23.009310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214999, -0.254610, 0.942841,
		0.860923, -0.505198, 0.059893,
		0.461072, 0.824590, 0.327817,
		33.315388, 34.103230, 23.107655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376266, 33.350216, 23.504023>,  <32.992638, 33.526016, 22.878183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376266, 33.350216, 23.504023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.397171, 33.749344, 23.520132>,  <33.409714, 33.988819, 23.529799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.397171, 33.749344, 23.520132>,  <33.376266, 33.350216, 23.504023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397171, 33.749344, 23.520132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119681, -0.046297, 0.991732,
		0.991436, -0.047011, -0.121839,
		0.052263, 0.997821, 0.040274,
		33.412849, 34.048691, 23.532215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952515, 33.426456, 23.985394>,  <33.376266, 33.350216, 23.504023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952515, 33.426456, 23.985394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.778622, 33.786369, 24.000397>,  <33.674286, 34.002316, 24.009399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.778622, 33.786369, 24.000397>,  <33.952515, 33.426456, 23.985394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778622, 33.786369, 24.000397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202860, 0.057264, 0.977532,
		0.877416, 0.432571, -0.207423,
		-0.434729, 0.899780, 0.037507,
		33.648201, 34.056305, 24.011648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424416, 33.839066, 24.351994>,  <33.952515, 33.426456, 23.985394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424416, 33.839066, 24.351994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.083591, 34.047684, 24.369797>,  <33.879097, 34.172855, 24.380478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.083591, 34.047684, 24.369797>,  <34.424416, 33.839066, 24.351994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083591, 34.047684, 24.369797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103582, 0.084651, 0.991012,
		0.513093, 0.849012, -0.126151,
		-0.852060, 0.521548, 0.044508,
		33.827972, 34.204147, 24.383150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619930, 34.351875, 24.768639>,  <34.424416, 33.839066, 24.351994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619930, 34.351875, 24.768639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.221142, 34.322796, 24.757605>,  <33.981869, 34.305347, 24.750984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.221142, 34.322796, 24.757605>,  <34.619930, 34.351875, 24.768639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221142, 34.322796, 24.757605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024505, -0.042921, 0.998778,
		-0.073795, 0.996430, 0.041010,
		-0.996972, -0.072700, -0.027585,
		33.922050, 34.300987, 24.749329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335968, 34.838169, 25.152998>,  <34.619930, 34.351875, 24.768639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335968, 34.838169, 25.152998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.025677, 34.585793, 25.158091>,  <33.839500, 34.434368, 25.161146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.025677, 34.585793, 25.158091>,  <34.335968, 34.838169, 25.152998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025677, 34.585793, 25.158091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005878, 0.012948, 0.999899,
		-0.631039, 0.775725, -0.006335,
		-0.775728, -0.630938, 0.012731,
		33.792957, 34.396511, 25.161909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909653, 35.038746, 25.708885>,  <34.335968, 34.838169, 25.152998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909653, 35.038746, 25.708885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.787941, 34.666767, 25.626322>,  <33.714912, 34.443581, 25.576784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.787941, 34.666767, 25.626322>,  <33.909653, 35.038746, 25.708885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787941, 34.666767, 25.626322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110757, -0.180676, 0.977287,
		-0.946122, 0.320230, -0.048022,
		-0.304280, -0.929951, -0.206410,
		33.696655, 34.387783, 25.564400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323601, 34.974411, 26.063313>,  <33.909653, 35.038746, 25.708885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323601, 34.974411, 26.063313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.469398, 34.603844, 26.025602>,  <33.556877, 34.381504, 26.002975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.469398, 34.603844, 26.025602>,  <33.323601, 34.974411, 26.063313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469398, 34.603844, 26.025602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014340, -0.106814, 0.994175,
		-0.931095, -0.361021, -0.052218,
		0.364496, -0.926420, -0.094277,
		33.578747, 34.325916, 25.997318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963684, 34.559761, 26.582073>,  <33.323601, 34.974411, 26.063313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963684, 34.559761, 26.582073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.258656, 34.309921, 26.479254>,  <33.435638, 34.160015, 26.417562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.258656, 34.309921, 26.479254>,  <32.963684, 34.559761, 26.582073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258656, 34.309921, 26.479254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004794, -0.375724, 0.926719,
		-0.675413, -0.684617, -0.274073,
		0.737424, -0.624605, -0.257050,
		33.479881, 34.122540, 26.402138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803001, 33.844318, 26.743885>,  <32.963684, 34.559761, 26.582073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803001, 33.844318, 26.743885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.202957, 33.838482, 26.742226>,  <33.442928, 33.834980, 26.741230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.202957, 33.838482, 26.742226>,  <32.803001, 33.844318, 26.743885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202957, 33.838482, 26.742226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003428, -0.483836, 0.875152,
		-0.014772, -0.875037, -0.483831,
		0.999885, -0.014586, -0.004147,
		33.502922, 33.834106, 26.740982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947121, 33.173046, 27.012922>,  <32.803001, 33.844318, 26.743885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947121, 33.173046, 27.012922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.305771, 33.347679, 27.042484>,  <33.520962, 33.452457, 27.060221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.305771, 33.347679, 27.042484>,  <32.947121, 33.173046, 27.012922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305771, 33.347679, 27.042484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145956, -0.448979, 0.881541,
		0.418048, -0.779623, -0.466287,
		0.896623, 0.436584, 0.073904,
		33.574757, 33.478653, 27.064655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328510, 32.651409, 27.104866>,  <32.947121, 33.173046, 27.012922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328510, 32.651409, 27.104866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.521267, 32.975048, 27.239410>,  <33.636921, 33.169231, 27.320137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.521267, 32.975048, 27.239410>,  <33.328510, 32.651409, 27.104866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521267, 32.975048, 27.239410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211445, -0.479905, 0.851459,
		0.850337, -0.339187, -0.402341,
		0.481889, 0.809100, 0.336362,
		33.665833, 33.217777, 27.340319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860073, 32.444267, 27.567453>,  <33.328510, 32.651409, 27.104866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860073, 32.444267, 27.567453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.813011, 32.825264, 27.679827>,  <33.784775, 33.053860, 27.747250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.813011, 32.825264, 27.679827>,  <33.860073, 32.444267, 27.567453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813011, 32.825264, 27.679827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123249, -0.266704, 0.955866,
		0.985377, 0.147087, -0.086014,
		-0.117655, 0.952489, 0.280932,
		33.777714, 33.111012, 27.764107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594021, 32.386070, 27.595646>,  <33.860073, 32.444267, 27.567453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594021, 32.386070, 27.595646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.865452, 32.095490, 27.639084>,  <35.028309, 31.921141, 27.665146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.865452, 32.095490, 27.639084>,  <34.594021, 32.386070, 27.595646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865452, 32.095490, 27.639084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286194, 0.125332, -0.949939,
		0.676479, 0.675687, 0.292955,
		0.678579, -0.726456, 0.108593,
		35.069027, 31.877552, 27.671661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217533, 32.682957, 27.489843>,  <34.594021, 32.386070, 27.595646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217533, 32.682957, 27.489843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.266739, 32.288723, 27.443371>,  <35.296261, 32.052185, 27.415487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.266739, 32.288723, 27.443371>,  <35.217533, 32.682957, 27.489843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266739, 32.288723, 27.443371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258458, 0.144845, -0.955102,
		0.958158, 0.087462, 0.272550,
		0.123013, -0.985581, -0.116179,
		35.303642, 31.993048, 27.408518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900265, 32.607185, 27.128567>,  <35.217533, 32.682957, 27.489843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900265, 32.607185, 27.128567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.685020, 32.277393, 27.058519>,  <35.555874, 32.079517, 27.016491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.685020, 32.277393, 27.058519>,  <35.900265, 32.607185, 27.128567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685020, 32.277393, 27.058519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181726, 0.089391, -0.979278,
		0.823051, -0.558784, 0.101727,
		-0.538111, -0.824482, -0.175119,
		35.523586, 32.030048, 27.005983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399754, 32.198719, 26.679714>,  <35.900265, 32.607185, 27.128567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399754, 32.198719, 26.679714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.038254, 32.034706, 26.630552>,  <35.821354, 31.936298, 26.601055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.038254, 32.034706, 26.630552>,  <36.399754, 32.198719, 26.679714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038254, 32.034706, 26.630552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172818, -0.086827, -0.981119,
		0.391617, -0.907930, 0.149331,
		-0.903753, -0.410031, -0.122904,
		35.767128, 31.911697, 26.593681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469479, 31.621336, 26.168161>,  <36.399754, 32.198719, 26.679714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469479, 31.621336, 26.168161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.076744, 31.694212, 26.147007>,  <35.841103, 31.737938, 26.134314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.076744, 31.694212, 26.147007>,  <36.469479, 31.621336, 26.168161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076744, 31.694212, 26.147007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031372, -0.119006, -0.992398,
		-0.187101, -0.976034, 0.111129,
		-0.981840, 0.182192, -0.052887,
		35.782192, 31.748869, 26.131142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212170, 31.076998, 25.776045>,  <36.469479, 31.621336, 26.168161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212170, 31.076998, 25.776045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.971149, 31.395264, 25.751232>,  <35.826538, 31.586224, 25.736345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.971149, 31.395264, 25.751232>,  <36.212170, 31.076998, 25.776045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971149, 31.395264, 25.751232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124261, 0.016756, -0.992108,
		-0.788346, -0.605506, -0.108966,
		-0.602553, 0.795665, -0.062031,
		35.790382, 31.633963, 25.732622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883144, 31.002949, 25.115097>,  <36.212170, 31.076998, 25.776045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883144, 31.002949, 25.115097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.805599, 31.386898, 25.196154>,  <35.759071, 31.617268, 25.244787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.805599, 31.386898, 25.196154>,  <35.883144, 31.002949, 25.115097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805599, 31.386898, 25.196154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116357, 0.182607, -0.976276,
		-0.974103, -0.212844, 0.076287,
		-0.193864, 0.959871, 0.202644,
		35.747440, 31.674860, 25.256947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373280, 31.113503, 24.760065>,  <35.883144, 31.002949, 25.115097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373280, 31.113503, 24.760065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.495647, 31.488203, 24.828075>,  <35.569069, 31.713024, 24.868881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.495647, 31.488203, 24.828075>,  <35.373280, 31.113503, 24.760065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495647, 31.488203, 24.828075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265799, 0.255520, -0.929549,
		-0.914201, 0.239177, 0.327156,
		0.305921, 0.936752, 0.170024,
		35.587425, 31.769228, 24.879082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969032, 31.497810, 24.413002>,  <35.373280, 31.113503, 24.760065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969032, 31.497810, 24.413002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.268917, 31.754877, 24.476130>,  <35.448849, 31.909117, 24.514006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.268917, 31.754877, 24.476130>,  <34.969032, 31.497810, 24.413002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268917, 31.754877, 24.476130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035051, 0.276716, -0.960312,
		-0.660830, 0.714430, 0.229985,
		0.749716, 0.642664, 0.157821,
		35.493832, 31.947676, 24.523476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762325, 32.173637, 24.098911>,  <34.969032, 31.497810, 24.413002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762325, 32.173637, 24.098911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.160858, 32.172066, 24.133089>,  <35.399979, 32.171124, 24.153595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.160858, 32.172066, 24.133089>,  <34.762325, 32.173637, 24.098911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160858, 32.172066, 24.133089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084098, 0.227446, -0.970153,
		-0.015618, 0.973783, 0.226943,
		0.996335, -0.003933, 0.085445,
		35.459759, 32.170887, 24.158722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086842, 32.795143, 23.748753>,  <34.762325, 32.173637, 24.098911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086842, 32.795143, 23.748753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.327015, 32.475506, 23.760973>,  <35.471119, 32.283726, 23.768305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.327015, 32.475506, 23.760973>,  <35.086842, 32.795143, 23.748753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327015, 32.475506, 23.760973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289165, 0.181345, -0.939946,
		0.745561, 0.573211, 0.339955,
		0.600436, -0.799089, 0.030549,
		35.507145, 32.235779, 23.770138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686409, 33.026917, 23.525724>,  <35.086842, 32.795143, 23.748753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686409, 33.026917, 23.525724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.716480, 32.632702, 23.464972>,  <35.734524, 32.396172, 23.428520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.716480, 32.632702, 23.464972>,  <35.686409, 33.026917, 23.525724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716480, 32.632702, 23.464972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219306, 0.164926, -0.961615,
		0.972755, 0.038988, 0.228533,
		0.075182, -0.985535, -0.151882,
		35.739037, 32.337040, 23.419407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270832, 33.062012, 23.065681>,  <35.686409, 33.026917, 23.525724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270832, 33.062012, 23.065681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.153828, 32.679718, 23.053015>,  <36.083626, 32.450340, 23.045414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.153828, 32.679718, 23.053015>,  <36.270832, 33.062012, 23.065681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153828, 32.679718, 23.053015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167761, -0.018686, -0.985650,
		0.941430, -0.293630, 0.165802,
		-0.292514, -0.955737, -0.031668,
		36.066074, 32.392998, 23.043514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828678, 32.650520, 22.810896>,  <36.270832, 33.062012, 23.065681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828678, 32.650520, 22.810896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.467548, 32.495560, 22.736246>,  <36.250870, 32.402584, 22.691456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.467548, 32.495560, 22.736246>,  <36.828678, 32.650520, 22.810896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467548, 32.495560, 22.736246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201469, 0.002335, -0.979492,
		0.379894, -0.921907, 0.075941,
		-0.902824, -0.387403, -0.186623,
		36.196701, 32.379337, 22.680260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286423, 32.062435, 22.814312>,  <36.828678, 32.650520, 22.810896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286423, 32.062435, 22.814312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.678261, 31.984516, 22.794525>,  <37.913364, 31.937763, 22.782652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.678261, 31.984516, 22.794525>,  <37.286423, 32.062435, 22.814312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678261, 31.984516, 22.794525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100199, -0.686705, 0.719997,
		-0.174226, -0.700349, -0.692211,
		0.979595, -0.194801, -0.049468,
		37.972137, 31.926075, 22.779684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417957, 31.267317, 22.788246>,  <37.286423, 32.062435, 22.814312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417957, 31.267317, 22.788246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.742931, 31.448130, 22.935553>,  <37.937916, 31.556618, 23.023937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.742931, 31.448130, 22.935553>,  <37.417957, 31.267317, 22.788246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742931, 31.448130, 22.935553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025733, -0.603203, 0.797172,
		0.582489, -0.657124, -0.478429,
		0.812431, 0.452033, 0.368269,
		37.986660, 31.583740, 23.046034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869728, 30.724787, 23.010698>,  <37.417957, 31.267317, 22.788246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869728, 30.724787, 23.010698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.026684, 31.032059, 23.213057>,  <38.120857, 31.216423, 23.334471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.026684, 31.032059, 23.213057>,  <37.869728, 30.724787, 23.010698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026684, 31.032059, 23.213057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023332, -0.558142, 0.829417,
		0.919504, -0.313648, -0.236931,
		0.392387, 0.768181, 0.505896,
		38.144402, 31.262512, 23.364826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554825, 30.419939, 23.351271>,  <37.869728, 30.724787, 23.010698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554825, 30.419939, 23.351271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.422329, 30.746330, 23.540779>,  <38.342831, 30.942165, 23.654484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.422329, 30.746330, 23.540779>,  <38.554825, 30.419939, 23.351271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422329, 30.746330, 23.540779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054927, -0.484592, 0.873014,
		0.941946, 0.315201, 0.115698,
		-0.331241, 0.815977, 0.473773,
		38.322956, 30.991123, 23.682911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931316, 30.366220, 24.030020>,  <38.554825, 30.419939, 23.351271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931316, 30.366220, 24.030020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.645111, 30.638472, 24.092985>,  <38.473389, 30.801823, 24.130764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.645111, 30.638472, 24.092985>,  <38.931316, 30.366220, 24.030020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645111, 30.638472, 24.092985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136909, -0.357576, 0.923794,
		0.685048, 0.639440, 0.349036,
		-0.715518, 0.680629, 0.157412,
		38.430454, 30.842661, 24.140209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120293, 30.679811, 24.630657>,  <38.931316, 30.366220, 24.030020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120293, 30.679811, 24.630657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.726715, 30.687654, 24.559698>,  <38.490570, 30.692360, 24.517122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.726715, 30.687654, 24.559698>,  <39.120293, 30.679811, 24.630657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726715, 30.687654, 24.559698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167054, -0.451103, 0.876698,
		-0.062833, 0.892256, 0.447136,
		-0.983944, 0.019610, -0.177399,
		38.431534, 30.693537, 24.506479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862179, 30.807367, 25.198166>,  <39.120293, 30.679811, 24.630657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862179, 30.807367, 25.198166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.518742, 30.701483, 25.022556>,  <38.312679, 30.637953, 24.917191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.518742, 30.701483, 25.022556>,  <38.862179, 30.807367, 25.198166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518742, 30.701483, 25.022556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369892, -0.273063, 0.888041,
		-0.354956, 0.924859, 0.136537,
		-0.858596, -0.264711, -0.439023,
		38.261162, 30.622068, 24.890850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266396, 31.097469, 25.580402>,  <38.862179, 30.807367, 25.198166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266396, 31.097469, 25.580402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.103874, 30.786633, 25.388134>,  <38.006363, 30.600130, 25.272772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.103874, 30.786633, 25.388134>,  <38.266396, 31.097469, 25.580402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103874, 30.786633, 25.388134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527757, -0.229855, 0.817704,
		-0.745916, 0.585914, -0.316724,
		-0.406304, -0.777091, -0.480673,
		37.981983, 30.553505, 25.243933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669838, 30.980074, 25.954578>,  <38.266396, 31.097469, 25.580402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669838, 30.980074, 25.954578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.667225, 30.643883, 25.737858>,  <37.665657, 30.442167, 25.607824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.667225, 30.643883, 25.737858>,  <37.669838, 30.980074, 25.954578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667225, 30.643883, 25.737858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403348, -0.493567, 0.770521,
		-0.915024, 0.223572, -0.335779,
		-0.006537, -0.840480, -0.541803,
		37.665264, 30.391739, 25.575317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054359, 30.744726, 25.911280>,  <37.669838, 30.980074, 25.954578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054359, 30.744726, 25.911280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.280594, 30.419508, 25.856039>,  <37.416336, 30.224377, 25.822895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.280594, 30.419508, 25.856039>,  <37.054359, 30.744726, 25.911280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280594, 30.419508, 25.856039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248143, -0.327475, 0.911693,
		-0.786473, -0.481371, -0.386966,
		0.565584, -0.813045, -0.138101,
		37.450268, 30.175594, 25.814610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633892, 30.273018, 26.188900>,  <37.054359, 30.744726, 25.911280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633892, 30.273018, 26.188900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.976215, 30.071035, 26.143986>,  <37.181610, 29.949846, 26.117037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.976215, 30.071035, 26.143986>,  <36.633892, 30.273018, 26.188900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976215, 30.071035, 26.143986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130366, -0.420592, 0.897835,
		-0.500597, -0.753736, -0.425776,
		0.855808, -0.504960, -0.112285,
		37.232960, 29.919548, 26.110300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483818, 29.588511, 26.260057>,  <36.633892, 30.273018, 26.188900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483818, 29.588511, 26.260057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.872974, 29.597811, 26.352100>,  <37.106468, 29.603390, 26.407326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.872974, 29.597811, 26.352100>,  <36.483818, 29.588511, 26.260057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872974, 29.597811, 26.352100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211825, -0.309843, 0.926891,
		0.092846, -0.950503, -0.296518,
		0.972887, 0.023248, 0.230108,
		37.164841, 29.604786, 26.421133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573860, 28.994621, 26.591143>,  <36.483818, 29.588511, 26.260057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573860, 28.994621, 26.591143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.876446, 29.240870, 26.679483>,  <37.057995, 29.388618, 26.732489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.876446, 29.240870, 26.679483>,  <36.573860, 28.994621, 26.591143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876446, 29.240870, 26.679483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171176, -0.139550, 0.975307,
		0.631242, -0.775586, -0.000184,
		0.756461, 0.615623, 0.220852,
		37.103386, 29.425556, 26.745739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083809, 28.545967, 26.984056>,  <36.573860, 28.994621, 26.591143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083809, 28.545967, 26.984056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.127430, 28.932896, 27.075617>,  <37.153603, 29.165052, 27.130552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.127430, 28.932896, 27.075617>,  <37.083809, 28.545967, 26.984056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127430, 28.932896, 27.075617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253044, -0.195674, 0.947460,
		0.961290, -0.161240, 0.223437,
		0.109048, 0.967323, 0.228900,
		37.160145, 29.223093, 27.144287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.130657, 33.693150, 23.390766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.836124, 33.961857, 23.423096>,  <39.659405, 34.123081, 23.442493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.836124, 33.961857, 23.423096>,  <40.130657, 33.693150, 23.390766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836124, 33.961857, 23.423096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038666, 0.077484, -0.996244,
		-0.675512, -0.736694, -0.031079,
		-0.736335, 0.671773, 0.080826,
		39.615223, 34.163387, 23.447344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470734, 33.407761, 23.058554>,  <40.130657, 33.693150, 23.390766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470734, 33.407761, 23.058554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.399769, 33.798878, 23.103188>,  <39.357189, 34.033546, 23.129969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.399769, 33.798878, 23.103188>,  <39.470734, 33.407761, 23.058554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399769, 33.798878, 23.103188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187526, 0.144894, -0.971514,
		-0.966106, -0.151428, -0.209067,
		-0.177408, 0.977791, 0.111586,
		39.346546, 34.092216, 23.136663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957924, 33.501644, 22.567657>,  <39.470734, 33.407761, 23.058554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957924, 33.501644, 22.567657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.136185, 33.848618, 22.656160>,  <39.243141, 34.056801, 22.709263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.136185, 33.848618, 22.656160>,  <38.957924, 33.501644, 22.567657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136185, 33.848618, 22.656160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210235, 0.138833, -0.967743,
		-0.870168, 0.477796, -0.120493,
		0.445656, 0.867431, 0.221257,
		39.269882, 34.108849, 22.722538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865643, 33.874039, 22.025473>,  <38.957924, 33.501644, 22.567657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865643, 33.874039, 22.025473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.158756, 34.080685, 22.202620>,  <39.334625, 34.204674, 22.308908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.158756, 34.080685, 22.202620>,  <38.865643, 33.874039, 22.025473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158756, 34.080685, 22.202620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276160, 0.369039, -0.887438,
		-0.621898, 0.772606, 0.127760,
		0.732788, 0.516614, 0.442867,
		39.378593, 34.235668, 22.335480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778477, 34.490974, 21.786398>,  <38.865643, 33.874039, 22.025473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778477, 34.490974, 21.786398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.160889, 34.437279, 21.890692>,  <39.390335, 34.405060, 21.953268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.160889, 34.437279, 21.890692>,  <38.778477, 34.490974, 21.786398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160889, 34.437279, 21.890692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289772, 0.295649, -0.910288,
		0.045111, 0.945818, 0.321549,
		0.956032, -0.134240, 0.260735,
		39.447697, 34.397007, 21.968912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153214, 35.172764, 21.646986>,  <38.778477, 34.490974, 21.786398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153214, 35.172764, 21.646986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.450989, 34.905994, 21.659788>,  <39.629654, 34.745934, 21.667469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.450989, 34.905994, 21.659788>,  <39.153214, 35.172764, 21.646986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450989, 34.905994, 21.659788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391298, 0.396935, -0.830258,
		0.541017, 0.630598, 0.556460,
		0.744437, -0.666925, 0.032003,
		39.674320, 34.705917, 21.669390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658417, 35.532940, 21.203688>,  <39.153214, 35.172764, 21.646986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658417, 35.532940, 21.203688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.826618, 35.173359, 21.252773>,  <39.927540, 34.957611, 21.282225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.826618, 35.173359, 21.252773>,  <39.658417, 35.532940, 21.203688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826618, 35.173359, 21.252773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636940, 0.196165, -0.745538,
		0.646133, 0.391661, 0.655068,
		0.420500, -0.898956, 0.122715,
		39.952766, 34.903671, 21.289587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326759, 35.649792, 21.025526>,  <39.658417, 35.532940, 21.203688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326759, 35.649792, 21.025526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.297920, 35.253113, 20.982924>,  <40.280617, 35.015106, 20.957361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.297920, 35.253113, 20.982924>,  <40.326759, 35.649792, 21.025526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297920, 35.253113, 20.982924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500429, 0.056405, -0.863938,
		0.862770, -0.115587, 0.492206,
		-0.072097, -0.991695, -0.106507,
		40.276291, 34.955605, 20.950972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986977, 35.406380, 20.894073>,  <40.326759, 35.649792, 21.025526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986977, 35.406380, 20.894073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.733170, 35.138397, 20.739906>,  <40.580887, 34.977608, 20.647406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.733170, 35.138397, 20.739906>,  <40.986977, 35.406380, 20.894073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.733170, 35.138397, 20.739906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390468, 0.152489, -0.907900,
		0.667025, -0.726571, 0.164840,
		-0.634517, -0.669957, -0.385417,
		40.542816, 34.937408, 20.624281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403358, 34.969814, 20.431337>,  <40.986977, 35.406380, 20.894073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403358, 34.969814, 20.431337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.021923, 34.943436, 20.313818>,  <40.793060, 34.927608, 20.243307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.021923, 34.943436, 20.313818>,  <41.403358, 34.969814, 20.431337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021923, 34.943436, 20.313818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281699, 0.149244, -0.947825,
		0.106348, -0.986599, -0.123742,
		-0.953591, -0.065942, -0.293796,
		40.735847, 34.923653, 20.225679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477554, 34.606041, 19.809772>,  <41.403358, 34.969814, 20.431337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477554, 34.606041, 19.809772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.112251, 34.768673, 19.799566>,  <40.893070, 34.866253, 19.793442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.112251, 34.768673, 19.799566>,  <41.477554, 34.606041, 19.809772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112251, 34.768673, 19.799566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063528, 0.080267, -0.994747,
		-0.402399, -0.910081, -0.099133,
		-0.913257, 0.406583, -0.025516,
		40.838272, 34.890648, 19.791912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112701, 34.307701, 19.321766>,  <41.477554, 34.606041, 19.809772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112701, 34.307701, 19.321766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.907043, 34.645775, 19.380161>,  <40.783649, 34.848621, 19.415199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.907043, 34.645775, 19.380161>,  <41.112701, 34.307701, 19.321766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907043, 34.645775, 19.380161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225059, 0.297189, -0.927916,
		-0.827649, -0.444228, -0.343015,
		-0.514146, 0.845187, 0.145990,
		40.752800, 34.899330, 19.423958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317638, 34.497696, 18.681482>,  <41.112701, 34.307701, 19.321766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317638, 34.497696, 18.681482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.035603, 34.743439, 18.823135>,  <40.866383, 34.890884, 18.908127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.035603, 34.743439, 18.823135>,  <41.317638, 34.497696, 18.681482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035603, 34.743439, 18.823135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008610, 0.506782, -0.862031,
		-0.709065, -0.604761, -0.362616,
		-0.705090, 0.614358, 0.354135,
		40.824074, 34.927746, 18.929377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804443, 34.532055, 18.079859>,  <41.317638, 34.497696, 18.681482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804443, 34.532055, 18.079859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.825794, 34.846809, 18.325775>,  <40.838604, 35.035660, 18.473326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.825794, 34.846809, 18.325775>,  <40.804443, 34.532055, 18.079859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825794, 34.846809, 18.325775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040301, 0.616864, -0.786037,
		-0.997761, 0.017182, 0.064640,
		0.053380, 0.786882, 0.614790,
		40.841808, 35.082874, 18.510212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314796, 34.032085, 18.280958>,  <40.804443, 34.532055, 18.079859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314796, 34.032085, 18.280958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.065285, 33.892422, 18.001247>,  <39.915577, 33.808624, 17.833422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.065285, 33.892422, 18.001247>,  <40.314796, 34.032085, 18.280958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065285, 33.892422, 18.001247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555961, -0.430635, 0.710958,
		-0.549372, 0.832250, 0.074500,
		-0.623777, -0.349162, -0.699277,
		39.878151, 33.787674, 17.791464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700970, 34.220787, 18.490221>,  <40.314796, 34.032085, 18.280958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700970, 34.220787, 18.490221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.619587, 33.898949, 18.267071>,  <39.570759, 33.705845, 18.133181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.619587, 33.898949, 18.267071>,  <39.700970, 34.220787, 18.490221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619587, 33.898949, 18.267071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530193, -0.388477, 0.753645,
		-0.823105, 0.449114, -0.347556,
		-0.203455, -0.804601, -0.557874,
		39.558552, 33.657570, 18.099709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944916, 34.173531, 18.458731>,  <39.700970, 34.220787, 18.490221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944916, 34.173531, 18.458731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.094288, 33.808598, 18.391565>,  <39.183910, 33.589638, 18.351267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.094288, 33.808598, 18.391565>,  <38.944916, 34.173531, 18.458731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094288, 33.808598, 18.391565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446557, -0.335449, 0.829495,
		-0.813102, -0.234779, -0.532677,
		0.373433, -0.912334, -0.167912,
		39.206318, 33.534897, 18.341192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384113, 33.643551, 18.404938>,  <38.944916, 34.173531, 18.458731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384113, 33.643551, 18.404938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.717964, 33.443886, 18.498087>,  <38.918274, 33.324085, 18.553976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.717964, 33.443886, 18.498087>,  <38.384113, 33.643551, 18.404938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717964, 33.443886, 18.498087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496364, -0.498328, 0.710839,
		-0.238779, -0.708876, -0.663686,
		0.834630, -0.499163, 0.232871,
		38.968353, 33.294136, 18.567947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221546, 32.952168, 18.462929>,  <38.384113, 33.643551, 18.404938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221546, 32.952168, 18.462929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.555534, 33.009109, 18.675552>,  <38.755928, 33.043274, 18.803127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.555534, 33.009109, 18.675552>,  <38.221546, 32.952168, 18.462929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555534, 33.009109, 18.675552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403073, -0.499404, 0.766895,
		0.374637, -0.854593, -0.359608,
		0.834973, 0.142359, 0.531559,
		38.806026, 33.051819, 18.835020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100029, 32.435917, 19.043694>,  <38.221546, 32.952168, 18.462929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100029, 32.435917, 19.043694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.453018, 32.593597, 19.146336>,  <38.664810, 32.688206, 19.207922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.453018, 32.593597, 19.146336>,  <38.100029, 32.435917, 19.043694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453018, 32.593597, 19.146336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161469, -0.258509, 0.952419,
		0.441783, -0.881916, -0.164475,
		0.882471, 0.394205, 0.256607,
		38.717758, 32.711861, 19.223318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576725, 31.920547, 19.386620>,  <38.100029, 32.435917, 19.043694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576725, 31.920547, 19.386620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.650246, 32.297836, 19.497286>,  <38.694359, 32.524212, 19.563686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.650246, 32.297836, 19.497286>,  <38.576725, 31.920547, 19.386620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650246, 32.297836, 19.497286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281820, -0.219079, 0.934121,
		0.941697, -0.249665, 0.225552,
		0.183804, 0.943224, 0.276667,
		38.705387, 32.580803, 19.580286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018517, 31.807560, 19.894581>,  <38.576725, 31.920547, 19.386620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018517, 31.807560, 19.894581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.866913, 32.170750, 19.966061>,  <38.775951, 32.388664, 20.008949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.866913, 32.170750, 19.966061>,  <39.018517, 31.807560, 19.894581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866913, 32.170750, 19.966061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129015, -0.243069, 0.961391,
		0.916353, 0.341325, 0.209268,
		-0.379014, 0.907973, 0.178701,
		38.753208, 32.443142, 20.019670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316868, 32.026871, 20.596994>,  <39.018517, 31.807560, 19.894581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316868, 32.026871, 20.596994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.024529, 32.295055, 20.545860>,  <38.849125, 32.455967, 20.515179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.024529, 32.295055, 20.545860>,  <39.316868, 32.026871, 20.596994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024529, 32.295055, 20.545860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254233, -0.093591, 0.962604,
		0.633422, 0.736020, 0.238854,
		-0.730850, 0.670459, -0.127838,
		38.805275, 32.496193, 20.507509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416122, 32.677612, 21.008430>,  <39.316868, 32.026871, 20.596994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416122, 32.677612, 21.008430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.024910, 32.610088, 20.959505>,  <38.790184, 32.569572, 20.930151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.024910, 32.610088, 20.959505>,  <39.416122, 32.677612, 21.008430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024910, 32.610088, 20.959505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126057, 0.011608, 0.991955,
		-0.166036, 0.985580, -0.032633,
		-0.978030, -0.168814, -0.122312,
		38.731503, 32.559444, 20.922812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393353, 32.671120, 21.641008>,  <39.416122, 32.677612, 21.008430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393353, 32.671120, 21.641008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.028095, 32.579422, 21.506178>,  <38.808941, 32.524403, 21.425280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.028095, 32.579422, 21.506178>,  <39.393353, 32.671120, 21.641008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028095, 32.579422, 21.506178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322818, -0.098257, 0.941347,
		-0.248920, 0.968397, 0.015718,
		-0.913142, -0.229246, -0.337074,
		38.754154, 32.510647, 21.405056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838814, 33.117317, 21.950878>,  <39.393353, 32.671120, 21.641008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838814, 33.117317, 21.950878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.660648, 32.778946, 21.833574>,  <38.553749, 32.575924, 21.763191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.660648, 32.778946, 21.833574>,  <38.838814, 33.117317, 21.950878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660648, 32.778946, 21.833574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288483, -0.174478, 0.941454,
		-0.847574, 0.503941, -0.166322,
		-0.445417, -0.845932, -0.293261,
		38.527023, 32.525166, 21.745596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240086, 33.127762, 22.286079>,  <38.838814, 33.117317, 21.950878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240086, 33.127762, 22.286079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.321445, 32.743568, 22.210079>,  <38.370262, 32.513054, 22.164478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.321445, 32.743568, 22.210079>,  <38.240086, 33.127762, 22.286079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321445, 32.743568, 22.210079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382693, -0.256611, 0.887523,
		-0.901207, -0.107810, -0.419765,
		0.203400, -0.960483, -0.190002,
		38.382465, 32.455425, 22.153078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586647, 32.791183, 22.494251>,  <38.240086, 33.127762, 22.286079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586647, 32.791183, 22.494251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.870049, 32.509865, 22.470911>,  <38.040089, 32.341076, 22.456907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.870049, 32.509865, 22.470911>,  <37.586647, 32.791183, 22.494251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870049, 32.509865, 22.470911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393650, -0.462477, 0.794452,
		-0.585719, -0.539901, -0.604517,
		0.708501, -0.703294, -0.058349,
		38.082600, 32.298878, 22.453407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989529, 32.331985, 22.170212>,  <37.586647, 32.791183, 22.494251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989529, 32.331985, 22.170212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.591328, 32.323509, 22.207148>,  <36.352406, 32.318424, 22.229309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.591328, 32.323509, 22.207148>,  <36.989529, 32.331985, 22.170212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591328, 32.323509, 22.207148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094413, 0.141154, -0.985475,
		0.007850, -0.989761, -0.142520,
		-0.995502, -0.021192, 0.092338,
		36.292679, 32.317150, 22.234848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747395, 31.894470, 21.682438>,  <36.989529, 32.331985, 22.170212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747395, 31.894470, 21.682438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.423519, 32.115314, 21.762011>,  <36.229195, 32.247822, 21.809753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.423519, 32.115314, 21.762011>,  <36.747395, 31.894470, 21.682438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423519, 32.115314, 21.762011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185268, 0.081159, -0.979331,
		-0.556844, -0.829812, 0.036575,
		-0.809692, 0.552110, 0.198930,
		36.180611, 32.280949, 21.821690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266926, 31.604826, 21.231281>,  <36.747395, 31.894470, 21.682438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266926, 31.604826, 21.231281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.155411, 31.978128, 21.321886>,  <36.088501, 32.202110, 21.376249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.155411, 31.978128, 21.321886>,  <36.266926, 31.604826, 21.231281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155411, 31.978128, 21.321886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223923, 0.166195, -0.960332,
		-0.933883, -0.318446, 0.162646,
		-0.278783, 0.933258, 0.226514,
		36.071777, 32.258106, 21.389841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652225, 31.740582, 20.824898>,  <36.266926, 31.604826, 21.231281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652225, 31.740582, 20.824898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.768524, 32.104198, 20.944304>,  <35.838303, 32.322369, 21.015947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.768524, 32.104198, 20.944304>,  <35.652225, 31.740582, 20.824898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768524, 32.104198, 20.944304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245686, 0.372464, -0.894935,
		-0.924719, 0.186858, 0.331631,
		0.290747, 0.909040, 0.298516,
		35.855747, 32.376911, 21.033857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167488, 32.252426, 20.572626>,  <35.652225, 31.740582, 20.824898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167488, 32.252426, 20.572626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.492805, 32.477024, 20.633657>,  <35.687996, 32.611782, 20.670277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.492805, 32.477024, 20.633657>,  <35.167488, 32.252426, 20.572626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492805, 32.477024, 20.633657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204824, 0.521724, -0.828161,
		-0.544611, 0.642286, 0.539322,
		0.813293, 0.561492, 0.152581,
		35.736794, 32.645470, 20.679432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991100, 33.003670, 20.390451>,  <35.167488, 32.252426, 20.572626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991100, 33.003670, 20.390451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.390842, 32.993549, 20.380222>,  <35.630688, 32.987476, 20.374084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.390842, 32.993549, 20.380222>,  <34.991100, 33.003670, 20.390451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390842, 32.993549, 20.380222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009486, 0.500355, -0.865768,
		0.034704, 0.865451, 0.499791,
		0.999353, -0.025304, -0.025574,
		35.690647, 32.985958, 20.372551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159168, 33.725498, 20.214701>,  <34.991100, 33.003670, 20.390451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159168, 33.725498, 20.214701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.462654, 33.479534, 20.128681>,  <35.644745, 33.331955, 20.077070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.462654, 33.479534, 20.128681>,  <35.159168, 33.725498, 20.214701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462654, 33.479534, 20.128681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048099, 0.382094, -0.922871,
		0.649650, 0.689848, 0.319475,
		0.758710, -0.614910, -0.215046,
		35.690266, 33.295063, 20.064167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007294, 34.409824, 20.564159>,  <35.159168, 33.725498, 20.214701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007294, 34.409824, 20.564159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.922958, 34.800755, 20.556416>,  <34.872356, 35.035313, 20.551769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.922958, 34.800755, 20.556416>,  <35.007294, 34.409824, 20.564159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922958, 34.800755, 20.556416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565181, -0.105720, 0.818165,
		0.797569, 0.183446, 0.574657,
		-0.210842, 0.977329, -0.019361,
		34.859707, 35.093952, 20.550608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335262, 34.843590, 21.118464>,  <35.007294, 34.409824, 20.564159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335262, 34.843590, 21.118464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.994987, 35.014332, 20.995747>,  <34.790821, 35.116779, 20.922117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.994987, 35.014332, 20.995747>,  <35.335262, 34.843590, 21.118464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994987, 35.014332, 20.995747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441140, -0.262315, 0.858246,
		0.285872, 0.865439, 0.411452,
		-0.850689, 0.426857, -0.306791,
		34.739780, 35.142387, 20.903709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148418, 35.285915, 21.622850>,  <35.335262, 34.843590, 21.118464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148418, 35.285915, 21.622850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.805424, 35.242622, 21.421652>,  <34.599628, 35.216648, 21.300934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.805424, 35.242622, 21.421652>,  <35.148418, 35.285915, 21.622850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805424, 35.242622, 21.421652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450801, -0.313157, 0.835890,
		-0.247983, 0.943514, 0.219739,
		-0.857487, -0.108228, -0.502994,
		34.548180, 35.210155, 21.270754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754711, 35.655804, 22.048697>,  <35.148418, 35.285915, 21.622850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754711, 35.655804, 22.048697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.533169, 35.420609, 21.812895>,  <34.400242, 35.279491, 21.671413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.533169, 35.420609, 21.812895>,  <34.754711, 35.655804, 22.048697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533169, 35.420609, 21.812895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591987, -0.219778, 0.775402,
		-0.585485, 0.778441, -0.226354,
		-0.553857, -0.587986, -0.589504,
		34.367012, 35.244213, 21.636044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056004, 35.856277, 22.084080>,  <34.754711, 35.655804, 22.048697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056004, 35.856277, 22.084080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.024113, 35.471443, 21.979744>,  <34.004978, 35.240543, 21.917143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.024113, 35.471443, 21.979744>,  <34.056004, 35.856277, 22.084080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024113, 35.471443, 21.979744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496088, -0.188670, 0.847526,
		-0.864604, 0.196969, -0.462237,
		-0.079726, -0.962085, -0.260839,
		34.000195, 35.182819, 21.901493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342590, 35.570862, 22.264120>,  <34.056004, 35.856277, 22.084080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342590, 35.570862, 22.264120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.538742, 35.226341, 22.210911>,  <33.656433, 35.019630, 22.178986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.538742, 35.226341, 22.210911>,  <33.342590, 35.570862, 22.264120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538742, 35.226341, 22.210911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509385, -0.407109, 0.758149,
		-0.707148, -0.304018, -0.638369,
		0.490376, -0.861299, -0.133024,
		33.685856, 34.967953, 22.171003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826645, 35.078457, 22.365484>,  <33.342590, 35.570862, 22.264120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826645, 35.078457, 22.365484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.173325, 34.880768, 22.392529>,  <33.381332, 34.762154, 22.408756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.173325, 34.880768, 22.392529>,  <32.826645, 35.078457, 22.365484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173325, 34.880768, 22.392529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270615, -0.351989, 0.896031,
		-0.419043, -0.794887, -0.438814,
		0.866701, -0.494225, 0.067610,
		33.433334, 34.732502, 22.412811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.921303, 37.909576, 20.176432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.074257, 37.539974, 20.175940>,  <39.166031, 37.318214, 20.175644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.074257, 37.539974, 20.175940>,  <38.921303, 37.909576, 20.176432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074257, 37.539974, 20.175940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049760, 0.019261, 0.998576,
		-0.922662, -0.381903, 0.053344,
		0.382386, -0.924002, -0.001232,
		39.188972, 37.262775, 20.175570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538555, 37.584461, 20.623423>,  <38.921303, 37.909576, 20.176432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538555, 37.584461, 20.623423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.880680, 37.379459, 20.593004>,  <39.085957, 37.256458, 20.574753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.880680, 37.379459, 20.593004>,  <38.538555, 37.584461, 20.623423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880680, 37.379459, 20.593004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014624, -0.122834, 0.992320,
		-0.517906, -0.849856, -0.097566,
		0.855313, -0.512501, -0.076045,
		39.137276, 37.225708, 20.570190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453804, 37.023205, 21.053633>,  <38.538555, 37.584461, 20.623423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453804, 37.023205, 21.053633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.850037, 37.065357, 21.018677>,  <39.087776, 37.090649, 20.997704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.850037, 37.065357, 21.018677>,  <38.453804, 37.023205, 21.053633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850037, 37.065357, 21.018677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093372, -0.053209, 0.994208,
		0.100117, -0.993008, -0.062547,
		0.990585, 0.105378, -0.087392,
		39.147213, 37.096970, 20.992458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722733, 36.546574, 21.475235>,  <38.453804, 37.023205, 21.053633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722733, 36.546574, 21.475235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.997875, 36.832500, 21.424810>,  <39.162960, 37.004055, 21.394556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.997875, 36.832500, 21.424810>,  <38.722733, 36.546574, 21.475235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997875, 36.832500, 21.424810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151976, 0.027991, 0.987988,
		0.709755, -0.698755, -0.089381,
		0.687860, 0.714813, -0.126061,
		39.204235, 37.046944, 21.386992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228214, 36.393761, 21.976532>,  <38.722733, 36.546574, 21.475235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228214, 36.393761, 21.976532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.323296, 36.770466, 21.881388>,  <39.380344, 36.996490, 21.824301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.323296, 36.770466, 21.881388>,  <39.228214, 36.393761, 21.976532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323296, 36.770466, 21.881388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396519, 0.129467, 0.908852,
		0.886720, -0.310349, -0.342653,
		0.237699, 0.941765, -0.237860,
		39.394604, 37.052994, 21.810030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901619, 36.432407, 22.184362>,  <39.228214, 36.393761, 21.976532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901619, 36.432407, 22.184362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.742805, 36.799114, 22.166950>,  <39.647518, 37.019138, 22.156504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.742805, 36.799114, 22.166950>,  <39.901619, 36.432407, 22.184362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742805, 36.799114, 22.166950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235787, 0.147723, 0.960512,
		0.886998, 0.371096, -0.274814,
		-0.397038, 0.916769, -0.043531,
		39.623695, 37.074146, 22.153891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337578, 36.769638, 22.678637>,  <39.901619, 36.432407, 22.184362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337578, 36.769638, 22.678637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.028297, 37.015144, 22.614824>,  <39.842728, 37.162449, 22.576536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.028297, 37.015144, 22.614824>,  <40.337578, 36.769638, 22.678637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028297, 37.015144, 22.614824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038396, 0.296411, 0.954288,
		0.632998, 0.731731, -0.252752,
		-0.773201, 0.613767, -0.159532,
		39.796337, 37.199276, 22.566965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407097, 37.294044, 23.073141>,  <40.337578, 36.769638, 22.678637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407097, 37.294044, 23.073141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.014629, 37.337254, 23.009102>,  <39.779148, 37.363178, 22.970678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.014629, 37.337254, 23.009102>,  <40.407097, 37.294044, 23.073141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014629, 37.337254, 23.009102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119478, 0.311778, 0.942613,
		0.151739, 0.943994, -0.293002,
		-0.981173, 0.108024, -0.160096,
		39.720276, 37.369659, 22.961073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181133, 37.939232, 23.377954>,  <40.407097, 37.294044, 23.073141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181133, 37.939232, 23.377954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.865944, 37.694164, 23.353487>,  <39.676830, 37.547123, 23.338806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.865944, 37.694164, 23.353487>,  <40.181133, 37.939232, 23.377954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865944, 37.694164, 23.353487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235732, 0.208415, 0.949207,
		-0.568798, 0.762367, -0.308650,
		-0.787971, -0.612666, -0.061169,
		39.629551, 37.510365, 23.335136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657936, 38.296471, 23.718267>,  <40.181133, 37.939232, 23.377954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657936, 38.296471, 23.718267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.540161, 37.914341, 23.707987>,  <39.469494, 37.685062, 23.701818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.540161, 37.914341, 23.707987>,  <39.657936, 38.296471, 23.718267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540161, 37.914341, 23.707987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334869, 0.077948, 0.939035,
		-0.895079, 0.285098, -0.342860,
		-0.294442, -0.955324, -0.025701,
		39.451828, 37.627743, 23.700277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972961, 38.293064, 23.952436>,  <39.657936, 38.296471, 23.718267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972961, 38.293064, 23.952436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.076977, 37.910892, 24.008339>,  <39.139385, 37.681587, 24.041882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.076977, 37.910892, 24.008339>,  <38.972961, 38.293064, 23.952436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076977, 37.910892, 24.008339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425132, 0.016671, 0.904978,
		-0.866974, -0.294742, -0.401849,
		0.260036, -0.955431, 0.139758,
		39.154987, 37.624264, 24.050266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430447, 38.086212, 24.319197>,  <38.972961, 38.293064, 23.952436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430447, 38.086212, 24.319197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.700401, 37.801048, 24.395384>,  <38.862373, 37.629948, 24.441095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.700401, 37.801048, 24.395384>,  <38.430447, 38.086212, 24.319197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700401, 37.801048, 24.395384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318493, -0.048587, 0.946679,
		-0.665646, -0.699567, -0.259849,
		0.674891, -0.712913, 0.190466,
		38.902870, 37.587173, 24.452524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047131, 37.673847, 23.900570>,  <38.430447, 38.086212, 24.319197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047131, 37.673847, 23.900570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.671299, 37.810581, 23.893297>,  <37.445801, 37.892624, 23.888933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.671299, 37.810581, 23.893297>,  <38.047131, 37.673847, 23.900570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671299, 37.810581, 23.893297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062080, 0.117921, -0.991081,
		-0.336646, -0.932331, -0.132017,
		-0.939583, 0.341839, -0.018181,
		37.389423, 37.913132, 23.887842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872948, 37.474373, 23.223999>,  <38.047131, 37.673847, 23.900570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872948, 37.474373, 23.223999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.559788, 37.709534, 23.305424>,  <37.371891, 37.850632, 23.354279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.559788, 37.709534, 23.305424>,  <37.872948, 37.474373, 23.223999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559788, 37.709534, 23.305424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058626, 0.256022, -0.964891,
		-0.619377, -0.767350, -0.165974,
		-0.782902, 0.587901, 0.203561,
		37.324917, 37.885902, 23.366491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293907, 37.228916, 22.795059>,  <37.872948, 37.474373, 23.223999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293907, 37.228916, 22.795059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.239559, 37.613762, 22.889614>,  <37.206951, 37.844669, 22.946346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.239559, 37.613762, 22.889614>,  <37.293907, 37.228916, 22.795059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239559, 37.613762, 22.889614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044560, 0.244292, -0.968677,
		-0.989724, -0.121085, -0.076065,
		-0.135874, 0.962112, 0.236386,
		37.198795, 37.902397, 22.960529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735752, 37.450279, 22.418043>,  <37.293907, 37.228916, 22.795059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735752, 37.450279, 22.418043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.911331, 37.796600, 22.514132>,  <37.016678, 38.004395, 22.571785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.911331, 37.796600, 22.514132>,  <36.735752, 37.450279, 22.418043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911331, 37.796600, 22.514132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006302, 0.264382, -0.964398,
		-0.898491, 0.424833, 0.110593,
		0.438947, 0.865806, 0.240222,
		37.043015, 38.056343, 22.586199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262466, 37.995487, 22.169939>,  <36.735752, 37.450279, 22.418043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262466, 37.995487, 22.169939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.632977, 38.141293, 22.208199>,  <36.855282, 38.228775, 22.231153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.632977, 38.141293, 22.208199>,  <36.262466, 37.995487, 22.169939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632977, 38.141293, 22.208199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015660, 0.216358, -0.976189,
		-0.376525, 0.905716, 0.194698,
		0.926274, 0.364511, 0.095648,
		36.910858, 38.250645, 22.236893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220627, 38.603302, 21.881933>,  <36.262466, 37.995487, 22.169939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220627, 38.603302, 21.881933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.605976, 38.496067, 21.879128>,  <36.837185, 38.431725, 21.877443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.605976, 38.496067, 21.879128>,  <36.220627, 38.603302, 21.881933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605976, 38.496067, 21.879128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040862, 0.172593, -0.984145,
		0.265047, 0.947809, 0.177226,
		0.963369, -0.268087, -0.007016,
		36.894985, 38.415642, 21.877024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554985, 39.150238, 21.617268>,  <36.220627, 38.603302, 21.881933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554985, 39.150238, 21.617268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.844334, 38.876007, 21.584490>,  <37.017944, 38.711468, 21.564823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.844334, 38.876007, 21.584490>,  <36.554985, 39.150238, 21.617268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844334, 38.876007, 21.584490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007331, 0.126298, -0.991965,
		0.690416, 0.716962, 0.096387,
		0.723375, -0.685576, -0.081943,
		37.061348, 38.670334, 21.559908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157494, 39.462650, 21.310009>,  <36.554985, 39.150238, 21.617268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157494, 39.462650, 21.310009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.196754, 39.067280, 21.263735>,  <37.220310, 38.830059, 21.235971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.196754, 39.067280, 21.263735>,  <37.157494, 39.462650, 21.310009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196754, 39.067280, 21.263735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267049, 0.138141, -0.953731,
		0.958672, 0.062715, 0.277516,
		0.098149, -0.988425, -0.115684,
		37.226200, 38.770752, 21.229029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791214, 39.227489, 21.065691>,  <37.157494, 39.462650, 21.310009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791214, 39.227489, 21.065691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.553101, 38.935982, 20.930321>,  <37.410233, 38.761078, 20.849098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.553101, 38.935982, 20.930321>,  <37.791214, 39.227489, 21.065691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553101, 38.935982, 20.930321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368519, 0.126651, -0.920952,
		0.714026, -0.672942, 0.193173,
		-0.595282, -0.728772, -0.338424,
		37.374516, 38.717350, 20.828793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176239, 38.775867, 20.703869>,  <37.791214, 39.227489, 21.065691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176239, 38.775867, 20.703869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.809254, 38.692516, 20.568314>,  <37.589062, 38.642506, 20.486980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.809254, 38.692516, 20.568314>,  <38.176239, 38.775867, 20.703869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809254, 38.692516, 20.568314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357936, -0.060589, -0.931778,
		0.173630, -0.976170, 0.130174,
		-0.917461, -0.208379, -0.338886,
		37.534016, 38.630001, 20.466648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264252, 38.291924, 20.248919>,  <38.176239, 38.775867, 20.703869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264252, 38.291924, 20.248919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.895203, 38.392548, 20.131964>,  <37.673775, 38.452923, 20.061790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.895203, 38.392548, 20.131964>,  <38.264252, 38.291924, 20.248919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895203, 38.392548, 20.131964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289069, -0.050918, -0.955953,
		-0.255364, -0.966502, -0.025739,
		-0.922620, 0.251556, -0.292389,
		37.618416, 38.468014, 20.044247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127754, 37.770935, 19.706268>,  <38.264252, 38.291924, 20.248919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127754, 37.770935, 19.706268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.886185, 38.081894, 19.635918>,  <37.741245, 38.268471, 19.593706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.886185, 38.081894, 19.635918>,  <38.127754, 37.770935, 19.706268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886185, 38.081894, 19.635918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261214, -0.015433, -0.965158,
		-0.753025, -0.628820, -0.193747,
		-0.603921, 0.777398, -0.175878,
		37.705009, 38.315113, 19.583155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860367, 37.668530, 19.069256>,  <38.127754, 37.770935, 19.706268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860367, 37.668530, 19.069256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.753605, 38.053940, 19.077097>,  <37.689548, 38.285187, 19.081802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.753605, 38.053940, 19.077097>,  <37.860367, 37.668530, 19.069256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753605, 38.053940, 19.077097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477887, 0.149990, -0.865521,
		-0.836891, -0.221644, -0.500488,
		-0.266906, 0.963523, 0.019605,
		37.673534, 38.342999, 19.082979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409138, 36.999424, 19.084255>,  <37.860367, 37.668530, 19.069256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409138, 36.999424, 19.084255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.115543, 36.913548, 18.826517>,  <36.939388, 36.862022, 18.671875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.115543, 36.913548, 18.826517>,  <37.409138, 36.999424, 19.084255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115543, 36.913548, 18.826517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570055, -0.320992, 0.756308,
		-0.369199, 0.922428, 0.113219,
		-0.733982, -0.214687, -0.644344,
		36.895348, 36.849140, 18.633213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739670, 37.204956, 19.462860>,  <37.409138, 36.999424, 19.084255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739670, 37.204956, 19.462860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.657181, 36.964249, 19.154226>,  <36.607689, 36.819824, 18.969046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.657181, 36.964249, 19.154226>,  <36.739670, 37.204956, 19.462860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657181, 36.964249, 19.154226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814598, -0.331298, 0.476101,
		-0.542128, 0.726716, -0.421879,
		-0.206222, -0.601769, -0.771587,
		36.595314, 36.783718, 18.922750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988506, 37.202858, 19.429260>,  <36.739670, 37.204956, 19.462860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988506, 37.202858, 19.429260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.089870, 36.874752, 19.224144>,  <36.150688, 36.677891, 19.101074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.089870, 36.874752, 19.224144>,  <35.988506, 37.202858, 19.429260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089870, 36.874752, 19.224144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670435, -0.531056, 0.518167,
		-0.697353, 0.212484, -0.684506,
		0.253409, -0.820262, -0.512790,
		36.165894, 36.628674, 19.070307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360199, 36.827663, 19.281645>,  <35.988506, 37.202858, 19.429260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360199, 36.827663, 19.281645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.644554, 36.550438, 19.233814>,  <35.815166, 36.384102, 19.205116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.644554, 36.550438, 19.233814>,  <35.360199, 36.827663, 19.281645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644554, 36.550438, 19.233814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553903, -0.656496, 0.512059,
		-0.433390, -0.297785, -0.850586,
		0.710890, -0.693064, -0.119575,
		35.857822, 36.342518, 19.197943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031773, 36.269428, 19.002457>,  <35.360199, 36.827663, 19.281645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031773, 36.269428, 19.002457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.365173, 36.110283, 19.155811>,  <35.565212, 36.014797, 19.247824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.365173, 36.110283, 19.155811>,  <35.031773, 36.269428, 19.002457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365173, 36.110283, 19.155811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552518, -0.601945, 0.576530,
		0.001400, -0.692366, -0.721545,
		0.833500, -0.397860, 0.383387,
		35.615223, 35.990925, 19.270828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914200, 35.601562, 18.971928>,  <35.031773, 36.269428, 19.002457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914200, 35.601562, 18.971928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.180798, 35.639290, 19.267735>,  <35.340755, 35.661926, 19.445219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.180798, 35.639290, 19.267735>,  <34.914200, 35.601562, 18.971928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180798, 35.639290, 19.267735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644759, -0.425059, 0.635304,
		0.374260, -0.900238, -0.222487,
		0.666495, 0.094318, 0.739519,
		35.380745, 35.667583, 19.489590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816418, 35.057728, 19.368179>,  <34.914200, 35.601562, 18.971928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816418, 35.057728, 19.368179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.009289, 35.285191, 19.634754>,  <35.125011, 35.421669, 19.794699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.009289, 35.285191, 19.634754>,  <34.816418, 35.057728, 19.368179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009289, 35.285191, 19.634754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652960, -0.273891, 0.706136,
		0.584077, -0.775640, 0.239243,
		0.482180, 0.568654, 0.666435,
		35.153942, 35.455788, 19.834684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082623, 34.568691, 19.841129>,  <34.816418, 35.057728, 19.368179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082623, 34.568691, 19.841129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.054295, 34.932220, 20.005581>,  <35.037296, 35.150337, 20.104252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.054295, 34.932220, 20.005581>,  <35.082623, 34.568691, 19.841129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054295, 34.932220, 20.005581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430023, -0.399713, 0.809512,
		0.900036, -0.119461, 0.419123,
		-0.070824, 0.908823, 0.411127,
		35.033047, 35.204868, 20.128920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519108, 34.092194, 19.703074>,  <35.082623, 34.568691, 19.841129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519108, 34.092194, 19.703074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.709122, 33.740742, 19.683674>,  <35.823132, 33.529869, 19.672033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.709122, 33.740742, 19.683674>,  <35.519108, 34.092194, 19.703074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709122, 33.740742, 19.683674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319438, 0.223538, -0.920864,
		0.819939, 0.421951, 0.386856,
		0.475037, -0.878629, -0.048501,
		35.851631, 33.477154, 19.669125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233715, 34.315384, 19.465103>,  <35.519108, 34.092194, 19.703074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233715, 34.315384, 19.465103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.181183, 33.935356, 19.351875>,  <36.149662, 33.707340, 19.283939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.181183, 33.935356, 19.351875>,  <36.233715, 34.315384, 19.465103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181183, 33.935356, 19.351875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307539, 0.232408, -0.922717,
		0.942429, -0.208238, 0.261659,
		-0.131333, -0.950065, -0.283069,
		36.141785, 33.650337, 19.266954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850201, 34.071815, 19.221464>,  <36.233715, 34.315384, 19.465103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850201, 34.071815, 19.221464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.574093, 33.824738, 19.070742>,  <36.408428, 33.676491, 18.980309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.574093, 33.824738, 19.070742>,  <36.850201, 34.071815, 19.221464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574093, 33.824738, 19.070742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406539, 0.099705, -0.908177,
		0.598545, -0.780072, 0.182294,
		-0.690268, -0.617695, -0.376807,
		36.367012, 33.639431, 18.957699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266983, 33.613293, 18.873255>,  <36.850201, 34.071815, 19.221464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266983, 33.613293, 18.873255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.897675, 33.551758, 18.732450>,  <36.676090, 33.514835, 18.647968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.897675, 33.551758, 18.732450>,  <37.266983, 33.613293, 18.873255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897675, 33.551758, 18.732450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353656, 0.017450, -0.935213,
		0.150013, -0.987942, 0.038294,
		-0.923268, -0.153837, -0.352010,
		36.620693, 33.505608, 18.626848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331356, 32.982487, 18.524227>,  <37.266983, 33.613293, 18.873255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331356, 32.982487, 18.524227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.030220, 33.209377, 18.390663>,  <36.849541, 33.345512, 18.310524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.030220, 33.209377, 18.390663>,  <37.331356, 32.982487, 18.524227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030220, 33.209377, 18.390663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420944, 0.024913, -0.906744,
		-0.506008, -0.823187, -0.257524,
		-0.752836, 0.567223, -0.333910,
		36.804371, 33.379543, 18.290489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379539, 32.944981, 17.881662>,  <37.331356, 32.982487, 18.524227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379539, 32.944981, 17.881662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.088535, 33.219250, 17.871967>,  <36.913933, 33.383812, 17.866150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.088535, 33.219250, 17.871967>,  <37.379539, 32.944981, 17.881662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088535, 33.219250, 17.871967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218239, 0.197772, -0.955645,
		-0.650466, -0.700527, -0.293521,
		-0.727506, 0.685673, -0.024238,
		36.870285, 33.424953, 17.864697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025959, 32.892525, 17.257263>,  <37.379539, 32.944981, 17.881662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025959, 32.892525, 17.257263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.983849, 33.270657, 17.380724>,  <36.958584, 33.497536, 17.454800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.983849, 33.270657, 17.380724>,  <37.025959, 32.892525, 17.257263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983849, 33.270657, 17.380724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250651, 0.325580, -0.911686,
		-0.962336, -0.018613, -0.271224,
		-0.105274, 0.945331, 0.308652,
		36.952267, 33.554256, 17.473320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589653, 33.212120, 16.841803>,  <37.025959, 32.892525, 17.257263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589653, 33.212120, 16.841803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.779198, 33.525009, 17.003586>,  <36.892925, 33.712742, 17.100657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.779198, 33.525009, 17.003586>,  <36.589653, 33.212120, 16.841803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779198, 33.525009, 17.003586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245650, 0.323645, -0.913734,
		-0.845643, 0.532338, -0.038790,
		0.473861, 0.782221, 0.404457,
		36.921356, 33.759674, 17.124924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407707, 33.727604, 16.377682>,  <36.589653, 33.212120, 16.841803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407707, 33.727604, 16.377682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.721279, 33.885101, 16.569689>,  <36.909424, 33.979599, 16.684893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.721279, 33.885101, 16.569689>,  <36.407707, 33.727604, 16.377682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721279, 33.885101, 16.569689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237751, 0.523842, -0.817963,
		-0.573518, 0.755354, 0.317046,
		0.783934, 0.393739, 0.480019,
		36.956459, 34.003223, 16.713694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.781128, 30.790838, 32.083515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.061836, 31.019274, 32.253872>,  <34.230259, 31.156334, 32.356087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.061836, 31.019274, 32.253872>,  <33.781128, 30.790838, 32.083515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061836, 31.019274, 32.253872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407611, 0.168424, -0.897489,
		-0.584274, 0.803426, -0.114587,
		0.701767, 0.571086, 0.425891,
		34.272366, 31.190599, 32.381638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792469, 31.532064, 32.003113>,  <33.781128, 30.790838, 32.083515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792469, 31.532064, 32.003113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.169094, 31.399538, 32.027428>,  <34.395069, 31.320023, 32.042015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.169094, 31.399538, 32.027428>,  <33.792469, 31.532064, 32.003113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169094, 31.399538, 32.027428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108528, 0.127543, -0.985878,
		0.318884, 0.934860, 0.156046,
		0.941560, -0.331316, 0.060787,
		34.451561, 31.300142, 32.045662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197624, 32.050819, 31.870203>,  <33.792469, 31.532064, 32.003113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197624, 32.050819, 31.870203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.378746, 31.702513, 31.793535>,  <34.487419, 31.493528, 31.747534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.378746, 31.702513, 31.793535>,  <34.197624, 32.050819, 31.870203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378746, 31.702513, 31.793535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028794, 0.229140, -0.972967,
		0.891147, 0.435041, 0.128828,
		0.452800, -0.870766, -0.191671,
		34.514587, 31.441282, 31.736034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811241, 32.296535, 31.754080>,  <34.197624, 32.050819, 31.870203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811241, 32.296535, 31.754080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.806786, 31.933243, 31.586750>,  <34.804111, 31.715267, 31.486351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.806786, 31.933243, 31.586750>,  <34.811241, 32.296535, 31.754080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806786, 31.933243, 31.586750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190825, 0.408734, -0.892481,
		0.981561, -0.089767, 0.168760,
		-0.011138, -0.908229, -0.418327,
		34.803444, 31.660774, 31.461252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339973, 32.293190, 31.321272>,  <34.811241, 32.296535, 31.754080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339973, 32.293190, 31.321272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.117630, 31.997181, 31.169806>,  <34.984222, 31.819576, 31.078926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.117630, 31.997181, 31.169806>,  <35.339973, 32.293190, 31.321272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117630, 31.997181, 31.169806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309150, 0.238820, -0.920539,
		0.771650, -0.628757, 0.096027,
		-0.555861, -0.740020, -0.378666,
		34.950871, 31.775175, 31.056206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806519, 31.834848, 30.890514>,  <35.339973, 32.293190, 31.321272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806519, 31.834848, 30.890514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.434536, 31.778463, 30.754686>,  <35.211346, 31.744633, 30.673189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.434536, 31.778463, 30.754686>,  <35.806519, 31.834848, 30.890514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434536, 31.778463, 30.754686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334669, 0.057870, -0.940557,
		0.152236, -0.988322, -0.006640,
		-0.929958, -0.140964, -0.339571,
		35.155548, 31.736174, 30.652815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814175, 31.071039, 30.370335>,  <35.806519, 31.834848, 30.890514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814175, 31.071039, 30.370335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.496773, 31.299339, 30.285860>,  <35.306332, 31.436319, 30.235176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.496773, 31.299339, 30.285860>,  <35.814175, 31.071039, 30.370335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496773, 31.299339, 30.285860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236798, -0.030102, -0.971092,
		-0.560609, -0.820571, -0.111267,
		-0.793501, 0.570751, -0.211185,
		35.258724, 31.470564, 30.222504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546200, 30.776636, 29.773527>,  <35.814175, 31.071039, 30.370335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546200, 30.776636, 29.773527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.385075, 31.142586, 29.784454>,  <35.288399, 31.362156, 29.791010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.385075, 31.142586, 29.784454>,  <35.546200, 30.776636, 29.773527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385075, 31.142586, 29.784454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029206, 0.042679, -0.998662,
		-0.914815, -0.401480, -0.043912,
		-0.402817, 0.914873, 0.027318,
		35.264229, 31.417048, 29.792650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026295, 30.706434, 29.323666>,  <35.546200, 30.776636, 29.773527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026295, 30.706434, 29.323666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.082672, 31.101612, 29.349272>,  <35.116497, 31.338718, 29.364635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.082672, 31.101612, 29.349272>,  <35.026295, 30.706434, 29.323666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082672, 31.101612, 29.349272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093607, 0.077670, -0.992575,
		-0.985583, 0.133902, 0.103425,
		0.140940, 0.987946, 0.064016,
		35.124954, 31.397997, 29.368477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620712, 30.936148, 28.639486>,  <35.026295, 30.706434, 29.323666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620712, 30.936148, 28.639486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.819820, 31.254152, 28.778156>,  <34.939285, 31.444954, 28.861359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.819820, 31.254152, 28.778156>,  <34.620712, 30.936148, 28.639486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819820, 31.254152, 28.778156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082443, 0.441277, -0.893576,
		-0.863382, 0.416214, 0.285197,
		0.497769, 0.795010, 0.346677,
		34.969151, 31.492655, 28.882160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195988, 31.500319, 28.482109>,  <34.620712, 30.936148, 28.639486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195988, 31.500319, 28.482109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.585255, 31.589401, 28.505239>,  <34.818817, 31.642851, 28.519117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.585255, 31.589401, 28.505239>,  <34.195988, 31.500319, 28.482109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585255, 31.589401, 28.505239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005596, 0.274145, -0.961672,
		-0.230021, 0.935547, 0.268036,
		0.973170, 0.222705, 0.057824,
		34.877205, 31.656212, 28.522587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254513, 31.937002, 28.035385>,  <34.195988, 31.500319, 28.482109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254513, 31.937002, 28.035385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.637146, 31.826790, 28.073381>,  <34.866726, 31.760662, 28.096180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.637146, 31.826790, 28.073381>,  <34.254513, 31.937002, 28.035385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637146, 31.826790, 28.073381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101549, 0.009599, -0.994784,
		0.273183, 0.961244, 0.037163,
		0.956587, -0.275532, 0.094991,
		34.924122, 31.744131, 28.101879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379227, 32.640671, 28.349739>,  <34.254513, 31.937002, 28.035385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379227, 32.640671, 28.349739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.090374, 32.914101, 28.307301>,  <33.917065, 33.078159, 28.281837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.090374, 32.914101, 28.307301>,  <34.379227, 32.640671, 28.349739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090374, 32.914101, 28.307301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153558, -0.008860, 0.988100,
		0.674501, 0.729826, 0.111366,
		-0.722127, 0.683576, -0.106094,
		33.873737, 33.119175, 28.275473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386913, 33.186722, 28.907352>,  <34.379227, 32.640671, 28.349739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386913, 33.186722, 28.907352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.010296, 33.173599, 28.773232>,  <33.784325, 33.165726, 28.692759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.010296, 33.173599, 28.773232>,  <34.386913, 33.186722, 28.907352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010296, 33.173599, 28.773232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335317, -0.005219, 0.942091,
		-0.032660, 0.999448, -0.006088,
		-0.941539, -0.032810, -0.335302,
		33.727833, 33.163757, 28.672642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029716, 33.539673, 29.396795>,  <34.386913, 33.186722, 28.907352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029716, 33.539673, 29.396795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.698875, 33.403374, 29.218000>,  <33.500370, 33.321594, 29.110723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.698875, 33.403374, 29.218000>,  <34.029716, 33.539673, 29.396795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698875, 33.403374, 29.218000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439842, -0.102720, 0.892181,
		-0.349921, 0.934527, -0.064914,
		-0.827100, -0.340745, -0.446988,
		33.450745, 33.301151, 29.083904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476109, 33.922638, 29.637768>,  <34.029716, 33.539673, 29.396795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476109, 33.922638, 29.637768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.290234, 33.586273, 29.526819>,  <33.178711, 33.384453, 29.460251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.290234, 33.586273, 29.526819>,  <33.476109, 33.922638, 29.637768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290234, 33.586273, 29.526819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496970, -0.011579, 0.867691,
		-0.732863, 0.541048, -0.412528,
		-0.464685, -0.840912, -0.277370,
		33.150829, 33.334000, 29.443607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793808, 33.992901, 29.809767>,  <33.476109, 33.922638, 29.637768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793808, 33.992901, 29.809767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.845203, 33.596912, 29.786289>,  <32.876041, 33.359318, 29.772203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.845203, 33.596912, 29.786289>,  <32.793808, 33.992901, 29.809767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845203, 33.596912, 29.786289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397875, -0.105669, 0.911334,
		-0.908398, -0.093740, -0.407463,
		0.128485, -0.989973, -0.058693,
		32.883747, 33.299919, 29.768681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085995, 33.654655, 30.033689>,  <32.793808, 33.992901, 29.809767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085995, 33.654655, 30.033689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.369854, 33.375202, 30.070177>,  <32.540169, 33.207531, 30.092070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.369854, 33.375202, 30.070177>,  <32.085995, 33.654655, 30.033689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369854, 33.375202, 30.070177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283729, -0.164862, 0.944626,
		-0.644905, -0.696231, -0.315214,
		0.709645, -0.698630, 0.091221,
		32.582748, 33.165615, 30.097544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794754, 33.092728, 30.319323>,  <32.085995, 33.654655, 30.033689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794754, 33.092728, 30.319323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.175743, 32.992363, 30.388424>,  <32.404335, 32.932144, 30.429884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.175743, 32.992363, 30.388424>,  <31.794754, 33.092728, 30.319323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175743, 32.992363, 30.388424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254840, -0.345583, 0.903122,
		-0.166900, -0.904222, -0.393100,
		0.952471, -0.250909, 0.172754,
		32.461483, 32.917091, 30.440250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673296, 32.561333, 30.606506>,  <31.794754, 33.092728, 30.319323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673296, 32.561333, 30.606506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.035843, 32.684078, 30.722670>,  <32.253372, 32.757725, 30.792368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.035843, 32.684078, 30.722670>,  <31.673296, 32.561333, 30.606506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035843, 32.684078, 30.722670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221066, -0.241310, 0.944934,
		0.360045, -0.920654, -0.150878,
		0.906365, 0.306865, 0.290407,
		32.307751, 32.776138, 30.809792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881018, 32.046909, 30.991608>,  <31.673296, 32.561333, 30.606506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881018, 32.046909, 30.991608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.110897, 32.356384, 31.098286>,  <32.248825, 32.542068, 31.162292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.110897, 32.356384, 31.098286>,  <31.881018, 32.046909, 30.991608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110897, 32.356384, 31.098286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246730, -0.146919, 0.957883,
		0.780285, -0.616297, 0.106458,
		0.574700, 0.773688, 0.266697,
		32.283306, 32.588490, 31.178295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011093, 31.962271, 31.638504>,  <31.881018, 32.046909, 30.991608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011093, 31.962271, 31.638504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.160889, 32.332809, 31.622334>,  <32.250767, 32.555134, 31.612631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.160889, 32.332809, 31.622334>,  <32.011093, 31.962271, 31.638504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160889, 32.332809, 31.622334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135599, 0.097844, 0.985921,
		0.917262, -0.363737, 0.162254,
		0.374491, 0.926349, -0.040426,
		32.273235, 32.610714, 31.610207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526070, 32.008888, 32.263077>,  <32.011093, 31.962271, 31.638504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526070, 32.008888, 32.263077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.362812, 32.362720, 32.172798>,  <32.264858, 32.575020, 32.118629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.362812, 32.362720, 32.172798>,  <32.526070, 32.008888, 32.263077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362812, 32.362720, 32.172798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000549, 0.247467, 0.968896,
		0.912918, 0.395324, -0.101487,
		-0.408143, 0.884578, -0.225700,
		32.240368, 32.628094, 32.105087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851799, 32.483376, 32.612633>,  <32.526070, 32.008888, 32.263077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851799, 32.483376, 32.612633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.545834, 32.724545, 32.521950>,  <32.362255, 32.869244, 32.467541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.545834, 32.724545, 32.521950>,  <32.851799, 32.483376, 32.612633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545834, 32.724545, 32.521950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069696, 0.272415, 0.959652,
		0.640351, 0.749851, -0.166353,
		-0.764914, 0.602920, -0.226703,
		32.316360, 32.905422, 32.453938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988071, 33.122112, 33.088486>,  <32.851799, 32.483376, 32.612633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988071, 33.122112, 33.088486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.605328, 33.112358, 32.972672>,  <32.375683, 33.106506, 32.903183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.605328, 33.112358, 32.972672>,  <32.988071, 33.122112, 33.088486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605328, 33.112358, 32.972672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288997, 0.183213, 0.939635,
		0.030138, 0.982771, -0.182354,
		-0.956855, -0.024381, -0.289540,
		32.318272, 33.105045, 32.885811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697643, 33.608852, 33.434669>,  <32.988071, 33.122112, 33.088486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697643, 33.608852, 33.434669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.358303, 33.426643, 33.326748>,  <32.154697, 33.317318, 33.261993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.358303, 33.426643, 33.326748>,  <32.697643, 33.608852, 33.434669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358303, 33.426643, 33.326748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415002, 0.255724, 0.873143,
		-0.328743, 0.852703, -0.405988,
		-0.848352, -0.455525, -0.269806,
		32.103798, 33.289986, 33.245808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273849, 34.182968, 33.501141>,  <32.697643, 33.608852, 33.434669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273849, 34.182968, 33.501141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.130939, 33.810459, 33.529663>,  <32.045193, 33.586952, 33.546776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.130939, 33.810459, 33.529663>,  <32.273849, 34.182968, 33.501141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130939, 33.810459, 33.529663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279693, 0.179523, 0.943156,
		-0.891136, 0.317024, -0.324610,
		-0.357278, -0.931272, 0.071310,
		32.023754, 33.531078, 33.551056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042503, 34.482361, 33.436001>,  <32.273849, 34.182968, 33.501141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042503, 34.482361, 33.436001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.392506, 34.667374, 33.493172>,  <33.602509, 34.778381, 33.527473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.392506, 34.667374, 33.493172>,  <33.042503, 34.482361, 33.436001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392506, 34.667374, 33.493172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096559, 0.456056, -0.884697,
		-0.474385, 0.760314, 0.443714,
		0.875006, 0.462531, 0.142931,
		33.655006, 34.806133, 33.536053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921104, 35.204678, 33.222454>,  <33.042503, 34.482361, 33.436001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921104, 35.204678, 33.222454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.320240, 35.178745, 33.226582>,  <33.559723, 35.163185, 33.229057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.320240, 35.178745, 33.226582>,  <32.921104, 35.204678, 33.222454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320240, 35.178745, 33.226582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039336, 0.464538, -0.884679,
		0.052563, 0.883177, 0.466086,
		0.997843, -0.064835, 0.010323,
		33.619595, 35.159294, 33.229679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276672, 35.985237, 33.088612>,  <32.921104, 35.204678, 33.222454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276672, 35.985237, 33.088612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.547626, 35.708881, 32.987560>,  <33.710201, 35.543068, 32.926929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.547626, 35.708881, 32.987560>,  <33.276672, 35.985237, 33.088612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547626, 35.708881, 32.987560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063999, 0.397461, -0.915384,
		0.732837, 0.603902, 0.313452,
		0.677388, -0.690888, -0.252625,
		33.750843, 35.501614, 32.911774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837955, 36.288376, 32.707542>,  <33.276672, 35.985237, 33.088612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837955, 36.288376, 32.707542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.871307, 35.905239, 32.597569>,  <33.891319, 35.675358, 32.531586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.871307, 35.905239, 32.597569>,  <33.837955, 36.288376, 32.707542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871307, 35.905239, 32.597569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134532, 0.284189, -0.949283,
		0.987395, 0.042161, 0.152555,
		0.083377, -0.957841, -0.274935,
		33.896320, 35.617886, 32.515087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323586, 36.305264, 32.173878>,  <33.837955, 36.288376, 32.707542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323586, 36.305264, 32.173878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.135365, 35.954140, 32.138042>,  <34.022430, 35.743465, 32.116543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.135365, 35.954140, 32.138042>,  <34.323586, 36.305264, 32.173878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135365, 35.954140, 32.138042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087595, 0.054557, -0.994661,
		0.878013, -0.475888, 0.051220,
		-0.470553, -0.877812, -0.089587,
		33.994198, 35.690796, 32.111168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783703, 35.910202, 31.786142>,  <34.323586, 36.305264, 32.173878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783703, 35.910202, 31.786142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.429588, 35.728725, 31.745285>,  <34.217121, 35.619839, 31.720770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.429588, 35.728725, 31.745285>,  <34.783703, 35.910202, 31.786142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429588, 35.728725, 31.745285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166764, -0.104671, -0.980425,
		0.434119, -0.884990, 0.168323,
		-0.885286, -0.453692, -0.102144,
		34.164001, 35.592617, 31.714642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875259, 35.411140, 31.416658>,  <34.783703, 35.910202, 31.786142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875259, 35.411140, 31.416658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.479389, 35.399933, 31.360422>,  <34.241867, 35.393208, 31.326681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.479389, 35.399933, 31.360422>,  <34.875259, 35.411140, 31.416658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479389, 35.399933, 31.360422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143151, -0.245704, -0.958716,
		-0.007677, -0.968940, 0.247178,
		-0.989671, -0.028024, -0.140591,
		34.182487, 35.391525, 31.318245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630665, 34.828968, 30.883970>,  <34.875259, 35.411140, 31.416658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630665, 34.828968, 30.883970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.327328, 35.089279, 30.868956>,  <34.145325, 35.245468, 30.859947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.327328, 35.089279, 30.868956>,  <34.630665, 34.828968, 30.883970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327328, 35.089279, 30.868956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024164, -0.029481, -0.999273,
		-0.651413, -0.758694, 0.006632,
		-0.758338, 0.650780, -0.037537,
		34.099827, 35.284512, 30.857695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222816, 34.649876, 30.320480>,  <34.630665, 34.828968, 30.883970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222816, 34.649876, 30.320480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.124054, 35.033684, 30.374672>,  <34.064796, 35.263969, 30.407187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.124054, 35.033684, 30.374672>,  <34.222816, 34.649876, 30.320480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124054, 35.033684, 30.374672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002298, 0.139230, -0.990258,
		-0.969036, -0.244816, -0.032172,
		-0.246910, 0.959521, 0.135481,
		34.049980, 35.321541, 30.415316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924961, 34.801163, 29.721579>,  <34.222816, 34.649876, 30.320480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924961, 34.801163, 29.721579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.976059, 35.172523, 29.861149>,  <34.006718, 35.395340, 29.944891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.976059, 35.172523, 29.861149>,  <33.924961, 34.801163, 29.721579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976059, 35.172523, 29.861149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050792, 0.345224, -0.937145,
		-0.990506, 0.137437, -0.003055,
		0.127744, 0.928403, 0.348927,
		34.014381, 35.451046, 29.965826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557514, 35.148884, 29.273462>,  <33.924961, 34.801163, 29.721579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557514, 35.148884, 29.273462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.833473, 35.396725, 29.423201>,  <33.999046, 35.545429, 29.513042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.833473, 35.396725, 29.423201>,  <33.557514, 35.148884, 29.273462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833473, 35.396725, 29.423201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188942, 0.345072, -0.919362,
		-0.698817, 0.704992, 0.120994,
		0.689895, 0.619605, 0.374345,
		34.040443, 35.582607, 29.535503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535316, 35.886013, 29.063232>,  <33.557514, 35.148884, 29.273462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535316, 35.886013, 29.063232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.923786, 35.873920, 29.157818>,  <34.156868, 35.866665, 29.214569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.923786, 35.873920, 29.157818>,  <33.535316, 35.886013, 29.063232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923786, 35.873920, 29.157818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223905, 0.456159, -0.861270,
		-0.081824, 0.889385, 0.449778,
		0.971170, -0.030235, 0.236463,
		34.215137, 35.864849, 29.228756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747131, 36.488396, 28.754255>,  <33.535316, 35.886013, 29.063232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747131, 36.488396, 28.754255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.083900, 36.285179, 28.826979>,  <34.285961, 36.163250, 28.870613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.083900, 36.285179, 28.826979>,  <33.747131, 36.488396, 28.754255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083900, 36.285179, 28.826979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390481, 0.341100, -0.855088,
		0.372410, 0.790911, 0.485562,
		0.841924, -0.508046, 0.181807,
		34.336479, 36.132767, 28.881521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266121, 36.921322, 28.595329>,  <33.747131, 36.488396, 28.754255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266121, 36.921322, 28.595329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.452347, 36.567913, 28.615835>,  <34.564083, 36.355865, 28.628138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.452347, 36.567913, 28.615835>,  <34.266121, 36.921322, 28.595329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452347, 36.567913, 28.615835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572148, 0.256286, -0.779079,
		0.675199, 0.392045, 0.624826,
		0.465568, -0.883526, 0.051264,
		34.592018, 36.302856, 28.631214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980858, 37.092621, 28.548599>,  <34.266121, 36.921322, 28.595329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980858, 37.092621, 28.548599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.941246, 36.708862, 28.442955>,  <34.917480, 36.478607, 28.379568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.941246, 36.708862, 28.442955>,  <34.980858, 37.092621, 28.548599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941246, 36.708862, 28.442955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669891, 0.131988, -0.730634,
		0.735826, -0.249280, 0.629619,
		-0.099030, -0.959395, -0.264111,
		34.911537, 36.421043, 28.363722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646572, 36.899212, 28.361732>,  <34.980858, 37.092621, 28.548599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646572, 36.899212, 28.361732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.400597, 36.641624, 28.179676>,  <35.253014, 36.487072, 28.070442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.400597, 36.641624, 28.179676>,  <35.646572, 36.899212, 28.361732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400597, 36.641624, 28.179676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460748, 0.174996, -0.870108,
		0.639973, -0.744766, 0.189098,
		-0.614936, -0.643972, -0.455142,
		35.216118, 36.448433, 28.043133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071636, 36.493385, 27.901953>,  <35.646572, 36.899212, 28.361732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071636, 36.493385, 27.901953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.699429, 36.484554, 27.755726>,  <35.476105, 36.479256, 27.667990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.699429, 36.484554, 27.755726>,  <36.071636, 36.493385, 27.901953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699429, 36.484554, 27.755726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366220, -0.048149, -0.929282,
		0.002919, -0.998596, 0.052891,
		-0.930524, -0.022083, -0.365565,
		35.420273, 36.477932, 27.646057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108860, 35.915821, 27.423439>,  <36.071636, 36.493385, 27.901953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108860, 35.915821, 27.423439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.824955, 36.185139, 27.340582>,  <35.654610, 36.346729, 27.290867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.824955, 36.185139, 27.340582>,  <36.108860, 35.915821, 27.423439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824955, 36.185139, 27.340582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391352, 0.132376, -0.910670,
		-0.585728, -0.727428, -0.357451,
		-0.709765, 0.673294, -0.207144,
		35.612026, 36.387127, 27.278439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135075, 35.824116, 26.754944>,  <36.108860, 35.915821, 27.423439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135075, 35.824116, 26.754944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.910423, 36.147476, 26.825441>,  <35.775635, 36.341492, 26.867739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.910423, 36.147476, 26.825441>,  <36.135075, 35.824116, 26.754944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910423, 36.147476, 26.825441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279247, 0.385712, -0.879345,
		-0.778844, -0.444647, -0.442370,
		-0.561625, 0.808403, 0.176243,
		35.741936, 36.389996, 26.878315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834736, 35.832581, 26.102661>,  <36.135075, 35.824116, 26.754944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834736, 35.832581, 26.102661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.793274, 36.189297, 26.278826>,  <35.768394, 36.403328, 26.384523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.793274, 36.189297, 26.278826>,  <35.834736, 35.832581, 26.102661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793274, 36.189297, 26.278826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258548, 0.451733, -0.853868,
		-0.960421, 0.025357, -0.277396,
		-0.103657, 0.891793, 0.440410,
		35.762177, 36.456833, 26.410950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434097, 36.227131, 25.658936>,  <35.834736, 35.832581, 26.102661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434097, 36.227131, 25.658936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.637680, 36.491333, 25.879732>,  <35.759830, 36.649853, 26.012209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.637680, 36.491333, 25.879732>,  <35.434097, 36.227131, 25.658936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637680, 36.491333, 25.879732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169772, 0.551638, -0.816623,
		-0.843884, 0.509339, 0.168625,
		0.508958, 0.660507, 0.551990,
		35.790367, 36.689484, 26.045330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183281, 36.941277, 25.424292>,  <35.434097, 36.227131, 25.658936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183281, 36.941277, 25.424292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.537022, 37.001812, 25.600937>,  <35.749268, 37.038132, 25.706924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.537022, 37.001812, 25.600937>,  <35.183281, 36.941277, 25.424292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537022, 37.001812, 25.600937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316955, 0.499873, -0.806019,
		-0.342728, 0.852775, 0.394097,
		0.884351, 0.151334, 0.441612,
		35.802326, 37.047211, 25.733421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373222, 37.615330, 25.334570>,  <35.183281, 36.941277, 25.424292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373222, 37.615330, 25.334570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.727276, 37.450417, 25.420893>,  <35.939709, 37.351471, 25.472687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.727276, 37.450417, 25.420893>,  <35.373222, 37.615330, 25.334570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727276, 37.450417, 25.420893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417864, 0.500097, -0.758481,
		0.204783, 0.761530, 0.614927,
		0.885129, -0.412280, 0.215805,
		35.992813, 37.326733, 25.485634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846889, 38.208431, 25.159683>,  <35.373222, 37.615330, 25.334570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846889, 38.208431, 25.159683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.105492, 37.906029, 25.200659>,  <36.260651, 37.724586, 25.225245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.105492, 37.906029, 25.200659>,  <35.846889, 38.208431, 25.159683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105492, 37.906029, 25.200659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590340, 0.410682, -0.694866,
		0.483252, 0.509706, 0.711806,
		0.646504, -0.756002, 0.102437,
		36.299442, 37.679230, 25.231390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592030, 38.521492, 25.225506>,  <35.846889, 38.208431, 25.159683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592030, 38.521492, 25.225506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.646473, 38.139385, 25.120481>,  <36.679138, 37.910122, 25.057467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.646473, 38.139385, 25.120481>,  <36.592030, 38.521492, 25.225506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646473, 38.139385, 25.120481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598943, 0.290454, -0.746260,
		0.789140, -0.055688, 0.611684,
		0.136108, -0.955267, -0.262563,
		36.687305, 37.852806, 25.041712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215435, 38.532032, 25.007257>,  <36.592030, 38.521492, 25.225506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215435, 38.532032, 25.007257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.070225, 38.205109, 24.828278>,  <36.983097, 38.008953, 24.720890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.070225, 38.205109, 24.828278>,  <37.215435, 38.532032, 25.007257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070225, 38.205109, 24.828278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626311, 0.141508, -0.766623,
		0.689887, -0.558550, 0.460519,
		-0.363030, -0.817311, -0.447450,
		36.961315, 37.959915, 24.694042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824650, 38.284904, 24.695362>,  <37.215435, 38.532032, 25.007257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824650, 38.284904, 24.695362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.500557, 38.129749, 24.519608>,  <37.306103, 38.036655, 24.414154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.500557, 38.129749, 24.519608>,  <37.824650, 38.284904, 24.695362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500557, 38.129749, 24.519608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436809, 0.100222, -0.893954,
		0.390793, -0.916240, 0.088232,
		-0.810234, -0.387892, -0.439388,
		37.257488, 38.013382, 24.387791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107712, 37.614964, 24.989258>,  <37.824650, 38.284904, 24.695362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107712, 37.614964, 24.989258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.496464, 37.528751, 24.951303>,  <38.729713, 37.477024, 24.928532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.496464, 37.528751, 24.951303>,  <38.107712, 37.614964, 24.989258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496464, 37.528751, 24.951303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007703, -0.431799, 0.901937,
		-0.235367, -0.875840, -0.421315,
		0.971876, -0.215532, -0.094885,
		38.788025, 37.464092, 24.922838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216496, 36.822163, 25.180445>,  <38.107712, 37.614964, 24.989258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216496, 36.822163, 25.180445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.551567, 37.032055, 25.241056>,  <38.752609, 37.157990, 25.277424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.551567, 37.032055, 25.241056>,  <38.216496, 36.822163, 25.180445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551567, 37.032055, 25.241056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003507, -0.272270, 0.962215,
		0.546158, -0.806554, -0.226233,
		0.837675, 0.524728, 0.151531,
		38.802868, 37.189472, 25.286516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643543, 36.382519, 25.585659>,  <38.216496, 36.822163, 25.180445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643543, 36.382519, 25.585659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.811802, 36.738365, 25.656807>,  <38.912758, 36.951874, 25.699495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.811802, 36.738365, 25.656807>,  <38.643543, 36.382519, 25.585659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811802, 36.738365, 25.656807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030565, -0.182052, 0.982814,
		0.906708, -0.418858, -0.049389,
		0.420651, 0.889615, 0.177871,
		38.937996, 37.005249, 25.710169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398827, 36.256874, 25.752327>,  <38.643543, 36.382519, 25.585659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398827, 36.256874, 25.752327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.295296, 36.613964, 25.899866>,  <39.233177, 36.828217, 25.988390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.295296, 36.613964, 25.899866>,  <39.398827, 36.256874, 25.752327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295296, 36.613964, 25.899866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275214, -0.297877, 0.914071,
		0.925886, 0.338099, -0.168592,
		-0.258827, 0.892725, 0.368850,
		39.217648, 36.881783, 26.010521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866268, 36.391502, 26.372301>,  <39.398827, 36.256874, 25.752327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866268, 36.391502, 26.372301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.553730, 36.636967, 26.417765>,  <39.366207, 36.784245, 26.445042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.553730, 36.636967, 26.417765>,  <39.866268, 36.391502, 26.372301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553730, 36.636967, 26.417765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024251, -0.211832, 0.977005,
		0.623626, 0.760623, 0.180396,
		-0.781347, 0.613661, 0.113658,
		39.319324, 36.821064, 26.451862>
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
