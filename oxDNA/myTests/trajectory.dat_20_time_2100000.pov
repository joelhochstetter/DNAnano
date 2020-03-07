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
	right 1.6 * <1, 0, 0>
	location <44.88, 44.88, 200.277>
	look_at <44.88, 44.88, 44.88>
	direction <0, 0, -155.397>
	angle 67.0682
}


# declare cpy_camera_pos = <44.88, 44.88, 200.277>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 71.808
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<40.595924, 47.989826, 55.126644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.982780, 47.896614, 55.167305>,  <41.214893, 47.840687, 55.191704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.982780, 47.896614, 55.167305>,  <40.595924, 47.989826, 55.126644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.982780, 47.896614, 55.167305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084287, -0.083338, -0.992950,
		0.239856, 0.968893, -0.060959,
		0.967143, -0.233027, 0.101654,
		41.272923, 47.826706, 55.197800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094742, 48.488880, 54.790867>,  <40.595924, 47.989826, 55.126644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094742, 48.488880, 54.790867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.318054, 48.158981, 54.826885>,  <41.452042, 47.961040, 54.848495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.318054, 48.158981, 54.826885>,  <41.094742, 48.488880, 54.790867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.318054, 48.158981, 54.826885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294697, 0.095681, -0.950788,
		0.775546, 0.557347, 0.296468,
		0.558285, -0.824748, 0.090044,
		41.485538, 47.911556, 54.853897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746418, 48.552479, 54.336731>,  <41.094742, 48.488880, 54.790867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746418, 48.552479, 54.336731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.692162, 48.157547, 54.369652>,  <41.659607, 47.920586, 54.389404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.692162, 48.157547, 54.369652>,  <41.746418, 48.552479, 54.336731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692162, 48.157547, 54.369652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221975, -0.111247, -0.968685,
		0.965572, -0.113122, 0.234253,
		-0.135640, -0.987333, 0.082307,
		41.651470, 47.861347, 54.394344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.142033, 48.232513, 53.806976>,  <41.746418, 48.552479, 54.336731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.142033, 48.232513, 53.806976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915245, 47.924942, 53.925163>,  <41.779175, 47.740398, 53.996075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915245, 47.924942, 53.925163>,  <42.142033, 48.232513, 53.806976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915245, 47.924942, 53.925163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018419, -0.346767, -0.937770,
		0.823536, -0.537125, 0.182442,
		-0.566965, -0.768927, 0.295468,
		41.745155, 47.694263, 54.013805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.464493, 47.605675, 53.599800>,  <42.142033, 48.232513, 53.806976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.464493, 47.605675, 53.599800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.084602, 47.496872, 53.661800>,  <41.856667, 47.431591, 53.699001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.084602, 47.496872, 53.661800>,  <42.464493, 47.605675, 53.599800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.084602, 47.496872, 53.661800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020049, -0.441243, -0.897164,
		0.312427, -0.855171, 0.413609,
		-0.949730, -0.272005, 0.155001,
		41.799683, 47.415272, 53.708302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491276, 46.897133, 53.512741>,  <42.464493, 47.605675, 53.599800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.491276, 46.897133, 53.512741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101234, 46.975471, 53.471138>,  <41.867210, 47.022476, 53.446175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101234, 46.975471, 53.471138>,  <42.491276, 46.897133, 53.512741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101234, 46.975471, 53.471138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018353, -0.538701, -0.842297,
		-0.220992, -0.819417, 0.528883,
		-0.975103, 0.195848, -0.104010,
		41.808704, 47.034225, 53.439934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.198139, 46.303574, 53.517952>,  <42.491276, 46.897133, 53.512741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.198139, 46.303574, 53.517952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.926994, 46.527718, 53.327583>,  <41.764309, 46.662205, 53.213364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.926994, 46.527718, 53.327583>,  <42.198139, 46.303574, 53.517952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.926994, 46.527718, 53.327583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079800, -0.699600, -0.710065,
		-0.730849, -0.443344, 0.518946,
		-0.677858, 0.560362, -0.475924,
		41.723637, 46.695827, 53.184807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.759319, 45.736088, 53.299995>,  <42.198139, 46.303574, 53.517952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.759319, 45.736088, 53.299995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654907, 46.057167, 53.085503>,  <41.592258, 46.249813, 52.956806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654907, 46.057167, 53.085503>,  <41.759319, 45.736088, 53.299995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.654907, 46.057167, 53.085503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276492, -0.594387, -0.755153,
		-0.924887, -0.048852, 0.377091,
		-0.261029, 0.802694, -0.536234,
		41.576599, 46.297974, 52.924633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185787, 45.547554, 52.853874>,  <41.759319, 45.736088, 53.299995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.185787, 45.547554, 52.853874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305885, 45.880127, 52.666866>,  <41.377945, 46.079670, 52.554661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305885, 45.880127, 52.666866>,  <41.185787, 45.547554, 52.853874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305885, 45.880127, 52.666866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051455, -0.475300, -0.878318,
		-0.952475, 0.287763, -0.099923,
		0.300241, 0.831434, -0.467518,
		41.395958, 46.129559, 52.526611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743156, 45.644447, 52.242832>,  <41.185787, 45.547554, 52.853874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743156, 45.644447, 52.242832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084389, 45.845585, 52.187119>,  <41.289127, 45.966267, 52.153690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084389, 45.845585, 52.187119>,  <40.743156, 45.644447, 52.242832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084389, 45.845585, 52.187119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058214, -0.357001, -0.932288,
		-0.518518, 0.787210, -0.333824,
		0.853082, 0.502842, -0.139285,
		41.340313, 45.996437, 52.145332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679821, 46.018612, 51.598450>,  <40.743156, 45.644447, 52.242832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679821, 46.018612, 51.598450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060928, 45.944057, 51.694366>,  <41.289593, 45.899326, 51.751919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060928, 45.944057, 51.694366>,  <40.679821, 46.018612, 51.598450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.060928, 45.944057, 51.694366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156137, -0.376625, -0.913113,
		0.260501, 0.907422, -0.329734,
		0.952765, -0.186383, 0.239794,
		41.346756, 45.888142, 51.766304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010620, 46.000652, 50.995995>,  <40.679821, 46.018612, 51.598450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010620, 46.000652, 50.995995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.300346, 45.838444, 51.219036>,  <41.474182, 45.741119, 51.352859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.300346, 45.838444, 51.219036>,  <41.010620, 46.000652, 50.995995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300346, 45.838444, 51.219036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401260, -0.409735, -0.819212,
		0.560676, 0.817111, -0.134058,
		0.724315, -0.405520, 0.557603,
		41.517639, 45.716789, 51.386318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580425, 46.223877, 50.721615>,  <41.010620, 46.000652, 50.995995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580425, 46.223877, 50.721615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658745, 45.875370, 50.901634>,  <41.705738, 45.666264, 51.009647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658745, 45.875370, 50.901634>,  <41.580425, 46.223877, 50.721615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.658745, 45.875370, 50.901634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326683, -0.374769, -0.867656,
		0.924629, 0.316914, 0.211249,
		0.195803, -0.871271, 0.450053,
		41.717487, 45.613987, 51.036652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.090881, 45.900829, 50.399742>,  <41.580425, 46.223877, 50.721615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.090881, 45.900829, 50.399742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947510, 45.595669, 50.614967>,  <41.861488, 45.412575, 50.744102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947510, 45.595669, 50.614967>,  <42.090881, 45.900829, 50.399742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.947510, 45.595669, 50.614967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198292, -0.625424, -0.754669,
		0.912255, -0.163801, 0.375447,
		-0.358429, -0.762899, 0.538066,
		41.839981, 45.366798, 50.776386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.501595, 45.370861, 50.252556>,  <42.090881, 45.900829, 50.399742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.501595, 45.370861, 50.252556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.229568, 45.142292, 50.436287>,  <42.066353, 45.005150, 50.546524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.229568, 45.142292, 50.436287>,  <42.501595, 45.370861, 50.252556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.229568, 45.142292, 50.436287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202497, -0.748540, -0.631413,
		0.704629, -0.336393, 0.624770,
		-0.680068, -0.571426, 0.459325,
		42.025547, 44.970863, 50.574085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833118, 44.793724, 50.325226>,  <42.501595, 45.370861, 50.252556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833118, 44.793724, 50.325226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451317, 44.680260, 50.362015>,  <42.222237, 44.612183, 50.384087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451317, 44.680260, 50.362015>,  <42.833118, 44.793724, 50.325226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.451317, 44.680260, 50.362015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169527, -0.769916, -0.615215,
		0.245320, -0.571634, 0.782977,
		-0.954504, -0.283660, 0.091968,
		42.164967, 44.595161, 50.389606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.799469, 43.988838, 50.470352>,  <42.833118, 44.793724, 50.325226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.799469, 43.988838, 50.470352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.444664, 44.107121, 50.328495>,  <42.231781, 44.178089, 50.243382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.444664, 44.107121, 50.328495>,  <42.799469, 43.988838, 50.470352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.444664, 44.107121, 50.328495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007041, -0.776608, -0.629945,
		-0.461695, -0.556271, 0.690942,
		-0.887011, 0.295707, -0.354639,
		42.178562, 44.195831, 50.222103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577019, 43.358391, 50.235836>,  <42.799469, 43.988838, 50.470352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.577019, 43.358391, 50.235836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354889, 43.628910, 50.042244>,  <42.221611, 43.791222, 49.926090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354889, 43.628910, 50.042244>,  <42.577019, 43.358391, 50.235836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354889, 43.628910, 50.042244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002987, -0.580334, -0.814373,
		-0.831628, -0.453687, 0.320253,
		-0.555324, 0.676299, -0.483977,
		42.188293, 43.831799, 49.897049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077904, 42.958450, 49.896702>,  <42.577019, 43.358391, 50.235836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.077904, 42.958450, 49.896702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108192, 43.302929, 49.695663>,  <42.126366, 43.509617, 49.575039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108192, 43.302929, 49.695663>,  <42.077904, 42.958450, 49.896702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.108192, 43.302929, 49.695663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063271, -0.507180, -0.859515,
		-0.995119, 0.033286, -0.092894,
		0.075724, 0.861197, -0.502598,
		42.130909, 43.561287, 49.544884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644238, 42.895241, 49.293655>,  <42.077904, 42.958450, 49.896702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644238, 42.895241, 49.293655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.923759, 43.172703, 49.223785>,  <42.091473, 43.339180, 49.181862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.923759, 43.172703, 49.223785>,  <41.644238, 42.895241, 49.293655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.923759, 43.172703, 49.223785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128894, -0.362309, -0.923103,
		-0.703601, 0.622556, -0.342592,
		0.698807, 0.693654, -0.174678,
		42.133400, 43.380798, 49.171383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587757, 42.986401, 48.538170>,  <41.644238, 42.895241, 49.293655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587757, 42.986401, 48.538170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928398, 43.171364, 48.636925>,  <42.132782, 43.282341, 48.696178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928398, 43.171364, 48.636925>,  <41.587757, 42.986401, 48.538170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928398, 43.171364, 48.636925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433672, -0.356940, -0.827358,
		-0.294448, 0.811651, -0.504503,
		0.851604, 0.462403, 0.246890,
		42.183880, 43.310085, 48.710991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809055, 43.436729, 48.031319>,  <41.587757, 42.986401, 48.538170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809055, 43.436729, 48.031319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.152542, 43.370056, 48.225151>,  <42.358635, 43.330051, 48.341450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.152542, 43.370056, 48.225151>,  <41.809055, 43.436729, 48.031319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.152542, 43.370056, 48.225151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473019, -0.105916, -0.874663,
		0.197119, 0.980305, -0.012106,
		0.858718, -0.166686, 0.484581,
		42.410156, 43.320049, 48.370525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277950, 43.786186, 47.698677>,  <41.809055, 43.436729, 48.031319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277950, 43.786186, 47.698677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505409, 43.539185, 47.916054>,  <42.641884, 43.390984, 48.046482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505409, 43.539185, 47.916054>,  <42.277950, 43.786186, 47.698677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505409, 43.539185, 47.916054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531411, -0.228518, -0.815709,
		0.627891, 0.752642, 0.198203,
		0.568644, -0.617503, 0.543446,
		42.676003, 43.353935, 48.079086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.876797, 43.788509, 47.280003>,  <42.277950, 43.786186, 47.698677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.876797, 43.788509, 47.280003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.920601, 43.484173, 47.535854>,  <42.946884, 43.301571, 47.689365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.920601, 43.484173, 47.535854>,  <42.876797, 43.788509, 47.280003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.920601, 43.484173, 47.535854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713578, -0.387796, -0.583455,
		0.691963, 0.520324, 0.500449,
		0.109514, -0.760839, 0.639633,
		42.953457, 43.255920, 47.727745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.578922, 43.776844, 47.462807>,  <42.876797, 43.788509, 47.280003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.578922, 43.776844, 47.462807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.406487, 43.415958, 47.468178>,  <43.303024, 43.199429, 47.471401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.406487, 43.415958, 47.468178>,  <43.578922, 43.776844, 47.462807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.406487, 43.415958, 47.468178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526143, -0.263429, -0.808565,
		0.733033, -0.341498, 0.588253,
		-0.431086, -0.902211, 0.013425,
		43.277161, 43.145294, 47.472206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.060291, 43.324757, 47.184361>,  <43.578922, 43.776844, 47.462807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.060291, 43.324757, 47.184361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.728081, 43.101986, 47.181198>,  <43.528755, 42.968323, 47.179298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.728081, 43.101986, 47.181198>,  <44.060291, 43.324757, 47.184361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.728081, 43.101986, 47.181198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381854, -0.558995, -0.736011,
		0.405482, -0.614296, 0.676924,
		-0.830525, -0.556925, -0.007908,
		43.478924, 42.934910, 47.178825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.238995, 42.604996, 47.231075>,  <44.060291, 43.324757, 47.184361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.238995, 42.604996, 47.231075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.896675, 42.649746, 47.029053>,  <43.691284, 42.676598, 46.907837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.896675, 42.649746, 47.029053>,  <44.238995, 42.604996, 47.231075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.896675, 42.649746, 47.029053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355233, -0.582637, -0.730988,
		-0.376047, -0.804995, 0.458880,
		-0.855803, 0.111877, -0.505060,
		43.639935, 42.683308, 46.877533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.238598, 41.963905, 46.820801>,  <44.238995, 42.604996, 47.231075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.238598, 41.963905, 46.820801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.955681, 42.198013, 46.662209>,  <43.785931, 42.338478, 46.567051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.955681, 42.198013, 46.662209>,  <44.238598, 41.963905, 46.820801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.955681, 42.198013, 46.662209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206571, -0.365266, -0.907694,
		-0.676069, -0.723905, 0.137449,
		-0.707289, 0.585271, -0.396483,
		43.743492, 42.373596, 46.543262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.891216, 41.545868, 46.235905>,  <44.238598, 41.963905, 46.820801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.891216, 41.545868, 46.235905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.760361, 41.917934, 46.169239>,  <43.681847, 42.141174, 46.129238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.760361, 41.917934, 46.169239>,  <43.891216, 41.545868, 46.235905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.760361, 41.917934, 46.169239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095926, -0.142773, -0.985096,
		-0.940095, -0.338250, -0.042520,
		-0.327138, 0.930163, -0.166667,
		43.662220, 42.196983, 46.119240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.360641, 41.601795, 45.591892>,  <43.891216, 41.545868, 46.235905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.360641, 41.601795, 45.591892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.509560, 41.971611, 45.624432>,  <43.598911, 42.193501, 45.643955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.509560, 41.971611, 45.624432>,  <43.360641, 41.601795, 45.591892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.509560, 41.971611, 45.624432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059951, 0.111420, -0.991964,
		-0.926175, 0.364429, 0.096908,
		0.372298, 0.924542, 0.081346,
		43.621250, 42.248974, 45.648834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.976418, 41.954308, 45.254299>,  <43.360641, 41.601795, 45.591892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.976418, 41.954308, 45.254299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310928, 42.173267, 45.266953>,  <43.511635, 42.304642, 45.274544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310928, 42.173267, 45.266953>,  <42.976418, 41.954308, 45.254299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.310928, 42.173267, 45.266953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152822, 0.288092, -0.945330,
		-0.526583, 0.785722, 0.324579,
		0.836275, 0.547398, 0.031629,
		43.561810, 42.337486, 45.276440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.836006, 42.683777, 45.064728>,  <42.976418, 41.954308, 45.254299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.836006, 42.683777, 45.064728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.233002, 42.716351, 45.028217>,  <43.471199, 42.735897, 45.006310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.233002, 42.716351, 45.028217>,  <42.836006, 42.683777, 45.064728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.233002, 42.716351, 45.028217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120972, 0.542649, -0.831203,
		-0.018160, 0.836002, 0.548425,
		0.992490, 0.081438, -0.091278,
		43.530750, 42.740784, 45.000835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.915627, 43.369568, 44.881363>,  <42.836006, 42.683777, 45.064728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.915627, 43.369568, 44.881363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.251106, 43.182941, 44.769005>,  <43.452393, 43.070965, 44.701591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.251106, 43.182941, 44.769005>,  <42.915627, 43.369568, 44.881363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.251106, 43.182941, 44.769005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048034, 0.577155, -0.815221,
		0.542471, 0.670233, 0.506471,
		0.838700, -0.466561, -0.280896,
		43.502716, 43.042973, 44.684734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.498100, 43.836555, 44.738514>,  <42.915627, 43.369568, 44.881363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.498100, 43.836555, 44.738514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.563705, 43.516701, 44.507454>,  <43.603069, 43.324787, 44.368820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.563705, 43.516701, 44.507454>,  <43.498100, 43.836555, 44.738514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.563705, 43.516701, 44.507454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001471, 0.585775, -0.810472,
		0.986457, 0.132081, 0.097253,
		0.164016, -0.799639, -0.577648,
		43.612911, 43.276810, 44.334160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.921127, 44.138451, 44.097347>,  <43.498100, 43.836555, 44.738514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.921127, 44.138451, 44.097347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.805771, 43.771389, 43.987984>,  <43.736557, 43.551151, 43.922367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.805771, 43.771389, 43.987984>,  <43.921127, 44.138451, 44.097347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.805771, 43.771389, 43.987984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067605, 0.265312, -0.961789,
		0.955125, -0.295850, -0.014474,
		-0.288386, -0.917650, -0.273407,
		43.719254, 43.496094, 43.905960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.314121, 43.947521, 43.538319>,  <43.921127, 44.138451, 44.097347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.314121, 43.947521, 43.538319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.003014, 43.704273, 43.474731>,  <43.816349, 43.558323, 43.436581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.003014, 43.704273, 43.474731>,  <44.314121, 43.947521, 43.538319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.003014, 43.704273, 43.474731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102744, 0.372509, -0.922323,
		0.620101, -0.701017, -0.352205,
		-0.777765, -0.608121, -0.158968,
		43.769684, 43.521835, 43.427040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.455254, 43.583649, 42.929165>,  <44.314121, 43.947521, 43.538319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.455254, 43.583649, 42.929165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.058578, 43.599087, 42.978275>,  <43.820576, 43.608349, 43.007744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.058578, 43.599087, 42.978275>,  <44.455254, 43.583649, 42.929165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.058578, 43.599087, 42.978275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111387, 0.220527, -0.969000,
		-0.064479, -0.974617, -0.214393,
		-0.991683, 0.038600, 0.122779,
		43.761074, 43.610668, 43.015110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.139721, 43.070778, 42.385643>,  <44.455254, 43.583649, 42.929165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.139721, 43.070778, 42.385643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.852806, 43.324444, 42.501114>,  <43.680656, 43.476643, 42.570396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.852806, 43.324444, 42.501114>,  <44.139721, 43.070778, 42.385643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.852806, 43.324444, 42.501114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220554, 0.186355, -0.957407,
		-0.660954, -0.750401, 0.006199,
		-0.717283, 0.634169, 0.288676,
		43.637623, 43.514694, 42.587715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.606125, 42.856525, 42.007195>,  <44.139721, 43.070778, 42.385643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.606125, 42.856525, 42.007195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.514130, 43.233788, 42.103161>,  <43.458935, 43.460144, 42.160740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.514130, 43.233788, 42.103161>,  <43.606125, 42.856525, 42.007195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.514130, 43.233788, 42.103161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346860, 0.150893, -0.925699,
		-0.909283, -0.296113, 0.292441,
		-0.229984, 0.943159, 0.239914,
		43.445133, 43.516735, 42.175137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.914478, 42.966324, 41.817181>,  <43.606125, 42.856525, 42.007195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.914478, 42.966324, 41.817181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.035767, 43.346508, 41.844532>,  <43.108540, 43.574619, 41.860943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.035767, 43.346508, 41.844532>,  <42.914478, 42.966324, 41.817181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.035767, 43.346508, 41.844532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633637, 0.254697, -0.730502,
		-0.711730, 0.178180, 0.679479,
		0.303222, 0.950464, 0.068375,
		43.126732, 43.631649, 41.865044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.287533, 43.359695, 41.810299>,  <42.914478, 42.966324, 41.817181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.287533, 43.359695, 41.810299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.584328, 43.604374, 41.700554>,  <42.762405, 43.751183, 41.634708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.584328, 43.604374, 41.700554>,  <42.287533, 43.359695, 41.810299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.584328, 43.604374, 41.700554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576240, 0.372754, -0.727325,
		-0.342636, 0.697766, 0.629065,
		0.741989, 0.611700, -0.274362,
		42.806923, 43.787884, 41.618244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997849, 43.884972, 41.506645>,  <42.287533, 43.359695, 41.810299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997849, 43.884972, 41.506645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368973, 43.961361, 41.378456>,  <42.591648, 44.007195, 41.301544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368973, 43.961361, 41.378456>,  <41.997849, 43.884972, 41.506645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.368973, 43.961361, 41.378456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372105, 0.412330, -0.831578,
		-0.026667, 0.890794, 0.453625,
		0.927807, 0.190972, -0.320473,
		42.647316, 44.018654, 41.282314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032963, 44.573242, 41.383629>,  <41.997849, 43.884972, 41.506645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032963, 44.573242, 41.383629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.341499, 44.457516, 41.156887>,  <42.526623, 44.388081, 41.020840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.341499, 44.457516, 41.156887>,  <42.032963, 44.573242, 41.383629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.341499, 44.457516, 41.156887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250414, 0.680880, -0.688255,
		0.585083, 0.672830, 0.452745,
		0.771343, -0.289313, -0.566858,
		42.572903, 44.370724, 40.986828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.348042, 45.190281, 41.031429>,  <42.032963, 44.573242, 41.383629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.348042, 45.190281, 41.031429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475685, 44.890530, 40.799362>,  <42.552269, 44.710678, 40.660122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475685, 44.890530, 40.799362>,  <42.348042, 45.190281, 41.031429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.475685, 44.890530, 40.799362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140985, 0.567829, -0.810984,
		0.937174, 0.340584, 0.075545,
		0.319105, -0.749382, -0.580171,
		42.571415, 44.665714, 40.625309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.758728, 45.531483, 40.397404>,  <42.348042, 45.190281, 41.031429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.758728, 45.531483, 40.397404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.703468, 45.154514, 40.275578>,  <42.670311, 44.928333, 40.202480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.703468, 45.154514, 40.275578>,  <42.758728, 45.531483, 40.397404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.703468, 45.154514, 40.275578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237788, 0.330083, -0.913511,
		0.961443, -0.053777, -0.269696,
		-0.138148, -0.942419, -0.304568,
		42.662025, 44.871788, 40.184208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.126049, 45.506767, 39.784687>,  <42.758728, 45.531483, 40.397404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.126049, 45.506767, 39.784687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.867599, 45.201668, 39.773857>,  <42.712528, 45.018608, 39.767361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.867599, 45.201668, 39.773857>,  <43.126049, 45.506767, 39.784687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.867599, 45.201668, 39.773857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266581, 0.258773, -0.928424,
		0.715160, -0.592664, -0.370535,
		-0.646128, -0.762749, -0.027072,
		42.673759, 44.972843, 39.765736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.108868, 45.188736, 39.143532>,  <43.126049, 45.506767, 39.784687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.108868, 45.188736, 39.143532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.740715, 45.068687, 39.243786>,  <42.519821, 44.996658, 39.303940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.740715, 45.068687, 39.243786>,  <43.108868, 45.188736, 39.143532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740715, 45.068687, 39.243786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340174, 0.298518, -0.891723,
		0.192798, -0.905990, -0.376843,
		-0.920386, -0.300115, 0.250641,
		42.464600, 44.978653, 39.318977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.877171, 44.715725, 38.595196>,  <43.108868, 45.188736, 39.143532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.877171, 44.715725, 38.595196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.540337, 44.835224, 38.774811>,  <42.338234, 44.906925, 38.882580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.540337, 44.835224, 38.774811>,  <42.877171, 44.715725, 38.595196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.540337, 44.835224, 38.774811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393438, 0.229213, -0.890319,
		-0.368905, -0.926397, -0.075479,
		-0.842090, 0.298747, 0.449038,
		42.287708, 44.924847, 38.909523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355103, 44.300148, 38.221100>,  <42.877171, 44.715725, 38.595196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355103, 44.300148, 38.221100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.167427, 44.611534, 38.387882>,  <42.054821, 44.798367, 38.487949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.167427, 44.611534, 38.387882>,  <42.355103, 44.300148, 38.221100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.167427, 44.611534, 38.387882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437203, 0.205458, -0.875580,
		-0.767275, -0.593108, 0.243948,
		-0.469193, 0.778466, 0.416951,
		42.026669, 44.845074, 38.512966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758392, 44.353256, 37.836990>,  <42.355103, 44.300148, 38.221100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.758392, 44.353256, 37.836990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735901, 44.695904, 38.042137>,  <41.722404, 44.901493, 38.165226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735901, 44.695904, 38.042137>,  <41.758392, 44.353256, 37.836990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735901, 44.695904, 38.042137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462379, 0.432935, -0.773804,
		-0.884898, -0.280649, 0.371742,
		-0.056227, 0.856623, 0.512869,
		41.719032, 44.952892, 38.195999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076790, 44.589535, 37.841038>,  <41.758392, 44.353256, 37.836990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.076790, 44.589535, 37.841038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.282341, 44.929604, 37.886879>,  <41.405670, 45.133644, 37.914383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.282341, 44.929604, 37.886879>,  <41.076790, 44.589535, 37.841038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282341, 44.929604, 37.886879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519933, 0.414913, -0.746671,
		-0.682350, 0.324111, 0.655248,
		0.513875, 0.850176, 0.114600,
		41.436504, 45.184658, 37.921261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558861, 45.169079, 37.811081>,  <41.076790, 44.589535, 37.841038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558861, 45.169079, 37.811081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918671, 45.313244, 37.712322>,  <41.134556, 45.399742, 37.653065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918671, 45.313244, 37.712322>,  <40.558861, 45.169079, 37.811081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918671, 45.313244, 37.712322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396038, 0.434144, -0.809119,
		-0.184429, 0.825602, 0.533260,
		0.899522, 0.360417, -0.246901,
		41.188526, 45.421368, 37.638252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361671, 45.811455, 37.617790>,  <40.558861, 45.169079, 37.811081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361671, 45.811455, 37.617790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714989, 45.723965, 37.451927>,  <40.926979, 45.671471, 37.352409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714989, 45.723965, 37.451927>,  <40.361671, 45.811455, 37.617790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714989, 45.723965, 37.451927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281849, 0.459035, -0.842525,
		0.374629, 0.861072, 0.343815,
		0.883298, -0.218730, -0.414660,
		40.979977, 45.658344, 37.327530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394188, 46.278004, 37.101421>,  <40.361671, 45.811455, 37.617790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394188, 46.278004, 37.101421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.691673, 46.030312, 37.000668>,  <40.870163, 45.881695, 36.940216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.691673, 46.030312, 37.000668>,  <40.394188, 46.278004, 37.101421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.691673, 46.030312, 37.000668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098664, 0.270987, -0.957513,
		0.661182, 0.736964, 0.140440,
		0.743710, -0.619234, -0.251884,
		40.914787, 45.844540, 36.925102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718273, 46.633690, 36.631859>,  <40.394188, 46.278004, 37.101421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718273, 46.633690, 36.631859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818199, 46.253021, 36.560390>,  <40.878155, 46.024620, 36.517509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818199, 46.253021, 36.560390>,  <40.718273, 46.633690, 36.631859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818199, 46.253021, 36.560390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077472, 0.164282, -0.983366,
		0.965190, 0.259498, -0.032688,
		0.249812, -0.951668, -0.178667,
		40.893143, 45.967522, 36.506790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308952, 46.628719, 36.177269>,  <40.718273, 46.633690, 36.631859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.308952, 46.628719, 36.177269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087090, 46.298737, 36.133797>,  <40.953972, 46.100746, 36.107712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087090, 46.298737, 36.133797>,  <41.308952, 46.628719, 36.177269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087090, 46.298737, 36.133797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034477, 0.107722, -0.993583,
		0.831367, -0.554841, -0.031306,
		-0.554653, -0.824953, -0.108685,
		40.920692, 46.051250, 36.101192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566956, 46.458405, 35.612694>,  <41.308952, 46.628719, 36.177269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566956, 46.458405, 35.612694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.243355, 46.224785, 35.639248>,  <41.049194, 46.084614, 35.655178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.243355, 46.224785, 35.639248>,  <41.566956, 46.458405, 35.612694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243355, 46.224785, 35.639248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037026, -0.062075, -0.997384,
		0.586644, -0.809340, 0.028593,
		-0.808998, -0.584050, 0.066382,
		41.000656, 46.049568, 35.659164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747818, 45.766785, 35.155697>,  <41.566956, 46.458405, 35.612694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747818, 45.766785, 35.155697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.356216, 45.836754, 35.197567>,  <41.121258, 45.878735, 35.222687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.356216, 45.836754, 35.197567>,  <41.747818, 45.766785, 35.155697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.356216, 45.836754, 35.197567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095453, 0.060329, -0.993604,
		-0.180121, -0.982732, -0.042365,
		-0.979002, 0.174925, 0.104671,
		41.062515, 45.889233, 35.228970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462566, 45.387085, 34.695190>,  <41.747818, 45.766785, 35.155697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.462566, 45.387085, 34.695190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178345, 45.659805, 34.764763>,  <41.007812, 45.823437, 34.806507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178345, 45.659805, 34.764763>,  <41.462566, 45.387085, 34.695190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178345, 45.659805, 34.764763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149869, 0.094872, -0.984143,
		-0.687493, -0.725358, 0.034769,
		-0.710558, 0.681803, 0.173932,
		40.965176, 45.864346, 34.816944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971844, 45.192776, 34.191578>,  <41.462566, 45.387085, 34.695190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971844, 45.192776, 34.191578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908821, 45.570827, 34.306061>,  <40.871010, 45.797657, 34.374748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908821, 45.570827, 34.306061>,  <40.971844, 45.192776, 34.191578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908821, 45.570827, 34.306061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019412, 0.286803, -0.957793,
		-0.987320, -0.156458, -0.026839,
		-0.157552, 0.945127, 0.286203,
		40.861557, 45.854366, 34.391922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530788, 45.408752, 33.725224>,  <40.971844, 45.192776, 34.191578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530788, 45.408752, 33.725224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676811, 45.753376, 33.866337>,  <40.764423, 45.960148, 33.951004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676811, 45.753376, 33.866337>,  <40.530788, 45.408752, 33.725224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676811, 45.753376, 33.866337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005235, 0.377025, -0.926188,
		-0.930970, 0.339958, 0.133125,
		0.365057, 0.861557, 0.352779,
		40.786327, 46.011845, 33.972172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372089, 45.818684, 33.204346>,  <40.530788, 45.408752, 33.725224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372089, 45.818684, 33.204346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.609215, 46.049057, 33.429516>,  <40.751488, 46.187279, 33.564617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.609215, 46.049057, 33.429516>,  <40.372089, 45.818684, 33.204346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609215, 46.049057, 33.429516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160101, 0.600754, -0.783239,
		-0.789268, 0.554436, 0.263926,
		0.592810, 0.575930, 0.562921,
		40.787056, 46.221836, 33.598392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096668, 46.578365, 33.230427>,  <40.372089, 45.818684, 33.204346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096668, 46.578365, 33.230427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484474, 46.607864, 33.323898>,  <40.717155, 46.625565, 33.379982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484474, 46.607864, 33.323898>,  <40.096668, 46.578365, 33.230427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484474, 46.607864, 33.323898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100801, 0.749179, -0.654652,
		-0.223346, 0.658249, 0.718905,
		0.969513, 0.073747, 0.233678,
		40.775330, 46.629990, 33.394001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244499, 47.338226, 33.324444>,  <40.096668, 46.578365, 33.230427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244499, 47.338226, 33.324444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574493, 47.131538, 33.232872>,  <40.772488, 47.007526, 33.177929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574493, 47.131538, 33.232872>,  <40.244499, 47.338226, 33.324444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574493, 47.131538, 33.232872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156084, 0.597621, -0.786440,
		0.543179, 0.613067, 0.573678,
		0.824982, -0.516719, -0.228925,
		40.821987, 46.976524, 33.164196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<44.440754, 45.792263, 32.041595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.063644, 45.854538, 32.159534>,  <43.837379, 45.891903, 32.230297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.063644, 45.854538, 32.159534>,  <44.440754, 45.792263, 32.041595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.063644, 45.854538, 32.159534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200942, -0.440374, 0.875039,
		0.266077, 0.884212, 0.383890,
		-0.942775, 0.155688, 0.294849,
		43.780811, 45.901245, 32.247990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.414326, 46.072929, 32.642246>,  <44.440754, 45.792263, 32.041595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.414326, 46.072929, 32.642246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.049492, 45.909859, 32.659721>,  <43.830593, 45.812016, 32.670208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.049492, 45.909859, 32.659721>,  <44.414326, 46.072929, 32.642246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.049492, 45.909859, 32.659721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227942, -0.415608, 0.880518,
		-0.340808, 0.813062, 0.471995,
		-0.912081, -0.407675, 0.043689,
		43.775867, 45.787556, 32.672829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.098503, 46.337978, 33.245865>,  <44.414326, 46.072929, 32.642246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.098503, 46.337978, 33.245865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.868820, 46.024288, 33.151814>,  <43.731010, 45.836075, 33.095383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.868820, 46.024288, 33.151814>,  <44.098503, 46.337978, 33.245865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.868820, 46.024288, 33.151814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047512, -0.318626, 0.946689,
		-0.817331, 0.532423, 0.220217,
		-0.574206, -0.784222, -0.235126,
		43.696560, 45.789021, 33.081276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.546505, 46.394440, 33.708324>,  <44.098503, 46.337978, 33.245865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.546505, 46.394440, 33.708324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.555443, 46.015507, 33.580536>,  <43.560806, 45.788147, 33.503864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.555443, 46.015507, 33.580536>,  <43.546505, 46.394440, 33.708324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.555443, 46.015507, 33.580536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140124, -0.319361, 0.937216,
		-0.989882, 0.023825, -0.139880,
		0.022343, -0.947334, -0.319468,
		43.562145, 45.731308, 33.484695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.003727, 46.060486, 34.008198>,  <43.546505, 46.394440, 33.708324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.003727, 46.060486, 34.008198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.242752, 45.757889, 33.901886>,  <43.386166, 45.576332, 33.838097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.242752, 45.757889, 33.901886>,  <43.003727, 46.060486, 34.008198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.242752, 45.757889, 33.901886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091581, -0.264912, 0.959914,
		-0.796575, -0.597950, -0.089021,
		0.597563, -0.756491, -0.265783,
		43.422020, 45.530941, 33.822151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.765640, 45.507660, 34.447689>,  <43.003727, 46.060486, 34.008198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.765640, 45.507660, 34.447689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.127434, 45.382717, 34.331524>,  <43.344509, 45.307751, 34.261826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.127434, 45.382717, 34.331524>,  <42.765640, 45.507660, 34.447689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.127434, 45.382717, 34.331524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197912, -0.295777, 0.934530,
		-0.377808, -0.902744, -0.205706,
		0.904485, -0.312361, -0.290411,
		43.398781, 45.289009, 34.244400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882458, 44.797115, 34.720318>,  <42.765640, 45.507660, 34.447689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.882458, 44.797115, 34.720318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.246567, 44.935638, 34.629562>,  <43.465031, 45.018753, 34.575108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.246567, 44.935638, 34.629562>,  <42.882458, 44.797115, 34.720318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.246567, 44.935638, 34.629562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299352, -0.171957, 0.938520,
		0.286005, -0.922225, -0.260196,
		0.910269, 0.346312, -0.226889,
		43.519646, 45.039532, 34.561497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.269337, 44.292534, 35.032795>,  <42.882458, 44.797115, 34.720318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.269337, 44.292534, 35.032795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.517685, 44.602573, 34.985916>,  <43.666695, 44.788597, 34.957787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.517685, 44.602573, 34.985916>,  <43.269337, 44.292534, 35.032795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.517685, 44.602573, 34.985916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441964, -0.222632, 0.868967,
		0.647443, -0.591318, -0.480792,
		0.620875, 0.775099, -0.117200,
		43.703949, 44.835102, 34.950756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.016422, 44.098610, 35.080971>,  <43.269337, 44.292534, 35.032795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.016422, 44.098610, 35.080971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.031837, 44.490887, 35.157658>,  <44.041088, 44.726254, 35.203671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.031837, 44.490887, 35.157658>,  <44.016422, 44.098610, 35.080971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.031837, 44.490887, 35.157658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635413, -0.172130, 0.752742,
		0.771210, 0.092810, -0.629779,
		0.038542, 0.980693, 0.191721,
		44.043400, 44.785095, 35.215176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.791397, 44.246037, 35.258827>,  <44.016422, 44.098610, 35.080971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.791397, 44.246037, 35.258827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.559578, 44.529030, 35.420616>,  <44.420486, 44.698826, 35.517689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.559578, 44.529030, 35.420616>,  <44.791397, 44.246037, 35.258827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.559578, 44.529030, 35.420616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361589, -0.221548, 0.905632,
		0.730327, 0.671109, -0.127420,
		-0.579548, 0.707481, 0.404469,
		44.385712, 44.741276, 35.541958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.218807, 44.773598, 35.612709>,  <44.791397, 44.246037, 35.258827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.218807, 44.773598, 35.612709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.844536, 44.792023, 35.752640>,  <44.619972, 44.803078, 35.836597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.844536, 44.792023, 35.752640>,  <45.218807, 44.773598, 35.612709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.844536, 44.792023, 35.752640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346905, -0.061133, 0.935906,
		0.064499, 0.997066, 0.041220,
		-0.935680, 0.046066, 0.349830,
		44.563831, 44.805843, 35.857590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.398724, 45.017956, 36.229683>,  <45.218807, 44.773598, 35.612709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.398724, 45.017956, 36.229683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.006378, 44.943081, 36.251083>,  <44.770969, 44.898155, 36.263924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.006378, 44.943081, 36.251083>,  <45.398724, 45.017956, 36.229683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.006378, 44.943081, 36.251083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039923, 0.075568, 0.996341,
		-0.190548, 0.979413, -0.066649,
		-0.980866, -0.187190, 0.053501,
		44.712120, 44.886925, 36.267132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.023357, 45.517078, 36.689476>,  <45.398724, 45.017956, 36.229683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.023357, 45.517078, 36.689476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.796745, 45.187469, 36.687283>,  <44.660778, 44.989704, 36.685966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.796745, 45.187469, 36.687283>,  <45.023357, 45.517078, 36.689476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.796745, 45.187469, 36.687283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003137, -0.008808, 0.999956,
		-0.824034, 0.566489, 0.007575,
		-0.566531, -0.824022, -0.005481,
		44.626785, 44.940262, 36.685638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.597855, 45.589428, 37.256287>,  <45.023357, 45.517078, 36.689476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.597855, 45.589428, 37.256287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.602730, 45.198711, 37.170742>,  <44.605656, 44.964283, 37.119415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.602730, 45.198711, 37.170742>,  <44.597855, 45.589428, 37.256287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.602730, 45.198711, 37.170742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129275, -0.210544, 0.968999,
		-0.991534, -0.039453, 0.123709,
		0.012183, -0.976788, -0.213862,
		44.606384, 44.905674, 37.106583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.239300, 45.358624, 37.790180>,  <44.597855, 45.589428, 37.256287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.239300, 45.358624, 37.790180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.396706, 45.030937, 37.623310>,  <44.491150, 44.834328, 37.523190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.396706, 45.030937, 37.623310>,  <44.239300, 45.358624, 37.790180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.396706, 45.030937, 37.623310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111477, -0.407916, 0.906188,
		-0.912533, -0.403106, -0.069199,
		0.393517, -0.819213, -0.417174,
		44.514759, 44.785172, 37.498158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.927647, 44.738136, 38.137035>,  <44.239300, 45.358624, 37.790180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.927647, 44.738136, 38.137035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.285492, 44.632690, 37.992714>,  <44.500198, 44.569424, 37.906120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.285492, 44.632690, 37.992714>,  <43.927647, 44.738136, 38.137035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.285492, 44.632690, 37.992714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227847, -0.425479, 0.875816,
		-0.384385, -0.865724, -0.320577,
		0.894614, -0.263608, -0.360801,
		44.553875, 44.553608, 37.884472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.034763, 44.071850, 38.442657>,  <43.927647, 44.738136, 38.137035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.034763, 44.071850, 38.442657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.406281, 44.154739, 38.319756>,  <44.629189, 44.204472, 38.246014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.406281, 44.154739, 38.319756>,  <44.034763, 44.071850, 38.442657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.406281, 44.154739, 38.319756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365519, -0.375354, 0.851766,
		0.061176, -0.903420, -0.424370,
		0.928791, 0.207223, -0.307255,
		44.684917, 44.216908, 38.227581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.370430, 43.398697, 38.441692>,  <44.034763, 44.071850, 38.442657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.370430, 43.398697, 38.441692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.625511, 43.703979, 38.483376>,  <44.778561, 43.887150, 38.508385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.625511, 43.703979, 38.483376>,  <44.370430, 43.398697, 38.441692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625511, 43.703979, 38.483376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132415, -0.241887, 0.961227,
		0.758817, -0.599177, -0.255312,
		0.637701, 0.763202, 0.104208,
		44.816822, 43.932941, 38.514637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.027145, 43.080410, 38.728683>,  <44.370430, 43.398697, 38.441692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.027145, 43.080410, 38.728683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.037933, 43.468594, 38.824593>,  <45.044407, 43.701504, 38.882137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.037933, 43.468594, 38.824593>,  <45.027145, 43.080410, 38.728683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.037933, 43.468594, 38.824593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293814, -0.236960, 0.926026,
		0.955482, 0.045477, -0.291523,
		0.026967, 0.970454, 0.239773,
		45.046024, 43.759731, 38.896526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.735588, 43.248085, 39.092957>,  <45.027145, 43.080410, 38.728683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.735588, 43.248085, 39.092957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.522057, 43.561390, 39.220409>,  <45.393940, 43.749374, 39.296883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.522057, 43.561390, 39.220409>,  <45.735588, 43.248085, 39.092957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.522057, 43.561390, 39.220409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284708, -0.188330, 0.939932,
		0.796223, 0.592479, -0.122466,
		-0.533826, 0.783263, 0.318636,
		45.361908, 43.796368, 39.316002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.168774, 43.615707, 39.621662>,  <45.735588, 43.248085, 39.092957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.168774, 43.615707, 39.621662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.786552, 43.721455, 39.673862>,  <45.557220, 43.784904, 39.705181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.786552, 43.721455, 39.673862>,  <46.168774, 43.615707, 39.621662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.786552, 43.721455, 39.673862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104139, -0.111439, 0.988300,
		0.275820, 0.957961, 0.078954,
		-0.955552, 0.264370, 0.130498,
		45.499886, 43.800766, 39.713013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.227749, 44.130535, 40.103558>,  <46.168774, 43.615707, 39.621662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.227749, 44.130535, 40.103558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.851585, 43.994560, 40.099987>,  <45.625889, 43.912975, 40.097843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.851585, 43.994560, 40.099987>,  <46.227749, 44.130535, 40.103558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.851585, 43.994560, 40.099987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031552, -0.113377, 0.993051,
		-0.338586, 0.933589, 0.117346,
		-0.940406, -0.339936, -0.008931,
		45.569462, 43.892578, 40.097309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.832706, 44.476307, 40.658867>,  <46.227749, 44.130535, 40.103558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.832706, 44.476307, 40.658867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.668869, 44.121849, 40.572166>,  <45.570568, 43.909176, 40.520145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.668869, 44.121849, 40.572166>,  <45.832706, 44.476307, 40.658867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.668869, 44.121849, 40.572166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117845, -0.287002, 0.950654,
		-0.904625, 0.363838, 0.221982,
		-0.409593, -0.886144, -0.216753,
		45.545990, 43.856007, 40.507141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.552277, 44.341038, 41.265942>,  <45.832706, 44.476307, 40.658867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.552277, 44.341038, 41.265942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.462997, 43.994583, 41.087059>,  <45.409431, 43.786713, 40.979729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.462997, 43.994583, 41.087059>,  <45.552277, 44.341038, 41.265942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.462997, 43.994583, 41.087059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099021, -0.436263, 0.894354,
		-0.969732, 0.243897, 0.011605,
		-0.223194, -0.866135, -0.447209,
		45.396038, 43.734741, 40.952896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.897041, 43.954792, 41.346241>,  <45.552277, 44.341038, 41.265942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.897041, 43.954792, 41.346241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.162300, 43.657757, 41.308701>,  <45.321453, 43.479538, 41.286175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.162300, 43.657757, 41.308701>,  <44.897041, 43.954792, 41.346241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.162300, 43.657757, 41.308701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177026, -0.277431, 0.944295,
		-0.727257, -0.609589, -0.315434,
		0.663143, -0.742586, -0.093850,
		45.361244, 43.434982, 41.280544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.604839, 43.358143, 41.785202>,  <44.897041, 43.954792, 41.346241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.604839, 43.358143, 41.785202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.986366, 43.283070, 41.691380>,  <45.215282, 43.238026, 41.635086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.986366, 43.283070, 41.691380>,  <44.604839, 43.358143, 41.785202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.986366, 43.283070, 41.691380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156981, -0.354299, 0.921862,
		-0.256120, -0.916105, -0.308472,
		0.953813, -0.187683, -0.234554,
		45.272511, 43.226765, 41.621014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.775681, 42.761562, 42.072296>,  <44.604839, 43.358143, 41.785202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.775681, 42.761562, 42.072296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.128120, 42.943123, 42.019157>,  <45.339584, 43.052059, 41.987274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.128120, 42.943123, 42.019157>,  <44.775681, 42.761562, 42.072296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.128120, 42.943123, 42.019157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241215, -0.189691, 0.951752,
		0.406799, -0.870628, -0.276623,
		0.881096, 0.453898, -0.132842,
		45.392448, 43.079292, 41.979305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.217243, 42.263672, 42.375519>,  <44.775681, 42.761562, 42.072296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.217243, 42.263672, 42.375519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.423813, 42.605743, 42.357712>,  <45.547752, 42.810986, 42.347027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.423813, 42.605743, 42.357712>,  <45.217243, 42.263672, 42.375519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.423813, 42.605743, 42.357712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203144, -0.071838, 0.976510,
		0.831890, -0.513335, -0.210822,
		0.516422, 0.855176, -0.044520,
		45.578739, 42.862297, 42.344357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.713501, 42.102688, 42.772377>,  <45.217243, 42.263672, 42.375519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.713501, 42.102688, 42.772377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.728172, 42.502388, 42.767387>,  <45.736973, 42.742207, 42.764393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.728172, 42.502388, 42.767387>,  <45.713501, 42.102688, 42.772377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.728172, 42.502388, 42.767387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388956, -0.002778, 0.921252,
		0.920526, -0.038637, -0.388766,
		0.036674, 0.999250, -0.012471,
		45.739174, 42.802162, 42.763645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.353867, 42.099693, 42.935413>,  <45.713501, 42.102688, 42.772377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.353867, 42.099693, 42.935413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.166336, 42.446522, 43.002796>,  <46.053818, 42.654621, 43.043228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.166336, 42.446522, 43.002796>,  <46.353867, 42.099693, 42.935413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.166336, 42.446522, 43.002796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476119, 0.087432, 0.875023,
		0.743982, 0.490444, -0.453822,
		-0.468829, 0.867075, 0.168462,
		46.025688, 42.706646, 43.053333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.796459, 42.424030, 43.323891>,  <46.353867, 42.099693, 42.935413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.796459, 42.424030, 43.323891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.456749, 42.624077, 43.391560>,  <46.252922, 42.744102, 43.432159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.456749, 42.624077, 43.391560>,  <46.796459, 42.424030, 43.323891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.456749, 42.624077, 43.391560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295888, 0.185504, 0.937037,
		0.437242, 0.845858, -0.305522,
		-0.849276, 0.500112, 0.169169,
		46.201965, 42.774109, 43.442310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.051857, 42.881321, 43.784355>,  <46.796459, 42.424030, 43.323891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.051857, 42.881321, 43.784355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.655106, 42.922802, 43.813820>,  <46.417053, 42.947689, 43.831501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.655106, 42.922802, 43.813820>,  <47.051857, 42.881321, 43.784355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.655106, 42.922802, 43.813820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097499, 0.247871, 0.963874,
		0.081693, 0.963227, -0.255968,
		-0.991877, 0.103699, 0.073664,
		46.357544, 42.953911, 43.835918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.897354, 43.516712, 44.149132>,  <47.051857, 42.881321, 43.784355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.897354, 43.516712, 44.149132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.597931, 43.255455, 44.194851>,  <46.418278, 43.098701, 44.222282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.597931, 43.255455, 44.194851>,  <46.897354, 43.516712, 44.149132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.597931, 43.255455, 44.194851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066624, 0.097423, 0.993010,
		-0.659714, 0.750941, -0.029411,
		-0.748557, -0.653144, 0.114302,
		46.373363, 43.059513, 44.229141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.397446, 43.871479, 44.595600>,  <46.897354, 43.516712, 44.149132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.397446, 43.871479, 44.595600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.325218, 43.478481, 44.613899>,  <46.281883, 43.242683, 44.624878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.325218, 43.478481, 44.613899>,  <46.397446, 43.871479, 44.595600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.325218, 43.478481, 44.613899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058810, 0.035642, 0.997633,
		-0.981803, 0.182830, 0.051345,
		-0.180568, -0.982498, 0.045745,
		46.271049, 43.183731, 44.627625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.855705, 43.829906, 45.045547>,  <46.397446, 43.871479, 44.595600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.855705, 43.829906, 45.045547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.024910, 43.467632, 45.056877>,  <46.126431, 43.250267, 45.063675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.024910, 43.467632, 45.056877>,  <45.855705, 43.829906, 45.045547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.024910, 43.467632, 45.056877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023936, 0.020075, 0.999512,
		-0.905810, -0.423479, -0.013187,
		0.423008, -0.905683, 0.028320,
		46.151814, 43.195927, 45.065372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.511826, 43.451847, 45.624004>,  <45.855705, 43.829906, 45.045547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.511826, 43.451847, 45.624004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.849747, 43.243336, 45.575718>,  <46.052502, 43.118229, 45.546745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.849747, 43.243336, 45.575718>,  <45.511826, 43.451847, 45.624004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.849747, 43.243336, 45.575718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113510, -0.045870, 0.992478,
		-0.522896, -0.852152, 0.020419,
		0.844805, -0.521281, -0.120713,
		46.103188, 43.086952, 45.539505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.478031, 42.845551, 46.150623>,  <45.511826, 43.451847, 45.624004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.478031, 42.845551, 46.150623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.863091, 42.879498, 46.047775>,  <46.094124, 42.899868, 45.986065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.863091, 42.879498, 46.047775>,  <45.478031, 42.845551, 46.150623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.863091, 42.879498, 46.047775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270144, -0.236560, 0.933307,
		0.018387, -0.967903, -0.250650,
		0.962644, 0.084872, -0.257124,
		46.151882, 42.904961, 45.970638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.790550, 42.266304, 46.549068>,  <45.478031, 42.845551, 46.150623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.790550, 42.266304, 46.549068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.094292, 42.512848, 46.465656>,  <46.276535, 42.660774, 46.415607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.094292, 42.512848, 46.465656>,  <45.790550, 42.266304, 46.549068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.094292, 42.512848, 46.465656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320649, -0.075600, 0.944176,
		0.566190, -0.783826, -0.255042,
		0.759351, 0.616362, -0.208529,
		46.322098, 42.697758, 46.403099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.318672, 41.901669, 46.786247>,  <45.790550, 42.266304, 46.549068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.318672, 41.901669, 46.786247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.414871, 42.289680, 46.772400>,  <46.472591, 42.522488, 46.764091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.414871, 42.289680, 46.772400>,  <46.318672, 41.901669, 46.786247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.414871, 42.289680, 46.772400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162329, -0.005028, 0.986724,
		0.956981, -0.242921, -0.158674,
		0.240493, 0.970033, -0.034622,
		46.487019, 42.580692, 46.762012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.740601, 41.968433, 47.483360>,  <46.318672, 41.901669, 46.786247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.740601, 41.968433, 47.483360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.684853, 42.346764, 47.366062>,  <46.651405, 42.573761, 47.295685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.684853, 42.346764, 47.366062>,  <46.740601, 41.968433, 47.483360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.684853, 42.346764, 47.366062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185286, 0.315811, 0.930555,
		0.972752, 0.075355, -0.219262,
		-0.139367, 0.945825, -0.293244,
		46.643044, 42.630512, 47.278088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.291405, 42.504021, 47.641670>,  <46.740601, 41.968433, 47.483360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.291405, 42.504021, 47.641670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.951958, 42.714596, 47.620804>,  <46.748291, 42.840939, 47.608284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.951958, 42.714596, 47.620804>,  <47.291405, 42.504021, 47.641670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.951958, 42.714596, 47.620804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165308, 0.357560, 0.919143,
		0.502523, 0.771373, -0.390454,
		-0.848613, 0.526436, -0.052168,
		46.697372, 42.872528, 47.605152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.381134, 43.057579, 48.013493>,  <47.291405, 42.504021, 47.641670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.381134, 43.057579, 48.013493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.982452, 43.079178, 47.989281>,  <46.743244, 43.092136, 47.974754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.982452, 43.079178, 47.989281>,  <47.381134, 43.057579, 48.013493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.982452, 43.079178, 47.989281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037674, 0.352662, 0.934992,
		0.071829, 0.934192, -0.349466,
		-0.996705, 0.053993, -0.060526,
		46.683441, 43.095375, 47.971123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.170071, 43.700378, 48.314182>,  <47.381134, 43.057579, 48.013493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.170071, 43.700378, 48.314182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.818405, 43.509773, 48.314964>,  <46.607407, 43.395409, 48.315434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.818405, 43.509773, 48.314964>,  <47.170071, 43.700378, 48.314182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.818405, 43.509773, 48.314964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208261, 0.387913, 0.897859,
		-0.428603, 0.788958, -0.440279,
		-0.879163, -0.476518, 0.001951,
		46.554657, 43.366817, 48.315548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.619617, 44.151299, 48.365162>,  <47.170071, 43.700378, 48.314182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.619617, 44.151299, 48.365162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.467278, 43.807987, 48.502747>,  <46.375874, 43.602001, 48.585297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.467278, 43.807987, 48.502747>,  <46.619617, 44.151299, 48.365162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.467278, 43.807987, 48.502747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245781, 0.452588, 0.857179,
		-0.891373, 0.241916, -0.383316,
		-0.380850, -0.858278, 0.343966,
		46.353024, 43.550503, 48.605938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.075535, 44.366760, 48.715115>,  <46.619617, 44.151299, 48.365162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.075535, 44.366760, 48.715115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.118065, 43.991795, 48.847755>,  <46.143581, 43.766815, 48.927338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.118065, 43.991795, 48.847755>,  <46.075535, 44.366760, 48.715115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.118065, 43.991795, 48.847755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334824, 0.280260, 0.899638,
		-0.936263, -0.206682, -0.284068,
		0.106326, -0.937410, 0.331598,
		46.149963, 43.710571, 48.947235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.590813, 44.366562, 49.141953>,  <46.075535, 44.366760, 48.715115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.590813, 44.366562, 49.141953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.780472, 44.038582, 49.270241>,  <45.894268, 43.841793, 49.347214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.780472, 44.038582, 49.270241>,  <45.590813, 44.366562, 49.141953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.780472, 44.038582, 49.270241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224834, 0.239436, 0.944521,
		-0.851252, -0.519956, -0.070823,
		0.474152, -0.819949, 0.320724,
		45.922718, 43.792599, 49.366459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.151524, 44.042637, 49.595676>,  <45.590813, 44.366562, 49.141953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.151524, 44.042637, 49.595676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.496834, 43.865036, 49.691692>,  <45.704021, 43.758476, 49.749302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.496834, 43.865036, 49.691692>,  <45.151524, 44.042637, 49.595676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.496834, 43.865036, 49.691692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166700, 0.198074, 0.965908,
		-0.476411, -0.873858, 0.096977,
		0.863275, -0.444003, 0.240037,
		45.755817, 43.731834, 49.763702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.045662, 43.655037, 50.241539>,  <45.151524, 44.042637, 49.595676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.045662, 43.655037, 50.241539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.440758, 43.717300, 50.236938>,  <45.677814, 43.754658, 50.234177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.440758, 43.717300, 50.236938>,  <45.045662, 43.655037, 50.241539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.440758, 43.717300, 50.236938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037035, 0.305344, 0.951522,
		0.151623, -0.939434, 0.307367,
		0.987744, 0.155656, -0.011505,
		45.737080, 43.763996, 50.233486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.359459, 43.256432, 50.803486>,  <45.045662, 43.655037, 50.241539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.359459, 43.256432, 50.803486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.612076, 43.558468, 50.733063>,  <45.763645, 43.739689, 50.690811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.612076, 43.558468, 50.733063>,  <45.359459, 43.256432, 50.803486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.612076, 43.558468, 50.733063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066911, 0.279299, 0.957870,
		0.772447, -0.593158, 0.226913,
		0.631545, 0.755086, -0.176055,
		45.801540, 43.784992, 50.680244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.659424, 43.344486, 51.463840>,  <45.359459, 43.256432, 50.803486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.659424, 43.344486, 51.463840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.751350, 43.682610, 51.270912>,  <45.806507, 43.885483, 51.155155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.751350, 43.682610, 51.270912>,  <45.659424, 43.344486, 51.463840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.751350, 43.682610, 51.270912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016540, 0.498910, 0.866496,
		0.973093, -0.191160, 0.128640,
		0.229819, 0.845309, -0.482324,
		45.820297, 43.936203, 51.126213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.157806, 43.672329, 51.946316>,  <45.659424, 43.344486, 51.463840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.157806, 43.672329, 51.946316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.030426, 43.981163, 51.726326>,  <45.953999, 44.166462, 51.594330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.030426, 43.981163, 51.726326>,  <46.157806, 43.672329, 51.946316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.030426, 43.981163, 51.726326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049246, 0.565924, 0.822985,
		0.946660, 0.289162, -0.142196,
		-0.318448, 0.772085, -0.549978,
		45.934891, 44.212788, 51.561333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.500118, 44.237816, 52.123318>,  <46.157806, 43.672329, 51.946316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.500118, 44.237816, 52.123318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.159615, 44.358452, 51.951553>,  <45.955311, 44.430832, 51.848495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.159615, 44.358452, 51.951553>,  <46.500118, 44.237816, 52.123318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.159615, 44.358452, 51.951553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297645, 0.396440, 0.868472,
		0.432156, 0.867111, -0.247709,
		-0.851263, 0.301586, -0.429415,
		45.904236, 44.448929, 51.822727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.422211, 44.982376, 52.202030>,  <46.500118, 44.237816, 52.123318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.422211, 44.982376, 52.202030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.054695, 44.846138, 52.122215>,  <45.834187, 44.764397, 52.074326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.054695, 44.846138, 52.122215>,  <46.422211, 44.982376, 52.202030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.054695, 44.846138, 52.122215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374204, 0.590602, 0.714955,
		-0.125661, 0.731564, -0.670093,
		-0.918793, -0.340593, -0.199538,
		45.779057, 44.743961, 52.062355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.058861, 45.523926, 52.317303>,  <46.422211, 44.982376, 52.202030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.058861, 45.523926, 52.317303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.782234, 45.235054, 52.311722>,  <45.616261, 45.061729, 52.308372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.782234, 45.235054, 52.311722>,  <46.058861, 45.523926, 52.317303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.782234, 45.235054, 52.311722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525157, 0.489444, 0.696172,
		-0.495935, 0.488773, -0.717740,
		-0.691563, -0.722181, -0.013950,
		45.574764, 45.018398, 52.307537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.456799, 45.879742, 52.460094>,  <46.058861, 45.523926, 52.317303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.456799, 45.879742, 52.460094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.374748, 45.494080, 52.527428>,  <45.325520, 45.262684, 52.567825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.374748, 45.494080, 52.527428>,  <45.456799, 45.879742, 52.460094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.374748, 45.494080, 52.527428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635970, 0.262029, 0.725867,
		-0.743954, 0.041838, -0.666920,
		-0.205121, -0.964153, 0.168330,
		45.313213, 45.204834, 52.577927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.741154, 45.800484, 52.450871>,  <45.456799, 45.879742, 52.460094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.741154, 45.800484, 52.450871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.862411, 45.474625, 52.648636>,  <44.935165, 45.279110, 52.767296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.862411, 45.474625, 52.648636>,  <44.741154, 45.800484, 52.450871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.862411, 45.474625, 52.648636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694987, 0.165978, 0.699603,
		-0.651995, -0.555692, -0.515857,
		0.303143, -0.814651, 0.494416,
		44.953354, 45.230228, 52.796959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.141876, 45.464668, 52.541969>,  <44.741154, 45.800484, 52.450871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.141876, 45.464668, 52.541969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.404556, 45.308987, 52.800354>,  <44.562164, 45.215580, 52.955387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.404556, 45.308987, 52.800354>,  <44.141876, 45.464668, 52.541969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.404556, 45.308987, 52.800354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624785, 0.198937, 0.755028,
		-0.422366, -0.899414, -0.112527,
		0.656697, -0.389203, 0.645964,
		44.601566, 45.192226, 52.994144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.653236, 45.090771, 52.998840>,  <44.141876, 45.464668, 52.541969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.653236, 45.090771, 52.998840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.001999, 45.154251, 53.184135>,  <44.211258, 45.192337, 53.295311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.001999, 45.154251, 53.184135>,  <43.653236, 45.090771, 52.998840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.001999, 45.154251, 53.184135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476415, 0.056326, 0.877414,
		0.113154, -0.985719, 0.124719,
		0.871909, 0.158701, 0.463238,
		44.263573, 45.201859, 53.323109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.672089, 44.506721, 53.560959>,  <43.653236, 45.090771, 52.998840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.672089, 44.506721, 53.560959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.902153, 44.815399, 53.669525>,  <44.040192, 45.000607, 53.734665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.902153, 44.815399, 53.669525>,  <43.672089, 44.506721, 53.560959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.902153, 44.815399, 53.669525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450612, 0.021963, 0.892450,
		0.682740, -0.635611, 0.360368,
		0.575165, 0.771697, 0.271419,
		44.074703, 45.046909, 53.750950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.960968, 44.418007, 54.212418>,  <43.672089, 44.506721, 53.560959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.960968, 44.418007, 54.212418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.902649, 44.807953, 54.145023>,  <43.867657, 45.041920, 54.104588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.902649, 44.807953, 54.145023>,  <43.960968, 44.418007, 54.212418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.902649, 44.807953, 54.145023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453724, 0.085446, 0.887036,
		0.879134, 0.205773, 0.429861,
		-0.145799, 0.974862, -0.168483,
		43.858910, 45.100410, 54.094479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.093227, 44.587807, 54.827374>,  <43.960968, 44.418007, 54.212418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.093227, 44.587807, 54.827374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.930298, 44.930508, 54.700840>,  <43.832542, 45.136127, 54.624920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.930298, 44.930508, 54.700840>,  <44.093227, 44.587807, 54.827374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.930298, 44.930508, 54.700840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380556, 0.155644, 0.911566,
		0.830222, 0.491680, 0.262646,
		-0.407319, 0.856753, -0.316331,
		43.808102, 45.187534, 54.605942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.202850, 45.034733, 55.384453>,  <44.093227, 44.587807, 54.827374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.202850, 45.034733, 55.384453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.902206, 45.203968, 55.182037>,  <43.721821, 45.305511, 55.060589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.902206, 45.203968, 55.182037>,  <44.202850, 45.034733, 55.384453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.902206, 45.203968, 55.182037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471796, 0.191304, 0.860704,
		0.460962, 0.885662, 0.055826,
		-0.751613, 0.423091, -0.506035,
		43.676723, 45.330894, 55.030228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.926117, 45.558044, 55.883659>,  <44.202850, 45.034733, 55.384453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.926117, 45.558044, 55.883659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.646675, 45.535316, 55.598358>,  <43.479012, 45.521679, 55.427177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.646675, 45.535316, 55.598358>,  <43.926117, 45.558044, 55.883659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.646675, 45.535316, 55.598358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707516, 0.203443, 0.676781,
		0.106653, 0.977437, -0.182325,
		-0.698603, -0.056817, -0.713250,
		43.437096, 45.518272, 55.384384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.520191, 46.131828, 55.998581>,  <43.926117, 45.558044, 55.883659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.520191, 46.131828, 55.998581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.288406, 45.875809, 55.796764>,  <43.149334, 45.722198, 55.675674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.288406, 45.875809, 55.796764>,  <43.520191, 46.131828, 55.998581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.288406, 45.875809, 55.796764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667924, 0.018215, 0.744006,
		-0.467010, 0.768118, -0.438059,
		-0.579464, -0.640049, -0.504538,
		43.114567, 45.683796, 55.645405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<42.395916, 44.824085, 55.004612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.616356, 45.097301, 55.196342>,  <42.748619, 45.261230, 55.311378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.616356, 45.097301, 55.196342>,  <42.395916, 44.824085, 55.004612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.616356, 45.097301, 55.196342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628056, 0.038668, -0.777207,
		-0.549397, 0.729358, -0.407677,
		0.551098, 0.683039, 0.479322,
		42.781685, 45.302212, 55.340137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.473202, 45.380093, 54.506691>,  <42.395916, 44.824085, 55.004612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.473202, 45.380093, 54.506691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.770355, 45.427052, 54.770309>,  <42.948647, 45.455227, 54.928482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.770355, 45.427052, 54.770309>,  <42.473202, 45.380093, 54.506691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.770355, 45.427052, 54.770309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655651, 0.071068, -0.751712,
		-0.135083, 0.990539, -0.024173,
		0.742882, 0.117393, 0.659049,
		42.993221, 45.462269, 54.968025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.784763, 45.940765, 54.264557>,  <42.473202, 45.380093, 54.506691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.784763, 45.940765, 54.264557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.045326, 45.754635, 54.504272>,  <43.201664, 45.642956, 54.648102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.045326, 45.754635, 54.504272>,  <42.784763, 45.940765, 54.264557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.045326, 45.754635, 54.504272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702372, 0.071093, -0.708251,
		0.286960, 0.882281, 0.373140,
		0.651404, -0.465323, 0.599289,
		43.240746, 45.615036, 54.684059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.399742, 46.394287, 54.287594>,  <42.784763, 45.940765, 54.264557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.399742, 46.394287, 54.287594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.512527, 46.015091, 54.346672>,  <43.580200, 45.787575, 54.382118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.512527, 46.015091, 54.346672>,  <43.399742, 46.394287, 54.287594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.512527, 46.015091, 54.346672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657448, 0.078792, -0.749369,
		0.698755, 0.308399, 0.645470,
		0.281963, -0.947988, 0.147700,
		43.597115, 45.730694, 54.390984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.171467, 46.392426, 54.311394>,  <43.399742, 46.394287, 54.287594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.171467, 46.392426, 54.311394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.106705, 46.005356, 54.234047>,  <44.067848, 45.773113, 54.187637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.106705, 46.005356, 54.234047>,  <44.171467, 46.392426, 54.311394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.106705, 46.005356, 54.234047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623883, 0.051448, -0.779823,
		0.764564, -0.246896, 0.595387,
		-0.161903, -0.967675, -0.193369,
		44.058132, 45.715054, 54.176037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.876072, 46.002338, 54.110870>,  <44.171467, 46.392426, 54.311394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.876072, 46.002338, 54.110870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.639183, 45.698532, 54.003239>,  <44.497051, 45.516247, 53.938660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.639183, 45.698532, 54.003239>,  <44.876072, 46.002338, 54.110870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.639183, 45.698532, 54.003239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616501, -0.212076, -0.758255,
		0.518844, -0.614943, 0.593840,
		-0.592223, -0.759518, -0.269078,
		44.461517, 45.470676, 53.922516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.334583, 45.373203, 54.042488>,  <44.876072, 46.002338, 54.110870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.334583, 45.373203, 54.042488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.007782, 45.296204, 53.825066>,  <44.811703, 45.250004, 53.694614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.007782, 45.296204, 53.825066>,  <45.334583, 45.373203, 54.042488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.007782, 45.296204, 53.825066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571019, -0.401287, -0.716174,
		-0.080258, -0.895496, 0.437773,
		-0.817004, -0.192498, -0.543552,
		44.762680, 45.238453, 53.661999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.427032, 44.701790, 53.888210>,  <45.334583, 45.373203, 54.042488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.427032, 44.701790, 53.888210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.166130, 44.847622, 53.622383>,  <45.009590, 44.935120, 53.462887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.166130, 44.847622, 53.622383>,  <45.427032, 44.701790, 53.888210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.166130, 44.847622, 53.622383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504187, -0.445994, -0.739517,
		-0.566005, -0.817418, 0.107085,
		-0.652254, 0.364579, -0.664566,
		44.970455, 44.956997, 53.423012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.220818, 44.181427, 53.464821>,  <45.427032, 44.701790, 53.888210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.220818, 44.181427, 53.464821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.151253, 44.512230, 53.250977>,  <45.109512, 44.710712, 53.122669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.151253, 44.512230, 53.250977>,  <45.220818, 44.181427, 53.464821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.151253, 44.512230, 53.250977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490801, -0.397862, -0.775126,
		-0.853737, -0.397195, -0.336702,
		-0.173916, 0.827008, -0.534613,
		45.099079, 44.760334, 53.090591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.976204, 43.933147, 52.787697>,  <45.220818, 44.181427, 53.464821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.976204, 43.933147, 52.787697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.111542, 44.306099, 52.736809>,  <45.192745, 44.529869, 52.706276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.111542, 44.306099, 52.736809>,  <44.976204, 43.933147, 52.787697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.111542, 44.306099, 52.736809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313184, -0.239060, -0.919112,
		-0.887378, 0.271131, -0.372892,
		0.338343, 0.932383, -0.127223,
		45.213043, 44.585815, 52.698643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.904163, 43.921619, 52.101498>,  <44.976204, 43.933147, 52.787697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.904163, 43.921619, 52.101498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.098778, 44.254631, 52.207458>,  <45.215546, 44.454437, 52.271034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.098778, 44.254631, 52.207458>,  <44.904163, 43.921619, 52.101498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.098778, 44.254631, 52.207458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255706, 0.154237, -0.954372,
		-0.835401, 0.532076, -0.137841,
		0.486538, 0.832530, 0.264905,
		45.244740, 44.504391, 52.286930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.592060, 44.392323, 51.811295>,  <44.904163, 43.921619, 52.101498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.592060, 44.392323, 51.811295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.969521, 44.496731, 51.892677>,  <45.195995, 44.559376, 51.941505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.969521, 44.496731, 51.892677>,  <44.592060, 44.392323, 51.811295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.969521, 44.496731, 51.892677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235939, -0.099505, -0.966660,
		-0.232073, 0.960191, -0.155482,
		0.943650, 0.261020, 0.203454,
		45.252617, 44.575035, 51.953712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.826916, 44.816029, 51.178532>,  <44.592060, 44.392323, 51.811295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.826916, 44.816029, 51.178532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.151276, 44.699726, 51.381668>,  <45.345890, 44.629944, 51.503551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.151276, 44.699726, 51.381668>,  <44.826916, 44.816029, 51.178532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.151276, 44.699726, 51.381668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467410, -0.200339, -0.861041,
		0.352093, 0.935588, -0.026553,
		0.810900, -0.290756, 0.507842,
		45.394547, 44.612499, 51.534019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.367714, 45.120132, 50.861263>,  <44.826916, 44.816029, 51.178532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.367714, 45.120132, 50.861263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.537308, 44.826694, 51.073708>,  <45.639065, 44.650631, 51.201176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.537308, 44.826694, 51.073708>,  <45.367714, 45.120132, 50.861263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.537308, 44.826694, 51.073708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468235, -0.324419, -0.821893,
		0.775238, 0.597154, 0.205945,
		0.423985, -0.733594, 0.531110,
		45.664501, 44.606617, 51.233040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.023262, 45.063721, 50.490280>,  <45.367714, 45.120132, 50.861263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.023262, 45.063721, 50.490280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.969078, 44.714626, 50.677887>,  <45.936569, 44.505169, 50.790451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.969078, 44.714626, 50.677887>,  <46.023262, 45.063721, 50.490280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.969078, 44.714626, 50.677887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455078, -0.475298, -0.752991,
		0.880089, 0.111444, 0.461546,
		-0.135456, -0.872738, 0.469019,
		45.928440, 44.452805, 50.818592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.693302, 44.704735, 50.517395>,  <46.023262, 45.063721, 50.490280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.693302, 44.704735, 50.517395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.408325, 44.427540, 50.561569>,  <46.237339, 44.261223, 50.588074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.408325, 44.427540, 50.561569>,  <46.693302, 44.704735, 50.517395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.408325, 44.427540, 50.561569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410847, -0.539508, -0.734939,
		0.568885, -0.478228, 0.669080,
		-0.712443, -0.692985, 0.110439,
		46.194592, 44.219643, 50.594700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.953987, 44.147907, 50.198330>,  <46.693302, 44.704735, 50.517395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.953987, 44.147907, 50.198330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.570259, 44.035961, 50.213234>,  <46.340023, 43.968792, 50.222176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.570259, 44.035961, 50.213234>,  <46.953987, 44.147907, 50.198330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.570259, 44.035961, 50.213234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173108, -0.687290, -0.705454,
		0.223037, -0.670304, 0.707776,
		-0.959317, -0.279864, 0.037256,
		46.282463, 43.952003, 50.224411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.902374, 43.379501, 50.205578>,  <46.953987, 44.147907, 50.198330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.902374, 43.379501, 50.205578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.553268, 43.506172, 50.056984>,  <46.343807, 43.582176, 49.967827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.553268, 43.506172, 50.056984>,  <46.902374, 43.379501, 50.205578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.553268, 43.506172, 50.056984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141048, -0.564955, -0.812977,
		-0.467327, -0.761932, 0.448403,
		-0.872761, 0.316680, -0.371487,
		46.291439, 43.601177, 49.945538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.805946, 42.945087, 49.747578>,  <46.902374, 43.379501, 50.205578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.805946, 42.945087, 49.747578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.519241, 43.198555, 49.631157>,  <46.347218, 43.350636, 49.561306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.519241, 43.198555, 49.631157>,  <46.805946, 42.945087, 49.747578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.519241, 43.198555, 49.631157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011043, -0.407017, -0.913354,
		-0.697226, -0.657875, 0.284738,
		-0.716765, 0.633670, -0.291048,
		46.304211, 43.388657, 49.543842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.279434, 42.520966, 49.420349>,  <46.805946, 42.945087, 49.747578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.279434, 42.520966, 49.420349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.221375, 42.887791, 49.271797>,  <46.186539, 43.107887, 49.182667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.221375, 42.887791, 49.271797>,  <46.279434, 42.520966, 49.420349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.221375, 42.887791, 49.271797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132013, -0.389953, -0.911323,
		-0.980564, -0.083248, 0.177665,
		-0.145147, 0.917064, -0.371384,
		46.177830, 43.162910, 49.160381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.744995, 42.475140, 48.967239>,  <46.279434, 42.520966, 49.420349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.744995, 42.475140, 48.967239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.923500, 42.816166, 48.858444>,  <46.030605, 43.020782, 48.793167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.923500, 42.816166, 48.858444>,  <45.744995, 42.475140, 48.967239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.923500, 42.816166, 48.858444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092986, -0.258114, -0.961629,
		-0.890056, 0.454434, -0.035910,
		0.446266, 0.852565, -0.271992,
		46.057381, 43.071934, 48.776848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.401470, 42.764729, 48.408314>,  <45.744995, 42.475140, 48.967239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.401470, 42.764729, 48.408314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.741966, 42.968086, 48.356274>,  <45.946262, 43.090103, 48.325050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.741966, 42.968086, 48.356274>,  <45.401470, 42.764729, 48.408314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.741966, 42.968086, 48.356274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019949, -0.216388, -0.976104,
		-0.524401, 0.833492, -0.174055,
		0.851238, 0.508398, -0.130101,
		45.997337, 43.120605, 48.317242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.398540, 43.237484, 47.846169>,  <45.401470, 42.764729, 48.408314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.398540, 43.237484, 47.846169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.791870, 43.179443, 47.890022>,  <46.027866, 43.144619, 47.916332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.791870, 43.179443, 47.890022>,  <45.398540, 43.237484, 47.846169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.791870, 43.179443, 47.890022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095212, -0.102870, -0.990128,
		0.154944, 0.984055, -0.087339,
		0.983324, -0.145099, 0.109632,
		46.086868, 43.135914, 47.922913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.638470, 43.628078, 47.338779>,  <45.398540, 43.237484, 47.846169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.638470, 43.628078, 47.338779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.967491, 43.417019, 47.423618>,  <46.164906, 43.290382, 47.474522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.967491, 43.417019, 47.423618>,  <45.638470, 43.628078, 47.338779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.967491, 43.417019, 47.423618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223638, -0.042775, -0.973733,
		0.522864, 0.848383, 0.082818,
		0.822557, -0.527652, 0.212096,
		46.214256, 43.258724, 47.487247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.110432, 43.795223, 46.826759>,  <45.638470, 43.628078, 47.338779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.110432, 43.795223, 46.826759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.299889, 43.469303, 46.960487>,  <46.413563, 43.273750, 47.040726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.299889, 43.469303, 46.960487>,  <46.110432, 43.795223, 46.826759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.299889, 43.469303, 46.960487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230293, -0.251812, -0.939977,
		0.850076, 0.522204, 0.068373,
		0.473642, -0.814797, 0.334319,
		46.441982, 43.224865, 47.060783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.794308, 43.808357, 46.654434>,  <46.110432, 43.795223, 46.826759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.794308, 43.808357, 46.654434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.692848, 43.422523, 46.683407>,  <46.631973, 43.191025, 46.700790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.692848, 43.422523, 46.683407>,  <46.794308, 43.808357, 46.654434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.692848, 43.422523, 46.683407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333586, -0.157518, -0.929467,
		0.907954, -0.211599, 0.361725,
		-0.253653, -0.964580, 0.072433,
		46.616753, 43.133148, 46.705135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.279961, 43.510788, 46.182976>,  <46.794308, 43.808357, 46.654434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.279961, 43.510788, 46.182976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.974899, 43.265057, 46.263924>,  <46.791862, 43.117619, 46.312492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.974899, 43.265057, 46.263924>,  <47.279961, 43.510788, 46.182976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.974899, 43.265057, 46.263924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126388, -0.448390, -0.884857,
		0.634335, -0.649265, 0.419611,
		-0.762656, -0.614330, 0.202370,
		46.746101, 43.080757, 46.324635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.411465, 42.950947, 45.621460>,  <47.279961, 43.510788, 46.182976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.411465, 42.950947, 45.621460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.026649, 42.932747, 45.729103>,  <46.795761, 42.921825, 45.793690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.026649, 42.932747, 45.729103>,  <47.411465, 42.950947, 45.621460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.026649, 42.932747, 45.729103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261669, -0.126471, -0.956836,
		0.077568, -0.990927, 0.109765,
		-0.962035, -0.045498, 0.269105,
		46.738037, 42.919098, 45.809834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.175606, 42.400040, 45.185440>,  <47.411465, 42.950947, 45.621460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.175606, 42.400040, 45.185440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.855087, 42.617130, 45.286133>,  <46.662777, 42.747383, 45.346550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.855087, 42.617130, 45.286133>,  <47.175606, 42.400040, 45.185440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.855087, 42.617130, 45.286133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410014, -0.191769, -0.891691,
		-0.435670, -0.817724, 0.376190,
		-0.801299, 0.542726, 0.251730,
		46.614697, 42.779949, 45.361652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.949936, 44.790630, 32.723217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.134781, 45.120472, 32.853741>,  <43.245689, 45.318378, 32.932056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.134781, 45.120472, 32.853741>,  <42.949936, 44.790630, 32.723217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.134781, 45.120472, 32.853741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051597, 0.392332, -0.918375,
		-0.885319, 0.407556, 0.223849,
		0.462112, 0.824605, 0.326311,
		43.273415, 45.367855, 32.951633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.556263, 45.389908, 32.608646>,  <42.949936, 44.790630, 32.723217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.556263, 45.389908, 32.608646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.940254, 45.501553, 32.617905>,  <43.170650, 45.568539, 32.623459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.940254, 45.501553, 32.617905>,  <42.556263, 45.389908, 32.608646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.940254, 45.501553, 32.617905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118168, 0.478571, -0.870061,
		-0.253921, 0.832506, 0.492400,
		0.959979, 0.279113, 0.023144,
		43.228249, 45.585285, 32.624847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.589752, 46.094028, 32.662445>,  <42.556263, 45.389908, 32.608646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.589752, 46.094028, 32.662445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.947357, 45.989208, 32.517078>,  <43.161919, 45.926315, 32.429859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.947357, 45.989208, 32.517078>,  <42.589752, 46.094028, 32.662445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.947357, 45.989208, 32.517078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186330, 0.520197, -0.833472,
		0.407462, 0.812849, 0.416234,
		0.894011, -0.262052, -0.363419,
		43.215561, 45.910591, 32.408054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950100, 46.311474, 32.899342>,  <42.589752, 46.094028, 32.662445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950100, 46.311474, 32.899342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.616524, 46.515533, 32.983517>,  <41.416378, 46.637970, 33.034023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.616524, 46.515533, 32.983517>,  <41.950100, 46.311474, 32.899342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.616524, 46.515533, 32.983517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045707, -0.443881, 0.894919,
		0.549956, 0.736692, 0.393489,
		-0.833942, 0.510151, 0.210442,
		41.366341, 46.668579, 33.046650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.071514, 46.600243, 33.541260>,  <41.950100, 46.311474, 32.899342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.071514, 46.600243, 33.541260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.677490, 46.585114, 33.474052>,  <41.441074, 46.576038, 33.433727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.677490, 46.585114, 33.474052>,  <42.071514, 46.600243, 33.541260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677490, 46.585114, 33.474052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147542, -0.317890, 0.936578,
		-0.088831, 0.947373, 0.307560,
		-0.985059, -0.037819, -0.168016,
		41.381973, 46.573769, 33.423649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637516, 46.993774, 34.121990>,  <42.071514, 46.600243, 33.541260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.637516, 46.993774, 34.121990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.370323, 46.745041, 33.958469>,  <41.210007, 46.595802, 33.860355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.370323, 46.745041, 33.958469>,  <41.637516, 46.993774, 34.121990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370323, 46.745041, 33.958469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410993, -0.149691, 0.899265,
		-0.620387, 0.768710, -0.155578,
		-0.667985, -0.621834, -0.408801,
		41.169926, 46.558491, 33.835831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131393, 47.179317, 34.539330>,  <41.637516, 46.993774, 34.121990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131393, 47.179317, 34.539330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.023857, 46.832352, 34.371841>,  <40.959335, 46.624172, 34.271351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.023857, 46.832352, 34.371841>,  <41.131393, 47.179317, 34.539330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023857, 46.832352, 34.371841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592546, -0.193780, 0.781882,
		-0.759352, 0.458309, -0.461885,
		-0.268839, -0.867411, -0.418716,
		40.943207, 46.572128, 34.246227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389748, 47.047176, 34.682484>,  <41.131393, 47.179317, 34.539330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389748, 47.047176, 34.682484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.552582, 46.691940, 34.597084>,  <40.650280, 46.478798, 34.545845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.552582, 46.691940, 34.597084>,  <40.389748, 47.047176, 34.682484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552582, 46.691940, 34.597084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309163, -0.353919, 0.882700,
		-0.859479, -0.293324, -0.418638,
		0.407081, -0.888089, -0.213501,
		40.674706, 46.425514, 34.533035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957703, 46.674931, 35.086456>,  <40.389748, 47.047176, 34.682484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957703, 46.674931, 35.086456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.248131, 46.413879, 34.999828>,  <40.422386, 46.257248, 34.947853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.248131, 46.413879, 34.999828>,  <39.957703, 46.674931, 35.086456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248131, 46.413879, 34.999828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126274, -0.436146, 0.890972,
		-0.675931, -0.619557, -0.399081,
		0.726066, -0.652630, -0.216570,
		40.465950, 46.218090, 34.934856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738750, 45.972672, 35.311119>,  <39.957703, 46.674931, 35.086456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738750, 45.972672, 35.311119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.138130, 45.956551, 35.295761>,  <40.377758, 45.946877, 35.286545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.138130, 45.956551, 35.295761>,  <39.738750, 45.972672, 35.311119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138130, 45.956551, 35.295761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016035, -0.452301, 0.891721,
		-0.053310, -0.890954, -0.450954,
		0.998450, -0.040306, -0.038399,
		40.437664, 45.944458, 35.284241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940361, 45.326393, 35.679989>,  <39.738750, 45.972672, 35.311119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940361, 45.326393, 35.679989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.282967, 45.532742, 35.673645>,  <40.488529, 45.656551, 35.669838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.282967, 45.532742, 35.673645>,  <39.940361, 45.326393, 35.679989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282967, 45.532742, 35.673645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244609, -0.378697, 0.892611,
		0.454470, -0.768416, -0.450548,
		0.856518, 0.515873, -0.015855,
		40.539921, 45.687504, 35.668888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434593, 44.838741, 36.041080>,  <39.940361, 45.326393, 35.679989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434593, 44.838741, 36.041080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.593063, 45.206005, 36.043171>,  <40.688145, 45.426365, 36.044426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.593063, 45.206005, 36.043171>,  <40.434593, 44.838741, 36.041080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593063, 45.206005, 36.043171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282628, -0.127362, 0.950737,
		0.873595, -0.375179, -0.309955,
		0.396173, 0.918161, 0.005227,
		40.711914, 45.481453, 36.044739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065083, 44.699509, 36.336960>,  <40.434593, 44.838741, 36.041080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065083, 44.699509, 36.336960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.030594, 45.094158, 36.392284>,  <41.009903, 45.330948, 36.425480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.030594, 45.094158, 36.392284>,  <41.065083, 44.699509, 36.336960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030594, 45.094158, 36.392284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431644, -0.088133, 0.897729,
		0.897914, 0.137104, -0.418273,
		-0.086218, 0.986628, 0.138316,
		41.004730, 45.390148, 36.433781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754826, 44.975967, 36.537815>,  <41.065083, 44.699509, 36.336960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754826, 44.975967, 36.537815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.492043, 45.249786, 36.664181>,  <41.334373, 45.414078, 36.740002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.492043, 45.249786, 36.664181>,  <41.754826, 44.975967, 36.537815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.492043, 45.249786, 36.664181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312393, -0.134203, 0.940426,
		0.686165, 0.716506, -0.125683,
		-0.656953, 0.684550, 0.315917,
		41.294956, 45.455151, 36.758957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.192886, 45.494247, 36.750565>,  <41.754826, 44.975967, 36.537815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.192886, 45.494247, 36.750565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.831764, 45.517799, 36.920967>,  <41.615093, 45.531929, 37.023209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.831764, 45.517799, 36.920967>,  <42.192886, 45.494247, 36.750565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.831764, 45.517799, 36.920967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421866, -0.071123, 0.903864,
		0.083516, 0.995728, 0.039372,
		-0.902803, 0.058878, 0.426004,
		41.560925, 45.535461, 37.048767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.332577, 45.924534, 37.334087>,  <42.192886, 45.494247, 36.750565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.332577, 45.924534, 37.334087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.982651, 45.763020, 37.441162>,  <41.772694, 45.666111, 37.505409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.982651, 45.763020, 37.441162>,  <42.332577, 45.924534, 37.334087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982651, 45.763020, 37.441162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251025, 0.094789, 0.963328,
		-0.414350, 0.909931, 0.018437,
		-0.874814, -0.403783, 0.267691,
		41.720207, 45.641884, 37.521469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.216591, 46.206226, 37.977261>,  <42.332577, 45.924534, 37.334087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.216591, 46.206226, 37.977261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.952293, 45.906384, 37.961765>,  <41.793713, 45.726479, 37.952469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.952293, 45.906384, 37.961765>,  <42.216591, 46.206226, 37.977261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.952293, 45.906384, 37.961765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128689, -0.163977, 0.978034,
		-0.739496, 0.641246, 0.204813,
		-0.660746, -0.749610, -0.038739,
		41.754070, 45.681499, 37.950142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730892, 46.182396, 38.507233>,  <42.216591, 46.206226, 37.977261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730892, 46.182396, 38.507233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.742188, 45.792763, 38.417469>,  <41.748966, 45.558983, 38.363609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.742188, 45.792763, 38.417469>,  <41.730892, 46.182396, 38.507233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742188, 45.792763, 38.417469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137266, -0.218592, 0.966114,
		-0.990132, -0.058087, 0.127536,
		0.028240, -0.974086, -0.224409,
		41.750660, 45.500538, 38.350147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350262, 45.889858, 38.948723>,  <41.730892, 46.182396, 38.507233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350262, 45.889858, 38.948723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.577766, 45.584858, 38.825375>,  <41.714268, 45.401855, 38.751366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.577766, 45.584858, 38.825375>,  <41.350262, 45.889858, 38.948723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577766, 45.584858, 38.825375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090600, -0.314561, 0.944904,
		-0.817497, -0.565365, -0.109828,
		0.568763, -0.762505, -0.308375,
		41.748394, 45.356106, 38.732861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190723, 45.400787, 39.496281>,  <41.350262, 45.889858, 38.948723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.190723, 45.400787, 39.496281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.514633, 45.249447, 39.316895>,  <41.708977, 45.158646, 39.209263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.514633, 45.249447, 39.316895>,  <41.190723, 45.400787, 39.496281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514633, 45.249447, 39.316895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247540, -0.472690, 0.845747,
		-0.531977, -0.795874, -0.289113,
		0.809768, -0.378351, -0.448471,
		41.757565, 45.135944, 39.182354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272533, 44.625153, 39.716694>,  <41.190723, 45.400787, 39.496281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272533, 44.625153, 39.716694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.640602, 44.719513, 39.591709>,  <41.861443, 44.776131, 39.516720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.640602, 44.719513, 39.591709>,  <41.272533, 44.625153, 39.716694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.640602, 44.719513, 39.591709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390303, -0.490011, 0.779457,
		0.030769, -0.839189, -0.542969,
		0.920172, 0.235905, -0.312461,
		41.916653, 44.790283, 39.497971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.727829, 44.068077, 39.897068>,  <41.272533, 44.625153, 39.716694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.727829, 44.068077, 39.897068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.031258, 44.320217, 39.831055>,  <42.213314, 44.471500, 39.791447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.031258, 44.320217, 39.831055>,  <41.727829, 44.068077, 39.897068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031258, 44.320217, 39.831055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483520, -0.374764, 0.791050,
		0.436789, -0.679862, -0.589070,
		0.758567, 0.630349, -0.165034,
		42.258827, 44.509323, 39.781544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298466, 43.660240, 39.874752>,  <41.727829, 44.068077, 39.897068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298466, 43.660240, 39.874752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.428131, 44.026649, 39.969261>,  <42.505928, 44.246494, 40.025967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.428131, 44.026649, 39.969261>,  <42.298466, 43.660240, 39.874752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.428131, 44.026649, 39.969261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561496, -0.387317, 0.731237,
		0.761342, -0.104371, -0.639895,
		0.324162, 0.916020, 0.236277,
		42.525379, 44.301456, 40.040146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.035721, 43.644585, 39.942116>,  <42.298466, 43.660240, 39.874752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.035721, 43.644585, 39.942116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.890755, 43.958092, 40.143852>,  <42.803776, 44.146194, 40.264893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.890755, 43.958092, 40.143852>,  <43.035721, 43.644585, 39.942116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890755, 43.958092, 40.143852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641114, -0.183120, 0.745279,
		0.676480, 0.593444, -0.436118,
		-0.362419, 0.783768, 0.504342,
		42.782028, 44.193222, 40.295155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.597019, 44.111961, 40.227455>,  <43.035721, 43.644585, 39.942116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.597019, 44.111961, 40.227455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.282310, 44.180031, 40.464787>,  <43.093487, 44.220871, 40.607185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.282310, 44.180031, 40.464787>,  <43.597019, 44.111961, 40.227455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.282310, 44.180031, 40.464787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562136, -0.199494, 0.802624,
		0.254949, 0.965010, 0.061296,
		-0.786768, 0.170172, 0.593327,
		43.046280, 44.231083, 40.642784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.810673, 44.340340, 40.876293>,  <43.597019, 44.111961, 40.227455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.810673, 44.340340, 40.876293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.451469, 44.233646, 41.016258>,  <43.235947, 44.169628, 41.100235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.451469, 44.233646, 41.016258>,  <43.810673, 44.340340, 40.876293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.451469, 44.233646, 41.016258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416368, -0.258159, 0.871775,
		-0.142202, 0.928550, 0.342889,
		-0.898007, -0.266736, 0.349908,
		43.182068, 44.153625, 41.121231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.752335, 44.648769, 41.418640>,  <43.810673, 44.340340, 40.876293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.752335, 44.648769, 41.418640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.458298, 44.383617, 41.475533>,  <43.281876, 44.224525, 41.509670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.458298, 44.383617, 41.475533>,  <43.752335, 44.648769, 41.418640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.458298, 44.383617, 41.475533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336510, -0.174618, 0.925348,
		-0.588558, 0.728079, 0.351426,
		-0.735093, -0.662879, 0.142233,
		43.237770, 44.184753, 41.518204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.439064, 44.882626, 42.020523>,  <43.752335, 44.648769, 41.418640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.439064, 44.882626, 42.020523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.338127, 44.498035, 41.976921>,  <43.277565, 44.267281, 41.950760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.338127, 44.498035, 41.976921>,  <43.439064, 44.882626, 42.020523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.338127, 44.498035, 41.976921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222940, -0.167389, 0.960354,
		-0.941606, 0.218033, 0.256591,
		-0.252340, -0.961479, -0.109007,
		43.262424, 44.209591, 41.944218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.875751, 44.633083, 42.558395>,  <43.439064, 44.882626, 42.020523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.875751, 44.633083, 42.558395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.070023, 44.305908, 42.435043>,  <43.186584, 44.109604, 42.361031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.070023, 44.305908, 42.435043>,  <42.875751, 44.633083, 42.558395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.070023, 44.305908, 42.435043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117558, -0.288465, 0.950247,
		-0.866198, -0.497766, -0.043946,
		0.485677, -0.817935, -0.308384,
		43.215725, 44.060528, 42.342529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639366, 44.163322, 43.071766>,  <42.875751, 44.633083, 42.558395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639366, 44.163322, 43.071766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.960999, 44.004711, 42.894577>,  <43.153976, 43.909546, 42.788265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.960999, 44.004711, 42.894577>,  <42.639366, 44.163322, 43.071766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.960999, 44.004711, 42.894577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214986, -0.500734, 0.838478,
		-0.554295, -0.769433, -0.317380,
		0.804076, -0.396532, -0.442972,
		43.202221, 43.885754, 42.761684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.487389, 43.431164, 43.054565>,  <42.639366, 44.163322, 43.071766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.487389, 43.431164, 43.054565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.878387, 43.515404, 43.059509>,  <43.112988, 43.565948, 43.062477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.878387, 43.515404, 43.059509>,  <42.487389, 43.431164, 43.054565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.878387, 43.515404, 43.059509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121224, -0.608679, 0.784102,
		0.172654, -0.764957, -0.620510,
		0.977495, 0.210599, 0.012359,
		43.171635, 43.578583, 43.063217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668983, 42.830956, 43.279263>,  <42.487389, 43.431164, 43.054565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668983, 42.830956, 43.279263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.005608, 43.042984, 43.320820>,  <43.207584, 43.170200, 43.345753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.005608, 43.042984, 43.320820>,  <42.668983, 42.830956, 43.279263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005608, 43.042984, 43.320820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321751, -0.646424, 0.691818,
		0.433873, -0.548781, -0.714558,
		0.841564, 0.530071, 0.103895,
		43.258076, 43.202003, 43.351990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.312370, 42.246063, 43.545177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.424797, 42.619701, 43.633232>,  <43.492252, 42.843884, 43.686066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.424797, 42.619701, 43.633232>,  <43.312370, 42.246063, 43.545177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.424797, 42.619701, 43.633232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370453, -0.317205, 0.873010,
		0.885305, -0.163828, -0.435197,
		0.281070, 0.934099, 0.220132,
		43.509117, 42.899933, 43.699272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.016544, 42.228653, 43.728420>,  <43.312370, 42.246063, 43.545177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.016544, 42.228653, 43.728420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.869835, 42.552494, 43.911736>,  <43.781811, 42.746799, 44.021725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.869835, 42.552494, 43.911736>,  <44.016544, 42.228653, 43.728420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.869835, 42.552494, 43.911736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540467, -0.215527, 0.813292,
		0.757215, 0.545980, -0.358513,
		-0.366772, 0.809601, 0.458284,
		43.759804, 42.795376, 44.049221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.554268, 42.400917, 44.220493>,  <44.016544, 42.228653, 43.728420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.554268, 42.400917, 44.220493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.253998, 42.627613, 44.356316>,  <44.073837, 42.763630, 44.437809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.253998, 42.627613, 44.356316>,  <44.554268, 42.400917, 44.220493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.253998, 42.627613, 44.356316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234722, -0.251643, 0.938926,
		0.617575, 0.784525, 0.055875,
		-0.750671, 0.566742, 0.339554,
		44.028797, 42.797634, 44.458183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.111698, 42.855640, 44.041332>,  <44.554268, 42.400917, 44.220493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.111698, 42.855640, 44.041332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.504227, 42.878452, 43.967834>,  <45.739742, 42.892139, 43.923737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.504227, 42.878452, 43.967834>,  <45.111698, 42.855640, 44.041332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.504227, 42.878452, 43.967834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189641, 0.125955, -0.973741,
		-0.032385, 0.990396, 0.134417,
		0.981319, 0.057026, -0.183740,
		45.798622, 42.895561, 43.912712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.155785, 43.466858, 43.717041>,  <45.111698, 42.855640, 44.041332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.155785, 43.466858, 43.717041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.484039, 43.256824, 43.626842>,  <45.680992, 43.130806, 43.572723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.484039, 43.256824, 43.626842>,  <45.155785, 43.466858, 43.717041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.484039, 43.256824, 43.626842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111432, 0.239995, -0.964357,
		0.560485, 0.816512, 0.138437,
		0.820634, -0.525081, -0.225499,
		45.730228, 43.099300, 43.559193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.593212, 43.929451, 43.343346>,  <45.155785, 43.466858, 43.717041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.593212, 43.929451, 43.343346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.722031, 43.565216, 43.239712>,  <45.799320, 43.346676, 43.177532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.722031, 43.565216, 43.239712>,  <45.593212, 43.929451, 43.343346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.722031, 43.565216, 43.239712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034510, 0.284773, -0.957974,
		0.946095, 0.299570, 0.123134,
		0.322045, -0.910583, -0.259085,
		45.818645, 43.292042, 43.161987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.004959, 44.090946, 42.743145>,  <45.593212, 43.929451, 43.343346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.004959, 44.090946, 42.743145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.925484, 43.698921, 42.743015>,  <45.877800, 43.463707, 42.742939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.925484, 43.698921, 42.743015>,  <46.004959, 44.090946, 42.743145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.925484, 43.698921, 42.743015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052193, -0.010251, -0.998585,
		0.978672, -0.198422, 0.053189,
		-0.198687, -0.980063, -0.000324,
		45.865879, 43.404903, 42.742920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.279442, 43.929428, 42.182076>,  <46.004959, 44.090946, 42.743145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.279442, 43.929428, 42.182076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.071671, 43.592880, 42.241791>,  <45.947006, 43.390953, 42.277622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.071671, 43.592880, 42.241791>,  <46.279442, 43.929428, 42.182076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.071671, 43.592880, 42.241791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047078, -0.146268, -0.988124,
		0.853213, -0.520292, 0.036366,
		-0.519433, -0.841369, 0.149292,
		45.915840, 43.340469, 42.286579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.651829, 43.516766, 41.820938>,  <46.279442, 43.929428, 42.182076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.651829, 43.516766, 41.820938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.287506, 43.360931, 41.875580>,  <46.068913, 43.267433, 41.908363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.287506, 43.360931, 41.875580>,  <46.651829, 43.516766, 41.820938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.287506, 43.360931, 41.875580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150460, 0.005114, -0.988603,
		0.384445, -0.920977, -0.063275,
		-0.910804, -0.389584, 0.136604,
		46.014263, 43.244057, 41.916561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.587326, 43.073711, 41.313625>,  <46.651829, 43.516766, 41.820938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.587326, 43.073711, 41.313625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.199303, 43.088951, 41.409580>,  <45.966488, 43.098095, 41.467152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.199303, 43.088951, 41.409580>,  <46.587326, 43.073711, 41.313625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.199303, 43.088951, 41.409580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240631, -0.016398, -0.970478,
		-0.033066, -0.999138, 0.025081,
		-0.970053, 0.038125, 0.239882,
		45.908287, 43.100380, 41.481544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.141068, 42.521610, 40.877075>,  <46.587326, 43.073711, 41.313625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.141068, 42.521610, 40.877075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.919479, 42.837650, 40.982044>,  <45.786526, 43.027275, 41.045025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.919479, 42.837650, 40.982044>,  <46.141068, 42.521610, 40.877075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.919479, 42.837650, 40.982044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294717, 0.108689, -0.949383,
		-0.778629, -0.603266, 0.172646,
		-0.553966, 0.790099, 0.262422,
		45.753288, 43.074680, 41.060772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.508236, 42.600368, 40.377254>,  <46.141068, 42.521610, 40.877075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.508236, 42.600368, 40.377254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.480339, 42.954643, 40.560860>,  <45.463600, 43.167210, 40.671024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.480339, 42.954643, 40.560860>,  <45.508236, 42.600368, 40.377254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.480339, 42.954643, 40.560860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250120, 0.429909, -0.867535,
		-0.965700, -0.175312, 0.191546,
		-0.069742, 0.885688, 0.459012,
		45.459415, 43.220348, 40.698563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.883930, 42.781776, 40.129101>,  <45.508236, 42.600368, 40.377254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.883930, 42.781776, 40.129101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.085907, 43.110523, 40.234604>,  <45.207092, 43.307774, 40.297905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.085907, 43.110523, 40.234604>,  <44.883930, 42.781776, 40.129101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.085907, 43.110523, 40.234604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320595, 0.462292, -0.826744,
		-0.801409, 0.332894, 0.496915,
		0.504938, 0.821869, 0.263761,
		45.237389, 43.357082, 40.313732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.396336, 43.339119, 40.051846>,  <44.883930, 42.781776, 40.129101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.396336, 43.339119, 40.051846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.756149, 43.513252, 40.066437>,  <44.972038, 43.617733, 40.075191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.756149, 43.513252, 40.066437>,  <44.396336, 43.339119, 40.051846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.756149, 43.513252, 40.066437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293619, 0.664301, -0.687381,
		-0.323471, 0.607610, 0.725381,
		0.899530, 0.435333, 0.036476,
		45.026009, 43.643852, 40.077381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.275322, 44.121002, 39.943439>,  <44.396336, 43.339119, 40.051846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.275322, 44.121002, 39.943439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.653152, 44.018269, 39.861649>,  <44.879852, 43.956627, 39.812572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.653152, 44.018269, 39.861649>,  <44.275322, 44.121002, 39.943439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.653152, 44.018269, 39.861649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056680, 0.485917, -0.872165,
		0.323360, 0.835417, 0.444429,
		0.944577, -0.256833, -0.204478,
		44.936527, 43.941219, 39.800304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.494705, 44.730030, 39.566486>,  <44.275322, 44.121002, 39.943439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.494705, 44.730030, 39.566486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.768143, 44.447662, 39.492329>,  <44.932205, 44.278240, 39.447834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.768143, 44.447662, 39.492329>,  <44.494705, 44.730030, 39.566486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.768143, 44.447662, 39.492329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105980, 0.347323, -0.931738,
		0.722123, 0.617286, 0.312242,
		0.683598, -0.705921, -0.185390,
		44.973221, 44.235886, 39.436710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.139137, 45.040386, 39.158947>,  <44.494705, 44.730030, 39.566486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.139137, 45.040386, 39.158947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.122154, 44.646339, 39.092316>,  <45.111965, 44.409912, 39.052338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.122154, 44.646339, 39.092316>,  <45.139137, 45.040386, 39.158947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.122154, 44.646339, 39.092316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048260, 0.168560, -0.984509,
		0.997932, -0.033761, -0.054698,
		-0.042458, -0.985113, -0.166582,
		45.109417, 44.350807, 39.042339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.631363, 44.949802, 38.624382>,  <45.139137, 45.040386, 39.158947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.631363, 44.949802, 38.624382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.389595, 44.632217, 38.598160>,  <45.244534, 44.441666, 38.582428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.389595, 44.632217, 38.598160>,  <45.631363, 44.949802, 38.624382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.389595, 44.632217, 38.598160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113466, 0.167236, -0.979366,
		0.788546, -0.584509, -0.191168,
		-0.604418, -0.793966, -0.065552,
		45.208271, 44.394028, 38.578495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.857948, 44.672104, 37.889397>,  <45.631363, 44.949802, 38.624382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.857948, 44.672104, 37.889397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.502205, 44.527290, 38.001091>,  <45.288757, 44.440403, 38.068108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.502205, 44.527290, 38.001091>,  <45.857948, 44.672104, 37.889397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.502205, 44.527290, 38.001091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298471, -0.002926, -0.954414,
		0.346350, -0.932159, -0.105456,
		-0.889358, -0.362037, 0.279236,
		45.235397, 44.418678, 38.084862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.697914, 44.133213, 37.477009>,  <45.857948, 44.672104, 37.889397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.697914, 44.133213, 37.477009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.338028, 44.248657, 37.607986>,  <45.122097, 44.317924, 37.686573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.338028, 44.248657, 37.607986>,  <45.697914, 44.133213, 37.477009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.338028, 44.248657, 37.607986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331687, 0.035562, -0.942719,
		-0.283728, -0.956784, 0.063734,
		-0.899713, 0.288616, 0.327443,
		45.068115, 44.335243, 37.706219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.219963, 43.785919, 37.053383>,  <45.697914, 44.133213, 37.477009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.219963, 43.785919, 37.053383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.005775, 44.087418, 37.205772>,  <44.877262, 44.268318, 37.297207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.005775, 44.087418, 37.205772>,  <45.219963, 43.785919, 37.053383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.005775, 44.087418, 37.205772> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503146, 0.077600, -0.860711,
		-0.678322, -0.652566, 0.337693,
		-0.535466, 0.753748, 0.380973,
		44.845135, 44.313541, 37.320065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.436596, 43.630177, 36.860001>,  <45.219963, 43.785919, 37.053383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.436596, 43.630177, 36.860001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.522354, 44.016151, 36.920582>,  <44.573807, 44.247734, 36.956932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.522354, 44.016151, 36.920582>,  <44.436596, 43.630177, 36.860001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.522354, 44.016151, 36.920582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617891, 0.254075, -0.744081,
		-0.756469, 0.065944, 0.650696,
		0.214394, 0.964934, 0.151454,
		44.586674, 44.305630, 36.966019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.775936, 43.936787, 36.757774>,  <44.436596, 43.630177, 36.860001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.775936, 43.936787, 36.757774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.045288, 44.231617, 36.734894>,  <44.206902, 44.408516, 36.721165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.045288, 44.231617, 36.734894>,  <43.775936, 43.936787, 36.757774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.045288, 44.231617, 36.734894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447872, 0.345163, -0.824786,
		-0.588190, 0.581014, 0.562544,
		0.673382, 0.737079, -0.057199,
		44.247303, 44.452740, 36.717735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.425438, 44.463497, 36.518913>,  <43.775936, 43.936787, 36.757774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.425438, 44.463497, 36.518913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.805222, 44.567139, 36.448044>,  <44.033092, 44.629322, 36.405521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.805222, 44.567139, 36.448044>,  <43.425438, 44.463497, 36.518913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.805222, 44.567139, 36.448044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269472, 0.383411, -0.883392,
		-0.160961, 0.886488, 0.433855,
		0.949461, 0.259104, -0.177170,
		44.090061, 44.644871, 36.394894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.371784, 45.108353, 36.325035>,  <43.425438, 44.463497, 36.518913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.371784, 45.108353, 36.325035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.717674, 44.969124, 36.180210>,  <43.925209, 44.885586, 36.093315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.717674, 44.969124, 36.180210>,  <43.371784, 45.108353, 36.325035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.717674, 44.969124, 36.180210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241582, 0.343757, -0.907452,
		0.440320, 0.872168, 0.213169,
		0.864729, -0.348072, -0.362063,
		43.977093, 44.864704, 36.071590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.735260, 45.697147, 36.007397>,  <43.371784, 45.108353, 36.325035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.735260, 45.697147, 36.007397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.924721, 45.378578, 35.857002>,  <44.038395, 45.187435, 35.766766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.924721, 45.378578, 35.857002>,  <43.735260, 45.697147, 36.007397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.924721, 45.378578, 35.857002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134913, 0.356261, -0.924595,
		0.870320, 0.488658, 0.061295,
		0.473648, -0.796424, -0.375987,
		44.066814, 45.139652, 35.744205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.131130, 46.030346, 35.491932>,  <43.735260, 45.697147, 36.007397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.131130, 46.030346, 35.491932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.084373, 45.641766, 35.409348>,  <44.056320, 45.408619, 35.359798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.084373, 45.641766, 35.409348>,  <44.131130, 46.030346, 35.491932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.084373, 45.641766, 35.409348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175614, 0.224824, -0.958443,
		0.977495, -0.075778, -0.196880,
		-0.116892, -0.971448, -0.206457,
		44.049305, 45.350330, 35.347412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.472145, 45.897552, 34.904751>,  <44.131130, 46.030346, 35.491932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.472145, 45.897552, 34.904751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.224075, 45.584053, 34.918163>,  <44.075233, 45.395954, 34.926208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.224075, 45.584053, 34.918163>,  <44.472145, 45.897552, 34.904751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.224075, 45.584053, 34.918163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126289, 0.057566, -0.990322,
		0.774230, -0.618409, -0.134680,
		-0.620177, -0.783745, 0.033529,
		44.038021, 45.348930, 34.928223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.710026, 45.482445, 34.316406>,  <44.472145, 45.897552, 34.904751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.710026, 45.482445, 34.316406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.334938, 45.377316, 34.407269>,  <44.109886, 45.314240, 34.461788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.334938, 45.377316, 34.407269>,  <44.710026, 45.482445, 34.316406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.334938, 45.377316, 34.407269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227351, -0.030112, -0.973347,
		0.262656, -0.964375, -0.031516,
		-0.937722, -0.262821, 0.227160,
		44.053619, 45.298470, 34.475418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.605259, 45.028175, 33.780521>,  <44.710026, 45.482445, 34.316406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.605259, 45.028175, 33.780521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.244476, 45.099236, 33.937954>,  <44.028008, 45.141872, 34.032413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.244476, 45.099236, 33.937954>,  <44.605259, 45.028175, 33.780521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.244476, 45.099236, 33.937954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423674, -0.187888, -0.886114,
		-0.083464, -0.965992, 0.244731,
		-0.901961, 0.177645, 0.393583,
		43.973888, 45.152531, 34.056030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.139252, 44.470245, 33.524261>,  <44.605259, 45.028175, 33.780521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.139252, 44.470245, 33.524261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.980843, 44.828365, 33.605854>,  <43.885796, 45.043236, 33.654808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.980843, 44.828365, 33.605854>,  <44.139252, 44.470245, 33.524261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.980843, 44.828365, 33.605854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380473, 0.042181, -0.923829,
		-0.835705, -0.443470, 0.323931,
		-0.396027, 0.895296, 0.203980,
		43.862034, 45.096954, 33.667049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.592918, 44.497402, 33.057327>,  <44.139252, 44.470245, 33.524261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.592918, 44.497402, 33.057327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.619972, 44.878990, 33.174198>,  <43.636204, 45.107944, 33.244320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.619972, 44.878990, 33.174198>,  <43.592918, 44.497402, 33.057327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.619972, 44.878990, 33.174198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126721, 0.298692, -0.945899,
		-0.989630, 0.026950, 0.141089,
		0.067634, 0.953969, 0.292179,
		43.640263, 45.165180, 33.261852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<46.558956, 41.966137, 44.973373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.458801, 42.352669, 44.997089>,  <46.398708, 42.584587, 45.011318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.458801, 42.352669, 44.997089>,  <46.558956, 41.966137, 44.973373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.458801, 42.352669, 44.997089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174214, 0.015270, -0.984589,
		-0.952342, -0.256860, 0.164525,
		-0.250389, 0.966328, 0.059291,
		46.383686, 42.642567, 45.014877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.028439, 41.924210, 44.607914>,  <46.558956, 41.966137, 44.973373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.028439, 41.924210, 44.607914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.072060, 42.321396, 44.626343>,  <46.098232, 42.559708, 44.637402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.072060, 42.321396, 44.626343>,  <46.028439, 41.924210, 44.607914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.072060, 42.321396, 44.626343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197369, 0.067058, -0.978033,
		-0.974245, 0.097562, 0.203293,
		0.109051, 0.992968, 0.046075,
		46.104774, 42.619286, 44.640167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.380836, 42.288437, 44.457935>,  <46.028439, 41.924210, 44.607914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.380836, 42.288437, 44.457935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.697884, 42.517605, 44.374496>,  <45.888111, 42.655106, 44.324432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.697884, 42.517605, 44.374496>,  <45.380836, 42.288437, 44.457935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.697884, 42.517605, 44.374496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354727, 0.155049, -0.922024,
		-0.495905, 0.804811, 0.326126,
		0.792620, 0.572922, -0.208598,
		45.935669, 42.689480, 44.311916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.808220, 42.662868, 44.939362>,  <45.380836, 42.288437, 44.457935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.808220, 42.662868, 44.939362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.409119, 42.689693, 44.939442>,  <44.169659, 42.705788, 44.939491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.409119, 42.689693, 44.939442>,  <44.808220, 42.662868, 44.939362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.409119, 42.689693, 44.939442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004480, -0.069628, 0.997563,
		0.066915, 0.995316, 0.069772,
		-0.997749, 0.067064, 0.000200,
		44.109795, 42.709812, 44.939503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.550571, 43.126652, 45.419693>,  <44.808220, 42.662868, 44.939362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.550571, 43.126652, 45.419693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.236000, 42.885281, 45.366928>,  <44.047256, 42.740459, 45.335270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.236000, 42.885281, 45.366928>,  <44.550571, 43.126652, 45.419693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.236000, 42.885281, 45.366928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193428, 0.037765, 0.980388,
		-0.586611, 0.796523, -0.146420,
		-0.786431, -0.603427, -0.131917,
		44.000072, 42.704254, 45.327354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.038872, 43.492046, 45.820866>,  <44.550571, 43.126652, 45.419693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.038872, 43.492046, 45.820866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.915039, 43.116604, 45.759972>,  <43.840740, 42.891338, 45.723434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.915039, 43.116604, 45.759972>,  <44.038872, 43.492046, 45.820866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.915039, 43.116604, 45.759972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164159, -0.104939, 0.980836,
		-0.936594, 0.328643, -0.121593,
		-0.309586, -0.938606, -0.152235,
		43.822163, 42.835022, 45.714302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.392292, 43.444519, 45.827312>,  <44.038872, 43.492046, 45.820866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.392292, 43.444519, 45.827312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.465317, 43.062267, 45.919792>,  <43.509132, 42.832916, 45.975281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.465317, 43.062267, 45.919792>,  <43.392292, 43.444519, 45.827312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.465317, 43.062267, 45.919792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563065, 0.091150, 0.821370,
		-0.805996, -0.280127, -0.521439,
		0.182558, -0.955626, 0.231196,
		43.520084, 42.775581, 45.989151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.761127, 43.133015, 46.079967>,  <43.392292, 43.444519, 45.827312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.761127, 43.133015, 46.079967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.050835, 42.887547, 46.205727>,  <43.224659, 42.740265, 46.281181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.050835, 42.887547, 46.205727>,  <42.761127, 43.133015, 46.079967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.050835, 42.887547, 46.205727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405599, -0.010429, 0.913992,
		-0.557611, -0.789493, -0.256458,
		0.724265, -0.613670, 0.314402,
		43.268116, 42.703445, 46.300049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444611, 42.518013, 46.430023>,  <42.761127, 43.133015, 46.079967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.444611, 42.518013, 46.430023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.816109, 42.592037, 46.558510>,  <43.039009, 42.636452, 46.635601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.816109, 42.592037, 46.558510>,  <42.444611, 42.518013, 46.430023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816109, 42.592037, 46.558510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355964, 0.203226, 0.912134,
		0.103519, -0.961484, 0.254621,
		0.928749, 0.185059, 0.321216,
		43.094734, 42.647556, 46.654873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.364254, 42.313141, 47.048439>,  <42.444611, 42.518013, 46.430023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.364254, 42.313141, 47.048439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.723686, 42.483566, 47.090427>,  <42.939346, 42.585819, 47.115620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.723686, 42.483566, 47.090427>,  <42.364254, 42.313141, 47.048439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.723686, 42.483566, 47.090427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256736, 0.316470, 0.913200,
		0.355854, -0.847538, 0.393759,
		0.898585, 0.426058, 0.104976,
		42.993263, 42.611385, 47.121922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.669224, 42.020645, 47.638832>,  <42.364254, 42.313141, 47.048439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.669224, 42.020645, 47.638832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.850571, 42.372051, 47.578606>,  <42.959377, 42.582893, 47.542469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.850571, 42.372051, 47.578606>,  <42.669224, 42.020645, 47.638832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.850571, 42.372051, 47.578606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209551, 0.269240, 0.939999,
		0.866341, -0.394615, 0.306158,
		0.453368, 0.878515, -0.150562,
		42.986580, 42.635605, 47.533436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.132568, 42.064468, 48.182884>,  <42.669224, 42.020645, 47.638832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.132568, 42.064468, 48.182884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.038452, 42.433868, 48.061699>,  <42.981983, 42.655510, 47.988987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.038452, 42.433868, 48.061699>,  <43.132568, 42.064468, 48.182884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.038452, 42.433868, 48.061699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170642, 0.267617, 0.948294,
		0.956829, 0.274819, 0.094621,
		-0.235287, 0.923502, -0.302959,
		42.967865, 42.710918, 47.970810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.448322, 42.528915, 48.709839>,  <43.132568, 42.064468, 48.182884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.448322, 42.528915, 48.709839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.199455, 42.783714, 48.527786>,  <43.050137, 42.936592, 48.418552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.199455, 42.783714, 48.527786>,  <43.448322, 42.528915, 48.709839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.199455, 42.783714, 48.527786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096787, 0.514313, 0.852123,
		0.776881, 0.574211, -0.258334,
		-0.622163, 0.636996, -0.455136,
		43.012806, 42.974812, 48.391247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.608292, 43.250668, 48.947002>,  <43.448322, 42.528915, 48.709839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.608292, 43.250668, 48.947002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.238358, 43.246181, 48.794922>,  <43.016396, 43.243492, 48.703674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.238358, 43.246181, 48.794922>,  <43.608292, 43.250668, 48.947002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.238358, 43.246181, 48.794922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335201, 0.496438, 0.800743,
		0.179767, 0.868000, -0.462882,
		-0.924837, -0.011212, -0.380198,
		42.960907, 43.242817, 48.680862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.309635, 43.846809, 49.123142>,  <43.608292, 43.250668, 48.947002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.309635, 43.846809, 49.123142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.975136, 43.673332, 48.988922>,  <42.774437, 43.569244, 48.908390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.975136, 43.673332, 48.988922>,  <43.309635, 43.846809, 49.123142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.975136, 43.673332, 48.988922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525235, 0.457717, 0.717372,
		-0.157533, 0.776146, -0.610557,
		-0.836248, -0.433696, -0.335553,
		42.724262, 43.543224, 48.888256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.858566, 44.413910, 48.859192>,  <43.309635, 43.846809, 49.123142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.858566, 44.413910, 48.859192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.657799, 44.082191, 48.957458>,  <42.537338, 43.883160, 49.016418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.657799, 44.082191, 48.957458>,  <42.858566, 44.413910, 48.859192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.657799, 44.082191, 48.957458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451581, 0.493509, 0.743319,
		-0.737666, 0.262149, -0.622195,
		-0.501919, -0.829293, 0.245664,
		42.507221, 43.833405, 49.031158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.252178, 44.711510, 48.940639>,  <42.858566, 44.413910, 48.859192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.252178, 44.711510, 48.940639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.185303, 44.363701, 49.126530>,  <42.145176, 44.155014, 49.238064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.185303, 44.363701, 49.126530>,  <42.252178, 44.711510, 48.940639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.185303, 44.363701, 49.126530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369827, 0.492255, 0.787980,
		-0.913933, -0.040124, -0.403876,
		-0.167193, -0.869526, 0.464727,
		42.135143, 44.102844, 49.265949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510246, 44.698620, 49.180374>,  <42.252178, 44.711510, 48.940639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510246, 44.698620, 49.180374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.726166, 44.442684, 49.399178>,  <41.855717, 44.289124, 49.530460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.726166, 44.442684, 49.399178>,  <41.510246, 44.698620, 49.180374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726166, 44.442684, 49.399178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163539, 0.557727, 0.813754,
		-0.825757, -0.528720, 0.196420,
		0.539797, -0.639841, 0.547013,
		41.888103, 44.250732, 49.563282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042313, 44.474705, 49.647797>,  <41.510246, 44.698620, 49.180374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.042313, 44.474705, 49.647797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.404961, 44.407288, 49.802521>,  <41.622551, 44.366837, 49.895355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.404961, 44.407288, 49.802521>,  <41.042313, 44.474705, 49.647797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404961, 44.407288, 49.802521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240502, 0.546824, 0.801962,
		-0.346686, -0.820107, 0.455228,
		0.906624, -0.168546, 0.386814,
		41.676949, 44.356724, 49.918564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870750, 44.462017, 50.361542>,  <41.042313, 44.474705, 49.647797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870750, 44.462017, 50.361542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.269630, 44.491062, 50.354401>,  <41.508957, 44.508492, 50.350117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.269630, 44.491062, 50.354401>,  <40.870750, 44.462017, 50.361542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269630, 44.491062, 50.354401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018663, 0.472890, 0.880924,
		0.072413, -0.878124, 0.472921,
		0.997200, 0.072617, -0.017855,
		41.568790, 44.512848, 50.349045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077667, 44.268467, 51.065922>,  <40.870750, 44.462017, 50.361542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077667, 44.268467, 51.065922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.403885, 44.454304, 50.927910>,  <41.599617, 44.565807, 50.845104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.403885, 44.454304, 50.927910>,  <41.077667, 44.268467, 51.065922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403885, 44.454304, 50.927910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066573, 0.667578, 0.741557,
		0.574853, -0.581803, 0.575369,
		0.815544, 0.464591, -0.345027,
		41.648548, 44.593681, 50.824402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533573, 44.262997, 51.486382>,  <41.077667, 44.268467, 51.065922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.533573, 44.262997, 51.486382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.652252, 44.592670, 51.293427>,  <41.723457, 44.790474, 51.177654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.652252, 44.592670, 51.293427>,  <41.533573, 44.262997, 51.486382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.652252, 44.592670, 51.293427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087637, 0.479504, 0.873152,
		0.950943, -0.301334, 0.070038,
		0.296694, 0.824180, -0.482389,
		41.741261, 44.839924, 51.148708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951611, 44.636448, 51.920746>,  <41.533573, 44.262997, 51.486382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951611, 44.636448, 51.920746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.863983, 44.930374, 51.663979>,  <41.811405, 45.106728, 51.509918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.863983, 44.930374, 51.663979>,  <41.951611, 44.636448, 51.920746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.863983, 44.930374, 51.663979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081697, 0.641775, 0.762528,
		0.972283, 0.219490, -0.080562,
		-0.219070, 0.734812, -0.641919,
		41.798264, 45.150818, 51.471401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.330074, 45.156025, 52.168732>,  <41.951611, 44.636448, 51.920746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.330074, 45.156025, 52.168732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.089905, 45.336273, 51.904480>,  <41.945805, 45.444424, 51.745930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.089905, 45.336273, 51.904480>,  <42.330074, 45.156025, 52.168732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.089905, 45.336273, 51.904480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035915, 0.810088, 0.585207,
		0.798878, 0.375097, -0.470209,
		-0.600420, 0.450622, -0.660633,
		41.909779, 45.471458, 51.706291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.592674, 45.798294, 52.089436>,  <42.330074, 45.156025, 52.168732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.592674, 45.798294, 52.089436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.218224, 45.848274, 51.957947>,  <41.993553, 45.878262, 51.879051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.218224, 45.848274, 51.957947>,  <42.592674, 45.798294, 52.089436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.218224, 45.848274, 51.957947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032373, 0.900161, 0.434354,
		0.350179, 0.417250, -0.838616,
		-0.936123, 0.124953, -0.328724,
		41.937386, 45.885761, 51.859329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.520096, 46.541050, 51.889557>,  <42.592674, 45.798294, 52.089436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.520096, 46.541050, 51.889557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.164635, 46.379646, 51.976715>,  <41.951359, 46.282806, 52.029011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.164635, 46.379646, 51.976715>,  <42.520096, 46.541050, 51.889557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164635, 46.379646, 51.976715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162422, 0.721301, 0.673308,
		-0.428856, 0.562944, -0.706524,
		-0.888651, -0.403507, 0.217900,
		41.898041, 46.258595, 52.042084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101501, 47.163063, 52.136806>,  <42.520096, 46.541050, 51.889557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101501, 47.163063, 52.136806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.896935, 46.842445, 52.260727>,  <41.774193, 46.650074, 52.335079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.896935, 46.842445, 52.260727>,  <42.101501, 47.163063, 52.136806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.896935, 46.842445, 52.260727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389696, 0.537634, 0.747721,
		-0.765891, 0.261671, -0.587315,
		-0.511418, -0.801547, 0.309797,
		41.743507, 46.601982, 52.353664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416016, 47.379421, 52.294109>,  <42.101501, 47.163063, 52.136806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416016, 47.379421, 52.294109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.441902, 47.040054, 52.504253>,  <41.457432, 46.836433, 52.630341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.441902, 47.040054, 52.504253>,  <41.416016, 47.379421, 52.294109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.441902, 47.040054, 52.504253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394194, 0.461916, 0.794509,
		-0.916746, -0.258509, -0.304548,
		0.064712, -0.848414, 0.525363,
		41.461315, 46.785530, 52.661861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867977, 47.445351, 52.674709>,  <41.416016, 47.379421, 52.294109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867977, 47.445351, 52.674709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.117317, 47.180229, 52.840660>,  <41.266922, 47.021156, 52.940231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.117317, 47.180229, 52.840660>,  <40.867977, 47.445351, 52.674709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117317, 47.180229, 52.840660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163574, 0.408306, 0.898070,
		-0.764646, -0.627672, 0.146098,
		0.623346, -0.662808, 0.414880,
		41.304321, 46.981388, 52.965122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559601, 47.291809, 53.372597>,  <40.867977, 47.445351, 52.674709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559601, 47.291809, 53.372597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.946236, 47.191582, 53.394207>,  <41.178219, 47.131447, 53.407173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.946236, 47.191582, 53.394207>,  <40.559601, 47.291809, 53.372597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946236, 47.191582, 53.394207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040259, 0.356550, 0.933408,
		-0.253146, -0.900048, 0.354726,
		0.966590, -0.250570, 0.054024,
		41.236214, 47.116409, 53.410416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589634, 47.130127, 54.030106>,  <40.559601, 47.291809, 53.372597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589634, 47.130127, 54.030106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.967354, 47.185539, 53.910706>,  <41.193985, 47.218788, 53.839066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.967354, 47.185539, 53.910706>,  <40.589634, 47.130127, 54.030106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.967354, 47.185539, 53.910706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270168, 0.191538, 0.943569,
		0.187856, -0.971664, 0.143453,
		0.944309, 0.138499, -0.298494,
		41.250645, 47.227100, 53.821156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961002, 46.769669, 54.435993>,  <40.589634, 47.130127, 54.030106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.961002, 46.769669, 54.435993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.203499, 47.062553, 54.311844>,  <41.348999, 47.238285, 54.237354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.203499, 47.062553, 54.311844>,  <40.961002, 46.769669, 54.435993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203499, 47.062553, 54.311844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339944, 0.114226, 0.933483,
		0.718961, -0.671429, -0.179663,
		0.606245, 0.732213, -0.310372,
		41.385372, 47.282219, 54.218731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568954, 46.667957, 54.771667>,  <40.961002, 46.769669, 54.435993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568954, 46.667957, 54.771667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.602470, 47.048851, 54.654205>,  <41.622581, 47.277386, 54.583729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.602470, 47.048851, 54.654205>,  <41.568954, 46.667957, 54.771667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602470, 47.048851, 54.654205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419929, 0.233508, 0.877003,
		0.903681, -0.196800, -0.380303,
		0.083790, 0.952231, -0.293658,
		41.627609, 47.334518, 54.566109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.270226, 46.930607, 54.966591>,  <41.568954, 46.667957, 54.771667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.270226, 46.930607, 54.966591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.002045, 47.226089, 54.938843>,  <41.841137, 47.403378, 54.922195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.002045, 47.226089, 54.938843>,  <42.270226, 46.930607, 54.966591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.002045, 47.226089, 54.938843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204887, 0.274193, 0.939595,
		0.713105, 0.615738, -0.335184,
		-0.670449, 0.738705, -0.069372,
		41.800911, 47.447701, 54.918030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587078, 47.627583, 55.328632>,  <42.270226, 46.930607, 54.966591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.587078, 47.627583, 55.328632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.189072, 47.606491, 55.294800>,  <41.950268, 47.593838, 55.274498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.189072, 47.606491, 55.294800>,  <42.587078, 47.627583, 55.328632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.189072, 47.606491, 55.294800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096897, 0.312780, 0.944870,
		-0.023367, 0.948361, -0.316331,
		-0.995020, -0.052730, -0.084585,
		41.890564, 47.590672, 55.269424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 0.000000, 89.760002>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 89.760002, 0.000000>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
