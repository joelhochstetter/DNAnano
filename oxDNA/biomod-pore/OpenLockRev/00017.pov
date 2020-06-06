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
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
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
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<40.517727, 34.982719, 48.640007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385677, 34.765923, 48.949135>,  <40.306446, 34.635845, 49.134613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385677, 34.765923, 48.949135>,  <40.517727, 34.982719, 48.640007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385677, 34.765923, 48.949135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776485, 0.309610, 0.548828,
		-0.536737, 0.781269, 0.318641,
		-0.330128, -0.541997, 0.772823,
		40.286640, 34.603325, 49.180981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557858, 35.444180, 49.264019>,  <40.517727, 34.982719, 48.640007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557858, 35.444180, 49.264019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.554043, 35.053162, 49.348217>,  <40.551754, 34.818550, 49.398735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.554043, 35.053162, 49.348217>,  <40.557858, 35.444180, 49.264019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554043, 35.053162, 49.348217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782058, 0.123887, 0.610767,
		-0.623132, 0.170444, 0.763318,
		-0.009536, -0.977548, 0.210496,
		40.551182, 34.759895, 49.411366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460499, 35.388020, 49.977074>,  <40.557858, 35.444180, 49.264019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460499, 35.388020, 49.977074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.626266, 35.045589, 49.853535>,  <40.725727, 34.840130, 49.779411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.626266, 35.045589, 49.853535>,  <40.460499, 35.388020, 49.977074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626266, 35.045589, 49.853535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674882, 0.061405, 0.735366,
		-0.610565, -0.513188, 0.603198,
		0.414421, -0.856077, -0.308850,
		40.750591, 34.788765, 49.760880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757000, 35.081882, 50.558605>,  <40.460499, 35.388020, 49.977074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757000, 35.081882, 50.558605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922920, 34.929993, 50.227848>,  <41.022472, 34.838860, 50.029392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922920, 34.929993, 50.227848>,  <40.757000, 35.081882, 50.558605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922920, 34.929993, 50.227848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891863, -0.010432, 0.452186,
		-0.180330, -0.925042, 0.334332,
		0.414803, -0.379722, -0.826892,
		41.047359, 34.816078, 49.979782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994144, 34.555927, 50.896801>,  <40.757000, 35.081882, 50.558605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994144, 34.555927, 50.896801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203739, 34.626568, 50.563515>,  <41.329498, 34.668953, 50.363544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203739, 34.626568, 50.563515>,  <40.994144, 34.555927, 50.896801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203739, 34.626568, 50.563515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846834, -0.003336, 0.531848,
		0.091144, -0.984277, -0.151299,
		0.523990, 0.176600, -0.833215,
		41.360935, 34.679546, 50.313549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680901, 34.067310, 50.905586>,  <40.994144, 34.555927, 50.896801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680901, 34.067310, 50.905586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.728142, 34.380650, 50.661484>,  <41.756485, 34.568653, 50.515022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.728142, 34.380650, 50.661484>,  <41.680901, 34.067310, 50.905586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.728142, 34.380650, 50.661484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907860, 0.163796, 0.385955,
		0.402296, -0.599608, -0.691829,
		0.118103, 0.783352, -0.610255,
		41.763573, 34.615654, 50.478409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.401711, 34.018150, 50.885902>,  <41.680901, 34.067310, 50.905586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.401711, 34.018150, 50.885902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324287, 34.381687, 50.738094>,  <42.277832, 34.599808, 50.649410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324287, 34.381687, 50.738094>,  <42.401711, 34.018150, 50.885902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.324287, 34.381687, 50.738094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943569, 0.275614, 0.183613,
		0.268720, -0.313128, -0.910901,
		-0.193562, 0.908839, -0.369521,
		42.266220, 34.654339, 50.627239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.974827, 34.265583, 50.329884>,  <42.401711, 34.018150, 50.885902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.974827, 34.265583, 50.329884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800873, 34.602390, 50.457561>,  <42.696503, 34.804474, 50.534168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800873, 34.602390, 50.457561>,  <42.974827, 34.265583, 50.329884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800873, 34.602390, 50.457561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900382, 0.401153, 0.168490,
		0.013825, 0.360671, -0.932591,
		-0.434881, 0.842017, 0.319196,
		42.670410, 34.854996, 50.553322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.454151, 34.732113, 50.201458>,  <42.974827, 34.265583, 50.329884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.454151, 34.732113, 50.201458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.224274, 34.942322, 50.452393>,  <43.086349, 35.068447, 50.602955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.224274, 34.942322, 50.452393>,  <43.454151, 34.732113, 50.201458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.224274, 34.942322, 50.452393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818368, 0.370719, 0.439137,
		-0.001792, 0.765764, -0.643119,
		-0.574692, 0.525521, 0.627341,
		43.051865, 35.099979, 50.640594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.719677, 35.375797, 50.125652>,  <43.454151, 34.732113, 50.201458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.719677, 35.375797, 50.125652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.514008, 35.397133, 50.468063>,  <43.390606, 35.409935, 50.673512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.514008, 35.397133, 50.468063>,  <43.719677, 35.375797, 50.125652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.514008, 35.397133, 50.468063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788298, 0.422654, 0.447157,
		-0.337953, 0.904720, -0.259363,
		-0.514173, 0.053337, 0.856026,
		43.359756, 35.413136, 50.724873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.582195, 36.084839, 50.358150>,  <43.719677, 35.375797, 50.125652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.582195, 36.084839, 50.358150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.596085, 35.859215, 50.688152>,  <43.604416, 35.723839, 50.886154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.596085, 35.859215, 50.688152>,  <43.582195, 36.084839, 50.358150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.596085, 35.859215, 50.688152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813281, 0.495716, 0.304696,
		-0.580834, 0.660381, 0.475950,
		0.034720, -0.564059, 0.825004,
		43.606503, 35.689999, 50.935654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.165455, 36.441917, 50.867489>,  <43.582195, 36.084839, 50.358150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.165455, 36.441917, 50.867489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.102367, 36.088364, 51.043617>,  <44.064514, 35.876232, 51.149296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.102367, 36.088364, 51.043617>,  <44.165455, 36.441917, 50.867489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.102367, 36.088364, 51.043617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790035, 0.154571, 0.593256,
		-0.592427, 0.441433, 0.673919,
		-0.157714, -0.883881, 0.440319,
		44.055054, 35.823200, 51.175713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.355434, 36.551121, 51.497505>,  <44.165455, 36.441917, 50.867489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.355434, 36.551121, 51.497505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.375248, 36.151642, 51.492592>,  <44.387135, 35.911953, 51.489643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.375248, 36.151642, 51.492592>,  <44.355434, 36.551121, 51.497505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.375248, 36.151642, 51.492592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848113, 0.035563, 0.528620,
		-0.527495, -0.036601, 0.848770,
		0.049532, -0.998697, -0.012282,
		44.390106, 35.852032, 51.488907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.648384, 36.311459, 52.166603>,  <44.355434, 36.551121, 51.497505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.648384, 36.311459, 52.166603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.695927, 35.982822, 51.943584>,  <44.724453, 35.785641, 51.809772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.695927, 35.982822, 51.943584>,  <44.648384, 36.311459, 52.166603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.695927, 35.982822, 51.943584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919109, -0.121405, 0.374831,
		-0.375647, -0.557001, 0.740701,
		0.118856, -0.821590, -0.557551,
		44.731583, 35.736347, 51.776318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.884769, 35.867058, 52.613968>,  <44.648384, 36.311459, 52.166603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.884769, 35.867058, 52.613968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.007130, 35.725006, 52.260628>,  <45.080547, 35.639774, 52.048622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.007130, 35.725006, 52.260628>,  <44.884769, 35.867058, 52.613968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.007130, 35.725006, 52.260628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839042, -0.337912, 0.426409,
		-0.449923, -0.871608, 0.194597,
		0.305905, -0.355126, -0.883350,
		45.098900, 35.618469, 51.995621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.181992, 35.247833, 52.801949>,  <44.884769, 35.867058, 52.613968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.181992, 35.247833, 52.801949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.323452, 35.349068, 52.441753>,  <45.408329, 35.409809, 52.225636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.323452, 35.349068, 52.441753>,  <45.181992, 35.247833, 52.801949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.323452, 35.349068, 52.441753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856715, -0.474069, 0.203221,
		-0.375460, -0.843330, -0.384479,
		0.353652, 0.253088, -0.900487,
		45.429546, 35.424995, 52.171608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.574654, 34.680256, 52.576092>,  <45.181992, 35.247833, 52.801949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.574654, 34.680256, 52.576092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.722301, 34.976372, 52.351337>,  <45.810890, 35.154041, 52.216484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.722301, 34.976372, 52.351337>,  <45.574654, 34.680256, 52.576092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.722301, 34.976372, 52.351337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901081, -0.433127, 0.021294,
		-0.227604, -0.514165, -0.826941,
		0.369119, 0.740295, -0.561886,
		45.833038, 35.198460, 52.182774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.060978, 34.345974, 52.102695>,  <45.574654, 34.680256, 52.576092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.060978, 34.345974, 52.102695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.160240, 34.733421, 52.097008>,  <46.219795, 34.965889, 52.093594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.160240, 34.733421, 52.097008>,  <46.060978, 34.345974, 52.102695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.160240, 34.733421, 52.097008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968398, -0.247664, 0.029450,
		0.025004, -0.021077, -0.999465,
		0.248152, 0.968617, -0.014218,
		46.234688, 35.024006, 52.092743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.584450, 34.344509, 51.663147>,  <46.060978, 34.345974, 52.102695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.584450, 34.344509, 51.663147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.638062, 34.688831, 51.859531>,  <46.670227, 34.895424, 51.977364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.638062, 34.688831, 51.859531>,  <46.584450, 34.344509, 51.663147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.638062, 34.688831, 51.859531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990957, -0.119574, -0.060877,
		0.006304, 0.494686, -0.869049,
		0.134031, 0.860807, 0.490966,
		46.678272, 34.947075, 52.006821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.147747, 34.675674, 51.299732>,  <46.584450, 34.344509, 51.663147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.147747, 34.675674, 51.299732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.144718, 34.843204, 51.662949>,  <47.142899, 34.943722, 51.880878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.144718, 34.843204, 51.662949>,  <47.147747, 34.675674, 51.299732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.144718, 34.843204, 51.662949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968482, -0.223014, 0.110944,
		0.248970, 0.880258, -0.403931,
		-0.007577, 0.418822, 0.908037,
		47.142445, 34.968849, 51.935360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.616398, 35.163929, 51.440285>,  <47.147747, 34.675674, 51.299732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.616398, 35.163929, 51.440285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.515503, 34.964924, 51.772274>,  <47.454967, 34.845520, 51.971466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.515503, 34.964924, 51.772274>,  <47.616398, 35.163929, 51.440285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.515503, 34.964924, 51.772274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932173, -0.355095, 0.070435,
		0.259677, 0.791446, 0.553337,
		-0.252233, -0.497515, 0.829974,
		47.439835, 34.815670, 52.021267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.239359, 34.405907, 52.176952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.330927, 34.791595, 52.123466>,  <24.385868, 35.023006, 52.091373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.330927, 34.791595, 52.123466>,  <24.239359, 34.405907, 52.176952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.330927, 34.791595, 52.123466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927956, -0.257653, -0.269281,
		-0.294098, -0.062441, -0.953733,
		0.228918, 0.964218, -0.133718,
		24.399603, 35.080860, 52.083351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.498819, 34.521446, 51.432590>,  <24.239359, 34.405907, 52.176952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.498819, 34.521446, 51.432590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.641382, 34.778824, 51.703575>,  <24.726919, 34.933250, 51.866165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.641382, 34.778824, 51.703575>,  <24.498819, 34.521446, 51.432590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.641382, 34.778824, 51.703575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917575, -0.104338, -0.383627,
		-0.176155, 0.758352, -0.627591,
		0.356406, 0.643440, 0.677465,
		24.748304, 34.971855, 51.906815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.734203, 35.145035, 51.036442>,  <24.498819, 34.521446, 51.432590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.734203, 35.145035, 51.036442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.913031, 35.125011, 51.393681>,  <25.020327, 35.112999, 51.608025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.913031, 35.125011, 51.393681>,  <24.734203, 35.145035, 51.036442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.913031, 35.125011, 51.393681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887528, -0.099588, -0.449862,
		0.111461, 0.993769, -0.000096,
		0.447069, -0.050057, 0.893098,
		25.047152, 35.109993, 51.661610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.467314, 35.236488, 50.823444>,  <24.734203, 35.145035, 51.036442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.467314, 35.236488, 50.823444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.493408, 35.140903, 51.210979>,  <25.509064, 35.083553, 51.443501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.493408, 35.140903, 51.210979>,  <25.467314, 35.236488, 50.823444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.493408, 35.140903, 51.210979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997322, -0.016547, -0.071234,
		0.033054, 0.970887, 0.237247,
		0.065235, -0.238966, 0.968834,
		25.512980, 35.069214, 51.501629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.137032, 35.670223, 51.050175>,  <25.467314, 35.236488, 50.823444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.137032, 35.670223, 51.050175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.093735, 35.363464, 51.303204>,  <26.067757, 35.179409, 51.455021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.093735, 35.363464, 51.303204>,  <26.137032, 35.670223, 51.050175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.093735, 35.363464, 51.303204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955134, -0.256687, -0.147755,
		0.275686, 0.588199, 0.760276,
		-0.108244, -0.766899, 0.632574,
		26.061262, 35.133396, 51.492977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.741274, 35.709881, 51.423477>,  <26.137032, 35.670223, 51.050175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.741274, 35.709881, 51.423477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.602169, 35.338017, 51.472118>,  <26.518705, 35.114899, 51.501305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.602169, 35.338017, 51.472118>,  <26.741274, 35.709881, 51.423477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.602169, 35.338017, 51.472118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932819, -0.330014, 0.144707,
		-0.094397, 0.163760, 0.981974,
		-0.347763, -0.929663, 0.121606,
		26.497841, 35.059116, 51.508598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.163033, 35.471779, 51.993538>,  <26.741274, 35.709881, 51.423477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.163033, 35.471779, 51.993538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.037121, 35.170280, 51.762791>,  <26.961575, 34.989380, 51.624344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.037121, 35.170280, 51.762791>,  <27.163033, 35.471779, 51.993538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.037121, 35.170280, 51.762791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937012, -0.343715, -0.062193,
		-0.151400, -0.560109, 0.814467,
		-0.314779, -0.753749, -0.576867,
		26.942688, 34.944157, 51.589729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.506962, 34.907604, 52.314877>,  <27.163033, 35.471779, 51.993538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.506962, 34.907604, 52.314877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.384544, 34.835712, 51.940918>,  <27.311094, 34.792576, 51.716541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.384544, 34.835712, 51.940918>,  <27.506962, 34.907604, 52.314877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.384544, 34.835712, 51.940918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945401, -0.172953, -0.276230,
		-0.112047, -0.968393, 0.222847,
		-0.306041, -0.179729, -0.934899,
		27.292732, 34.781796, 51.660450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.934584, 34.382130, 52.136372>,  <27.506962, 34.907604, 52.314877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.934584, 34.382130, 52.136372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.784515, 34.513084, 51.789486>,  <27.694473, 34.591660, 51.581356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.784515, 34.513084, 51.789486>,  <27.934584, 34.382130, 52.136372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.784515, 34.513084, 51.789486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879391, -0.170127, -0.444666,
		-0.293116, -0.929448, -0.224075,
		-0.375173, 0.327388, -0.867215,
		27.671963, 34.611301, 51.529320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222015, 33.931694, 51.766434>,  <27.934584, 34.382130, 52.136372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222015, 33.931694, 51.766434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.137524, 34.226147, 51.509224>,  <28.086828, 34.402821, 51.354897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.137524, 34.226147, 51.509224>,  <28.222015, 33.931694, 51.766434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137524, 34.226147, 51.509224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923411, -0.065397, -0.378201,
		-0.320460, -0.673667, -0.665942,
		-0.211231, 0.736136, -0.643028,
		28.074154, 34.446987, 51.316315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502260, 33.715580, 51.108749>,  <28.222015, 33.931694, 51.766434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502260, 33.715580, 51.108749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.476654, 34.113918, 51.082825>,  <28.461290, 34.352921, 51.067268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.476654, 34.113918, 51.082825>,  <28.502260, 33.715580, 51.108749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.476654, 34.113918, 51.082825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923919, 0.034595, -0.381021,
		-0.377194, -0.084273, -0.922292,
		-0.064016, 0.995842, -0.064813,
		28.457449, 34.412670, 51.063381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.592539, 33.853172, 50.427269>,  <28.502260, 33.715580, 51.108749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.592539, 33.853172, 50.427269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.674135, 34.194981, 50.618347>,  <28.723093, 34.400066, 50.732994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.674135, 34.194981, 50.618347>,  <28.592539, 33.853172, 50.427269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.674135, 34.194981, 50.618347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835800, 0.102047, -0.539467,
		-0.509730, 0.509302, -0.693388,
		0.203993, 0.854516, 0.477691,
		28.735332, 34.451336, 50.761654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896278, 34.297062, 49.888287>,  <28.592539, 33.853172, 50.427269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896278, 34.297062, 49.888287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.002745, 34.437199, 50.247490>,  <29.066624, 34.521282, 50.463013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.002745, 34.437199, 50.247490>,  <28.896278, 34.297062, 49.888287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.002745, 34.437199, 50.247490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951198, 0.055441, -0.303560,
		-0.156136, 0.934979, -0.318489,
		0.266165, 0.350343, 0.898007,
		29.082594, 34.542301, 50.516891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.240332, 34.840363, 49.687004>,  <28.896278, 34.297062, 49.888287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.240332, 34.840363, 49.687004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.385693, 34.754871, 50.049717>,  <29.472908, 34.703575, 50.267345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.385693, 34.754871, 50.049717>,  <29.240332, 34.840363, 49.687004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.385693, 34.754871, 50.049717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918344, 0.245992, -0.310053,
		-0.156795, 0.945414, 0.285670,
		0.363401, -0.213728, 0.906785,
		29.494713, 34.690754, 50.321754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.656052, 35.501766, 49.872131>,  <29.240332, 34.840363, 49.687004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.656052, 35.501766, 49.872131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.780735, 35.194405, 50.095703>,  <29.855545, 35.009987, 50.229847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.780735, 35.194405, 50.095703>,  <29.656052, 35.501766, 49.872131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.780735, 35.194405, 50.095703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949350, 0.227299, -0.216957,
		0.039666, 0.598246, 0.800330,
		0.311707, -0.768399, 0.558928,
		29.874247, 34.963886, 50.263382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308302, 35.813061, 50.237049>,  <29.656052, 35.501766, 49.872131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308302, 35.813061, 50.237049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.346037, 35.416569, 50.274075>,  <30.368679, 35.178673, 50.296291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.346037, 35.416569, 50.274075>,  <30.308302, 35.813061, 50.237049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346037, 35.416569, 50.274075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987545, 0.081416, -0.134632,
		0.125915, 0.104112, 0.986563,
		0.094339, -0.991228, 0.092563,
		30.374338, 35.119202, 50.301842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951513, 35.695400, 50.659359>,  <30.308302, 35.813061, 50.237049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951513, 35.695400, 50.659359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.883463, 35.343277, 50.482220>,  <30.842632, 35.132004, 50.375935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.883463, 35.343277, 50.482220>,  <30.951513, 35.695400, 50.659359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883463, 35.343277, 50.482220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974517, -0.083622, -0.208142,
		0.146196, -0.466976, 0.872101,
		-0.170124, -0.880307, -0.442851,
		30.832426, 35.079185, 50.349365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362999, 35.197533, 51.015099>,  <30.951513, 35.695400, 50.659359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362999, 35.197533, 51.015099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.318907, 35.063919, 50.640659>,  <31.292452, 34.983753, 50.415997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.318907, 35.063919, 50.640659>,  <31.362999, 35.197533, 51.015099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318907, 35.063919, 50.640659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988165, -0.137917, -0.067148,
		-0.106674, -0.932418, 0.345280,
		-0.110229, -0.334030, -0.936095,
		31.285837, 34.963711, 50.359833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898945, 34.768475, 50.922165>,  <31.362999, 35.197533, 51.015099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898945, 34.768475, 50.922165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.802525, 34.803524, 50.535545>,  <31.744673, 34.824554, 50.303574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.802525, 34.803524, 50.535545>,  <31.898945, 34.768475, 50.922165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802525, 34.803524, 50.535545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927394, -0.272760, -0.256013,
		-0.286067, -0.958084, -0.015507,
		-0.241052, 0.087618, -0.966549,
		31.730209, 34.829811, 50.245583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077995, 34.114662, 50.631084>,  <31.898945, 34.768475, 50.922165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077995, 34.114662, 50.631084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.059631, 34.379570, 50.331944>,  <32.048615, 34.538517, 50.152458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.059631, 34.379570, 50.331944>,  <32.077995, 34.114662, 50.631084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059631, 34.379570, 50.331944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894073, -0.306679, -0.326467,
		-0.445562, -0.683623, -0.578043,
		-0.045907, 0.662274, -0.747854,
		32.045860, 34.578251, 50.107586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441917, 33.790741, 50.138680>,  <32.077995, 34.114662, 50.631084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441917, 33.790741, 50.138680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.441055, 34.167065, 50.003109>,  <32.440536, 34.392860, 49.921768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.441055, 34.167065, 50.003109>,  <32.441917, 33.790741, 50.138680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441055, 34.167065, 50.003109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977355, -0.069732, -0.199788,
		-0.211596, -0.331682, -0.919355,
		-0.002158, 0.940811, -0.338926,
		32.440407, 34.449306, 49.901432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<23.947344, 35.361092, 35.027946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.166292, 35.088585, 35.222370>,  <24.297661, 34.925079, 35.339024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.166292, 35.088585, 35.222370>,  <23.947344, 35.361092, 35.027946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.166292, 35.088585, 35.222370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519660, 0.731943, 0.440696,
		-0.656001, 0.011360, 0.754675,
		0.547373, -0.681271, 0.486059,
		24.330503, 34.884205, 35.368187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.983574, 35.560688, 35.658882>,  <23.947344, 35.361092, 35.027946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.983574, 35.560688, 35.658882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.318533, 35.354420, 35.586380>,  <24.519508, 35.230659, 35.542881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.318533, 35.354420, 35.586380>,  <23.983574, 35.560688, 35.658882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.318533, 35.354420, 35.586380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527480, 0.675454, 0.515293,
		-0.143294, -0.527111, 0.837628,
		0.837396, -0.515670, -0.181252,
		24.569752, 35.199718, 35.532005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.329130, 35.032402, 36.222374>,  <23.983574, 35.560688, 35.658882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.329130, 35.032402, 36.222374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.594450, 35.203716, 35.976902>,  <24.753643, 35.306503, 35.829617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.594450, 35.203716, 35.976902>,  <24.329130, 35.032402, 36.222374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.594450, 35.203716, 35.976902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372798, 0.521944, 0.767200,
		0.648888, -0.737663, 0.186542,
		0.663300, 0.428284, -0.613683,
		24.793440, 35.332203, 35.792797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.080421, 34.850811, 36.506218>,  <24.329130, 35.032402, 36.222374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.080421, 34.850811, 36.506218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.069933, 35.189110, 36.293041>,  <25.063639, 35.392090, 36.165134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.069933, 35.189110, 36.293041>,  <25.080421, 34.850811, 36.506218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.069933, 35.189110, 36.293041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504640, 0.471406, 0.723267,
		0.862932, -0.249975, -0.439160,
		-0.026224, 0.845748, -0.532938,
		25.062065, 35.442833, 36.133160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.752684, 35.234142, 36.449245>,  <25.080421, 34.850811, 36.506218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.752684, 35.234142, 36.449245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.470272, 35.513847, 36.404423>,  <25.300825, 35.681671, 36.377529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.470272, 35.513847, 36.404423>,  <25.752684, 35.234142, 36.449245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.470272, 35.513847, 36.404423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337560, 0.471401, 0.814760,
		0.622554, 0.537419, -0.568865,
		-0.706031, 0.699258, -0.112061,
		25.258463, 35.723625, 36.370804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.062159, 35.957905, 36.256138>,  <25.752684, 35.234142, 36.449245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.062159, 35.957905, 36.256138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.719877, 35.929756, 36.461201>,  <25.514509, 35.912865, 36.584240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.719877, 35.929756, 36.461201>,  <26.062159, 35.957905, 36.256138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.719877, 35.929756, 36.461201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413790, 0.501834, 0.759566,
		-0.310724, 0.862096, -0.400301,
		-0.855703, -0.070375, 0.512659,
		25.463165, 35.908642, 36.614998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.863659, 36.555134, 36.657124>,  <26.062159, 35.957905, 36.256138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.863659, 36.555134, 36.657124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.811764, 36.213276, 36.858223>,  <25.780626, 36.008163, 36.978882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.811764, 36.213276, 36.858223>,  <25.863659, 36.555134, 36.657124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.811764, 36.213276, 36.858223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718677, 0.268272, 0.641508,
		-0.683133, 0.444541, 0.579407,
		-0.129737, -0.854642, 0.502747,
		25.772842, 35.956882, 37.009048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.704973, 36.651634, 37.424885>,  <25.863659, 36.555134, 36.657124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.704973, 36.651634, 37.424885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.928669, 36.332703, 37.334091>,  <26.062885, 36.141342, 37.279617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.928669, 36.332703, 37.334091>,  <25.704973, 36.651634, 37.424885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.928669, 36.332703, 37.334091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698756, 0.306030, 0.646596,
		-0.446086, -0.520205, 0.728282,
		0.559238, -0.797328, -0.226981,
		26.096441, 36.093506, 37.265999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.816196, 36.154392, 37.964924>,  <25.704973, 36.651634, 37.424885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.816196, 36.154392, 37.964924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.122252, 36.167110, 37.707691>,  <26.305885, 36.174744, 37.553352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.122252, 36.167110, 37.707691>,  <25.816196, 36.154392, 37.964924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.122252, 36.167110, 37.707691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610649, 0.280813, 0.740440,
		0.204130, -0.959235, 0.195443,
		0.765139, 0.031799, -0.643079,
		26.351793, 36.176651, 37.514767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.471188, 35.789272, 38.197777>,  <25.816196, 36.154392, 37.964924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.471188, 35.789272, 38.197777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.540440, 36.101875, 37.958019>,  <26.581991, 36.289436, 37.814163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.540440, 36.101875, 37.958019>,  <26.471188, 35.789272, 38.197777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.540440, 36.101875, 37.958019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521145, 0.443718, 0.729056,
		0.835724, -0.438592, -0.330457,
		0.173129, 0.781506, -0.599396,
		26.592379, 36.336327, 37.778202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.214428, 35.902393, 38.075432>,  <26.471188, 35.789272, 38.197777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.214428, 35.902393, 38.075432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.995596, 36.234402, 38.032028>,  <26.864298, 36.433605, 38.005985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.995596, 36.234402, 38.032028>,  <27.214428, 35.902393, 38.075432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.995596, 36.234402, 38.032028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430367, 0.390076, 0.814018,
		0.717976, 0.398634, -0.570615,
		-0.547078, 0.830019, -0.108507,
		26.831472, 36.483406, 37.999477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.562746, 36.276230, 38.609306>,  <27.214428, 35.902393, 38.075432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.562746, 36.276230, 38.609306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.273340, 36.513870, 38.468697>,  <27.099697, 36.656456, 38.384331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.273340, 36.513870, 38.468697>,  <27.562746, 36.276230, 38.609306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.273340, 36.513870, 38.468697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068039, 0.568117, 0.820130,
		0.686948, 0.569459, -0.451463,
		-0.723514, 0.594104, -0.351522,
		27.056286, 36.692101, 38.363239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.936550, 36.912395, 38.490559>,  <27.562746, 36.276230, 38.609306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.936550, 36.912395, 38.490559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.552372, 36.893627, 38.600349>,  <27.321865, 36.882366, 38.666225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.552372, 36.893627, 38.600349>,  <27.936550, 36.912395, 38.490559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.552372, 36.893627, 38.600349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249893, 0.289667, 0.923930,
		-0.122860, 0.955977, -0.266484,
		-0.960447, -0.046922, 0.274481,
		27.264238, 36.879551, 38.682693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.689022, 37.486935, 38.636028>,  <27.936550, 36.912395, 38.490559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.689022, 37.486935, 38.636028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.486212, 37.220932, 38.855370>,  <27.364525, 37.061329, 38.986973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.486212, 37.220932, 38.855370>,  <27.689022, 37.486935, 38.636028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.486212, 37.220932, 38.855370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266768, 0.483877, 0.833485,
		-0.819610, 0.568880, -0.067934,
		-0.507025, -0.665010, 0.548350,
		27.334105, 37.021427, 39.019875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.260166, 37.837051, 39.076797>,  <27.689022, 37.486935, 38.636028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.260166, 37.837051, 39.076797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.317421, 37.503185, 39.289532>,  <27.351774, 37.302868, 39.417171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.317421, 37.503185, 39.289532>,  <27.260166, 37.837051, 39.076797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.317421, 37.503185, 39.289532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208552, 0.550740, 0.808202,
		-0.967480, -0.004769, 0.252903,
		0.143138, -0.834663, 0.531836,
		27.360363, 37.252785, 39.449081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.942335, 37.903458, 39.737865>,  <27.260166, 37.837051, 39.076797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.942335, 37.903458, 39.737865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.185389, 37.593670, 39.808273>,  <27.331221, 37.407799, 39.850517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.185389, 37.593670, 39.808273>,  <26.942335, 37.903458, 39.737865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.185389, 37.593670, 39.808273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097371, 0.292599, 0.951265,
		-0.788226, -0.560881, 0.253204,
		0.607633, -0.774467, 0.176020,
		27.367678, 37.361328, 39.861080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.647955, 37.545906, 40.321079>,  <26.942335, 37.903458, 39.737865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.647955, 37.545906, 40.321079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.039911, 37.482304, 40.272861>,  <27.275085, 37.444141, 40.243931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.039911, 37.482304, 40.272861>,  <26.647955, 37.545906, 40.321079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.039911, 37.482304, 40.272861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153757, 0.216659, 0.964063,
		-0.127178, -0.963211, 0.236751,
		0.979890, -0.159010, -0.120546,
		27.333878, 37.434601, 40.236698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.832970, 37.173111, 40.922047>,  <26.647955, 37.545906, 40.321079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.832970, 37.173111, 40.922047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.178522, 37.333096, 40.799576>,  <27.385853, 37.429085, 40.726093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.178522, 37.333096, 40.799576>,  <26.832970, 37.173111, 40.922047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.178522, 37.333096, 40.799576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256496, 0.173830, 0.950786,
		0.433499, -0.899897, 0.047580,
		0.863880, 0.399960, -0.306175,
		27.437687, 37.453083, 40.707722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.276176, 36.967194, 41.346222>,  <26.832970, 37.173111, 40.922047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.276176, 36.967194, 41.346222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.402365, 37.316380, 41.197403>,  <27.478077, 37.525890, 41.108112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.402365, 37.316380, 41.197403>,  <27.276176, 36.967194, 41.346222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.402365, 37.316380, 41.197403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305458, 0.277779, 0.910788,
		0.898429, -0.400969, -0.179023,
		0.315469, 0.872962, -0.372043,
		27.497005, 37.578270, 41.085789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.232002, 36.256676, 41.466450>,  <27.276176, 36.967194, 41.346222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.232002, 36.256676, 41.466450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.480713, 36.432205, 41.206963>,  <27.629938, 36.537521, 41.051270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.480713, 36.432205, 41.206963>,  <27.232002, 36.256676, 41.466450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.480713, 36.432205, 41.206963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668358, 0.134495, 0.731579,
		0.408281, -0.888452, -0.209663,
		0.621775, 0.438820, -0.648716,
		27.667246, 36.563850, 41.012348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897511, 35.958839, 41.248791>,  <27.232002, 36.256676, 41.466450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897511, 35.958839, 41.248791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.953148, 36.353806, 41.278889>,  <27.986530, 36.590786, 41.296947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.953148, 36.353806, 41.278889>,  <27.897511, 35.958839, 41.248791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.953148, 36.353806, 41.278889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652290, -0.148523, 0.743276,
		0.745098, -0.054305, -0.664741,
		0.139093, 0.987417, 0.075242,
		27.994875, 36.650032, 41.301460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593901, 36.103081, 41.393684>,  <27.897511, 35.958839, 41.248791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593901, 36.103081, 41.393684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.400831, 36.426155, 41.529140>,  <28.284990, 36.619999, 41.610413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.400831, 36.426155, 41.529140>,  <28.593901, 36.103081, 41.393684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400831, 36.426155, 41.529140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622676, 0.044571, 0.781209,
		0.615875, 0.587931, -0.524438,
		-0.482672, 0.807682, 0.338640,
		28.256029, 36.668461, 41.630733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948914, 36.750427, 41.472683>,  <28.593901, 36.103081, 41.393684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948914, 36.750427, 41.472683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.670374, 36.744762, 41.759708>,  <28.503250, 36.741364, 41.931923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.670374, 36.744762, 41.759708>,  <28.948914, 36.750427, 41.472683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.670374, 36.744762, 41.759708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716342, -0.075315, 0.693673,
		0.044217, 0.997059, 0.062592,
		-0.696347, -0.014165, 0.717566,
		28.461470, 36.740513, 41.974979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.213942, 37.187798, 41.928364>,  <28.948914, 36.750427, 41.472683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.213942, 37.187798, 41.928364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.953592, 36.946308, 42.112488>,  <28.797382, 36.801414, 42.222961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.953592, 36.946308, 42.112488>,  <29.213942, 37.187798, 41.928364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.953592, 36.946308, 42.112488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573581, 0.006165, 0.819126,
		-0.497362, 0.797171, 0.342271,
		-0.650874, -0.603722, 0.460308,
		28.758329, 36.765190, 42.250580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.049534, 37.558136, 42.596489>,  <29.213942, 37.187798, 41.928364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.049534, 37.558136, 42.596489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.007750, 37.160427, 42.605530>,  <28.982679, 36.921803, 42.610954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.007750, 37.160427, 42.605530>,  <29.049534, 37.558136, 42.596489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007750, 37.160427, 42.605530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658028, -0.052060, 0.751192,
		-0.745712, 0.093342, 0.659697,
		-0.104462, -0.994272, 0.022600,
		28.976412, 36.862144, 42.612309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043484, 37.543892, 43.207733>,  <29.049534, 37.558136, 42.596489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.043484, 37.543892, 43.207733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.131704, 37.168930, 43.099930>,  <29.184637, 36.943954, 43.035248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.131704, 37.168930, 43.099930>,  <29.043484, 37.543892, 43.207733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.131704, 37.168930, 43.099930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776169, 0.001338, 0.630524,
		-0.590694, -0.348245, 0.727877,
		0.220551, -0.937403, -0.269506,
		29.197870, 36.887711, 43.019077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089413, 37.092445, 43.733109>,  <29.043484, 37.543892, 43.207733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.089413, 37.092445, 43.733109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.332321, 36.947224, 43.450432>,  <29.478067, 36.860088, 43.280827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.332321, 36.947224, 43.450432>,  <29.089413, 37.092445, 43.733109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.332321, 36.947224, 43.450432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736933, -0.075002, 0.671792,
		-0.296901, -0.928744, 0.222002,
		0.607272, -0.363056, -0.706689,
		29.514503, 36.838306, 43.238426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.330179, 36.472271, 43.896217>,  <29.089413, 37.092445, 43.733109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.330179, 36.472271, 43.896217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.616865, 36.603012, 43.649807>,  <29.788877, 36.681458, 43.501961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.616865, 36.603012, 43.649807>,  <29.330179, 36.472271, 43.896217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616865, 36.603012, 43.649807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697362, -0.332842, 0.634746,
		0.002429, -0.884525, -0.466486,
		0.716714, 0.326851, -0.616026,
		29.831879, 36.701069, 43.465000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792994, 35.960930, 44.062920>,  <29.330179, 36.472271, 43.896217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792994, 35.960930, 44.062920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.945202, 36.285461, 43.885406>,  <30.036528, 36.480183, 43.778900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.945202, 36.285461, 43.885406>,  <29.792994, 35.960930, 44.062920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.945202, 36.285461, 43.885406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778662, -0.022215, 0.627050,
		0.498888, -0.584161, -0.640208,
		0.380520, 0.811334, -0.443781,
		30.059359, 36.528862, 43.752274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540859, 35.942657, 43.741455>,  <29.792994, 35.960930, 44.062920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540859, 35.942657, 43.741455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.416317, 36.274616, 43.926636>,  <30.341591, 36.473793, 44.037743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.416317, 36.274616, 43.926636>,  <30.540859, 35.942657, 43.741455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416317, 36.274616, 43.926636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660464, -0.161290, 0.733330,
		0.683260, 0.534087, -0.497902,
		-0.311355, 0.829901, 0.462949,
		30.322910, 36.523586, 44.065521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115736, 36.506847, 43.991642>,  <30.540859, 35.942657, 43.741455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115736, 36.506847, 43.991642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.785660, 36.525421, 44.216820>,  <30.587614, 36.536568, 44.351925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.785660, 36.525421, 44.216820>,  <31.115736, 36.506847, 43.991642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785660, 36.525421, 44.216820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551218, -0.151480, 0.820495,
		0.123376, 0.987369, 0.099404,
		-0.825189, 0.046436, 0.562944,
		30.538103, 36.539352, 44.385704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760094, 35.990593, 44.044773>,  <31.115736, 36.506847, 43.991642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760094, 35.990593, 44.044773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.656607, 36.343544, 43.887558>,  <31.594515, 36.555313, 43.793228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.656607, 36.343544, 43.887558>,  <31.760094, 35.990593, 44.044773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656607, 36.343544, 43.887558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945909, -0.148969, 0.288210,
		0.195758, 0.446345, 0.873186,
		-0.258719, 0.882374, -0.393040,
		31.578991, 36.608257, 43.769646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332932, 36.355076, 43.808395>,  <31.760094, 35.990593, 44.044773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332932, 36.355076, 43.808395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.215508, 36.638664, 44.064892>,  <32.145054, 36.808815, 44.218788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.215508, 36.638664, 44.064892>,  <32.332932, 36.355076, 43.808395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215508, 36.638664, 44.064892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451279, -0.694122, 0.560840,
		0.842715, -0.124738, 0.523709,
		-0.293560, 0.708967, 0.641239,
		32.127438, 36.851353, 44.257263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579819, 36.057732, 44.455509>,  <32.332932, 36.355076, 43.808395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579819, 36.057732, 44.455509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.272320, 36.310776, 44.493099>,  <32.087818, 36.462601, 44.515652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.272320, 36.310776, 44.493099>,  <32.579819, 36.057732, 44.455509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272320, 36.310776, 44.493099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571439, -0.745406, 0.343260,
		0.287196, 0.210181, 0.934528,
		-0.768749, 0.632609, 0.093972,
		32.041695, 36.500557, 44.521290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457161, 35.926556, 45.175549>,  <32.579819, 36.057732, 44.455509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457161, 35.926556, 45.175549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.131844, 35.995144, 44.953144>,  <31.936651, 36.036297, 44.819702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.131844, 35.995144, 44.953144>,  <32.457161, 35.926556, 45.175549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131844, 35.995144, 44.953144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417911, -0.837037, 0.353157,
		-0.404841, 0.519583, 0.752421,
		-0.813298, 0.171472, -0.556007,
		31.887854, 36.046585, 44.786343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350765, 36.349602, 45.892128>,  <32.457161, 35.926556, 45.175549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350765, 36.349602, 45.892128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.148773, 36.179935, 46.192814>,  <32.027576, 36.078136, 46.373226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.148773, 36.179935, 46.192814>,  <32.350765, 36.349602, 45.892128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148773, 36.179935, 46.192814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767410, -0.619269, 0.166095,
		0.395061, 0.660748, 0.638231,
		-0.504984, -0.424168, 0.751714,
		31.997278, 36.052685, 46.418327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797253, 35.933266, 46.159294>,  <32.350765, 36.349602, 45.892128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797253, 35.933266, 46.159294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.486641, 35.842110, 46.394264>,  <32.300274, 35.787415, 46.535248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.486641, 35.842110, 46.394264>,  <32.797253, 35.933266, 46.159294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486641, 35.842110, 46.394264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547927, -0.704548, 0.450985,
		0.311093, 0.672069, 0.671971,
		-0.776529, -0.227893, 0.587425,
		32.253681, 35.773743, 46.570492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921070, 36.048584, 46.805859>,  <32.797253, 35.933266, 46.159294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921070, 36.048584, 46.805859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.661995, 35.744968, 46.779446>,  <32.506550, 35.562798, 46.763599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.661995, 35.744968, 46.779446>,  <32.921070, 36.048584, 46.805859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661995, 35.744968, 46.779446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674313, -0.611409, 0.414103,
		-0.354693, 0.223682, 0.907832,
		-0.647684, -0.759042, -0.066031,
		32.467690, 35.517254, 46.759636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884861, 35.730022, 47.468170>,  <32.921070, 36.048584, 46.805859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884861, 35.730022, 47.468170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.806152, 35.491634, 47.156757>,  <32.758926, 35.348602, 46.969910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.806152, 35.491634, 47.156757>,  <32.884861, 35.730022, 47.468170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806152, 35.491634, 47.156757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738146, -0.612672, 0.282442,
		-0.645308, -0.519091, 0.560466,
		-0.196768, -0.595968, -0.778527,
		32.747124, 35.312843, 46.923199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139950, 35.299526, 47.888565>,  <32.884861, 35.730022, 47.468170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139950, 35.299526, 47.888565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.110664, 35.149849, 47.518784>,  <33.093094, 35.060043, 47.296913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.110664, 35.149849, 47.518784>,  <33.139950, 35.299526, 47.888565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110664, 35.149849, 47.518784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546479, -0.790451, 0.276673,
		-0.834267, -0.484941, 0.262357,
		-0.073210, -0.374192, -0.924457,
		33.088703, 35.037590, 47.241447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176682, 34.844051, 48.542046>,  <33.139950, 35.299526, 47.888565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176682, 34.844051, 48.542046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.150219, 34.919525, 48.933968>,  <33.134342, 34.964809, 49.169121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.150219, 34.919525, 48.933968>,  <33.176682, 34.844051, 48.542046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150219, 34.919525, 48.933968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970707, 0.239482, 0.019427,
		-0.230980, 0.952389, -0.199004,
		-0.066160, 0.188687, 0.979806,
		33.130371, 34.976131, 49.227909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367062, 35.506298, 48.650646>,  <33.176682, 34.844051, 48.542046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367062, 35.506298, 48.650646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.425976, 35.334961, 49.007259>,  <33.461327, 35.232159, 49.221226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.425976, 35.334961, 49.007259>,  <33.367062, 35.506298, 48.650646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425976, 35.334961, 49.007259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984924, -0.019157, -0.171924,
		0.090722, 0.903412, 0.419066,
		0.147290, -0.428345, 0.891530,
		33.470161, 35.206459, 49.274719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910252, 35.840988, 48.896736>,  <33.367062, 35.506298, 48.650646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910252, 35.840988, 48.896736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.913025, 35.489765, 49.088139>,  <33.914688, 35.279030, 49.202980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.913025, 35.489765, 49.088139>,  <33.910252, 35.840988, 48.896736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913025, 35.489765, 49.088139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999372, -0.010551, -0.033840,
		0.034762, 0.478437, 0.877433,
		0.006933, -0.878058, 0.478503,
		33.915104, 35.226349, 49.231689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445526, 35.818462, 49.457195>,  <33.910252, 35.840988, 48.896736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445526, 35.818462, 49.457195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.380791, 35.446510, 49.325050>,  <34.341949, 35.223339, 49.245762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.380791, 35.446510, 49.325050>,  <34.445526, 35.818462, 49.457195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380791, 35.446510, 49.325050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974717, -0.098363, -0.200625,
		0.154061, -0.354478, 0.922285,
		-0.161836, -0.929876, -0.330362,
		34.332241, 35.167549, 49.225941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128944, 35.486519, 49.587589>,  <34.445526, 35.818462, 49.457195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128944, 35.486519, 49.587589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.949963, 35.173630, 49.414196>,  <34.842571, 34.985897, 49.310158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.949963, 35.173630, 49.414196>,  <35.128944, 35.486519, 49.587589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949963, 35.173630, 49.414196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892531, -0.360075, -0.271542,
		0.056318, -0.508403, 0.859276,
		-0.447456, -0.782223, -0.433486,
		34.815727, 34.938961, 49.284149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411671, 34.931454, 49.839802>,  <35.128944, 35.486519, 49.587589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411671, 34.931454, 49.839802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.252655, 34.769268, 49.510544>,  <35.157246, 34.671959, 49.312988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.252655, 34.769268, 49.510544>,  <35.411671, 34.931454, 49.839802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252655, 34.769268, 49.510544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871309, -0.448097, -0.200074,
		-0.287726, -0.796749, 0.531418,
		-0.397536, -0.405462, -0.823144,
		35.133396, 34.647629, 49.263599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777344, 34.284294, 49.884686>,  <35.411671, 34.931454, 49.839802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777344, 34.284294, 49.884686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.640045, 34.318039, 49.510506>,  <35.557667, 34.338284, 49.285999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.640045, 34.318039, 49.510506>,  <35.777344, 34.284294, 49.884686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640045, 34.318039, 49.510506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819089, -0.460517, -0.342079,
		-0.459645, -0.883634, 0.088979,
		-0.343249, 0.084353, -0.935449,
		35.537071, 34.343346, 49.229870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571606, 33.516930, 49.515453>,  <35.777344, 34.284294, 49.884686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571606, 33.516930, 49.515453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.629467, 33.798447, 49.237244>,  <35.664185, 33.967358, 49.070316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.629467, 33.798447, 49.237244>,  <35.571606, 33.516930, 49.515453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629467, 33.798447, 49.237244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743936, -0.540819, -0.392522,
		-0.652406, -0.460646, -0.601807,
		0.144655, 0.703790, -0.695525,
		35.672863, 34.009583, 49.028587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706005, 33.133076, 48.898155>,  <35.571606, 33.516930, 49.515453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706005, 33.133076, 48.898155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.854679, 33.491154, 48.799793>,  <35.943886, 33.706001, 48.740776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.854679, 33.491154, 48.799793>,  <35.706005, 33.133076, 48.898155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854679, 33.491154, 48.799793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750542, -0.445657, -0.487931,
		-0.546384, -0.003204, -0.837529,
		0.371687, 0.895198, -0.245905,
		35.966187, 33.759712, 48.726021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936489, 33.020641, 48.302094>,  <35.706005, 33.133076, 48.898155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936489, 33.020641, 48.302094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.118393, 33.368118, 48.380638>,  <36.227535, 33.576607, 48.427765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.118393, 33.368118, 48.380638>,  <35.936489, 33.020641, 48.302094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118393, 33.368118, 48.380638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753223, -0.257496, -0.605270,
		-0.475234, 0.423157, -0.771421,
		0.454762, 0.868697, 0.196360,
		36.254822, 33.628727, 48.439545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179897, 33.211468, 47.748764>,  <35.936489, 33.020641, 48.302094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179897, 33.211468, 47.748764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.418812, 33.372196, 48.026409>,  <36.562160, 33.468632, 48.192997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.418812, 33.372196, 48.026409>,  <36.179897, 33.211468, 47.748764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418812, 33.372196, 48.026409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801302, -0.335835, -0.495106,
		0.034166, 0.851914, -0.522566,
		0.597284, 0.401817, 0.694114,
		36.597996, 33.492741, 48.234642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627945, 33.620296, 47.316242>,  <36.179897, 33.211468, 47.748764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627945, 33.620296, 47.316242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.792183, 33.564636, 47.676697>,  <36.890724, 33.531239, 47.892971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.792183, 33.564636, 47.676697>,  <36.627945, 33.620296, 47.316242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792183, 33.564636, 47.676697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880186, -0.197565, -0.431556,
		0.238084, 0.970363, 0.041360,
		0.410595, -0.139151, 0.901137,
		36.915363, 33.522892, 47.947037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156857, 34.114075, 47.383339>,  <36.627945, 33.620296, 47.316242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156857, 34.114075, 47.383339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.243221, 33.811874, 47.630756>,  <37.295040, 33.630554, 47.779205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.243221, 33.811874, 47.630756>,  <37.156857, 34.114075, 47.383339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243221, 33.811874, 47.630756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922109, -0.050545, -0.383613,
		0.321086, 0.653190, 0.685745,
		0.215911, -0.755505, 0.618542,
		37.307995, 33.585224, 47.816319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766811, 34.281075, 47.784336>,  <37.156857, 34.114075, 47.383339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766811, 34.281075, 47.784336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.736797, 33.882393, 47.771988>,  <37.718788, 33.643185, 47.764580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.736797, 33.882393, 47.771988>,  <37.766811, 34.281075, 47.784336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736797, 33.882393, 47.771988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963905, -0.064567, -0.258298,
		0.255453, -0.049139, 0.965572,
		-0.075037, -0.996703, -0.030871,
		37.714287, 33.583382, 47.762726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503445, 34.148476, 47.867741>,  <37.766811, 34.281075, 47.784336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503445, 34.148476, 47.867741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.350029, 33.818985, 47.700706>,  <38.257980, 33.621292, 47.600487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.350029, 33.818985, 47.700706>,  <38.503445, 34.148476, 47.867741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350029, 33.818985, 47.700706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859316, -0.152650, -0.488134,
		0.338344, -0.546054, 0.766387,
		-0.383537, -0.823725, -0.417585,
		38.234966, 33.571869, 47.575432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893627, 33.405918, 48.118305>,  <38.503445, 34.148476, 47.867741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893627, 33.405918, 48.118305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.774422, 33.509987, 47.750938>,  <38.702900, 33.572430, 47.530518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.774422, 33.509987, 47.750938>,  <38.893627, 33.405918, 48.118305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774422, 33.509987, 47.750938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931400, -0.131404, -0.339451,
		-0.209001, -0.956578, -0.203167,
		-0.298014, 0.260175, -0.918420,
		38.685017, 33.588039, 47.475410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391571, 32.856186, 48.092808>,  <38.893627, 33.405918, 48.118305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391571, 32.856186, 48.092808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.639194, 32.820408, 48.404903>,  <39.787769, 32.798943, 48.592159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.639194, 32.820408, 48.404903>,  <39.391571, 32.856186, 48.092808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639194, 32.820408, 48.404903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665727, -0.586812, 0.460933,
		0.416625, -0.804768, -0.422814,
		0.619057, -0.089442, 0.780236,
		39.824913, 32.793575, 48.638973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321804, 32.173744, 48.346725>,  <39.391571, 32.856186, 48.092808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321804, 32.173744, 48.346725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.453949, 32.407810, 48.642952>,  <39.533237, 32.548248, 48.820690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.453949, 32.407810, 48.642952>,  <39.321804, 32.173744, 48.346725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453949, 32.407810, 48.642952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595809, -0.479246, 0.644466,
		0.732032, -0.654147, 0.190319,
		0.330366, 0.585163, 0.740570,
		39.553059, 32.583359, 48.865124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558304, 31.790285, 48.880718>,  <39.321804, 32.173744, 48.346725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558304, 31.790285, 48.880718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.423046, 32.128185, 49.046638>,  <39.341892, 32.330925, 49.146191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.423046, 32.128185, 49.046638>,  <39.558304, 31.790285, 48.880718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423046, 32.128185, 49.046638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526653, -0.535142, 0.660500,
		0.779931, 0.004893, 0.625846,
		-0.338148, 0.844748, 0.414797,
		39.321602, 32.381611, 49.171078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685165, 31.750628, 49.641487>,  <39.558304, 31.790285, 48.880718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685165, 31.750628, 49.641487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.374725, 31.959927, 49.500698>,  <39.188461, 32.085506, 49.416225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.374725, 31.959927, 49.500698>,  <39.685165, 31.750628, 49.641487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374725, 31.959927, 49.500698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610477, -0.483486, 0.627343,
		0.158082, 0.701750, 0.694663,
		-0.776098, 0.523247, -0.351972,
		39.141895, 32.116901, 49.395107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303768, 32.232830, 50.141445>,  <39.685165, 31.750628, 49.641487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303768, 32.232830, 50.141445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.054863, 32.078949, 49.868744>,  <38.905521, 31.986620, 49.705124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.054863, 32.078949, 49.868744>,  <39.303768, 32.232830, 50.141445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054863, 32.078949, 49.868744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439544, -0.548954, 0.710950,
		-0.647757, 0.742061, 0.172501,
		-0.622263, -0.384701, -0.681757,
		38.868183, 31.963539, 49.664215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485737, 32.217407, 50.269371>,  <39.303768, 32.232830, 50.141445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485737, 32.217407, 50.269371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.500183, 32.604927, 50.171295>,  <38.508850, 32.837440, 50.112450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.500183, 32.604927, 50.171295>,  <38.485737, 32.217407, 50.269371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500183, 32.604927, 50.171295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661400, 0.207094, 0.720876,
		0.749164, 0.136132, 0.648245,
		0.036113, 0.968803, -0.245185,
		38.511017, 32.895569, 50.097740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851494, 32.638931, 50.775707>,  <38.485737, 32.217407, 50.269371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851494, 32.638931, 50.775707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.561974, 32.823364, 50.570370>,  <38.388260, 32.934025, 50.447166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.561974, 32.823364, 50.570370>,  <38.851494, 32.638931, 50.775707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561974, 32.823364, 50.570370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443413, 0.259205, 0.858020,
		0.528676, 0.848657, 0.016836,
		-0.723800, 0.461080, -0.513341,
		38.344833, 32.961689, 50.416367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605854, 33.184353, 51.300575>,  <38.851494, 32.638931, 50.775707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605854, 33.184353, 51.300575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.306908, 33.161915, 51.035759>,  <38.127541, 33.148453, 50.876869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.306908, 33.161915, 51.035759>,  <38.605854, 33.184353, 51.300575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306908, 33.161915, 51.035759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663154, 0.124204, 0.738106,
		0.040826, 0.990670, -0.130023,
		-0.747369, -0.056092, -0.662038,
		38.082699, 33.145088, 50.837147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140690, 33.742603, 51.309303>,  <38.605854, 33.184353, 51.300575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140690, 33.742603, 51.309303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.936192, 33.444500, 51.138084>,  <37.813492, 33.265636, 51.035355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.936192, 33.444500, 51.138084>,  <38.140690, 33.742603, 51.309303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936192, 33.444500, 51.138084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712285, 0.088720, 0.696260,
		-0.480917, 0.660848, -0.576193,
		-0.511242, -0.745257, -0.428046,
		37.782818, 33.220924, 51.009670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453949, 33.992069, 51.171680>,  <38.140690, 33.742603, 51.309303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453949, 33.992069, 51.171680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.424839, 33.593594, 51.190914>,  <37.407375, 33.354507, 51.202454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.424839, 33.593594, 51.190914>,  <37.453949, 33.992069, 51.171680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424839, 33.593594, 51.190914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671456, 0.084588, 0.736201,
		-0.737463, 0.021285, -0.675052,
		-0.072771, -0.996189, 0.048088,
		37.403008, 33.294739, 51.205341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711807, 33.862251, 51.313679>,  <37.453949, 33.992069, 51.171680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711807, 33.862251, 51.313679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.889347, 33.516701, 51.408936>,  <36.995872, 33.309368, 51.466091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.889347, 33.516701, 51.408936>,  <36.711807, 33.862251, 51.313679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889347, 33.516701, 51.408936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646327, -0.124547, 0.752828,
		-0.620692, -0.488060, -0.613628,
		0.443851, -0.863878, 0.238141,
		37.022503, 33.257538, 51.480377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187832, 33.392807, 51.502884>,  <36.711807, 33.862251, 51.313679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187832, 33.392807, 51.502884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.502087, 33.214699, 51.674702>,  <36.690639, 33.107834, 51.777794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.502087, 33.214699, 51.674702>,  <36.187832, 33.392807, 51.502884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502087, 33.214699, 51.674702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591825, -0.338513, 0.731541,
		-0.180322, -0.828944, -0.529468,
		0.785638, -0.445265, 0.429549,
		36.737778, 33.081120, 51.803566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923336, 32.831661, 51.821552>,  <36.187832, 33.392807, 51.502884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923336, 32.831661, 51.821552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.270355, 32.884018, 52.013477>,  <36.478569, 32.915432, 52.128632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.270355, 32.884018, 52.013477>,  <35.923336, 32.831661, 51.821552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270355, 32.884018, 52.013477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443637, -0.232430, 0.865542,
		0.224819, -0.963765, -0.143574,
		0.867550, 0.130895, 0.479817,
		36.530621, 32.923286, 52.157421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826874, 32.391960, 52.488846>,  <35.923336, 32.831661, 51.821552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826874, 32.391960, 52.488846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.129314, 32.644657, 52.557209>,  <36.310780, 32.796276, 52.598228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.129314, 32.644657, 52.557209>,  <35.826874, 32.391960, 52.488846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129314, 32.644657, 52.557209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286956, 0.085317, 0.954137,
		0.588191, -0.770466, 0.245791,
		0.756101, 0.631746, 0.170907,
		36.356144, 32.834183, 52.608482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159092, 32.172520, 53.123360>,  <35.826874, 32.391960, 52.488846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159092, 32.172520, 53.123360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.247627, 32.559395, 53.073456>,  <36.300747, 32.791519, 53.043514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.247627, 32.559395, 53.073456>,  <36.159092, 32.172520, 53.123360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247627, 32.559395, 53.073456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192126, 0.168673, 0.966766,
		0.956084, -0.190013, 0.223155,
		0.221338, 0.967184, -0.124759,
		36.314030, 32.849548, 53.036030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685226, 32.325920, 53.774151>,  <36.159092, 32.172520, 53.123360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685226, 32.325920, 53.774151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.481628, 32.631630, 53.615753>,  <36.359470, 32.815056, 53.520714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.481628, 32.631630, 53.615753>,  <36.685226, 32.325920, 53.774151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481628, 32.631630, 53.615753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216995, 0.331258, 0.918249,
		0.832968, 0.553314, -0.002765,
		-0.508996, 0.764272, -0.395994,
		36.328930, 32.860912, 53.496956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787815, 32.838886, 54.243530>,  <36.685226, 32.325920, 53.774151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787815, 32.838886, 54.243530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.511204, 33.029552, 54.026432>,  <36.345238, 33.143951, 53.896172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.511204, 33.029552, 54.026432>,  <36.787815, 32.838886, 54.243530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511204, 33.029552, 54.026432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134893, 0.652932, 0.745307,
		0.709645, 0.588613, -0.387220,
		-0.691526, 0.476670, -0.542750,
		36.303745, 33.172554, 53.863605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865173, 33.536842, 54.354069>,  <36.787815, 32.838886, 54.243530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865173, 33.536842, 54.354069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.492889, 33.541039, 54.207821>,  <36.269520, 33.543556, 54.120071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.492889, 33.541039, 54.207821>,  <36.865173, 33.536842, 54.354069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492889, 33.541039, 54.207821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280293, 0.621749, 0.731344,
		0.234991, 0.783147, -0.575726,
		-0.930707, 0.010487, -0.365616,
		36.213676, 33.544186, 54.098137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652100, 34.222538, 54.225620>,  <36.865173, 33.536842, 54.354069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652100, 34.222538, 54.225620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.313343, 34.023705, 54.301174>,  <36.110088, 33.904404, 54.346504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.313343, 34.023705, 54.301174>,  <36.652100, 34.222538, 54.225620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313343, 34.023705, 54.301174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286841, 0.726134, 0.624862,
		-0.447763, 0.475013, -0.757543,
		-0.846895, -0.497084, 0.188882,
		36.059273, 33.874580, 54.357838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245739, 34.906021, 54.240578>,  <36.652100, 34.222538, 54.225620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245739, 34.906021, 54.240578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.033123, 34.621197, 54.424072>,  <35.905552, 34.450302, 54.534168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.033123, 34.621197, 54.424072>,  <36.245739, 34.906021, 54.240578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033123, 34.621197, 54.424072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572841, 0.701138, 0.424569,
		-0.623955, -0.037108, -0.780579,
		-0.531538, -0.712060, 0.458735,
		35.873661, 34.407578, 54.561691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533577, 35.127304, 54.228729>,  <36.245739, 34.906021, 54.240578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533577, 35.127304, 54.228729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.482578, 34.849216, 54.511688>,  <35.451981, 34.682362, 54.681465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.482578, 34.849216, 54.511688>,  <35.533577, 35.127304, 54.228729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482578, 34.849216, 54.511688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481725, 0.666851, 0.568552,
		-0.866998, -0.268283, -0.419926,
		-0.127496, -0.695223, 0.707397,
		35.444328, 34.640648, 54.723907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848843, 35.152557, 54.447502>,  <35.533577, 35.127304, 54.228729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848843, 35.152557, 54.447502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.012592, 34.937618, 54.742435>,  <35.110844, 34.808655, 54.919395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.012592, 34.937618, 54.742435>,  <34.848843, 35.152557, 54.447502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012592, 34.937618, 54.742435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509951, 0.535372, 0.673295,
		-0.756546, -0.651635, -0.054856,
		0.409374, -0.537353, 0.737336,
		35.135406, 34.776413, 54.963634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263710, 34.852234, 54.892643>,  <34.848843, 35.152557, 54.447502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263710, 34.852234, 54.892643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.586601, 34.871944, 55.127914>,  <34.780334, 34.883770, 55.269077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.586601, 34.871944, 55.127914>,  <34.263710, 34.852234, 54.892643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586601, 34.871944, 55.127914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517962, 0.536963, 0.665872,
		-0.283016, -0.842165, 0.458977,
		0.807228, 0.049280, 0.588179,
		34.828770, 34.886730, 55.304367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090950, 34.762688, 55.661209>,  <34.263710, 34.852234, 54.892643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090950, 34.762688, 55.661209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.447350, 34.943336, 55.679798>,  <34.661190, 35.051727, 55.690952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.447350, 34.943336, 55.679798>,  <34.090950, 34.762688, 55.661209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447350, 34.943336, 55.679798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356734, 0.633106, 0.686962,
		0.280829, -0.628659, 0.725206,
		0.890997, 0.451624, 0.046469,
		34.714649, 35.078823, 55.693737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318035, 34.699490, 56.345947>,  <34.090950, 34.762688, 55.661209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318035, 34.699490, 56.345947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.504318, 35.013916, 56.183357>,  <34.616089, 35.202572, 56.085804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.504318, 35.013916, 56.183357>,  <34.318035, 34.699490, 56.345947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504318, 35.013916, 56.183357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253097, 0.558449, 0.789985,
		0.847974, -0.265023, 0.459024,
		0.465706, 0.786064, -0.406473,
		34.644032, 35.249737, 56.061417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766594, 35.079216, 56.955070>,  <34.318035, 34.699490, 56.345947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766594, 35.079216, 56.955070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.768810, 35.349419, 56.660137>,  <34.770142, 35.511539, 56.483177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.768810, 35.349419, 56.660137>,  <34.766594, 35.079216, 56.955070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768810, 35.349419, 56.660137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223650, 0.719507, 0.657487,
		0.974654, 0.161259, 0.155066,
		0.005545, 0.675503, -0.737336,
		34.770473, 35.552071, 56.438938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195892, 35.623074, 57.100929>,  <34.766594, 35.079216, 56.955070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195892, 35.623074, 57.100929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.933453, 35.776604, 56.841019>,  <34.775990, 35.868721, 56.685070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.933453, 35.776604, 56.841019>,  <35.195892, 35.623074, 57.100929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933453, 35.776604, 56.841019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437692, 0.507872, 0.741951,
		0.614787, 0.771195, -0.165214,
		-0.656096, 0.383829, -0.649779,
		34.736622, 35.891754, 56.646084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108894, 36.301266, 57.326687>,  <35.195892, 35.623074, 57.100929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108894, 36.301266, 57.326687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.786137, 36.233475, 57.100346>,  <34.592480, 36.192799, 56.964539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.786137, 36.233475, 57.100346>,  <35.108894, 36.301266, 57.326687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786137, 36.233475, 57.100346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580773, 0.402431, 0.707638,
		0.107791, 0.899626, -0.423147,
		-0.806898, -0.169476, -0.565857,
		34.544067, 36.182632, 56.930588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771339, 36.880531, 57.356503>,  <35.108894, 36.301266, 57.326687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771339, 36.880531, 57.356503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.477028, 36.638481, 57.234879>,  <34.300442, 36.493252, 57.161903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.477028, 36.638481, 57.234879>,  <34.771339, 36.880531, 57.356503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477028, 36.638481, 57.234879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640135, 0.474900, 0.603902,
		-0.221039, 0.638977, -0.736784,
		-0.735778, -0.605127, -0.304060,
		34.256294, 36.456944, 57.143661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161076, 37.327278, 57.106445>,  <34.771339, 36.880531, 57.356503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161076, 37.327278, 57.106445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.003326, 36.967121, 57.179951>,  <33.908676, 36.751026, 57.224056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.003326, 36.967121, 57.179951>,  <34.161076, 37.327278, 57.106445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003326, 36.967121, 57.179951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723630, 0.427532, 0.541826,
		-0.566420, 0.080701, -0.820156,
		-0.394369, -0.900390, 0.183765,
		33.885017, 36.697002, 57.235081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369041, 37.366325, 56.908943>,  <34.161076, 37.327278, 57.106445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369041, 37.366325, 56.908943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.446991, 37.070599, 57.166763>,  <33.493759, 36.893162, 57.321453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.446991, 37.070599, 57.166763>,  <33.369041, 37.366325, 56.908943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446991, 37.070599, 57.166763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543752, 0.465487, 0.698323,
		-0.816308, -0.486558, -0.311293,
		0.194872, -0.739313, 0.644547,
		33.505451, 36.848804, 57.360126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664642, 37.093475, 57.066315>,  <33.369041, 37.366325, 56.908943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664642, 37.093475, 57.066315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.900284, 36.966228, 57.363438>,  <33.041668, 36.889881, 57.541710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.900284, 36.966228, 57.363438>,  <32.664642, 37.093475, 57.066315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900284, 36.966228, 57.363438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601839, 0.440670, 0.666032,
		-0.539208, -0.839411, 0.068145,
		0.589104, -0.318118, 0.742804,
		33.077015, 36.870792, 57.586277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212925, 36.846764, 57.485100>,  <32.664642, 37.093475, 57.066315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212925, 36.846764, 57.485100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.532684, 36.890831, 57.721344>,  <32.724541, 36.917271, 57.863091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.532684, 36.890831, 57.721344>,  <32.212925, 36.846764, 57.485100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532684, 36.890831, 57.721344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587964, 0.345579, 0.731351,
		-0.123533, -0.931900, 0.341030,
		0.799399, 0.110167, 0.590614,
		32.772503, 36.923882, 57.898529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047241, 36.427364, 58.049694>,  <32.212925, 36.846764, 57.485100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047241, 36.427364, 58.049694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.302067, 36.706181, 58.181320>,  <32.454964, 36.873470, 58.260296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.302067, 36.706181, 58.181320>,  <32.047241, 36.427364, 58.049694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302067, 36.706181, 58.181320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589372, 0.165358, 0.790757,
		0.496777, -0.697705, 0.516160,
		0.637066, 0.697040, 0.329061,
		32.493187, 36.915291, 58.280037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940416, 36.310383, 58.763535>,  <32.047241, 36.427364, 58.049694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940416, 36.310383, 58.763535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.105865, 36.671715, 58.718090>,  <32.205135, 36.888515, 58.690823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.105865, 36.671715, 58.718090>,  <31.940416, 36.310383, 58.763535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105865, 36.671715, 58.718090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602543, 0.365146, 0.709655,
		0.682538, -0.225075, 0.695330,
		0.413622, 0.903332, -0.113608,
		32.229954, 36.942715, 58.684006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046558, 36.476486, 59.371983>,  <31.940416, 36.310383, 58.763535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046558, 36.476486, 59.371983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.073940, 36.830235, 59.187286>,  <32.090370, 37.042484, 59.076469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.073940, 36.830235, 59.187286>,  <32.046558, 36.476486, 59.371983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073940, 36.830235, 59.187286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457543, 0.439113, 0.773198,
		0.886549, 0.158338, 0.434695,
		0.068453, 0.884369, -0.461741,
		32.094475, 37.095547, 59.048763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236843, 36.993206, 59.928162>,  <32.046558, 36.476486, 59.371983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236843, 36.993206, 59.928162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.051170, 37.164471, 59.618008>,  <31.939768, 37.267227, 59.431915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.051170, 37.164471, 59.618008>,  <32.236843, 36.993206, 59.928162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051170, 37.164471, 59.618008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494180, 0.601300, 0.627873,
		0.735066, 0.674624, -0.067524,
		-0.464180, 0.428160, -0.775381,
		31.911917, 37.292919, 59.385395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039001, 37.643967, 60.069164>,  <32.236843, 36.993206, 59.928162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039001, 37.643967, 60.069164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.850952, 37.687931, 59.718872>,  <31.738123, 37.714310, 59.508698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.850952, 37.687931, 59.718872>,  <32.039001, 37.643967, 60.069164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850952, 37.687931, 59.718872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548073, 0.741377, 0.387268,
		0.691812, 0.662027, -0.288299,
		-0.470120, 0.109907, -0.875732,
		31.709915, 37.720901, 59.456154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990957, 38.408661, 59.720013>,  <32.039001, 37.643967, 60.069164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990957, 38.408661, 59.720013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.686045, 38.174126, 59.610371>,  <31.503098, 38.033405, 59.544586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.686045, 38.174126, 59.610371>,  <31.990957, 38.408661, 59.720013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686045, 38.174126, 59.610371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644589, 0.726036, 0.239537,
		0.058561, 0.359280, -0.931391,
		-0.762284, -0.586336, -0.274105,
		31.457359, 37.998226, 59.528137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705523, 38.733204, 59.160236>,  <31.990957, 38.408661, 59.720013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705523, 38.733204, 59.160236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.447386, 38.513309, 59.372395>,  <31.292503, 38.381371, 59.499691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.447386, 38.513309, 59.372395>,  <31.705523, 38.733204, 59.160236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447386, 38.513309, 59.372395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483907, 0.831450, 0.272994,
		-0.591076, -0.080489, -0.802590,
		-0.645341, -0.549739, 0.530399,
		31.253784, 38.348389, 59.531513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113319, 38.962658, 58.950836>,  <31.705523, 38.733204, 59.160236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113319, 38.962658, 58.950836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.013704, 38.778992, 59.291927>,  <30.953936, 38.668793, 59.496582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.013704, 38.778992, 59.291927>,  <31.113319, 38.962658, 58.950836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013704, 38.778992, 59.291927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556320, 0.788539, 0.262134,
		-0.792773, -0.409107, -0.451822,
		-0.249038, -0.459170, 0.852727,
		30.938993, 38.641239, 59.547745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252108, 38.938103, 59.017418>,  <31.113319, 38.962658, 58.950836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252108, 38.938103, 59.017418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.419176, 38.934185, 59.380836>,  <30.519417, 38.931835, 59.598888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.419176, 38.934185, 59.380836>,  <30.252108, 38.938103, 59.017418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.419176, 38.934185, 59.380836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585915, 0.761356, 0.277564,
		-0.694445, -0.648261, 0.312257,
		0.417672, -0.009797, 0.908545,
		30.544477, 38.931248, 59.653400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721331, 39.016350, 59.511112>,  <30.252108, 38.938103, 59.017418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721331, 39.016350, 59.511112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.058147, 39.144104, 59.684990>,  <30.260239, 39.220757, 59.789314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.058147, 39.144104, 59.684990>,  <29.721331, 39.016350, 59.511112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.058147, 39.144104, 59.684990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450745, 0.859280, 0.241798,
		-0.296296, -0.399540, 0.867512,
		0.842044, 0.319383, 0.434692,
		30.310760, 39.239918, 59.815399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545856, 39.188774, 60.071903>,  <29.721331, 39.016350, 59.511112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545856, 39.188774, 60.071903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.893280, 39.386982, 60.075291>,  <30.101734, 39.505905, 60.077324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.893280, 39.386982, 60.075291>,  <29.545856, 39.188774, 60.071903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893280, 39.386982, 60.075291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450224, 0.781789, 0.431398,
		0.207143, -0.378507, 0.902122,
		0.868556, 0.495517, 0.008471,
		30.153847, 39.535637, 60.077831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629784, 39.537315, 60.765469>,  <29.545856, 39.188774, 60.071903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629784, 39.537315, 60.765469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.838066, 39.719345, 60.476532>,  <29.963036, 39.828564, 60.303169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.838066, 39.719345, 60.476532>,  <29.629784, 39.537315, 60.765469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838066, 39.719345, 60.476532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362006, 0.883955, 0.295933,
		0.773185, 0.107395, 0.625021,
		0.520708, 0.455072, -0.722338,
		29.994278, 39.855865, 60.259830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016991, 40.097095, 61.102947>,  <29.629784, 39.537315, 60.765469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016991, 40.097095, 61.102947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.950207, 40.181267, 60.717648>,  <29.910137, 40.231770, 60.486469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.950207, 40.181267, 60.717648>,  <30.016991, 40.097095, 61.102947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.950207, 40.181267, 60.717648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449330, 0.853372, 0.264308,
		0.877626, 0.476944, -0.047924,
		-0.166958, 0.210430, -0.963247,
		29.900120, 40.244396, 60.428673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827858, 40.823792, 61.354832>,  <30.016991, 40.097095, 61.102947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827858, 40.823792, 61.354832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.103479, 40.966290, 61.607277>,  <30.268852, 41.051788, 61.758743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.103479, 40.966290, 61.607277>,  <29.827858, 40.823792, 61.354832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103479, 40.966290, 61.607277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722710, -0.402463, -0.561883,
		0.053832, 0.843276, -0.534778,
		0.689051, 0.356242, 0.631110,
		30.310194, 41.073162, 61.796612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452488, 40.678532, 60.930981>,  <29.827858, 40.823792, 61.354832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.452488, 40.678532, 60.930981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.558666, 40.775597, 61.304214>,  <30.622374, 40.833836, 61.528156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.558666, 40.775597, 61.304214>,  <30.452488, 40.678532, 60.930981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558666, 40.775597, 61.304214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876999, -0.462818, -0.129123,
		0.400516, 0.852592, -0.335671,
		0.265444, 0.242667, 0.933088,
		30.638300, 40.848396, 61.584141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223330, 40.996632, 60.995235>,  <30.452488, 40.678532, 60.930981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223330, 40.996632, 60.995235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.108219, 40.799488, 61.323692>,  <31.039152, 40.681202, 61.520767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.108219, 40.799488, 61.323692>,  <31.223330, 40.996632, 60.995235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108219, 40.799488, 61.323692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818063, -0.572315, -0.056815,
		0.497953, 0.655395, 0.567891,
		-0.287776, -0.492862, 0.821141,
		31.021887, 40.651630, 61.570034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053947, 41.698280, 60.880447>,  <31.223330, 40.996632, 60.995235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053947, 41.698280, 60.880447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.775177, 41.975906, 60.952644>,  <30.607916, 42.142479, 60.995960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.775177, 41.975906, 60.952644>,  <31.053947, 41.698280, 60.880447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775177, 41.975906, 60.952644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088146, 0.166866, -0.982032,
		-0.711707, -0.700312, -0.055115,
		-0.696925, 0.694061, 0.180489,
		30.566099, 42.184124, 61.006790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630678, 41.516705, 61.450649>,  <31.053947, 41.698280, 60.880447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630678, 41.516705, 61.450649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.826134, 41.736652, 61.721611>,  <30.943407, 41.868622, 61.884186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.826134, 41.736652, 61.721611>,  <30.630678, 41.516705, 61.450649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826134, 41.736652, 61.721611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862166, -0.423385, -0.278236,
		0.133808, 0.719989, -0.680963,
		0.488637, 0.549873, 0.677402,
		30.972725, 41.901615, 61.924831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940378, 41.725334, 61.391975>,  <30.630678, 41.516705, 61.450649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.940378, 41.725334, 61.391975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.746464, 42.075146, 61.397472>,  <29.630116, 42.285030, 61.400768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.746464, 42.075146, 61.397472>,  <29.940378, 41.725334, 61.391975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.746464, 42.075146, 61.397472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194244, 0.122966, -0.973216,
		-0.852791, -0.469132, -0.229484,
		-0.484785, 0.874526, 0.013739,
		29.601028, 42.337502, 61.401592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581202, 41.568890, 60.875320>,  <29.940378, 41.725334, 61.391975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581202, 41.568890, 60.875320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.598524, 41.963337, 60.939442>,  <29.608917, 42.200005, 60.977913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.598524, 41.963337, 60.939442>,  <29.581202, 41.568890, 60.875320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598524, 41.963337, 60.939442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130018, 0.153522, -0.979554,
		-0.990566, 0.063261, -0.121565,
		0.043304, 0.986118, 0.160299,
		29.611515, 42.259171, 60.987530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.129807, 41.970890, 60.456142>,  <29.581202, 41.568890, 60.875320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.129807, 41.970890, 60.456142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.484421, 42.138405, 60.534801>,  <29.697189, 42.238914, 60.581997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.484421, 42.138405, 60.534801>,  <29.129807, 41.970890, 60.456142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484421, 42.138405, 60.534801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189040, 0.060060, -0.980131,
		-0.422275, 0.906097, -0.025921,
		0.886537, 0.418785, 0.196651,
		29.750381, 42.264042, 60.593796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255964, 42.475143, 60.000267>,  <29.129807, 41.970890, 60.456142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255964, 42.475143, 60.000267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.641878, 42.438763, 60.098991>,  <29.873426, 42.416935, 60.158226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.641878, 42.438763, 60.098991>,  <29.255964, 42.475143, 60.000267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.641878, 42.438763, 60.098991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254275, 0.082377, -0.963617,
		0.067310, 0.992443, 0.102603,
		0.964787, -0.090951, 0.246809,
		29.931314, 42.411476, 60.173035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.621231, 43.132019, 59.755306>,  <29.255964, 42.475143, 60.000267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.621231, 43.132019, 59.755306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.846371, 42.802704, 59.784687>,  <29.981455, 42.605114, 59.802315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.846371, 42.802704, 59.784687>,  <29.621231, 43.132019, 59.755306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.846371, 42.802704, 59.784687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263015, 0.094148, -0.960187,
		0.783596, 0.559759, 0.269529,
		0.562850, -0.823289, 0.073451,
		30.015226, 42.555717, 59.806721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263214, 43.299763, 59.469578>,  <29.621231, 43.132019, 59.755306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263214, 43.299763, 59.469578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.222036, 42.901897, 59.466595>,  <30.197330, 42.663177, 59.464806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.222036, 42.901897, 59.466595>,  <30.263214, 43.299763, 59.469578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222036, 42.901897, 59.466595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421008, -0.036781, -0.906311,
		0.901196, -0.096437, 0.422546,
		-0.102944, -0.994659, -0.007454,
		30.191153, 42.603500, 59.464359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938065, 43.037987, 59.262714>,  <30.263214, 43.299763, 59.469578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938065, 43.037987, 59.262714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.665972, 42.755882, 59.182827>,  <30.502716, 42.586620, 59.134895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.665972, 42.755882, 59.182827>,  <30.938065, 43.037987, 59.262714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.665972, 42.755882, 59.182827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409163, -0.139279, -0.901769,
		0.608171, -0.695127, 0.383310,
		-0.680231, -0.705266, -0.199715,
		30.461903, 42.544304, 59.122913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330193, 42.393993, 59.013145>,  <30.938065, 43.037987, 59.262714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330193, 42.393993, 59.013145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.947237, 42.353516, 58.904949>,  <30.717463, 42.329231, 58.840031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.947237, 42.353516, 58.904949>,  <31.330193, 42.393993, 59.013145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947237, 42.353516, 58.904949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287997, -0.264945, -0.920251,
		0.021457, -0.958939, 0.282799,
		-0.957391, -0.101191, -0.270487,
		30.660019, 42.323158, 58.823803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367279, 41.717491, 58.739971>,  <31.330193, 42.393993, 59.013145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367279, 41.717491, 58.739971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.049170, 41.920868, 58.607895>,  <30.858303, 42.042892, 58.528648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.049170, 41.920868, 58.607895>,  <31.367279, 41.717491, 58.739971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049170, 41.920868, 58.607895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118031, -0.404370, -0.906948,
		-0.594651, -0.760244, 0.261573,
		-0.795273, 0.508443, -0.330191,
		30.810587, 42.073402, 58.508839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.936556, 41.186817, 58.351013>,  <31.367279, 41.717491, 58.739971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.936556, 41.186817, 58.351013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.816225, 41.546215, 58.223137>,  <30.744026, 41.761856, 58.146412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.816225, 41.546215, 58.223137>,  <30.936556, 41.186817, 58.351013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816225, 41.546215, 58.223137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020467, -0.329059, -0.944088,
		-0.953459, -0.290550, 0.080600,
		-0.300827, 0.898499, -0.319691,
		30.725977, 41.815765, 58.127228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361954, 41.103661, 57.871819>,  <30.936556, 41.186817, 58.351013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361954, 41.103661, 57.871819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.484116, 41.465919, 57.754158>,  <30.557413, 41.683277, 57.683563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.484116, 41.465919, 57.754158>,  <30.361954, 41.103661, 57.871819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.484116, 41.465919, 57.754158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094654, -0.336250, -0.937004,
		-0.947507, 0.258323, -0.188416,
		0.305404, 0.905652, -0.294148,
		30.575737, 41.737614, 57.665913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924650, 41.325573, 57.238907>,  <30.361954, 41.103661, 57.871819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924650, 41.325573, 57.238907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.263187, 41.538475, 57.230850>,  <30.466311, 41.666218, 57.226017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.263187, 41.538475, 57.230850>,  <29.924650, 41.325573, 57.238907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263187, 41.538475, 57.230850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017829, -0.066101, -0.997654,
		-0.532338, 0.843999, -0.065434,
		0.846344, 0.532256, -0.020140,
		30.517090, 41.698151, 57.224808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860781, 41.935013, 56.802185>,  <29.924650, 41.325573, 57.238907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860781, 41.935013, 56.802185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.252699, 41.857925, 56.823570>,  <30.487850, 41.811672, 56.836403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.252699, 41.857925, 56.823570>,  <29.860781, 41.935013, 56.802185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.252699, 41.857925, 56.823570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055011, 0.002690, -0.998482,
		0.192279, 0.981251, 0.013237,
		0.979797, -0.192715, 0.053462,
		30.546638, 41.800110, 56.839607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.120157, 42.280579, 56.267262>,  <29.860781, 41.935013, 56.802185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.120157, 42.280579, 56.267262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.424212, 42.031525, 56.341579>,  <30.606644, 41.882092, 56.386169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.424212, 42.031525, 56.341579>,  <30.120157, 42.280579, 56.267262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.424212, 42.031525, 56.341579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134237, -0.129286, -0.982479,
		0.635748, 0.771757, -0.014693,
		0.760135, -0.622636, 0.185792,
		30.652252, 41.844734, 56.397316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715528, 42.562538, 55.896992>,  <30.120157, 42.280579, 56.267262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715528, 42.562538, 55.896992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.769617, 42.174274, 55.976521>,  <30.802071, 41.941315, 56.024239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.769617, 42.174274, 55.976521>,  <30.715528, 42.562538, 55.896992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769617, 42.174274, 55.976521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286413, -0.153806, -0.945680,
		0.948516, 0.184821, 0.257212,
		0.135221, -0.970662, 0.198823,
		30.810183, 41.883076, 56.036167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312098, 42.353825, 55.472218>,  <30.715528, 42.562538, 55.896992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312098, 42.353825, 55.472218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.177958, 41.992054, 55.577705>,  <31.097473, 41.774990, 55.640999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.177958, 41.992054, 55.577705>,  <31.312098, 42.353825, 55.472218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177958, 41.992054, 55.577705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454174, -0.400456, -0.795839,
		0.825389, -0.147108, 0.545061,
		-0.335348, -0.904430, 0.263720,
		31.077353, 41.720726, 55.656822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801565, 41.905033, 55.388680>,  <31.312098, 42.353825, 55.472218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801565, 41.905033, 55.388680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.490108, 41.654285, 55.399643>,  <31.303234, 41.503838, 55.406219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.490108, 41.654285, 55.399643>,  <31.801565, 41.905033, 55.388680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490108, 41.654285, 55.399643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319111, -0.433222, -0.842904,
		0.540266, -0.647573, 0.537366,
		-0.778640, -0.626871, 0.027408,
		31.256516, 41.466225, 55.407864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103439, 41.321785, 55.248653>,  <31.801565, 41.905033, 55.388680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103439, 41.321785, 55.248653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.723934, 41.224941, 55.167431>,  <31.496231, 41.166836, 55.118698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.723934, 41.224941, 55.167431>,  <32.103439, 41.321785, 55.248653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723934, 41.224941, 55.167431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313291, -0.636904, -0.704416,
		0.041219, -0.731939, 0.680122,
		-0.948762, -0.242111, -0.203057,
		31.439306, 41.152309, 55.106514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077068, 40.642544, 55.117287>,  <32.103439, 41.321785, 55.248653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077068, 40.642544, 55.117287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.729113, 40.757133, 54.956676>,  <31.520338, 40.825886, 54.860310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.729113, 40.757133, 54.956676>,  <32.077068, 40.642544, 55.117287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729113, 40.757133, 54.956676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207266, -0.526389, -0.824594,
		-0.447581, -0.800530, 0.398526,
		-0.869892, 0.286472, -0.401524,
		31.468145, 40.843075, 54.836220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622307, 40.065804, 54.906803>,  <32.077068, 40.642544, 55.117287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622307, 40.065804, 54.906803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.519627, 40.380085, 54.681671>,  <31.458017, 40.568653, 54.546593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.519627, 40.380085, 54.681671>,  <31.622307, 40.065804, 54.906803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519627, 40.380085, 54.681671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429811, -0.428788, -0.794608,
		-0.865660, -0.445889, -0.227632,
		-0.256701, 0.785699, -0.562833,
		31.442616, 40.615795, 54.512821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347857, 39.747967, 54.302509>,  <31.622307, 40.065804, 54.906803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347857, 39.747967, 54.302509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.453417, 40.121254, 54.204975>,  <31.516754, 40.345226, 54.146454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.453417, 40.121254, 54.204975>,  <31.347857, 39.747967, 54.302509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453417, 40.121254, 54.204975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594589, -0.356448, -0.720700,
		-0.759486, 0.045214, -0.648950,
		0.263903, 0.933221, -0.243834,
		31.532587, 40.401218, 54.131824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342205, 39.735939, 53.580364>,  <31.347857, 39.747967, 54.302509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342205, 39.735939, 53.580364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.561201, 40.055237, 53.680809>,  <31.692598, 40.246815, 53.741077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.561201, 40.055237, 53.680809>,  <31.342205, 39.735939, 53.580364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561201, 40.055237, 53.680809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600595, -0.165876, -0.782158,
		-0.582700, 0.579043, -0.570237,
		0.547492, 0.798244, 0.251115,
		31.725449, 40.294712, 53.756142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326084, 40.243782, 53.038734>,  <31.342205, 39.735939, 53.580364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326084, 40.243782, 53.038734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.656136, 40.308559, 53.255230>,  <31.854166, 40.347427, 53.385128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.656136, 40.308559, 53.255230>,  <31.326084, 40.243782, 53.038734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656136, 40.308559, 53.255230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564806, -0.257952, -0.783872,
		0.012670, 0.952489, -0.304310,
		0.825127, 0.161944, 0.541239,
		31.903673, 40.357143, 53.417603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654633, 40.640457, 52.538872>,  <31.326084, 40.243782, 53.038734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654633, 40.640457, 52.538872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.927423, 40.499741, 52.795353>,  <32.091099, 40.415310, 52.949242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.927423, 40.499741, 52.795353>,  <31.654633, 40.640457, 52.538872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927423, 40.499741, 52.795353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602743, -0.226234, -0.765192,
		0.414254, 0.908327, 0.057755,
		0.681979, -0.351795, 0.641206,
		32.132015, 40.394203, 52.987717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242050, 40.798664, 52.235783>,  <31.654633, 40.640457, 52.538872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242050, 40.798664, 52.235783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.373932, 40.527267, 52.498367>,  <32.453060, 40.364429, 52.655918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.373932, 40.527267, 52.498367>,  <32.242050, 40.798664, 52.235783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373932, 40.527267, 52.498367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733700, -0.253439, -0.630438,
		0.594121, 0.689504, 0.414251,
		0.329703, -0.678493, 0.656463,
		32.472843, 40.323719, 52.695305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014694, 40.905102, 52.292164>,  <32.242050, 40.798664, 52.235783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014694, 40.905102, 52.292164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.900238, 40.537758, 52.401520>,  <32.831562, 40.317352, 52.467133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.900238, 40.537758, 52.401520>,  <33.014694, 40.905102, 52.292164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900238, 40.537758, 52.401520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663540, -0.395755, -0.634895,
		0.691256, -0.000265, 0.722610,
		-0.286145, -0.918356, 0.273392,
		32.814396, 40.262253, 52.483536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675911, 40.592308, 52.377594>,  <33.014694, 40.905102, 52.292164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675911, 40.592308, 52.377594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.408615, 40.295250, 52.359974>,  <33.248238, 40.117016, 52.349403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.408615, 40.295250, 52.359974>,  <33.675911, 40.592308, 52.377594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408615, 40.295250, 52.359974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655527, -0.559787, -0.506875,
		0.351768, -0.367590, 0.860893,
		-0.668239, -0.742642, -0.044050,
		33.208145, 40.072456, 52.346760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972557, 39.908485, 52.722504>,  <33.675911, 40.592308, 52.377594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972557, 39.908485, 52.722504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.687160, 39.840607, 52.450584>,  <33.515923, 39.799881, 52.287434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.687160, 39.840607, 52.450584>,  <33.972557, 39.908485, 52.722504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687160, 39.840607, 52.450584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615900, -0.614477, -0.493036,
		-0.334056, -0.770468, 0.542942,
		-0.713494, -0.169696, -0.679801,
		33.473114, 39.789700, 52.246643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116146, 39.277893, 52.537380>,  <33.972557, 39.908485, 52.722504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116146, 39.277893, 52.537380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.872513, 39.417324, 52.252422>,  <33.726334, 39.500984, 52.081448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.872513, 39.417324, 52.252422>,  <34.116146, 39.277893, 52.537380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872513, 39.417324, 52.252422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482809, -0.549653, -0.681746,
		-0.629214, -0.759192, 0.166488,
		-0.609086, 0.348582, -0.712394,
		33.689785, 39.521896, 52.038704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889915, 38.643238, 52.198120>,  <34.116146, 39.277893, 52.537380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889915, 38.643238, 52.198120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.841045, 38.957642, 51.955711>,  <33.811722, 39.146286, 51.810268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.841045, 38.957642, 51.955711>,  <33.889915, 38.643238, 52.198120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841045, 38.957642, 51.955711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570752, -0.443893, -0.690798,
		-0.811983, -0.430285, -0.394385,
		-0.122175, 0.786012, -0.606019,
		33.804394, 39.193443, 51.773907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624119, 38.302570, 51.567593>,  <33.889915, 38.643238, 52.198120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624119, 38.302570, 51.567593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.781559, 38.664551, 51.502907>,  <33.876022, 38.881737, 51.464096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.781559, 38.664551, 51.502907>,  <33.624119, 38.302570, 51.567593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781559, 38.664551, 51.502907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421276, -0.333917, -0.843224,
		-0.817073, 0.263764, -0.512661,
		0.393598, 0.904947, -0.161717,
		33.899639, 38.936035, 51.454391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473522, 38.519375, 50.865746>,  <33.624119, 38.302570, 51.567593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473522, 38.519375, 50.865746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.775719, 38.758713, 50.972492>,  <33.957035, 38.902317, 51.036541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.775719, 38.758713, 50.972492>,  <33.473522, 38.519375, 50.865746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775719, 38.758713, 50.972492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541851, -0.341664, -0.767896,
		-0.368291, 0.724737, -0.582338,
		0.755487, 0.598349, 0.266868,
		34.002365, 38.938217, 51.052551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698322, 38.920444, 50.305733>,  <33.473522, 38.519375, 50.865746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698322, 38.920444, 50.305733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.007050, 38.939983, 50.559319>,  <34.192287, 38.951706, 50.711468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.007050, 38.939983, 50.559319>,  <33.698322, 38.920444, 50.305733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007050, 38.939983, 50.559319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602658, -0.374076, -0.704890,
		0.202719, 0.926111, -0.318156,
		0.771821, 0.048845, 0.633961,
		34.238598, 38.954636, 50.749508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247982, 39.274479, 49.979763>,  <33.698322, 38.920444, 50.305733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247982, 39.274479, 49.979763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.444382, 39.068233, 50.260639>,  <34.562222, 38.944489, 50.429165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.444382, 39.068233, 50.260639>,  <34.247982, 39.274479, 49.979763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444382, 39.068233, 50.260639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684752, -0.269866, -0.676969,
		0.538548, 0.813215, 0.220560,
		0.491000, -0.515610, 0.702186,
		34.591682, 38.913551, 50.471294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940929, 39.439430, 49.852173>,  <34.247982, 39.274479, 49.979763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940929, 39.439430, 49.852173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.030731, 39.155342, 50.119061>,  <35.084614, 38.984890, 50.279194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.030731, 39.155342, 50.119061>,  <34.940929, 39.439430, 49.852173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030731, 39.155342, 50.119061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821874, -0.229871, -0.521232,
		0.523565, 0.665390, 0.532105,
		0.224507, -0.710222, 0.667219,
		35.098083, 38.942276, 50.319225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665531, 39.445221, 49.938625>,  <34.940929, 39.439430, 49.852173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665531, 39.445221, 49.938625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.548111, 39.084938, 50.066723>,  <35.477661, 38.868767, 50.143581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.548111, 39.084938, 50.066723>,  <35.665531, 39.445221, 49.938625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548111, 39.084938, 50.066723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808384, -0.412700, -0.419755,
		0.510241, 0.135660, 0.849265,
		-0.293548, -0.900708, 0.320242,
		35.460045, 38.814724, 50.162796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156345, 39.126831, 50.368439>,  <35.665531, 39.445221, 49.938625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156345, 39.126831, 50.368439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.935577, 38.837940, 50.201694>,  <35.803116, 38.664608, 50.101646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.935577, 38.837940, 50.201694>,  <36.156345, 39.126831, 50.368439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935577, 38.837940, 50.201694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830659, -0.432162, -0.351057,
		0.073391, -0.540025, 0.838443,
		-0.551923, -0.722225, -0.416860,
		35.770000, 38.621273, 50.076637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431686, 38.496162, 50.651756>,  <36.156345, 39.126831, 50.368439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431686, 38.496162, 50.651756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.227085, 38.400192, 50.321712>,  <36.104324, 38.342609, 50.123688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.227085, 38.400192, 50.321712>,  <36.431686, 38.496162, 50.651756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227085, 38.400192, 50.321712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682105, -0.697353, -0.220072,
		-0.522588, -0.675376, 0.520355,
		-0.511502, -0.239930, -0.825106,
		36.073635, 38.328213, 50.074181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692219, 37.803185, 50.424862>,  <36.431686, 38.496162, 50.651756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692219, 37.803185, 50.424862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.481232, 37.892776, 50.097054>,  <36.354641, 37.946533, 49.900368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.481232, 37.892776, 50.097054>,  <36.692219, 37.803185, 50.424862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481232, 37.892776, 50.097054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633457, -0.539115, -0.555056,
		-0.566140, -0.811902, 0.142477,
		-0.527463, 0.223986, -0.819520,
		36.322994, 37.959972, 49.851196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518356, 37.143898, 50.014812>,  <36.692219, 37.803185, 50.424862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518356, 37.143898, 50.014812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.466812, 37.445518, 49.757191>,  <36.435886, 37.626492, 49.602619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.466812, 37.445518, 49.757191>,  <36.518356, 37.143898, 50.014812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466812, 37.445518, 49.757191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526034, -0.498587, -0.688984,
		-0.840645, -0.427577, -0.332407,
		-0.128860, 0.754048, -0.644055,
		36.428154, 37.671734, 49.563972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294952, 36.798218, 49.422703>,  <36.518356, 37.143898, 50.014812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294952, 36.798218, 49.422703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.408165, 37.156548, 49.285656>,  <36.476093, 37.371548, 49.203426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.408165, 37.156548, 49.285656>,  <36.294952, 36.798218, 49.422703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408165, 37.156548, 49.285656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557975, -0.444346, -0.700871,
		-0.780101, 0.007195, -0.625613,
		0.283031, 0.895827, -0.342620,
		36.493073, 37.425297, 49.182869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406090, 36.699970, 48.763199>,  <36.294952, 36.798218, 49.422703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406090, 36.699970, 48.763199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.599445, 37.048950, 48.791927>,  <36.715458, 37.258339, 48.809162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.599445, 37.048950, 48.791927>,  <36.406090, 36.699970, 48.763199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599445, 37.048950, 48.791927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683454, -0.324859, -0.653725,
		-0.547014, 0.365089, -0.753316,
		0.483390, 0.872454, 0.071819,
		36.744461, 37.310688, 48.813473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407173, 37.052788, 48.120197>,  <36.406090, 36.699970, 48.763199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407173, 37.052788, 48.120197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.723259, 37.167702, 48.336723>,  <36.912910, 37.236652, 48.466640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.723259, 37.167702, 48.336723>,  <36.407173, 37.052788, 48.120197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723259, 37.167702, 48.336723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606355, -0.238483, -0.758590,
		-0.088840, 0.927680, -0.362652,
		0.790216, 0.287289, 0.541317,
		36.960323, 37.253887, 48.499119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843590, 37.313972, 47.595242>,  <36.407173, 37.052788, 48.120197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843590, 37.313972, 47.595242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.056911, 37.230244, 47.923088>,  <37.184906, 37.180008, 48.119797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.056911, 37.230244, 47.923088>,  <36.843590, 37.313972, 47.595242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056911, 37.230244, 47.923088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771490, -0.277058, -0.572750,
		0.346969, 0.937776, 0.013732,
		0.533307, -0.209320, 0.819615,
		37.216904, 37.167446, 48.168972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765224, 37.430622, 46.847500>,  <36.843590, 37.313972, 47.595242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765224, 37.430622, 46.847500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.543285, 37.763390, 46.844650>,  <36.410122, 37.963051, 46.842941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.543285, 37.763390, 46.844650>,  <36.765224, 37.430622, 46.847500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543285, 37.763390, 46.844650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762936, -0.505387, 0.403128,
		0.331770, 0.229112, 0.915116,
		-0.554849, 0.831920, -0.007125,
		36.376831, 38.012966, 46.842514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081238, 37.046776, 47.097218>,  <36.765224, 37.430622, 46.847500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081238, 37.046776, 47.097218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.899124, 36.896301, 46.774429>,  <35.789856, 36.806015, 46.580757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.899124, 36.896301, 46.774429>,  <36.081238, 37.046776, 47.097218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899124, 36.896301, 46.774429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888603, 0.248677, 0.385413,
		0.055687, 0.892549, -0.447500,
		-0.455283, -0.376187, -0.806970,
		35.762539, 36.783443, 46.532337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658215, 37.543541, 46.836128>,  <36.081238, 37.046776, 47.097218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658215, 37.543541, 46.836128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.510059, 37.201481, 46.691059>,  <35.421165, 36.996246, 46.604019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.510059, 37.201481, 46.691059>,  <35.658215, 37.543541, 46.836128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510059, 37.201481, 46.691059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907177, 0.249126, 0.339067,
		-0.199602, 0.454593, -0.868046,
		-0.370391, -0.855150, -0.362670,
		35.398941, 36.944935, 46.582256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088276, 37.720333, 46.400059>,  <35.658215, 37.543541, 46.836128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088276, 37.720333, 46.400059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.011326, 37.339169, 46.493824>,  <34.965157, 37.110470, 46.550083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.011326, 37.339169, 46.493824>,  <35.088276, 37.720333, 46.400059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011326, 37.339169, 46.493824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853690, 0.280310, 0.438909,
		-0.483950, -0.115680, -0.867416,
		-0.192372, -0.952914, 0.234411,
		34.953613, 37.053295, 46.564148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403225, 37.510052, 46.134979>,  <35.088276, 37.720333, 46.400059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403225, 37.510052, 46.134979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.502350, 37.301624, 46.461681>,  <34.561825, 37.176567, 46.657703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.502350, 37.301624, 46.461681>,  <34.403225, 37.510052, 46.134979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502350, 37.301624, 46.461681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875663, 0.240222, 0.418938,
		-0.414495, -0.819014, -0.396749,
		0.247808, -0.521066, 0.816751,
		34.576691, 37.145306, 46.706707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709953, 37.328762, 46.422924>,  <34.403225, 37.510052, 46.134979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709953, 37.328762, 46.422924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.944462, 37.192066, 46.716728>,  <34.085167, 37.110046, 46.893009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.944462, 37.192066, 46.716728>,  <33.709953, 37.328762, 46.422924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944462, 37.192066, 46.716728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757759, 0.089329, 0.646391,
		-0.286512, -0.935539, -0.206587,
		0.586270, -0.341742, 0.734507,
		34.120342, 37.089542, 46.937080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215038, 37.006889, 46.908928>,  <33.709953, 37.328762, 46.422924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215038, 37.006889, 46.908928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.549484, 37.051857, 47.123695>,  <33.750153, 37.078838, 47.252556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.549484, 37.051857, 47.123695>,  <33.215038, 37.006889, 46.908928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549484, 37.051857, 47.123695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547926, 0.124229, 0.827251,
		0.026290, -0.985866, 0.165462,
		0.836114, 0.112409, 0.536915,
		33.800320, 37.085583, 47.284771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199932, 36.481735, 47.529152>,  <33.215038, 37.006889, 46.908928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199932, 36.481735, 47.529152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.427071, 36.794212, 47.632915>,  <33.563354, 36.981697, 47.695175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.427071, 36.794212, 47.632915>,  <33.199932, 36.481735, 47.529152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427071, 36.794212, 47.632915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559004, 0.134654, 0.818158,
		0.604206, -0.609600, 0.513151,
		0.567846, 0.781189, 0.259410,
		33.597424, 37.028568, 47.710739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107464, 36.523350, 48.177101>,  <33.199932, 36.481735, 47.529152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107464, 36.523350, 48.177101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.287064, 36.880138, 48.155998>,  <33.394821, 37.094212, 48.143337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.287064, 36.880138, 48.155998>,  <33.107464, 36.523350, 48.177101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287064, 36.880138, 48.155998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488490, 0.294478, 0.821377,
		0.748184, -0.343022, 0.567940,
		0.448996, 0.891975, -0.052761,
		33.421764, 37.147732, 48.140171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469780, 36.705940, 48.910233>,  <33.107464, 36.523350, 48.177101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469780, 36.705940, 48.910233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.382431, 37.026138, 48.686977>,  <33.330021, 37.218258, 48.553024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.382431, 37.026138, 48.686977>,  <33.469780, 36.705940, 48.910233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382431, 37.026138, 48.686977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545646, 0.374024, 0.749917,
		0.809063, 0.468309, 0.355110,
		-0.218374, 0.800495, -0.558140,
		33.316917, 37.266289, 48.519535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456665, 37.239857, 49.371544>,  <33.469780, 36.705940, 48.910233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456665, 37.239857, 49.371544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.263103, 37.415565, 49.068790>,  <33.146965, 37.520992, 48.887138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.263103, 37.415565, 49.068790>,  <33.456665, 37.239857, 49.371544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263103, 37.415565, 49.068790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621619, 0.436237, 0.650605,
		0.615975, 0.785325, 0.061964,
		-0.483905, 0.439274, -0.756884,
		33.117931, 37.547348, 48.841724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293663, 37.834373, 49.609352>,  <33.456665, 37.239857, 49.371544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293663, 37.834373, 49.609352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.045120, 37.825573, 49.296062>,  <32.895996, 37.820293, 49.108089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.045120, 37.825573, 49.296062>,  <33.293663, 37.834373, 49.609352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045120, 37.825573, 49.296062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649695, 0.573214, 0.499321,
		0.437967, 0.819110, -0.370464,
		-0.621354, -0.022002, -0.783221,
		32.858715, 37.818974, 49.061096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036823, 38.503372, 49.459930>,  <33.293663, 37.834373, 49.609352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036823, 38.503372, 49.459930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.760056, 38.253635, 49.314911>,  <32.593994, 38.103794, 49.227898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.760056, 38.253635, 49.314911>,  <33.036823, 38.503372, 49.459930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760056, 38.253635, 49.314911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718403, 0.545517, 0.431633,
		-0.071708, 0.559114, -0.825984,
		-0.691921, -0.624341, -0.362551,
		32.552479, 38.066334, 49.206146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518875, 38.957081, 49.238865>,  <33.036823, 38.503372, 49.459930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518875, 38.957081, 49.238865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.360573, 38.592049, 49.280003>,  <32.265591, 38.373028, 49.304684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.360573, 38.592049, 49.280003>,  <32.518875, 38.957081, 49.238865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360573, 38.592049, 49.280003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766402, 0.389892, 0.510501,
		-0.505973, 0.123211, -0.853704,
		-0.395751, -0.912581, 0.102846,
		32.241848, 38.318275, 49.310856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899498, 39.097958, 49.175983>,  <32.518875, 38.957081, 49.238865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899498, 39.097958, 49.175983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.853031, 38.738007, 49.344135>,  <31.825151, 38.522034, 49.445026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.853031, 38.738007, 49.344135>,  <31.899498, 39.097958, 49.175983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853031, 38.738007, 49.344135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780693, 0.344382, 0.521459,
		-0.614022, -0.267612, -0.742536,
		-0.116168, -0.899881, 0.420381,
		31.818180, 38.468044, 49.470249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181374, 39.073929, 49.372070>,  <31.899498, 39.097958, 49.175983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181374, 39.073929, 49.372070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.325109, 38.791489, 49.616135>,  <31.411352, 38.622025, 49.762573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.325109, 38.791489, 49.616135>,  <31.181374, 39.073929, 49.372070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325109, 38.791489, 49.616135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508674, 0.399954, 0.762422,
		-0.782384, -0.584340, -0.215457,
		0.359341, -0.706104, 0.610156,
		31.432911, 38.579659, 49.799183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601074, 38.669811, 49.695576>,  <31.181374, 39.073929, 49.372070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601074, 38.669811, 49.695576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.898457, 38.646641, 49.962086>,  <31.076887, 38.632736, 50.121990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.898457, 38.646641, 49.962086>,  <30.601074, 38.669811, 49.695576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.898457, 38.646641, 49.962086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640678, 0.224086, 0.734382,
		-0.191843, -0.972846, 0.129485,
		0.743457, -0.057928, 0.666270,
		31.121494, 38.629261, 50.161968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256689, 38.362209, 50.304615>,  <30.601074, 38.669811, 49.695576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256689, 38.362209, 50.304615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.600052, 38.510311, 50.446629>,  <30.806070, 38.599174, 50.531837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.600052, 38.510311, 50.446629>,  <30.256689, 38.362209, 50.304615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.600052, 38.510311, 50.446629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461179, 0.253982, 0.850180,
		0.224606, -0.893537, 0.388772,
		0.858409, 0.370250, 0.355035,
		30.857574, 38.621387, 50.553139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262657, 38.184929, 50.954811>,  <30.256689, 38.362209, 50.304615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262657, 38.184929, 50.954811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.526672, 38.485378, 50.959995>,  <30.685081, 38.665646, 50.963104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.526672, 38.485378, 50.959995>,  <30.262657, 38.184929, 50.954811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526672, 38.485378, 50.959995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385084, 0.323477, 0.864334,
		0.645027, -0.575483, 0.502752,
		0.660038, 0.751121, 0.012958,
		30.724684, 38.710712, 50.963882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612822, 38.122280, 51.516769>,  <30.262657, 38.184929, 50.954811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612822, 38.122280, 51.516769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.646593, 38.512821, 51.437164>,  <30.666855, 38.747147, 51.389400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.646593, 38.512821, 51.437164>,  <30.612822, 38.122280, 51.516769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.646593, 38.512821, 51.437164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472925, 0.215063, 0.854453,
		0.877048, 0.021981, 0.479899,
		0.084427, 0.976353, -0.199016,
		30.671921, 38.805725, 51.377460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802113, 38.423283, 52.128490>,  <30.612822, 38.122280, 51.516769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802113, 38.423283, 52.128490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.635050, 38.719788, 51.918308>,  <30.534813, 38.897690, 51.792198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.635050, 38.719788, 51.918308>,  <30.802113, 38.423283, 52.128490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.635050, 38.719788, 51.918308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429721, 0.348393, 0.833044,
		0.800564, 0.573724, 0.173026,
		-0.417656, 0.741258, -0.525452,
		30.509752, 38.942165, 51.760674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832388, 39.077942, 52.524376>,  <30.802113, 38.423283, 52.128490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832388, 39.077942, 52.524376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.548174, 39.177952, 52.261280>,  <30.377645, 39.237957, 52.103420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.548174, 39.177952, 52.261280>,  <30.832388, 39.077942, 52.524376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.548174, 39.177952, 52.261280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521001, 0.441354, 0.730592,
		0.472966, 0.861796, -0.183333,
		-0.710536, 0.250029, -0.657742,
		30.335012, 39.252960, 52.063957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697134, 39.859531, 52.638016>,  <30.832388, 39.077942, 52.524376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697134, 39.859531, 52.638016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.382492, 39.764034, 52.410240>,  <30.193707, 39.706738, 52.273575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.382492, 39.764034, 52.410240>,  <30.697134, 39.859531, 52.638016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382492, 39.764034, 52.410240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611041, 0.433594, 0.662288,
		0.088788, 0.868906, -0.486948,
		-0.786604, -0.238742, -0.569435,
		30.146511, 39.692413, 52.239410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390865, 40.497139, 52.513126>,  <30.697134, 39.859531, 52.638016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390865, 40.497139, 52.513126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.125727, 40.198269, 52.493664>,  <29.966642, 40.018948, 52.481987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.125727, 40.198269, 52.493664>,  <30.390865, 40.497139, 52.513126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125727, 40.198269, 52.493664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604875, 0.496042, 0.622951,
		-0.441315, 0.442354, -0.780746,
		-0.662848, -0.747172, -0.048658,
		29.926872, 39.974117, 52.479065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788094, 40.837799, 52.302319>,  <30.390865, 40.497139, 52.513126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788094, 40.837799, 52.302319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.667183, 40.502655, 52.484138>,  <29.594637, 40.301567, 52.593231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.667183, 40.502655, 52.484138>,  <29.788094, 40.837799, 52.302319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.667183, 40.502655, 52.484138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672406, 0.525422, 0.521346,
		-0.675647, -0.148054, -0.722205,
		-0.302275, -0.837861, 0.454552,
		29.576500, 40.251297, 52.620502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.111937, 40.982311, 52.459671>,  <29.788094, 40.837799, 52.302319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.111937, 40.982311, 52.459671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.189552, 40.664017, 52.689159>,  <29.236122, 40.473042, 52.826855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.189552, 40.664017, 52.689159>,  <29.111937, 40.982311, 52.459671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189552, 40.664017, 52.689159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584229, 0.376076, 0.719196,
		-0.788051, -0.474737, -0.391918,
		0.194038, -0.795733, 0.573723,
		29.247765, 40.425297, 52.861275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474119, 40.703239, 52.640316>,  <29.111937, 40.982311, 52.459671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474119, 40.703239, 52.640316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.740736, 40.571110, 52.907631>,  <28.900705, 40.491833, 53.068020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.740736, 40.571110, 52.907631>,  <28.474119, 40.703239, 52.640316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.740736, 40.571110, 52.907631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603976, 0.286173, 0.743853,
		-0.436961, -0.899438, -0.008765,
		0.666542, -0.330329, 0.668285,
		28.940699, 40.472012, 53.108116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097507, 40.323456, 53.102058>,  <28.474119, 40.703239, 52.640316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.097507, 40.323456, 53.102058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.430998, 40.471031, 53.266392>,  <28.631092, 40.559578, 53.364990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.430998, 40.471031, 53.266392>,  <28.097507, 40.323456, 53.102058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430998, 40.471031, 53.266392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504850, 0.207942, 0.837786,
		0.223692, -0.905881, 0.359640,
		0.833719, 0.368971, 0.410820,
		28.681116, 40.581715, 53.389641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.132927, 39.975277, 53.741173>,  <28.097507, 40.323456, 53.102058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.132927, 39.975277, 53.741173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.355618, 40.307098, 53.758583>,  <28.489233, 40.506191, 53.769028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.355618, 40.307098, 53.758583>,  <28.132927, 39.975277, 53.741173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.355618, 40.307098, 53.758583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362618, 0.195550, 0.911191,
		0.747370, -0.523068, 0.409679,
		0.556728, 0.829554, 0.043526,
		28.522636, 40.555965, 53.771641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.447166, 39.920364, 54.374821>,  <28.132927, 39.975277, 53.741173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.447166, 39.920364, 54.374821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.454597, 40.309616, 54.283024>,  <28.459057, 40.543167, 54.227943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.454597, 40.309616, 54.283024>,  <28.447166, 39.920364, 54.374821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.454597, 40.309616, 54.283024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338675, 0.222089, 0.914317,
		0.940720, 0.060737, 0.333702,
		0.018578, 0.973133, -0.229494,
		28.460171, 40.601555, 54.214176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939991, 40.308823, 54.893372>,  <28.447166, 39.920364, 54.374821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.939991, 40.308823, 54.893372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.671783, 40.549564, 54.719856>,  <28.510859, 40.694012, 54.615746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.671783, 40.549564, 54.719856>,  <28.939991, 40.308823, 54.893372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.671783, 40.549564, 54.719856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305076, 0.309306, 0.900699,
		0.676266, 0.736274, -0.023783,
		-0.670517, 0.601856, -0.433792,
		28.470629, 40.730122, 54.589718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879314, 40.784801, 55.321102>,  <28.939991, 40.308823, 54.893372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.879314, 40.784801, 55.321102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.583136, 40.942719, 55.103523>,  <28.405428, 41.037468, 54.972977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.583136, 40.942719, 55.103523>,  <28.879314, 40.784801, 55.321102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.583136, 40.942719, 55.103523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443867, 0.320492, 0.836820,
		0.504699, 0.861061, -0.062074,
		-0.740447, 0.394789, -0.543948,
		28.361002, 41.061153, 54.940338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.752516, 41.358673, 55.672451>,  <28.879314, 40.784801, 55.321102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.752516, 41.358673, 55.672451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.416821, 41.304699, 55.461750>,  <28.215403, 41.272312, 55.335331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.416821, 41.304699, 55.461750>,  <28.752516, 41.358673, 55.672451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.416821, 41.304699, 55.461750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532253, 0.402104, 0.744996,
		0.111279, 0.905595, -0.409284,
		-0.839240, -0.134940, -0.526752,
		28.165049, 41.264217, 55.303726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391954, 42.107590, 55.573746>,  <28.752516, 41.358673, 55.672451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.391954, 42.107590, 55.573746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.157352, 41.783615, 55.572395>,  <28.016592, 41.589230, 55.571587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.157352, 41.783615, 55.572395>,  <28.391954, 42.107590, 55.573746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.157352, 41.783615, 55.572395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546019, 0.392306, 0.740242,
		-0.598227, 0.435999, -0.672331,
		-0.586504, -0.809939, -0.003376,
		27.981401, 41.540634, 55.571384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.705238, 42.317009, 55.584244>,  <28.391954, 42.107590, 55.573746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.705238, 42.317009, 55.584244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.630030, 41.938858, 55.690758>,  <27.584904, 41.711967, 55.754665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.630030, 41.938858, 55.690758>,  <27.705238, 42.317009, 55.584244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.630030, 41.938858, 55.690758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647285, 0.323186, 0.690343,
		-0.738695, -0.042563, -0.672695,
		-0.188023, -0.945378, 0.266286,
		27.573624, 41.655243, 55.770645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.019674, 42.266937, 55.642281>,  <27.705238, 42.317009, 55.584244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.019674, 42.266937, 55.642281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.124081, 41.943687, 55.853493>,  <27.186724, 41.749737, 55.980221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.124081, 41.943687, 55.853493>,  <27.019674, 42.266937, 55.642281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.124081, 41.943687, 55.853493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786662, 0.138963, 0.601542,
		-0.559495, -0.572390, -0.599446,
		0.261016, -0.808121, 0.528027,
		27.202385, 41.701252, 56.011902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.371227, 41.921947, 55.864609>,  <27.019674, 42.266937, 55.642281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.371227, 41.921947, 55.864609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.668531, 41.789711, 56.097252>,  <26.846914, 41.710369, 56.236839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.668531, 41.789711, 56.097252>,  <26.371227, 41.921947, 55.864609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.668531, 41.789711, 56.097252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586775, 0.095437, 0.804106,
		-0.321339, -0.938936, -0.123050,
		0.743261, -0.330593, 0.581611,
		26.891510, 41.690533, 56.271736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.989706, 41.601139, 56.377636>,  <26.371227, 41.921947, 55.864609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.989706, 41.601139, 56.377636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.339966, 41.625484, 56.569275>,  <26.550121, 41.640091, 56.684258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.339966, 41.625484, 56.569275>,  <25.989706, 41.601139, 56.377636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.339966, 41.625484, 56.569275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472268, 0.315410, 0.823092,
		-0.101018, -0.947002, 0.304931,
		0.875647, 0.060862, 0.479100,
		26.602659, 41.643742, 56.713005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.977169, 41.266914, 57.147751>,  <25.989706, 41.601139, 56.377636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.977169, 41.266914, 57.147751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.259600, 41.548752, 57.119457>,  <26.429058, 41.717854, 57.102482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.259600, 41.548752, 57.119457>,  <25.977169, 41.266914, 57.147751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.259600, 41.548752, 57.119457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316191, 0.403070, 0.858812,
		0.633624, -0.584023, 0.507384,
		0.706077, 0.704594, -0.070732,
		26.471422, 41.760128, 57.098236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.082926, 40.528877, 56.813671>,  <25.977169, 41.266914, 57.147751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.082926, 40.528877, 56.813671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.758631, 40.299061, 56.768749>,  <25.564054, 40.161171, 56.741795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.758631, 40.299061, 56.768749>,  <26.082926, 40.528877, 56.813671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.758631, 40.299061, 56.768749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412857, -0.425141, -0.805484,
		0.415035, -0.699402, 0.581879,
		-0.810737, -0.574537, -0.112304,
		25.515409, 40.126701, 56.735058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.309021, 39.809971, 56.677174>,  <26.082926, 40.528877, 56.813671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.309021, 39.809971, 56.677174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.923647, 39.809280, 56.569996>,  <25.692423, 39.808868, 56.505692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.923647, 39.809280, 56.569996>,  <26.309021, 39.809971, 56.677174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.923647, 39.809280, 56.569996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176673, -0.755897, -0.630402,
		-0.201451, -0.654689, 0.728560,
		-0.963433, -0.001722, -0.267942,
		25.634617, 39.808765, 56.489613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.008663, 39.097084, 56.541592>,  <26.309021, 39.809971, 56.677174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.008663, 39.097084, 56.541592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.774361, 39.347977, 56.336273>,  <25.633780, 39.498512, 56.213081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.774361, 39.347977, 56.336273>,  <26.008663, 39.097084, 56.541592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.774361, 39.347977, 56.336273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044858, -0.607261, -0.793235,
		-0.809246, -0.487666, 0.327569,
		-0.585754, 0.627229, -0.513299,
		25.598635, 39.536144, 56.182285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.577347, 38.649754, 56.210030>,  <26.008663, 39.097084, 56.541592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.577347, 38.649754, 56.210030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.544556, 38.993549, 56.008217>,  <25.524881, 39.199829, 55.887131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.544556, 38.993549, 56.008217>,  <25.577347, 38.649754, 56.210030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.544556, 38.993549, 56.008217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077302, -0.499228, -0.863015,
		-0.993632, -0.109751, -0.025514,
		-0.081980, 0.859492, -0.504533,
		25.519962, 39.251396, 55.856857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.239290, 38.350979, 55.664536>,  <25.577347, 38.649754, 56.210030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.239290, 38.350979, 55.664536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.405689, 38.702312, 55.570328>,  <25.505529, 38.913113, 55.513802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.405689, 38.702312, 55.570328>,  <25.239290, 38.350979, 55.664536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.405689, 38.702312, 55.570328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130703, -0.314060, -0.940363,
		-0.899923, 0.360406, -0.245450,
		0.415999, 0.878336, -0.235524,
		25.530489, 38.965813, 55.499672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.974789, 38.484383, 54.994202>,  <25.239290, 38.350979, 55.664536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.974789, 38.484383, 54.994202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.308565, 38.704693, 55.001743>,  <25.508831, 38.836880, 55.006268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.308565, 38.704693, 55.001743>,  <24.974789, 38.484383, 54.994202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.308565, 38.704693, 55.001743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211444, -0.288371, -0.933881,
		-0.508917, 0.783258, -0.357087,
		0.834443, 0.550772, 0.018858,
		25.558899, 38.869923, 55.007401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.042233, 38.845135, 54.343693>,  <24.974789, 38.484383, 54.994202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.042233, 38.845135, 54.343693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.408125, 38.841915, 54.505283>,  <25.627661, 38.839985, 54.602238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.408125, 38.841915, 54.505283>,  <25.042233, 38.845135, 54.343693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.408125, 38.841915, 54.505283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392828, -0.216378, -0.893793,
		0.094606, 0.976276, -0.194767,
		0.914732, -0.008048, 0.403980,
		25.682545, 38.839500, 54.626476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.427504, 39.135193, 53.791752>,  <25.042233, 38.845135, 54.343693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.427504, 39.135193, 53.791752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.695803, 38.975807, 54.041977>,  <25.856781, 38.880177, 54.192112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.695803, 38.975807, 54.041977>,  <25.427504, 39.135193, 53.791752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.695803, 38.975807, 54.041977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483312, -0.404951, -0.776160,
		0.562590, 0.822949, -0.079039,
		0.670747, -0.398460, 0.625562,
		25.897026, 38.856270, 54.229645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.124588, 39.357903, 53.572369>,  <25.427504, 39.135193, 53.791752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.124588, 39.357903, 53.572369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.148111, 39.016689, 53.779785>,  <26.162226, 38.811962, 53.904236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.148111, 39.016689, 53.779785>,  <26.124588, 39.357903, 53.572369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.148111, 39.016689, 53.779785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622186, -0.374886, -0.687274,
		0.780658, 0.363045, 0.508696,
		0.058808, -0.853029, 0.518539,
		26.165754, 38.760780, 53.935349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.757353, 39.229229, 53.443481>,  <26.124588, 39.357903, 53.572369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.757353, 39.229229, 53.443481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.618462, 38.870041, 53.551617>,  <26.535128, 38.654530, 53.616497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.618462, 38.870041, 53.551617>,  <26.757353, 39.229229, 53.443481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.618462, 38.870041, 53.551617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556201, -0.429298, -0.711578,
		0.755032, -0.096716, 0.648516,
		-0.347227, -0.897970, 0.270340,
		26.514294, 38.600651, 53.632717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.298752, 38.827866, 53.541874>,  <26.757353, 39.229229, 53.443481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.298752, 38.827866, 53.541874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.026052, 38.554920, 53.436344>,  <26.862432, 38.391151, 53.373028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.026052, 38.554920, 53.436344>,  <27.298752, 38.827866, 53.541874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.026052, 38.554920, 53.436344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589687, -0.299105, -0.750203,
		0.433002, -0.667020, 0.606295,
		-0.681746, -0.682364, -0.263820,
		26.821529, 38.350212, 53.357197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.683367, 38.377419, 53.165955>,  <27.298752, 38.827866, 53.541874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.683367, 38.377419, 53.165955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.322086, 38.228291, 53.080887>,  <27.105318, 38.138813, 53.029846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.322086, 38.228291, 53.080887>,  <27.683367, 38.377419, 53.165955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.322086, 38.228291, 53.080887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384261, -0.481609, -0.787652,
		0.191228, -0.793131, 0.578251,
		-0.903203, -0.372820, -0.212672,
		27.051125, 38.116444, 53.017086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.643526, 37.602268, 53.109318>,  <27.683367, 38.377419, 53.165955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.643526, 37.602268, 53.109318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.340586, 37.736248, 52.885094>,  <27.158821, 37.816635, 52.750557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.340586, 37.736248, 52.885094>,  <27.643526, 37.602268, 53.109318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340586, 37.736248, 52.885094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399231, -0.441814, -0.803377,
		-0.516758, -0.832230, 0.200884,
		-0.757348, 0.334953, -0.560563,
		27.113380, 37.836735, 52.716927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.325993, 37.057613, 52.771011>,  <27.643526, 37.602268, 53.109318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.325993, 37.057613, 52.771011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.239779, 37.381161, 52.552185>,  <27.188049, 37.575291, 52.420891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.239779, 37.381161, 52.552185>,  <27.325993, 37.057613, 52.771011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.239779, 37.381161, 52.552185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314957, -0.472705, -0.823014,
		-0.924308, -0.349691, -0.152873,
		-0.215537, 0.808867, -0.547063,
		27.175117, 37.623821, 52.388065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.963470, 36.839413, 52.232689>,  <27.325993, 37.057613, 52.771011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.963470, 36.839413, 52.232689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.146915, 37.180077, 52.131218>,  <27.256983, 37.384476, 52.070335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.146915, 37.180077, 52.131218>,  <26.963470, 36.839413, 52.232689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.146915, 37.180077, 52.131218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338169, -0.431256, -0.836457,
		-0.821776, 0.297823, -0.485784,
		0.458613, 0.851657, -0.253681,
		27.284500, 37.435574, 52.055115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.894188, 36.888374, 51.500172>,  <26.963470, 36.839413, 52.232689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.894188, 36.888374, 51.500172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.175310, 37.158737, 51.588905>,  <27.343983, 37.320957, 51.642147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.175310, 37.158737, 51.588905>,  <26.894188, 36.888374, 51.500172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.175310, 37.158737, 51.588905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490761, -0.234917, -0.839028,
		-0.514996, 0.698540, -0.496812,
		0.702804, 0.675911, 0.221835,
		27.386152, 37.361511, 51.655457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.084801, 37.214050, 50.746887>,  <26.894188, 36.888374, 51.500172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.084801, 37.214050, 50.746887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.383396, 37.288975, 51.002281>,  <27.562553, 37.333927, 51.155518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.383396, 37.288975, 51.002281>,  <27.084801, 37.214050, 50.746887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.383396, 37.288975, 51.002281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655282, -0.040269, -0.754310,
		-0.115576, 0.981476, -0.152800,
		0.746490, 0.187307, 0.638490,
		27.607344, 37.345165, 51.193829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.456326, 37.838352, 50.558239>,  <27.084801, 37.214050, 50.746887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.456326, 37.838352, 50.558239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.711754, 37.614307, 50.769333>,  <27.865011, 37.479881, 50.895988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.711754, 37.614307, 50.769333>,  <27.456326, 37.838352, 50.558239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.711754, 37.614307, 50.769333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638675, 0.003145, -0.769470,
		0.429330, 0.828411, 0.359738,
		0.638569, -0.560112, 0.527735,
		27.903324, 37.446274, 50.927654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105009, 38.089489, 50.359707>,  <27.456326, 37.838352, 50.558239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105009, 38.089489, 50.359707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.223942, 37.749866, 50.534382>,  <28.295301, 37.546093, 50.639187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.223942, 37.749866, 50.534382>,  <28.105009, 38.089489, 50.359707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.223942, 37.749866, 50.534382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839922, 0.015115, -0.542496,
		0.454011, 0.528082, 0.717638,
		0.297330, -0.849059, 0.436685,
		28.313141, 37.495148, 50.665386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.815804, 38.194748, 50.479828>,  <28.105009, 38.089489, 50.359707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.815804, 38.194748, 50.479828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.719393, 37.806587, 50.473835>,  <28.661547, 37.573692, 50.470242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.719393, 37.806587, 50.473835>,  <28.815804, 38.194748, 50.479828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.719393, 37.806587, 50.473835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673116, -0.156031, -0.722889,
		0.699157, -0.184318, 0.690801,
		-0.241028, -0.970403, -0.014978,
		28.647085, 37.515465, 50.469341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.460833, 37.970818, 50.523228>,  <28.815804, 38.194748, 50.479828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.460833, 37.970818, 50.523228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.250614, 37.652382, 50.403194>,  <29.124483, 37.461323, 50.331177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.250614, 37.652382, 50.403194>,  <29.460833, 37.970818, 50.523228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.250614, 37.652382, 50.403194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766582, -0.290131, -0.572867,
		0.368989, -0.531105, 0.762742,
		-0.525548, -0.796085, -0.300080,
		29.092951, 37.413555, 50.313171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.862356, 37.394840, 50.641594>,  <29.460833, 37.970818, 50.523228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.862356, 37.394840, 50.641594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.622662, 37.276379, 50.344082>,  <29.478846, 37.205303, 50.165573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.622662, 37.276379, 50.344082>,  <29.862356, 37.394840, 50.641594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622662, 37.276379, 50.344082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800016, -0.256143, -0.542554,
		-0.029837, -0.920156, 0.390415,
		-0.599236, -0.296150, -0.743782,
		29.442890, 37.187534, 50.120949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139034, 36.786362, 50.378826>,  <29.862356, 37.394840, 50.641594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139034, 36.786362, 50.378826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.895014, 36.937763, 50.100380>,  <29.748602, 37.028603, 49.933311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.895014, 36.937763, 50.100380>,  <30.139034, 36.786362, 50.378826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895014, 36.937763, 50.100380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610197, -0.336021, -0.717460,
		-0.505470, -0.862453, -0.025971,
		-0.610049, 0.378502, -0.696115,
		29.711998, 37.051315, 49.891544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924862, 36.315342, 49.920914>,  <30.139034, 36.786362, 50.378826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924862, 36.315342, 49.920914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.892008, 36.646564, 49.699078>,  <29.872295, 36.845299, 49.565975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.892008, 36.646564, 49.699078>,  <29.924862, 36.315342, 49.920914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.892008, 36.646564, 49.699078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518701, -0.439646, -0.733253,
		-0.851001, -0.347892, -0.393406,
		-0.082133, 0.828059, -0.554592,
		29.867369, 36.894981, 49.532700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.885698, 36.002605, 49.319645>,  <29.924862, 36.315342, 49.920914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.885698, 36.002605, 49.319645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.943279, 36.392483, 49.251225>,  <29.977827, 36.626408, 49.210171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.943279, 36.392483, 49.251225>,  <29.885698, 36.002605, 49.319645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943279, 36.392483, 49.251225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484593, -0.220137, -0.846587,
		-0.862814, 0.038977, -0.504016,
		0.143950, 0.974690, -0.171050,
		29.986464, 36.684891, 49.199909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543722, 36.257763, 48.694309>,  <29.885698, 36.002605, 49.319645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543722, 36.257763, 48.694309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.867937, 36.487865, 48.738342>,  <30.062466, 36.625927, 48.764763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.867937, 36.487865, 48.738342>,  <29.543722, 36.257763, 48.694309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867937, 36.487865, 48.738342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294111, -0.237231, -0.925861,
		-0.506489, 0.782820, -0.361473,
		0.810535, 0.575252, 0.110081,
		30.111097, 36.660442, 48.771366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.672693, 36.479473, 47.952419>,  <29.543722, 36.257763, 48.694309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.672693, 36.479473, 47.952419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.006760, 36.556686, 48.158424>,  <30.207199, 36.603012, 48.282028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.006760, 36.556686, 48.158424>,  <29.672693, 36.479473, 47.952419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006760, 36.556686, 48.158424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546520, -0.396355, -0.737711,
		0.061725, 0.897575, -0.436519,
		0.835168, 0.193031, 0.515008,
		30.257311, 36.614597, 48.312927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031052, 36.889538, 47.516422>,  <29.672693, 36.479473, 47.952419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031052, 36.889538, 47.516422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.271774, 36.702717, 47.775555>,  <30.416208, 36.590622, 47.931034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.271774, 36.702717, 47.775555>,  <30.031052, 36.889538, 47.516422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271774, 36.702717, 47.775555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403115, -0.522607, -0.751252,
		0.689438, 0.713260, -0.126231,
		0.601808, -0.467057, 0.647831,
		30.452316, 36.562599, 47.969906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.774248, 36.947361, 47.233990>,  <30.031052, 36.889538, 47.516422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.774248, 36.947361, 47.233990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.755997, 36.638611, 47.487644>,  <30.745047, 36.453362, 47.639835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.755997, 36.638611, 47.487644>,  <30.774248, 36.947361, 47.233990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.755997, 36.638611, 47.487644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473155, -0.575770, -0.666793,
		0.879797, 0.269620, 0.391488,
		-0.045626, -0.771877, 0.634133,
		30.742310, 36.407047, 47.677883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381041, 36.622940, 47.077068>,  <30.774248, 36.947361, 47.233990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381041, 36.622940, 47.077068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.177370, 36.356583, 47.295181>,  <31.055168, 36.196770, 47.426048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.177370, 36.356583, 47.295181>,  <31.381041, 36.622940, 47.077068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177370, 36.356583, 47.295181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560053, -0.737420, -0.377561,
		0.653514, 0.113140, 0.748411,
		-0.509176, -0.665891, 0.545279,
		31.024616, 36.156815, 47.458763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828569, 36.262432, 47.448090>,  <31.381041, 36.622940, 47.077068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828569, 36.262432, 47.448090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.517939, 36.013557, 47.408459>,  <31.331560, 35.864235, 47.384682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.517939, 36.013557, 47.408459>,  <31.828569, 36.262432, 47.448090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517939, 36.013557, 47.408459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628193, -0.752710, -0.196979,
		0.047980, -0.215209, 0.975389,
		-0.776577, -0.622184, -0.099078,
		31.284966, 35.826900, 47.378735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062912, 35.575371, 47.505806>,  <31.828569, 36.262432, 47.448090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062912, 35.575371, 47.505806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.690151, 35.480061, 47.396420>,  <31.466496, 35.422874, 47.330788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.690151, 35.480061, 47.396420>,  <32.062912, 35.575371, 47.505806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690151, 35.480061, 47.396420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312173, -0.910789, -0.270205,
		-0.184688, -0.337173, 0.923149,
		-0.931900, -0.238278, -0.273468,
		31.410582, 35.408577, 47.314381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740906, 34.943317, 47.952435>,  <32.062912, 35.575371, 47.505806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740906, 34.943317, 47.952435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.557106, 34.980820, 47.599148>,  <31.446825, 35.003323, 47.387177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.557106, 34.980820, 47.599148>,  <31.740906, 34.943317, 47.952435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557106, 34.980820, 47.599148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092800, -0.983902, -0.152726,
		-0.883316, -0.152140, 0.443404,
		-0.459502, 0.093757, -0.883214,
		31.419256, 35.008945, 47.334183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253868, 34.424244, 47.937115>,  <31.740906, 34.943317, 47.952435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253868, 34.424244, 47.937115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.307304, 34.529984, 47.555061>,  <31.339367, 34.593426, 47.325829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.307304, 34.529984, 47.555061>,  <31.253868, 34.424244, 47.937115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307304, 34.529984, 47.555061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173787, -0.955083, -0.240029,
		-0.975680, -0.133923, -0.173530,
		0.133590, 0.264349, -0.955130,
		31.347382, 34.609287, 47.268524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978949, 33.888927, 47.561493>,  <31.253868, 34.424244, 47.937115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978949, 33.888927, 47.561493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.202633, 34.046543, 47.269737>,  <31.336843, 34.141113, 47.094685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.202633, 34.046543, 47.269737>,  <30.978949, 33.888927, 47.561493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202633, 34.046543, 47.269737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352060, -0.909420, -0.221380,
		-0.750556, -0.132992, -0.647285,
		0.559213, 0.394041, -0.729392,
		31.370396, 34.164757, 47.050919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983906, 33.432968, 46.931984>,  <30.978949, 33.888927, 47.561493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983906, 33.432968, 46.931984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.323759, 33.643738, 46.940655>,  <31.527672, 33.770199, 46.945858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.323759, 33.643738, 46.940655>,  <30.983906, 33.432968, 46.931984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323759, 33.643738, 46.940655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522400, -0.835281, -0.171475,
		-0.072250, 0.157013, -0.984950,
		0.849634, 0.526927, 0.021675,
		31.578650, 33.801815, 46.947159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341360, 33.279476, 46.290421>,  <30.983906, 33.432968, 46.931984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341360, 33.279476, 46.290421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.615129, 33.415783, 46.548241>,  <31.779390, 33.497566, 46.702930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.615129, 33.415783, 46.548241>,  <31.341360, 33.279476, 46.290421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615129, 33.415783, 46.548241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611771, -0.749332, -0.253453,
		0.396612, 0.567785, -0.721331,
		0.684423, 0.340767, 0.644548,
		31.820457, 33.518013, 46.741604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965179, 33.205494, 45.866905>,  <31.341360, 33.279476, 46.290421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965179, 33.205494, 45.866905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.060760, 33.277622, 46.248562>,  <32.118111, 33.320900, 46.477554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.060760, 33.277622, 46.248562>,  <31.965179, 33.205494, 45.866905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060760, 33.277622, 46.248562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678340, -0.734088, -0.031144,
		0.694808, 0.654673, -0.297733,
		0.238951, 0.180325, 0.954141,
		32.132446, 33.331718, 46.534805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690399, 33.025494, 45.880013>,  <31.965179, 33.205494, 45.866905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690399, 33.025494, 45.880013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.633522, 33.052853, 46.275002>,  <32.599396, 33.069267, 46.511993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.633522, 33.052853, 46.275002>,  <32.690399, 33.025494, 45.880013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633522, 33.052853, 46.275002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690491, -0.707941, 0.148465,
		0.709228, 0.702952, 0.053432,
		-0.142190, 0.068401, 0.987473,
		32.590866, 33.073372, 46.571243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345123, 33.179428, 46.259823>,  <32.690399, 33.025494, 45.880013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345123, 33.179428, 46.259823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.084229, 32.998253, 46.502945>,  <32.927692, 32.889545, 46.648819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.084229, 32.998253, 46.502945>,  <33.345123, 33.179428, 46.259823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084229, 32.998253, 46.502945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711006, -0.643543, 0.283413,
		0.262780, 0.617006, 0.741788,
		-0.652240, -0.452941, 0.607805,
		32.888557, 32.862370, 46.685287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747974, 33.126156, 46.916702>,  <33.345123, 33.179428, 46.259823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747974, 33.126156, 46.916702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.440102, 32.872406, 46.887985>,  <33.255379, 32.720158, 46.870754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.440102, 32.872406, 46.887985>,  <33.747974, 33.126156, 46.916702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440102, 32.872406, 46.887985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617239, -0.768152, 0.170172,
		-0.163099, 0.086667, 0.982796,
		-0.769685, -0.634375, -0.071791,
		33.209198, 32.682095, 46.866447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650394, 32.774612, 47.507278>,  <33.747974, 33.126156, 46.916702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650394, 32.774612, 47.507278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.544476, 32.544270, 47.197887>,  <33.480923, 32.406063, 47.012253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.544476, 32.544270, 47.197887>,  <33.650394, 32.774612, 47.507278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544476, 32.544270, 47.197887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561304, -0.744269, 0.361943,
		-0.784104, -0.338315, 0.520312,
		-0.264801, -0.575854, -0.773481,
		33.465034, 32.371513, 46.965843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413654, 31.988903, 47.648941>,  <33.650394, 32.774612, 47.507278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413654, 31.988903, 47.648941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.570099, 32.010517, 47.281437>,  <33.663967, 32.023487, 47.060936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.570099, 32.010517, 47.281437>,  <33.413654, 31.988903, 47.648941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570099, 32.010517, 47.281437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623945, -0.749409, 0.221534,
		-0.676553, -0.659898, -0.326818,
		0.391111, 0.054037, -0.918756,
		33.687431, 32.026730, 47.005810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425117, 31.289343, 47.520725>,  <33.413654, 31.988903, 47.648941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425117, 31.289343, 47.520725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.681694, 31.504759, 47.302174>,  <33.835640, 31.634008, 47.171043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.681694, 31.504759, 47.302174>,  <33.425117, 31.289343, 47.520725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681694, 31.504759, 47.302174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679295, -0.729679, 0.078268,
		-0.356530, -0.421356, -0.833874,
		0.641439, 0.538542, -0.546377,
		33.874126, 31.666321, 47.138260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747974, 30.978115, 46.825684>,  <33.425117, 31.289343, 47.520725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747974, 30.978115, 46.825684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.999283, 31.224487, 47.015800>,  <34.150066, 31.372311, 47.129871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.999283, 31.224487, 47.015800>,  <33.747974, 30.978115, 46.825684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999283, 31.224487, 47.015800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626402, -0.762800, 0.160489,
		0.461405, 0.196895, -0.865065,
		0.628272, 0.615929, 0.475295,
		34.187763, 31.409266, 47.158390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490589, 31.083113, 46.856865>,  <33.747974, 30.978115, 46.825684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490589, 31.083113, 46.856865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.536434, 31.479845, 46.879253>,  <34.563942, 31.717884, 46.892685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.536434, 31.479845, 46.879253>,  <34.490589, 31.083113, 46.856865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536434, 31.479845, 46.879253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900602, -0.127521, 0.415517,
		0.419260, 0.002781, -0.907862,
		0.114616, 0.991832, 0.055969,
		34.570820, 31.777395, 46.896046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010452, 31.327011, 46.381821>,  <34.490589, 31.083113, 46.856865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010452, 31.327011, 46.381821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.945499, 31.523682, 46.724022>,  <34.906528, 31.641684, 46.929344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.945499, 31.523682, 46.724022>,  <35.010452, 31.327011, 46.381821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945499, 31.523682, 46.724022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980271, -0.018645, 0.196776,
		0.112701, 0.870578, -0.478949,
		-0.162379, 0.491677, 0.855504,
		34.896786, 31.671185, 46.980675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575100, 31.722179, 46.425369>,  <35.010452, 31.327011, 46.381821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575100, 31.722179, 46.425369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.440018, 31.679539, 46.799450>,  <35.358971, 31.653955, 47.023899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.440018, 31.679539, 46.799450>,  <35.575100, 31.722179, 46.425369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440018, 31.679539, 46.799450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934067, 0.084583, 0.346935,
		-0.116085, 0.990698, 0.071008,
		-0.337702, -0.106601, 0.935197,
		35.338707, 31.647558, 47.080009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932747, 32.205318, 46.842693>,  <35.575100, 31.722179, 46.425369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932747, 32.205318, 46.842693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.805611, 31.922375, 47.095238>,  <35.729328, 31.752609, 47.246765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.805611, 31.922375, 47.095238>,  <35.932747, 32.205318, 46.842693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805611, 31.922375, 47.095238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897307, -0.009297, 0.441309,
		-0.306294, 0.706793, 0.637673,
		-0.317843, -0.707359, 0.631363,
		35.710258, 31.710167, 47.284645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200974, 32.478054, 47.365116>,  <35.932747, 32.205318, 46.842693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200974, 32.478054, 47.365116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.117607, 32.092506, 47.431477>,  <36.067589, 31.861179, 47.471294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.117607, 32.092506, 47.431477>,  <36.200974, 32.478054, 47.365116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117607, 32.092506, 47.431477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867272, -0.103721, 0.486909,
		-0.452108, 0.245363, 0.857552,
		-0.208416, -0.963867, 0.165904,
		36.055084, 31.803347, 47.481247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158913, 32.321274, 48.147079>,  <36.200974, 32.478054, 47.365116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158913, 32.321274, 48.147079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.237976, 31.973419, 47.966118>,  <36.285416, 31.764708, 47.857540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.237976, 31.973419, 47.966118>,  <36.158913, 32.321274, 48.147079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237976, 31.973419, 47.966118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893936, -0.029472, 0.447225,
		-0.402255, -0.492815, 0.771573,
		0.197659, -0.869635, -0.452400,
		36.297276, 31.712528, 47.830399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590595, 31.896652, 48.590118>,  <36.158913, 32.321274, 48.147079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590595, 31.896652, 48.590118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.674095, 31.695284, 48.254742>,  <36.724194, 31.574463, 48.053516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.674095, 31.695284, 48.254742>,  <36.590595, 31.896652, 48.590118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674095, 31.695284, 48.254742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897649, -0.241626, 0.368570,
		-0.388136, -0.829568, 0.401457,
		0.208751, -0.503423, -0.838444,
		36.736721, 31.544256, 48.003208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959583, 31.389917, 48.823021>,  <36.590595, 31.896652, 48.590118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959583, 31.389917, 48.823021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.048485, 31.376684, 48.433250>,  <37.101826, 31.368744, 48.199387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.048485, 31.376684, 48.433250>,  <36.959583, 31.389917, 48.823021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048485, 31.376684, 48.433250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937889, -0.265821, 0.222941,
		-0.266400, -0.963455, -0.028048,
		0.222249, -0.033085, -0.974428,
		37.115158, 31.366760, 48.140923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418003, 30.840267, 48.707432>,  <36.959583, 31.389917, 48.823021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418003, 30.840267, 48.707432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.485664, 31.075388, 48.390984>,  <37.526260, 31.216459, 48.201115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.485664, 31.075388, 48.390984>,  <37.418003, 30.840267, 48.707432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485664, 31.075388, 48.390984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985330, -0.119274, 0.122058,
		-0.022614, -0.800165, -0.599354,
		0.169154, 0.587801, -0.791124,
		37.536411, 31.251728, 48.153645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973320, 30.445045, 48.484344>,  <37.418003, 30.840267, 48.707432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973320, 30.445045, 48.484344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.989326, 30.792101, 48.286110>,  <37.998928, 31.000334, 48.167171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.989326, 30.792101, 48.286110>,  <37.973320, 30.445045, 48.484344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989326, 30.792101, 48.286110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997405, -0.064392, -0.032205,
		-0.059854, -0.493007, -0.867964,
		0.040013, 0.867639, -0.495582,
		38.001331, 31.052393, 48.137436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585670, 30.339056, 48.074146>,  <37.973320, 30.445045, 48.484344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585670, 30.339056, 48.074146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.513374, 30.731472, 48.102131>,  <38.469997, 30.966921, 48.118923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.513374, 30.731472, 48.102131>,  <38.585670, 30.339056, 48.074146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513374, 30.731472, 48.102131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981198, 0.174954, 0.081494,
		0.067708, 0.083378, -0.994215,
		-0.180737, 0.981040, 0.069965,
		38.459152, 31.025784, 48.123119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869022, 30.765753, 47.441536>,  <38.585670, 30.339056, 48.074146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869022, 30.765753, 47.441536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.833904, 31.022078, 47.746601>,  <38.812836, 31.175873, 47.929638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.833904, 31.022078, 47.746601>,  <38.869022, 30.765753, 47.441536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833904, 31.022078, 47.746601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979602, 0.194465, -0.050630,
		-0.180755, 0.742658, -0.644815,
		-0.087793, 0.640813, 0.762660,
		38.807568, 31.214321, 47.975399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512791, 30.835611, 47.157627>,  <38.869022, 30.765753, 47.441536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512791, 30.835611, 47.157627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.854023, 30.786165, 46.954857>,  <40.058762, 30.756496, 46.833195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.854023, 30.786165, 46.954857>,  <39.512791, 30.835611, 47.157627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854023, 30.786165, 46.954857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482749, -0.555676, -0.676888,
		-0.198012, 0.822157, -0.533712,
		0.853080, -0.123617, -0.506926,
		40.109947, 30.749081, 46.802780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999996, 31.388256, 47.650169>,  <39.512791, 30.835611, 47.157627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999996, 31.388256, 47.650169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.295609, 31.147419, 47.529293>,  <40.472977, 31.002916, 47.456768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.295609, 31.147419, 47.529293>,  <39.999996, 31.388256, 47.650169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295609, 31.147419, 47.529293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316852, 0.706518, -0.632801,
		0.594507, 0.371910, 0.712913,
		0.739031, -0.602093, -0.302189,
		40.517319, 30.966791, 47.438637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647850, 31.852839, 47.704941>,  <39.999996, 31.388256, 47.650169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647850, 31.852839, 47.704941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.661205, 31.567387, 47.425049>,  <40.669220, 31.396116, 47.257114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.661205, 31.567387, 47.425049>,  <40.647850, 31.852839, 47.704941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661205, 31.567387, 47.425049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356517, 0.662565, -0.658713,
		0.933692, -0.227470, 0.276545,
		0.033392, -0.713628, -0.699729,
		40.671223, 31.353298, 47.215130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247036, 31.941414, 47.262321>,  <40.647850, 31.852839, 47.704941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247036, 31.941414, 47.262321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.006599, 31.710007, 47.041775>,  <40.862339, 31.571163, 46.909447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.006599, 31.710007, 47.041775>,  <41.247036, 31.941414, 47.262321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006599, 31.710007, 47.041775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260470, 0.510430, -0.819522,
		0.755543, -0.636222, -0.156128,
		-0.601090, -0.578518, -0.551369,
		40.826271, 31.536451, 46.876366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563625, 31.605360, 46.709789>,  <41.247036, 31.941414, 47.262321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.563625, 31.605360, 46.709789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.200546, 31.685184, 46.562138>,  <40.982697, 31.733080, 46.473549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.200546, 31.685184, 46.562138>,  <41.563625, 31.605360, 46.709789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200546, 31.685184, 46.562138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418756, 0.374405, -0.827324,
		-0.026900, -0.905536, -0.423416,
		-0.907701, 0.199563, -0.369127,
		40.928238, 31.745052, 46.451401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.482552, 31.295967, 46.043938>,  <41.563625, 31.605360, 46.709789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.482552, 31.295967, 46.043938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.223057, 31.600327, 46.049103>,  <41.067360, 31.782942, 46.052200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.223057, 31.600327, 46.049103>,  <41.482552, 31.295967, 46.043938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223057, 31.600327, 46.049103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264335, 0.241218, -0.933778,
		-0.713627, -0.602365, -0.357620,
		-0.648740, 0.760901, 0.012913,
		41.028435, 31.828596, 46.052979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.805355, 30.596622, 45.873764>,  <41.482552, 31.295967, 46.043938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.805355, 30.596622, 45.873764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.070557, 30.783522, 46.107719>,  <42.229679, 30.895662, 46.248093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.070557, 30.783522, 46.107719>,  <41.805355, 30.596622, 45.873764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070557, 30.783522, 46.107719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418757, -0.879112, 0.227606,
		0.620535, 0.094023, -0.778522,
		0.663008, 0.467249, 0.584892,
		42.269459, 30.923697, 46.283188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.061481, 30.042841, 45.407288>,  <41.805355, 30.596622, 45.873764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.061481, 30.042841, 45.407288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.208927, 30.382109, 45.255108>,  <42.297394, 30.585669, 45.163799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.208927, 30.382109, 45.255108>,  <42.061481, 30.042841, 45.407288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208927, 30.382109, 45.255108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227505, -0.314505, -0.921590,
		-0.901315, 0.426260, 0.077033,
		0.368610, 0.848168, -0.380445,
		42.319511, 30.636559, 45.140976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538803, 30.529171, 44.948689>,  <42.061481, 30.042841, 45.407288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538803, 30.529171, 44.948689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.926498, 30.544281, 44.851398>,  <42.159115, 30.553347, 44.793026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.926498, 30.544281, 44.851398>,  <41.538803, 30.529171, 44.948689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.926498, 30.544281, 44.851398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214467, -0.355278, -0.909825,
		-0.120780, 0.933997, -0.336246,
		0.969235, 0.037775, -0.243222,
		42.217270, 30.555613, 44.778431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287571, 29.871834, 44.921013>,  <41.538803, 30.529171, 44.948689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287571, 29.871834, 44.921013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.043858, 30.075058, 44.677486>,  <40.897629, 30.196993, 44.531372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.043858, 30.075058, 44.677486>,  <41.287571, 29.871834, 44.921013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043858, 30.075058, 44.677486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597284, 0.799050, 0.069071,
		0.521565, -0.321551, -0.790301,
		-0.609280, 0.508059, -0.608814,
		40.861073, 30.227476, 44.494843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523357, 30.119616, 44.256924>,  <41.287571, 29.871834, 44.921013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523357, 30.119616, 44.256924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.235561, 30.380924, 44.351219>,  <41.062885, 30.537710, 44.407799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.235561, 30.380924, 44.351219>,  <41.523357, 30.119616, 44.256924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235561, 30.380924, 44.351219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634224, 0.756352, -0.160290,
		-0.283017, 0.034186, -0.958506,
		-0.719487, 0.653272, 0.235742,
		41.019714, 30.576906, 44.421940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.406338, 30.631231, 43.723312>,  <41.523357, 30.119616, 44.256924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.406338, 30.631231, 43.723312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.381008, 30.795357, 44.087212>,  <41.365810, 30.893831, 44.305550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.381008, 30.795357, 44.087212>,  <41.406338, 30.631231, 43.723312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.381008, 30.795357, 44.087212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695491, 0.671903, -0.254634,
		-0.715739, 0.616596, -0.327913,
		-0.063320, 0.410312, 0.909744,
		41.362011, 30.918451, 44.360134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175613, 31.332298, 43.743275>,  <41.406338, 30.631231, 43.723312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175613, 31.332298, 43.743275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.446537, 31.356804, 44.036530>,  <41.609093, 31.371508, 44.212482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.446537, 31.356804, 44.036530>,  <41.175613, 31.332298, 43.743275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446537, 31.356804, 44.036530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462308, 0.739751, -0.488918,
		-0.572295, 0.670087, 0.472719,
		0.677311, 0.061264, 0.733141,
		41.649731, 31.375183, 44.256474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405243, 31.989052, 43.710094>,  <41.175613, 31.332298, 43.743275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.405243, 31.989052, 43.710094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.681236, 31.787361, 43.917820>,  <41.846832, 31.666348, 44.042454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.681236, 31.787361, 43.917820>,  <41.405243, 31.989052, 43.710094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681236, 31.787361, 43.917820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698769, 0.651155, -0.296174,
		-0.188813, 0.567233, 0.801621,
		0.689979, -0.504226, 0.519312,
		41.888229, 31.636093, 44.073612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.137802, 32.027054, 43.857895>,  <41.405243, 31.989052, 43.710094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.137802, 32.027054, 43.857895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.370747, 32.181469, 44.144066>,  <42.510513, 32.274120, 44.315769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.370747, 32.181469, 44.144066>,  <42.137802, 32.027054, 43.857895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.370747, 32.181469, 44.144066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812874, -0.265861, -0.518222,
		-0.009851, 0.883341, -0.468628,
		0.582357, 0.386040, 0.715425,
		42.545452, 32.297279, 44.358692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.692886, 32.228378, 43.383339>,  <42.137802, 32.027054, 43.857895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.692886, 32.228378, 43.383339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.790756, 32.162262, 43.765503>,  <42.849480, 32.122593, 43.994801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.790756, 32.162262, 43.765503>,  <42.692886, 32.228378, 43.383339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.790756, 32.162262, 43.765503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947948, -0.166319, -0.271536,
		0.203786, 0.972120, 0.115993,
		0.244674, -0.165291, 0.955413,
		42.864159, 32.112675, 44.052128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.299217, 32.592403, 43.402538>,  <42.692886, 32.228378, 43.383339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.299217, 32.592403, 43.402538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.288116, 32.310818, 43.686417>,  <43.281456, 32.141869, 43.856743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.288116, 32.310818, 43.686417>,  <43.299217, 32.592403, 43.402538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.288116, 32.310818, 43.686417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970781, -0.188273, -0.148787,
		0.238357, 0.684831, 0.688616,
		-0.027754, -0.703960, 0.709697,
		43.279789, 32.099628, 43.899326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.691936, 32.568169, 42.839928>,  <43.299217, 32.592403, 43.402538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.691936, 32.568169, 42.839928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.644493, 32.410912, 42.475208>,  <43.616028, 32.316559, 42.256378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.644493, 32.410912, 42.475208>,  <43.691936, 32.568169, 42.839928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.644493, 32.410912, 42.475208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510956, 0.811530, -0.283447,
		0.851385, 0.432268, -0.297132,
		-0.118607, -0.393144, -0.911795,
		43.608910, 32.292969, 42.201672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.834713, 33.006969, 42.307430>,  <43.691936, 32.568169, 42.839928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.834713, 33.006969, 42.307430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.558247, 32.767754, 42.145126>,  <43.392368, 32.624222, 42.047745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.558247, 32.767754, 42.145126>,  <43.834713, 33.006969, 42.307430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.558247, 32.767754, 42.145126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476601, 0.799238, -0.366157,
		0.543274, -0.059689, -0.837431,
		-0.691162, -0.598043, -0.405757,
		43.350899, 32.588341, 42.023399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.688843, 33.178207, 41.554638>,  <43.834713, 33.006969, 42.307430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.688843, 33.178207, 41.554638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.369698, 32.983917, 41.697456>,  <43.178211, 32.867344, 41.783146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.369698, 32.983917, 41.697456>,  <43.688843, 33.178207, 41.554638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.369698, 32.983917, 41.697456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602377, 0.665463, -0.440795,
		-0.023493, -0.566770, -0.823541,
		-0.797866, -0.485726, 0.357043,
		43.130337, 32.838200, 41.804569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.296616, 33.035324, 40.908733>,  <43.688843, 33.178207, 41.554638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.296616, 33.035324, 40.908733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.048107, 33.020618, 41.221825>,  <42.899002, 33.011795, 41.409679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.048107, 33.020618, 41.221825>,  <43.296616, 33.035324, 40.908733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.048107, 33.020618, 41.221825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728906, 0.393734, -0.560063,
		-0.287599, -0.918489, -0.271412,
		-0.621276, -0.036761, 0.782729,
		42.861725, 33.009590, 41.456642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954113, 33.683960, 40.876163>,  <43.296616, 33.035324, 40.908733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.954113, 33.683960, 40.876163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.107925, 33.842278, 40.542580>,  <43.200214, 33.937267, 40.342430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.107925, 33.842278, 40.542580>,  <42.954113, 33.683960, 40.876163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.107925, 33.842278, 40.542580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416752, -0.880545, -0.225742,
		-0.823682, -0.260746, -0.503547,
		0.384534, 0.395794, -0.833955,
		43.223286, 33.961014, 40.292393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.636051, 33.440563, 40.206291>,  <42.954113, 33.683960, 40.876163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.636051, 33.440563, 40.206291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.022285, 33.538036, 40.242653>,  <43.254025, 33.596519, 40.264469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.022285, 33.538036, 40.242653>,  <42.636051, 33.440563, 40.206291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.022285, 33.538036, 40.242653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259597, -0.924325, -0.279702,
		0.015865, 0.293674, -0.955774,
		0.965587, 0.243678, 0.090901,
		43.311962, 33.611141, 40.269924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.982067, 33.494335, 39.498535>,  <42.636051, 33.440563, 40.206291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.982067, 33.494335, 39.498535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.156052, 33.359932, 39.832699>,  <43.260441, 33.279289, 40.033195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.156052, 33.359932, 39.832699>,  <42.982067, 33.494335, 39.498535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.156052, 33.359932, 39.832699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101644, -0.903518, -0.416322,
		0.894694, 0.265998, -0.358842,
		0.434960, -0.336007, 0.835409,
		43.286541, 33.259129, 40.083321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.679939, 33.500080, 39.732914>,  <42.982067, 33.494335, 39.498535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.679939, 33.500080, 39.732914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.535217, 33.679283, 39.405895>,  <43.448383, 33.786804, 39.209682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.535217, 33.679283, 39.405895>,  <43.679939, 33.500080, 39.732914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.535217, 33.679283, 39.405895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854837, 0.509326, -0.099207,
		0.371952, -0.734763, -0.567253,
		-0.361810, 0.448008, -0.817547,
		43.426674, 33.813686, 39.160629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.250824, 33.887543, 39.508156>,  <43.679939, 33.500080, 39.732914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.250824, 33.887543, 39.508156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.995041, 33.990490, 39.218369>,  <43.841572, 34.052258, 39.044495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.995041, 33.990490, 39.218369>,  <44.250824, 33.887543, 39.508156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.995041, 33.990490, 39.218369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691106, 0.605282, -0.394975,
		0.336853, -0.753255, -0.564922,
		-0.639454, 0.257372, -0.724471,
		43.803204, 34.067703, 39.001026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.505718, 33.740913, 38.849075>,  <44.250824, 33.887543, 39.508156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.505718, 33.740913, 38.849075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.256691, 34.053898, 38.843941>,  <44.107273, 34.241688, 38.840858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.256691, 34.053898, 38.843941>,  <44.505718, 33.740913, 38.849075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.256691, 34.053898, 38.843941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697274, 0.547193, -0.463021,
		-0.355271, -0.297213, -0.886254,
		-0.622568, 0.782460, -0.012837,
		44.069920, 34.288635, 38.840088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.486012, 33.922329, 38.189571>,  <44.505718, 33.740913, 38.849075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.486012, 33.922329, 38.189571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.446751, 34.229389, 38.442894>,  <44.423195, 34.413624, 38.594887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.446751, 34.229389, 38.442894>,  <44.486012, 33.922329, 38.189571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.446751, 34.229389, 38.442894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722405, 0.492658, -0.485200,
		-0.684469, 0.409883, -0.602908,
		-0.098153, 0.767648, 0.633311,
		44.417305, 34.459682, 38.632889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.211018, 33.909428, 38.364017>,  <44.486012, 33.922329, 38.189571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.211018, 33.909428, 38.364017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.002758, 34.126453, 38.100338>,  <44.877804, 34.256668, 37.942131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.002758, 34.126453, 38.100338>,  <45.211018, 33.909428, 38.364017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.002758, 34.126453, 38.100338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832605, 0.493529, -0.251392,
		0.188938, -0.679741, -0.708699,
		-0.520645, 0.542569, -0.659202,
		44.846565, 34.289223, 37.902576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.372841, 33.858555, 37.587452>,  <45.211018, 33.909428, 38.364017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.372841, 33.858555, 37.587452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.272514, 34.221340, 37.722813>,  <45.212318, 34.439011, 37.804031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.272514, 34.221340, 37.722813>,  <45.372841, 33.858555, 37.587452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.272514, 34.221340, 37.722813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967252, 0.248860, 0.049924,
		-0.038936, 0.339844, -0.939676,
		-0.250814, 0.906959, 0.338404,
		45.197269, 34.493427, 37.824333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.779232, 34.268139, 37.108036>,  <45.372841, 33.858555, 37.587452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.779232, 34.268139, 37.108036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.762356, 34.441368, 37.468185>,  <45.752232, 34.545303, 37.684277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.762356, 34.441368, 37.468185>,  <45.779232, 34.268139, 37.108036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.762356, 34.441368, 37.468185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983006, 0.179141, -0.040101,
		-0.178661, 0.883380, -0.433268,
		-0.042192, 0.433069, 0.900373,
		45.749699, 34.571289, 37.738297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.944759, 35.065273, 37.219433>,  <45.779232, 34.268139, 37.108036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.944759, 35.065273, 37.219433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.050182, 34.828259, 37.523914>,  <46.113438, 34.686050, 37.706604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.050182, 34.828259, 37.523914>,  <45.944759, 35.065273, 37.219433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.050182, 34.828259, 37.523914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962953, 0.208310, -0.171256,
		-0.057091, 0.778142, 0.625488,
		0.263556, -0.592538, 0.761207,
		46.129250, 34.650497, 37.752277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.551083, 35.366920, 37.443947>,  <45.944759, 35.065273, 37.219433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.551083, 35.366920, 37.443947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.571983, 35.041073, 37.675003>,  <46.584526, 34.845566, 37.813637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.571983, 35.041073, 37.675003>,  <46.551083, 35.366920, 37.443947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.571983, 35.041073, 37.675003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947914, 0.222460, 0.227970,
		-0.314210, 0.535644, 0.783809,
		0.052255, -0.814614, 0.577644,
		46.587662, 34.796688, 37.848297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.243347, 35.482845, 37.669140>,  <46.551083, 35.366920, 37.443947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.243347, 35.482845, 37.669140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.118031, 35.133224, 37.817673>,  <47.042839, 34.923450, 37.906792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.118031, 35.133224, 37.817673>,  <47.243347, 35.482845, 37.669140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.118031, 35.133224, 37.817673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923699, -0.189668, 0.332877,
		-0.220522, 0.447282, 0.866781,
		-0.313290, -0.874051, 0.371328,
		47.024044, 34.871010, 37.929070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.000530, 35.621437, 36.894714>,  <47.243347, 35.482845, 37.669140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.000530, 35.621437, 36.894714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.270920, 35.908508, 36.961636>,  <47.433155, 36.080750, 37.001789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.270920, 35.908508, 36.961636>,  <47.000530, 35.621437, 36.894714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.270920, 35.908508, 36.961636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090023, 0.305746, -0.947848,
		-0.731402, 0.625664, 0.271285,
		0.675979, 0.717680, 0.167299,
		47.473713, 36.123814, 37.011826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.781010, 36.285553, 36.593132>,  <47.000530, 35.621437, 36.894714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.781010, 36.285553, 36.593132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.178459, 36.285995, 36.638233>,  <47.416927, 36.286263, 36.665295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.178459, 36.285995, 36.638233>,  <46.781010, 36.285553, 36.593132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.178459, 36.285995, 36.638233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102544, 0.406937, -0.907682,
		-0.046890, 0.913455, 0.404228,
		0.993623, 0.001110, 0.112751,
		47.476547, 36.286327, 36.672058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.082882, 36.972294, 36.463482>,  <46.781010, 36.285553, 36.593132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.082882, 36.972294, 36.463482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.366554, 36.714909, 36.348232>,  <47.536758, 36.560478, 36.279083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.366554, 36.714909, 36.348232>,  <47.082882, 36.972294, 36.463482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.366554, 36.714909, 36.348232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052637, 0.455850, -0.888499,
		0.703060, 0.614940, 0.357150,
		0.709180, -0.643467, -0.288121,
		47.579308, 36.521870, 36.261795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.770390, 37.270924, 36.262154>,  <47.082882, 36.972294, 36.463482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.770390, 37.270924, 36.262154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.679932, 36.938133, 36.059502>,  <47.625656, 36.738461, 35.937908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.679932, 36.938133, 36.059502>,  <47.770390, 37.270924, 36.262154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.679932, 36.938133, 36.059502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233510, 0.458640, -0.857393,
		0.945690, -0.312202, 0.090553,
		-0.226149, -0.831973, -0.506633,
		47.612087, 36.688541, 35.907513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.379433, 37.030518, 35.948208>,  <47.770390, 37.270924, 36.262154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.379433, 37.030518, 35.948208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.040680, 36.946461, 35.752804>,  <47.837429, 36.896027, 35.635563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.040680, 36.946461, 35.752804>,  <48.379433, 37.030518, 35.948208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.040680, 36.946461, 35.752804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383535, 0.394969, -0.834805,
		0.368364, -0.894340, -0.253899,
		-0.846882, -0.210133, -0.488503,
		47.786617, 36.883419, 35.606251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.507236, 36.512829, 35.358749>,  <48.379433, 37.030518, 35.948208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.507236, 36.512829, 35.358749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.198860, 36.739990, 35.243416>,  <48.013836, 36.876286, 35.174217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.198860, 36.739990, 35.243416>,  <48.507236, 36.512829, 35.358749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.198860, 36.739990, 35.243416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589904, 0.466003, -0.659435,
		-0.240128, -0.678476, -0.694268,
		-0.770942, 0.567900, -0.288335,
		47.967579, 36.910362, 35.156914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.520443, 36.109509, 34.814682>,  <48.507236, 36.512829, 35.358749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.520443, 36.109509, 34.814682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.667484, 35.738354, 34.789742>,  <48.755711, 35.515659, 34.774776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.667484, 35.738354, 34.789742>,  <48.520443, 36.109509, 34.814682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.667484, 35.738354, 34.789742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847198, -0.361780, 0.389065,
		-0.383566, -0.090201, -0.919098,
		0.367605, -0.927890, -0.062349,
		48.777767, 35.459988, 34.771038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.995415, 35.892841, 34.486553>,  <48.520443, 36.109509, 34.814682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.995415, 35.892841, 34.486553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.212601, 35.656116, 34.724865>,  <48.342911, 35.514080, 34.867851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.212601, 35.656116, 34.724865>,  <47.995415, 35.892841, 34.486553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.212601, 35.656116, 34.724865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805091, -0.165118, 0.569705,
		-0.238785, -0.788983, -0.566116,
		0.542964, -0.591812, 0.595775,
		48.375488, 35.478573, 34.903599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.659786, 35.287289, 34.454056>,  <47.995415, 35.892841, 34.486553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.659786, 35.287289, 34.454056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.837330, 35.359760, 34.805092>,  <47.943855, 35.403244, 35.015713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.837330, 35.359760, 34.805092>,  <47.659786, 35.287289, 34.454056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.837330, 35.359760, 34.805092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862507, -0.179246, 0.473236,
		0.243043, -0.966978, 0.076707,
		0.443859, 0.181177, 0.877590,
		47.970490, 35.414112, 35.068367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<30.922831, 34.968098, 56.309299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.212366, 34.758579, 56.488945>,  <31.386087, 34.632870, 56.596733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.212366, 34.758579, 56.488945>,  <30.922831, 34.968098, 56.309299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212366, 34.758579, 56.488945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415188, -0.189213, -0.889841,
		0.551069, 0.830566, 0.080512,
		0.723838, -0.523792, 0.449110,
		31.429518, 34.601440, 56.623676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508007, 35.028282, 55.850491>,  <30.922831, 34.968098, 56.309299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508007, 35.028282, 55.850491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.602665, 34.725315, 56.093906>,  <31.659460, 34.543537, 56.239956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.602665, 34.725315, 56.093906>,  <31.508007, 35.028282, 55.850491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602665, 34.725315, 56.093906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455683, -0.466650, -0.758018,
		0.858109, 0.456683, 0.234711,
		0.236646, -0.757416, 0.608539,
		31.673658, 34.498089, 56.276466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196671, 35.033127, 55.835251>,  <31.508007, 35.028282, 55.850491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196671, 35.033127, 55.835251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.171764, 34.668922, 55.998756>,  <32.156822, 34.450397, 56.096859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.171764, 34.668922, 55.998756>,  <32.196671, 35.033127, 55.835251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171764, 34.668922, 55.998756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642506, -0.349975, -0.681691,
		0.763746, 0.220187, 0.606803,
		-0.062267, -0.910514, 0.408764,
		32.153084, 34.395767, 56.121384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882942, 34.783142, 55.981934>,  <32.196671, 35.033127, 55.835251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882942, 34.783142, 55.981934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.640202, 34.467690, 55.942337>,  <32.494556, 34.278419, 55.918579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.640202, 34.467690, 55.942337>,  <32.882942, 34.783142, 55.981934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640202, 34.467690, 55.942337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606646, -0.379106, -0.698755,
		0.513532, -0.484088, 0.708479,
		-0.606848, -0.788630, -0.098987,
		32.458145, 34.231102, 55.912640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341145, 34.172020, 55.885807>,  <32.882942, 34.783142, 55.981934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341145, 34.172020, 55.885807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.986378, 34.044121, 55.752453>,  <32.773518, 33.967381, 55.672440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.986378, 34.044121, 55.752453>,  <33.341145, 34.172020, 55.885807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986378, 34.044121, 55.752453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446112, -0.405599, -0.797793,
		0.119868, -0.856302, 0.502373,
		-0.886914, -0.319745, -0.333388,
		32.720303, 33.948196, 55.652435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555199, 33.523617, 55.550308>,  <33.341145, 34.172020, 55.885807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555199, 33.523617, 55.550308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.177086, 33.562279, 55.425663>,  <32.950218, 33.585476, 55.350876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.177086, 33.562279, 55.425663>,  <33.555199, 33.523617, 55.550308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177086, 33.562279, 55.425663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256001, -0.372354, -0.892085,
		-0.202249, -0.923045, 0.327237,
		-0.945282, 0.096651, -0.311608,
		32.893501, 33.591274, 55.332180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329185, 32.769775, 55.328442>,  <33.555199, 33.523617, 55.550308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329185, 32.769775, 55.328442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.143795, 33.081551, 55.159843>,  <33.032562, 33.268616, 55.058685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.143795, 33.081551, 55.159843>,  <33.329185, 32.769775, 55.328442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143795, 33.081551, 55.159843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262963, -0.333261, -0.905421,
		-0.846191, -0.530481, -0.050505,
		-0.463477, 0.779440, -0.421499,
		33.004753, 33.315384, 55.033394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827030, 32.468636, 54.845905>,  <33.329185, 32.769775, 55.328442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827030, 32.468636, 54.845905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.938492, 32.838871, 54.743431>,  <33.005367, 33.061012, 54.681946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.938492, 32.838871, 54.743431>,  <32.827030, 32.468636, 54.845905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938492, 32.838871, 54.743431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198587, -0.316521, -0.927566,
		-0.939637, 0.207591, -0.272009,
		0.278651, 0.925592, -0.256190,
		33.022087, 33.116550, 54.666573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522392, 32.592297, 54.122906>,  <32.827030, 32.468636, 54.845905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522392, 32.592297, 54.122906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.797073, 32.882309, 54.143997>,  <32.961880, 33.056316, 54.156651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.797073, 32.882309, 54.143997>,  <32.522392, 32.592297, 54.122906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797073, 32.882309, 54.143997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156288, -0.076406, -0.984752,
		-0.709942, 0.684470, -0.165781,
		0.686700, 0.725026, 0.052730,
		33.003082, 33.099815, 54.159817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484787, 32.903389, 53.468475>,  <32.522392, 32.592297, 54.122906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484787, 32.903389, 53.468475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.841137, 33.024696, 53.603756>,  <33.054947, 33.097481, 53.684925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.841137, 33.024696, 53.603756>,  <32.484787, 32.903389, 53.468475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841137, 33.024696, 53.603756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382848, -0.100547, -0.918323,
		-0.244490, 0.947587, -0.205678,
		0.890872, 0.303264, 0.338199,
		33.108398, 33.115677, 53.705215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759487, 33.477230, 52.970181>,  <32.484787, 32.903389, 53.468475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759487, 33.477230, 52.970181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.069099, 33.349072, 53.188618>,  <33.254868, 33.272179, 53.319679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.069099, 33.349072, 53.188618>,  <32.759487, 33.477230, 52.970181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069099, 33.349072, 53.188618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557683, -0.063365, -0.827632,
		0.299771, 0.945163, 0.129631,
		0.774033, -0.320393, 0.546097,
		33.301308, 33.252953, 53.352448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461407, 33.860176, 52.743404>,  <32.759487, 33.477230, 52.970181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461407, 33.860176, 52.743404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.581146, 33.531437, 52.937290>,  <33.652988, 33.334194, 53.053623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.581146, 33.531437, 52.937290>,  <33.461407, 33.860176, 52.743404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581146, 33.531437, 52.937290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542270, -0.271450, -0.795147,
		0.785069, 0.500874, 0.364407,
		0.299350, -0.821852, 0.484716,
		33.670952, 33.284882, 53.082706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159866, 33.766994, 52.575562>,  <33.461407, 33.860176, 52.743404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159866, 33.766994, 52.575562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.048466, 33.400238, 52.689930>,  <33.981625, 33.180183, 52.758553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.048466, 33.400238, 52.689930>,  <34.159866, 33.766994, 52.575562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048466, 33.400238, 52.689930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502173, -0.392784, -0.770417,
		0.818693, -0.070981, 0.569828,
		-0.278504, -0.916887, 0.285925,
		33.964916, 33.125172, 52.775707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778000, 33.410770, 52.692875>,  <34.159866, 33.766994, 52.575562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778000, 33.410770, 52.692875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.476223, 33.159134, 52.617966>,  <34.295158, 33.008152, 52.573021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.476223, 33.159134, 52.617966>,  <34.778000, 33.410770, 52.692875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476223, 33.159134, 52.617966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489975, -0.349925, -0.798422,
		0.436746, -0.694119, 0.572234,
		-0.754439, -0.629088, -0.187273,
		34.249893, 32.970409, 52.561783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115131, 32.830311, 52.487305>,  <34.778000, 33.410770, 52.692875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115131, 32.830311, 52.487305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.759056, 32.676178, 52.390076>,  <34.545410, 32.583698, 52.331738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.759056, 32.676178, 52.390076>,  <35.115131, 32.830311, 52.487305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759056, 32.676178, 52.390076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423679, -0.503967, -0.752671,
		0.167527, -0.773003, 0.611883,
		-0.890186, -0.385335, -0.243077,
		34.492001, 32.560577, 52.317154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179821, 32.075233, 52.419495>,  <35.115131, 32.830311, 52.487305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179821, 32.075233, 52.419495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.867706, 32.168484, 52.187359>,  <34.680435, 32.224434, 52.048077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.867706, 32.168484, 52.187359>,  <35.179821, 32.075233, 52.419495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867706, 32.168484, 52.187359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396027, -0.534017, -0.746986,
		-0.484050, -0.812700, 0.324369,
		-0.780294, 0.233120, -0.580342,
		34.633617, 32.238422, 52.013256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865452, 31.450468, 52.217243>,  <35.179821, 32.075233, 52.419495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865452, 31.450468, 52.217243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.722183, 31.711292, 51.949951>,  <34.636223, 31.867786, 51.789577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.722183, 31.711292, 51.949951>,  <34.865452, 31.450468, 52.217243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722183, 31.711292, 51.949951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328648, -0.581852, -0.743935,
		-0.873901, -0.486068, -0.005895,
		-0.358173, 0.652063, -0.668226,
		34.614731, 31.906912, 51.749485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395950, 31.038366, 51.735996>,  <34.865452, 31.450468, 52.217243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395950, 31.038366, 51.735996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.496391, 31.374258, 51.543415>,  <34.556656, 31.575792, 51.427864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.496391, 31.374258, 51.543415>,  <34.395950, 31.038366, 51.735996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496391, 31.374258, 51.543415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182355, -0.529527, -0.828461,
		-0.950628, 0.120234, -0.286095,
		0.251105, 0.839729, -0.481457,
		34.571724, 31.626177, 51.398979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989891, 31.073946, 51.136040>,  <34.395950, 31.038366, 51.735996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989891, 31.073946, 51.136040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.315601, 31.294067, 51.062160>,  <34.511028, 31.426140, 51.017834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.315601, 31.294067, 51.062160>,  <33.989891, 31.073946, 51.136040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315601, 31.294067, 51.062160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125278, -0.477289, -0.869770,
		-0.566792, 0.685098, -0.457588,
		0.814280, 0.550305, -0.184696,
		34.559887, 31.459158, 51.006752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873158, 31.347256, 50.449032>,  <33.989891, 31.073946, 51.136040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873158, 31.347256, 50.449032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.264809, 31.356152, 50.529846>,  <34.499798, 31.361490, 50.578335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.264809, 31.356152, 50.529846>,  <33.873158, 31.347256, 50.449032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264809, 31.356152, 50.529846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197349, -0.341904, -0.918779,
		0.048641, 0.939472, -0.339156,
		0.979126, 0.022242, 0.202034,
		34.558548, 31.362823, 50.590458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158737, 31.513653, 49.843170>,  <33.873158, 31.347256, 50.449032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158737, 31.513653, 49.843170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.470242, 31.364532, 50.044979>,  <34.657146, 31.275061, 50.166065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.470242, 31.364532, 50.044979>,  <34.158737, 31.513653, 49.843170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470242, 31.364532, 50.044979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352913, -0.404556, -0.843675,
		0.518633, 0.835077, -0.183486,
		0.778763, -0.372803, 0.504525,
		34.703869, 31.252691, 50.196335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766388, 31.257380, 49.173157>,  <34.158737, 31.513653, 49.843170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766388, 31.257380, 49.173157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.501801, 31.278566, 48.873917>,  <33.343048, 31.291279, 48.694374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.501801, 31.278566, 48.873917>,  <33.766388, 31.257380, 49.173157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501801, 31.278566, 48.873917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720842, 0.230407, 0.653681,
		0.206992, 0.971652, -0.114225,
		-0.661468, 0.052968, -0.748100,
		33.303360, 31.294456, 48.649487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555855, 31.872410, 49.264370>,  <33.766388, 31.257380, 49.173157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555855, 31.872410, 49.264370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.284927, 31.680222, 49.041519>,  <33.122372, 31.564909, 48.907806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.284927, 31.680222, 49.041519>,  <33.555855, 31.872410, 49.264370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284927, 31.680222, 49.041519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706869, 0.215120, 0.673839,
		-0.203909, 0.850219, -0.485333,
		-0.677316, -0.480469, -0.557129,
		33.081734, 31.536081, 48.874382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082096, 32.379841, 49.069664>,  <33.555855, 31.872410, 49.264370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082096, 32.379841, 49.069664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.904507, 32.021942, 49.050377>,  <32.797955, 31.807203, 49.038807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.904507, 32.021942, 49.050377>,  <33.082096, 32.379841, 49.069664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904507, 32.021942, 49.050377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463430, 0.183237, 0.866981,
		-0.766890, 0.407259, -0.496003,
		-0.443972, -0.894742, -0.048213,
		32.771317, 31.753519, 49.035912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438206, 32.468071, 49.186504>,  <33.082096, 32.379841, 49.069664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438206, 32.468071, 49.186504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.455967, 32.074722, 49.256943>,  <32.466625, 31.838713, 49.299206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.455967, 32.074722, 49.256943>,  <32.438206, 32.468071, 49.186504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455967, 32.074722, 49.256943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562900, 0.120998, 0.817620,
		-0.825331, -0.135435, -0.548166,
		0.044407, -0.983370, 0.176100,
		32.469288, 31.779711, 49.309772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794271, 32.310333, 49.333096>,  <32.438206, 32.468071, 49.186504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794271, 32.310333, 49.333096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.987709, 31.992542, 49.480034>,  <32.103771, 31.801867, 49.568195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.987709, 31.992542, 49.480034>,  <31.794271, 32.310333, 49.333096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987709, 31.992542, 49.480034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531616, 0.066812, 0.844346,
		-0.695359, -0.603605, -0.390048,
		0.483592, -0.794479, 0.367344,
		32.132786, 31.754198, 49.590237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295170, 31.875029, 49.544350>,  <31.794271, 32.310333, 49.333096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295170, 31.875029, 49.544350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.620556, 31.780399, 49.756882>,  <31.815786, 31.723621, 49.884399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.620556, 31.780399, 49.756882>,  <31.295170, 31.875029, 49.544350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620556, 31.780399, 49.756882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554752, -0.041164, 0.830997,
		-0.174719, -0.970742, -0.164724,
		0.813464, -0.236572, 0.531329,
		31.864595, 31.709427, 49.916279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962521, 31.443968, 50.074966>,  <31.295170, 31.875029, 49.544350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962521, 31.443968, 50.074966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.334000, 31.559469, 50.168041>,  <31.556887, 31.628771, 50.223888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.334000, 31.559469, 50.168041>,  <30.962521, 31.443968, 50.074966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334000, 31.559469, 50.168041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240191, -0.009708, 0.970677,
		0.282547, -0.957354, 0.060340,
		0.928695, 0.288755, 0.232690,
		31.612608, 31.646095, 50.237850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102589, 31.036755, 50.665207>,  <30.962521, 31.443968, 50.074966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102589, 31.036755, 50.665207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.363441, 31.339741, 50.652752>,  <31.519953, 31.521532, 50.645279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.363441, 31.339741, 50.652752>,  <31.102589, 31.036755, 50.665207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363441, 31.339741, 50.652752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253352, 0.256469, 0.932757,
		0.714517, -0.600393, 0.359157,
		0.652133, 0.757464, -0.031141,
		31.559082, 31.566980, 50.643410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504038, 31.061218, 51.332214>,  <31.102589, 31.036755, 50.665207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504038, 31.061218, 51.332214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.547937, 31.427586, 51.177788>,  <31.574278, 31.647406, 51.085133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.547937, 31.427586, 51.177788>,  <31.504038, 31.061218, 51.332214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547937, 31.427586, 51.177788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195216, 0.400707, 0.895167,
		0.974600, -0.022877, 0.222779,
		0.109748, 0.915920, -0.386064,
		31.580862, 31.702362, 51.061970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746616, 31.427137, 51.819229>,  <31.504038, 31.061218, 51.332214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746616, 31.427137, 51.819229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.624968, 31.710489, 51.564449>,  <31.551979, 31.880501, 51.411583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.624968, 31.710489, 51.564449>,  <31.746616, 31.427137, 51.819229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.624968, 31.710489, 51.564449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524362, 0.433738, 0.732745,
		0.795332, 0.556837, 0.239539,
		-0.304123, 0.708381, -0.636950,
		31.533731, 31.923004, 51.373363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865404, 32.080048, 52.217461>,  <31.746616, 31.427137, 51.819229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865404, 32.080048, 52.217461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.594473, 32.147148, 51.930939>,  <31.431915, 32.187408, 51.759026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.594473, 32.147148, 51.930939>,  <31.865404, 32.080048, 52.217461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594473, 32.147148, 51.930939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511573, 0.592321, 0.622454,
		0.528699, 0.788045, -0.315378,
		-0.677327, 0.167752, -0.716302,
		31.391275, 32.197475, 51.716049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890635, 32.668808, 52.115475>,  <31.865404, 32.080048, 52.217461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890635, 32.668808, 52.115475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.522346, 32.570286, 51.994408>,  <31.301374, 32.511173, 51.921768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.522346, 32.570286, 51.994408>,  <31.890635, 32.668808, 52.115475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522346, 32.570286, 51.994408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387719, 0.489658, 0.780967,
		-0.044157, 0.836401, -0.546337,
		-0.920720, -0.246310, -0.302667,
		31.246130, 32.496391, 51.903606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532686, 33.298397, 52.247284>,  <31.890635, 32.668808, 52.115475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532686, 33.298397, 52.247284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.254673, 33.022701, 52.165428>,  <31.087864, 32.857285, 52.116314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.254673, 33.022701, 52.165428>,  <31.532686, 33.298397, 52.247284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254673, 33.022701, 52.165428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656110, 0.491631, 0.572555,
		-0.294018, 0.532214, -0.793916,
		-0.695035, -0.689237, -0.204642,
		31.046162, 32.815929, 52.104034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922422, 33.541294, 51.828976>,  <31.532686, 33.298397, 52.247284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922422, 33.541294, 51.828976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.781160, 33.222363, 52.024754>,  <30.696404, 33.031006, 52.142220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.781160, 33.222363, 52.024754>,  <30.922422, 33.541294, 51.828976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781160, 33.222363, 52.024754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670234, 0.580616, 0.462246,
		-0.652738, -0.164796, -0.739443,
		-0.353156, -0.797325, 0.489442,
		30.675213, 32.983166, 52.171585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.177269, 33.604412, 51.741962>,  <30.922422, 33.541294, 51.828976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.177269, 33.604412, 51.741962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.276249, 33.399746, 52.071075>,  <30.335638, 33.276947, 52.268543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.276249, 33.399746, 52.071075>,  <30.177269, 33.604412, 51.741962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276249, 33.399746, 52.071075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649767, 0.542293, 0.532654,
		-0.718728, -0.666423, -0.198270,
		0.247452, -0.511663, 0.822781,
		30.350485, 33.246246, 52.317909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629181, 33.646069, 52.159195>,  <30.177269, 33.604412, 51.741962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629181, 33.646069, 52.159195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.915588, 33.532444, 52.414265>,  <30.087433, 33.464272, 52.567307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.915588, 33.532444, 52.414265>,  <29.629181, 33.646069, 52.159195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915588, 33.532444, 52.414265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529853, 0.373586, 0.761373,
		-0.454500, -0.883031, 0.116985,
		0.716020, -0.284060, 0.637672,
		30.130394, 33.447227, 52.605568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.315594, 33.333309, 52.662457>,  <29.629181, 33.646069, 52.159195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.315594, 33.333309, 52.662457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.660494, 33.441071, 52.834011>,  <29.867434, 33.505726, 52.936943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.660494, 33.441071, 52.834011>,  <29.315594, 33.333309, 52.662457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660494, 33.441071, 52.834011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498069, 0.297339, 0.814565,
		0.091915, -0.915978, 0.390559,
		0.862252, 0.269396, 0.428890,
		29.919170, 33.521889, 52.962677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.152319, 33.299778, 53.314240>,  <29.315594, 33.333309, 52.662457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.152319, 33.299778, 53.314240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.498568, 33.498703, 53.337505>,  <29.706316, 33.618057, 53.351463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.498568, 33.498703, 53.337505>,  <29.152319, 33.299778, 53.314240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498568, 33.498703, 53.337505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374616, 0.566191, 0.734228,
		0.332208, -0.657352, 0.676407,
		0.865622, 0.497309, 0.058162,
		29.758253, 33.647896, 53.354954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339781, 33.336189, 54.035034>,  <29.152319, 33.299778, 53.314240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339781, 33.336189, 54.035034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.559715, 33.643803, 53.904640>,  <29.691675, 33.828373, 53.826405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.559715, 33.643803, 53.904640>,  <29.339781, 33.336189, 54.035034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.559715, 33.643803, 53.904640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278938, 0.536922, 0.796183,
		0.787321, -0.346841, 0.509733,
		0.549836, 0.769035, -0.325983,
		29.724667, 33.874512, 53.806847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<30.084759, 33.636448, 54.492840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975824, 33.953030, 54.273956>,  <29.910463, 34.142979, 54.142628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975824, 33.953030, 54.273956>,  <30.084759, 33.636448, 54.492840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975824, 33.953030, 54.273956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216896, 0.503569, 0.836287,
		0.937438, 0.346437, 0.034524,
		-0.272335, 0.791454, -0.547205,
		29.894123, 34.190468, 54.109795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.559612, 34.202911, 54.734257>,  <30.084759, 33.636448, 54.492840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.559612, 34.202911, 54.734257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219231, 34.337563, 54.572983>,  <30.015001, 34.418354, 54.476219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219231, 34.337563, 54.572983>,  <30.559612, 34.202911, 54.734257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219231, 34.337563, 54.572983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239236, 0.434963, 0.868086,
		0.467591, 0.835159, -0.289601,
		-0.850955, 0.336626, -0.403184,
		29.963943, 34.438549, 54.452026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459270, 34.780556, 55.099258>,  <30.559612, 34.202911, 54.734257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459270, 34.780556, 55.099258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094709, 34.749443, 54.937618>,  <29.875973, 34.730778, 54.840633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094709, 34.749443, 54.937618>,  <30.459270, 34.780556, 55.099258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094709, 34.749443, 54.937618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383916, 0.514259, 0.766907,
		0.148162, 0.854101, -0.498558,
		-0.911404, -0.077778, -0.404096,
		29.821289, 34.726109, 54.816391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187462, 35.416275, 55.246788>,  <30.459270, 34.780556, 55.099258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187462, 35.416275, 55.246788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869572, 35.188023, 55.164043>,  <29.678837, 35.051071, 55.114395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869572, 35.188023, 55.164043>,  <30.187462, 35.416275, 55.246788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869572, 35.188023, 55.164043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486475, 0.395011, 0.779300,
		-0.362980, 0.719962, -0.591523,
		-0.794725, -0.570632, -0.206863,
		29.631155, 35.016834, 55.101986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610756, 35.851883, 55.208092>,  <30.187462, 35.416275, 55.246788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610756, 35.851883, 55.208092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476788, 35.487396, 55.304012>,  <29.396406, 35.268703, 55.361565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476788, 35.487396, 55.304012>,  <29.610756, 35.851883, 55.208092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.476788, 35.487396, 55.304012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383504, 0.364293, 0.848655,
		-0.860671, 0.192266, -0.471465,
		-0.334919, -0.911222, 0.239802,
		29.376312, 35.214031, 55.375954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977802, 36.053555, 55.444126>,  <29.610756, 35.851883, 55.208092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977802, 36.053555, 55.444126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025358, 35.680485, 55.580353>,  <29.053892, 35.456642, 55.662086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025358, 35.680485, 55.580353>,  <28.977802, 36.053555, 55.444126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.025358, 35.680485, 55.580353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617167, 0.199273, 0.761181,
		-0.777799, -0.300679, -0.551925,
		0.118888, -0.932675, 0.340563,
		29.061024, 35.400681, 55.682522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346697, 35.809082, 55.625374>,  <28.977802, 36.053555, 55.444126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.346697, 35.809082, 55.625374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.584669, 35.575470, 55.846268>,  <28.727453, 35.435303, 55.978806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.584669, 35.575470, 55.846268>,  <28.346697, 35.809082, 55.625374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584669, 35.575470, 55.846268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553429, 0.200612, 0.808376,
		-0.582902, -0.786551, -0.203870,
		0.594930, -0.584031, 0.552237,
		28.763147, 35.400261, 56.011940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.924999, 35.454460, 55.997326>,  <28.346697, 35.809082, 55.625374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.924999, 35.454460, 55.997326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.271561, 35.443829, 56.196781>,  <28.479498, 35.437450, 56.316456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.271561, 35.443829, 56.196781>,  <27.924999, 35.454460, 55.997326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.271561, 35.443829, 56.196781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488932, 0.157723, 0.857945,
		-0.101452, -0.987126, 0.123654,
		0.866402, -0.026582, 0.498639,
		28.531481, 35.435856, 56.346375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.899801, 34.952930, 56.568386>,  <27.924999, 35.454460, 55.997326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.899801, 34.952930, 56.568386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177391, 35.228630, 56.651661>,  <28.343945, 35.394051, 56.701626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177391, 35.228630, 56.651661>,  <27.899801, 34.952930, 56.568386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.177391, 35.228630, 56.651661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457383, 0.198712, 0.866784,
		0.556060, -0.696744, 0.453150,
		0.693973, 0.689247, 0.208183,
		28.385584, 35.435406, 56.714115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.795231, 35.060825, 57.232342>,  <27.899801, 34.952930, 56.568386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.795231, 35.060825, 57.232342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.058638, 35.357559, 57.181679>,  <28.216681, 35.535599, 57.151283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.058638, 35.357559, 57.181679>,  <27.795231, 35.060825, 57.232342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.058638, 35.357559, 57.181679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356473, 0.455692, 0.815642,
		0.662787, -0.491963, 0.564523,
		0.658514, 0.741834, -0.126655,
		28.256191, 35.580109, 57.143681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199013, 35.198372, 57.836849>,  <27.795231, 35.060825, 57.232342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199013, 35.198372, 57.836849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.179688, 35.546322, 57.640491>,  <28.168093, 35.755093, 57.522675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.179688, 35.546322, 57.640491>,  <28.199013, 35.198372, 57.836849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.179688, 35.546322, 57.640491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490024, 0.407621, 0.770534,
		0.870369, 0.277777, 0.406568,
		-0.048311, 0.869877, -0.490898,
		28.165194, 35.807285, 57.493221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.201498, 35.672035, 58.427944>,  <28.199013, 35.198372, 57.836849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.201498, 35.672035, 58.427944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.068415, 35.887817, 58.118549>,  <27.988565, 36.017288, 57.932911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.068415, 35.887817, 58.118549>,  <28.201498, 35.672035, 58.427944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.068415, 35.887817, 58.118549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542157, 0.561697, 0.624950,
		0.771603, 0.627280, 0.105590,
		-0.332709, 0.539459, -0.773491,
		27.968601, 36.049656, 57.886501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180891, 36.311855, 58.636124>,  <28.201498, 35.672035, 58.427944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180891, 36.311855, 58.636124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.935364, 36.326900, 58.320705>,  <27.788048, 36.335930, 58.131454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.935364, 36.326900, 58.320705>,  <28.180891, 36.311855, 58.636124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.935364, 36.326900, 58.320705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595965, 0.632998, 0.494105,
		0.517736, 0.773239, -0.366129,
		-0.613820, 0.037616, -0.788550,
		27.751219, 36.338184, 58.084141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.036732, 36.976002, 58.571159>,  <28.180891, 36.311855, 58.636124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.036732, 36.976002, 58.571159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.747841, 36.830441, 58.335884>,  <27.574507, 36.743103, 58.194721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.747841, 36.830441, 58.335884>,  <28.036732, 36.976002, 58.571159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.747841, 36.830441, 58.335884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589352, 0.768884, 0.247955,
		0.362012, 0.525727, -0.769778,
		-0.722227, -0.363907, -0.588183,
		27.531174, 36.721268, 58.159428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926413, 37.413521, 58.028275>,  <28.036732, 36.976002, 58.571159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.926413, 37.413521, 58.028275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579479, 37.221165, 58.079620>,  <27.371319, 37.105751, 58.110428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579479, 37.221165, 58.079620>,  <27.926413, 37.413521, 58.028275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.579479, 37.221165, 58.079620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460044, 0.872988, 0.162023,
		-0.189976, 0.081475, -0.978402,
		-0.867335, -0.480888, 0.128364,
		27.319279, 37.076897, 58.118130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.425838, 37.728714, 57.571148>,  <27.926413, 37.413521, 58.028275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.425838, 37.728714, 57.571148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.224527, 37.553398, 57.869038>,  <27.103741, 37.448208, 58.047771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.224527, 37.553398, 57.869038>,  <27.425838, 37.728714, 57.571148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.224527, 37.553398, 57.869038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618046, 0.784894, 0.044265,
		-0.603930, -0.437996, -0.665904,
		-0.503276, -0.438292, 0.744723,
		27.073544, 37.421909, 58.092453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.835003, 37.944214, 57.514343>,  <27.425838, 37.728714, 57.571148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.835003, 37.944214, 57.514343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.744108, 37.808651, 57.879528>,  <26.689571, 37.727314, 58.098640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.744108, 37.808651, 57.879528>,  <26.835003, 37.944214, 57.514343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.744108, 37.808651, 57.879528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627564, 0.767832, 0.128832,
		-0.744666, -0.543668, -0.387168,
		-0.227238, -0.338909, 0.912964,
		26.675938, 37.706978, 58.153416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.138365, 38.002823, 57.599731>,  <26.835003, 37.944214, 57.514343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.138365, 38.002823, 57.599731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.273647, 37.967346, 57.974483>,  <26.354816, 37.946060, 58.199337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.273647, 37.967346, 57.974483>,  <26.138365, 38.002823, 57.599731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.273647, 37.967346, 57.974483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500522, 0.826109, 0.258884,
		-0.796929, -0.556487, 0.235004,
		0.338205, -0.088688, 0.936884,
		26.375109, 37.940739, 58.255550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.508295, 38.077412, 57.951881>,  <26.138365, 38.002823, 57.599731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.508295, 38.077412, 57.951881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.787506, 38.161263, 58.225761>,  <25.955032, 38.211571, 58.390091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.787506, 38.161263, 58.225761>,  <25.508295, 38.077412, 57.951881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.787506, 38.161263, 58.225761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615917, 0.663485, 0.424776,
		-0.365246, -0.718224, 0.592241,
		0.698027, 0.209624, 0.684701,
		25.996914, 38.224152, 58.431171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.165512, 37.983334, 58.681652>,  <25.508295, 38.077412, 57.951881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.165512, 37.983334, 58.681652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.488003, 38.216785, 58.720375>,  <25.681498, 38.356857, 58.743607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.488003, 38.216785, 58.720375>,  <25.165512, 37.983334, 58.681652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.488003, 38.216785, 58.720375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566375, 0.714159, 0.411335,
		0.170935, -0.386457, 0.906329,
		0.806226, 0.583634, 0.096805,
		25.729870, 38.391876, 58.749416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.042744, 38.327965, 59.237038>,  <25.165512, 37.983334, 58.681652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.042744, 38.327965, 59.237038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.335655, 38.541786, 59.068268>,  <25.511402, 38.670078, 58.967007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.335655, 38.541786, 59.068268>,  <25.042744, 38.327965, 59.237038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.335655, 38.541786, 59.068268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499908, 0.842673, 0.199985,
		0.462447, 0.064479, 0.884299,
		0.732281, 0.534550, -0.421925,
		25.555340, 38.702152, 58.941689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.287104, 38.812038, 59.767529>,  <25.042744, 38.327965, 59.237038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.287104, 38.812038, 59.767529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.364470, 38.966644, 59.406818>,  <25.410889, 39.059410, 59.190392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.364470, 38.966644, 59.406818>,  <25.287104, 38.812038, 59.767529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.364470, 38.966644, 59.406818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386885, 0.874698, 0.291930,
		0.901616, 0.292418, 0.318718,
		0.193416, 0.386516, -0.901774,
		25.422495, 39.082600, 59.136288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.782583, 39.432270, 59.873241>,  <25.287104, 38.812038, 59.767529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.782583, 39.432270, 59.873241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.554577, 39.441181, 59.544708>,  <25.417774, 39.446529, 59.347588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.554577, 39.441181, 59.544708>,  <25.782583, 39.432270, 59.873241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.554577, 39.441181, 59.544708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189314, 0.969174, 0.157678,
		0.799528, 0.245369, -0.548225,
		-0.570014, 0.022281, -0.821333,
		25.383574, 39.447865, 59.298309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.280809, 39.406784, 60.468754>,  <25.782583, 39.432270, 59.873241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.280809, 39.406784, 60.468754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612978, 39.594589, 60.588722>,  <26.812279, 39.707272, 60.660706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612978, 39.594589, 60.588722>,  <26.280809, 39.406784, 60.468754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.612978, 39.594589, 60.588722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553425, -0.757189, -0.346965,
		0.064193, 0.454112, -0.888629,
		0.830421, 0.469517, 0.299924,
		26.862104, 39.735443, 60.678699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.721235, 39.500668, 59.965317>,  <26.280809, 39.406784, 60.468754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.721235, 39.500668, 59.965317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.927473, 39.485943, 60.307732>,  <27.051216, 39.477108, 60.513184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.927473, 39.485943, 60.307732>,  <26.721235, 39.500668, 59.965317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.927473, 39.485943, 60.307732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501703, -0.796931, -0.336445,
		0.694591, 0.602948, -0.392425,
		0.515594, -0.036811, 0.856042,
		27.082151, 39.474899, 60.564545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.453556, 39.459122, 59.806366>,  <26.721235, 39.500668, 59.965317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.453556, 39.459122, 59.806366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.455990, 39.324703, 60.183098>,  <27.457451, 39.244053, 60.409138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.455990, 39.324703, 60.183098>,  <27.453556, 39.459122, 59.806366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455990, 39.324703, 60.183098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687161, -0.682836, -0.248080,
		0.726479, 0.648696, 0.226764,
		0.006086, -0.336048, 0.941825,
		27.457815, 39.223888, 60.465645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066187, 39.409077, 59.977753>,  <27.453556, 39.459122, 59.806366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.066187, 39.409077, 59.977753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907330, 39.148441, 60.236275>,  <27.812016, 38.992062, 60.391388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907330, 39.148441, 60.236275>,  <28.066187, 39.409077, 59.977753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.907330, 39.148441, 60.236275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691332, -0.675561, -0.256274,
		0.603604, 0.345034, 0.718758,
		-0.397142, -0.651589, 0.646305,
		27.788187, 38.952965, 60.430164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668261, 39.187153, 60.428085>,  <28.066187, 39.409077, 59.977753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668261, 39.187153, 60.428085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369337, 38.921597, 60.439255>,  <28.189983, 38.762264, 60.445957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369337, 38.921597, 60.439255>,  <28.668261, 39.187153, 60.428085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.369337, 38.921597, 60.439255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651150, -0.740050, -0.168313,
		0.132405, -0.107601, 0.985338,
		-0.747310, -0.663889, 0.027922,
		28.145144, 38.722431, 60.447632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825623, 38.730656, 60.932194>,  <28.668261, 39.187153, 60.428085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825623, 38.730656, 60.932194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595013, 38.541054, 60.665981>,  <28.456648, 38.427292, 60.506252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595013, 38.541054, 60.665981>,  <28.825623, 38.730656, 60.932194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595013, 38.541054, 60.665981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696304, -0.711212, -0.096635,
		-0.427531, -0.519127, 0.740084,
		-0.576523, -0.474009, -0.665535,
		28.422056, 38.398849, 60.466320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878532, 38.018539, 61.135036>,  <28.825623, 38.730656, 60.932194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.878532, 38.018539, 61.135036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725080, 37.992332, 60.766571>,  <28.633009, 37.976608, 60.545494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725080, 37.992332, 60.766571>,  <28.878532, 38.018539, 61.135036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.725080, 37.992332, 60.766571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578590, -0.794487, -0.184454,
		-0.719765, -0.603736, 0.342697,
		-0.383630, -0.065518, -0.921160,
		28.609991, 37.972675, 60.490223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856672, 37.352200, 61.072533>,  <28.878532, 38.018539, 61.135036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856672, 37.352200, 61.072533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809420, 37.486938, 60.698883>,  <28.781067, 37.567783, 60.474693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809420, 37.486938, 60.698883>,  <28.856672, 37.352200, 61.072533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.809420, 37.486938, 60.698883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544226, -0.764878, -0.344643,
		-0.830580, -0.549086, -0.092963,
		-0.118134, 0.336846, -0.934119,
		28.773979, 37.587994, 60.418648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.582870, 36.782742, 60.702946>,  <28.856672, 37.352200, 61.072533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.582870, 36.782742, 60.702946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.741919, 37.011734, 60.416126>,  <28.837347, 37.149132, 60.244034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.741919, 37.011734, 60.416126>,  <28.582870, 36.782742, 60.702946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.741919, 37.011734, 60.416126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498619, -0.790838, -0.354902,
		-0.770245, -0.216418, -0.599905,
		0.397620, 0.572485, -0.717049,
		28.861204, 37.183479, 60.201012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.556427, 36.333725, 60.173481>,  <28.582870, 36.782742, 60.702946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.556427, 36.333725, 60.173481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.823229, 36.604057, 60.048031>,  <28.983311, 36.766254, 59.972759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.823229, 36.604057, 60.048031>,  <28.556427, 36.333725, 60.173481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.823229, 36.604057, 60.048031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495315, -0.716681, -0.490949,
		-0.556566, 0.172122, -0.812778,
		0.667006, 0.675827, -0.313625,
		29.023331, 36.806805, 59.953941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.551052, 36.356873, 59.436272>,  <28.556427, 36.333725, 60.173481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.551052, 36.356873, 59.436272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911537, 36.477394, 59.560875>,  <29.127829, 36.549706, 59.635635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911537, 36.477394, 59.560875>,  <28.551052, 36.356873, 59.436272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.911537, 36.477394, 59.560875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428417, -0.727832, -0.535461,
		0.065389, 0.616018, -0.785013,
		0.901212, 0.301300, 0.311505,
		29.181900, 36.567783, 59.654327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900854, 36.506912, 58.835182>,  <28.551052, 36.356873, 59.436272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.900854, 36.506912, 58.835182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.194298, 36.447102, 59.100349>,  <29.370365, 36.411213, 59.259449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.194298, 36.447102, 59.100349>,  <28.900854, 36.506912, 58.835182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.194298, 36.447102, 59.100349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433104, -0.648836, -0.625646,
		0.523677, 0.746091, -0.411230,
		0.733610, -0.149531, 0.662915,
		29.414381, 36.402241, 59.299225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.487610, 36.757019, 58.528450>,  <28.900854, 36.506912, 58.835182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.487610, 36.757019, 58.528450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570494, 36.483479, 58.808281>,  <29.620224, 36.319355, 58.976181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570494, 36.483479, 58.808281>,  <29.487610, 36.757019, 58.528450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570494, 36.483479, 58.808281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526116, -0.524991, -0.669019,
		0.824782, 0.506687, 0.251002,
		0.207210, -0.683851, 0.699580,
		29.632656, 36.278324, 59.018154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285275, 36.671600, 58.557323>,  <29.487610, 36.757019, 58.528450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285275, 36.671600, 58.557323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134764, 36.353966, 58.748253>,  <30.044456, 36.163383, 58.862812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134764, 36.353966, 58.748253>,  <30.285275, 36.671600, 58.557323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134764, 36.353966, 58.748253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645088, -0.594338, -0.480233,
		0.665039, 0.127214, 0.735894,
		-0.376277, -0.794090, 0.477322,
		30.021881, 36.115738, 58.891449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905346, 36.368797, 58.715694>,  <30.285275, 36.671600, 58.557323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905346, 36.368797, 58.715694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608812, 36.100384, 58.720238>,  <30.430891, 35.939335, 58.722965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608812, 36.100384, 58.720238>,  <30.905346, 36.368797, 58.715694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608812, 36.100384, 58.720238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567274, -0.635567, -0.523693,
		0.358638, -0.381789, 0.851831,
		-0.741336, -0.671038, 0.011360,
		30.386412, 35.899071, 58.723644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154488, 35.704380, 58.893368>,  <30.905346, 36.368797, 58.715694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154488, 35.704380, 58.893368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800098, 35.611347, 58.732887>,  <30.587465, 35.555527, 58.636600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800098, 35.611347, 58.732887>,  <31.154488, 35.704380, 58.893368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800098, 35.611347, 58.732887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442587, -0.682384, -0.581781,
		-0.138458, -0.693006, 0.707511,
		-0.885972, -0.232583, -0.401197,
		30.534307, 35.541573, 58.612530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224648, 35.078709, 58.818565>,  <31.154488, 35.704380, 58.893368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224648, 35.078709, 58.818565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919889, 35.159733, 58.572483>,  <30.737034, 35.208347, 58.424831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919889, 35.159733, 58.572483>,  <31.224648, 35.078709, 58.818565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919889, 35.159733, 58.572483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378616, -0.631366, -0.676777,
		-0.525510, -0.748562, 0.404344,
		-0.761898, 0.202562, -0.615207,
		30.691320, 35.220501, 58.387920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.931583, 34.429989, 58.544186>,  <31.224648, 35.078709, 58.818565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.931583, 34.429989, 58.544186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827957, 34.711010, 58.279068>,  <30.765781, 34.879623, 58.119995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827957, 34.711010, 58.279068>,  <30.931583, 34.429989, 58.544186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827957, 34.711010, 58.279068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356441, -0.568246, -0.741651,
		-0.897683, -0.428386, -0.103205,
		-0.259067, 0.702554, -0.662798,
		30.750237, 34.921776, 58.080227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.790928, 34.025028, 57.991589>,  <30.931583, 34.429989, 58.544186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.790928, 34.025028, 57.991589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829916, 34.388168, 57.828465>,  <30.853308, 34.606052, 57.730591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829916, 34.388168, 57.828465>,  <30.790928, 34.025028, 57.991589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.829916, 34.388168, 57.828465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346714, -0.415063, -0.841137,
		-0.932893, -0.059408, -0.355221,
		0.097469, 0.907851, -0.407807,
		30.859158, 34.660522, 57.706123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527735, 33.988407, 57.266785>,  <30.790928, 34.025028, 57.991589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527735, 33.988407, 57.266785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780636, 34.298168, 57.257378>,  <30.932377, 34.484024, 57.251732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780636, 34.298168, 57.257378>,  <30.527735, 33.988407, 57.266785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780636, 34.298168, 57.257378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422528, -0.370091, -0.827347,
		-0.649406, 0.513154, -0.561199,
		0.632252, 0.774406, -0.023518,
		30.970312, 34.530491, 57.250320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564835, 34.351990, 56.613453>,  <30.527735, 33.988407, 57.266785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564835, 34.351990, 56.613453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911476, 34.448990, 56.787899>,  <31.119461, 34.507191, 56.892567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911476, 34.448990, 56.787899>,  <30.564835, 34.351990, 56.613453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911476, 34.448990, 56.787899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496294, -0.328008, -0.803805,
		-0.051872, 0.913020, -0.404603,
		0.866603, 0.242498, 0.436112,
		31.171457, 34.521740, 56.918732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.408981, 36.139694, 53.623901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.288078, 36.263805, 53.984428>,  <47.215534, 36.338272, 54.200745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.288078, 36.263805, 53.984428>,  <47.408981, 36.139694, 53.623901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.288078, 36.263805, 53.984428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604890, 0.668341, -0.432929,
		-0.736712, -0.676054, -0.014332,
		-0.302262, 0.310275, 0.901314,
		47.197399, 36.356888, 54.254822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.129894, 35.584820, 53.078876>,  <47.408981, 36.139694, 53.623901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.129894, 35.584820, 53.078876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.131210, 35.383968, 52.732964>,  <47.132000, 35.263458, 52.525414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.131210, 35.383968, 52.732964>,  <47.129894, 35.584820, 53.078876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.131210, 35.383968, 52.732964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954194, 0.257144, -0.152937,
		0.299168, 0.825676, -0.478287,
		0.003288, -0.502132, -0.864784,
		47.132198, 35.233330, 52.473530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.905792, 36.108078, 52.603134>,  <47.129894, 35.584820, 53.078876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.905792, 36.108078, 52.603134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.828743, 35.761806, 52.418312>,  <46.782513, 35.554043, 52.307419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.828743, 35.761806, 52.418312>,  <46.905792, 36.108078, 52.603134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.828743, 35.761806, 52.418312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887894, 0.354237, -0.293531,
		0.417780, 0.353714, -0.836867,
		-0.192623, -0.865681, -0.462053,
		46.770954, 35.502102, 52.279697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.515087, 36.319199, 52.008053>,  <46.905792, 36.108078, 52.603134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.515087, 36.319199, 52.008053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.435612, 35.927235, 52.015087>,  <46.387928, 35.692059, 52.019306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.435612, 35.927235, 52.015087>,  <46.515087, 36.319199, 52.008053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.435612, 35.927235, 52.015087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929118, 0.182619, -0.321544,
		0.311872, -0.080223, -0.946731,
		-0.198686, -0.979905, 0.017583,
		46.376007, 35.633263, 52.020363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.212704, 36.074009, 51.296349>,  <46.515087, 36.319199, 52.008053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.212704, 36.074009, 51.296349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.091122, 35.813072, 51.574074>,  <46.018173, 35.656509, 51.740707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.091122, 35.813072, 51.574074>,  <46.212704, 36.074009, 51.296349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.091122, 35.813072, 51.574074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929541, 0.043395, -0.366157,
		0.208728, -0.756685, -0.619565,
		-0.303951, -0.652338, 0.694311,
		45.999935, 35.617371, 51.782368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.873127, 35.576504, 50.940231>,  <46.212704, 36.074009, 51.296349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.873127, 35.576504, 50.940231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.726917, 35.555958, 51.311985>,  <45.639191, 35.543629, 51.535038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.726917, 35.555958, 51.311985>,  <45.873127, 35.576504, 50.940231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.726917, 35.555958, 51.311985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925292, -0.088429, -0.368803,
		0.101127, -0.994757, -0.015202,
		-0.365525, -0.051363, 0.929383,
		45.617260, 35.540546, 51.590801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.377537, 35.245071, 50.785999>,  <45.873127, 35.576504, 50.940231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.377537, 35.245071, 50.785999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.306435, 35.306370, 51.174828>,  <45.263775, 35.343147, 51.408123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.306435, 35.306370, 51.174828>,  <45.377537, 35.245071, 50.785999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.306435, 35.306370, 51.174828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983511, -0.061114, -0.170208,
		0.033324, -0.986297, 0.161579,
		-0.177751, 0.153242, 0.972071,
		45.253109, 35.352345, 51.466450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.975952, 34.743500, 51.017654>,  <45.377537, 35.245071, 50.785999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.975952, 34.743500, 51.017654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.898476, 35.023842, 51.292255>,  <44.851990, 35.192047, 51.457016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.898476, 35.023842, 51.292255>,  <44.975952, 34.743500, 51.017654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.898476, 35.023842, 51.292255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966029, -0.014217, -0.258041,
		-0.171090, -0.713159, 0.679803,
		-0.193689, 0.700858, 0.686500,
		44.840370, 35.234100, 51.498207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.431366, 34.536327, 51.440346>,  <44.975952, 34.743500, 51.017654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.431366, 34.536327, 51.440346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.413750, 34.935940, 51.441029>,  <44.403179, 35.175705, 51.441437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.413750, 34.935940, 51.441029>,  <44.431366, 34.536327, 51.440346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.413750, 34.935940, 51.441029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982402, -0.042994, -0.181765,
		-0.181515, -0.009679, 0.983341,
		-0.044037, 0.999029, 0.001705,
		44.400539, 35.235649, 51.441540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.756382, 34.698223, 51.808643>,  <44.431366, 34.536327, 51.440346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.756382, 34.698223, 51.808643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.860931, 35.041325, 51.631580>,  <43.923660, 35.247185, 51.525341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.860931, 35.041325, 51.631580>,  <43.756382, 34.698223, 51.808643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.860931, 35.041325, 51.631580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957855, 0.173876, -0.228651,
		-0.119158, 0.483766, 0.867047,
		0.261373, 0.857752, -0.442660,
		43.939342, 35.298649, 51.498783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.339863, 35.206291, 52.054089>,  <43.756382, 34.698223, 51.808643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.339863, 35.206291, 52.054089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.437298, 35.345016, 51.691788>,  <43.495758, 35.428253, 51.474407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.437298, 35.345016, 51.691788>,  <43.339863, 35.206291, 52.054089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.437298, 35.345016, 51.691788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966229, 0.005841, -0.257620,
		-0.084056, 0.937915, 0.336526,
		0.243591, 0.346815, -0.905750,
		43.510376, 35.449062, 51.420063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.750259, 35.585728, 51.840286>,  <43.339863, 35.206291, 52.054089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.750259, 35.585728, 51.840286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.942204, 35.535908, 51.492905>,  <43.057369, 35.506016, 51.284473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.942204, 35.535908, 51.492905>,  <42.750259, 35.585728, 51.840286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.942204, 35.535908, 51.492905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877290, -0.057265, -0.476531,
		0.009618, 0.990560, -0.136743,
		0.479863, -0.124547, -0.868458,
		43.086163, 35.498543, 51.232368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.462978, 36.072346, 51.348122>,  <42.750259, 35.585728, 51.840286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.462978, 36.072346, 51.348122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.612206, 35.750946, 51.162560>,  <42.701744, 35.558105, 51.051220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.612206, 35.750946, 51.162560>,  <42.462978, 36.072346, 51.348122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.612206, 35.750946, 51.162560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839788, -0.079875, -0.537006,
		0.394428, 0.589927, -0.704566,
		0.373071, -0.803496, -0.463909,
		42.724129, 35.509895, 51.023388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988419, 35.888023, 50.977726>,  <42.462978, 36.072346, 51.348122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.988419, 35.888023, 50.977726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.188560, 35.565929, 50.850449>,  <42.308643, 35.372673, 50.774082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.188560, 35.565929, 50.850449>,  <41.988419, 35.888023, 50.977726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188560, 35.565929, 50.850449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815183, -0.314280, -0.486522,
		0.291760, 0.502822, -0.813662,
		0.500352, -0.805231, -0.318198,
		42.338665, 35.324360, 50.754990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908375, 35.848270, 50.239948>,  <41.988419, 35.888023, 50.977726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908375, 35.848270, 50.239948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.021923, 35.476788, 50.335381>,  <42.090054, 35.253899, 50.392639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.021923, 35.476788, 50.335381>,  <41.908375, 35.848270, 50.239948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.021923, 35.476788, 50.335381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731760, -0.370610, -0.571993,
		0.619633, -0.012208, -0.784796,
		0.283870, -0.928708, 0.238576,
		42.107082, 35.198174, 50.406952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.978771, 35.543030, 49.626816>,  <41.908375, 35.848270, 50.239948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.978771, 35.543030, 49.626816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.917053, 35.248810, 49.890682>,  <41.880024, 35.072277, 50.049000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.917053, 35.248810, 49.890682>,  <41.978771, 35.543030, 49.626816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.917053, 35.248810, 49.890682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653203, -0.424992, -0.626664,
		0.741296, -0.527583, -0.414893,
		-0.154291, -0.735553, 0.659663,
		41.870766, 35.028145, 50.088581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.166058, 34.788853, 49.280834>,  <41.978771, 35.543030, 49.626816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.166058, 34.788853, 49.280834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.913769, 34.757767, 49.589676>,  <41.762394, 34.739117, 49.774982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.913769, 34.757767, 49.589676>,  <42.166058, 34.788853, 49.280834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913769, 34.757767, 49.589676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688709, -0.402428, -0.603102,
		0.357588, -0.912147, 0.200298,
		-0.630723, -0.077715, 0.772107,
		41.724552, 34.734451, 49.821308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910152, 34.200809, 49.230312>,  <42.166058, 34.788853, 49.280834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.910152, 34.200809, 49.230312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.628414, 34.369717, 49.458549>,  <41.459370, 34.471062, 49.595493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.628414, 34.369717, 49.458549>,  <41.910152, 34.200809, 49.230312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.628414, 34.369717, 49.458549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700767, -0.541831, -0.464054,
		0.113213, -0.726712, 0.677549,
		-0.704350, 0.422267, 0.570597,
		41.417110, 34.496395, 49.629730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362324, 33.778408, 49.129330>,  <41.910152, 34.200809, 49.230312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362324, 33.778408, 49.129330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.186668, 34.086308, 49.314648>,  <41.081276, 34.271046, 49.425838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.186668, 34.086308, 49.314648>,  <41.362324, 33.778408, 49.129330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186668, 34.086308, 49.314648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898288, -0.367353, -0.241103,
		-0.015394, -0.522054, 0.852774,
		-0.439138, 0.769748, 0.463300,
		41.054928, 34.317230, 49.453636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916641, 33.481102, 49.620384>,  <41.362324, 33.778408, 49.129330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916641, 33.481102, 49.620384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.801273, 33.850674, 49.519844>,  <40.732052, 34.072414, 49.459518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.801273, 33.850674, 49.519844>,  <40.916641, 33.481102, 49.620384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.801273, 33.850674, 49.519844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827219, -0.372637, -0.420536,
		-0.482206, 0.086630, 0.871764,
		-0.288420, 0.923925, -0.251350,
		40.714748, 34.127850, 49.444439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175877, 33.620701, 49.776314>,  <40.916641, 33.481102, 49.620384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175877, 33.620701, 49.776314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.300499, 33.862564, 49.483105>,  <40.375271, 34.007683, 49.307178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.300499, 33.862564, 49.483105>,  <40.175877, 33.620701, 49.776314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300499, 33.862564, 49.483105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860039, -0.148590, -0.488113,
		-0.404062, 0.782500, 0.473738,
		0.311556, 0.604661, -0.733020,
		40.393967, 34.043961, 49.263199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712940, 34.175182, 49.578209>,  <40.175877, 33.620701, 49.776314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712940, 34.175182, 49.578209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.925320, 34.086174, 49.251141>,  <40.052746, 34.032768, 49.054901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.925320, 34.086174, 49.251141>,  <39.712940, 34.175182, 49.578209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925320, 34.086174, 49.251141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847305, -0.154301, -0.508198,
		-0.013083, 0.962640, -0.270467,
		0.530945, -0.222520, -0.817669,
		40.084602, 34.019417, 49.005840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122036, 33.782417, 49.817078>,  <39.712940, 34.175182, 49.578209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122036, 33.782417, 49.817078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.807129, 33.620625, 50.003242>,  <38.618187, 33.523548, 50.114941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.807129, 33.620625, 50.003242>,  <39.122036, 33.782417, 49.817078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807129, 33.620625, 50.003242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327381, -0.365429, -0.871368,
		0.522528, -0.838365, 0.155269,
		-0.787264, -0.404483, 0.465412,
		38.570950, 33.499279, 50.142864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141159, 32.921551, 49.821987>,  <39.122036, 33.782417, 49.817078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141159, 32.921551, 49.821987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.801254, 33.132275, 49.814240>,  <38.597313, 33.258709, 49.809589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.801254, 33.132275, 49.814240>,  <39.141159, 32.921551, 49.821987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801254, 33.132275, 49.814240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063232, -0.138340, -0.988364,
		-0.523359, -0.838650, 0.150867,
		-0.849763, 0.526809, -0.019372,
		38.546326, 33.290318, 49.808430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797958, 32.686489, 49.172649>,  <39.141159, 32.921551, 49.821987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797958, 32.686489, 49.172649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.642727, 33.043774, 49.263481>,  <38.549587, 33.258144, 49.317982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.642727, 33.043774, 49.263481>,  <38.797958, 32.686489, 49.172649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642727, 33.043774, 49.263481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238957, 0.140446, -0.960820,
		-0.890111, -0.427131, 0.158936,
		-0.388074, 0.893215, 0.227079,
		38.526306, 33.311737, 49.331604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721729, 32.076385, 48.922520>,  <38.797958, 32.686489, 49.172649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721729, 32.076385, 48.922520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.746914, 31.809786, 48.625381>,  <38.762024, 31.649828, 48.447098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.746914, 31.809786, 48.625381>,  <38.721729, 32.076385, 48.922520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746914, 31.809786, 48.625381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977910, 0.107449, -0.179297,
		0.199318, 0.737726, -0.645006,
		0.062966, -0.666495, -0.742846,
		38.765804, 31.609837, 48.402527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314026, 32.332962, 48.319180>,  <38.721729, 32.076385, 48.922520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314026, 32.332962, 48.319180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.350811, 31.940105, 48.253521>,  <38.372883, 31.704391, 48.214127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.350811, 31.940105, 48.253521>,  <38.314026, 32.332962, 48.319180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350811, 31.940105, 48.253521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952789, -0.038889, -0.301135,
		0.289373, 0.184092, -0.939348,
		0.091966, -0.982140, -0.164147,
		38.378403, 31.645464, 48.204277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990612, 32.239227, 47.690838>,  <38.314026, 32.332962, 48.319180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990612, 32.239227, 47.690838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.990673, 31.861256, 47.821751>,  <37.990711, 31.634474, 47.900299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.990673, 31.861256, 47.821751>,  <37.990612, 32.239227, 47.690838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990673, 31.861256, 47.821751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917216, -0.130520, -0.376403,
		0.398390, -0.300132, -0.866722,
		0.000154, -0.944927, 0.327283,
		37.990719, 31.577778, 47.919937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767284, 31.937914, 47.092808>,  <37.990612, 32.239227, 47.690838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767284, 31.937914, 47.092808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.700558, 31.714624, 47.417908>,  <37.660522, 31.580650, 47.612968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.700558, 31.714624, 47.417908>,  <37.767284, 31.937914, 47.092808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700558, 31.714624, 47.417908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903400, -0.243704, -0.352812,
		0.395018, -0.793090, -0.463647,
		-0.166820, -0.558226, 0.812746,
		37.650513, 31.547157, 47.661732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409657, 31.369799, 46.866684>,  <37.767284, 31.937914, 47.092808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409657, 31.369799, 46.866684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.327209, 31.412699, 47.255737>,  <37.277740, 31.438438, 47.489170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.327209, 31.412699, 47.255737>,  <37.409657, 31.369799, 46.866684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327209, 31.412699, 47.255737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974806, -0.109103, -0.194551,
		0.085251, -0.988227, 0.127038,
		-0.206121, 0.107251, 0.972631,
		37.265373, 31.444874, 47.547527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980129, 30.770014, 47.018734>,  <37.409657, 31.369799, 46.866684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980129, 30.770014, 47.018734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.896694, 31.008335, 47.328960>,  <36.846634, 31.151329, 47.515099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.896694, 31.008335, 47.328960>,  <36.980129, 30.770014, 47.018734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896694, 31.008335, 47.328960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975495, -0.069994, -0.208592,
		-0.069994, -0.800074, 0.595804,
		0.208592, -0.595804, -0.775569,
		36.834118, 31.187077, 47.561630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387386, 30.558403, 47.219063>,  <36.980129, 30.770014, 47.018734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387386, 30.558403, 47.219063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.356552, 30.920849, 47.385441>,  <36.338051, 31.138317, 47.485268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.356552, 30.920849, 47.385441>,  <36.387386, 30.558403, 47.219063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356552, 30.920849, 47.385441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997023, -0.069488, -0.033404,
		-0.001365, -0.417282, 0.908776,
		-0.077088, 0.906116, 0.415945,
		36.333427, 31.192684, 47.510223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797310, 30.497215, 47.626099>,  <36.387386, 30.558403, 47.219063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797310, 30.497215, 47.626099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.874962, 30.889435, 47.614498>,  <35.921555, 31.124765, 47.607536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.874962, 30.889435, 47.614498>,  <35.797310, 30.497215, 47.626099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874962, 30.889435, 47.614498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959610, 0.183680, -0.213095,
		-0.203622, 0.069200, 0.976601,
		0.194129, 0.980547, -0.029004,
		35.933201, 31.183599, 47.605797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406605, 30.784618, 48.105267>,  <35.797310, 30.497215, 47.626099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406605, 30.784618, 48.105267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.484261, 31.096142, 47.866680>,  <35.530853, 31.283056, 47.723530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.484261, 31.096142, 47.866680>,  <35.406605, 30.784618, 48.105267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484261, 31.096142, 47.866680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979794, 0.183759, -0.078971,
		0.048102, 0.599740, 0.798748,
		0.194139, 0.778809, -0.596461,
		35.542503, 31.329784, 47.687740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041359, 31.353308, 48.258892>,  <35.406605, 30.784618, 48.105267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041359, 31.353308, 48.258892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.113468, 31.417908, 47.870785>,  <35.156734, 31.456669, 47.637920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.113468, 31.417908, 47.870785>,  <35.041359, 31.353308, 48.258892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113468, 31.417908, 47.870785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956344, 0.259452, -0.134505,
		0.230015, 0.952156, 0.201224,
		0.180277, 0.161501, -0.970267,
		35.167553, 31.466358, 47.579704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.102129, 31.899372, 52.036400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.357409, 32.206871, 52.053047>,  <30.510576, 32.391369, 52.063034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.357409, 32.206871, 52.053047>,  <30.102129, 31.899372, 52.036400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357409, 32.206871, 52.053047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401739, -0.286426, -0.869808,
		-0.656739, 0.571831, -0.491632,
		0.638200, 0.768745, 0.041620,
		30.548868, 32.437496, 52.065533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057745, 32.271984, 51.369457>,  <30.102129, 31.899372, 52.036400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057745, 32.271984, 51.369457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.409901, 32.335087, 51.548355>,  <30.621195, 32.372948, 51.655693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.409901, 32.335087, 51.548355>,  <30.057745, 32.271984, 51.369457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.409901, 32.335087, 51.548355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474158, -0.311692, -0.823421,
		0.009501, 0.936995, -0.349213,
		0.880388, 0.157758, 0.447245,
		30.674017, 32.382416, 51.682529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459930, 32.648750, 50.868103>,  <30.057745, 32.271984, 51.369457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459930, 32.648750, 50.868103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.726915, 32.498386, 51.125221>,  <30.887106, 32.408169, 51.279491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.726915, 32.498386, 51.125221>,  <30.459930, 32.648750, 50.868103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726915, 32.498386, 51.125221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584108, -0.271110, -0.765060,
		0.461860, 0.886112, 0.038614,
		0.667460, -0.375906, 0.642800,
		30.927153, 32.385616, 51.318062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036694, 32.865162, 50.588139>,  <30.459930, 32.648750, 50.868103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036694, 32.865162, 50.588139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.178701, 32.576847, 50.826275>,  <31.263906, 32.403858, 50.969158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.178701, 32.576847, 50.826275>,  <31.036694, 32.865162, 50.588139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178701, 32.576847, 50.826275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675605, -0.242346, -0.696295,
		0.646158, 0.649411, 0.400930,
		0.355018, -0.720787, 0.595339,
		31.285206, 32.360611, 51.004875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719469, 32.901264, 50.560875>,  <31.036694, 32.865162, 50.588139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719469, 32.901264, 50.560875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.657143, 32.530933, 50.698612>,  <31.619747, 32.308735, 50.781254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.657143, 32.530933, 50.698612>,  <31.719469, 32.901264, 50.560875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657143, 32.530933, 50.698612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642957, -0.359704, -0.676180,
		0.749885, 0.116041, 0.651312,
		-0.155815, -0.925823, 0.344346,
		31.610397, 32.253185, 50.801914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320274, 32.589828, 50.600418>,  <31.719469, 32.901264, 50.560875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320274, 32.589828, 50.600418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.080017, 32.270020, 50.600334>,  <31.935863, 32.078136, 50.600285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.080017, 32.270020, 50.600334>,  <32.320274, 32.589828, 50.600418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080017, 32.270020, 50.600334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611436, -0.459168, -0.644446,
		0.515150, -0.387210, 0.764650,
		-0.600639, -0.799521, -0.000213,
		31.899826, 32.030163, 50.600269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758614, 31.938520, 50.712818>,  <32.320274, 32.589828, 50.600418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758614, 31.938520, 50.712818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.411999, 31.831142, 50.544510>,  <32.204029, 31.766716, 50.443523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.411999, 31.831142, 50.544510>,  <32.758614, 31.938520, 50.712818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411999, 31.831142, 50.544510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492658, -0.324891, -0.807300,
		0.080013, -0.906852, 0.413783,
		-0.866537, -0.268448, -0.420773,
		32.152039, 31.750608, 50.418278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927246, 31.270851, 50.604126>,  <32.758614, 31.938520, 50.712818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927246, 31.270851, 50.604126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.620613, 31.390753, 50.376972>,  <32.436634, 31.462694, 50.240681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.620613, 31.390753, 50.376972>,  <32.927246, 31.270851, 50.604126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620613, 31.390753, 50.376972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487218, -0.304563, -0.818450,
		-0.418293, -0.904095, 0.087426,
		-0.766583, 0.299757, -0.567888,
		32.390636, 31.480679, 50.206604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804867, 30.755159, 50.128067>,  <32.927246, 31.270851, 50.604126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804867, 30.755159, 50.128067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.592644, 31.047541, 49.956387>,  <32.465309, 31.222969, 49.853378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.592644, 31.047541, 49.956387>,  <32.804867, 30.755159, 50.128067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592644, 31.047541, 49.956387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353859, -0.269119, -0.895745,
		-0.770255, -0.627120, -0.115873,
		-0.530556, 0.730955, -0.429202,
		32.433475, 31.266827, 49.827625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517471, 30.513096, 49.526630>,  <32.804867, 30.755159, 50.128067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517471, 30.513096, 49.526630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.513420, 30.909437, 49.472813>,  <32.510990, 31.147243, 49.440521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.513420, 30.909437, 49.472813>,  <32.517471, 30.513096, 49.526630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513420, 30.909437, 49.472813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408440, -0.118718, -0.905032,
		-0.912729, -0.064117, -0.403503,
		-0.010125, 0.990856, -0.134546,
		32.510384, 31.206694, 49.432449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282421, 30.490770, 48.907627>,  <32.517471, 30.513096, 49.526630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282421, 30.490770, 48.907627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.418945, 30.862133, 48.966370>,  <32.500858, 31.084951, 49.001614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.418945, 30.862133, 48.966370>,  <32.282421, 30.490770, 48.907627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418945, 30.862133, 48.966370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490044, -0.042434, -0.870664,
		-0.802099, 0.369134, -0.469444,
		0.341312, 0.928407, 0.146855,
		32.521339, 31.140656, 49.010426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270634, 30.677492, 48.255253>,  <32.282421, 30.490770, 48.907627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270634, 30.677492, 48.255253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.496632, 30.952953, 48.437035>,  <32.632233, 31.118231, 48.546104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.496632, 30.952953, 48.437035>,  <32.270634, 30.677492, 48.255253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496632, 30.952953, 48.437035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601048, 0.033822, -0.798497,
		-0.565259, 0.724301, -0.394804,
		0.564999, 0.688654, 0.454458,
		32.666130, 31.159550, 48.573372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358589, 31.143318, 47.748917>,  <32.270634, 30.677492, 48.255253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358589, 31.143318, 47.748917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.648197, 31.208624, 48.016987>,  <32.821964, 31.247807, 48.177830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.648197, 31.208624, 48.016987>,  <32.358589, 31.143318, 47.748917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648197, 31.208624, 48.016987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654619, 0.143591, -0.742197,
		-0.217406, 0.976077, -0.002913,
		0.724023, 0.163265, 0.670176,
		32.865402, 31.257603, 48.218040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323879, 31.749640, 47.253510>,  <32.358589, 31.143318, 47.748917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323879, 31.749640, 47.253510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.583794, 32.021461, 47.117287>,  <32.739742, 32.184555, 47.035553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.583794, 32.021461, 47.117287>,  <32.323879, 31.749640, 47.253510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583794, 32.021461, 47.117287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677974, 0.720729, 0.144574,
		0.343697, 0.136947, 0.929042,
		0.649788, 0.679556, -0.340559,
		32.778728, 32.225327, 47.015118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091885, 32.264553, 47.541924>,  <32.323879, 31.749640, 47.253510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091885, 32.264553, 47.541924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.359543, 32.452160, 47.311352>,  <32.520138, 32.564724, 47.173008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.359543, 32.452160, 47.311352>,  <32.091885, 32.264553, 47.541924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359543, 32.452160, 47.311352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503228, 0.856743, 0.112931,
		0.546816, 0.214507, 0.809308,
		0.669144, 0.469018, -0.576427,
		32.560287, 32.592865, 47.138424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222546, 32.874790, 47.813744>,  <32.091885, 32.264553, 47.541924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222546, 32.874790, 47.813744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.341084, 32.942921, 47.437836>,  <32.412205, 32.983799, 47.212292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.341084, 32.942921, 47.437836>,  <32.222546, 32.874790, 47.813744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341084, 32.942921, 47.437836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472579, 0.881223, 0.010696,
		0.829970, 0.440947, 0.341636,
		0.296341, 0.170328, -0.939771,
		32.429985, 32.994019, 47.155903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449768, 33.539539, 47.783886>,  <32.222546, 32.874790, 47.813744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449768, 33.539539, 47.783886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.353252, 33.461498, 47.403629>,  <32.295341, 33.414673, 47.175476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.353252, 33.461498, 47.403629>,  <32.449768, 33.539539, 47.783886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353252, 33.461498, 47.403629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453631, 0.888650, -0.067239,
		0.857903, 0.415015, -0.302927,
		-0.241291, -0.195101, -0.950639,
		32.280865, 33.402969, 47.118439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806061, 34.132084, 47.369381>,  <32.449768, 33.539539, 47.783886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806061, 34.132084, 47.369381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.501507, 33.952824, 47.181999>,  <32.318775, 33.845268, 47.069572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.501507, 33.952824, 47.181999>,  <32.806061, 34.132084, 47.369381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501507, 33.952824, 47.181999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516167, 0.856259, 0.019789,
		0.392247, 0.256866, -0.883268,
		-0.761389, -0.448152, -0.468451,
		32.273090, 33.818378, 47.041462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633335, 34.576923, 46.804607>,  <32.806061, 34.132084, 47.369381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633335, 34.576923, 46.804607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.319321, 34.332531, 46.845421>,  <32.130913, 34.185894, 46.869911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.319321, 34.332531, 46.845421>,  <32.633335, 34.576923, 46.804607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319321, 34.332531, 46.845421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618854, 0.780779, -0.086047,
		-0.027094, -0.130696, -0.991052,
		-0.785039, -0.610985, 0.102037,
		32.083809, 34.149235, 46.876030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183025, 34.811024, 46.314751>,  <32.633335, 34.576923, 46.804607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183025, 34.811024, 46.314751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.925371, 34.602627, 46.538769>,  <31.770779, 34.477589, 46.673180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.925371, 34.602627, 46.538769>,  <32.183025, 34.811024, 46.314751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925371, 34.602627, 46.538769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617719, 0.786123, 0.020844,
		-0.451126, -0.332525, -0.828199,
		-0.644135, -0.520997, 0.560047,
		31.732130, 34.446327, 46.706783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545193, 34.887932, 45.991497>,  <32.183025, 34.811024, 46.314751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545193, 34.887932, 45.991497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.506950, 34.819885, 46.383808>,  <31.484005, 34.779057, 46.619194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.506950, 34.819885, 46.383808>,  <31.545193, 34.887932, 45.991497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.506950, 34.819885, 46.383808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587324, 0.805147, 0.082397,
		-0.803685, -0.568155, -0.176890,
		-0.095608, -0.170113, 0.980775,
		31.478268, 34.768852, 46.678040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793873, 35.075115, 46.169567>,  <31.545193, 34.887932, 45.991497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793873, 35.075115, 46.169567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.999418, 35.056965, 46.512234>,  <31.122746, 35.046074, 46.717834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.999418, 35.056965, 46.512234>,  <30.793873, 35.075115, 46.169567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.999418, 35.056965, 46.512234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574509, 0.723395, 0.382934,
		-0.637088, -0.688941, 0.345656,
		0.513865, -0.045380, 0.856670,
		31.153578, 35.043350, 46.769234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388182, 34.887859, 46.797413>,  <30.793873, 35.075115, 46.169567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.388182, 34.887859, 46.797413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.703598, 35.083950, 46.945942>,  <30.892847, 35.201603, 47.035061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.703598, 35.083950, 46.945942>,  <30.388182, 34.887859, 46.797413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703598, 35.083950, 46.945942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614970, 0.632263, 0.471227,
		-0.003767, -0.599936, 0.800039,
		0.788541, 0.490225, 0.371324,
		30.940161, 35.231018, 47.057339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.098047, 35.225735, 47.354256>,  <30.388182, 34.887859, 46.797413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.098047, 35.225735, 47.354256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.464565, 35.385067, 47.370895>,  <30.684477, 35.480667, 47.380878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.464565, 35.385067, 47.370895>,  <30.098047, 35.225735, 47.354256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.464565, 35.385067, 47.370895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336058, 0.708205, 0.620894,
		0.217862, -0.582904, 0.782789,
		0.916297, 0.398332, 0.041599,
		30.739454, 35.504566, 47.383373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395554, 35.190144, 48.062653>,  <30.098047, 35.225735, 47.354256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395554, 35.190144, 48.062653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.594511, 35.486717, 47.882488>,  <30.713884, 35.664661, 47.774391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.594511, 35.486717, 47.882488>,  <30.395554, 35.190144, 48.062653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.594511, 35.486717, 47.882488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256041, 0.621526, 0.740370,
		0.828882, -0.252930, 0.498981,
		0.497391, 0.741439, -0.450411,
		30.743729, 35.709148, 47.747364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771824, 35.423901, 48.531982>,  <30.395554, 35.190144, 48.062653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771824, 35.423901, 48.531982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.770531, 35.721077, 48.264244>,  <30.769754, 35.899384, 48.103600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.770531, 35.721077, 48.264244>,  <30.771824, 35.423901, 48.531982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.770531, 35.721077, 48.264244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249792, 0.647529, 0.719937,
		0.968294, 0.169526, 0.183487,
		-0.003235, 0.742944, -0.669345,
		30.769560, 35.943962, 48.063442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238989, 35.993896, 48.859310>,  <30.771824, 35.423901, 48.531982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238989, 35.993896, 48.859310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.989058, 36.162518, 48.596439>,  <30.839098, 36.263691, 48.438717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.989058, 36.162518, 48.596439>,  <31.238989, 35.993896, 48.859310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989058, 36.162518, 48.596439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228359, 0.706239, 0.670134,
		0.746620, 0.568791, -0.345013,
		-0.624828, 0.421548, -0.657181,
		30.801609, 36.288982, 48.399284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400192, 36.745529, 48.931831>,  <31.238989, 35.993896, 48.859310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400192, 36.745529, 48.931831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.044115, 36.676147, 48.763325>,  <30.830469, 36.634518, 48.662220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.044115, 36.676147, 48.763325>,  <31.400192, 36.745529, 48.931831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044115, 36.676147, 48.763325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419839, 0.671364, 0.610742,
		0.176891, 0.720545, -0.670466,
		-0.890194, -0.173453, -0.421271,
		30.777058, 36.624111, 48.636944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663298, 37.351974, 48.621548>,  <31.400192, 36.745529, 48.931831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663298, 37.351974, 48.621548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.931719, 37.593372, 48.793819>,  <32.092773, 37.738209, 48.897182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.931719, 37.593372, 48.793819>,  <31.663298, 37.351974, 48.621548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931719, 37.593372, 48.793819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605905, -0.111622, -0.787667,
		-0.427276, 0.789519, -0.440563,
		0.671055, 0.603490, 0.430680,
		32.133034, 37.774418, 48.923023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072090, 37.668278, 48.075905>,  <31.663298, 37.351974, 48.621548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072090, 37.668278, 48.075905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.317738, 37.733440, 48.384792>,  <32.465126, 37.772537, 48.570126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.317738, 37.733440, 48.384792>,  <32.072090, 37.668278, 48.075905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317738, 37.733440, 48.384792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785818, -0.035497, -0.617439,
		-0.073174, 0.986002, -0.149815,
		0.614114, 0.162908, 0.772221,
		32.501972, 37.782314, 48.616459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466640, 38.240482, 48.063061>,  <32.072090, 37.668278, 48.075905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466640, 38.240482, 48.063061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.706501, 38.023712, 48.298595>,  <32.850418, 37.893650, 48.439915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.706501, 38.023712, 48.298595>,  <32.466640, 38.240482, 48.063061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706501, 38.023712, 48.298595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772713, 0.200714, -0.602187,
		0.208155, 0.816105, 0.539114,
		0.599655, -0.541928, 0.588836,
		32.886398, 37.861134, 48.475246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150253, 38.421703, 47.882572>,  <32.466640, 38.240482, 48.063061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150253, 38.421703, 47.882572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.237885, 38.076790, 48.065205>,  <33.290462, 37.869843, 48.174782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.237885, 38.076790, 48.065205>,  <33.150253, 38.421703, 47.882572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237885, 38.076790, 48.065205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738844, -0.159018, -0.654845,
		0.637269, 0.480805, 0.602258,
		0.219083, -0.862288, 0.456578,
		33.303608, 37.818104, 48.202179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849487, 38.361542, 47.936371>,  <33.150253, 38.421703, 47.882572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849487, 38.361542, 47.936371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.737259, 37.982868, 47.999699>,  <33.669922, 37.755665, 48.037693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.737259, 37.982868, 47.999699>,  <33.849487, 38.361542, 47.936371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737259, 37.982868, 47.999699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661784, -0.310266, -0.682479,
		0.695214, -0.086713, 0.713554,
		-0.280572, -0.946687, 0.158316,
		33.653088, 37.698864, 48.047192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360607, 37.912201, 48.175217>,  <33.849487, 38.361542, 47.936371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360607, 37.912201, 48.175217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.129551, 37.642361, 47.991371>,  <33.990917, 37.480457, 47.881062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.129551, 37.642361, 47.991371>,  <34.360607, 37.912201, 48.175217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129551, 37.642361, 47.991371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764113, -0.248784, -0.595180,
		0.287160, -0.695001, 0.659176,
		-0.577643, -0.674596, -0.459618,
		33.956257, 37.439983, 47.853485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820316, 37.311996, 48.061909>,  <34.360607, 37.912201, 48.175217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820316, 37.311996, 48.061909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.507973, 37.237602, 47.823357>,  <34.320564, 37.192966, 47.680225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.507973, 37.237602, 47.823357>,  <34.820316, 37.311996, 48.061909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507973, 37.237602, 47.823357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611409, -0.423442, -0.668488,
		-0.128202, -0.886626, 0.444362,
		-0.780861, -0.185985, -0.596377,
		34.273716, 37.181808, 47.644444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896866, 36.657097, 47.893475>,  <34.820316, 37.311996, 48.061909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896866, 36.657097, 47.893475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.642681, 36.789639, 47.614510>,  <34.490170, 36.869164, 47.447132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.642681, 36.789639, 47.614510>,  <34.896866, 36.657097, 47.893475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642681, 36.789639, 47.614510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527304, -0.473565, -0.705469,
		-0.564034, -0.816050, 0.126208,
		-0.635465, 0.331358, -0.697413,
		34.452042, 36.889046, 47.405285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769844, 36.125843, 47.508221>,  <34.896866, 36.657097, 47.893475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769844, 36.125843, 47.508221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.709614, 36.418541, 47.242325>,  <34.673477, 36.594158, 47.082787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.709614, 36.418541, 47.242325>,  <34.769844, 36.125843, 47.508221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709614, 36.418541, 47.242325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464837, -0.541035, -0.700862,
		-0.872499, -0.414527, -0.258676,
		-0.150574, 0.731744, -0.664740,
		34.664440, 36.638065, 47.042904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765831, 35.796997, 46.850780>,  <34.769844, 36.125843, 47.508221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765831, 35.796997, 46.850780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.834503, 36.177105, 46.746845>,  <34.875706, 36.405170, 46.684486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.834503, 36.177105, 46.746845>,  <34.765831, 35.796997, 46.850780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834503, 36.177105, 46.746845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627600, -0.308801, -0.714674,
		-0.759370, -0.040375, -0.649405,
		0.171682, 0.950269, -0.259834,
		34.886009, 36.462185, 46.668896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862614, 35.787014, 46.134232>,  <34.765831, 35.796997, 46.850780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862614, 35.787014, 46.134232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.032658, 36.119816, 46.276810>,  <35.134686, 36.319496, 46.362358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.032658, 36.119816, 46.276810>,  <34.862614, 35.787014, 46.134232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032658, 36.119816, 46.276810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767076, -0.122109, -0.629828,
		-0.480493, 0.541168, -0.690119,
		0.425112, 0.832002, 0.356444,
		35.160191, 36.369415, 46.383743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079582, 36.150761, 45.565834>,  <34.862614, 35.787014, 46.134232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079582, 36.150761, 45.565834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.299049, 36.328400, 45.849171>,  <35.430729, 36.434982, 46.019173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.299049, 36.328400, 45.849171>,  <35.079582, 36.150761, 45.565834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299049, 36.328400, 45.849171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788565, 0.006547, -0.614916,
		-0.277720, 0.895955, -0.346607,
		0.548668, 0.444097, 0.708337,
		35.463650, 36.461628, 46.061672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.724527, 39.959362, 53.972637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.468946, 40.105732, 53.701984>,  <29.315598, 40.193554, 53.539593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.468946, 40.105732, 53.701984>,  <29.724527, 39.959362, 53.972637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468946, 40.105732, 53.701984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428930, -0.560692, -0.708268,
		-0.638561, -0.742778, 0.201297,
		-0.638951, 0.365930, -0.676636,
		29.277260, 40.215511, 53.498993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437408, 39.428860, 53.636135>,  <29.724527, 39.959362, 53.972637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437408, 39.428860, 53.636135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.375168, 39.730865, 53.381344>,  <29.337824, 39.912067, 53.228470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.375168, 39.730865, 53.381344>,  <29.437408, 39.428860, 53.636135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.375168, 39.730865, 53.381344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374413, -0.551639, -0.745325,
		-0.914113, -0.354467, -0.196851,
		-0.155603, 0.755015, -0.636978,
		29.328487, 39.957371, 53.190250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.117195, 39.126823, 53.096325>,  <29.437408, 39.428860, 53.636135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.117195, 39.126823, 53.096325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.254049, 39.470173, 52.943417>,  <29.336163, 39.676182, 52.851669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.254049, 39.470173, 52.943417>,  <29.117195, 39.126823, 53.096325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.254049, 39.470173, 52.943417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525350, -0.512043, -0.679573,
		-0.779070, 0.031680, -0.626137,
		0.342137, 0.858376, -0.382274,
		29.356691, 39.727684, 52.828735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028185, 39.022789, 52.344734>,  <29.117195, 39.126823, 53.096325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028185, 39.022789, 52.344734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.303879, 39.310242, 52.381653>,  <29.469296, 39.482716, 52.403805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.303879, 39.310242, 52.381653>,  <29.028185, 39.022789, 52.344734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.303879, 39.310242, 52.381653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442765, -0.316922, -0.838761,
		-0.573511, 0.618970, -0.536620,
		0.689235, 0.718635, 0.092300,
		29.510649, 39.525833, 52.409344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.002811, 39.320423, 51.746967>,  <29.028185, 39.022789, 52.344734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.002811, 39.320423, 51.746967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.356611, 39.427822, 51.899582>,  <29.568892, 39.492264, 51.991150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.356611, 39.427822, 51.899582>,  <29.002811, 39.320423, 51.746967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.356611, 39.427822, 51.899582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466475, -0.522580, -0.713660,
		0.007763, 0.809208, -0.587471,
		0.884500, 0.268500, 0.381532,
		29.621962, 39.508373, 52.014042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.455372, 39.650806, 51.203857>,  <29.002811, 39.320423, 51.746967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.455372, 39.650806, 51.203857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.725147, 39.518780, 51.468037>,  <29.887012, 39.439564, 51.626545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.725147, 39.518780, 51.468037>,  <29.455372, 39.650806, 51.203857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.725147, 39.518780, 51.468037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630744, -0.207405, -0.747760,
		0.383788, 0.920892, 0.068303,
		0.674440, -0.330063, 0.660446,
		29.927479, 39.419762, 51.666172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128780, 39.938469, 50.940498>,  <29.455372, 39.650806, 51.203857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128780, 39.938469, 50.940498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.241322, 39.651424, 51.195332>,  <30.308846, 39.479198, 51.348232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.241322, 39.651424, 51.195332>,  <30.128780, 39.938469, 50.940498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241322, 39.651424, 51.195332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734165, -0.266543, -0.624465,
		0.617935, 0.643416, 0.451855,
		0.281352, -0.717615, 0.637079,
		30.325727, 39.436138, 51.386456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928530, 39.975815, 51.019306>,  <30.128780, 39.938469, 50.940498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928530, 39.975815, 51.019306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.825352, 39.605427, 51.129604>,  <30.763445, 39.383194, 51.195782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.825352, 39.605427, 51.129604>,  <30.928530, 39.975815, 51.019306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825352, 39.605427, 51.129604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671565, -0.377021, -0.637852,
		0.694596, 0.020648, 0.719103,
		-0.257947, -0.925974, 0.275744,
		30.747967, 39.327633, 51.212326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570362, 39.638935, 51.000042>,  <30.928530, 39.975815, 51.019306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570362, 39.638935, 51.000042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.311398, 39.334164, 50.992821>,  <31.156019, 39.151302, 50.988487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.311398, 39.334164, 50.992821>,  <31.570362, 39.638935, 51.000042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311398, 39.334164, 50.992821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625648, -0.517789, -0.583488,
		0.435229, -0.389050, 0.811921,
		-0.647410, -0.761928, -0.018052,
		31.117174, 39.105587, 50.987404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944750, 39.045567, 51.030346>,  <31.570362, 39.638935, 51.000042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944750, 39.045567, 51.030346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.596405, 38.926983, 50.873524>,  <31.387398, 38.855831, 50.779430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.596405, 38.926983, 50.873524>,  <31.944750, 39.045567, 51.030346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596405, 38.926983, 50.873524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483865, -0.657341, -0.577735,
		-0.086437, -0.692830, 0.715902,
		-0.870864, -0.296462, -0.392054,
		31.335146, 38.838043, 50.755909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111443, 38.415127, 50.981583>,  <31.944750, 39.045567, 51.030346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111443, 38.415127, 50.981583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.818884, 38.491692, 50.719765>,  <31.643349, 38.537628, 50.562675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.818884, 38.491692, 50.719765>,  <32.111443, 38.415127, 50.981583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818884, 38.491692, 50.719765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381479, -0.680749, -0.625344,
		-0.565273, -0.707067, 0.424879,
		-0.731396, 0.191407, -0.654541,
		31.599464, 38.549114, 50.523403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903231, 37.766033, 50.643917>,  <32.111443, 38.415127, 50.981583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903231, 37.766033, 50.643917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.780210, 38.034214, 50.373833>,  <31.706398, 38.195122, 50.211781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.780210, 38.034214, 50.373833>,  <31.903231, 37.766033, 50.643917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780210, 38.034214, 50.373833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428628, -0.535919, -0.727371,
		-0.849524, -0.513118, -0.122551,
		-0.307550, 0.670448, -0.675213,
		31.687946, 38.235348, 50.171268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724926, 37.318893, 50.039455>,  <31.903231, 37.766033, 50.643917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724926, 37.318893, 50.039455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.774651, 37.674652, 49.863495>,  <31.804485, 37.888107, 49.757919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.774651, 37.674652, 49.863495>,  <31.724926, 37.318893, 50.039455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774651, 37.674652, 49.863495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347211, -0.454305, -0.820397,
		-0.929512, -0.050757, -0.365284,
		0.124309, 0.889399, -0.439906,
		31.811943, 37.941471, 49.731522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512537, 37.256622, 49.441677>,  <31.724926, 37.318893, 50.039455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512537, 37.256622, 49.441677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.749487, 37.576469, 49.402283>,  <31.891657, 37.768379, 49.378647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.749487, 37.576469, 49.402283>,  <31.512537, 37.256622, 49.441677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749487, 37.576469, 49.402283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426416, -0.414893, -0.803762,
		-0.683564, 0.434134, -0.586743,
		0.592376, 0.799620, -0.098484,
		31.927200, 37.816357, 49.372738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011436, 37.573338, 48.966156>,  <31.512537, 37.256622, 49.441677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011436, 37.573338, 48.966156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.739407, 37.285870, 48.908176>,  <30.576189, 37.113388, 48.873390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.739407, 37.285870, 48.908176>,  <31.011436, 37.573338, 48.966156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.739407, 37.285870, 48.908176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472115, 0.278045, 0.836539,
		-0.560894, 0.637342, -0.528387,
		-0.680077, -0.718670, -0.144945,
		30.535383, 37.070271, 48.864693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388882, 37.929497, 48.974579>,  <31.011436, 37.573338, 48.966156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.388882, 37.929497, 48.974579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.260822, 37.558311, 49.050877>,  <30.183987, 37.335598, 49.096657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.260822, 37.558311, 49.050877>,  <30.388882, 37.929497, 48.974579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.260822, 37.558311, 49.050877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669176, 0.364029, 0.647832,
		-0.670603, 0.079760, -0.737516,
		-0.320148, -0.927966, 0.190746,
		30.164778, 37.279922, 49.108101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579506, 37.862404, 48.765038>,  <30.388882, 37.929497, 48.974579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579506, 37.862404, 48.765038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.691334, 37.575718, 49.020588>,  <29.758430, 37.403706, 49.173920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.691334, 37.575718, 49.020588>,  <29.579506, 37.862404, 48.765038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.691334, 37.575718, 49.020588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817421, 0.171379, 0.549957,
		-0.503651, -0.675984, -0.537942,
		0.279570, -0.716711, 0.638878,
		29.775206, 37.360706, 49.212250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034647, 37.501083, 48.905708>,  <29.579506, 37.862404, 48.765038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.034647, 37.501083, 48.905708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.253061, 37.351593, 49.205620>,  <29.384109, 37.261898, 49.385567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.253061, 37.351593, 49.205620>,  <29.034647, 37.501083, 48.905708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.253061, 37.351593, 49.205620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809438, -0.004604, 0.587187,
		-0.215993, -0.927529, -0.305020,
		0.546037, -0.373723, 0.749783,
		29.416872, 37.239475, 49.430553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.589714, 36.934677, 49.157063>,  <29.034647, 37.501083, 48.905708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.589714, 36.934677, 49.157063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.847057, 37.006294, 49.454796>,  <29.001463, 37.049263, 49.633434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.847057, 37.006294, 49.454796>,  <28.589714, 36.934677, 49.157063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847057, 37.006294, 49.454796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751986, -0.034507, 0.658275,
		0.143545, -0.983236, 0.112439,
		0.643360, 0.179045, 0.744333,
		29.040066, 37.060005, 49.678097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.323017, 36.551834, 49.693974>,  <28.589714, 36.934677, 49.157063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.323017, 36.551834, 49.693974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.582079, 36.790607, 49.883377>,  <28.737516, 36.933872, 49.997021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.582079, 36.790607, 49.883377>,  <28.323017, 36.551834, 49.693974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.582079, 36.790607, 49.883377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579863, -0.016989, 0.814537,
		0.494269, -0.802110, 0.335137,
		0.647655, 0.596934, 0.473511,
		28.776375, 36.969688, 50.025429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.483389, 36.236118, 50.419376>,  <28.323017, 36.551834, 49.693974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.483389, 36.236118, 50.419376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.527939, 36.633190, 50.400681>,  <28.554668, 36.871433, 50.389465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.527939, 36.633190, 50.400681>,  <28.483389, 36.236118, 50.419376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.527939, 36.633190, 50.400681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666896, 0.109527, 0.737057,
		0.736780, -0.050921, 0.674212,
		0.111376, 0.992679, -0.046738,
		28.561352, 36.930992, 50.386658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705427, 36.383698, 51.086308>,  <28.483389, 36.236118, 50.419376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.705427, 36.383698, 51.086308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.578001, 36.746449, 50.975971>,  <28.501545, 36.964100, 50.909771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.578001, 36.746449, 50.975971>,  <28.705427, 36.383698, 51.086308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578001, 36.746449, 50.975971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431696, 0.120266, 0.893966,
		0.843893, 0.403863, 0.353184,
		-0.318564, 0.906880, -0.275837,
		28.482431, 37.018513, 50.893219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.629446, 36.770275, 51.700634>,  <28.705427, 36.383698, 51.086308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.629446, 36.770275, 51.700634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.436636, 37.021534, 51.456310>,  <28.320950, 37.172291, 51.309715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.436636, 37.021534, 51.456310>,  <28.629446, 36.770275, 51.700634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.436636, 37.021534, 51.456310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476987, 0.396641, 0.784321,
		0.734939, 0.669409, 0.108427,
		-0.482025, 0.628146, -0.610806,
		28.292028, 37.209976, 51.273067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622622, 37.421104, 52.000778>,  <28.629446, 36.770275, 51.700634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622622, 37.421104, 52.000778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.311186, 37.432804, 51.750038>,  <28.124325, 37.439823, 51.599594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.311186, 37.432804, 51.750038>,  <28.622622, 37.421104, 52.000778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.311186, 37.432804, 51.750038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537724, 0.483855, 0.690462,
		0.323501, 0.874659, -0.360996,
		-0.778589, 0.029249, -0.626853,
		28.077610, 37.441578, 51.561981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.353584, 38.174110, 51.879753>,  <28.622622, 37.421104, 52.000778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.353584, 38.174110, 51.879753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.055872, 37.914394, 51.817192>,  <27.877245, 37.758564, 51.779655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.055872, 37.914394, 51.817192>,  <28.353584, 38.174110, 51.879753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.055872, 37.914394, 51.817192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582339, 0.516264, 0.627975,
		-0.326996, 0.558469, -0.762355,
		-0.744281, -0.649295, -0.156403,
		27.832588, 37.719604, 51.770271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.710979, 38.617645, 51.827793>,  <28.353584, 38.174110, 51.879753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.710979, 38.617645, 51.827793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.566250, 38.246880, 51.867622>,  <27.479412, 38.024422, 51.891521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.566250, 38.246880, 51.867622>,  <27.710979, 38.617645, 51.827793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.566250, 38.246880, 51.867622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760039, 0.355152, 0.544250,
		-0.539837, 0.121241, -0.832993,
		-0.361825, -0.926913, 0.099576,
		27.457703, 37.968807, 51.897495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.955912, 38.694805, 51.702721>,  <27.710979, 38.617645, 51.827793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.955912, 38.694805, 51.702721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.033211, 38.362396, 51.911358>,  <27.079590, 38.162952, 52.036541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.033211, 38.362396, 51.911358>,  <26.955912, 38.694805, 51.702721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.033211, 38.362396, 51.911358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670465, 0.276282, 0.688581,
		-0.716332, -0.482777, -0.503780,
		0.193246, -0.831021, 0.521595,
		27.091185, 38.113091, 52.067837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.277218, 38.403599, 51.956657>,  <26.955912, 38.694805, 51.702721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.277218, 38.403599, 51.956657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.548698, 38.233448, 52.196129>,  <26.711586, 38.131355, 52.339813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.548698, 38.233448, 52.196129>,  <26.277218, 38.403599, 51.956657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.548698, 38.233448, 52.196129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534083, 0.273659, 0.799916,
		-0.504103, -0.862648, -0.041456,
		0.678701, -0.425381, 0.598678,
		26.752308, 38.105835, 52.375732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.895145, 36.415600, 58.524071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.645084, 36.548767, 58.241695>,  <33.495049, 36.628666, 58.072269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.645084, 36.548767, 58.241695>,  <33.895145, 36.415600, 58.524071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645084, 36.548767, 58.241695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364464, -0.675281, -0.641218,
		-0.690183, -0.658147, 0.300814,
		-0.625150, 0.332922, -0.705939,
		33.457539, 36.648643, 58.029915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629673, 35.764229, 58.080700>,  <33.895145, 36.415600, 58.524071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629673, 35.764229, 58.080700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.596783, 36.100731, 57.866962>,  <33.577049, 36.302631, 57.738720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.596783, 36.100731, 57.866962>,  <33.629673, 35.764229, 58.080700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596783, 36.100731, 57.866962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378469, -0.469636, -0.797624,
		-0.921955, -0.267815, -0.279776,
		-0.082223, 0.841260, -0.534343,
		33.572117, 36.353107, 57.706661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300747, 35.544678, 57.421455>,  <33.629673, 35.764229, 58.080700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300747, 35.544678, 57.421455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.487392, 35.894188, 57.366631>,  <33.599380, 36.103893, 57.333736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.487392, 35.894188, 57.366631>,  <33.300747, 35.544678, 57.421455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487392, 35.894188, 57.366631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367653, -0.332560, -0.868467,
		-0.804428, 0.354848, -0.476424,
		0.466613, 0.873778, -0.137059,
		33.627377, 36.156322, 57.325512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413795, 35.570454, 56.671383>,  <33.300747, 35.544678, 57.421455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413795, 35.570454, 56.671383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.633999, 35.880398, 56.795666>,  <33.766121, 36.066364, 56.870235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.633999, 35.880398, 56.795666>,  <33.413795, 35.570454, 56.671383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633999, 35.880398, 56.795666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600824, -0.109339, -0.791869,
		-0.579612, 0.622610, -0.525744,
		0.550509, 0.774856, 0.310705,
		33.799152, 36.112854, 56.888878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530502, 36.209415, 56.133549>,  <33.413795, 35.570454, 56.671383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530502, 36.209415, 56.133549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.845200, 36.161533, 56.375774>,  <34.034016, 36.132805, 56.521111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.845200, 36.161533, 56.375774>,  <33.530502, 36.209415, 56.133549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845200, 36.161533, 56.375774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610104, 0.001589, -0.792320,
		0.093879, 0.992809, 0.074280,
		0.786740, -0.119700, 0.605568,
		34.081223, 36.125622, 56.557446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017082, 36.431801, 55.686283>,  <33.530502, 36.209415, 56.133549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017082, 36.431801, 55.686283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.217354, 36.259121, 55.986404>,  <34.337517, 36.155514, 56.166477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.217354, 36.259121, 55.986404>,  <34.017082, 36.431801, 55.686283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217354, 36.259121, 55.986404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686952, -0.329240, -0.647841,
		0.526705, 0.839781, 0.131716,
		0.500678, -0.431703, 0.750302,
		34.367558, 36.129608, 56.211494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657032, 36.521439, 55.565071>,  <34.017082, 36.431801, 55.686283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657032, 36.521439, 55.565071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.687733, 36.211418, 55.815960>,  <34.706154, 36.025406, 55.966492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.687733, 36.211418, 55.815960>,  <34.657032, 36.521439, 55.565071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687733, 36.211418, 55.815960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684392, -0.416517, -0.598432,
		0.725063, 0.475196, 0.498470,
		0.076751, -0.775050, 0.627222,
		34.710758, 35.978905, 56.004128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384964, 36.240395, 55.519920>,  <34.657032, 36.521439, 55.565071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384964, 36.240395, 55.519920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.172520, 35.947781, 55.690929>,  <35.045052, 35.772213, 55.793537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.172520, 35.947781, 55.690929>,  <35.384964, 36.240395, 55.519920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172520, 35.947781, 55.690929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592904, -0.681330, -0.429249,
		0.605296, 0.025503, 0.795592,
		-0.531113, -0.731532, 0.427527,
		35.013187, 35.728321, 55.819187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902157, 35.667721, 55.687687>,  <35.384964, 36.240395, 55.519920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902157, 35.667721, 55.687687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.544201, 35.489227, 55.690273>,  <35.329426, 35.382130, 55.691826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.544201, 35.489227, 55.690273>,  <35.902157, 35.667721, 55.687687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544201, 35.489227, 55.690273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429098, -0.864324, -0.262333,
		0.122654, -0.231984, 0.964956,
		-0.894892, -0.446237, 0.006469,
		35.275734, 35.355358, 55.692215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979427, 34.933250, 55.981991>,  <35.902157, 35.667721, 55.687687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979427, 34.933250, 55.981991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.625587, 34.915920, 55.796261>,  <35.413284, 34.905521, 55.684822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.625587, 34.915920, 55.796261>,  <35.979427, 34.933250, 55.981991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625587, 34.915920, 55.796261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293977, -0.824730, -0.483112,
		-0.362014, -0.563864, 0.742295,
		-0.884603, -0.043325, -0.464328,
		35.360207, 34.902924, 55.656963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914585, 34.270580, 55.948246>,  <35.979427, 34.933250, 55.981991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914585, 34.270580, 55.948246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.666615, 34.418571, 55.671463>,  <35.517834, 34.507366, 55.505394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.666615, 34.418571, 55.671463>,  <35.914585, 34.270580, 55.948246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666615, 34.418571, 55.671463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303484, -0.700172, -0.646263,
		-0.723600, -0.610631, 0.321766,
		-0.619919, 0.369985, -0.691962,
		35.480637, 34.529568, 55.463875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471954, 33.742661, 55.673050>,  <35.914585, 34.270580, 55.948246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471954, 33.742661, 55.673050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.493160, 34.013531, 55.379486>,  <35.505882, 34.176052, 55.203346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.493160, 34.013531, 55.379486>,  <35.471954, 33.742661, 55.673050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493160, 34.013531, 55.379486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099017, -0.734889, -0.670920,
		-0.993672, -0.037100, -0.106012,
		0.053016, 0.677172, -0.733912,
		35.509064, 34.216682, 55.159313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218784, 33.377949, 55.123203>,  <35.471954, 33.742661, 55.673050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218784, 33.377949, 55.123203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.388393, 33.673267, 54.913395>,  <35.490158, 33.850460, 54.787510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.388393, 33.673267, 54.913395>,  <35.218784, 33.377949, 55.123203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388393, 33.673267, 54.913395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347989, -0.667525, -0.658266,
		-0.836126, 0.096592, -0.539965,
		0.424024, 0.738296, -0.524522,
		35.515602, 33.894756, 54.756039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940304, 33.238701, 54.466175>,  <35.218784, 33.377949, 55.123203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940304, 33.238701, 54.466175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.289375, 33.429657, 54.425121>,  <35.498817, 33.544231, 54.400490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.289375, 33.429657, 54.425121>,  <34.940304, 33.238701, 54.466175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289375, 33.429657, 54.425121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194893, -0.533244, -0.823205,
		-0.447716, 0.698391, -0.558390,
		0.872678, 0.477389, -0.102630,
		35.551178, 33.572872, 54.394333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177868, 33.521191, 54.264267>,  <34.940304, 33.238701, 54.466175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177868, 33.521191, 54.264267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.832268, 33.411530, 54.095341>,  <33.624908, 33.345734, 53.993984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.832268, 33.411530, 54.095341>,  <34.177868, 33.521191, 54.264267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832268, 33.411530, 54.095341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497095, 0.331105, 0.802039,
		-0.080049, 0.902890, -0.422352,
		-0.863996, -0.274152, -0.422317,
		33.573071, 33.329285, 53.968647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809395, 34.133404, 54.242256>,  <34.177868, 33.521191, 54.264267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809395, 34.133404, 54.242256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.585388, 33.802258, 54.229439>,  <33.450985, 33.603569, 54.221748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.585388, 33.802258, 54.229439>,  <33.809395, 34.133404, 54.242256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585388, 33.802258, 54.229439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426341, 0.254808, 0.867932,
		-0.710365, 0.499715, -0.495648,
		-0.560014, -0.827863, -0.032042,
		33.417385, 33.553898, 54.219826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048138, 34.378502, 54.256531>,  <33.809395, 34.133404, 54.242256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048138, 34.378502, 54.256531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.060181, 33.995674, 54.371853>,  <33.067406, 33.765980, 54.441044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.060181, 33.995674, 54.371853>,  <33.048138, 34.378502, 54.256531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060181, 33.995674, 54.371853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578719, 0.218479, 0.785717,
		-0.814971, -0.190502, -0.547295,
		0.030109, -0.957066, 0.288301,
		33.069214, 33.708553, 54.458344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315685, 34.244980, 54.419891>,  <33.048138, 34.378502, 54.256531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315685, 34.244980, 54.419891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.556221, 33.991238, 54.614204>,  <32.700542, 33.838993, 54.730793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.556221, 33.991238, 54.614204>,  <32.315685, 34.244980, 54.419891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556221, 33.991238, 54.614204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344856, 0.342380, 0.873985,
		-0.720738, -0.693089, -0.012873,
		0.601342, -0.634353, 0.485782,
		32.736622, 33.800930, 54.759937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743725, 33.918568, 54.829445>,  <32.315685, 34.244980, 54.419891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743725, 33.918568, 54.829445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.098267, 33.818680, 54.985401>,  <32.310993, 33.758747, 55.078976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.098267, 33.818680, 54.985401>,  <31.743725, 33.918568, 54.829445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098267, 33.818680, 54.985401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381769, 0.082290, 0.920587,
		-0.261971, -0.964816, -0.022396,
		0.886354, -0.249717, 0.389895,
		32.364174, 33.743763, 55.102371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575409, 33.444862, 55.298561>,  <31.743725, 33.918568, 54.829445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575409, 33.444862, 55.298561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.927528, 33.604618, 55.400982>,  <32.138802, 33.700470, 55.462433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.927528, 33.604618, 55.400982>,  <31.575409, 33.444862, 55.298561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927528, 33.604618, 55.400982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353083, 0.191064, 0.915875,
		0.316870, -0.896651, 0.309211,
		0.880299, 0.399390, 0.256049,
		32.191620, 33.724434, 55.477798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710556, 33.138512, 55.879688>,  <31.575409, 33.444862, 55.298561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710556, 33.138512, 55.879688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.945343, 33.461975, 55.895420>,  <32.086216, 33.656052, 55.904861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.945343, 33.461975, 55.895420>,  <31.710556, 33.138512, 55.879688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945343, 33.461975, 55.895420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339571, 0.201795, 0.918679,
		0.734957, -0.552590, 0.393042,
		0.586967, 0.808656, 0.039333,
		32.121433, 33.704571, 55.907219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130913, 33.201988, 56.524094>,  <31.710556, 33.138512, 55.879688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130913, 33.201988, 56.524094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.085011, 33.571545, 56.378082>,  <32.057468, 33.793278, 56.290474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.085011, 33.571545, 56.378082>,  <32.130913, 33.201988, 56.524094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085011, 33.571545, 56.378082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393433, 0.295141, 0.870691,
		0.912163, 0.243534, 0.329621,
		-0.114759, 0.923896, -0.365031,
		32.050583, 33.848713, 56.268574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033554, 33.576599, 57.144508>,  <32.130913, 33.201988, 56.524094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033554, 33.576599, 57.144508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.967121, 33.867264, 56.877861>,  <31.927261, 34.041664, 56.717873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.967121, 33.867264, 56.877861>,  <32.033554, 33.576599, 57.144508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967121, 33.867264, 56.877861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458831, 0.541427, 0.704507,
		0.872864, 0.422871, 0.243494,
		-0.166082, 0.726661, -0.666619,
		31.917297, 34.085262, 56.677876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243065, 34.184170, 57.538574>,  <32.033554, 33.576599, 57.144508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243065, 34.184170, 57.538574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.030567, 34.325291, 57.230465>,  <31.903069, 34.409962, 57.045601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.030567, 34.325291, 57.230465>,  <32.243065, 34.184170, 57.538574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030567, 34.325291, 57.230465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451126, 0.651768, 0.609658,
		0.717125, 0.671364, -0.187089,
		-0.531241, 0.352800, -0.770269,
		31.871195, 34.431129, 56.999386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186264, 34.910225, 57.665714>,  <32.243065, 34.184170, 57.538574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186264, 34.910225, 57.665714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.903961, 34.823586, 57.395901>,  <31.734579, 34.771603, 57.234013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.903961, 34.823586, 57.395901>,  <32.186264, 34.910225, 57.665714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903961, 34.823586, 57.395901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642407, 0.597081, 0.480423,
		0.298691, 0.772386, -0.560539,
		-0.705759, -0.216596, -0.674529,
		31.692234, 34.758606, 57.193542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806923, 35.548557, 57.376705>,  <32.186264, 34.910225, 57.665714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806923, 35.548557, 57.376705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.537922, 35.261047, 57.306168>,  <31.376520, 35.088539, 57.263844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.537922, 35.261047, 57.306168>,  <31.806923, 35.548557, 57.376705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537922, 35.261047, 57.306168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643564, 0.450285, 0.618925,
		-0.365462, 0.529721, -0.765397,
		-0.672504, -0.718776, -0.176347,
		31.336170, 35.045414, 57.253262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.157160, 35.863571, 57.261559>,  <31.806923, 35.548557, 57.376705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.157160, 35.863571, 57.261559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.060946, 35.500576, 57.399319>,  <31.003216, 35.282780, 57.481976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.060946, 35.500576, 57.399319>,  <31.157160, 35.863571, 57.261559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060946, 35.500576, 57.399319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730150, 0.402956, 0.551822,
		-0.639549, -0.118731, -0.759526,
		-0.240537, -0.907485, 0.344402,
		30.988785, 35.228329, 57.502640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366322, 35.770790, 57.225418>,  <31.157160, 35.863571, 57.261559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366322, 35.770790, 57.225418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.524302, 35.518642, 57.492744>,  <30.619089, 35.367352, 57.653141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.524302, 35.518642, 57.492744>,  <30.366322, 35.770790, 57.225418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524302, 35.518642, 57.492744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569715, 0.402634, 0.716457,
		-0.720722, -0.663713, -0.200114,
		0.394949, -0.630374, 0.668314,
		30.642786, 35.329529, 57.693237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686337, 35.381592, 56.883327>,  <30.366322, 35.770790, 57.225418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686337, 35.381592, 56.883327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.313614, 35.364624, 56.739140>,  <29.089981, 35.354443, 56.652626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.313614, 35.364624, 56.739140>,  <29.686337, 35.381592, 56.883327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.313614, 35.364624, 56.739140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352845, -0.338634, -0.872254,
		-0.085066, -0.939961, 0.330509,
		-0.931807, -0.042419, -0.360467,
		29.034071, 35.351898, 56.631001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594334, 34.686859, 56.696583>,  <29.686337, 35.381592, 56.883327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.594334, 34.686859, 56.696583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.319990, 34.890430, 56.488510>,  <29.155384, 35.012573, 56.363667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.319990, 34.890430, 56.488510>,  <29.594334, 34.686859, 56.696583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319990, 34.890430, 56.488510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290419, -0.464002, -0.836874,
		-0.667274, -0.725049, 0.170438,
		-0.685859, 0.508926, -0.520185,
		29.114233, 35.043106, 56.332455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267176, 34.231556, 56.232174>,  <29.594334, 34.686859, 56.696583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267176, 34.231556, 56.232174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.199186, 34.584202, 56.056057>,  <29.158392, 34.795792, 55.950386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.199186, 34.584202, 56.056057>,  <29.267176, 34.231556, 56.232174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.199186, 34.584202, 56.056057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155083, -0.417300, -0.895439,
		-0.973169, -0.220483, -0.065794,
		-0.169974, 0.881617, -0.440296,
		29.148193, 34.848686, 55.923969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906797, 34.064823, 55.582458>,  <29.267176, 34.231556, 56.232174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906797, 34.064823, 55.582458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.064573, 34.427330, 55.521675>,  <29.159239, 34.644836, 55.485207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.064573, 34.427330, 55.521675>,  <28.906797, 34.064823, 55.582458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.064573, 34.427330, 55.521675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172625, -0.235496, -0.956422,
		-0.902563, 0.351017, -0.249334,
		0.394438, 0.906272, -0.151955,
		29.182905, 34.699211, 55.476089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.708506, 34.132584, 54.854931>,  <28.906797, 34.064823, 55.582458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.708506, 34.132584, 54.854931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.992218, 34.404041, 54.931202>,  <29.162445, 34.566917, 54.976963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.992218, 34.404041, 54.931202>,  <28.708506, 34.132584, 54.854931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.992218, 34.404041, 54.931202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350960, -0.105382, -0.930442,
		-0.611349, 0.726864, -0.312924,
		0.709281, 0.678648, 0.190675,
		29.205002, 34.607635, 54.988403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667070, 34.552982, 54.288208>,  <28.708506, 34.132584, 54.854931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.667070, 34.552982, 54.288208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.027004, 34.624004, 54.447594>,  <29.242964, 34.666618, 54.543224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.027004, 34.624004, 54.447594>,  <28.667070, 34.552982, 54.288208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.027004, 34.624004, 54.447594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418194, -0.091123, -0.903776,
		-0.124159, 0.979883, -0.156247,
		0.899833, 0.177553, 0.398467,
		29.296953, 34.677269, 54.567135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936949, 34.970032, 53.761024>,  <28.667070, 34.552982, 54.288208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936949, 34.970032, 53.761024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.239027, 34.817375, 53.974205>,  <29.420273, 34.725780, 54.102112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.239027, 34.817375, 53.974205>,  <28.936949, 34.970032, 53.761024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239027, 34.817375, 53.974205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529598, -0.123878, -0.839155,
		0.386273, 0.915973, 0.108563,
		0.755195, -0.381638, 0.532948,
		29.465586, 34.702885, 54.134090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464947, 35.089039, 53.311256>,  <28.936949, 34.970032, 53.761024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464947, 35.089039, 53.311256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.592953, 34.803207, 53.560085>,  <29.669756, 34.631710, 53.709381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.592953, 34.803207, 53.560085>,  <29.464947, 35.089039, 53.311256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592953, 34.803207, 53.560085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402905, -0.491619, -0.771996,
		0.857472, 0.497684, 0.130582,
		0.320014, -0.714578, 0.622069,
		29.688957, 34.588833, 53.746708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199745, 34.924637, 53.227600>,  <29.464947, 35.089039, 53.311256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199745, 34.924637, 53.227600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.068094, 34.594177, 53.410534>,  <29.989103, 34.395901, 53.520294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.068094, 34.594177, 53.410534>,  <30.199745, 34.924637, 53.227600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068094, 34.594177, 53.410534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520244, -0.562826, -0.642319,
		0.788050, 0.026521, 0.615040,
		-0.329126, -0.826150, 0.457332,
		29.969357, 34.346333, 53.547733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708090, 34.523632, 53.373360>,  <30.199745, 34.924637, 53.227600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.708090, 34.523632, 53.373360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.407583, 34.260120, 53.357300>,  <30.227280, 34.102013, 53.347664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.407583, 34.260120, 53.357300>,  <30.708090, 34.523632, 53.373360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407583, 34.260120, 53.357300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503453, -0.532682, -0.680282,
		0.426768, -0.531286, 0.731850,
		-0.751268, -0.658774, -0.040146,
		30.182203, 34.062489, 53.345257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044472, 33.832905, 53.487152>,  <30.708090, 34.523632, 53.373360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044472, 33.832905, 53.487152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.689611, 33.746235, 53.324173>,  <30.476696, 33.694233, 53.226387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.689611, 33.746235, 53.324173>,  <31.044472, 33.832905, 53.487152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689611, 33.746235, 53.324173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450568, -0.597551, -0.663265,
		-0.099757, -0.772000, 0.627746,
		-0.887151, -0.216677, -0.407448,
		30.423466, 33.681232, 53.201939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865694, 33.121651, 53.573662>,  <31.044472, 33.832905, 53.487152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.865694, 33.121651, 53.573662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.659899, 33.219215, 53.244831>,  <30.536423, 33.277756, 53.047531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.659899, 33.219215, 53.244831>,  <30.865694, 33.121651, 53.573662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659899, 33.219215, 53.244831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404364, -0.776394, -0.483427,
		-0.756168, -0.581136, 0.300818,
		-0.514490, 0.243912, -0.822075,
		30.505552, 33.292389, 52.998207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.774523, 32.468086, 53.318714>,  <30.865694, 33.121651, 53.573662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.774523, 32.468086, 53.318714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.632088, 32.689991, 53.017929>,  <30.546627, 32.823135, 52.837460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.632088, 32.689991, 53.017929>,  <30.774523, 32.468086, 53.318714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632088, 32.689991, 53.017929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244182, -0.721504, -0.647925,
		-0.901985, -0.414332, 0.121456,
		-0.356087, 0.554762, -0.751959,
		30.525261, 32.856419, 52.792343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184008, 32.065247, 52.905907>,  <30.774523, 32.468086, 53.318714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184008, 32.065247, 52.905907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.373230, 32.331745, 52.675312>,  <30.486763, 32.491642, 52.536957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.373230, 32.331745, 52.675312>,  <30.184008, 32.065247, 52.905907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373230, 32.331745, 52.675312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175057, -0.712364, -0.679627,
		-0.863466, 0.220582, -0.453619,
		0.473055, 0.666244, -0.576487,
		30.515146, 32.531620, 52.502365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<25.885824, 37.899612, 52.426666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.233093, 37.952049, 52.618118>,  <26.441456, 37.983513, 52.732990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.233093, 37.952049, 52.618118>,  <25.885824, 37.899612, 52.426666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.233093, 37.952049, 52.618118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495954, 0.263102, 0.827531,
		-0.017448, -0.955820, 0.293433,
		0.868174, 0.131090, 0.478633,
		26.493546, 37.991375, 52.761707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.842131, 37.525269, 53.095436>,  <25.885824, 37.899612, 52.426666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.842131, 37.525269, 53.095436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.137716, 37.787102, 53.159252>,  <26.315067, 37.944202, 53.197540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.137716, 37.787102, 53.159252>,  <25.842131, 37.525269, 53.095436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.137716, 37.787102, 53.159252> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308581, 0.118329, 0.943809,
		0.598925, -0.746671, 0.289433,
		0.738963, 0.654585, 0.159538,
		26.359406, 37.983479, 53.207115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.973745, 37.463173, 53.884403>,  <25.842131, 37.525269, 53.095436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.973745, 37.463173, 53.884403> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.143896, 37.814152, 53.795727>,  <26.245987, 38.024738, 53.742523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.143896, 37.814152, 53.795727>,  <25.973745, 37.463173, 53.884403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.143896, 37.814152, 53.795727> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117799, 0.296553, 0.947724,
		0.897317, -0.377026, 0.229509,
		0.425378, 0.877444, -0.221689,
		26.271509, 38.077385, 53.729221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.442522, 37.644218, 54.517326>,  <25.973745, 37.463173, 53.884403>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.442522, 37.644218, 54.517326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.355835, 37.993404, 54.342529>,  <26.303822, 38.202915, 54.237652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.355835, 37.993404, 54.342529>,  <26.442522, 37.644218, 54.517326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.355835, 37.993404, 54.342529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068290, 0.432977, 0.898814,
		0.973843, 0.224633, -0.034219,
		-0.216719, 0.872967, -0.436992,
		26.290819, 38.255295, 54.211433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.844072, 38.194462, 54.906006>,  <26.442522, 37.644218, 54.517326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.844072, 38.194462, 54.906006> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.542751, 38.375618, 54.715248>,  <26.361958, 38.484310, 54.600792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.542751, 38.375618, 54.715248>,  <26.844072, 38.194462, 54.906006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.542751, 38.375618, 54.715248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183591, 0.551489, 0.813728,
		0.631528, 0.700538, -0.332293,
		-0.753304, 0.452887, -0.476893,
		26.316761, 38.511482, 54.572182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.878763, 38.915325, 55.048069>,  <26.844072, 38.194462, 54.906006>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.878763, 38.915325, 55.048069> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.502743, 38.882561, 54.915646>,  <26.277130, 38.862904, 54.836193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.502743, 38.882561, 54.915646>,  <26.878763, 38.915325, 55.048069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.502743, 38.882561, 54.915646> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285316, 0.720657, 0.631861,
		0.186822, 0.688436, -0.700824,
		-0.940049, -0.081911, -0.331056,
		26.220728, 38.857986, 54.816330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.621449, 39.567574, 54.987679>,  <26.878763, 38.915325, 55.048069>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.621449, 39.567574, 54.987679> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.287889, 39.346844, 54.991920>,  <26.087755, 39.214405, 54.994465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.287889, 39.346844, 54.991920>,  <26.621449, 39.567574, 54.987679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.287889, 39.346844, 54.991920> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419357, 0.645980, 0.637848,
		-0.358829, 0.527451, -0.770089,
		-0.833896, -0.551821, 0.010606,
		26.037722, 39.181297, 54.995102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.065849, 40.114380, 55.178211>,  <26.621449, 39.567574, 54.987679>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.065849, 40.114380, 55.178211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.861149, 39.781216, 55.262463>,  <25.738329, 39.581318, 55.313015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.861149, 39.781216, 55.262463>,  <26.065849, 40.114380, 55.178211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.861149, 39.781216, 55.262463> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497316, 0.487105, 0.717917,
		-0.700563, 0.262643, -0.663498,
		-0.511749, -0.832915, 0.210631,
		25.707624, 39.531342, 55.325653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.314526, 40.309811, 55.139164>,  <26.065849, 40.114380, 55.178211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.314526, 40.309811, 55.139164> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.383400, 39.992386, 55.372608>,  <25.424725, 39.801929, 55.512676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.383400, 39.992386, 55.372608>,  <25.314526, 40.309811, 55.139164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.383400, 39.992386, 55.372608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518159, 0.430911, 0.738801,
		-0.837773, -0.429616, -0.336996,
		0.172186, -0.793566, 0.583615,
		25.435055, 39.754314, 55.547691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.729563, 40.244522, 55.571003>,  <25.314526, 40.309811, 55.139164>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.729563, 40.244522, 55.571003> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.006439, 40.026142, 55.759815>,  <25.172565, 39.895115, 55.873100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.006439, 40.026142, 55.759815>,  <24.729563, 40.244522, 55.571003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.006439, 40.026142, 55.759815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386654, 0.271733, 0.881283,
		-0.609401, -0.792528, -0.023002,
		0.692191, -0.545949, 0.472029,
		25.214096, 39.862358, 55.901424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.416256, 39.844109, 56.085670>,  <24.729563, 40.244522, 55.571003>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.416256, 39.844109, 56.085670> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.797684, 39.859425, 56.205162>,  <25.026541, 39.868614, 56.276859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.797684, 39.859425, 56.205162>,  <24.416256, 39.844109, 56.085670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.797684, 39.859425, 56.205162> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301118, 0.140701, 0.943150,
		-0.005925, -0.989312, 0.145696,
		0.953568, 0.038283, 0.298733,
		25.083754, 39.870911, 56.294781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.463755, 39.333878, 56.654480>,  <24.416256, 39.844109, 56.085670>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.463755, 39.333878, 56.654480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.757223, 39.605175, 56.671021>,  <24.933304, 39.767956, 56.680946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.757223, 39.605175, 56.671021>,  <24.463755, 39.333878, 56.654480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.757223, 39.605175, 56.671021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225653, 0.185787, 0.956328,
		0.640945, -0.710959, 0.289355,
		0.733669, 0.678248, 0.041351,
		24.977324, 39.808651, 56.683426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.764370, 39.175293, 57.289150>,  <24.463755, 39.333878, 56.654480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.764370, 39.175293, 57.289150> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.852678, 39.555492, 57.201687>,  <24.905663, 39.783611, 57.149208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.852678, 39.555492, 57.201687>,  <24.764370, 39.175293, 57.289150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.852678, 39.555492, 57.201687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176580, 0.259438, 0.949479,
		0.959208, -0.171007, 0.225116,
		0.220771, 0.950499, -0.218658,
		24.918909, 39.840641, 57.136089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.274033, 39.403229, 57.731827>,  <24.764370, 39.175293, 57.289150>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.274033, 39.403229, 57.731827> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.020926, 39.693157, 57.622837>,  <24.869061, 39.867115, 57.557446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.020926, 39.693157, 57.622837>,  <25.274033, 39.403229, 57.731827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.020926, 39.693157, 57.622837> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379858, 0.016070, 0.924905,
		0.674768, 0.688752, 0.265160,
		-0.632769, 0.724819, -0.272471,
		24.831095, 39.910603, 57.541096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.849251, 39.728226, 58.158142>,  <25.274033, 39.403229, 57.731827>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.849251, 39.728226, 58.158142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.707888, 39.498672, 58.453644>,  <25.623070, 39.360939, 58.630943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.707888, 39.498672, 58.453644>,  <25.849251, 39.728226, 58.158142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.707888, 39.498672, 58.453644> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716721, -0.673617, -0.180419,
		0.601177, 0.465717, 0.649380,
		-0.353409, -0.573888, 0.738752,
		25.601866, 39.326508, 58.675270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.488972, 39.479462, 58.479893>,  <25.849251, 39.728226, 58.158142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.488972, 39.479462, 58.479893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.203033, 39.236729, 58.618889>,  <26.031471, 39.091087, 58.702286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.203033, 39.236729, 58.618889>,  <26.488972, 39.479462, 58.479893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.203033, 39.236729, 58.618889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625340, -0.777142, -0.070718,
		0.312964, 0.166748, 0.935013,
		-0.714845, -0.606832, 0.347492,
		25.988581, 39.054680, 58.723137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.809534, 39.142509, 58.987988>,  <26.488972, 39.479462, 58.479893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.809534, 39.142509, 58.987988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.486660, 38.926975, 58.891563>,  <26.292934, 38.797657, 58.833710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.486660, 38.926975, 58.891563>,  <26.809534, 39.142509, 58.987988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.486660, 38.926975, 58.891563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570156, -0.817436, -0.081979,
		-0.152875, -0.203612, 0.967042,
		-0.807187, -0.538832, -0.241057,
		26.244503, 38.765327, 58.819248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.914518, 38.487209, 59.255089>,  <26.809534, 39.142509, 58.987988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.914518, 38.487209, 59.255089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.598658, 38.383812, 59.032509>,  <26.409142, 38.321774, 58.898960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.598658, 38.383812, 59.032509>,  <26.914518, 38.487209, 59.255089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.598658, 38.383812, 59.032509> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406462, -0.899758, -0.158825,
		-0.459611, -0.351590, 0.815563,
		-0.789650, -0.258497, -0.556446,
		26.361763, 38.306263, 58.865574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.717850, 37.824345, 59.513180>,  <26.914518, 38.487209, 59.255089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.717850, 37.824345, 59.513180> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.621332, 37.864262, 59.127056>,  <26.563421, 37.888214, 58.895382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.621332, 37.864262, 59.127056>,  <26.717850, 37.824345, 59.513180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.621332, 37.864262, 59.127056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282053, -0.944548, -0.168155,
		-0.928560, -0.312842, 0.199765,
		-0.241293, 0.099797, -0.965307,
		26.548944, 37.894199, 58.837463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.491936, 37.267845, 59.327709>,  <26.717850, 37.824345, 59.513180>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.491936, 37.267845, 59.327709> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.548658, 37.396076, 58.953091>,  <26.582691, 37.473015, 58.728321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.548658, 37.396076, 58.953091>,  <26.491936, 37.267845, 59.327709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.548658, 37.396076, 58.953091> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302383, -0.914914, -0.267388,
		-0.942579, -0.245278, -0.226679,
		0.141807, 0.320579, -0.936547,
		26.591200, 37.492249, 58.672127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236923, 36.753059, 58.924297>,  <26.491936, 37.267845, 59.327709>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.236923, 36.753059, 58.924297> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.496155, 36.965069, 58.705551>,  <26.651693, 37.092274, 58.574303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.496155, 36.965069, 58.705551>,  <26.236923, 36.753059, 58.924297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.496155, 36.965069, 58.705551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351868, -0.845233, -0.402206,
		-0.675411, 0.068236, -0.734278,
		0.648081, 0.530023, -0.546870,
		26.690578, 37.124077, 58.541489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.274761, 36.355839, 58.303444>,  <26.236923, 36.753059, 58.924297>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.274761, 36.355839, 58.303444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.602411, 36.578281, 58.247177>,  <26.799002, 36.711746, 58.213417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.602411, 36.578281, 58.247177>,  <26.274761, 36.355839, 58.303444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.602411, 36.578281, 58.247177> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437066, -0.763886, -0.474817,
		-0.371498, 0.327455, -0.868771,
		0.819123, 0.556104, -0.140662,
		26.848148, 36.745113, 58.204979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.473763, 36.292080, 57.551865>,  <26.274761, 36.355839, 58.303444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.473763, 36.292080, 57.551865> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.815685, 36.386551, 57.736702>,  <27.020838, 36.443233, 57.847603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.815685, 36.386551, 57.736702>,  <26.473763, 36.292080, 57.551865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.815685, 36.386551, 57.736702> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499994, -0.613284, -0.611465,
		0.138977, 0.753725, -0.642326,
		0.854805, 0.236179, 0.462090,
		27.072126, 36.457405, 57.875328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.931364, 36.266647, 57.008511>,  <26.473763, 36.292080, 57.551865>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.931364, 36.266647, 57.008511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.182110, 36.316906, 57.316082>,  <27.332558, 36.347061, 57.500626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.182110, 36.316906, 57.316082>,  <26.931364, 36.266647, 57.008511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.182110, 36.316906, 57.316082> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746578, -0.379152, -0.546686,
		0.222851, 0.916764, -0.331483,
		0.626865, 0.125648, 0.768930,
		27.370169, 36.354599, 57.546761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.466087, 36.671593, 56.872002>,  <26.931364, 36.266647, 57.008511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.466087, 36.671593, 56.872002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.629719, 36.460152, 57.169521>,  <27.727898, 36.333286, 57.348034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.629719, 36.460152, 57.169521>,  <27.466087, 36.671593, 56.872002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.629719, 36.460152, 57.169521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787278, -0.207665, -0.580576,
		0.461352, 0.823079, 0.331202,
		0.409081, -0.528598, 0.743799,
		27.752443, 36.301571, 57.392662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.194374, 36.941769, 56.898659>,  <27.466087, 36.671593, 56.872002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.194374, 36.941769, 56.898659> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.178902, 36.576553, 57.061077>,  <28.169619, 36.357426, 57.158527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.178902, 36.576553, 57.061077>,  <28.194374, 36.941769, 56.898659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.178902, 36.576553, 57.061077> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773654, -0.284544, -0.566122,
		0.632427, 0.292240, 0.717378,
		-0.038682, -0.913033, 0.406046,
		28.167297, 36.302643, 57.182892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.947229, 36.693535, 56.851292>,  <28.194374, 36.941769, 56.898659>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.947229, 36.693535, 56.851292> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.752720, 36.357094, 56.946022>,  <28.636013, 36.155231, 57.002861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.752720, 36.357094, 56.946022>,  <28.947229, 36.693535, 56.851292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.752720, 36.357094, 56.946022> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615994, -0.522201, -0.589795,
		0.619749, -0.140916, 0.772045,
		-0.486275, -0.841099, 0.236830,
		28.606838, 36.104763, 57.017071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.435934, 36.108482, 56.921848>,  <28.947229, 36.693535, 56.851292>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.435934, 36.108482, 56.921848> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.102974, 35.896965, 56.855537>,  <28.903198, 35.770054, 56.815750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.102974, 35.896965, 56.855537>,  <29.435934, 36.108482, 56.921848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.102974, 35.896965, 56.855537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520324, -0.642815, -0.562185,
		0.190717, -0.554221, 0.810226,
		-0.832400, -0.528798, -0.165778,
		28.853254, 35.738327, 56.805805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743313, 35.692703, 57.591022>,  <29.435934, 36.108482, 56.921848>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743313, 35.692703, 57.591022> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.027008, 35.529804, 57.821198>,  <30.197226, 35.432064, 57.959301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.027008, 35.529804, 57.821198>,  <29.743313, 35.692703, 57.591022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027008, 35.529804, 57.821198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470395, 0.334588, 0.816566,
		-0.525078, -0.849824, 0.045737,
		0.709240, -0.407247, 0.575438,
		30.239780, 35.407631, 57.993828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.338373, 35.253689, 58.148666>,  <29.743313, 35.692703, 57.591022>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.338373, 35.253689, 58.148666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.703392, 35.349457, 58.281292>,  <29.922403, 35.406918, 58.360867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.703392, 35.349457, 58.281292>,  <29.338373, 35.253689, 58.148666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703392, 35.349457, 58.281292> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397730, 0.330797, 0.855794,
		0.095216, -0.912826, 0.397093,
		0.912548, 0.239421, 0.331562,
		29.977156, 35.421284, 58.380760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.431696, 34.962818, 58.918209>,  <29.338373, 35.253689, 58.148666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.431696, 34.962818, 58.918209> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.715988, 35.237926, 58.859093>,  <29.886562, 35.402992, 58.823624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.715988, 35.237926, 58.859093>,  <29.431696, 34.962818, 58.918209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715988, 35.237926, 58.859093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340796, 0.520416, 0.782959,
		0.615405, -0.506105, 0.604263,
		0.710728, 0.687767, -0.147789,
		29.929207, 35.444256, 58.814754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676952, 35.124229, 59.601124>,  <29.431696, 34.962818, 58.918209>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676952, 35.124229, 59.601124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.789114, 35.427910, 59.366184>,  <29.856411, 35.610119, 59.225220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.789114, 35.427910, 59.366184>,  <29.676952, 35.124229, 59.601124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789114, 35.427910, 59.366184> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276873, 0.649863, 0.707828,
		0.919084, -0.035856, 0.392428,
		0.280404, 0.759205, -0.587350,
		29.873236, 35.655670, 59.189980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056776, 35.530727, 59.953854>,  <29.676952, 35.124229, 59.601124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056776, 35.530727, 59.953854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.958481, 35.780972, 59.657684>,  <29.899504, 35.931118, 59.479984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.958481, 35.780972, 59.657684>,  <30.056776, 35.530727, 59.953854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.958481, 35.780972, 59.657684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240348, 0.700663, 0.671792,
		0.939066, 0.343043, -0.021815,
		-0.245739, 0.625614, -0.740419,
		29.884760, 35.968655, 59.435558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321625, 36.241116, 60.177639>,  <30.056776, 35.530727, 59.953854>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321625, 36.241116, 60.177639> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.036385, 36.289310, 59.901386>,  <29.865240, 36.318226, 59.735634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.036385, 36.289310, 59.901386>,  <30.321625, 36.241116, 60.177639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.036385, 36.289310, 59.901386> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299530, 0.838317, 0.455529,
		0.633854, 0.531702, -0.561713,
		-0.713100, 0.120489, -0.690631,
		29.822454, 36.325459, 59.694199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.327614, 37.037426, 59.985352>,  <30.321625, 36.241116, 60.177639>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.327614, 37.037426, 59.985352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.975271, 36.873104, 59.891266>,  <29.763865, 36.774509, 59.834812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.975271, 36.873104, 59.891266>,  <30.327614, 37.037426, 59.985352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975271, 36.873104, 59.891266> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472137, 0.798402, 0.373685,
		0.034287, 0.440219, -0.897236,
		-0.880858, -0.410806, -0.235218,
		29.711014, 36.749863, 59.820702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430662, 37.315090, 59.235668>,  <30.327614, 37.037426, 59.985352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430662, 37.315090, 59.235668> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.754541, 37.538231, 59.308540>,  <30.948870, 37.672115, 59.352264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.754541, 37.538231, 59.308540>,  <30.430662, 37.315090, 59.235668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754541, 37.538231, 59.308540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514347, -0.525135, -0.677997,
		-0.282554, 0.642676, -0.712131,
		0.809697, 0.557854, 0.182180,
		30.997450, 37.705585, 59.363194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794739, 37.459980, 58.618458>,  <30.430662, 37.315090, 59.235668>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794739, 37.459980, 58.618458> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.083775, 37.546280, 58.881157>,  <31.257196, 37.598061, 59.038776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.083775, 37.546280, 58.881157>,  <30.794739, 37.459980, 58.618458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083775, 37.546280, 58.881157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690059, -0.168715, -0.703814,
		-0.041046, 0.961762, -0.270793,
		0.722588, 0.215752, 0.656748,
		31.300550, 37.611004, 59.078182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329788, 37.885155, 58.350735>,  <30.794739, 37.459980, 58.618458>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329788, 37.885155, 58.350735> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.513241, 37.741722, 58.675961>,  <31.623312, 37.655663, 58.871098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.513241, 37.741722, 58.675961>,  <31.329788, 37.885155, 58.350735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513241, 37.741722, 58.675961> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797185, -0.238239, -0.554742,
		0.392627, 0.902584, 0.176596,
		0.458629, -0.358586, 0.813065,
		31.650829, 37.634148, 58.919880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062328, 38.266491, 58.532516>,  <31.329788, 37.885155, 58.350735>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062328, 38.266491, 58.532516> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.069576, 37.898613, 58.689407>,  <32.073925, 37.677887, 58.783543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.069576, 37.898613, 58.689407>,  <32.062328, 38.266491, 58.532516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069576, 37.898613, 58.689407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728535, -0.256527, -0.635162,
		0.684769, 0.297259, 0.665379,
		0.018120, -0.919691, 0.392225,
		32.075012, 37.622707, 58.807076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753132, 38.134781, 58.584564>,  <32.062328, 38.266491, 58.532516>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753132, 38.134781, 58.584564> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.594761, 37.770206, 58.629333>,  <32.499741, 37.551460, 58.656193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.594761, 37.770206, 58.629333>,  <32.753132, 38.134781, 58.584564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594761, 37.770206, 58.629333> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708787, -0.380811, -0.593805,
		0.583836, -0.155773, 0.796787,
		-0.395924, -0.911437, 0.111921,
		32.475983, 37.496777, 58.662910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348885, 37.705181, 58.805004>,  <32.753132, 38.134781, 58.584564>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348885, 37.705181, 58.805004> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.096886, 37.435978, 58.650002>,  <32.945686, 37.274456, 58.556999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.096886, 37.435978, 58.650002>,  <33.348885, 37.705181, 58.805004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096886, 37.435978, 58.650002> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689748, -0.255623, -0.677425,
		0.356859, -0.694056, 0.625250,
		-0.629999, -0.673010, -0.387503,
		32.907887, 37.234074, 58.533752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762859, 37.208748, 58.638824>,  <33.348885, 37.705181, 58.805004>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762859, 37.208748, 58.638824> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.445484, 37.096588, 58.422737>,  <33.255058, 37.029293, 58.293083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.445484, 37.096588, 58.422737>,  <33.762859, 37.208748, 58.638824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445484, 37.096588, 58.422737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602056, -0.231200, -0.764248,
		0.089392, -0.931625, 0.352255,
		-0.793434, -0.280395, -0.540223,
		33.207455, 37.012470, 58.260670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<27.403988, 42.523113, 57.310715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162996, 42.208614, 57.255821>,  <27.018402, 42.019917, 57.222885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162996, 42.208614, 57.255821>,  <27.403988, 42.523113, 57.310715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.162996, 42.208614, 57.255821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698508, -0.436234, -0.567262,
		0.386142, -0.437623, 0.812022,
		-0.602479, -0.786248, -0.137235,
		26.982252, 41.972740, 57.214649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.786594, 41.884434, 57.273838>,  <27.403988, 42.523113, 57.310715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.786594, 41.884434, 57.273838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.431976, 41.799343, 57.109505>,  <27.219206, 41.748287, 57.010902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.431976, 41.799343, 57.109505>,  <27.786594, 41.884434, 57.273838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.431976, 41.799343, 57.109505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462595, -0.394739, -0.793843,
		0.006700, -0.893828, 0.448360,
		-0.886545, -0.212728, -0.410836,
		27.166014, 41.735523, 56.986256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.726120, 41.225178, 57.174049>,  <27.786594, 41.884434, 57.273838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.726120, 41.225178, 57.174049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.481289, 41.389473, 56.903744>,  <27.334391, 41.488049, 56.741562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.481289, 41.389473, 56.903744>,  <27.726120, 41.225178, 57.174049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.481289, 41.389473, 56.903744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510207, -0.447778, -0.734291,
		-0.604193, -0.794222, 0.064514,
		-0.612078, 0.410738, -0.675762,
		27.297665, 41.512695, 56.701015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.778637, 40.746662, 56.671551>,  <27.726120, 41.225178, 57.174049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.778637, 40.746662, 56.671551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.590868, 41.037300, 56.470871>,  <27.478207, 41.211681, 56.350464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.590868, 41.037300, 56.470871>,  <27.778637, 40.746662, 56.671551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.590868, 41.037300, 56.470871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443866, -0.297004, -0.845442,
		-0.763298, -0.619560, -0.183088,
		-0.469424, 0.726591, -0.501704,
		27.450041, 41.255276, 56.320358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.401796, 40.445602, 56.115028>,  <27.778637, 40.746662, 56.671551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.401796, 40.445602, 56.115028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485800, 40.822788, 56.011711>,  <27.536201, 41.049099, 55.949722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485800, 40.822788, 56.011711>,  <27.401796, 40.445602, 56.115028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.485800, 40.822788, 56.011711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283477, -0.311564, -0.906956,
		-0.935701, 0.117248, -0.332740,
		0.210009, 0.942964, -0.258293,
		27.548803, 41.105679, 55.934223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108917, 40.546799, 55.393181>,  <27.401796, 40.445602, 56.115028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.108917, 40.546799, 55.393181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.361980, 40.853466, 55.436924>,  <27.513819, 41.037468, 55.463169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.361980, 40.853466, 55.436924>,  <27.108917, 40.546799, 55.393181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.361980, 40.853466, 55.436924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305728, -0.117512, -0.944839,
		-0.711529, 0.631195, -0.308738,
		0.632658, 0.766671, 0.109361,
		27.551777, 41.083466, 55.469730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.055182, 41.001827, 54.817001>,  <27.108917, 40.546799, 55.393181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.055182, 41.001827, 54.817001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.422325, 41.087200, 54.950855>,  <27.642611, 41.138424, 55.031170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.422325, 41.087200, 54.950855>,  <27.055182, 41.001827, 54.817001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.422325, 41.087200, 54.950855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317691, 0.110348, -0.941751,
		-0.237927, 0.970706, 0.033478,
		0.917858, 0.213432, 0.334639,
		27.697683, 41.151230, 55.051247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.291588, 41.408051, 54.332901>,  <27.055182, 41.001827, 54.817001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.291588, 41.408051, 54.332901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.626045, 41.289627, 54.517601>,  <27.826719, 41.218575, 54.628422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.626045, 41.289627, 54.517601>,  <27.291588, 41.408051, 54.332901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.626045, 41.289627, 54.517601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516693, 0.142583, -0.844215,
		0.184099, 0.944468, 0.272191,
		0.836144, -0.296058, 0.461750,
		27.876888, 41.200809, 54.656128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.871592, 41.818848, 54.186756>,  <27.291588, 41.408051, 54.332901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.871592, 41.818848, 54.186756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.041807, 41.474377, 54.297958>,  <28.143936, 41.267693, 54.364677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.041807, 41.474377, 54.297958>,  <27.871592, 41.818848, 54.186756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.041807, 41.474377, 54.297958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543029, -0.002742, -0.839709,
		0.723903, 0.508293, 0.466479,
		0.425539, -0.861180, 0.278003,
		28.169468, 41.216022, 54.381359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.498722, 41.890644, 53.844700>,  <27.871592, 41.818848, 54.186756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.498722, 41.890644, 53.844700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493391, 41.510483, 53.968994>,  <28.490192, 41.282387, 54.043571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493391, 41.510483, 53.968994>,  <28.498722, 41.890644, 53.844700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.493391, 41.510483, 53.968994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599206, -0.256372, -0.758437,
		0.800484, 0.176083, 0.572905,
		-0.013329, -0.950405, 0.310731,
		28.489393, 41.225361, 54.062214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.190075, 41.695961, 53.926296>,  <28.498722, 41.890644, 53.844700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.190075, 41.695961, 53.926296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993498, 41.350563, 53.880932>,  <28.875551, 41.143326, 53.853714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993498, 41.350563, 53.880932>,  <29.190075, 41.695961, 53.926296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.993498, 41.350563, 53.880932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661718, -0.285553, -0.693245,
		0.566228, -0.415737, 0.711722,
		-0.491442, -0.863494, -0.113412,
		28.846066, 41.091515, 53.846909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766394, 41.184292, 53.881889>,  <29.190075, 41.695961, 53.926296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766394, 41.184292, 53.881889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433611, 41.012585, 53.741272>,  <29.233942, 40.909561, 53.656902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433611, 41.012585, 53.741272>,  <29.766394, 41.184292, 53.881889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433611, 41.012585, 53.741272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478015, -0.232866, -0.846921,
		0.281693, -0.872642, 0.398930,
		-0.831956, -0.429266, -0.351539,
		29.184025, 40.883804, 53.635811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388321, 41.344273, 54.284519>,  <29.766394, 41.184292, 53.881889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.388321, 41.344273, 54.284519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.720249, 41.203636, 54.457851>,  <30.919407, 41.119255, 54.561852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.720249, 41.203636, 54.457851>,  <30.388321, 41.344273, 54.284519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720249, 41.203636, 54.457851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367205, 0.240672, 0.898464,
		-0.420186, -0.904687, 0.070607,
		0.829822, -0.351595, 0.433332,
		30.969196, 41.098156, 54.587852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154642, 40.977180, 54.744743>,  <30.388321, 41.344273, 54.284519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154642, 40.977180, 54.744743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529499, 41.029686, 54.874069>,  <30.754414, 41.061188, 54.951664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529499, 41.029686, 54.874069>,  <30.154642, 40.977180, 54.744743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529499, 41.029686, 54.874069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347236, 0.259170, 0.901254,
		0.034508, -0.956870, 0.288459,
		0.937143, 0.131264, 0.323316,
		30.810642, 41.069065, 54.971066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.176815, 40.731026, 55.467682>,  <30.154642, 40.977180, 54.744743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.176815, 40.731026, 55.467682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.499889, 40.964722, 55.435913>,  <30.693735, 41.104939, 55.416851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.499889, 40.964722, 55.435913>,  <30.176815, 40.731026, 55.467682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.499889, 40.964722, 55.435913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136900, 0.316851, 0.938543,
		0.573498, -0.747176, 0.335899,
		0.807687, 0.584237, -0.079425,
		30.742195, 41.139992, 55.412086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490988, 40.717049, 56.191097>,  <30.176815, 40.731026, 55.467682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.490988, 40.717049, 56.191097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708849, 41.003319, 56.016209>,  <30.839565, 41.175083, 55.911278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708849, 41.003319, 56.016209>,  <30.490988, 40.717049, 56.191097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708849, 41.003319, 56.016209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181759, 0.408206, 0.894612,
		0.818730, -0.566720, 0.092249,
		0.544652, 0.715678, -0.437217,
		30.872244, 41.218021, 55.885044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.118761, 40.777153, 56.661476>,  <30.490988, 40.717049, 56.191097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.118761, 40.777153, 56.661476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049978, 41.099037, 56.434189>,  <31.008709, 41.292168, 56.297817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049978, 41.099037, 56.434189>,  <31.118761, 40.777153, 56.661476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049978, 41.099037, 56.434189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183825, 0.592892, 0.784020,
		0.967801, 0.030366, -0.249879,
		-0.171959, 0.804709, -0.568219,
		30.998390, 41.340450, 56.263721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717953, 41.216541, 56.807152>,  <31.118761, 40.777153, 56.661476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717953, 41.216541, 56.807152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406017, 41.420368, 56.661716>,  <31.218857, 41.542664, 56.574455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406017, 41.420368, 56.661716>,  <31.717953, 41.216541, 56.807152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406017, 41.420368, 56.661716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007107, 0.573590, 0.819112,
		0.625943, 0.641357, -0.443685,
		-0.779836, 0.509564, -0.363593,
		31.172066, 41.573238, 56.552639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836493, 41.984039, 56.875431>,  <31.717953, 41.216541, 56.807152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836493, 41.984039, 56.875431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444124, 41.906593, 56.868355>,  <31.208704, 41.860126, 56.864109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444124, 41.906593, 56.868355>,  <31.836493, 41.984039, 56.875431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444124, 41.906593, 56.868355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084507, 0.342669, 0.935648,
		-0.175093, 0.919289, -0.352492,
		-0.980919, -0.193613, -0.017687,
		31.149849, 41.848511, 56.863049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550068, 42.427502, 57.341969>,  <31.836493, 41.984039, 56.875431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550068, 42.427502, 57.341969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206936, 42.225971, 57.301395>,  <31.001057, 42.105053, 57.277054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206936, 42.225971, 57.301395>,  <31.550068, 42.427502, 57.341969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206936, 42.225971, 57.301395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273803, 0.281013, 0.919817,
		-0.434923, 0.816819, -0.379010,
		-0.857831, -0.503824, -0.101429,
		30.949587, 42.074825, 57.270966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058428, 42.902103, 57.561661>,  <31.550068, 42.427502, 57.341969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058428, 42.902103, 57.561661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889996, 42.539745, 57.579773>,  <30.788937, 42.322330, 57.590641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889996, 42.539745, 57.579773>,  <31.058428, 42.902103, 57.561661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889996, 42.539745, 57.579773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426975, 0.242022, 0.871274,
		-0.800239, 0.347542, -0.488704,
		-0.421081, -0.905892, 0.045283,
		30.763672, 42.267979, 57.593357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315447, 42.935966, 57.675022>,  <31.058428, 42.902103, 57.561661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.315447, 42.935966, 57.675022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.419899, 42.585194, 57.836418>,  <30.482571, 42.374729, 57.933254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.419899, 42.585194, 57.836418>,  <30.315447, 42.935966, 57.675022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.419899, 42.585194, 57.836418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443854, 0.262109, 0.856909,
		-0.857207, -0.402857, -0.320784,
		0.261132, -0.876929, 0.403492,
		30.498238, 42.322113, 57.957466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.764175, 42.744728, 58.101860>,  <30.315447, 42.935966, 57.675022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.764175, 42.744728, 58.101860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075443, 42.530716, 58.233433>,  <30.262203, 42.402309, 58.312378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075443, 42.530716, 58.233433>,  <29.764175, 42.744728, 58.101860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075443, 42.530716, 58.233433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325289, 0.104674, 0.939803,
		-0.537254, -0.838323, -0.092585,
		0.778168, -0.535030, 0.328934,
		30.308893, 42.370209, 58.332111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.431849, 42.104481, 58.420795>,  <29.764175, 42.744728, 58.101860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.431849, 42.104481, 58.420795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804234, 42.174568, 58.548923>,  <30.027664, 42.216621, 58.625801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804234, 42.174568, 58.548923>,  <29.431849, 42.104481, 58.420795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804234, 42.174568, 58.548923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290390, -0.176434, 0.940502,
		0.221311, -0.968591, -0.113372,
		0.930964, 0.175221, 0.320316,
		30.083523, 42.227135, 58.645020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.512808, 41.636589, 58.981869>,  <29.431849, 42.104481, 58.420795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.512808, 41.636589, 58.981869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808071, 41.903488, 59.021667>,  <29.985229, 42.063629, 59.045547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808071, 41.903488, 59.021667>,  <29.512808, 41.636589, 58.981869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808071, 41.903488, 59.021667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075825, -0.064489, 0.995034,
		0.670353, -0.742036, 0.002991,
		0.738158, 0.667250, 0.099495,
		30.029518, 42.103664, 59.051517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858982, 41.308029, 59.381599>,  <29.512808, 41.636589, 58.981869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858982, 41.308029, 59.381599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.939327, 41.698750, 59.411320>,  <29.987535, 41.933182, 59.429150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.939327, 41.698750, 59.411320>,  <29.858982, 41.308029, 59.381599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.939327, 41.698750, 59.411320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083781, -0.092694, 0.992164,
		0.976030, -0.193066, -0.100456,
		0.200865, 0.976798, 0.074297,
		29.999586, 41.991787, 59.433609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127796, 40.631050, 59.364578>,  <29.858982, 41.308029, 59.381599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.127796, 40.631050, 59.364578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.120893, 40.512737, 59.746616>,  <30.116753, 40.441750, 59.975842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.120893, 40.512737, 59.746616>,  <30.127796, 40.631050, 59.364578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.120893, 40.512737, 59.746616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724891, -0.661623, -0.191802,
		0.688647, 0.689033, 0.225829,
		-0.017256, -0.295786, 0.955099,
		30.115717, 40.424000, 60.033146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866133, 40.458557, 59.485489>,  <30.127796, 40.631050, 59.364578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866133, 40.458557, 59.485489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.623173, 40.296913, 59.759060>,  <30.477396, 40.199928, 59.923203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.623173, 40.296913, 59.759060>,  <30.866133, 40.458557, 59.485489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623173, 40.296913, 59.759060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490889, -0.867830, -0.076809,
		0.624573, 0.289079, 0.725494,
		-0.607401, -0.404110, 0.683929,
		30.440952, 40.175678, 59.964237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211388, 40.251015, 60.053608>,  <30.866133, 40.458557, 59.485489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211388, 40.251015, 60.053608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878790, 40.028801, 60.052998>,  <30.679232, 39.895473, 60.052631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878790, 40.028801, 60.052998>,  <31.211388, 40.251015, 60.053608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878790, 40.028801, 60.052998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548231, -0.820115, -0.163875,
		0.089787, -0.137097, 0.986480,
		-0.831493, -0.555533, -0.001525,
		30.629341, 39.862141, 60.052540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435205, 39.503868, 60.358181>,  <31.211388, 40.251015, 60.053608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435205, 39.503868, 60.358181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.065926, 39.416771, 60.231506>,  <30.844358, 39.364513, 60.155502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.065926, 39.416771, 60.231506>,  <31.435205, 39.503868, 60.358181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065926, 39.416771, 60.231506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253450, -0.964376, -0.075772,
		-0.288904, -0.150216, 0.945499,
		-0.923200, -0.217746, -0.316684,
		30.788965, 39.351448, 60.136501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240736, 38.907955, 60.781361>,  <31.435205, 39.503868, 60.358181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240736, 38.907955, 60.781361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.019911, 38.913670, 60.447887>,  <30.887417, 38.917099, 60.247803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.019911, 38.913670, 60.447887>,  <31.240736, 38.907955, 60.781361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019911, 38.913670, 60.447887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294898, -0.931884, -0.211250,
		-0.779913, -0.362474, 0.510244,
		-0.552061, 0.014286, -0.833681,
		30.854292, 38.917957, 60.197784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844450, 38.314487, 60.789070>,  <31.240736, 38.907955, 60.781361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844450, 38.314487, 60.789070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.852057, 38.424515, 60.404575>,  <30.856621, 38.490532, 60.173878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.852057, 38.424515, 60.404575>,  <30.844450, 38.314487, 60.789070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852057, 38.424515, 60.404575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119498, -0.955144, -0.270961,
		-0.992652, -0.109713, -0.051032,
		0.019014, 0.275068, -0.961237,
		30.857761, 38.507034, 60.116203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417625, 37.829857, 60.383205>,  <30.844450, 38.314487, 60.789070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417625, 37.829857, 60.383205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708160, 37.977757, 60.151440>,  <30.882481, 38.066498, 60.012379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708160, 37.977757, 60.151440>,  <30.417625, 37.829857, 60.383205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708160, 37.977757, 60.151440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262692, -0.928318, -0.263094,
		-0.635161, 0.038886, -0.771400,
		0.726335, 0.369748, -0.579417,
		30.926062, 38.088680, 59.977615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966373, 37.634880, 59.676029>,  <30.417625, 37.829857, 60.383205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966373, 37.634880, 59.676029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.683619, 37.378807, 59.796349>,  <29.513966, 37.225163, 59.868542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.683619, 37.378807, 59.796349>,  <29.966373, 37.634880, 59.676029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683619, 37.378807, 59.796349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622188, 0.765052, 0.166063,
		-0.336440, -0.069768, -0.939117,
		-0.706887, -0.640178, 0.300803,
		29.471552, 37.186752, 59.886589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.436878, 38.032410, 59.426083>,  <29.966373, 37.634880, 59.676029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.436878, 38.032410, 59.426083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260256, 37.757023, 59.656227>,  <29.154282, 37.591789, 59.794315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260256, 37.757023, 59.656227>,  <29.436878, 38.032410, 59.426083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260256, 37.757023, 59.656227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736882, 0.644118, 0.205225,
		-0.511892, -0.333355, -0.791733,
		-0.441556, -0.688467, 0.575362,
		29.127789, 37.550484, 59.828835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.779358, 38.148834, 59.235882>,  <29.436878, 38.032410, 59.426083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.779358, 38.148834, 59.235882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.765011, 37.955467, 59.585743>,  <28.756403, 37.839447, 59.795662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.765011, 37.955467, 59.585743>,  <28.779358, 38.148834, 59.235882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.765011, 37.955467, 59.585743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845949, 0.480653, 0.230963,
		-0.532057, -0.731629, -0.426187,
		-0.035868, -0.483417, 0.874655,
		28.754250, 37.810440, 59.848141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.109804, 37.958855, 59.293594>,  <28.779358, 38.148834, 59.235882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.109804, 37.958855, 59.293594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251301, 37.949593, 59.667618>,  <28.336199, 37.944035, 59.892033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251301, 37.949593, 59.667618>,  <28.109804, 37.958855, 59.293594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251301, 37.949593, 59.667618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819901, 0.473438, 0.321900,
		-0.450146, -0.880523, 0.148488,
		0.353740, -0.023157, 0.935057,
		28.357422, 37.942646, 59.948135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.499458, 37.871727, 59.745590>,  <28.109804, 37.958855, 59.293594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.499458, 37.871727, 59.745590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.795225, 38.031155, 59.962627>,  <27.972685, 38.126812, 60.092850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.795225, 38.031155, 59.962627>,  <27.499458, 37.871727, 59.745590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.795225, 38.031155, 59.962627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662898, 0.571781, 0.483356,
		-0.117595, -0.717085, 0.686993,
		0.739417, 0.398566, 0.542593,
		28.017050, 38.150726, 60.125404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.030560, 37.987637, 60.465595>,  <27.499458, 37.871727, 59.745590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.030560, 37.987637, 60.465595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.379681, 38.182278, 60.480747>,  <27.589153, 38.299065, 60.489838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.379681, 38.182278, 60.480747>,  <27.030560, 37.987637, 60.465595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.379681, 38.182278, 60.480747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455618, 0.784467, 0.420741,
		0.175018, -0.384482, 0.906389,
		0.872800, 0.486605, 0.037881,
		27.641521, 38.328259, 60.492111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.336853, 38.115078, 61.198231>,  <27.030560, 37.987637, 60.465595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.336853, 38.115078, 61.198231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.449453, 38.401344, 60.942547>,  <27.517014, 38.573105, 60.789139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.449453, 38.401344, 60.942547>,  <27.336853, 38.115078, 61.198231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449453, 38.401344, 60.942547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485145, 0.680882, 0.548666,
		0.827884, 0.155659, 0.538867,
		0.281500, 0.715661, -0.639208,
		27.533903, 38.616043, 60.750786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.525110, 38.770309, 61.673752>,  <27.336853, 38.115078, 61.198231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.525110, 38.770309, 61.673752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501579, 38.911736, 61.300327>,  <27.487461, 38.996590, 61.076275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501579, 38.911736, 61.300327>,  <27.525110, 38.770309, 61.673752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.501579, 38.911736, 61.300327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392648, 0.851604, 0.347271,
		0.917805, 0.386989, 0.088729,
		-0.058828, 0.353567, -0.933558,
		27.483931, 39.017807, 61.020260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.816416, 39.394588, 61.634254>,  <27.525110, 38.770309, 61.673752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.816416, 39.394588, 61.634254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554014, 39.396973, 61.332359>,  <27.396574, 39.398403, 61.151222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554014, 39.396973, 61.332359>,  <27.816416, 39.394588, 61.634254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.554014, 39.396973, 61.332359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399939, 0.845294, 0.354298,
		0.640084, 0.534268, -0.552133,
		-0.656004, 0.005961, -0.754734,
		27.357212, 39.398762, 61.105938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<37.533360, 32.719398, 48.797596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.486572, 32.967869, 48.487640>,  <37.458500, 33.116951, 48.301666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.486572, 32.967869, 48.487640>,  <37.533360, 32.719398, 48.797596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486572, 32.967869, 48.487640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916814, 0.232417, 0.324708,
		0.381799, 0.748411, 0.542320,
		-0.116970, 0.621179, -0.774890,
		37.451481, 33.154224, 48.255173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414219, 33.347137, 49.147545>,  <37.533360, 32.719398, 48.797596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414219, 33.347137, 49.147545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.273888, 33.392681, 48.775749>,  <37.189690, 33.420006, 48.552670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.273888, 33.392681, 48.775749>,  <37.414219, 33.347137, 49.147545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273888, 33.392681, 48.775749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782578, 0.509475, 0.357781,
		0.514289, 0.852920, -0.089635,
		-0.350825, 0.113857, -0.929494,
		37.168640, 33.426838, 48.496902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381161, 34.059578, 49.054527>,  <37.414219, 33.347137, 49.147545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381161, 34.059578, 49.054527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.116001, 33.881104, 48.814034>,  <36.956905, 33.774017, 48.669739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.116001, 33.881104, 48.814034>,  <37.381161, 34.059578, 49.054527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116001, 33.881104, 48.814034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718437, 0.605114, 0.343052,
		0.210747, 0.659356, -0.721689,
		-0.662898, -0.446191, -0.601232,
		36.917133, 33.747246, 48.633663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031281, 34.628658, 48.762299>,  <37.381161, 34.059578, 49.054527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031281, 34.628658, 48.762299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.789509, 34.326084, 48.662319>,  <36.644447, 34.144539, 48.602333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.789509, 34.326084, 48.662319>,  <37.031281, 34.628658, 48.762299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789509, 34.326084, 48.662319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781358, 0.501681, 0.371209,
		-0.155402, 0.419667, -0.894276,
		-0.604426, -0.756436, -0.249948,
		36.608181, 34.099152, 48.587334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428589, 34.913948, 48.504299>,  <37.031281, 34.628658, 48.762299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428589, 34.913948, 48.504299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.293617, 34.541401, 48.559002>,  <36.212635, 34.317875, 48.591824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.293617, 34.541401, 48.559002>,  <36.428589, 34.913948, 48.504299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293617, 34.541401, 48.559002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929592, 0.352568, 0.107491,
		-0.148328, -0.090853, -0.984756,
		-0.337428, -0.931365, 0.136752,
		36.192390, 34.261990, 48.600029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916584, 34.865448, 48.054657>,  <36.428589, 34.913948, 48.504299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916584, 34.865448, 48.054657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.841640, 34.605209, 48.349037>,  <35.796677, 34.449066, 48.525665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.841640, 34.605209, 48.349037>,  <35.916584, 34.865448, 48.054657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841640, 34.605209, 48.349037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938332, 0.340161, 0.061832,
		-0.290569, -0.678981, -0.674207,
		-0.187356, -0.650596, 0.735950,
		35.785435, 34.410030, 48.569820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289253, 34.697838, 48.013977>,  <35.916584, 34.865448, 48.054657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289253, 34.697838, 48.013977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.330112, 34.570976, 48.391121>,  <35.354630, 34.494858, 48.617405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.330112, 34.570976, 48.391121>,  <35.289253, 34.697838, 48.013977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330112, 34.570976, 48.391121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965121, 0.198081, 0.171190,
		-0.241056, -0.927457, -0.285859,
		0.102148, -0.317155, 0.942856,
		35.360756, 34.475830, 48.673977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618328, 34.433983, 48.123619>,  <35.289253, 34.697838, 48.013977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618328, 34.433983, 48.123619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.796162, 34.462124, 48.480808>,  <34.902863, 34.479008, 48.695122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.796162, 34.462124, 48.480808>,  <34.618328, 34.433983, 48.123619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796162, 34.462124, 48.480808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869182, 0.274832, 0.411085,
		-0.216498, -0.958915, 0.183329,
		0.444581, 0.070347, 0.892972,
		34.929535, 34.483227, 48.748699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308350, 34.014496, 48.490704>,  <34.618328, 34.433983, 48.123619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308350, 34.014496, 48.490704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.458084, 34.282970, 48.746635>,  <34.547924, 34.444057, 48.900192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.458084, 34.282970, 48.746635>,  <34.308350, 34.014496, 48.490704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458084, 34.282970, 48.746635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927106, 0.256981, 0.272828,
		0.018695, -0.695317, 0.718460,
		0.374332, 0.671189, 0.639828,
		34.570385, 34.484329, 48.938583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021805, 33.916252, 49.234535>,  <34.308350, 34.014496, 48.490704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021805, 33.916252, 49.234535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.128586, 34.300037, 49.198372>,  <34.192654, 34.530308, 49.176674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.128586, 34.300037, 49.198372>,  <34.021805, 33.916252, 49.234535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128586, 34.300037, 49.198372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859350, 0.279455, 0.428278,
		0.436181, -0.036636, 0.899113,
		0.266952, 0.959459, -0.090410,
		34.208672, 34.587875, 49.171249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905476, 34.213139, 49.966518>,  <34.021805, 33.916252, 49.234535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905476, 34.213139, 49.966518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.909782, 34.517548, 49.707062>,  <33.912365, 34.700191, 49.551388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.909782, 34.517548, 49.707062>,  <33.905476, 34.213139, 49.966518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909782, 34.517548, 49.707062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768118, 0.421611, 0.481911,
		0.640218, 0.493045, 0.589091,
		0.010763, 0.761019, -0.648639,
		33.913010, 34.745853, 49.512470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934605, 34.831459, 50.392948>,  <33.905476, 34.213139, 49.966518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934605, 34.831459, 50.392948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.764641, 34.922100, 50.042381>,  <33.662663, 34.976482, 49.832043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.764641, 34.922100, 50.042381>,  <33.934605, 34.831459, 50.392948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764641, 34.922100, 50.042381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886075, 0.094035, 0.453903,
		0.185268, 0.969438, 0.160829,
		-0.424907, 0.226601, -0.876417,
		33.637169, 34.990082, 49.779457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277302, 35.192451, 50.504078>,  <33.934605, 34.831459, 50.392948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277302, 35.192451, 50.504078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.220417, 35.100777, 50.118904>,  <33.186287, 35.045773, 49.887798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.220417, 35.100777, 50.118904>,  <33.277302, 35.192451, 50.504078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220417, 35.100777, 50.118904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989616, 0.012418, 0.143200,
		-0.020863, 0.973302, -0.228577,
		-0.142215, -0.229191, -0.962936,
		33.177753, 35.032021, 49.830025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771091, 35.534321, 50.229576>,  <33.277302, 35.192451, 50.504078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771091, 35.534321, 50.229576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.781448, 35.223228, 49.978352>,  <32.787663, 35.036572, 49.827618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.781448, 35.223228, 49.978352>,  <32.771091, 35.534321, 50.229576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781448, 35.223228, 49.978352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998812, 0.005815, -0.048370,
		0.041271, 0.628569, -0.776658,
		0.025888, -0.777732, -0.628063,
		32.789215, 34.989910, 49.789932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393902, 35.741528, 49.592579>,  <32.771091, 35.534321, 50.229576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393902, 35.741528, 49.592579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.391644, 35.347900, 49.663670>,  <32.390289, 35.111725, 49.706322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.391644, 35.347900, 49.663670>,  <32.393902, 35.741528, 49.592579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391644, 35.347900, 49.663670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999973, 0.004714, -0.005642,
		0.004714, -0.177750, -0.984064,
		0.005642, 0.984064, -0.177723,
		32.389950, 35.052681, 49.716988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905907, 35.460262, 49.128048>,  <32.393902, 35.741528, 49.592579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905907, 35.460262, 49.128048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.933020, 35.186348, 49.418282>,  <31.949287, 35.021999, 49.592422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.933020, 35.186348, 49.418282>,  <31.905907, 35.460262, 49.128048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933020, 35.186348, 49.418282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997645, -0.054155, 0.042086,
		0.010474, -0.726732, -0.686841,
		0.067781, -0.684783, 0.725588,
		31.953354, 34.980911, 49.635960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318813, 35.050213, 49.028767>,  <31.905907, 35.460262, 49.128048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318813, 35.050213, 49.028767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.441622, 34.931786, 49.390560>,  <31.515306, 34.860729, 49.607635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.441622, 34.931786, 49.390560>,  <31.318813, 35.050213, 49.028767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441622, 34.931786, 49.390560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951250, -0.124788, 0.282049,
		0.029363, -0.946981, -0.319944,
		0.307020, -0.296065, 0.904480,
		31.533728, 34.842964, 49.661903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.895210, 34.437119, 49.217125>,  <31.318813, 35.050213, 49.028767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.895210, 34.437119, 49.217125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.020483, 34.576103, 49.570663>,  <31.095646, 34.659492, 49.782787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.020483, 34.576103, 49.570663>,  <30.895210, 34.437119, 49.217125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020483, 34.576103, 49.570663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949277, 0.086981, 0.302171,
		0.028114, -0.933652, 0.357077,
		0.313182, 0.347461, 0.883849,
		31.114437, 34.680340, 49.835819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642572, 33.980808, 49.665607>,  <30.895210, 34.437119, 49.217125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642572, 33.980808, 49.665607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.701466, 34.308090, 49.887905>,  <30.736801, 34.504459, 50.021286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.701466, 34.308090, 49.887905>,  <30.642572, 33.980808, 49.665607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.701466, 34.308090, 49.887905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940440, -0.058263, 0.334930,
		0.306422, -0.571961, 0.760898,
		0.147235, 0.818209, 0.555748,
		30.745636, 34.553555, 50.054630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443811, 33.785816, 50.413578>,  <30.642572, 33.980808, 49.665607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443811, 33.785816, 50.413578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.412277, 34.182629, 50.374283>,  <30.393356, 34.420715, 50.350708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.412277, 34.182629, 50.374283>,  <30.443811, 33.785816, 50.413578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412277, 34.182629, 50.374283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980187, -0.059175, 0.189030,
		0.181711, 0.111190, 0.977045,
		-0.078835, 0.992036, -0.098234,
		30.388626, 34.480240, 50.344814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272503, 34.024158, 51.046120>,  <30.443811, 33.785816, 50.413578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272503, 34.024158, 51.046120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.132416, 34.290817, 50.782932>,  <30.048363, 34.450813, 50.625019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.132416, 34.290817, 50.782932>,  <30.272503, 34.024158, 51.046120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132416, 34.290817, 50.782932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879892, 0.006698, 0.475127,
		0.321150, 0.745342, 0.584233,
		-0.350219, 0.666649, -0.657972,
		30.027349, 34.490810, 50.585541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035856, 34.608288, 51.501045>,  <30.272503, 34.024158, 51.046120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035856, 34.608288, 51.501045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.866789, 34.613815, 51.138573>,  <29.765348, 34.617130, 50.921089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.866789, 34.613815, 51.138573>,  <30.035856, 34.608288, 51.501045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866789, 34.613815, 51.138573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878672, 0.238686, 0.413479,
		0.222005, 0.970999, -0.088745,
		-0.422670, 0.013817, -0.906178,
		29.739988, 34.617962, 50.866718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.557428, 35.206509, 51.503860>,  <30.035856, 34.608288, 51.501045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.557428, 35.206509, 51.503860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.408251, 34.972057, 51.216148>,  <29.318745, 34.831387, 51.043522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.408251, 34.972057, 51.216148>,  <29.557428, 35.206509, 51.503860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.408251, 34.972057, 51.216148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924436, 0.301201, 0.233869,
		0.079570, 0.752148, -0.654173,
		-0.372942, -0.586132, -0.719280,
		29.296368, 34.796219, 51.000366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933598, 35.602848, 51.344280>,  <29.557428, 35.206509, 51.503860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.933598, 35.602848, 51.344280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.892954, 35.243408, 51.173542>,  <28.868567, 35.027744, 51.071098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.892954, 35.243408, 51.173542>,  <28.933598, 35.602848, 51.344280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.892954, 35.243408, 51.173542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979522, 0.015405, 0.200746,
		-0.173814, 0.438502, -0.881762,
		-0.101611, -0.898598, -0.426845,
		28.862471, 34.973827, 51.045490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.337492, 35.664528, 51.004982>,  <28.933598, 35.602848, 51.344280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.337492, 35.664528, 51.004982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.387579, 35.269440, 51.042347>,  <28.417631, 35.032387, 51.064766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.387579, 35.269440, 51.042347>,  <28.337492, 35.664528, 51.004982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.387579, 35.269440, 51.042347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989906, -0.118083, 0.078379,
		-0.066386, -0.102285, -0.992537,
		0.125218, -0.987722, 0.093414,
		28.425144, 34.973122, 51.070370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.869333, 35.441055, 50.490040>,  <28.337492, 35.664528, 51.004982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.869333, 35.441055, 50.490040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.928596, 35.138561, 50.744961>,  <27.964155, 34.957066, 50.897911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.928596, 35.138561, 50.744961>,  <27.869333, 35.441055, 50.490040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.928596, 35.138561, 50.744961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986593, -0.068431, 0.148157,
		-0.068431, -0.650706, -0.756240,
		-0.148157, 0.756240, -0.637300,
		27.973043, 34.911690, 50.936150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.184036, 35.128094, 50.434174>,  <27.869333, 35.441055, 50.490040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.184036, 35.128094, 50.434174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.348476, 34.957630, 50.756512>,  <27.447140, 34.855350, 50.949913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.348476, 34.957630, 50.756512>,  <27.184036, 35.128094, 50.434174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.348476, 34.957630, 50.756512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909482, -0.251819, 0.330801,
		0.061952, -0.868893, -0.491108,
		0.411101, -0.426161, 0.805843,
		27.471807, 34.829781, 50.998264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.833611, 34.534130, 50.507828>,  <27.184036, 35.128094, 50.434174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.833611, 34.534130, 50.507828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.985580, 34.618263, 50.868141>,  <27.076761, 34.668743, 51.084332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.985580, 34.618263, 50.868141>,  <26.833611, 34.534130, 50.507828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.985580, 34.618263, 50.868141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896664, -0.155519, 0.414497,
		0.227272, -0.965181, 0.129513,
		0.379923, 0.210334, 0.900788,
		27.099558, 34.681362, 51.138378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.388584, 34.064823, 50.871059>,  <26.833611, 34.534130, 50.507828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.388584, 34.064823, 50.871059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.572128, 34.312016, 51.126419>,  <26.682255, 34.460331, 51.279636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.572128, 34.312016, 51.126419>,  <26.388584, 34.064823, 50.871059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.572128, 34.312016, 51.126419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864537, 0.144764, 0.481267,
		0.204994, -0.772755, 0.600689,
		0.458860, 0.617975, 0.638400,
		26.709785, 34.497410, 51.317940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.165222, 33.836319, 51.537613>,  <26.388584, 34.064823, 50.871059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.165222, 33.836319, 51.537613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.271690, 34.221886, 51.539021>,  <26.335571, 34.453228, 51.539864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.271690, 34.221886, 51.539021>,  <26.165222, 33.836319, 51.537613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.271690, 34.221886, 51.539021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825887, 0.226172, 0.516486,
		0.497055, -0.140379, 0.856289,
		0.266172, 0.963919, 0.003517,
		26.351542, 34.511063, 51.540077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.969463, 34.019901, 52.193569>,  <26.165222, 33.836319, 51.537613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.969463, 34.019901, 52.193569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.981466, 34.352020, 51.970963>,  <25.988668, 34.551292, 51.837399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.981466, 34.352020, 51.970963>,  <25.969463, 34.019901, 52.193569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.981466, 34.352020, 51.970963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744063, 0.390330, 0.542229,
		0.667435, 0.397812, 0.629505,
		0.030009, 0.830294, -0.556517,
		25.990469, 34.601109, 51.804008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.885948, 34.665794, 52.663906>,  <25.969463, 34.019901, 52.193569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.885948, 34.665794, 52.663906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.762589, 34.781414, 52.301395>,  <25.688572, 34.850788, 52.083889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.762589, 34.781414, 52.301395>,  <25.885948, 34.665794, 52.663906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.762589, 34.781414, 52.301395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762978, 0.493822, 0.417138,
		0.568114, 0.820115, 0.068245,
		-0.308400, 0.289052, -0.906277,
		25.670069, 34.868130, 52.029510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.711905, 35.277287, 52.775330>,  <25.885948, 34.665794, 52.663906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.711905, 35.277287, 52.775330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.507050, 35.195766, 52.441578>,  <25.384136, 35.146854, 52.241329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.507050, 35.195766, 52.441578>,  <25.711905, 35.277287, 52.775330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.507050, 35.195766, 52.441578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800265, 0.466009, 0.377373,
		0.311917, 0.860988, -0.401755,
		-0.512136, -0.203802, -0.834375,
		25.353409, 35.134624, 52.191265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.297434, 35.916206, 52.666523>,  <25.711905, 35.277287, 52.775330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.297434, 35.916206, 52.666523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.131325, 35.616177, 52.460636>,  <25.031658, 35.436157, 52.337105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.131325, 35.616177, 52.460636>,  <25.297434, 35.916206, 52.666523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.131325, 35.616177, 52.460636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905118, 0.397381, 0.151163,
		0.091157, 0.528656, -0.843927,
		-0.415274, -0.750074, -0.514720,
		25.006742, 35.391155, 52.306221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.944052, 36.254528, 52.053959>,  <25.297434, 35.916206, 52.666523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.944052, 36.254528, 52.053959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.787233, 35.899487, 52.150677>,  <24.693142, 35.686462, 52.208710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.787233, 35.899487, 52.150677>,  <24.944052, 36.254528, 52.053959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.787233, 35.899487, 52.150677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919065, 0.366402, -0.145154,
		0.040243, -0.279136, -0.959408,
		-0.392046, -0.887599, 0.241799,
		24.669619, 35.633205, 52.223217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<35.203938, 30.770264, 51.433960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.853153, 30.655771, 51.279552>,  <34.642681, 30.587076, 51.186909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.853153, 30.655771, 51.279552>,  <35.203938, 30.770264, 51.433960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853153, 30.655771, 51.279552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054581, 0.857394, -0.511758,
		0.477449, -0.427723, -0.767526,
		-0.876963, -0.286230, -0.386016,
		34.590065, 30.569902, 51.163746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706497, 30.824974, 50.871281>,  <35.203938, 30.770264, 51.433960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706497, 30.824974, 50.871281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.408985, 30.969437, 50.646301>,  <35.230476, 31.056114, 50.511314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.408985, 30.969437, 50.646301>,  <35.706497, 30.824974, 50.871281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408985, 30.969437, 50.646301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234744, 0.646732, 0.725695,
		0.625845, 0.671792, -0.396249,
		-0.743783, 0.361156, -0.562453,
		35.185852, 31.077784, 50.477566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847775, 31.646898, 50.841194>,  <35.706497, 30.824974, 50.871281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847775, 31.646898, 50.841194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.470421, 31.541044, 50.761192>,  <35.244011, 31.477531, 50.713192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.470421, 31.541044, 50.761192>,  <35.847775, 31.646898, 50.841194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470421, 31.541044, 50.761192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325445, 0.621739, 0.712409,
		-0.064181, 0.737163, -0.672661,
		-0.943380, -0.264637, -0.200002,
		35.187408, 31.461653, 50.701191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518372, 32.261272, 50.769951>,  <35.847775, 31.646898, 50.841194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518372, 32.261272, 50.769951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.217220, 32.007534, 50.840141>,  <35.036530, 31.855291, 50.882256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.217220, 32.007534, 50.840141>,  <35.518372, 32.261272, 50.769951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217220, 32.007534, 50.840141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410099, 0.660662, 0.628765,
		-0.514781, 0.401419, -0.757538,
		-0.752874, -0.634342, 0.175474,
		34.991360, 31.817232, 50.892784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006622, 32.707317, 50.849129>,  <35.518372, 32.261272, 50.769951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006622, 32.707317, 50.849129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.863754, 32.368813, 51.007248>,  <34.778034, 32.165710, 51.102119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.863754, 32.368813, 51.007248>,  <35.006622, 32.707317, 50.849129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863754, 32.368813, 51.007248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459740, 0.527684, 0.714275,
		-0.813060, 0.073385, -0.577537,
		-0.357174, -0.846265, 0.395300,
		34.756603, 32.114933, 51.125839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212391, 32.821724, 50.897240>,  <35.006622, 32.707317, 50.849129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212391, 32.821724, 50.897240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.349339, 32.540329, 51.146366>,  <34.431507, 32.371494, 51.295841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.349339, 32.540329, 51.146366>,  <34.212391, 32.821724, 50.897240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349339, 32.540329, 51.146366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455900, 0.455225, 0.764804,
		-0.821546, -0.545786, -0.164863,
		0.342369, -0.703483, 0.622813,
		34.452049, 32.329285, 51.333210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562836, 32.634327, 51.262314>,  <34.212391, 32.821724, 50.897240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562836, 32.634327, 51.262314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.873318, 32.514683, 51.484318>,  <34.059608, 32.442898, 51.617519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.873318, 32.514683, 51.484318>,  <33.562836, 32.634327, 51.262314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873318, 32.514683, 51.484318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422471, 0.406685, 0.810016,
		-0.467996, -0.863216, 0.189308,
		0.776207, -0.299107, 0.555011,
		34.106178, 32.424950, 51.650822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336163, 32.249756, 51.914486>,  <33.562836, 32.634327, 51.262314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336163, 32.249756, 51.914486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.701862, 32.373566, 52.019051>,  <33.921284, 32.447853, 52.081791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.701862, 32.373566, 52.019051>,  <33.336163, 32.249756, 51.914486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701862, 32.373566, 52.019051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370587, 0.378144, 0.848335,
		0.163732, -0.872468, 0.460426,
		0.914252, 0.309528, 0.261411,
		33.976139, 32.466423, 52.097473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401550, 31.969637, 52.571178>,  <33.336163, 32.249756, 51.914486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401550, 31.969637, 52.571178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.674404, 32.261631, 52.554134>,  <33.838116, 32.436829, 52.543907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.674404, 32.261631, 52.554134>,  <33.401550, 31.969637, 52.571178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674404, 32.261631, 52.554134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389527, 0.412074, 0.823689,
		0.618839, -0.545269, 0.565438,
		0.682134, 0.729984, -0.042611,
		33.879044, 32.480625, 52.541351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610806, 31.936146, 53.223167>,  <33.401550, 31.969637, 52.571178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610806, 31.936146, 53.223167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.739071, 32.291473, 53.091675>,  <33.816029, 32.504669, 53.012779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.739071, 32.291473, 53.091675>,  <33.610806, 31.936146, 53.223167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739071, 32.291473, 53.091675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397109, 0.441167, 0.804783,
		0.859930, -0.127520, 0.494225,
		0.320662, 0.888319, -0.328734,
		33.835270, 32.557968, 52.993053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127533, 32.225269, 53.636475>,  <33.610806, 31.936146, 53.223167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127533, 32.225269, 53.636475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.961956, 32.541222, 53.455479>,  <33.862610, 32.730793, 53.346882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.961956, 32.541222, 53.455479>,  <34.127533, 32.225269, 53.636475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961956, 32.541222, 53.455479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145183, 0.433426, 0.889418,
		0.898651, 0.433861, -0.064737,
		-0.413942, 0.789878, -0.452488,
		33.837772, 32.778183, 53.319733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421734, 32.898445, 53.917130>,  <34.127533, 32.225269, 53.636475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421734, 32.898445, 53.917130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.072083, 32.997765, 53.750156>,  <33.862293, 33.057358, 53.649975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.072083, 32.997765, 53.750156>,  <34.421734, 32.898445, 53.917130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072083, 32.997765, 53.750156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233199, 0.539339, 0.809155,
		0.426050, 0.804649, -0.413547,
		-0.874128, 0.248301, -0.417429,
		33.809845, 33.072254, 53.624928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942600, 33.433170, 53.745983>,  <34.421734, 32.898445, 53.917130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942600, 33.433170, 53.745983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.325241, 33.440422, 53.862320>,  <35.554825, 33.444775, 53.932121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.325241, 33.440422, 53.862320>,  <34.942600, 33.433170, 53.745983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325241, 33.440422, 53.862320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282828, -0.298179, -0.911645,
		0.070193, 0.954338, -0.290367,
		0.956599, 0.018133, 0.290843,
		35.612221, 33.445862, 53.949574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360699, 33.834923, 53.303005>,  <34.942600, 33.433170, 53.745983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360699, 33.834923, 53.303005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.646023, 33.618599, 53.481316>,  <35.817215, 33.488804, 53.588303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.646023, 33.618599, 53.481316>,  <35.360699, 33.834923, 53.303005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646023, 33.618599, 53.481316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424592, -0.172578, -0.888785,
		0.557595, 0.823250, 0.106523,
		0.713308, -0.540811, 0.445774,
		35.860016, 33.456356, 53.615047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892212, 34.020485, 52.943710>,  <35.360699, 33.834923, 53.303005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892212, 34.020485, 52.943710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.007641, 33.677933, 53.114983>,  <36.076897, 33.472401, 53.217747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.007641, 33.677933, 53.114983>,  <35.892212, 34.020485, 52.943710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007641, 33.677933, 53.114983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510385, -0.240782, -0.825549,
		0.810083, 0.456764, 0.367603,
		0.288569, -0.856382, 0.428179,
		36.094212, 33.421017, 53.243435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609291, 34.060287, 52.928120>,  <35.892212, 34.020485, 52.943710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609291, 34.060287, 52.928120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.524952, 33.670216, 52.955166>,  <36.474350, 33.436172, 52.971394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.524952, 33.670216, 52.955166>,  <36.609291, 34.060287, 52.928120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524952, 33.670216, 52.955166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714368, -0.200929, -0.670303,
		0.667250, -0.093028, 0.739001,
		-0.210843, -0.975179, 0.067613,
		36.461700, 33.377663, 52.975449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301186, 33.612087, 52.960320>,  <36.609291, 34.060287, 52.928120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301186, 33.612087, 52.960320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.013443, 33.373577, 52.817780>,  <36.840797, 33.230473, 52.732258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.013443, 33.373577, 52.817780>,  <37.301186, 33.612087, 52.960320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013443, 33.373577, 52.817780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589056, -0.251748, -0.767878,
		0.368155, -0.762287, 0.532335,
		-0.719357, -0.596273, -0.356347,
		36.797634, 33.194695, 52.710876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648094, 32.983376, 52.824368>,  <37.301186, 33.612087, 52.960320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648094, 32.983376, 52.824368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.310326, 32.981007, 52.610111>,  <37.107662, 32.979588, 52.481556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.310326, 32.981007, 52.610111>,  <37.648094, 32.983376, 52.824368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310326, 32.981007, 52.610111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530015, -0.154217, -0.833847,
		-0.077667, -0.988019, 0.133364,
		-0.844423, -0.005922, -0.535643,
		37.056999, 32.979233, 52.449417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890553, 32.670029, 52.274231>,  <37.648094, 32.983376, 52.824368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890553, 32.670029, 52.274231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.529633, 32.779186, 52.140728>,  <37.313080, 32.844681, 52.060627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.529633, 32.779186, 52.140728>,  <37.890553, 32.670029, 52.274231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529633, 32.779186, 52.140728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299896, -0.158861, -0.940652,
		-0.309716, -0.948838, 0.061501,
		-0.902297, 0.272891, -0.333754,
		37.258945, 32.861053, 52.040604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593136, 32.136101, 51.763489>,  <37.890553, 32.670029, 52.274231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593136, 32.136101, 51.763489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.434628, 32.488861, 51.661331>,  <37.339523, 32.700516, 51.600037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.434628, 32.488861, 51.661331>,  <37.593136, 32.136101, 51.763489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434628, 32.488861, 51.661331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238213, -0.169883, -0.956240,
		-0.886694, -0.439765, -0.142761,
		-0.396268, 0.881899, -0.255391,
		37.315746, 32.753429, 51.584713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225452, 31.953209, 51.085506>,  <37.593136, 32.136101, 51.763489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225452, 31.953209, 51.085506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.294792, 32.345905, 51.116837>,  <37.336395, 32.581524, 51.135635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.294792, 32.345905, 51.116837>,  <37.225452, 31.953209, 51.085506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294792, 32.345905, 51.116837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252481, 0.032569, -0.967053,
		-0.951947, 0.187415, -0.242225,
		0.173351, 0.981741, 0.078323,
		37.346798, 32.640427, 51.140335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244366, 32.223721, 50.431366>,  <37.225452, 31.953209, 51.085506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244366, 32.223721, 50.431366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.376389, 32.550106, 50.621216>,  <37.455601, 32.745937, 50.735126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.376389, 32.550106, 50.621216>,  <37.244366, 32.223721, 50.431366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376389, 32.550106, 50.621216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484811, 0.284889, -0.826920,
		-0.809953, 0.503029, -0.301561,
		0.330053, 0.815966, 0.474620,
		37.475403, 32.794895, 50.763603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095108, 32.943039, 50.045654>,  <37.244366, 32.223721, 50.431366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095108, 32.943039, 50.045654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.418392, 32.990856, 50.276310>,  <37.612362, 33.019547, 50.414703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.418392, 32.990856, 50.276310>,  <37.095108, 32.943039, 50.045654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418392, 32.990856, 50.276310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508981, 0.350721, -0.786087,
		-0.296210, 0.928819, 0.222610,
		0.808206, 0.119543, 0.576638,
		37.660854, 33.026718, 50.449303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406357, 33.695923, 49.860355>,  <37.095108, 32.943039, 50.045654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406357, 33.695923, 49.860355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.691593, 33.445351, 49.986271>,  <37.862736, 33.295006, 50.061821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.691593, 33.445351, 49.986271>,  <37.406357, 33.695923, 49.860355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691593, 33.445351, 49.986271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497514, 0.135802, -0.856760,
		0.493951, 0.767557, 0.408496,
		0.713086, -0.626430, 0.314791,
		37.905518, 33.257423, 50.080708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891487, 34.268147, 49.626347>,  <37.406357, 33.695923, 49.860355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891487, 34.268147, 49.626347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.232090, 34.383156, 49.450954>,  <38.436451, 34.452160, 49.345718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.232090, 34.383156, 49.450954>,  <37.891487, 34.268147, 49.626347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232090, 34.383156, 49.450954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005891, -0.841443, -0.540314,
		-0.524307, 0.457500, -0.718190,
		0.851509, 0.287521, -0.438479,
		38.487541, 34.469414, 49.319412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795868, 34.690529, 49.115616>,  <37.891487, 34.268147, 49.626347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795868, 34.690529, 49.115616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.156822, 34.824657, 49.223881>,  <38.373394, 34.905136, 49.288837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.156822, 34.824657, 49.223881>,  <37.795868, 34.690529, 49.115616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156822, 34.824657, 49.223881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158613, 0.842450, -0.514898,
		-0.400673, 0.421708, 0.813402,
		0.902387, 0.335322, 0.270659,
		38.427540, 34.925255, 49.305077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713737, 35.334064, 49.439743>,  <37.795868, 34.690529, 49.115616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713737, 35.334064, 49.439743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.081150, 35.321503, 49.282104>,  <38.301598, 35.313965, 49.187523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.081150, 35.321503, 49.282104>,  <37.713737, 35.334064, 49.439743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081150, 35.321503, 49.282104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175051, 0.861485, -0.476656,
		0.354476, 0.506811, 0.785805,
		0.918534, -0.031408, -0.394094,
		38.356709, 35.312080, 49.163876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932701, 36.050114, 49.303352>,  <37.713737, 35.334064, 49.439743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932701, 36.050114, 49.303352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.198994, 35.848083, 49.083645>,  <38.358768, 35.726864, 48.951820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.198994, 35.848083, 49.083645>,  <37.932701, 36.050114, 49.303352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198994, 35.848083, 49.083645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172219, 0.820225, -0.545501,
		0.726046, 0.268562, 0.633034,
		0.665731, -0.505079, -0.549269,
		38.398712, 35.696560, 48.918865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551449, 36.686771, 49.165218>,  <37.932701, 36.050114, 49.303352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551449, 36.686771, 49.165218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.774361, 36.753723, 49.490532>,  <37.908108, 36.793896, 49.685719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.774361, 36.753723, 49.490532>,  <37.551449, 36.686771, 49.165218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774361, 36.753723, 49.490532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330350, -0.853919, 0.402110,
		0.761781, -0.492754, -0.420576,
		0.557278, 0.167382, 0.813280,
		37.941544, 36.803936, 49.734516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166328, 37.054768, 49.034946>,  <37.551449, 36.686771, 49.165218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166328, 37.054768, 49.034946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.919144, 37.201305, 48.756691>,  <37.770832, 37.289227, 48.589737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.919144, 37.201305, 48.756691>,  <38.166328, 37.054768, 49.034946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919144, 37.201305, 48.756691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590630, 0.367685, 0.718307,
		0.518922, 0.854753, -0.010844,
		-0.617962, 0.366340, -0.695642,
		37.733757, 37.311207, 48.547997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943863, 37.802662, 49.141624>,  <38.166328, 37.054768, 49.034946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943863, 37.802662, 49.141624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.643642, 37.622494, 48.948219>,  <37.463509, 37.514393, 48.832176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.643642, 37.622494, 48.948219>,  <37.943863, 37.802662, 49.141624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643642, 37.622494, 48.948219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660304, 0.482661, 0.575358,
		-0.025781, 0.751105, -0.659680,
		-0.750556, -0.450423, -0.483514,
		37.418476, 37.487366, 48.803165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493378, 38.319397, 49.089245>,  <37.943863, 37.802662, 49.141624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493378, 38.319397, 49.089245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.260281, 38.002945, 49.014919>,  <37.120422, 37.813076, 48.970325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.260281, 38.002945, 49.014919>,  <37.493378, 38.319397, 49.089245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260281, 38.002945, 49.014919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730822, 0.410183, 0.545573,
		-0.355400, 0.453726, -0.817205,
		-0.582744, -0.791128, -0.185814,
		37.085457, 37.765606, 48.959175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963898, 38.563881, 48.782318>,  <37.493378, 38.319397, 49.089245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963898, 38.563881, 48.782318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.830368, 38.218227, 48.932957>,  <36.750252, 38.010834, 49.023342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.830368, 38.218227, 48.932957>,  <36.963898, 38.563881, 48.782318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830368, 38.218227, 48.932957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712753, 0.492848, 0.499083,
		-0.616883, -0.101818, -0.780441,
		-0.333823, -0.864138, 0.376600,
		36.730221, 37.958984, 49.045937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237446, 38.676434, 48.795906>,  <36.963898, 38.563881, 48.782318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237446, 38.676434, 48.795906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.316174, 38.373890, 49.045444>,  <36.363411, 38.192364, 49.195168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.316174, 38.373890, 49.045444>,  <36.237446, 38.676434, 48.795906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316174, 38.373890, 49.045444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764512, 0.279971, 0.580636,
		-0.613827, -0.591219, -0.523140,
		0.196819, -0.756357, 0.623848,
		36.375217, 38.146984, 49.232597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713181, 38.229412, 48.778133>,  <36.237446, 38.676434, 48.795906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713181, 38.229412, 48.778133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.901581, 38.183197, 49.127949>,  <36.014622, 38.155468, 49.337837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.901581, 38.183197, 49.127949>,  <35.713181, 38.229412, 48.778133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901581, 38.183197, 49.127949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835928, 0.258186, 0.484318,
		-0.281750, -0.959161, 0.025024,
		0.471000, -0.115539, 0.874534,
		36.042881, 38.148537, 49.390308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204067, 37.986515, 49.116127>,  <35.713181, 38.229412, 48.778133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204067, 37.986515, 49.116127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.472343, 38.079899, 49.397739>,  <35.633308, 38.135929, 49.566708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.472343, 38.079899, 49.397739>,  <35.204067, 37.986515, 49.116127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472343, 38.079899, 49.397739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726280, 0.399447, 0.559428,
		-0.150621, -0.886531, 0.437464,
		0.670694, 0.233460, 0.704035,
		35.673553, 38.149937, 49.608952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975967, 37.676785, 49.754017>,  <35.204067, 37.986515, 49.116127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975967, 37.676785, 49.754017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.233158, 37.971035, 49.839287>,  <35.387474, 38.147583, 49.890450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.233158, 37.971035, 49.839287>,  <34.975967, 37.676785, 49.754017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233158, 37.971035, 49.839287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659227, 0.389875, 0.642975,
		0.389875, -0.553948, 0.735622,
		-0.642975, -0.735622, -0.213175,
		35.426052, 38.191723, 49.903240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025394, 37.590225, 50.418003>,  <34.975967, 37.676785, 49.754017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025394, 37.590225, 50.418003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.160828, 37.958698, 50.341290>,  <35.242088, 38.179783, 50.295261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.160828, 37.958698, 50.341290>,  <35.025394, 37.590225, 50.418003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160828, 37.958698, 50.341290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591467, 0.366889, 0.718025,
		0.731796, -0.129678, 0.669072,
		0.338587, 0.921182, -0.191787,
		35.262405, 38.235054, 50.283752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254139, 37.931774, 51.088142>,  <35.025394, 37.590225, 50.418003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254139, 37.931774, 51.088142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.157486, 38.221268, 50.829586>,  <35.099495, 38.394962, 50.674454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.157486, 38.221268, 50.829586>,  <35.254139, 37.931774, 51.088142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157486, 38.221268, 50.829586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539829, 0.453277, 0.709313,
		0.806348, 0.520336, 0.281165,
		-0.241636, 0.723734, -0.646391,
		35.084995, 38.438389, 50.635670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209690, 38.445122, 51.567207>,  <35.254139, 37.931774, 51.088142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209690, 38.445122, 51.567207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.010685, 38.575710, 51.245735>,  <34.891281, 38.654064, 51.052853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.010685, 38.575710, 51.245735>,  <35.209690, 38.445122, 51.567207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010685, 38.575710, 51.245735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504847, 0.644443, 0.574301,
		0.705418, 0.691456, -0.155800,
		-0.497509, 0.326467, -0.803681,
		34.861431, 38.673649, 51.004631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159531, 39.077812, 51.672253>,  <35.209690, 38.445122, 51.567207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159531, 39.077812, 51.672253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.881618, 39.018723, 51.390697>,  <34.714870, 38.983269, 51.221764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.881618, 39.018723, 51.390697>,  <35.159531, 39.077812, 51.672253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881618, 39.018723, 51.390697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647844, 0.553605, 0.523277,
		0.312372, 0.819572, -0.480339,
		-0.694781, -0.147728, -0.703886,
		34.673183, 38.974403, 51.179531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867203, 39.778004, 51.604813>,  <35.159531, 39.077812, 51.672253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867203, 39.778004, 51.604813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.601349, 39.534733, 51.431198>,  <34.441837, 39.388771, 51.327030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.601349, 39.534733, 51.431198>,  <34.867203, 39.778004, 51.604813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601349, 39.534733, 51.431198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740060, 0.615789, 0.270399,
		0.102824, 0.500927, -0.859360,
		-0.664634, -0.608174, -0.434034,
		34.401958, 39.352280, 51.300987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287621, 40.173519, 51.130653>,  <34.867203, 39.778004, 51.604813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287621, 40.173519, 51.130653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.156086, 39.809559, 51.231808>,  <34.077164, 39.591183, 51.292500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.156086, 39.809559, 51.231808>,  <34.287621, 40.173519, 51.130653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156086, 39.809559, 51.231808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899157, 0.383534, 0.210757,
		-0.288757, -0.158077, -0.944262,
		-0.328841, -0.909897, 0.252884,
		34.057434, 39.536591, 51.307674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596470, 40.157234, 50.976757>,  <34.287621, 40.173519, 51.130653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596470, 40.157234, 50.976757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.642586, 39.842243, 51.218941>,  <33.670254, 39.653248, 51.364250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.642586, 39.842243, 51.218941>,  <33.596470, 40.157234, 50.976757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642586, 39.842243, 51.218941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765124, 0.318317, 0.559696,
		-0.633478, -0.527779, -0.565822,
		0.115285, -0.787479, 0.605463,
		33.677170, 39.605999, 51.400581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855766, 39.978024, 51.168552>,  <33.596470, 40.157234, 50.976757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855766, 39.978024, 51.168552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.099522, 39.797054, 51.429001>,  <33.245777, 39.688473, 51.585270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.099522, 39.797054, 51.429001>,  <32.855766, 39.978024, 51.168552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099522, 39.797054, 51.429001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568441, 0.323195, 0.756585,
		-0.552734, -0.831178, -0.060224,
		0.609393, -0.452424, 0.651117,
		33.282341, 39.661327, 51.624336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423943, 39.489296, 51.539894>,  <32.855766, 39.978024, 51.168552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423943, 39.489296, 51.539894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.753769, 39.555618, 51.756264>,  <32.951664, 39.595409, 51.886086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.753769, 39.555618, 51.756264>,  <32.423943, 39.489296, 51.539894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753769, 39.555618, 51.756264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550250, 0.457363, 0.698601,
		-0.131569, -0.873687, 0.468359,
		0.824569, 0.165801, 0.540921,
		33.001141, 39.605358, 51.918541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275990, 39.180679, 52.181293>,  <32.423943, 39.489296, 51.539894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275990, 39.180679, 52.181293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.575634, 39.435734, 52.253124>,  <32.755421, 39.588768, 52.296223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.575634, 39.435734, 52.253124>,  <32.275990, 39.180679, 52.181293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575634, 39.435734, 52.253124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491358, 0.353023, 0.796205,
		0.444292, -0.684687, 0.577761,
		0.749114, 0.637635, 0.179581,
		32.800369, 39.627026, 52.306999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467411, 39.072453, 52.849136>,  <32.275990, 39.180679, 52.181293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467411, 39.072453, 52.849136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.607716, 39.432495, 52.745777>,  <32.691898, 39.648521, 52.683762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.607716, 39.432495, 52.745777>,  <32.467411, 39.072453, 52.849136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607716, 39.432495, 52.745777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354587, 0.383043, 0.852963,
		0.866739, -0.207559, 0.453523,
		0.350758, 0.900110, -0.258400,
		32.712944, 39.702530, 52.668259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734497, 39.351749, 53.479622>,  <32.467411, 39.072453, 52.849136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734497, 39.351749, 53.479622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.662033, 39.653130, 53.226799>,  <32.618553, 39.833958, 53.075104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.662033, 39.653130, 53.226799>,  <32.734497, 39.351749, 53.479622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662033, 39.653130, 53.226799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340162, 0.555015, 0.759110,
		0.922751, 0.352525, 0.155746,
		-0.181164, 0.753448, -0.632057,
		32.607685, 39.879166, 53.037182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950287, 39.897400, 53.894238>,  <32.734497, 39.351749, 53.479622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950287, 39.897400, 53.894238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.716267, 40.052788, 53.609478>,  <32.575855, 40.146023, 53.438622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.716267, 40.052788, 53.609478>,  <32.950287, 39.897400, 53.894238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716267, 40.052788, 53.609478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306870, 0.706501, 0.637720,
		0.750694, 0.591562, -0.294131,
		-0.585055, 0.388472, -0.711899,
		32.540749, 40.169331, 53.395908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065365, 40.575294, 53.932041>,  <32.950287, 39.897400, 53.894238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065365, 40.575294, 53.932041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.716053, 40.528320, 53.742901>,  <32.506466, 40.500137, 53.629417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.716053, 40.528320, 53.742901>,  <33.065365, 40.575294, 53.932041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716053, 40.528320, 53.742901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382586, 0.766204, 0.516294,
		0.301669, 0.631776, -0.714041,
		-0.873283, -0.117433, -0.472849,
		32.454067, 40.493092, 53.601048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723751, 41.246605, 54.032986>,  <33.065365, 40.575294, 53.932041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723751, 41.246605, 54.032986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.436813, 40.999687, 53.903767>,  <32.264648, 40.851536, 53.826233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.436813, 40.999687, 53.903767>,  <32.723751, 41.246605, 54.032986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436813, 40.999687, 53.903767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634670, 0.387697, 0.668495,
		-0.287411, 0.684573, -0.669891,
		-0.717349, -0.617293, -0.323049,
		32.221607, 40.814499, 53.806850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035545, 41.557743, 54.022343>,  <32.723751, 41.246605, 54.032986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035545, 41.557743, 54.022343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.878260, 41.189968, 54.023922>,  <31.783888, 40.969303, 54.024872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.878260, 41.189968, 54.023922>,  <32.035545, 41.557743, 54.022343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878260, 41.189968, 54.023922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717286, 0.309447, 0.624294,
		-0.575221, 0.242649, -0.781180,
		-0.393219, -0.919437, 0.003952,
		31.760294, 40.914139, 54.025108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346182, 41.634083, 53.776138>,  <32.035545, 41.557743, 54.022343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346182, 41.634083, 53.776138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.366320, 41.309391, 54.008881>,  <31.378403, 41.114574, 54.148525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.366320, 41.309391, 54.008881>,  <31.346182, 41.634083, 53.776138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366320, 41.309391, 54.008881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744762, 0.357657, 0.563393,
		-0.665429, -0.461710, -0.586540,
		0.050344, -0.811730, 0.581859,
		31.381422, 41.065872, 54.183437>
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
