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
	<35.836555, 52.917336, 49.665245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218102, 52.886494, 49.781315>,  <36.447029, 52.867989, 49.850956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218102, 52.886494, 49.781315>,  <35.836555, 52.917336, 49.665245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218102, 52.886494, 49.781315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299353, -0.169977, 0.938880,
		-0.023071, -0.982427, -0.185216,
		0.953863, -0.077106, 0.290171,
		36.504261, 52.863361, 49.868366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897503, 52.334618, 50.180492>,  <35.836555, 52.917336, 49.665245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897503, 52.334618, 50.180492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190338, 52.599960, 50.242474>,  <36.366039, 52.759167, 50.279663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190338, 52.599960, 50.242474>,  <35.897503, 52.334618, 50.180492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190338, 52.599960, 50.242474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166957, -0.045814, 0.984899,
		0.660439, -0.746900, 0.077212,
		0.732083, 0.663356, 0.154957,
		36.409962, 52.798965, 50.288960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521454, 52.019691, 50.674973>,  <35.897503, 52.334618, 50.180492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521454, 52.019691, 50.674973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487549, 52.417953, 50.690399>,  <36.467205, 52.656910, 50.699657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487549, 52.417953, 50.690399>,  <36.521454, 52.019691, 50.674973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487549, 52.417953, 50.690399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205333, -0.055333, 0.977127,
		0.975015, 0.074901, 0.209131,
		-0.084760, 0.995655, 0.038571,
		36.462120, 52.716648, 50.701969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968239, 52.419159, 51.091457>,  <36.521454, 52.019691, 50.674973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968239, 52.419159, 51.091457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631092, 52.633434, 51.111874>,  <36.428802, 52.762001, 51.124123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631092, 52.633434, 51.111874>,  <36.968239, 52.419159, 51.091457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631092, 52.633434, 51.111874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038266, -0.154279, 0.987286,
		0.536753, 0.830202, 0.150535,
		-0.842871, 0.535689, 0.051041,
		36.378231, 52.794140, 51.127186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034546, 52.788422, 51.608879>,  <36.968239, 52.419159, 51.091457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034546, 52.788422, 51.608879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637211, 52.770634, 51.566360>,  <36.398808, 52.759960, 51.540852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637211, 52.770634, 51.566360>,  <37.034546, 52.788422, 51.608879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637211, 52.770634, 51.566360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098874, -0.144661, 0.984529,
		-0.059158, 0.988482, 0.139300,
		-0.993340, -0.044470, -0.106293,
		36.339211, 52.757294, 51.534473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825485, 53.340843, 52.008640>,  <37.034546, 52.788422, 51.608879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825485, 53.340843, 52.008640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554588, 53.046555, 52.005661>,  <36.392052, 52.869980, 52.003876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554588, 53.046555, 52.005661>,  <36.825485, 53.340843, 52.008640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554588, 53.046555, 52.005661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085586, -0.088826, 0.992363,
		-0.730766, 0.671432, 0.123124,
		-0.677241, -0.735723, -0.007446,
		36.351418, 52.825836, 52.003426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128841, 54.019997, 52.004486>,  <36.825485, 53.340843, 52.008640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128841, 54.019997, 52.004486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338604, 53.742401, 52.201820>,  <37.464462, 53.575844, 52.320221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338604, 53.742401, 52.201820>,  <37.128841, 54.019997, 52.004486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338604, 53.742401, 52.201820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841010, 0.512697, -0.172755,
		-0.133042, 0.505494, 0.852512,
		0.524407, -0.693987, 0.493335,
		37.495926, 53.534206, 52.349819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652821, 54.404320, 52.116440>,  <37.128841, 54.019997, 52.004486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652821, 54.404320, 52.116440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747631, 54.030293, 52.221874>,  <37.804516, 53.805878, 52.285133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747631, 54.030293, 52.221874>,  <37.652821, 54.404320, 52.116440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747631, 54.030293, 52.221874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970880, 0.218259, -0.098771,
		0.034827, 0.279318, 0.959567,
		0.237022, -0.935064, 0.263583,
		37.818737, 53.749775, 52.300949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794254, 54.597504, 52.851192>,  <37.652821, 54.404320, 52.116440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794254, 54.597504, 52.851192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972069, 54.328014, 52.615063>,  <38.078758, 54.166321, 52.473385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972069, 54.328014, 52.615063>,  <37.794254, 54.597504, 52.851192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972069, 54.328014, 52.615063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894027, 0.292699, 0.339179,
		-0.055724, -0.678547, 0.732440,
		0.444534, -0.673722, -0.590329,
		38.105431, 54.125896, 52.437965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526928, 54.367290, 53.173119>,  <37.794254, 54.597504, 52.851192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526928, 54.367290, 53.173119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556629, 54.235561, 52.796600>,  <38.574448, 54.156525, 52.570690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556629, 54.235561, 52.796600>,  <38.526928, 54.367290, 53.173119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556629, 54.235561, 52.796600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976703, 0.214586, 0.001966,
		0.201341, -0.919511, 0.337583,
		0.074248, -0.329322, -0.941294,
		38.578903, 54.136765, 52.514214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114292, 53.876701, 53.023239>,  <38.526928, 54.367290, 53.173119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114292, 53.876701, 53.023239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011536, 54.120125, 52.722927>,  <38.949883, 54.266178, 52.542740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011536, 54.120125, 52.722927>,  <39.114292, 53.876701, 53.023239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011536, 54.120125, 52.722927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964808, 0.116378, -0.235800,
		-0.056124, -0.784931, -0.617037,
		-0.256896, 0.608556, -0.750776,
		38.934467, 54.302692, 52.497696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620377, 53.888107, 52.513702>,  <39.114292, 53.876701, 53.023239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620377, 53.888107, 52.513702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404217, 54.207130, 52.406471>,  <39.274521, 54.398544, 52.342133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404217, 54.207130, 52.406471>,  <39.620377, 53.888107, 52.513702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404217, 54.207130, 52.406471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835883, 0.472404, -0.279525,
		-0.096296, -0.375139, -0.921953,
		-0.540395, 0.797562, -0.268082,
		39.242100, 54.446400, 52.326046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051472, 54.262424, 51.988842>,  <39.620377, 53.888107, 52.513702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051472, 54.262424, 51.988842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217434, 53.948719, 52.173359>,  <40.317009, 53.760498, 52.284069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217434, 53.948719, 52.173359>,  <40.051472, 54.262424, 51.988842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217434, 53.948719, 52.173359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889105, 0.241777, -0.388633,
		0.193259, 0.571383, 0.797604,
		0.414901, -0.784261, 0.461294,
		40.341904, 53.713440, 52.311749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.620331, 54.506718, 52.337513>,  <40.051472, 54.262424, 51.988842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.620331, 54.506718, 52.337513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688377, 54.118980, 52.266586>,  <40.729206, 53.886337, 52.224030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688377, 54.118980, 52.266586>,  <40.620331, 54.506718, 52.337513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688377, 54.118980, 52.266586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930844, 0.217128, -0.293913,
		0.323402, -0.115055, 0.939241,
		0.170119, -0.969339, -0.177318,
		40.739414, 53.828178, 52.213390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073326, 54.176876, 52.835045>,  <40.620331, 54.506718, 52.337513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.073326, 54.176876, 52.835045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.125587, 54.035019, 52.464714>,  <41.156944, 53.949905, 52.242516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.125587, 54.035019, 52.464714>,  <41.073326, 54.176876, 52.835045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125587, 54.035019, 52.464714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968925, 0.243507, 0.043460,
		0.210033, -0.902736, 0.375437,
		0.130654, -0.354642, -0.925828,
		41.164783, 53.928627, 52.186966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637463, 53.612217, 52.749744>,  <41.073326, 54.176876, 52.835045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.637463, 53.612217, 52.749744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618977, 53.856232, 52.433334>,  <41.607883, 54.002640, 52.243488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618977, 53.856232, 52.433334>,  <41.637463, 53.612217, 52.749744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618977, 53.856232, 52.433334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986821, 0.150813, 0.058654,
		0.155077, -0.777885, -0.608971,
		-0.046214, 0.610041, -0.791021,
		41.605114, 54.039246, 52.196030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.113682, 53.423347, 52.145596>,  <41.637463, 53.612217, 52.749744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.113682, 53.423347, 52.145596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.056427, 53.816460, 52.192352>,  <42.022076, 54.052326, 52.220406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.056427, 53.816460, 52.192352>,  <42.113682, 53.423347, 52.145596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.056427, 53.816460, 52.192352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964267, 0.111878, 0.240151,
		0.222937, 0.147089, -0.963672,
		-0.143137, 0.982776, 0.116891,
		42.013485, 54.111294, 52.227421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.598103, 53.787224, 51.757504>,  <42.113682, 53.423347, 52.145596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.598103, 53.787224, 51.757504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.483669, 53.990814, 52.082245>,  <42.415009, 54.112968, 52.277088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.483669, 53.990814, 52.082245>,  <42.598103, 53.787224, 51.757504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.483669, 53.990814, 52.082245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926840, -0.068009, 0.369245,
		0.243150, 0.858091, -0.452281,
		-0.286087, 0.508974, 0.811850,
		42.397842, 54.143505, 52.325798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.912601, 54.621567, 51.873299>,  <42.598103, 53.787224, 51.757504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.912601, 54.621567, 51.873299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.824039, 54.375824, 52.176231>,  <42.770905, 54.228378, 52.357990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.824039, 54.375824, 52.176231>,  <42.912601, 54.621567, 51.873299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824039, 54.375824, 52.176231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955400, 0.018983, 0.294704,
		-0.195429, 0.788803, 0.582750,
		-0.221401, -0.614353, 0.757332,
		42.757618, 54.191517, 52.403431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.295189, 54.912899, 52.376896>,  <42.912601, 54.621567, 51.873299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.295189, 54.912899, 52.376896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.192417, 54.546047, 52.498787>,  <43.130753, 54.325935, 52.571922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.192417, 54.546047, 52.498787>,  <43.295189, 54.912899, 52.376896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.192417, 54.546047, 52.498787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909528, -0.122868, 0.397068,
		-0.326721, 0.379181, 0.865722,
		-0.256930, -0.917129, 0.304732,
		43.115337, 54.270908, 52.590206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.058575, 54.697712, 52.672249>,  <43.295189, 54.912899, 52.376896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.058575, 54.697712, 52.672249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.821239, 54.404549, 52.805389>,  <43.678837, 54.228649, 52.885273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.821239, 54.404549, 52.805389>,  <44.058575, 54.697712, 52.672249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.821239, 54.404549, 52.805389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771579, -0.400008, 0.494631,
		-0.229375, 0.550307, 0.802838,
		-0.593341, -0.732909, 0.332854,
		43.643238, 54.184677, 52.905247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.194412, 54.672955, 53.426147>,  <44.058575, 54.697712, 52.672249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.194412, 54.672955, 53.426147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.095161, 54.350220, 53.211693>,  <44.035610, 54.156578, 53.083019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.095161, 54.350220, 53.211693>,  <44.194412, 54.672955, 53.426147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.095161, 54.350220, 53.211693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858205, -0.439802, 0.264685,
		-0.449352, -0.394438, 0.801562,
		-0.248127, -0.806841, -0.536134,
		44.020725, 54.108166, 53.050854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.483036, 54.168819, 53.771244>,  <44.194412, 54.672955, 53.426147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.483036, 54.168819, 53.771244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.458023, 54.105114, 53.377144>,  <44.443016, 54.066891, 53.140682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.458023, 54.105114, 53.377144>,  <44.483036, 54.168819, 53.771244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.458023, 54.105114, 53.377144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979991, -0.196707, -0.030399,
		-0.188965, -0.967441, 0.168374,
		-0.062529, -0.159261, -0.985254,
		44.439266, 54.057335, 53.081566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.839878, 53.595409, 53.611469>,  <44.483036, 54.168819, 53.771244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.839878, 53.595409, 53.611469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.821526, 53.793015, 53.264172>,  <44.810513, 53.911579, 53.055794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.821526, 53.793015, 53.264172>,  <44.839878, 53.595409, 53.611469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.821526, 53.793015, 53.264172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912914, -0.332133, -0.237225,
		-0.405565, -0.803515, -0.435754,
		-0.045885, 0.494016, -0.868241,
		44.807758, 53.941219, 53.003700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.886219, 53.270157, 52.902115>,  <44.839878, 53.595409, 53.611469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.886219, 53.270157, 52.902115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.045479, 53.635773, 52.933144>,  <45.141033, 53.855141, 52.951759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.045479, 53.635773, 52.933144>,  <44.886219, 53.270157, 52.902115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.045479, 53.635773, 52.933144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911322, -0.403782, 0.080328,
		0.104745, 0.038711, -0.993745,
		0.398147, 0.914036, 0.077573,
		45.164925, 53.909985, 52.956417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.376507, 53.377098, 52.307709>,  <44.886219, 53.270157, 52.902115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.376507, 53.377098, 52.307709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.464027, 53.510239, 52.674606>,  <45.516541, 53.590122, 52.894745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.464027, 53.510239, 52.674606>,  <45.376507, 53.377098, 52.307709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.464027, 53.510239, 52.674606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790973, -0.610959, 0.033020,
		0.571389, 0.718291, -0.396953,
		0.218805, 0.332847, 0.917245,
		45.529671, 53.610092, 52.949780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.032372, 53.688465, 52.399521>,  <45.376507, 53.377098, 52.307709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.032372, 53.688465, 52.399521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.948238, 53.529499, 52.756805>,  <45.897758, 53.434120, 52.971176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.948238, 53.529499, 52.756805>,  <46.032372, 53.688465, 52.399521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.948238, 53.529499, 52.756805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908983, -0.415820, 0.029042,
		0.359873, 0.818020, 0.448702,
		-0.210336, -0.397411, 0.893209,
		45.885136, 53.410275, 53.024769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.978386, 53.028080, 52.650486>,  <46.032372, 53.688465, 52.399521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.978386, 53.028080, 52.650486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.966324, 52.820511, 52.992203>,  <45.959087, 52.695969, 53.197231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.966324, 52.820511, 52.992203>,  <45.978386, 53.028080, 52.650486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.966324, 52.820511, 52.992203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938597, 0.279179, 0.202716,
		-0.343694, 0.807947, 0.478640,
		-0.030157, -0.518923, 0.854289,
		45.957275, 52.664833, 53.248489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.602459, 53.199467, 53.047489>,  <45.978386, 53.028080, 52.650486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.602459, 53.199467, 53.047489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.486374, 52.881565, 53.260712>,  <46.416725, 52.690823, 53.388645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.486374, 52.881565, 53.260712>,  <46.602459, 53.199467, 53.047489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.486374, 52.881565, 53.260712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928135, -0.098062, 0.359095,
		-0.233119, 0.598958, 0.766097,
		-0.290208, -0.794753, 0.533054,
		46.399311, 52.643139, 53.420628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.844849, 53.199566, 53.715954>,  <46.602459, 53.199467, 53.047489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.844849, 53.199566, 53.715954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.776978, 52.813545, 53.636063>,  <46.736256, 52.581932, 53.588127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.776978, 52.813545, 53.636063>,  <46.844849, 53.199566, 53.715954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.776978, 52.813545, 53.636063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887466, -0.237748, 0.394816,
		-0.428501, -0.110258, 0.896789,
		-0.169678, -0.965049, -0.199725,
		46.726074, 52.524029, 53.576145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.774036, 52.850735, 54.323460>,  <46.844849, 53.199566, 53.715954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.774036, 52.850735, 54.323460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.957409, 52.634987, 54.040924>,  <47.067432, 52.505539, 53.871403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.957409, 52.634987, 54.040924>,  <46.774036, 52.850735, 54.323460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.957409, 52.634987, 54.040924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808681, -0.076475, 0.583254,
		-0.368610, -0.838586, 0.401123,
		0.458433, -0.539374, -0.706339,
		47.094940, 52.473175, 53.829021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.948738, 52.321930, 54.756603>,  <46.774036, 52.850735, 54.323460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.948738, 52.321930, 54.756603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.183182, 52.389977, 54.439735>,  <47.323849, 52.430805, 54.249615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.183182, 52.389977, 54.439735>,  <46.948738, 52.321930, 54.756603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.183182, 52.389977, 54.439735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787684, 0.109403, 0.606288,
		0.189808, -0.979331, -0.069878,
		0.586112, 0.170120, -0.792169,
		47.359016, 52.441013, 54.202084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.638260, 51.991737, 54.851006>,  <46.948738, 52.321930, 54.756603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.638260, 51.991737, 54.851006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.692749, 52.265099, 54.564117>,  <47.725441, 52.429115, 54.391987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.692749, 52.265099, 54.564117>,  <47.638260, 51.991737, 54.851006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.692749, 52.265099, 54.564117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879094, 0.250410, 0.405573,
		0.456769, -0.685748, -0.566667,
		0.136221, 0.683407, -0.717216,
		47.733616, 52.470119, 54.348953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.196423, 51.918140, 54.519196>,  <47.638260, 51.991737, 54.851006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.196423, 51.918140, 54.519196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.110817, 52.306995, 54.557465>,  <48.059456, 52.540306, 54.580425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.110817, 52.306995, 54.557465>,  <48.196423, 51.918140, 54.519196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.110817, 52.306995, 54.557465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925097, 0.170252, 0.339424,
		0.313678, 0.161144, -0.935755,
		-0.214011, 0.972135, 0.095670,
		48.046616, 52.598637, 54.586166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.722595, 52.254562, 54.222408>,  <48.196423, 51.918140, 54.519196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.722595, 52.254562, 54.222408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.577770, 52.512001, 54.492134>,  <48.490875, 52.666462, 54.653969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.577770, 52.512001, 54.492134>,  <48.722595, 52.254562, 54.222408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.577770, 52.512001, 54.492134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932039, 0.238551, 0.272759,
		0.014687, 0.727242, -0.686224,
		-0.362061, 0.643593, 0.674314,
		48.469151, 52.705078, 54.694427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.010120, 52.947483, 54.169617>,  <48.722595, 52.254562, 54.222408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.010120, 52.947483, 54.169617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.907818, 52.864906, 54.547394>,  <48.846436, 52.815361, 54.774059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.907818, 52.864906, 54.547394>,  <49.010120, 52.947483, 54.169617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.907818, 52.864906, 54.547394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942387, 0.164661, 0.291192,
		-0.215628, 0.964504, 0.152438,
		-0.255755, -0.206445, 0.944442,
		48.831093, 52.802971, 54.830727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.223537, 53.482010, 54.705917>,  <49.010120, 52.947483, 54.169617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.223537, 53.482010, 54.705917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.255146, 53.099876, 54.819824>,  <49.274109, 52.870598, 54.888168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.255146, 53.099876, 54.819824>,  <49.223537, 53.482010, 54.705917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.255146, 53.099876, 54.819824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983435, 0.027959, -0.179091,
		0.163130, 0.294202, 0.941719,
		0.079018, -0.955334, 0.284767,
		49.278851, 52.813274, 54.905254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.885929, 53.600716, 55.052410>,  <49.223537, 53.482010, 54.705917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.885929, 53.600716, 55.052410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.231544, 53.508606, 54.873337>,  <50.438911, 53.453339, 54.765892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.231544, 53.508606, 54.873337>,  <49.885929, 53.600716, 55.052410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.231544, 53.508606, 54.873337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080669, 0.814438, -0.574616,
		0.496927, 0.532602, 0.685127,
		0.864035, -0.230273, -0.447681,
		50.490753, 53.439526, 54.739033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.324848, 54.077789, 55.353291>,  <49.885929, 53.600716, 55.052410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.324848, 54.077789, 55.353291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.424519, 53.948734, 54.988037>,  <50.484322, 53.871304, 54.768883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.424519, 53.948734, 54.988037>,  <50.324848, 54.077789, 55.353291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.424519, 53.948734, 54.988037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034689, 0.939298, -0.341344,
		0.967836, 0.116731, 0.222861,
		0.249179, -0.322634, -0.913136,
		50.499271, 53.851944, 54.714096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.923935, 54.417835, 55.067905>,  <50.324848, 54.077789, 55.353291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.923935, 54.417835, 55.067905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.696873, 54.298916, 54.760818>,  <50.560635, 54.227562, 54.576569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.696873, 54.298916, 54.760818>,  <50.923935, 54.417835, 55.067905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.696873, 54.298916, 54.760818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074075, 0.910292, -0.407285,
		0.819930, -0.288065, -0.494706,
		-0.567651, -0.297300, -0.767714,
		50.526577, 54.209724, 54.530506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.432396, 53.992809, 54.619419>,  <50.923935, 54.417835, 55.067905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.432396, 53.992809, 54.619419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.754028, 53.809219, 54.468269>,  <51.947010, 53.699066, 54.377579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.754028, 53.809219, 54.468269>,  <51.432396, 53.992809, 54.619419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.754028, 53.809219, 54.468269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553768, 0.809479, 0.195154,
		0.216312, -0.366176, 0.905055,
		0.804084, -0.458976, -0.377876,
		51.995255, 53.671528, 54.354908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.047691, 53.962124, 55.122463>,  <51.432396, 53.992809, 54.619419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.047691, 53.962124, 55.122463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.170300, 53.967937, 54.741764>,  <52.243866, 53.971424, 54.513344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.170300, 53.967937, 54.741764>,  <52.047691, 53.962124, 55.122463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.170300, 53.967937, 54.741764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560036, 0.805754, 0.192669,
		0.769677, -0.592073, 0.238845,
		0.306524, 0.014531, -0.951752,
		52.262257, 53.972298, 54.456238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.861248, 53.894516, 54.948681>,  <52.047691, 53.962124, 55.122463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.861248, 53.894516, 54.948681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.608212, 54.149132, 54.772205>,  <52.456390, 54.301903, 54.666321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.608212, 54.149132, 54.772205>,  <52.861248, 53.894516, 54.948681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.608212, 54.149132, 54.772205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501896, 0.770775, 0.392436,
		0.589857, 0.026821, -0.807062,
		-0.632589, 0.636543, -0.441186,
		52.418434, 54.340096, 54.639851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.239883, 54.392368, 54.623295>,  <52.861248, 53.894516, 54.948681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.239883, 54.392368, 54.623295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.896072, 54.572853, 54.719315>,  <52.689785, 54.681145, 54.776924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.896072, 54.572853, 54.719315>,  <53.239883, 54.392368, 54.623295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.896072, 54.572853, 54.719315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510609, 0.778457, 0.365080,
		-0.022138, 0.436366, -0.899497,
		-0.859528, 0.451209, 0.240045,
		52.638214, 54.708218, 54.791328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.312965, 55.103081, 54.629276>,  <53.239883, 54.392368, 54.623295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.312965, 55.103081, 54.629276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.991272, 55.089916, 54.866638>,  <52.798256, 55.082016, 55.009056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.991272, 55.089916, 54.866638>,  <53.312965, 55.103081, 54.629276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.991272, 55.089916, 54.866638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367035, 0.757800, 0.539467,
		-0.467436, 0.651657, -0.597367,
		-0.804232, -0.032911, 0.593404,
		52.750004, 55.080044, 55.044659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.067219, 55.714294, 54.574726>,  <53.312965, 55.103081, 54.629276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.067219, 55.714294, 54.574726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.926376, 55.556908, 54.914421>,  <52.841873, 55.462475, 55.118237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.926376, 55.556908, 54.914421>,  <53.067219, 55.714294, 54.574726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.926376, 55.556908, 54.914421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542565, 0.653533, 0.527748,
		-0.762657, 0.646590, -0.016630,
		-0.352104, -0.393468, 0.849238,
		52.820744, 55.438866, 55.169193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.090645, 56.383778, 55.048340>,  <53.067219, 55.714294, 54.574726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.090645, 56.383778, 55.048340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.841213, 56.565357, 54.793755>,  <52.691555, 56.674305, 54.641003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.841213, 56.565357, 54.793755>,  <53.090645, 56.383778, 55.048340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.841213, 56.565357, 54.793755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635183, 0.180403, 0.750997,
		0.455737, 0.872571, 0.175849,
		-0.623575, 0.453954, -0.636459,
		52.654140, 56.701542, 54.602818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.657089, 56.326759, 54.626472>,  <53.090645, 56.383778, 55.048340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.657089, 56.326759, 54.626472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.761223, 56.675716, 54.791954>,  <53.823704, 56.885090, 54.891243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.761223, 56.675716, 54.791954>,  <53.657089, 56.326759, 54.626472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.761223, 56.675716, 54.791954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164740, -0.382065, 0.909333,
		0.951360, -0.304886, 0.044253,
		0.260336, 0.872394, 0.413708,
		53.839325, 56.937435, 54.916065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.253548, 56.378551, 55.162815>,  <53.657089, 56.326759, 54.626472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.253548, 56.378551, 55.162815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.968300, 56.650337, 55.231842>,  <53.797150, 56.813408, 55.273258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.968300, 56.650337, 55.231842>,  <54.253548, 56.378551, 55.162815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.968300, 56.650337, 55.231842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095015, -0.337572, 0.936492,
		0.694572, 0.651436, 0.305289,
		-0.713121, 0.679468, 0.172571,
		53.754364, 56.854179, 55.283615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.752945, 56.236679, 55.771278>,  <54.253548, 56.378551, 55.162815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.752945, 56.236679, 55.771278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.826691, 55.855114, 55.676567>,  <54.870937, 55.626175, 55.619740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.826691, 55.855114, 55.676567>,  <54.752945, 56.236679, 55.771278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.826691, 55.855114, 55.676567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852186, 0.275167, -0.445040,
		0.489682, -0.119729, 0.863641,
		0.184361, -0.953912, -0.236776,
		54.882000, 55.568939, 55.605534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.406609, 55.974571, 56.048187>,  <54.752945, 56.236679, 55.771278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.406609, 55.974571, 56.048187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.327644, 55.764027, 55.717377>,  <55.280266, 55.637699, 55.518890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.327644, 55.764027, 55.717377>,  <55.406609, 55.974571, 56.048187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.327644, 55.764027, 55.717377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885354, 0.266508, -0.380949,
		0.420926, -0.807413, 0.413406,
		-0.197408, -0.526362, -0.827027,
		55.268421, 55.606117, 55.469269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.007614, 55.509892, 55.898518>,  <55.406609, 55.974571, 56.048187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.007614, 55.509892, 55.898518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.801636, 55.592369, 55.565697>,  <55.678051, 55.641857, 55.366005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.801636, 55.592369, 55.565697>,  <56.007614, 55.509892, 55.898518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.801636, 55.592369, 55.565697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857002, 0.101657, -0.505187,
		-0.019585, -0.973216, -0.229060,
		-0.514941, 0.206198, -0.832056,
		55.647152, 55.654228, 55.316078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.205864, 54.887432, 55.711849>,  <56.007614, 55.509892, 55.898518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.205864, 54.887432, 55.711849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.557053, 54.877975, 55.520599>,  <56.767765, 54.872299, 55.405849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.557053, 54.877975, 55.520599>,  <56.205864, 54.887432, 55.711849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.557053, 54.877975, 55.520599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301873, -0.747815, 0.591308,
		-0.371531, -0.663486, -0.649424,
		0.877974, -0.023646, -0.478125,
		56.820446, 54.870880, 55.377163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.252445, 54.192348, 55.592049>,  <56.205864, 54.887432, 55.711849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.252445, 54.192348, 55.592049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.597946, 54.393566, 55.603844>,  <56.805248, 54.514297, 55.610920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.597946, 54.393566, 55.603844>,  <56.252445, 54.192348, 55.592049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.597946, 54.393566, 55.603844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360715, -0.658105, 0.660895,
		0.351865, -0.560216, -0.749899,
		0.863756, 0.503046, 0.029486,
		56.857075, 54.544479, 55.612690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.926800, 53.881207, 55.309658>,  <56.252445, 54.192348, 55.592049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.926800, 53.881207, 55.309658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.016869, 54.133263, 55.606903>,  <57.070911, 54.284496, 55.785252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.016869, 54.133263, 55.606903>,  <56.926800, 53.881207, 55.309658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.016869, 54.133263, 55.606903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490939, -0.732181, 0.472112,
		0.841591, 0.258516, -0.474230,
		0.225174, 0.630144, 0.743112,
		57.084419, 54.322308, 55.829838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.178402, 53.390251, 55.703083>,  <56.926800, 53.881207, 55.309658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.178402, 53.390251, 55.703083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.225677, 53.712997, 55.934601>,  <57.254044, 53.906643, 56.073513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.225677, 53.712997, 55.934601>,  <57.178402, 53.390251, 55.703083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.225677, 53.712997, 55.934601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310595, -0.583673, 0.750238,
		0.943166, 0.091105, -0.319589,
		0.118185, 0.806862, 0.578797,
		57.261131, 53.955055, 56.108238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.809422, 53.330086, 56.152512>,  <57.178402, 53.390251, 55.703083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.809422, 53.330086, 56.152512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.483215, 53.513550, 56.293694>,  <57.287491, 53.623627, 56.378403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.483215, 53.513550, 56.293694>,  <57.809422, 53.330086, 56.152512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.483215, 53.513550, 56.293694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030823, -0.574573, 0.817872,
		0.577918, 0.677864, 0.454434,
		-0.815513, 0.458656, 0.352950,
		57.238560, 53.651146, 56.399578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.336937, 52.777515, 56.181183>,  <57.809422, 53.330086, 56.152512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.336937, 52.777515, 56.181183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.440041, 52.670097, 55.809929>,  <58.501904, 52.605644, 55.587177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.440041, 52.670097, 55.809929>,  <58.336937, 52.777515, 56.181183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.440041, 52.670097, 55.809929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143095, 0.939396, -0.311544,
		0.955555, 0.213115, 0.203709,
		0.257758, -0.268548, -0.928139,
		58.517368, 52.589535, 55.531487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.706707, 53.342834, 55.888664>,  <58.336937, 52.777515, 56.181183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.706707, 53.342834, 55.888664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.544395, 53.147400, 55.579697>,  <58.447010, 53.030140, 55.394318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.544395, 53.147400, 55.579697>,  <58.706707, 53.342834, 55.888664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.544395, 53.147400, 55.579697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254762, 0.872089, -0.417801,
		0.877748, 0.027248, -0.478348,
		-0.405777, -0.488588, -0.772416,
		58.422661, 53.000824, 55.347973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.306942, 53.810150, 55.972366>,  <58.706707, 53.342834, 55.888664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.306942, 53.810150, 55.972366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.951538, 53.938026, 55.840706>,  <58.738297, 54.014751, 55.761711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.951538, 53.938026, 55.840706>,  <59.306942, 53.810150, 55.972366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.951538, 53.938026, 55.840706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191466, 0.910217, 0.367212,
		0.416993, 0.263252, -0.869951,
		-0.888514, 0.319691, -0.329150,
		58.684982, 54.033936, 55.741962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.267498, 54.405308, 55.643814>,  <59.306942, 53.810150, 55.972366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.267498, 54.405308, 55.643814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.893600, 54.406208, 55.785942>,  <58.669262, 54.406750, 55.871220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.893600, 54.406208, 55.785942>,  <59.267498, 54.405308, 55.643814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.893600, 54.406208, 55.785942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109604, 0.953045, 0.282296,
		-0.337999, 0.302819, -0.891099,
		-0.934742, 0.002253, 0.355319,
		58.613178, 54.406883, 55.892536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.882622, 54.074223, 55.323242>,  <59.267498, 54.405308, 55.643814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.882622, 54.074223, 55.323242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.164085, 54.310429, 55.165176>,  <60.332962, 54.452152, 55.070335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.164085, 54.310429, 55.165176>,  <59.882622, 54.074223, 55.323242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.164085, 54.310429, 55.165176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687732, -0.426248, 0.587654,
		0.178582, -0.685275, -0.706051,
		0.703657, 0.590518, -0.395165,
		60.375183, 54.487583, 55.046627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.389904, 53.697258, 54.993259>,  <59.882622, 54.074223, 55.323242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.389904, 53.697258, 54.993259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.577156, 54.040241, 55.078690>,  <60.689507, 54.246033, 55.129948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.577156, 54.040241, 55.078690>,  <60.389904, 53.697258, 54.993259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.577156, 54.040241, 55.078690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732133, -0.511696, 0.449609,
		0.494806, -0.054113, -0.867317,
		0.468132, 0.857461, 0.213573,
		60.717594, 54.297478, 55.142761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.035202, 53.668659, 54.672226>,  <60.389904, 53.697258, 54.993259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.035202, 53.668659, 54.672226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.039474, 53.855476, 55.025894>,  <61.042038, 53.967567, 55.238094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.039474, 53.855476, 55.025894>,  <61.035202, 53.668659, 54.672226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.039474, 53.855476, 55.025894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693910, -0.640121, 0.329749,
		0.719983, 0.610014, -0.330920,
		0.010678, 0.467042, 0.884171,
		61.042679, 53.995590, 55.291145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.751736, 53.827629, 54.843765>,  <61.035202, 53.668659, 54.672226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.751736, 53.827629, 54.843765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.475784, 53.742569, 55.120560>,  <61.310215, 53.691532, 55.286636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.475784, 53.742569, 55.120560>,  <61.751736, 53.827629, 54.843765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.475784, 53.742569, 55.120560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528738, -0.800921, 0.281000,
		0.494471, 0.559736, 0.664976,
		-0.689880, -0.212652, 0.691986,
		61.268822, 53.678772, 55.328156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.866173, 53.893040, 55.596596>,  <61.751736, 53.827629, 54.843765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.866173, 53.893040, 55.596596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.618515, 53.586033, 55.530182>,  <61.469921, 53.401829, 55.490334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.618515, 53.586033, 55.530182>,  <61.866173, 53.893040, 55.596596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.618515, 53.586033, 55.530182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744758, -0.640965, 0.185740,
		-0.248984, -0.008659, 0.968469,
		-0.619146, -0.767521, -0.166039,
		61.432770, 53.355778, 55.480370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.257557, 54.362087, 55.952435>,  <61.866173, 53.893040, 55.596596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.257557, 54.362087, 55.952435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.488358, 54.677563, 56.037331>,  <62.626839, 54.866848, 56.088268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.488358, 54.677563, 56.037331>,  <62.257557, 54.362087, 55.952435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.488358, 54.677563, 56.037331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508139, -0.143210, -0.849285,
		-0.639425, 0.597884, -0.483395,
		0.577001, 0.788686, 0.212236,
		62.661457, 54.914169, 56.101002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.111477, 54.901375, 55.436726>,  <62.257557, 54.362087, 55.952435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.111477, 54.901375, 55.436726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.475700, 54.858135, 55.596321>,  <62.694237, 54.832191, 55.692078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.475700, 54.858135, 55.596321>,  <62.111477, 54.901375, 55.436726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.475700, 54.858135, 55.596321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389445, -0.099308, -0.915680,
		0.138607, 0.989168, -0.048327,
		0.910560, -0.108099, 0.398992,
		62.748867, 54.825706, 55.716019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.768909, 55.395199, 55.218365>,  <62.111477, 54.901375, 55.436726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.768909, 55.395199, 55.218365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.886665, 55.032391, 55.338799>,  <62.957321, 54.814705, 55.411060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.886665, 55.032391, 55.338799>,  <62.768909, 55.395199, 55.218365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.886665, 55.032391, 55.338799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463338, -0.140083, -0.875040,
		0.835853, 0.397110, 0.379017,
		0.294393, -0.907017, 0.301085,
		62.974983, 54.760284, 55.429123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.176422, 55.381538, 55.909801>,  <62.768909, 55.395199, 55.218365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.176422, 55.381538, 55.909801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.108498, 55.622635, 56.221664>,  <63.067745, 55.767292, 56.408783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.108498, 55.622635, 56.221664>,  <63.176422, 55.381538, 55.909801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.108498, 55.622635, 56.221664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101958, 0.797650, -0.594440,
		-0.980189, -0.021448, -0.196901,
		-0.169808, 0.602739, 0.779661,
		63.057556, 55.803455, 56.455563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.579002, 56.123276, 56.141682>,  <63.176422, 55.381538, 55.909801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.579002, 56.123276, 56.141682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.690079, 55.832344, 55.890640>,  <63.756725, 55.657787, 55.740017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.690079, 55.832344, 55.890640>,  <63.579002, 56.123276, 56.141682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.690079, 55.832344, 55.890640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562473, -0.652705, 0.507543,
		-0.778789, 0.212070, -0.590351,
		0.277691, -0.727325, -0.627603,
		63.773384, 55.614147, 55.702358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.677429, 56.859631, 56.354012>,  <63.579002, 56.123276, 56.141682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.677429, 56.859631, 56.354012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.541565, 57.220787, 56.248619>,  <63.460049, 57.437481, 56.185383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.541565, 57.220787, 56.248619>,  <63.677429, 56.859631, 56.354012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.541565, 57.220787, 56.248619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055187, 0.298786, 0.952723,
		0.938929, 0.309058, -0.151313,
		-0.339657, 0.902890, -0.263483,
		63.439667, 57.491653, 56.169575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.174461, 57.427071, 56.454178>,  <63.677429, 56.859631, 56.354012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.174461, 57.427071, 56.454178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.787773, 57.523407, 56.488663>,  <63.555759, 57.581207, 56.509354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.787773, 57.523407, 56.488663>,  <64.174461, 57.427071, 56.454178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.787773, 57.523407, 56.488663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147340, 0.248723, 0.957302,
		0.209114, 0.938154, -0.275933,
		-0.966728, 0.240841, 0.086216,
		63.497753, 57.595661, 56.514526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.219559, 58.139854, 56.746037>,  <64.174461, 57.427071, 56.454178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.219559, 58.139854, 56.746037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.552719, 58.334053, 56.852287>,  <64.752617, 58.450573, 56.916039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.552719, 58.334053, 56.852287>,  <64.219559, 58.139854, 56.746037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.552719, 58.334053, 56.852287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037625, -0.429191, 0.902429,
		0.552129, -0.761636, -0.339211,
		0.832909, 0.485495, 0.265626,
		64.802589, 58.479702, 56.931976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.844864, 57.666641, 56.889824>,  <64.219559, 58.139854, 56.746037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.844864, 57.666641, 56.889824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.827477, 58.004196, 57.103729>,  <64.817047, 58.206730, 57.232071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.827477, 58.004196, 57.103729>,  <64.844864, 57.666641, 56.889824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.827477, 58.004196, 57.103729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105104, -0.536158, 0.837549,
		0.993511, -0.019799, 0.112002,
		-0.043469, 0.843886, 0.534759,
		64.814438, 58.257362, 57.264156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.368546, 57.641285, 57.432362>,  <64.844864, 57.666641, 56.889824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.368546, 57.641285, 57.432362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.054001, 57.872772, 57.518814>,  <64.865273, 58.011665, 57.570686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.054001, 57.872772, 57.518814>,  <65.368546, 57.641285, 57.432362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.054001, 57.872772, 57.518814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209604, -0.579052, 0.787887,
		0.581118, 0.574264, 0.576648,
		-0.786364, 0.578723, 0.216129,
		64.818092, 58.046391, 57.583652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.119240, 57.775097, 57.497448>,  <65.368546, 57.641285, 57.432362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.119240, 57.775097, 57.497448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.334061, 57.674511, 57.819527>,  <66.462952, 57.614159, 58.012772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.334061, 57.674511, 57.819527>,  <66.119240, 57.775097, 57.497448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.334061, 57.674511, 57.819527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089065, 0.966103, 0.242308,
		-0.838829, -0.058419, 0.541251,
		0.537059, -0.251462, 0.805192,
		66.495178, 57.599072, 58.061085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.013855, 57.261467, 58.001080>,  <66.119240, 57.775097, 57.497448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.013855, 57.261467, 58.001080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.037323, 56.864479, 58.044090>,  <66.051407, 56.626286, 58.069897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.037323, 56.864479, 58.044090>,  <66.013855, 57.261467, 58.001080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.037323, 56.864479, 58.044090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007645, 0.108152, 0.994105,
		-0.998248, -0.057503, 0.013933,
		0.058671, -0.992470, 0.107523,
		66.054924, 56.566738, 58.076347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.714653, 56.956734, 58.619167>,  <66.013855, 57.261467, 58.001080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.714653, 56.956734, 58.619167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.952194, 56.648872, 58.525383>,  <66.094719, 56.464153, 58.469112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.952194, 56.648872, 58.525383>,  <65.714653, 56.956734, 58.619167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.952194, 56.648872, 58.525383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270424, -0.083525, 0.959111,
		-0.757770, -0.632971, 0.158532,
		0.593848, -0.769657, -0.234463,
		66.130348, 56.417976, 58.455044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.537193, 56.572609, 59.166290>,  <65.714653, 56.956734, 58.619167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.537193, 56.572609, 59.166290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.896286, 56.478645, 59.017220>,  <66.111740, 56.422268, 58.927776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.896286, 56.478645, 59.017220>,  <65.537193, 56.572609, 59.166290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.896286, 56.478645, 59.017220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310395, -0.263025, 0.913495,
		-0.312617, -0.935753, -0.163210,
		0.897734, -0.234914, -0.372680,
		66.165604, 56.408173, 58.905415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.739754, 55.837257, 59.272198>,  <65.537193, 56.572609, 59.166290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.739754, 55.837257, 59.272198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.041809, 56.099094, 59.286507>,  <66.223045, 56.256195, 59.295090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.041809, 56.099094, 59.286507>,  <65.739754, 55.837257, 59.272198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.041809, 56.099094, 59.286507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246489, -0.334063, 0.909750,
		0.607464, -0.678168, -0.413613,
		0.755136, 0.654592, 0.035770,
		66.268349, 56.295471, 59.297237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.335495, 55.606857, 59.591717>,  <65.739754, 55.837257, 59.272198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.335495, 55.606857, 59.591717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.332718, 56.003979, 59.639526>,  <66.331047, 56.242252, 59.668213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.332718, 56.003979, 59.639526>,  <66.335495, 55.606857, 59.591717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.332718, 56.003979, 59.639526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019868, -0.119369, 0.992651,
		0.999778, 0.009276, -0.018895,
		-0.006952, 0.992806, 0.119527,
		66.330635, 56.301819, 59.675385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.101181, 55.957138, 59.480335>,  <66.335495, 55.606857, 59.591717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.101181, 55.957138, 59.480335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.309746, 56.296581, 59.516113>,  <67.434883, 56.500248, 59.537582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.309746, 56.296581, 59.516113>,  <67.101181, 55.957138, 59.480335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.309746, 56.296581, 59.516113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205847, -0.023360, -0.978306,
		-0.828106, 0.528510, -0.186862,
		0.521409, 0.848606, 0.089447,
		67.466171, 56.551163, 59.542946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.126015, 55.251450, 59.805725>,  <67.101181, 55.957138, 59.480335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.126015, 55.251450, 59.805725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.448952, 55.122238, 60.003250>,  <67.642715, 55.044712, 60.121765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.448952, 55.122238, 60.003250>,  <67.126015, 55.251450, 59.805725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.448952, 55.122238, 60.003250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577980, 0.601512, -0.551472,
		-0.118890, 0.730640, 0.672332,
		0.807344, -0.323030, 0.493809,
		67.691154, 55.025330, 60.151394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.657455, 55.780178, 59.950790>,  <67.126015, 55.251450, 59.805725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.657455, 55.780178, 59.950790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.839622, 55.424320, 59.937302>,  <67.948921, 55.210808, 59.929207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.839622, 55.424320, 59.937302>,  <67.657455, 55.780178, 59.950790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.839622, 55.424320, 59.937302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728382, 0.394110, -0.560479,
		0.511914, 0.230689, 0.827482,
		0.455415, -0.889640, -0.033721,
		67.976250, 55.157429, 59.927185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.455711, 55.876198, 60.223923>,  <67.657455, 55.780178, 59.950790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.455711, 55.876198, 60.223923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.437057, 55.566414, 59.971565>,  <68.425865, 55.380543, 59.820148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.437057, 55.566414, 59.971565>,  <68.455711, 55.876198, 60.223923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.437057, 55.566414, 59.971565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798301, 0.350752, -0.489580,
		0.600451, -0.526478, 0.601897,
		-0.046637, -0.774463, -0.630897,
		68.423065, 55.334076, 59.782295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.125938, 55.490490, 60.231853>,  <68.455711, 55.876198, 60.223923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.125938, 55.490490, 60.231853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.930717, 55.440010, 59.886398>,  <68.813583, 55.409721, 59.679127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.930717, 55.440010, 59.886398>,  <69.125938, 55.490490, 60.231853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.930717, 55.440010, 59.886398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803520, 0.321408, -0.501052,
		0.340814, -0.938494, -0.055459,
		-0.488059, -0.126203, -0.863639,
		68.784302, 55.402149, 59.627308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.594803, 55.100895, 59.724113>,  <69.125938, 55.490490, 60.231853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.594803, 55.100895, 59.724113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.329437, 55.338791, 59.542488>,  <69.170219, 55.481529, 59.433514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.329437, 55.338791, 59.542488>,  <69.594803, 55.100895, 59.724113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.329437, 55.338791, 59.542488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748202, 0.519992, -0.412070,
		-0.008962, -0.613105, -0.789951,
		-0.663410, 0.594736, -0.454066,
		69.130417, 55.517212, 59.406269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.815346, 54.931664, 58.948380>,  <69.594803, 55.100895, 59.724113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.815346, 54.931664, 58.948380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.805809, 55.290024, 58.770935>,  <69.800087, 55.505039, 58.664467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.805809, 55.290024, 58.770935>,  <69.815346, 54.931664, 58.948380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.805809, 55.290024, 58.770935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804893, 0.280389, 0.523001,
		0.592941, -0.344587, -0.727792,
		-0.023845, 0.895903, -0.443610,
		69.798653, 55.558796, 58.637852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.487961, 54.908360, 58.752373>,  <69.815346, 54.931664, 58.948380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.487961, 54.908360, 58.752373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.297913, 55.245045, 58.854958>,  <70.183884, 55.447056, 58.916508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.297913, 55.245045, 58.854958>,  <70.487961, 54.908360, 58.752373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.297913, 55.245045, 58.854958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734835, 0.219230, 0.641837,
		0.484022, 0.493407, -0.722684,
		-0.475121, 0.841717, 0.256460,
		70.155373, 55.497559, 58.931896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.880844, 55.583351, 58.707996>,  <70.487961, 54.908360, 58.752373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.880844, 55.583351, 58.707996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.616249, 55.643909, 59.001801>,  <70.457489, 55.680244, 59.178082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.616249, 55.643909, 59.001801>,  <70.880844, 55.583351, 58.707996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.616249, 55.643909, 59.001801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748966, 0.083205, 0.657364,
		0.038410, 0.984964, -0.168433,
		-0.661495, 0.151400, 0.734509,
		70.417801, 55.689331, 59.222153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.938766, 56.268585, 59.126640>,  <70.880844, 55.583351, 58.707996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.938766, 56.268585, 59.126640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.792809, 55.949219, 59.318214>,  <70.705231, 55.757599, 59.433159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.792809, 55.949219, 59.318214>,  <70.938766, 56.268585, 59.126640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.792809, 55.949219, 59.318214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711180, 0.092976, 0.696834,
		-0.600895, 0.594881, 0.533893,
		-0.364894, -0.798419, 0.478936,
		70.683342, 55.709694, 59.461895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.765228, 56.452263, 59.774410>,  <70.938766, 56.268585, 59.126640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.765228, 56.452263, 59.774410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.839157, 56.059738, 59.795799>,  <70.883514, 55.824223, 59.808632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.839157, 56.059738, 59.795799>,  <70.765228, 56.452263, 59.774410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.839157, 56.059738, 59.795799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675880, 0.166429, 0.717975,
		-0.713459, -0.096560, 0.694012,
		0.184831, -0.981314, 0.053477,
		70.894608, 55.765343, 59.811844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.833809, 56.160999, 60.466091>,  <70.765228, 56.452263, 59.774410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.833809, 56.160999, 60.466091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.045296, 55.961304, 60.191513>,  <71.172188, 55.841488, 60.026764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.045296, 55.961304, 60.191513>,  <70.833809, 56.160999, 60.466091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.045296, 55.961304, 60.191513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847727, 0.270068, 0.456533,
		-0.042532, -0.823300, 0.566011,
		0.528725, -0.499240, -0.686447,
		71.203911, 55.811531, 59.985580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.264099, 55.668903, 60.692291>,  <70.833809, 56.160999, 60.466091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.264099, 55.668903, 60.692291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.461990, 55.733063, 60.350647>,  <71.580727, 55.771561, 60.145660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.461990, 55.733063, 60.350647>,  <71.264099, 55.668903, 60.692291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.461990, 55.733063, 60.350647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841215, 0.158329, 0.517000,
		0.218159, -0.974270, -0.056602,
		0.494736, 0.160403, -0.854112,
		71.610413, 55.781185, 60.094414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.932632, 55.334850, 60.648426>,  <71.264099, 55.668903, 60.692291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.932632, 55.334850, 60.648426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.017616, 55.636986, 60.400452>,  <72.068611, 55.818268, 60.251667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.017616, 55.636986, 60.400452>,  <71.932632, 55.334850, 60.648426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.017616, 55.636986, 60.400452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946811, -0.002226, 0.321782,
		0.241676, -0.655326, -0.715640,
		0.212465, 0.755343, -0.619932,
		72.081352, 55.863590, 60.214474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.690392, 55.324108, 60.517574>,  <71.932632, 55.334850, 60.648426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.690392, 55.324108, 60.517574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.569893, 55.703884, 60.482216>,  <72.497597, 55.931751, 60.460999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.569893, 55.703884, 60.482216>,  <72.690392, 55.324108, 60.517574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.569893, 55.703884, 60.482216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895289, 0.313523, 0.316483,
		0.328198, 0.016195, -0.944470,
		-0.301238, 0.949443, -0.088399,
		72.479523, 55.988716, 60.455696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.011986, 55.746387, 60.042301>,  <72.690392, 55.324108, 60.517574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.011986, 55.746387, 60.042301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.868645, 55.987289, 60.327644>,  <72.782639, 56.131832, 60.498848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.868645, 55.987289, 60.327644>,  <73.011986, 55.746387, 60.042301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.868645, 55.987289, 60.327644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899108, 0.428375, 0.089994,
		-0.251384, 0.673631, -0.695002,
		-0.358344, 0.602259, 0.713353,
		72.761139, 56.167969, 60.541649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.237480, 56.436089, 59.889282>,  <73.011986, 55.746387, 60.042301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.237480, 56.436089, 59.889282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.195602, 56.359604, 60.279663>,  <73.170479, 56.313713, 60.513893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.195602, 56.359604, 60.279663>,  <73.237480, 56.436089, 59.889282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.195602, 56.359604, 60.279663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820720, 0.537613, 0.193367,
		-0.561657, 0.821226, 0.100645,
		-0.104690, -0.191207, 0.975951,
		73.164192, 56.302242, 60.572449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.000648, 57.222095, 59.962227>,  <73.237480, 56.436089, 59.889282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.000648, 57.222095, 59.962227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.235260, 57.527550, 60.070183>,  <73.376030, 57.710823, 60.134956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.235260, 57.527550, 60.070183>,  <73.000648, 57.222095, 59.962227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.235260, 57.527550, 60.070183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772437, 0.627623, -0.097112,
		-0.243548, -0.151514, 0.957981,
		0.586537, 0.763631, 0.269891,
		73.411224, 57.756638, 60.151150>
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
