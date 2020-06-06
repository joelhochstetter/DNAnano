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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<42.576160, 32.216156, 22.991636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435894, 32.581875, 22.910545>,  <42.351734, 32.801308, 22.861891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435894, 32.581875, 22.910545>,  <42.576160, 32.216156, 22.991636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.435894, 32.581875, 22.910545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843701, 0.214475, -0.492107,
		-0.406452, -0.343603, -0.846601,
		-0.350665, 0.914296, -0.202725,
		42.330696, 32.856163, 22.849728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.787827, 32.407238, 22.258808>,  <42.576160, 32.216156, 22.991636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.787827, 32.407238, 22.258808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.711372, 32.750870, 22.448738>,  <42.665501, 32.957047, 22.562696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.711372, 32.750870, 22.448738>,  <42.787827, 32.407238, 22.258808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.711372, 32.750870, 22.448738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612805, 0.482324, -0.625966,
		-0.766770, 0.171330, -0.618635,
		-0.191136, 0.859075, 0.474824,
		42.654030, 33.008591, 22.591185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.217831, 32.445282, 21.933136>,  <42.787827, 32.407238, 22.258808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.217831, 32.445282, 21.933136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092850, 32.814320, 21.842636>,  <42.017860, 33.035744, 21.788336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092850, 32.814320, 21.842636>,  <42.217831, 32.445282, 21.933136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.092850, 32.814320, 21.842636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773540, 0.108869, -0.624326,
		-0.551368, -0.370088, -0.747681,
		-0.312454, 0.922596, -0.226251,
		41.999115, 33.091099, 21.774761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277050, 32.613434, 21.209351>,  <42.217831, 32.445282, 21.933136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277050, 32.613434, 21.209351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.321434, 32.967701, 21.389698>,  <42.348064, 33.180260, 21.497906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.321434, 32.967701, 21.389698>,  <42.277050, 32.613434, 21.209351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.321434, 32.967701, 21.389698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853993, 0.147071, -0.499066,
		-0.508316, 0.440413, -0.740035,
		0.110958, 0.885667, 0.450868,
		42.354721, 33.233402, 21.524958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.791252, 33.224850, 21.193605>,  <42.277050, 32.613434, 21.209351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.791252, 33.224850, 21.193605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078957, 33.411419, 21.399563>,  <43.251579, 33.523361, 21.523138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078957, 33.411419, 21.399563>,  <42.791252, 33.224850, 21.193605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.078957, 33.411419, 21.399563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513201, 0.142853, -0.846296,
		-0.468285, 0.872952, -0.136619,
		0.719259, 0.466421, 0.514896,
		43.294735, 33.551346, 21.554031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.886154, 33.827076, 20.860203>,  <42.791252, 33.224850, 21.193605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.886154, 33.827076, 20.860203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.203491, 33.685314, 21.058193>,  <43.393894, 33.600258, 21.176987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.203491, 33.685314, 21.058193>,  <42.886154, 33.827076, 20.860203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.203491, 33.685314, 21.058193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565608, 0.128407, -0.814616,
		0.225144, 0.926235, 0.302324,
		0.793346, -0.354403, 0.494976,
		43.441494, 33.578995, 21.206686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.190098, 33.560780, 20.558941>,  <42.886154, 33.827076, 20.860203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.190098, 33.560780, 20.558941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.895344, 33.817089, 20.472778>,  <41.718491, 33.970875, 20.421080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.895344, 33.817089, 20.472778>,  <42.190098, 33.560780, 20.558941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.895344, 33.817089, 20.472778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444125, 0.218651, -0.868876,
		-0.509658, -0.735931, -0.445707,
		-0.736887, 0.640779, -0.215408,
		41.674278, 34.009323, 20.408155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976700, 33.360420, 19.889709>,  <42.190098, 33.560780, 20.558941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976700, 33.360420, 19.889709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914875, 33.746319, 19.974915>,  <41.877781, 33.977859, 20.026037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914875, 33.746319, 19.974915>,  <41.976700, 33.360420, 19.889709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914875, 33.746319, 19.974915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477272, 0.261686, -0.838887,
		-0.865056, -0.027992, -0.500893,
		-0.154559, 0.964747, 0.213013,
		41.868507, 34.035744, 20.038818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667492, 33.541603, 19.275703>,  <41.976700, 33.360420, 19.889709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667492, 33.541603, 19.275703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.761456, 33.892891, 19.442341>,  <41.817833, 34.103664, 19.542322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.761456, 33.892891, 19.442341>,  <41.667492, 33.541603, 19.275703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.761456, 33.892891, 19.442341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294852, 0.344011, -0.891470,
		-0.926218, 0.332246, -0.178134,
		0.234908, 0.878219, 0.416593,
		41.831928, 34.156357, 19.567318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304611, 34.138794, 18.905516>,  <41.667492, 33.541603, 19.275703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304611, 34.138794, 18.905516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.645031, 34.275272, 19.065166>,  <41.849281, 34.357159, 19.160957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.645031, 34.275272, 19.065166>,  <41.304611, 34.138794, 18.905516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.645031, 34.275272, 19.065166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210336, 0.474948, -0.854507,
		-0.481117, 0.811178, 0.332439,
		0.851049, 0.341194, 0.399126,
		41.900345, 34.377632, 19.184904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413414, 34.826088, 18.666899>,  <41.304611, 34.138794, 18.905516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413414, 34.826088, 18.666899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.776806, 34.706059, 18.783253>,  <41.994843, 34.634041, 18.853065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.776806, 34.706059, 18.783253>,  <41.413414, 34.826088, 18.666899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.776806, 34.706059, 18.783253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366470, 0.237411, -0.899631,
		0.200897, 0.923900, 0.325652,
		0.908482, -0.300075, 0.290886,
		42.049351, 34.616035, 18.870518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.734615, 35.406570, 18.568348>,  <41.413414, 34.826088, 18.666899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.734615, 35.406570, 18.568348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026955, 35.138390, 18.619503>,  <42.202358, 34.977482, 18.650196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026955, 35.138390, 18.619503>,  <41.734615, 35.406570, 18.568348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026955, 35.138390, 18.619503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307476, 0.156129, -0.938660,
		0.609358, 0.725341, 0.320254,
		0.730850, -0.670450, 0.127887,
		42.246208, 34.937256, 18.657869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.339935, 35.726738, 18.375919>,  <41.734615, 35.406570, 18.568348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.339935, 35.726738, 18.375919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426491, 35.337143, 18.349041>,  <42.478424, 35.103386, 18.332914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426491, 35.337143, 18.349041>,  <42.339935, 35.726738, 18.375919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.426491, 35.337143, 18.349041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310723, 0.133954, -0.941014,
		0.925541, 0.182748, 0.331628,
		0.216391, -0.973992, -0.067196,
		42.491409, 35.044945, 18.328882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.033710, 35.600002, 18.058237>,  <42.339935, 35.726738, 18.375919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.033710, 35.600002, 18.058237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.874573, 35.239861, 17.987709>,  <42.779091, 35.023777, 17.945393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.874573, 35.239861, 17.987709>,  <43.033710, 35.600002, 18.058237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.874573, 35.239861, 17.987709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567539, -0.090517, -0.818356,
		0.720849, -0.425644, 0.546996,
		-0.397840, -0.900352, -0.176320,
		42.755222, 34.969753, 17.934813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.595646, 35.195965, 17.814848>,  <43.033710, 35.600002, 18.058237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.595646, 35.195965, 17.814848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.261070, 35.025593, 17.676884>,  <43.060326, 34.923370, 17.594105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.261070, 35.025593, 17.676884>,  <43.595646, 35.195965, 17.814848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.261070, 35.025593, 17.676884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394179, -0.030264, -0.918535,
		0.380790, -0.904252, 0.193204,
		-0.836434, -0.425926, -0.344913,
		43.010139, 34.897816, 17.573410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.879837, 34.789093, 17.231918>,  <43.595646, 35.195965, 17.814848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.879837, 34.789093, 17.231918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.482109, 34.815849, 17.198795>,  <43.243473, 34.831905, 17.178921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.482109, 34.815849, 17.198795>,  <43.879837, 34.789093, 17.231918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.482109, 34.815849, 17.198795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074965, -0.112301, -0.990842,
		-0.075577, -0.991420, 0.106648,
		-0.994318, 0.066890, -0.082809,
		43.183815, 34.835918, 17.173952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.767063, 34.433739, 16.688007>,  <43.879837, 34.789093, 17.231918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.767063, 34.433739, 16.688007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.402477, 34.598278, 16.685951>,  <43.183727, 34.697002, 16.684717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.402477, 34.598278, 16.685951>,  <43.767063, 34.433739, 16.688007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.402477, 34.598278, 16.685951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046477, 0.090551, -0.994807,
		-0.408744, -0.906971, -0.101653,
		-0.911465, 0.411346, -0.005141,
		43.129036, 34.721680, 16.684408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.473030, 34.258171, 16.127495>,  <43.767063, 34.433739, 16.688007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.473030, 34.258171, 16.127495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213531, 34.552643, 16.204613>,  <43.057831, 34.729324, 16.250883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213531, 34.552643, 16.204613>,  <43.473030, 34.258171, 16.127495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213531, 34.552643, 16.204613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007002, 0.247560, -0.968847,
		-0.760972, -0.629887, -0.155449,
		-0.648748, 0.736177, 0.192796,
		43.018906, 34.773495, 16.262451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.933716, 34.201904, 15.665421>,  <43.473030, 34.258171, 16.127495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.933716, 34.201904, 15.665421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.936310, 34.585079, 15.780189>,  <42.937866, 34.814983, 15.849050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.936310, 34.585079, 15.780189>,  <42.933716, 34.201904, 15.665421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.936310, 34.585079, 15.780189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086150, 0.285325, -0.954551,
		-0.996261, 0.030909, -0.080675,
		0.006485, 0.957933, 0.286920,
		42.938255, 34.872459, 15.866264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.440472, 34.496380, 15.213489>,  <42.933716, 34.201904, 15.665421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.440472, 34.496380, 15.213489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.694672, 34.783165, 15.328101>,  <42.847191, 34.955238, 15.396869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.694672, 34.783165, 15.328101>,  <42.440472, 34.496380, 15.213489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.694672, 34.783165, 15.328101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058654, 0.325206, -0.943823,
		-0.769871, 0.616604, 0.164615,
		0.635499, 0.716966, 0.286532,
		42.885323, 34.998257, 15.414061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.149338, 35.131760, 14.971290>,  <42.440472, 34.496380, 15.213489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.149338, 35.131760, 14.971290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.534485, 35.229729, 15.016721>,  <42.765572, 35.288513, 15.043980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.534485, 35.229729, 15.016721>,  <42.149338, 35.131760, 14.971290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.534485, 35.229729, 15.016721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032730, 0.523485, -0.851406,
		-0.267989, 0.816073, 0.512062,
		0.962866, 0.244927, 0.113578,
		42.823345, 35.303207, 15.050795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176682, 35.929115, 14.751882>,  <42.149338, 35.131760, 14.971290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176682, 35.929115, 14.751882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.561619, 35.820641, 14.744292>,  <42.792580, 35.755558, 14.739738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.561619, 35.820641, 14.744292>,  <42.176682, 35.929115, 14.751882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.561619, 35.820641, 14.744292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145818, 0.573843, -0.805879,
		0.229430, 0.772763, 0.591776,
		0.962340, -0.271185, -0.018974,
		42.850323, 35.739285, 14.738600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.602844, 36.553867, 14.659100>,  <42.176682, 35.929115, 14.751882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.602844, 36.553867, 14.659100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.821812, 36.248158, 14.522733>,  <42.953194, 36.064732, 14.440913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.821812, 36.248158, 14.522733>,  <42.602844, 36.553867, 14.659100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821812, 36.248158, 14.522733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273885, 0.548559, -0.789981,
		0.790772, 0.339078, 0.509613,
		0.547418, -0.764271, -0.340917,
		42.986038, 36.018875, 14.420458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.154953, 36.891254, 14.367509>,  <42.602844, 36.553867, 14.659100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.154953, 36.891254, 14.367509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.182453, 36.524097, 14.211179>,  <43.198956, 36.303802, 14.117381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.182453, 36.524097, 14.211179>,  <43.154953, 36.891254, 14.367509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.182453, 36.524097, 14.211179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235092, 0.395626, -0.887813,
		0.969538, -0.030841, 0.242990,
		0.068752, -0.917894, -0.390825,
		43.203079, 36.248730, 14.093931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765217, 36.843784, 14.045306>,  <43.154953, 36.891254, 14.367509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.765217, 36.843784, 14.045306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.557846, 36.547363, 13.874627>,  <43.433422, 36.369511, 13.772220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.557846, 36.547363, 13.874627>,  <43.765217, 36.843784, 14.045306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.557846, 36.547363, 13.874627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289047, 0.317756, -0.903041,
		0.804790, -0.591495, 0.049468,
		-0.518426, -0.741057, -0.426697,
		43.402317, 36.325047, 13.746618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.191120, 36.398010, 13.568115>,  <43.765217, 36.843784, 14.045306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.191120, 36.398010, 13.568115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.800007, 36.438881, 13.494905>,  <43.565338, 36.463402, 13.450978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.800007, 36.438881, 13.494905>,  <44.191120, 36.398010, 13.568115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.800007, 36.438881, 13.494905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208158, 0.370489, -0.905212,
		-0.024681, -0.923200, -0.383526,
		-0.977784, 0.102175, -0.183027,
		43.506672, 36.469532, 13.439997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.090935, 36.203835, 12.844772>,  <44.191120, 36.398010, 13.568115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.090935, 36.203835, 12.844772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.781502, 36.430920, 12.957385>,  <43.595840, 36.567173, 13.024953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.781502, 36.430920, 12.957385>,  <44.090935, 36.203835, 12.844772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.781502, 36.430920, 12.957385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000618, 0.444951, -0.895555,
		-0.633690, -0.692615, -0.344559,
		-0.773587, 0.567717, 0.281533,
		43.549427, 36.601234, 13.041845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.496521, 36.064457, 12.329993>,  <44.090935, 36.203835, 12.844772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.496521, 36.064457, 12.329993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.441162, 36.414639, 12.515220>,  <43.407948, 36.624748, 12.626355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.441162, 36.414639, 12.515220>,  <43.496521, 36.064457, 12.329993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.441162, 36.414639, 12.515220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296828, 0.409405, -0.862717,
		-0.944849, -0.256850, 0.203197,
		-0.138399, 0.875452, 0.463066,
		43.399643, 36.677273, 12.654140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779022, 36.238342, 12.335557>,  <43.496521, 36.064457, 12.329993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779022, 36.238342, 12.335557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.025669, 36.553242, 12.333695>,  <43.173656, 36.742184, 12.332579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.025669, 36.553242, 12.333695>,  <42.779022, 36.238342, 12.335557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.025669, 36.553242, 12.333695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310840, 0.238027, -0.920175,
		-0.723301, 0.568841, 0.391480,
		0.616616, 0.787251, -0.004654,
		43.210655, 36.789417, 12.332299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355621, 36.848934, 12.015709>,  <42.779022, 36.238342, 12.335557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355621, 36.848934, 12.015709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.747593, 36.925014, 11.991836>,  <42.982777, 36.970661, 11.977511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.747593, 36.925014, 11.991836>,  <42.355621, 36.848934, 12.015709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.747593, 36.925014, 11.991836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108102, 0.255473, -0.960754,
		-0.167485, 0.947923, 0.270906,
		0.979930, 0.190198, -0.059684,
		43.041573, 36.982075, 11.973930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909977, 36.478191, 11.577041>,  <42.355621, 36.848934, 12.015709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909977, 36.478191, 11.577041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939465, 36.192631, 11.855582>,  <41.957157, 36.021294, 12.022707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939465, 36.192631, 11.855582>,  <41.909977, 36.478191, 11.577041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939465, 36.192631, 11.855582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694632, 0.464262, 0.549497,
		-0.715578, -0.524218, -0.461675,
		0.073718, -0.713902, 0.696354,
		41.961578, 35.978458, 12.064488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204220, 36.240547, 11.730318>,  <41.909977, 36.478191, 11.577041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.204220, 36.240547, 11.730318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.467720, 36.173012, 12.023585>,  <41.625820, 36.132488, 12.199546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.467720, 36.173012, 12.023585>,  <41.204220, 36.240547, 11.730318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467720, 36.173012, 12.023585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627249, 0.414863, 0.659126,
		-0.415452, -0.894081, 0.167387,
		0.658755, -0.168841, 0.733168,
		41.665348, 36.122360, 12.243536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954353, 36.909691, 11.790800>,  <41.204220, 36.240547, 11.730318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.954353, 36.909691, 11.790800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296738, 36.798664, 11.965289>,  <41.502167, 36.732048, 12.069983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296738, 36.798664, 11.965289>,  <40.954353, 36.909691, 11.790800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296738, 36.798664, 11.965289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484616, -0.724770, 0.489750,
		0.180223, -0.630606, -0.754888,
		0.855960, -0.277567, 0.436222,
		41.553524, 36.715393, 12.096156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274883, 36.825317, 12.016166>,  <40.954353, 36.909691, 11.790800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274883, 36.825317, 12.016166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.933376, 36.628944, 12.085530>,  <39.728474, 36.511120, 12.127150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.933376, 36.628944, 12.085530>,  <40.274883, 36.825317, 12.016166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933376, 36.628944, 12.085530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296765, -0.185182, 0.936824,
		-0.427801, 0.851291, 0.303792,
		-0.853767, -0.490929, 0.173412,
		39.677246, 36.481667, 12.137554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033703, 36.865292, 12.744278>,  <40.274883, 36.825317, 12.016166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033703, 36.865292, 12.744278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870178, 36.517174, 12.634400>,  <39.772064, 36.308304, 12.568474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870178, 36.517174, 12.634400>,  <40.033703, 36.865292, 12.744278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870178, 36.517174, 12.634400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211716, -0.383226, 0.899063,
		-0.887720, 0.309394, 0.340924,
		-0.408816, -0.870295, -0.274694,
		39.747532, 36.256084, 12.551992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514599, 36.528969, 13.146748>,  <40.033703, 36.865292, 12.744278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514599, 36.528969, 13.146748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718781, 36.229210, 12.978063>,  <39.841290, 36.049355, 12.876851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718781, 36.229210, 12.978063>,  <39.514599, 36.528969, 13.146748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718781, 36.229210, 12.978063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127091, -0.419285, 0.898915,
		-0.850461, -0.512452, -0.118785,
		0.510455, -0.749395, -0.421713,
		39.871918, 36.004391, 12.851548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120274, 35.806091, 13.266183>,  <39.514599, 36.528969, 13.146748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120274, 35.806091, 13.266183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518902, 35.810131, 13.233321>,  <39.758080, 35.812557, 13.213604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518902, 35.810131, 13.233321>,  <39.120274, 35.806091, 13.266183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518902, 35.810131, 13.233321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080130, -0.366550, 0.926941,
		-0.020750, -0.930343, -0.366102,
		0.996568, 0.010102, -0.082154,
		39.817871, 35.813160, 13.208674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319008, 35.117531, 13.305169>,  <39.120274, 35.806091, 13.266183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319008, 35.117531, 13.305169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.628162, 35.352467, 13.401225>,  <39.813656, 35.493427, 13.458858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.628162, 35.352467, 13.401225>,  <39.319008, 35.117531, 13.305169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628162, 35.352467, 13.401225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091484, -0.477638, 0.873781,
		0.627910, -0.653368, -0.422894,
		0.772891, 0.587343, 0.240141,
		39.860031, 35.528671, 13.473268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960358, 34.723961, 13.421338>,  <39.319008, 35.117531, 13.305169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960358, 34.723961, 13.421338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016190, 35.068390, 13.616920>,  <40.049686, 35.275047, 13.734268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016190, 35.068390, 13.616920>,  <39.960358, 34.723961, 13.421338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016190, 35.068390, 13.616920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064700, -0.500663, 0.863221,
		0.988095, -0.088850, -0.125592,
		0.139576, 0.861070, 0.488955,
		40.058064, 35.326710, 13.763606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382545, 34.593948, 13.941903>,  <39.960358, 34.723961, 13.421338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382545, 34.593948, 13.941903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231186, 34.942413, 14.067060>,  <40.140369, 35.151493, 14.142153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231186, 34.942413, 14.067060>,  <40.382545, 34.593948, 13.941903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231186, 34.942413, 14.067060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038068, -0.352384, 0.935081,
		0.924861, 0.341919, 0.166504,
		-0.378395, 0.871158, 0.312890,
		40.117668, 35.203762, 14.160927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482819, 34.613205, 14.686312>,  <40.382545, 34.593948, 13.941903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482819, 34.613205, 14.686312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.232693, 34.924389, 14.661786>,  <40.082619, 35.111099, 14.647071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.232693, 34.924389, 14.661786>,  <40.482819, 34.613205, 14.686312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232693, 34.924389, 14.661786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107173, -0.007787, 0.994210,
		0.772980, 0.628263, 0.088246,
		-0.625313, 0.777962, -0.061313,
		40.045097, 35.157776, 14.643393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.691139, 35.115185, 15.252649>,  <40.482819, 34.613205, 14.686312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.691139, 35.115185, 15.252649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310627, 35.175045, 15.144818>,  <40.082321, 35.210960, 15.080119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310627, 35.175045, 15.144818>,  <40.691139, 35.115185, 15.252649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310627, 35.175045, 15.144818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268005, 0.030968, 0.962920,
		0.152446, 0.988254, 0.010647,
		-0.951280, 0.149647, -0.269578,
		40.025242, 35.219940, 15.063945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352104, 35.646820, 15.706403>,  <40.691139, 35.115185, 15.252649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352104, 35.646820, 15.706403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039997, 35.435841, 15.571954>,  <39.852734, 35.309254, 15.491284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039997, 35.435841, 15.571954>,  <40.352104, 35.646820, 15.706403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039997, 35.435841, 15.571954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362269, -0.056951, 0.930332,
		-0.509842, 0.847678, -0.146640,
		-0.780271, -0.527445, -0.336123,
		39.805916, 35.277607, 15.471117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840321, 36.071911, 15.984674>,  <40.352104, 35.646820, 15.706403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840321, 36.071911, 15.984674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698624, 35.714352, 15.874793>,  <39.613605, 35.499817, 15.808865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698624, 35.714352, 15.874793>,  <39.840321, 36.071911, 15.984674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698624, 35.714352, 15.874793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325976, -0.157293, 0.932201,
		-0.876498, 0.419776, -0.235668,
		-0.354247, -0.893894, -0.274704,
		39.592350, 35.446182, 15.792382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228168, 35.980202, 16.324556>,  <39.840321, 36.071911, 15.984674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228168, 35.980202, 16.324556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338184, 35.606724, 16.232849>,  <39.404194, 35.382637, 16.177826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338184, 35.606724, 16.232849>,  <39.228168, 35.980202, 16.324556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338184, 35.606724, 16.232849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324019, -0.314532, 0.892234,
		-0.905188, -0.171113, -0.389045,
		0.275040, -0.933697, -0.229267,
		39.420696, 35.326614, 16.164068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716469, 35.616528, 16.582941>,  <39.228168, 35.980202, 16.324556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716469, 35.616528, 16.582941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023960, 35.364075, 16.541519>,  <39.208454, 35.212601, 16.516666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023960, 35.364075, 16.541519>,  <38.716469, 35.616528, 16.582941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023960, 35.364075, 16.541519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237812, -0.432370, 0.869771,
		-0.593718, -0.643991, -0.482467,
		0.768729, -0.631135, -0.103557,
		39.254578, 35.174736, 16.510452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392788, 34.968212, 16.774204>,  <38.716469, 35.616528, 16.582941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392788, 34.968212, 16.774204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790688, 34.948109, 16.809849>,  <39.029427, 34.936047, 16.831236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790688, 34.948109, 16.809849>,  <38.392788, 34.968212, 16.774204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790688, 34.948109, 16.809849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101823, -0.570908, 0.814676,
		0.009931, -0.819474, -0.573030,
		0.994753, -0.050257, 0.089111,
		39.089115, 34.933033, 16.836582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479687, 34.253017, 16.957495>,  <38.392788, 34.968212, 16.774204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479687, 34.253017, 16.957495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809479, 34.454914, 17.059837>,  <39.007355, 34.576054, 17.121243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809479, 34.454914, 17.059837>,  <38.479687, 34.253017, 16.957495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809479, 34.454914, 17.059837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044243, -0.393256, 0.918364,
		0.564158, -0.768493, -0.301901,
		0.824481, 0.504746, 0.255859,
		39.056824, 34.606339, 17.136595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595108, 33.886135, 17.604126>,  <38.479687, 34.253017, 16.957495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595108, 33.886135, 17.604126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869362, 34.174805, 17.565968>,  <39.033913, 34.348007, 17.543072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869362, 34.174805, 17.565968>,  <38.595108, 33.886135, 17.604126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869362, 34.174805, 17.565968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204459, -0.065139, 0.976706,
		0.698646, -0.689165, -0.192213,
		0.685632, 0.721671, -0.095397,
		39.075050, 34.391304, 17.537348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349686, 33.601513, 17.734137>,  <38.595108, 33.886135, 17.604126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349686, 33.601513, 17.734137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320881, 33.993103, 17.810482>,  <39.303596, 34.228058, 17.856289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320881, 33.993103, 17.810482>,  <39.349686, 33.601513, 17.734137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320881, 33.993103, 17.810482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023515, -0.189643, 0.981572,
		0.997126, 0.075176, -0.009364,
		-0.072015, 0.978971, 0.190866,
		39.299278, 34.286793, 17.867743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843037, 33.734055, 18.154383>,  <39.349686, 33.601513, 17.734137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843037, 33.734055, 18.154383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618206, 34.054108, 18.238155>,  <39.483307, 34.246140, 18.288418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618206, 34.054108, 18.238155>,  <39.843037, 33.734055, 18.154383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618206, 34.054108, 18.238155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284774, -0.050509, 0.957263,
		0.776512, 0.597698, -0.199466,
		-0.562079, 0.800129, 0.209430,
		39.449581, 34.294147, 18.300983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202595, 34.152782, 18.721603>,  <39.843037, 33.734055, 18.154383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202595, 34.152782, 18.721603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.833199, 34.299995, 18.764900>,  <39.611561, 34.388325, 18.790878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.833199, 34.299995, 18.764900>,  <40.202595, 34.152782, 18.721603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833199, 34.299995, 18.764900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170755, 0.141698, 0.975071,
		0.343519, 0.918953, -0.193700,
		-0.923492, 0.368031, 0.108240,
		39.556152, 34.410404, 18.797373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248783, 34.814331, 19.090906>,  <40.202595, 34.152782, 18.721603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248783, 34.814331, 19.090906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870327, 34.699413, 19.150612>,  <39.643253, 34.630463, 19.186436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870327, 34.699413, 19.150612>,  <40.248783, 34.814331, 19.090906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870327, 34.699413, 19.150612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067556, 0.275704, 0.958866,
		-0.316625, 0.917307, -0.241447,
		-0.946142, -0.287290, 0.149264,
		39.586483, 34.613228, 19.195391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933243, 35.333324, 19.500818>,  <40.248783, 34.814331, 19.090906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933243, 35.333324, 19.500818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657104, 35.050163, 19.560547>,  <39.491421, 34.880268, 19.596384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657104, 35.050163, 19.560547>,  <39.933243, 35.333324, 19.500818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657104, 35.050163, 19.560547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159898, 0.350576, 0.922783,
		-0.705590, 0.613163, -0.355211,
		-0.690345, -0.707904, 0.149320,
		39.450001, 34.837791, 19.605343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451199, 35.620117, 19.965618>,  <39.933243, 35.333324, 19.500818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451199, 35.620117, 19.965618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397022, 35.224129, 19.981689>,  <39.364517, 34.986534, 19.991333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397022, 35.224129, 19.981689>,  <39.451199, 35.620117, 19.965618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397022, 35.224129, 19.981689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366759, 0.087767, 0.926167,
		-0.920404, 0.110703, -0.374968,
		-0.135439, -0.989971, 0.040180,
		39.356392, 34.927139, 19.993744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766823, 35.561333, 20.135292>,  <39.451199, 35.620117, 19.965618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766823, 35.561333, 20.135292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967701, 35.231243, 20.238682>,  <39.088230, 35.033192, 20.300714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967701, 35.231243, 20.238682>,  <38.766823, 35.561333, 20.135292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967701, 35.231243, 20.238682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430524, 0.020627, 0.902343,
		-0.749963, -0.564435, -0.344919,
		0.502199, -0.825220, 0.258472,
		39.118362, 34.983677, 20.316223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447086, 35.019993, 20.318624>,  <38.766823, 35.561333, 20.135292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447086, 35.019993, 20.318624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790958, 35.017948, 20.522949>,  <38.997280, 35.016720, 20.645544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790958, 35.017948, 20.522949>,  <38.447086, 35.019993, 20.318624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790958, 35.017948, 20.522949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494679, 0.241172, 0.834942,
		-0.127465, -0.970469, 0.204799,
		0.859677, -0.005116, 0.510812,
		39.048862, 35.016415, 20.676193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613922, 34.402061, 20.778961>,  <38.447086, 35.019993, 20.318624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613922, 34.402061, 20.778961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708557, 34.769218, 20.906391>,  <38.765339, 34.989513, 20.982849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708557, 34.769218, 20.906391>,  <38.613922, 34.402061, 20.778961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708557, 34.769218, 20.906391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851789, 0.038210, 0.522490,
		0.467419, -0.394975, 0.790894,
		0.236590, 0.917897, 0.318575,
		38.779533, 35.044586, 21.001965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388153, 34.340111, 21.495686>,  <38.613922, 34.402061, 20.778961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388153, 34.340111, 21.495686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359787, 34.722752, 21.382626>,  <38.342766, 34.952335, 21.314789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359787, 34.722752, 21.382626>,  <38.388153, 34.340111, 21.495686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359787, 34.722752, 21.382626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969055, 0.001099, 0.246842,
		0.236439, 0.291409, 0.926918,
		-0.070914, 0.956597, -0.282651,
		38.338512, 35.009731, 21.297831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213551, 34.711056, 22.042524>,  <38.388153, 34.340111, 21.495686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213551, 34.711056, 22.042524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079540, 34.816006, 21.680550>,  <37.999134, 34.878975, 21.463364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079540, 34.816006, 21.680550>,  <38.213551, 34.711056, 22.042524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079540, 34.816006, 21.680550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914813, -0.320497, 0.245762,
		-0.225548, 0.910188, 0.347400,
		-0.335030, 0.262375, -0.904939,
		37.979031, 34.894718, 21.409067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639446, 35.262699, 21.958242>,  <38.213551, 34.711056, 22.042524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639446, 35.262699, 21.958242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633419, 34.951996, 21.706394>,  <37.629803, 34.765575, 21.555285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633419, 34.951996, 21.706394>,  <37.639446, 35.262699, 21.958242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633419, 34.951996, 21.706394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766052, -0.395719, 0.506528,
		-0.642601, 0.489956, -0.589072,
		-0.015070, -0.776756, -0.629622,
		37.628899, 34.718967, 21.517508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902679, 35.075291, 21.641327>,  <37.639446, 35.262699, 21.958242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902679, 35.075291, 21.641327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159664, 34.775066, 21.703182>,  <37.313854, 34.594933, 21.740295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159664, 34.775066, 21.703182>,  <36.902679, 35.075291, 21.641327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159664, 34.775066, 21.703182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722734, -0.526368, 0.447876,
		-0.254761, -0.399502, -0.880622,
		0.642459, -0.750556, 0.154636,
		37.352402, 34.549900, 21.749573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535137, 34.412453, 21.404608>,  <36.902679, 35.075291, 21.641327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535137, 34.412453, 21.404608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.798679, 34.387035, 21.704441>,  <36.956802, 34.371784, 21.884340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.798679, 34.387035, 21.704441>,  <36.535137, 34.412453, 21.404608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798679, 34.387035, 21.704441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665283, -0.514344, 0.541155,
		0.351158, -0.855227, -0.381150,
		0.658853, -0.063542, 0.749584,
		36.996334, 34.367973, 21.929316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763134, 33.733574, 21.673391>,  <36.535137, 34.412453, 21.404608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763134, 33.733574, 21.673391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763794, 34.003803, 21.968307>,  <36.764191, 34.165939, 22.145258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763794, 34.003803, 21.968307>,  <36.763134, 33.733574, 21.673391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763794, 34.003803, 21.968307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649386, -0.559955, 0.514537,
		0.760457, -0.479639, 0.437780,
		0.001654, 0.675571, 0.737292,
		36.764290, 34.206474, 22.189495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630676, 33.327637, 22.178694>,  <36.763134, 33.733574, 21.673391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630676, 33.327637, 22.178694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571209, 33.691986, 22.332684>,  <36.535526, 33.910595, 22.425077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571209, 33.691986, 22.332684>,  <36.630676, 33.327637, 22.178694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571209, 33.691986, 22.332684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750481, -0.357436, 0.555894,
		0.643953, -0.206268, 0.736735,
		-0.148673, 0.910875, 0.384972,
		36.526608, 33.965248, 22.448175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452724, 33.187141, 22.873447>,  <36.630676, 33.327637, 22.178694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452724, 33.187141, 22.873447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316204, 33.550690, 22.777554>,  <36.234291, 33.768818, 22.720018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316204, 33.550690, 22.777554>,  <36.452724, 33.187141, 22.873447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316204, 33.550690, 22.777554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883291, -0.222902, 0.412446,
		0.321423, 0.352520, 0.878873,
		-0.341298, 0.908870, -0.239732,
		36.213814, 33.823349, 22.705633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316738, 33.456306, 23.487783>,  <36.452724, 33.187141, 22.873447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316738, 33.456306, 23.487783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093960, 33.641567, 23.212013>,  <35.960293, 33.752724, 23.046551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093960, 33.641567, 23.212013>,  <36.316738, 33.456306, 23.487783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093960, 33.641567, 23.212013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829980, -0.341146, 0.441308,
		-0.030803, 0.817993, 0.574404,
		-0.556942, 0.463150, -0.689426,
		35.926876, 33.780514, 23.005186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862865, 33.875927, 23.814232>,  <36.316738, 33.456306, 23.487783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862865, 33.875927, 23.814232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684437, 33.829685, 23.459232>,  <35.577377, 33.801941, 23.246233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684437, 33.829685, 23.459232>,  <35.862865, 33.875927, 23.814232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684437, 33.829685, 23.459232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783957, -0.427920, 0.449773,
		-0.431773, 0.896393, 0.100258,
		-0.446076, -0.115602, -0.887498,
		35.550613, 33.795006, 23.192984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125744, 33.941063, 23.968237>,  <35.862865, 33.875927, 23.814232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125744, 33.941063, 23.968237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146965, 33.772392, 23.606159>,  <35.159698, 33.671188, 23.388912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146965, 33.772392, 23.606159>,  <35.125744, 33.941063, 23.968237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146965, 33.772392, 23.606159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771944, -0.592352, 0.230701,
		-0.633474, 0.686520, -0.356934,
		0.053050, -0.421675, -0.905194,
		35.162880, 33.645889, 23.334600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419300, 33.917145, 23.700991>,  <35.125744, 33.941063, 23.968237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419300, 33.917145, 23.700991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596130, 33.615929, 23.506054>,  <34.702229, 33.435200, 23.389091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596130, 33.615929, 23.506054>,  <34.419300, 33.917145, 23.700991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596130, 33.615929, 23.506054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728411, -0.618442, 0.294867,
		-0.523440, 0.224632, -0.821919,
		0.442073, -0.753040, -0.487342,
		34.728752, 33.390018, 23.359852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835751, 33.460285, 23.497154>,  <34.419300, 33.917145, 23.700991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835751, 33.460285, 23.497154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168194, 33.244240, 23.444180>,  <34.367661, 33.114613, 23.412395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168194, 33.244240, 23.444180>,  <33.835751, 33.460285, 23.497154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168194, 33.244240, 23.444180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467435, -0.807500, 0.359789,
		-0.301268, -0.237118, -0.923587,
		0.831109, -0.540110, -0.132437,
		34.417526, 33.082207, 23.404448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595001, 32.800045, 23.026447>,  <33.835751, 33.460285, 23.497154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595001, 32.800045, 23.026447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932911, 32.718502, 23.224354>,  <34.135658, 32.669575, 23.343098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932911, 32.718502, 23.224354>,  <33.595001, 32.800045, 23.026447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932911, 32.718502, 23.224354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422248, -0.821923, 0.382295,
		0.328727, -0.531869, -0.780419,
		0.844775, -0.203859, 0.494769,
		34.186344, 32.657345, 23.372784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726452, 32.093433, 22.885887>,  <33.595001, 32.800045, 23.026447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726452, 32.093433, 22.885887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940548, 32.161598, 23.216820>,  <34.069004, 32.202496, 23.415379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940548, 32.161598, 23.216820>,  <33.726452, 32.093433, 22.885887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940548, 32.161598, 23.216820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296205, -0.879380, 0.372765,
		0.791062, -0.444579, -0.420203,
		0.535241, 0.170414, 0.827331,
		34.101120, 32.212723, 23.465019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883358, 31.392262, 23.182390>,  <33.726452, 32.093433, 22.885887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883358, 31.392262, 23.182390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958527, 31.630573, 23.494732>,  <34.003628, 31.773560, 23.682137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958527, 31.630573, 23.494732>,  <33.883358, 31.392262, 23.182390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958527, 31.630573, 23.494732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087268, -0.781744, 0.617462,
		0.978299, -0.184178, -0.094914,
		0.187922, 0.595780, 0.780853,
		34.014904, 31.809307, 23.728989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296005, 30.935513, 23.600742>,  <33.883358, 31.392262, 23.182390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296005, 30.935513, 23.600742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136494, 31.226646, 23.823895>,  <34.040787, 31.401327, 23.957787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136494, 31.226646, 23.823895>,  <34.296005, 30.935513, 23.600742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136494, 31.226646, 23.823895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046644, -0.623656, 0.780306,
		0.915859, 0.285149, 0.282651,
		-0.398781, 0.727834, 0.557881,
		34.016861, 31.444996, 23.991259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677605, 30.924398, 24.274452>,  <34.296005, 30.935513, 23.600742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677605, 30.924398, 24.274452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345047, 31.125443, 24.369244>,  <34.145512, 31.246069, 24.426119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345047, 31.125443, 24.369244>,  <34.677605, 30.924398, 24.274452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345047, 31.125443, 24.369244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046586, -0.488009, 0.871595,
		0.553721, 0.713602, 0.429144,
		-0.831398, 0.502612, 0.236977,
		34.095627, 31.276226, 24.440336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773998, 31.314331, 24.901983>,  <34.677605, 30.924398, 24.274452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773998, 31.314331, 24.901983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383381, 31.241535, 24.855946>,  <34.149010, 31.197859, 24.828323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383381, 31.241535, 24.855946>,  <34.773998, 31.314331, 24.901983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383381, 31.241535, 24.855946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007097, -0.507005, 0.861914,
		-0.215211, 0.842512, 0.493820,
		-0.976542, -0.181989, -0.115092,
		34.090420, 31.186939, 24.821419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485760, 31.614923, 25.465208>,  <34.773998, 31.314331, 24.901983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485760, 31.614923, 25.465208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251457, 31.314308, 25.343830>,  <34.110874, 31.133940, 25.271004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251457, 31.314308, 25.343830>,  <34.485760, 31.614923, 25.465208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251457, 31.314308, 25.343830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034581, -0.350881, 0.935781,
		-0.809748, 0.558634, 0.179542,
		-0.585757, -0.751539, -0.303444,
		34.075729, 31.088846, 25.252796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983448, 31.516666, 25.962757>,  <34.485760, 31.614923, 25.465208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983448, 31.516666, 25.962757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945415, 31.170540, 25.765907>,  <33.922596, 30.962864, 25.647797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945415, 31.170540, 25.765907>,  <33.983448, 31.516666, 25.962757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945415, 31.170540, 25.765907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051149, -0.497958, 0.865691,
		-0.994155, 0.057139, 0.091607,
		-0.095081, -0.865317, -0.492125,
		33.916893, 30.910944, 25.618269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728390, 31.120888, 26.527550>,  <33.983448, 31.516666, 25.962757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728390, 31.120888, 26.527550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815956, 30.851715, 26.244923>,  <33.868496, 30.690212, 26.075346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815956, 30.851715, 26.244923>,  <33.728390, 31.120888, 26.527550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815956, 30.851715, 26.244923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219052, -0.671754, 0.707646,
		-0.950837, -0.309692, 0.000347,
		0.218919, -0.672932, -0.706567,
		33.881634, 30.649836, 26.032953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376148, 30.543774, 26.844694>,  <33.728390, 31.120888, 26.527550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376148, 30.543774, 26.844694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631561, 30.394482, 26.575481>,  <33.784809, 30.304907, 26.413954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631561, 30.394482, 26.575481>,  <33.376148, 30.543774, 26.844694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631561, 30.394482, 26.575481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183375, -0.775557, 0.604057,
		-0.747427, -0.509129, -0.426780,
		0.638535, -0.373228, -0.673033,
		33.823120, 30.282513, 26.373571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206120, 29.848215, 26.778782>,  <33.376148, 30.543774, 26.844694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206120, 29.848215, 26.778782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582035, 29.865124, 26.643131>,  <33.807587, 29.875269, 26.561741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582035, 29.865124, 26.643131>,  <33.206120, 29.848215, 26.778782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582035, 29.865124, 26.643131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246962, -0.769918, 0.588418,
		-0.236228, -0.636741, -0.734001,
		0.939790, 0.042270, -0.339127,
		33.863972, 29.877804, 26.541393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434170, 29.148581, 26.645811>,  <33.206120, 29.848215, 26.778782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434170, 29.148581, 26.645811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768936, 29.358719, 26.707245>,  <33.969795, 29.484802, 26.744104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768936, 29.358719, 26.707245>,  <33.434170, 29.148581, 26.645811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768936, 29.358719, 26.707245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304317, -0.679859, 0.667220,
		0.454936, -0.511667, -0.728855,
		0.836913, 0.525346, 0.153584,
		34.020012, 29.516323, 26.753321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890770, 28.666046, 26.771370>,  <33.434170, 29.148581, 26.645811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890770, 28.666046, 26.771370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042793, 28.994511, 26.941666>,  <34.134007, 29.191589, 27.043844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042793, 28.994511, 26.941666>,  <33.890770, 28.666046, 26.771370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042793, 28.994511, 26.941666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320918, -0.548750, 0.771936,
		0.867508, -0.156750, -0.472081,
		0.380055, 0.821159, 0.425741,
		34.156811, 29.240858, 27.069387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518517, 28.462770, 26.925980>,  <33.890770, 28.666046, 26.771370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518517, 28.462770, 26.925980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489532, 28.793411, 27.149220>,  <34.472141, 28.991796, 27.283163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489532, 28.793411, 27.149220>,  <34.518517, 28.462770, 26.925980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489532, 28.793411, 27.149220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543264, -0.436564, 0.717131,
		0.836429, 0.355162, -0.417428,
		-0.072463, 0.826603, 0.558101,
		34.467793, 29.041391, 27.316650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171303, 28.499926, 27.238884>,  <34.518517, 28.462770, 26.925980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171303, 28.499926, 27.238884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903774, 28.685886, 27.470936>,  <34.743259, 28.797462, 27.610167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903774, 28.685886, 27.470936>,  <35.171303, 28.499926, 27.238884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903774, 28.685886, 27.470936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403277, -0.428673, 0.808460,
		0.624539, 0.774665, 0.099220,
		-0.668819, 0.464902, 0.580128,
		34.703129, 28.825357, 27.644974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547482, 28.895294, 27.674189>,  <35.171303, 28.499926, 27.238884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547482, 28.895294, 27.674189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197918, 28.813721, 27.850689>,  <34.988182, 28.764776, 27.956589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197918, 28.813721, 27.850689>,  <35.547482, 28.895294, 27.674189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197918, 28.813721, 27.850689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484663, -0.435216, 0.758741,
		0.037306, 0.876925, 0.479177,
		-0.873905, -0.203934, 0.441250,
		34.935745, 28.752541, 27.983065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713322, 28.900412, 28.432766>,  <35.547482, 28.895294, 27.674189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713322, 28.900412, 28.432766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337662, 28.766014, 28.461357>,  <35.112267, 28.685375, 28.478512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337662, 28.766014, 28.461357>,  <35.713322, 28.900412, 28.432766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337662, 28.766014, 28.461357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196254, -0.354025, 0.914413,
		-0.281934, 0.872796, 0.398422,
		-0.939147, -0.335996, 0.071479,
		35.055916, 28.665215, 28.482801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509377, 28.964144, 29.100746>,  <35.713322, 28.900412, 28.432766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509377, 28.964144, 29.100746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254597, 28.684361, 28.971096>,  <35.101730, 28.516491, 28.893305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254597, 28.684361, 28.971096>,  <35.509377, 28.964144, 29.100746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254597, 28.684361, 28.971096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074021, -0.473997, 0.877409,
		-0.767345, 0.534872, 0.353686,
		-0.636948, -0.699456, -0.324127,
		35.063511, 28.474524, 28.873857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986824, 28.899948, 29.608824>,  <35.509377, 28.964144, 29.100746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986824, 28.899948, 29.608824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973835, 28.553413, 29.409462>,  <34.966042, 28.345493, 29.289845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973835, 28.553413, 29.409462>,  <34.986824, 28.899948, 29.608824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973835, 28.553413, 29.409462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081179, -0.494734, 0.865244,
		-0.996170, 0.068559, -0.054261,
		-0.032476, -0.866336, -0.498405,
		34.964092, 28.293512, 29.259941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550484, 28.503752, 29.920830>,  <34.986824, 28.899948, 29.608824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550484, 28.503752, 29.920830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769882, 28.237617, 29.718254>,  <34.901520, 28.077936, 29.596708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769882, 28.237617, 29.718254>,  <34.550484, 28.503752, 29.920830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769882, 28.237617, 29.718254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059723, -0.572955, 0.817408,
		-0.834017, -0.478591, -0.274528,
		0.548496, -0.665336, -0.506437,
		34.934433, 28.038017, 29.566322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170151, 27.829718, 29.876720>,  <34.550484, 28.503752, 29.920830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170151, 27.829718, 29.876720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567001, 27.789021, 29.847504>,  <34.805111, 27.764603, 29.829973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567001, 27.789021, 29.847504>,  <34.170151, 27.829718, 29.876720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567001, 27.789021, 29.847504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002446, -0.598800, 0.800895,
		-0.125222, -0.794410, -0.594334,
		0.992125, -0.101743, -0.073040,
		34.864639, 27.758497, 29.825592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275406, 27.078207, 29.918579>,  <34.170151, 27.829718, 29.876720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275406, 27.078207, 29.918579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625671, 27.258354, 29.988308>,  <34.835831, 27.366444, 30.030146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625671, 27.258354, 29.988308>,  <34.275406, 27.078207, 29.918579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625671, 27.258354, 29.988308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247296, -0.728223, 0.639168,
		0.414808, -0.516584, -0.749049,
		0.875659, 0.450369, 0.174323,
		34.888371, 27.393465, 30.040606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755051, 26.574368, 29.987116>,  <34.275406, 27.078207, 29.918579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755051, 26.574368, 29.987116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935871, 26.875801, 30.178013>,  <35.044365, 27.056662, 30.292551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935871, 26.875801, 30.178013>,  <34.755051, 26.574368, 29.987116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935871, 26.875801, 30.178013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228094, -0.614903, 0.754896,
		0.862333, -0.232398, -0.449858,
		0.452055, 0.753582, 0.477243,
		35.071487, 27.101875, 30.321186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182262, 26.207569, 30.444965>,  <34.755051, 26.574368, 29.987116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182262, 26.207569, 30.444965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200531, 26.586483, 30.571812>,  <35.211494, 26.813831, 30.647921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200531, 26.586483, 30.571812>,  <35.182262, 26.207569, 30.444965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200531, 26.586483, 30.571812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056805, -0.319397, 0.945917,
		0.997340, -0.025190, -0.068399,
		0.045674, 0.947286, 0.317117,
		35.214233, 26.870668, 30.666946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833279, 26.298761, 30.880461>,  <35.182262, 26.207569, 30.444965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833279, 26.298761, 30.880461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540867, 26.556591, 30.970005>,  <35.365417, 26.711288, 31.023731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540867, 26.556591, 30.970005>,  <35.833279, 26.298761, 30.880461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540867, 26.556591, 30.970005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080132, -0.244712, 0.966279,
		0.677620, 0.724321, 0.127242,
		-0.731034, 0.644574, 0.223863,
		35.321556, 26.749964, 31.037165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130539, 26.662245, 31.390289>,  <35.833279, 26.298761, 30.880461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130539, 26.662245, 31.390289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741245, 26.748165, 31.422958>,  <35.507668, 26.799717, 31.442560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741245, 26.748165, 31.422958>,  <36.130539, 26.662245, 31.390289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741245, 26.748165, 31.422958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021579, -0.268407, 0.963064,
		0.228790, 0.939051, 0.256589,
		-0.973237, 0.214802, 0.081673,
		35.449276, 26.812605, 31.447460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120029, 26.921913, 32.065445>,  <36.130539, 26.662245, 31.390289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120029, 26.921913, 32.065445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734409, 26.839294, 31.998569>,  <35.503036, 26.789724, 31.958445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734409, 26.839294, 31.998569>,  <36.120029, 26.921913, 32.065445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734409, 26.839294, 31.998569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104782, -0.282701, 0.953468,
		-0.244198, 0.936706, 0.250894,
		-0.964048, -0.206546, -0.167185,
		35.445194, 26.777330, 31.948414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839840, 27.113907, 32.705334>,  <36.120029, 26.921913, 32.065445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839840, 27.113907, 32.705334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568237, 26.891560, 32.513515>,  <35.405277, 26.758152, 32.398426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568237, 26.891560, 32.513515>,  <35.839840, 27.113907, 32.705334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568237, 26.891560, 32.513515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259616, -0.429190, 0.865099,
		-0.686695, 0.711905, 0.147111,
		-0.679006, -0.555867, -0.479545,
		35.364536, 26.724800, 32.369652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118206, 27.180601, 33.041973>,  <35.839840, 27.113907, 32.705334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118206, 27.180601, 33.041973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092354, 26.839127, 32.835270>,  <35.076843, 26.634241, 32.711246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092354, 26.839127, 32.835270>,  <35.118206, 27.180601, 33.041973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092354, 26.839127, 32.835270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303787, -0.476435, 0.825060,
		-0.950546, 0.210305, -0.228549,
		-0.064626, -0.853687, -0.516761,
		35.072968, 26.583021, 32.680241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500484, 26.857098, 33.201897>,  <35.118206, 27.180601, 33.041973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500484, 26.857098, 33.201897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736027, 26.558979, 33.076813>,  <34.877350, 26.380108, 33.001762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736027, 26.558979, 33.076813>,  <34.500484, 26.857098, 33.201897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736027, 26.558979, 33.076813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234221, -0.527657, 0.816528,
		-0.773560, -0.407569, -0.485275,
		0.588851, -0.745295, -0.312714,
		34.912682, 26.335390, 32.982998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143982, 26.290712, 33.392025>,  <34.500484, 26.857098, 33.201897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143982, 26.290712, 33.392025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520550, 26.166683, 33.338989>,  <34.746490, 26.092266, 33.307167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520550, 26.166683, 33.338989>,  <34.143982, 26.290712, 33.392025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520550, 26.166683, 33.338989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084271, -0.597005, 0.797799,
		-0.326534, -0.739891, -0.588164,
		0.941421, -0.310073, -0.132591,
		34.802975, 26.073662, 33.299213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120262, 25.581564, 33.320869>,  <34.143982, 26.290712, 33.392025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120262, 25.581564, 33.320869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502499, 25.645935, 33.419624>,  <34.731838, 25.684559, 33.478878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502499, 25.645935, 33.419624>,  <34.120262, 25.581564, 33.320869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502499, 25.645935, 33.419624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115535, -0.566117, 0.816188,
		0.271118, -0.808463, -0.522382,
		0.955587, 0.160930, 0.246890,
		34.789173, 25.694214, 33.493690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455929, 24.897818, 33.542282>,  <34.120262, 25.581564, 33.320869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455929, 24.897818, 33.542282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692181, 25.179005, 33.700775>,  <34.833931, 25.347717, 33.795872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692181, 25.179005, 33.700775>,  <34.455929, 24.897818, 33.542282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692181, 25.179005, 33.700775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028451, -0.472577, 0.880830,
		0.806442, -0.531516, -0.259117,
		0.590628, 0.702966, 0.396228,
		34.869370, 25.389894, 33.819645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942528, 24.540730, 33.827988>,  <34.455929, 24.897818, 33.542282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942528, 24.540730, 33.827988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000511, 24.887165, 34.019352>,  <35.035301, 25.095026, 34.134171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000511, 24.887165, 34.019352>,  <34.942528, 24.540730, 33.827988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000511, 24.887165, 34.019352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177546, -0.452904, 0.873702,
		0.973378, -0.211590, 0.088118,
		0.144957, 0.866087, 0.478414,
		35.043999, 25.146992, 34.162876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440437, 24.386499, 34.436966>,  <34.942528, 24.540730, 33.827988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440437, 24.386499, 34.436966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210258, 24.698593, 34.535023>,  <35.072151, 24.885849, 34.593857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210258, 24.698593, 34.535023>,  <35.440437, 24.386499, 34.436966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210258, 24.698593, 34.535023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219237, -0.435941, 0.872864,
		0.787908, 0.448540, 0.421916,
		-0.575445, 0.780236, 0.245145,
		35.037624, 24.932663, 34.608566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857609, 24.693394, 34.998837>,  <35.440437, 24.386499, 34.436966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857609, 24.693394, 34.998837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460999, 24.733479, 35.031910>,  <35.223034, 24.757530, 35.051754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460999, 24.733479, 35.031910>,  <35.857609, 24.693394, 34.998837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460999, 24.733479, 35.031910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019045, -0.517429, 0.855514,
		0.128516, 0.849838, 0.511135,
		-0.991524, 0.100213, 0.082683,
		35.163540, 24.763542, 35.056713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607067, 25.049015, 35.625553>,  <35.857609, 24.693394, 34.998837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607067, 25.049015, 35.625553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288666, 24.826458, 35.530224>,  <35.097626, 24.692923, 35.473026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288666, 24.826458, 35.530224>,  <35.607067, 25.049015, 35.625553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288666, 24.826458, 35.530224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036251, -0.349206, 0.936345,
		-0.604200, 0.753977, 0.257801,
		-0.796008, -0.556393, -0.238323,
		35.049862, 24.659540, 35.458729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070362, 25.119267, 36.158733>,  <35.607067, 25.049015, 35.625553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070362, 25.119267, 36.158733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052723, 24.764004, 35.975765>,  <35.042141, 24.550846, 35.865986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052723, 24.764004, 35.975765>,  <35.070362, 25.119267, 36.158733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052723, 24.764004, 35.975765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005271, -0.457648, 0.889118,
		-0.999013, 0.041617, 0.015499,
		-0.044096, -0.888159, -0.457416,
		35.039494, 24.497557, 35.838539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418694, 24.818153, 36.174786>,  <35.070362, 25.119267, 36.158733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418694, 24.818153, 36.174786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705673, 24.539623, 36.182785>,  <34.877861, 24.372505, 36.187584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705673, 24.539623, 36.182785>,  <34.418694, 24.818153, 36.174786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705673, 24.539623, 36.182785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325926, -0.310160, 0.893069,
		-0.615664, -0.647249, -0.449474,
		0.717447, -0.696326, 0.020001,
		34.920906, 24.330725, 36.188786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506584, 24.424788, 36.818241>,  <34.418694, 24.818153, 36.174786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506584, 24.424788, 36.818241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231678, 24.396412, 36.529068>,  <34.066734, 24.379387, 36.355564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231678, 24.396412, 36.529068>,  <34.506584, 24.424788, 36.818241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231678, 24.396412, 36.529068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726150, 0.093485, 0.681151,
		0.019263, 0.993090, -0.115761,
		-0.687266, -0.070939, -0.722933,
		34.025497, 24.375130, 36.312187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043007, 24.963985, 36.874844>,  <34.506584, 24.424788, 36.818241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043007, 24.963985, 36.874844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852470, 24.651592, 36.713272>,  <33.738148, 24.464155, 36.616329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852470, 24.651592, 36.713272>,  <34.043007, 24.963985, 36.874844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852470, 24.651592, 36.713272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720717, 0.083665, 0.688162,
		-0.503649, 0.618921, -0.602722,
		-0.476345, -0.780984, -0.403929,
		33.709568, 24.417297, 36.592094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425137, 25.370241, 36.867931>,  <34.043007, 24.963985, 36.874844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425137, 25.370241, 36.867931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462887, 25.701717, 37.088608>,  <33.485535, 25.900604, 37.221012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462887, 25.701717, 37.088608>,  <33.425137, 25.370241, 36.867931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462887, 25.701717, 37.088608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204878, 0.526135, -0.825352,
		-0.974227, 0.190921, -0.120128,
		0.094373, 0.828692, 0.551691,
		33.491199, 25.950325, 37.254116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266384, 25.884069, 36.387020>,  <33.425137, 25.370241, 36.867931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266384, 25.884069, 36.387020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440186, 26.047905, 36.707878>,  <33.544468, 26.146206, 36.900394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440186, 26.047905, 36.707878>,  <33.266384, 25.884069, 36.387020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440186, 26.047905, 36.707878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355739, 0.740156, -0.570630,
		-0.827440, 0.533296, 0.175893,
		0.434503, 0.409590, 0.802149,
		33.570538, 26.170782, 36.948524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952091, 26.525511, 36.552338>,  <33.266384, 25.884069, 36.387020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952091, 26.525511, 36.552338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342007, 26.506546, 36.639557>,  <33.575954, 26.495167, 36.691887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342007, 26.506546, 36.639557>,  <32.952091, 26.525511, 36.552338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342007, 26.506546, 36.639557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171325, 0.785096, -0.595208,
		-0.142970, 0.617557, 0.773423,
		0.974786, -0.047409, 0.218048,
		33.634441, 26.492323, 36.704971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184628, 27.134417, 36.356674>,  <32.952091, 26.525511, 36.552338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184628, 27.134417, 36.356674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539040, 26.964725, 36.431492>,  <33.751686, 26.862911, 36.476383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539040, 26.964725, 36.431492>,  <33.184628, 27.134417, 36.356674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539040, 26.964725, 36.431492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440865, 0.646033, -0.623121,
		0.143508, 0.634564, 0.759430,
		0.886027, -0.424229, 0.187046,
		33.804848, 26.837456, 36.487606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541325, 27.686712, 36.627529>,  <33.184628, 27.134417, 36.356674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541325, 27.686712, 36.627529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757744, 27.391552, 36.466152>,  <33.887596, 27.214455, 36.369328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757744, 27.391552, 36.466152>,  <33.541325, 27.686712, 36.627529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757744, 27.391552, 36.466152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479916, 0.664849, -0.572413,
		0.690613, 0.116085, 0.713847,
		0.541049, -0.737903, -0.403443,
		33.920059, 27.170181, 36.345119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281811, 27.775284, 36.734993>,  <33.541325, 27.686712, 36.627529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281811, 27.775284, 36.734993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238789, 27.550415, 36.406994>,  <34.212975, 27.415495, 36.210194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238789, 27.550415, 36.406994>,  <34.281811, 27.775284, 36.734993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238789, 27.550415, 36.406994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449884, 0.707986, -0.544390,
		0.886586, -0.427457, 0.176762,
		-0.107558, -0.562171, -0.819997,
		34.206520, 27.381763, 36.160995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893883, 27.729923, 36.390575>,  <34.281811, 27.775284, 36.734993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893883, 27.729923, 36.390575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642208, 27.625076, 36.097889>,  <34.491203, 27.562168, 35.922276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642208, 27.625076, 36.097889>,  <34.893883, 27.729923, 36.390575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642208, 27.625076, 36.097889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343413, 0.750798, -0.564243,
		0.697271, -0.606299, -0.382381,
		-0.629191, -0.262116, -0.731720,
		34.453449, 27.546442, 35.878372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323563, 27.787127, 35.722061>,  <34.893883, 27.729923, 36.390575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323563, 27.787127, 35.722061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937698, 27.809334, 35.619026>,  <34.706181, 27.822659, 35.557205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937698, 27.809334, 35.619026>,  <35.323563, 27.787127, 35.722061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937698, 27.809334, 35.619026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223851, 0.688363, -0.689962,
		0.139005, -0.723239, -0.676464,
		-0.964660, 0.055519, -0.257584,
		34.648300, 27.825989, 35.541752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309395, 27.715261, 34.979908>,  <35.323563, 27.787127, 35.722061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309395, 27.715261, 34.979908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954765, 27.883839, 35.056194>,  <34.741989, 27.984985, 35.101967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954765, 27.883839, 35.056194>,  <35.309395, 27.715261, 34.979908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954765, 27.883839, 35.056194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152512, 0.655537, -0.739602,
		-0.436723, -0.626625, -0.645457,
		-0.886574, 0.421441, 0.190720,
		34.688793, 28.010271, 35.113411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128330, 27.933517, 34.328545>,  <35.309395, 27.715261, 34.979908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128330, 27.933517, 34.328545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900471, 28.146030, 34.579380>,  <34.763756, 28.273539, 34.729881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900471, 28.146030, 34.579380>,  <35.128330, 27.933517, 34.328545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900471, 28.146030, 34.579380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083766, 0.796541, -0.598754,
		-0.817605, -0.288553, -0.498255,
		-0.569653, 0.531281, 0.627085,
		34.729576, 28.305414, 34.767506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709114, 28.180758, 34.024197>,  <35.128330, 27.933517, 34.328545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709114, 28.180758, 34.024197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629509, 28.429897, 34.326839>,  <34.581745, 28.579380, 34.508427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629509, 28.429897, 34.326839>,  <34.709114, 28.180758, 34.024197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629509, 28.429897, 34.326839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265025, 0.709078, -0.653430,
		-0.943481, -0.330560, 0.023956,
		-0.199012, 0.622848, 0.756608,
		34.569805, 28.616751, 34.553822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014797, 28.368753, 33.960918>,  <34.709114, 28.180758, 34.024197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014797, 28.368753, 33.960918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230289, 28.643723, 34.155739>,  <34.359585, 28.808704, 34.272633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230289, 28.643723, 34.155739>,  <34.014797, 28.368753, 33.960918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230289, 28.643723, 34.155739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230705, 0.676394, -0.699476,
		-0.810273, 0.264466, 0.522988,
		0.538733, 0.687422, 0.487050,
		34.391911, 28.849949, 34.301853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642868, 28.969038, 33.865501>,  <34.014797, 28.368753, 33.960918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642868, 28.969038, 33.865501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982807, 29.120609, 34.012024>,  <34.186771, 29.211552, 34.099937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982807, 29.120609, 34.012024>,  <33.642868, 28.969038, 33.865501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982807, 29.120609, 34.012024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065813, 0.765888, -0.639597,
		-0.522908, 0.519451, 0.675824,
		0.849845, 0.378928, 0.366302,
		34.237762, 29.234287, 34.121914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478161, 29.690456, 34.065571>,  <33.642868, 28.969038, 33.865501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478161, 29.690456, 34.065571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874825, 29.648643, 34.035397>,  <34.112823, 29.623556, 34.017292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874825, 29.648643, 34.035397>,  <33.478161, 29.690456, 34.065571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874825, 29.648643, 34.035397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060440, 0.893904, -0.444165,
		0.113862, 0.435900, 0.892764,
		0.991656, -0.104532, -0.075436,
		34.172321, 29.617283, 34.012764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785366, 30.212904, 34.297565>,  <33.478161, 29.690456, 34.065571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785366, 30.212904, 34.297565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070175, 30.072159, 34.054512>,  <34.241058, 29.987711, 33.908680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070175, 30.072159, 34.054512>,  <33.785366, 30.212904, 34.297565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070175, 30.072159, 34.054512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114860, 0.795357, -0.595159,
		0.692700, 0.493558, 0.525896,
		0.712021, -0.351862, -0.607634,
		34.283783, 29.966600, 33.872223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012390, 30.832750, 34.026276>,  <33.785366, 30.212904, 34.297565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012390, 30.832750, 34.026276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216576, 30.584679, 33.788013>,  <34.339088, 30.435837, 33.645058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216576, 30.584679, 33.788013>,  <34.012390, 30.832750, 34.026276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216576, 30.584679, 33.788013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043991, 0.710631, -0.702188,
		0.858772, 0.332240, 0.390036,
		0.510467, -0.620177, -0.595654,
		34.369717, 30.398626, 33.609318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556526, 31.203239, 33.767841>,  <34.012390, 30.832750, 34.026276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556526, 31.203239, 33.767841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.495152, 30.903961, 33.509644>,  <34.458328, 30.724394, 33.354725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.495152, 30.903961, 33.509644>,  <34.556526, 31.203239, 33.767841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495152, 30.903961, 33.509644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144223, 0.629274, -0.763684,
		0.977577, -0.210272, 0.011353,
		-0.153438, -0.748197, -0.645490,
		34.449120, 30.679502, 33.315998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109711, 31.260899, 33.264481>,  <34.556526, 31.203239, 33.767841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109711, 31.260899, 33.264481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822891, 31.048580, 33.083775>,  <34.650799, 30.921188, 32.975349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822891, 31.048580, 33.083775>,  <35.109711, 31.260899, 33.264481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822891, 31.048580, 33.083775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247508, 0.412000, -0.876924,
		0.651596, -0.740615, -0.164048,
		-0.717051, -0.530797, -0.451766,
		34.607777, 30.889341, 32.948246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349018, 30.936777, 32.672417>,  <35.109711, 31.260899, 33.264481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349018, 30.936777, 32.672417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955444, 30.932793, 32.601109>,  <34.719299, 30.930403, 32.558323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955444, 30.932793, 32.601109>,  <35.349018, 30.936777, 32.672417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955444, 30.932793, 32.601109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159531, 0.399355, -0.902810,
		0.080184, -0.916742, -0.391349,
		-0.983931, -0.009959, -0.178270,
		34.660267, 30.929806, 32.547626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243584, 30.506811, 32.088234>,  <35.349018, 30.936777, 32.672417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243584, 30.506811, 32.088234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921486, 30.742954, 32.110344>,  <34.728226, 30.884640, 32.123608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921486, 30.742954, 32.110344>,  <35.243584, 30.506811, 32.088234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921486, 30.742954, 32.110344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014440, 0.112714, -0.993522,
		-0.592763, -0.799233, -0.099287,
		-0.805247, 0.590357, 0.055272,
		34.679913, 30.920061, 32.126926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860901, 30.421398, 31.507200>,  <35.243584, 30.506811, 32.088234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860901, 30.421398, 31.507200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697624, 30.765575, 31.629196>,  <34.599659, 30.972082, 31.702393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697624, 30.765575, 31.629196>,  <34.860901, 30.421398, 31.507200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697624, 30.765575, 31.629196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032550, 0.320158, -0.946805,
		-0.912315, -0.396406, -0.102679,
		-0.408193, 0.860442, 0.304988,
		34.575165, 31.023708, 31.720692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396957, 30.525656, 31.024261>,  <34.860901, 30.421398, 31.507200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396957, 30.525656, 31.024261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435146, 30.891052, 31.182461>,  <34.458061, 31.110291, 31.277380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435146, 30.891052, 31.182461>,  <34.396957, 30.525656, 31.024261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435146, 30.891052, 31.182461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078012, 0.402956, -0.911889,
		-0.992370, 0.056211, 0.109736,
		0.095477, 0.913492, 0.395496,
		34.463791, 31.165100, 31.301109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792309, 30.928793, 30.665794>,  <34.396957, 30.525656, 31.024261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792309, 30.928793, 30.665794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027210, 31.206749, 30.831814>,  <34.168152, 31.373522, 30.931425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027210, 31.206749, 30.831814>,  <33.792309, 30.928793, 30.665794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027210, 31.206749, 30.831814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001180, 0.513516, -0.858079,
		-0.809405, 0.503416, 0.302382,
		0.587249, 0.694891, 0.415048,
		34.203384, 31.415216, 30.956327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525127, 31.562199, 30.650940>,  <33.792309, 30.928793, 30.665794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525127, 31.562199, 30.650940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906769, 31.679813, 30.673641>,  <34.135754, 31.750383, 30.687262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906769, 31.679813, 30.673641>,  <33.525127, 31.562199, 30.650940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906769, 31.679813, 30.673641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134788, 0.590886, -0.795415,
		-0.267416, 0.751262, 0.603402,
		0.954107, 0.294039, 0.056751,
		34.193001, 31.768024, 30.690666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447308, 32.182507, 30.421345>,  <33.525127, 31.562199, 30.650940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447308, 32.182507, 30.421345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840508, 32.112503, 30.399170>,  <34.076427, 32.070499, 30.385864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840508, 32.112503, 30.399170>,  <33.447308, 32.182507, 30.421345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840508, 32.112503, 30.399170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098152, 0.756216, -0.646919,
		0.155141, 0.630483, 0.760541,
		0.983004, -0.175012, -0.055437,
		34.135410, 32.059998, 30.382538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826714, 32.804665, 30.330336>,  <33.447308, 32.182507, 30.421345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826714, 32.804665, 30.330336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118225, 32.559044, 30.209129>,  <34.293133, 32.411671, 30.136406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118225, 32.559044, 30.209129>,  <33.826714, 32.804665, 30.330336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118225, 32.559044, 30.209129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161328, 0.584044, -0.795529,
		0.665470, 0.530882, 0.524704,
		0.728782, -0.614050, -0.303018,
		34.336861, 32.374828, 30.118223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456177, 33.215370, 30.147924>,  <33.826714, 32.804665, 30.330336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456177, 33.215370, 30.147924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496040, 32.864613, 29.959827>,  <34.519958, 32.654160, 29.846970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496040, 32.864613, 29.959827>,  <34.456177, 33.215370, 30.147924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496040, 32.864613, 29.959827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176317, 0.480677, -0.858989,
		0.979276, 0.002691, 0.202513,
		0.099655, -0.876894, -0.470241,
		34.525936, 32.601543, 29.818756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120216, 33.167713, 29.926058>,  <34.456177, 33.215370, 30.147924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120216, 33.167713, 29.926058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919334, 32.921112, 29.683502>,  <34.798805, 32.773151, 29.537970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919334, 32.921112, 29.683502>,  <35.120216, 33.167713, 29.926058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919334, 32.921112, 29.683502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386106, 0.467589, -0.795162,
		0.773764, -0.633466, 0.003211,
		-0.502206, -0.616507, -0.606389,
		34.768673, 32.736160, 29.501585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563515, 33.053513, 29.506701>,  <35.120216, 33.167713, 29.926058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563515, 33.053513, 29.506701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242085, 32.929760, 29.303307>,  <35.049229, 32.855507, 29.181271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242085, 32.929760, 29.303307>,  <35.563515, 33.053513, 29.506701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242085, 32.929760, 29.303307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334934, 0.471166, -0.815979,
		0.492031, -0.826005, -0.274993,
		-0.803570, -0.309382, -0.508486,
		35.001015, 32.836945, 29.150761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821121, 32.980900, 28.800571>,  <35.563515, 33.053513, 29.506701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821121, 32.980900, 28.800571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422390, 33.012360, 28.795670>,  <35.183151, 33.031235, 28.792728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422390, 33.012360, 28.795670>,  <35.821121, 32.980900, 28.800571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422390, 33.012360, 28.795670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055527, 0.576775, -0.815014,
		-0.057035, -0.813108, -0.579312,
		-0.996827, 0.078651, -0.012253,
		35.123341, 33.035954, 28.791994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654873, 32.889580, 28.114468>,  <35.821121, 32.980900, 28.800571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654873, 32.889580, 28.114468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334743, 33.081730, 28.257984>,  <35.142666, 33.197018, 28.344095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334743, 33.081730, 28.257984>,  <35.654873, 32.889580, 28.114468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334743, 33.081730, 28.257984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031408, 0.564003, -0.825175,
		-0.598751, -0.671672, -0.436295,
		-0.800319, 0.480371, 0.358794,
		35.094646, 33.225842, 28.365622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171040, 32.831573, 27.652231>,  <35.654873, 32.889580, 28.114468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171040, 32.831573, 27.652231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030193, 33.145248, 27.856609>,  <34.945686, 33.333454, 27.979237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030193, 33.145248, 27.856609>,  <35.171040, 32.831573, 27.652231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030193, 33.145248, 27.856609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080192, 0.518625, -0.851233,
		-0.932516, -0.340705, -0.119730,
		-0.352114, 0.784187, 0.510948,
		34.924561, 33.380505, 28.009893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777603, 33.120316, 27.138702>,  <35.171040, 32.831573, 27.652231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777603, 33.120316, 27.138702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793064, 33.409828, 27.414280>,  <34.802341, 33.583534, 27.579626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793064, 33.409828, 27.414280>,  <34.777603, 33.120316, 27.138702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793064, 33.409828, 27.414280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175826, 0.683628, -0.708334,
		-0.983662, -0.093758, 0.153680,
		0.038648, 0.723783, 0.688945,
		34.804657, 33.626965, 27.620964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233894, 33.658615, 27.045769>,  <34.777603, 33.120316, 27.138702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233894, 33.658615, 27.045769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509945, 33.865074, 27.248676>,  <34.675575, 33.988949, 27.370420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509945, 33.865074, 27.248676>,  <34.233894, 33.658615, 27.045769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509945, 33.865074, 27.248676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170537, 0.797193, -0.579138,
		-0.703312, 0.313168, 0.638183,
		0.690122, 0.516149, 0.507269,
		34.716980, 34.019920, 27.400856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879528, 34.343929, 27.244303>,  <34.233894, 33.658615, 27.045769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879528, 34.343929, 27.244303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279503, 34.339451, 27.245079>,  <34.519485, 34.336765, 27.245544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279503, 34.339451, 27.245079>,  <33.879528, 34.343929, 27.244303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279503, 34.339451, 27.245079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010119, 0.799781, -0.600207,
		0.005168, 0.600188, 0.799842,
		0.999935, -0.011195, 0.001939,
		34.579483, 34.336094, 27.245661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061371, 34.985500, 27.221088>,  <33.879528, 34.343929, 27.244303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061371, 34.985500, 27.221088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395103, 34.807549, 27.090878>,  <34.595345, 34.700775, 27.012751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395103, 34.807549, 27.090878>,  <34.061371, 34.985500, 27.221088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395103, 34.807549, 27.090878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057455, 0.657476, -0.751282,
		0.548257, 0.608117, 0.574115,
		0.834334, -0.444881, -0.325526,
		34.645405, 34.674084, 26.993219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285580, 35.514088, 26.895897>,  <34.061371, 34.985500, 27.221088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285580, 35.514088, 26.895897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.534821, 35.221783, 26.784378>,  <34.684364, 35.046398, 26.717466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.534821, 35.221783, 26.784378>,  <34.285580, 35.514088, 26.895897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534821, 35.221783, 26.784378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110569, 0.435174, -0.893531,
		0.774285, 0.525936, 0.351958,
		0.623103, -0.730763, -0.278796,
		34.721752, 35.002552, 26.700739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883999, 35.799988, 26.774349>,  <34.285580, 35.514088, 26.895897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883999, 35.799988, 26.774349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918835, 35.459339, 26.567600>,  <34.939735, 35.254951, 26.443552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918835, 35.459339, 26.567600>,  <34.883999, 35.799988, 26.774349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918835, 35.459339, 26.567600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376936, 0.508439, -0.774215,
		0.922136, -0.127399, 0.365288,
		0.087092, -0.851621, -0.516871,
		34.944962, 35.203854, 26.412539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488686, 35.802536, 26.395704>,  <34.883999, 35.799988, 26.774349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488686, 35.802536, 26.395704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263874, 35.543724, 26.189606>,  <35.128986, 35.388439, 26.065947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263874, 35.543724, 26.189606>,  <35.488686, 35.802536, 26.395704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263874, 35.543724, 26.189606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327058, 0.398324, -0.856955,
		0.759706, -0.650151, -0.012255,
		-0.562031, -0.647025, -0.515246,
		35.095264, 35.349617, 26.035032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004414, 35.426998, 25.863180>,  <35.488686, 35.802536, 26.395704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004414, 35.426998, 25.863180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629475, 35.415630, 25.724289>,  <35.404510, 35.408810, 25.640955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629475, 35.415630, 25.724289>,  <36.004414, 35.426998, 25.863180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629475, 35.415630, 25.724289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327318, 0.269505, -0.905665,
		0.119314, -0.962580, -0.243320,
		-0.937351, -0.028415, -0.347226,
		35.348270, 35.407104, 25.620121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008247, 35.056053, 25.244553>,  <36.004414, 35.426998, 25.863180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008247, 35.056053, 25.244553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642048, 35.210892, 25.200722>,  <35.422329, 35.303795, 25.174423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642048, 35.210892, 25.200722>,  <36.008247, 35.056053, 25.244553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642048, 35.210892, 25.200722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190423, 0.177018, -0.965611,
		-0.354391, -0.904886, -0.235773,
		-0.915503, 0.387100, -0.109577,
		35.367397, 35.327023, 25.167849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671711, 34.751656, 24.618196>,  <36.008247, 35.056053, 25.244553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671711, 34.751656, 24.618196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512104, 35.107544, 24.706905>,  <35.416340, 35.321075, 24.760130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512104, 35.107544, 24.706905>,  <35.671711, 34.751656, 24.618196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512104, 35.107544, 24.706905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117133, 0.289335, -0.950034,
		-0.909433, -0.353100, -0.219665,
		-0.399014, 0.889722, 0.221771,
		35.392399, 35.374462, 24.773438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161617, 34.788990, 24.160225>,  <35.671711, 34.751656, 24.618196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161617, 34.788990, 24.160225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234158, 35.163589, 24.280277>,  <35.277679, 35.388351, 24.352308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234158, 35.163589, 24.280277>,  <35.161617, 34.788990, 24.160225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234158, 35.163589, 24.280277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024170, 0.309345, -0.950643,
		-0.983122, 0.165142, 0.078734,
		0.181347, 0.936501, 0.300132,
		35.288563, 35.444538, 24.370317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612503, 35.227127, 23.954325>,  <35.161617, 34.788990, 24.160225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612503, 35.227127, 23.954325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950550, 35.435265, 24.003338>,  <35.153378, 35.560146, 24.032745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950550, 35.435265, 24.003338>,  <34.612503, 35.227127, 23.954325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950550, 35.435265, 24.003338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177726, 0.489662, -0.853607,
		-0.504171, 0.699621, 0.506301,
		0.845118, 0.520347, 0.122533,
		35.204086, 35.591370, 24.040098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188442, 34.769127, 24.131886>,  <34.612503, 35.227127, 23.954325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188442, 34.769127, 24.131886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816891, 34.782043, 23.984295>,  <33.593960, 34.789795, 23.895741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816891, 34.782043, 23.984295>,  <34.188442, 34.769127, 24.131886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816891, 34.782043, 23.984295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334180, 0.356508, 0.872482,
		0.159717, 0.933734, -0.320361,
		-0.928878, 0.032292, -0.368976,
		33.538227, 34.791733, 23.873602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897854, 35.418098, 24.135223>,  <34.188442, 34.769127, 24.131886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897854, 35.418098, 24.135223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592800, 35.161629, 24.169346>,  <33.409767, 35.007748, 24.189819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592800, 35.161629, 24.169346>,  <33.897854, 35.418098, 24.135223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592800, 35.161629, 24.169346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315116, 0.483465, 0.816678,
		-0.564880, 0.595946, -0.570753,
		-0.762635, -0.641179, 0.085308,
		33.364010, 34.969276, 24.194939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408531, 35.807789, 24.476456>,  <33.897854, 35.418098, 24.135223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408531, 35.807789, 24.476456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256336, 35.438393, 24.496052>,  <33.165020, 35.216755, 24.507811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256336, 35.438393, 24.496052>,  <33.408531, 35.807789, 24.476456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256336, 35.438393, 24.496052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519883, 0.257412, 0.814531,
		-0.764820, 0.284451, -0.578048,
		-0.380490, -0.923486, 0.048992,
		33.142189, 35.161346, 24.510750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697483, 35.846336, 24.844202>,  <33.408531, 35.807789, 24.476456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697483, 35.846336, 24.844202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784508, 35.458511, 24.889141>,  <32.836723, 35.225819, 24.916105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784508, 35.458511, 24.889141>,  <32.697483, 35.846336, 24.844202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784508, 35.458511, 24.889141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209143, 0.066123, 0.975647,
		-0.953376, -0.235759, -0.188390,
		0.217561, -0.969559, 0.112347,
		32.849777, 35.167645, 24.922846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230503, 35.650467, 25.236794>,  <32.697483, 35.846336, 24.844202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230503, 35.650467, 25.236794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511211, 35.368614, 25.278755>,  <32.679638, 35.199501, 25.303932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511211, 35.368614, 25.278755>,  <32.230503, 35.650467, 25.236794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511211, 35.368614, 25.278755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210146, -0.064050, 0.975570,
		-0.680701, -0.706674, -0.193025,
		0.701772, -0.704635, 0.104906,
		32.721745, 35.157223, 25.310226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888935, 35.152267, 25.646599>,  <32.230503, 35.650467, 25.236794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888935, 35.152267, 25.646599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271961, 35.053741, 25.706459>,  <32.501778, 34.994625, 25.742376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271961, 35.053741, 25.706459>,  <31.888935, 35.152267, 25.646599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271961, 35.053741, 25.706459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231164, -0.346255, 0.909214,
		-0.172138, -0.905227, -0.388501,
		0.957566, -0.246318, 0.149652,
		32.559231, 34.979847, 25.751354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861492, 34.503685, 25.800438>,  <31.888935, 35.152267, 25.646599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861492, 34.503685, 25.800438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195457, 34.646038, 25.968376>,  <32.395836, 34.731449, 26.069139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195457, 34.646038, 25.968376>,  <31.861492, 34.503685, 25.800438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195457, 34.646038, 25.968376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286841, -0.369677, 0.883777,
		0.469729, -0.858304, -0.206565,
		0.834911, 0.355885, 0.419845,
		32.445930, 34.752804, 26.094330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963737, 33.957829, 26.319141>,  <31.861492, 34.503685, 25.800438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963737, 33.957829, 26.319141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202229, 34.265408, 26.411430>,  <32.345322, 34.449955, 26.466805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202229, 34.265408, 26.411430>,  <31.963737, 33.957829, 26.319141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202229, 34.265408, 26.411430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054288, -0.248116, 0.967208,
		0.800979, -0.589200, -0.106188,
		0.596225, 0.768949, 0.230722,
		32.381096, 34.496094, 26.480646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558708, 33.745998, 26.677990>,  <31.963737, 33.957829, 26.319141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558708, 33.745998, 26.677990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532021, 34.126831, 26.797382>,  <32.516006, 34.355331, 26.869017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532021, 34.126831, 26.797382>,  <32.558708, 33.745998, 26.677990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532021, 34.126831, 26.797382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263662, -0.305336, 0.915015,
		0.962305, -0.017649, 0.271399,
		-0.066719, 0.952081, 0.298480,
		32.512005, 34.412457, 26.886927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974697, 33.661407, 27.236197>,  <32.558708, 33.745998, 26.677990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974697, 33.661407, 27.236197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745319, 33.986832, 27.274742>,  <32.607693, 34.182087, 27.297869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745319, 33.986832, 27.274742>,  <32.974697, 33.661407, 27.236197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745319, 33.986832, 27.274742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300802, -0.318496, 0.898932,
		0.762024, 0.486500, 0.427359,
		-0.573443, 0.813558, 0.096362,
		32.573288, 34.230900, 27.303650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074265, 33.801304, 27.907421>,  <32.974697, 33.661407, 27.236197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074265, 33.801304, 27.907421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747734, 34.008297, 27.804802>,  <32.551815, 34.132492, 27.743231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747734, 34.008297, 27.804802>,  <33.074265, 33.801304, 27.907421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747734, 34.008297, 27.804802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379402, -0.145521, 0.913716,
		0.435498, 0.843230, 0.315127,
		-0.816331, 0.517481, -0.256549,
		32.502834, 34.163540, 27.727837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994537, 34.331718, 28.471823>,  <33.074265, 33.801304, 27.907421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994537, 34.331718, 28.471823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634674, 34.286541, 28.303127>,  <32.418758, 34.259434, 28.201910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634674, 34.286541, 28.303127>,  <32.994537, 34.331718, 28.471823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634674, 34.286541, 28.303127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421659, -0.025782, 0.906388,
		-0.113244, 0.993267, -0.024429,
		-0.899655, -0.112944, -0.421740,
		32.364777, 34.252659, 28.176605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570602, 34.748886, 28.761074>,  <32.994537, 34.331718, 28.471823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570602, 34.748886, 28.761074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334671, 34.458775, 28.619049>,  <32.193111, 34.284706, 28.533834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334671, 34.458775, 28.619049>,  <32.570602, 34.748886, 28.761074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334671, 34.458775, 28.619049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250314, -0.253823, 0.934300,
		-0.767752, 0.639955, -0.031835,
		-0.589830, -0.725280, -0.355063,
		32.157722, 34.241192, 28.512529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958645, 34.806053, 29.127954>,  <32.570602, 34.748886, 28.761074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958645, 34.806053, 29.127954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.957144, 34.427299, 28.999336>,  <31.956244, 34.200047, 28.922165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.957144, 34.427299, 28.999336>,  <31.958645, 34.806053, 29.127954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957144, 34.427299, 28.999336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390417, -0.294642, 0.872216,
		-0.920631, 0.128810, -0.368575,
		-0.003753, -0.946886, -0.321546,
		31.956018, 34.143234, 28.902872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457769, 34.477585, 29.498487>,  <31.958645, 34.806053, 29.127954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457769, 34.477585, 29.498487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615871, 34.142052, 29.348747>,  <31.710732, 33.940731, 29.258904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615871, 34.142052, 29.348747>,  <31.457769, 34.477585, 29.498487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615871, 34.142052, 29.348747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188168, -0.472832, 0.860827,
		-0.899092, -0.269804, -0.344730,
		0.395254, -0.838830, -0.374351,
		31.734447, 33.890404, 29.236443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942699, 33.858303, 29.697937>,  <31.457769, 34.477585, 29.498487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942699, 33.858303, 29.697937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316933, 33.726696, 29.646660>,  <31.541473, 33.647732, 29.615892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316933, 33.726696, 29.646660>,  <30.942699, 33.858303, 29.697937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316933, 33.726696, 29.646660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040370, -0.460330, 0.886829,
		-0.350792, -0.824527, -0.443959,
		0.935583, -0.329015, -0.128194,
		31.597607, 33.627991, 29.608202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.920250, 33.050552, 29.795820>,  <30.942699, 33.858303, 29.697937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.920250, 33.050552, 29.795820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307791, 33.145679, 29.823425>,  <31.540316, 33.202755, 29.839989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307791, 33.145679, 29.823425>,  <30.920250, 33.050552, 29.795820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307791, 33.145679, 29.823425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107618, -0.655373, 0.747599,
		0.223025, -0.716888, -0.660554,
		0.968854, 0.237821, 0.069015,
		31.598448, 33.217026, 29.844130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359955, 32.371216, 29.722521>,  <30.920250, 33.050552, 29.795820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359955, 32.371216, 29.722521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593174, 32.651493, 29.887001>,  <31.733105, 32.819660, 29.985689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593174, 32.651493, 29.887001>,  <31.359955, 32.371216, 29.722521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593174, 32.651493, 29.887001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434102, -0.696508, 0.571342,
		0.686739, -0.154617, -0.710269,
		0.583048, 0.700693, 0.411200,
		31.768087, 32.861702, 30.010361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974791, 32.053684, 29.778034>,  <31.359955, 32.371216, 29.722521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974791, 32.053684, 29.778034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978968, 32.350960, 30.045635>,  <31.981474, 32.529324, 30.206196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978968, 32.350960, 30.045635>,  <31.974791, 32.053684, 29.778034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978968, 32.350960, 30.045635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295811, -0.641391, 0.707894,
		0.955189, 0.190507, -0.226540,
		0.010442, 0.743186, 0.669004,
		31.982100, 32.573914, 30.246336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553192, 31.945129, 30.201599>,  <31.974791, 32.053684, 29.778034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553192, 31.945129, 30.201599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319710, 32.177284, 30.428734>,  <32.179619, 32.316578, 30.565014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319710, 32.177284, 30.428734>,  <32.553192, 31.945129, 30.201599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319710, 32.177284, 30.428734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213988, -0.564654, 0.797104,
		0.783257, 0.586787, 0.205399,
		-0.583709, 0.580385, 0.567835,
		32.144596, 32.351398, 30.599085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870380, 31.871162, 30.842907>,  <32.553192, 31.945129, 30.201599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870380, 31.871162, 30.842907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510773, 32.024307, 30.927921>,  <32.295006, 32.116196, 30.978930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510773, 32.024307, 30.927921>,  <32.870380, 31.871162, 30.842907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510773, 32.024307, 30.927921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002993, -0.479968, 0.877281,
		0.437889, 0.789333, 0.430357,
		-0.899024, 0.382864, 0.212536,
		32.241066, 32.139168, 30.991682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924023, 32.173862, 31.446674>,  <32.870380, 31.871162, 30.842907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924023, 32.173862, 31.446674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544418, 32.054737, 31.405346>,  <32.316654, 31.983261, 31.380548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544418, 32.054737, 31.405346>,  <32.924023, 32.173862, 31.446674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544418, 32.054737, 31.405346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076880, -0.536529, 0.840373,
		-0.305712, 0.789583, 0.532071,
		-0.949015, -0.297818, -0.103320,
		32.259712, 31.965391, 31.374350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771206, 32.031185, 32.174080>,  <32.924023, 32.173862, 31.446674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771206, 32.031185, 32.174080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461975, 31.891071, 31.962551>,  <32.276436, 31.807003, 31.835634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461975, 31.891071, 31.962551>,  <32.771206, 32.031185, 32.174080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461975, 31.891071, 31.962551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246060, -0.602807, 0.758998,
		-0.584644, 0.716885, 0.379825,
		-0.773076, -0.350284, -0.528824,
		32.230053, 31.785986, 31.803904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235092, 32.169777, 32.601048>,  <32.771206, 32.031185, 32.174080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235092, 32.169777, 32.601048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165863, 31.877171, 32.337250>,  <32.124325, 31.701607, 32.178970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165863, 31.877171, 32.337250>,  <32.235092, 32.169777, 32.601048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165863, 31.877171, 32.337250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006350, -0.670413, 0.741961,
		-0.984889, 0.124225, 0.120675,
		-0.173072, -0.731515, -0.659493,
		32.113941, 31.657717, 32.139400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688833, 31.770176, 32.815025>,  <32.235092, 32.169777, 32.601048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688833, 31.770176, 32.815025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849916, 31.509060, 32.558372>,  <31.946566, 31.352390, 32.404381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849916, 31.509060, 32.558372>,  <31.688833, 31.770176, 32.815025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849916, 31.509060, 32.558372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099470, -0.728046, 0.678273,
		-0.909907, -0.209323, -0.358123,
		0.402708, -0.652788, -0.641633,
		31.970730, 31.313223, 32.365883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254074, 31.155342, 32.883217>,  <31.688833, 31.770176, 32.815025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254074, 31.155342, 32.883217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580597, 31.018562, 32.697006>,  <31.776510, 30.936495, 32.585281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580597, 31.018562, 32.697006>,  <31.254074, 31.155342, 32.883217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580597, 31.018562, 32.697006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094449, -0.874110, 0.476456,
		-0.569844, -0.344966, -0.745839,
		0.816307, -0.341950, -0.465525,
		31.825489, 30.915977, 32.557350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131063, 30.498013, 32.609035>,  <31.254074, 31.155342, 32.883217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131063, 30.498013, 32.609035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523272, 30.478497, 32.685139>,  <31.758596, 30.466787, 32.730801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523272, 30.478497, 32.685139>,  <31.131063, 30.498013, 32.609035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523272, 30.478497, 32.685139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133354, -0.876550, 0.462469,
		0.144209, -0.478832, -0.865981,
		0.980521, -0.048790, 0.190261,
		31.817429, 30.463860, 32.742218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355539, 29.842962, 32.435886>,  <31.131063, 30.498013, 32.609035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355539, 29.842962, 32.435886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637255, 29.997807, 32.673920>,  <31.806284, 30.090714, 32.816738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637255, 29.997807, 32.673920>,  <31.355539, 29.842962, 32.435886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637255, 29.997807, 32.673920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044224, -0.812694, 0.581010,
		0.708534, -0.435516, -0.555252,
		0.704289, 0.387110, 0.595082,
		31.848541, 30.113939, 32.852444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685877, 29.305464, 32.547169>,  <31.355539, 29.842962, 32.435886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685877, 29.305464, 32.547169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774061, 29.566193, 32.837418>,  <31.826973, 29.722630, 33.011566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774061, 29.566193, 32.837418>,  <31.685877, 29.305464, 32.547169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774061, 29.566193, 32.837418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074747, -0.730446, 0.678868,
		0.972527, -0.203903, -0.112315,
		0.220463, 0.651822, 0.725619,
		31.840200, 29.761740, 33.055103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269135, 29.032312, 32.981693>,  <31.685877, 29.305464, 32.547169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269135, 29.032312, 32.981693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082802, 29.274994, 33.239349>,  <31.971003, 29.420603, 33.393944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082802, 29.274994, 33.239349>,  <32.269135, 29.032312, 32.981693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082802, 29.274994, 33.239349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068842, -0.750584, 0.657180,
		0.882193, 0.261789, 0.391410,
		-0.465828, 0.606705, 0.644138,
		31.943054, 29.457005, 33.432590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656597, 28.983177, 33.642193>,  <32.269135, 29.032312, 32.981693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656597, 28.983177, 33.642193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312698, 29.161293, 33.742237>,  <32.106358, 29.268162, 33.802261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312698, 29.161293, 33.742237>,  <32.656597, 28.983177, 33.642193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312698, 29.161293, 33.742237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052558, -0.564256, 0.823925,
		0.508009, 0.695222, 0.508521,
		-0.859746, 0.445289, 0.250108,
		32.054775, 29.294880, 33.817268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683632, 29.048882, 34.299515>,  <32.656597, 28.983177, 33.642193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683632, 29.048882, 34.299515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294132, 29.079262, 34.213684>,  <32.060432, 29.097490, 34.162186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294132, 29.079262, 34.213684>,  <32.683632, 29.048882, 34.299515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294132, 29.079262, 34.213684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212995, -0.636548, 0.741242,
		-0.080292, 0.767488, 0.636016,
		-0.973749, 0.075953, -0.214581,
		32.002007, 29.102047, 34.149311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346386, 29.173939, 34.928455>,  <32.683632, 29.048882, 34.299515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346386, 29.173939, 34.928455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080822, 29.025795, 34.668594>,  <31.921482, 28.936909, 34.512676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080822, 29.025795, 34.668594>,  <32.346386, 29.173939, 34.928455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080822, 29.025795, 34.668594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268167, -0.693054, 0.669151,
		-0.698073, 0.618475, 0.360809,
		-0.663913, -0.370359, -0.649657,
		31.881649, 28.914688, 34.473698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665270, 29.148161, 35.340855>,  <32.346386, 29.173939, 34.928455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665270, 29.148161, 35.340855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612175, 28.900524, 35.031246>,  <31.580318, 28.751942, 34.845482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612175, 28.900524, 35.031246>,  <31.665270, 29.148161, 35.340855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612175, 28.900524, 35.031246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309705, -0.715919, 0.625734,
		-0.941522, 0.322776, -0.096706,
		-0.132738, -0.619093, -0.774019,
		31.572353, 28.714796, 34.799042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090082, 28.796696, 35.570820>,  <31.665270, 29.148161, 35.340855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090082, 28.796696, 35.570820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274239, 28.573921, 35.294308>,  <31.384733, 28.440256, 35.128403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274239, 28.573921, 35.294308>,  <31.090082, 28.796696, 35.570820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274239, 28.573921, 35.294308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291265, -0.830374, 0.475019,
		-0.838584, -0.017337, -0.544496,
		0.460372, -0.556936, -0.691289,
		31.412355, 28.406841, 35.086926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769762, 28.147728, 35.503231>,  <31.090082, 28.796696, 35.570820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769762, 28.147728, 35.503231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122259, 28.065819, 35.332829>,  <31.333757, 28.016674, 35.230587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122259, 28.065819, 35.332829>,  <30.769762, 28.147728, 35.503231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122259, 28.065819, 35.332829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034381, -0.871128, 0.489852,
		-0.471411, -0.446325, -0.760635,
		0.881243, -0.204770, -0.426005,
		31.386631, 28.004387, 35.205029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696629, 27.505556, 35.188648>,  <30.769762, 28.147728, 35.503231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696629, 27.505556, 35.188648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093164, 27.532730, 35.233604>,  <31.331085, 27.549034, 35.260578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093164, 27.532730, 35.233604>,  <30.696629, 27.505556, 35.188648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093164, 27.532730, 35.233604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021954, -0.929489, 0.368195,
		0.129480, -0.362539, -0.922930,
		0.991339, 0.067936, 0.112392,
		31.390566, 27.553110, 35.267323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996868, 26.875572, 34.893528>,  <30.696629, 27.505556, 35.188648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996868, 26.875572, 34.893528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307396, 27.009495, 35.107155>,  <31.493713, 27.089848, 35.235332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307396, 27.009495, 35.107155>,  <30.996868, 26.875572, 34.893528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307396, 27.009495, 35.107155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054130, -0.879557, 0.472703,
		0.628010, -0.338060, -0.700942,
		0.776321, 0.334805, 0.534071,
		31.540293, 27.109936, 35.267376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060659, 26.232128, 34.648800>,  <30.996868, 26.875572, 34.893528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060659, 26.232128, 34.648800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879810, 25.947327, 34.433899>,  <30.771301, 25.776445, 34.304958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879810, 25.947327, 34.433899>,  <31.060659, 26.232128, 34.648800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879810, 25.947327, 34.433899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348092, 0.413721, -0.841229,
		0.821228, -0.567352, 0.060789,
		-0.452124, -0.712002, -0.537251,
		30.744173, 25.733727, 34.272724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622911, 25.935535, 34.154446>,  <31.060659, 26.232128, 34.648800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622911, 25.935535, 34.154446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262587, 25.874390, 33.991882>,  <31.046391, 25.837702, 33.894344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262587, 25.874390, 33.991882>,  <31.622911, 25.935535, 34.154446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262587, 25.874390, 33.991882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338863, 0.337730, -0.878129,
		0.271490, -0.928747, -0.252432,
		-0.900813, -0.152863, -0.406409,
		30.992342, 25.828531, 33.869961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693796, 25.618853, 33.553524>,  <31.622911, 25.935535, 34.154446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693796, 25.618853, 33.553524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.317785, 25.741352, 33.493450>,  <31.092178, 25.814852, 33.457405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.317785, 25.741352, 33.493450>,  <31.693796, 25.618853, 33.553524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317785, 25.741352, 33.493450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272674, 0.410179, -0.870288,
		-0.204923, -0.859048, -0.469087,
		-0.940030, 0.306250, -0.150185,
		31.035776, 25.833227, 33.448395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540047, 25.546186, 32.820835>,  <31.693796, 25.618853, 33.553524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540047, 25.546186, 32.820835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256180, 25.804546, 32.933395>,  <31.085859, 25.959562, 33.000931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256180, 25.804546, 32.933395>,  <31.540047, 25.546186, 32.820835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256180, 25.804546, 32.933395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180186, 0.552519, -0.813791,
		-0.681108, -0.526815, -0.508486,
		-0.709666, 0.645901, 0.281400,
		31.043280, 25.998316, 33.017815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131054, 25.686438, 32.271969>,  <31.540047, 25.546186, 32.820835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131054, 25.686438, 32.271969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090076, 26.018257, 32.491554>,  <31.065489, 26.217348, 32.623306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090076, 26.018257, 32.491554>,  <31.131054, 25.686438, 32.271969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090076, 26.018257, 32.491554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260633, 0.554968, -0.789988,
		-0.959987, 0.062146, -0.273061,
		-0.102446, 0.829547, 0.548960,
		31.059343, 26.267120, 32.656242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103342, 26.201235, 31.770151>,  <31.131054, 25.686438, 32.271969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103342, 26.201235, 31.770151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130846, 26.427216, 32.099052>,  <31.147348, 26.562805, 32.296394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130846, 26.427216, 32.099052>,  <31.103342, 26.201235, 31.770151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130846, 26.427216, 32.099052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246837, 0.788942, -0.562709,
		-0.966614, 0.241655, -0.085202,
		0.068762, 0.564954, 0.822252,
		31.151474, 26.596703, 32.345730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672367, 26.844505, 31.635900>,  <31.103342, 26.201235, 31.770151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672367, 26.844505, 31.635900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.935017, 26.948944, 31.918934>,  <31.092606, 27.011608, 32.088753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.935017, 26.948944, 31.918934>,  <30.672367, 26.844505, 31.635900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.935017, 26.948944, 31.918934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300644, 0.769801, -0.563045,
		-0.691709, 0.582439, 0.426971,
		0.656622, 0.261097, 0.707585,
		31.132004, 27.027273, 32.131210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568424, 27.553032, 31.942905>,  <30.672367, 26.844505, 31.635900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568424, 27.553032, 31.942905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955477, 27.462757, 31.988071>,  <31.187708, 27.408592, 32.015171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955477, 27.462757, 31.988071>,  <30.568424, 27.553032, 31.942905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955477, 27.462757, 31.988071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251835, 0.834711, -0.489731,
		0.016274, 0.502316, 0.864531,
		0.967633, -0.225689, 0.112917,
		31.245768, 27.395050, 32.021946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858011, 28.250830, 31.967955>,  <30.568424, 27.553032, 31.942905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858011, 28.250830, 31.967955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.168091, 28.002613, 31.920631>,  <31.354137, 27.853683, 31.892237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.168091, 28.002613, 31.920631>,  <30.858011, 28.250830, 31.967955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.168091, 28.002613, 31.920631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481822, 0.701914, -0.524562,
		0.408555, 0.349636, 0.843112,
		0.775197, -0.620542, -0.118308,
		31.400650, 27.816450, 31.885139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501410, 28.628750, 32.097218>,  <30.858011, 28.250830, 31.967955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501410, 28.628750, 32.097218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603687, 28.323925, 31.859264>,  <31.665054, 28.141029, 31.716494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603687, 28.323925, 31.859264>,  <31.501410, 28.628750, 32.097218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603687, 28.323925, 31.859264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232842, 0.645766, -0.727166,
		0.938299, 0.047420, 0.342559,
		0.255695, -0.762062, -0.594880,
		31.680395, 28.095306, 31.680799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022255, 28.937222, 31.659100>,  <31.501410, 28.628750, 32.097218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022255, 28.937222, 31.659100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922510, 28.594765, 31.478062>,  <31.862663, 28.389292, 31.369440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922510, 28.594765, 31.478062>,  <32.022255, 28.937222, 31.659100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922510, 28.594765, 31.478062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168328, 0.421924, -0.890868,
		0.953668, -0.298334, 0.038900,
		-0.249364, -0.856141, -0.452593,
		31.847700, 28.337923, 31.342283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525387, 28.856937, 31.157032>,  <32.022255, 28.937222, 31.659100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525387, 28.856937, 31.157032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179863, 28.680683, 31.059315>,  <31.972549, 28.574930, 31.000685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179863, 28.680683, 31.059315>,  <32.525387, 28.856937, 31.157032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179863, 28.680683, 31.059315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052136, 0.560449, -0.826546,
		0.501116, -0.701241, -0.507094,
		-0.863809, -0.440633, -0.244290,
		31.920721, 28.548492, 30.986027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527748, 28.936045, 30.450033>,  <32.525387, 28.856937, 31.157032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527748, 28.936045, 30.450033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151257, 28.822735, 30.523621>,  <31.925362, 28.754749, 30.567772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151257, 28.822735, 30.523621>,  <32.527748, 28.936045, 30.450033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151257, 28.822735, 30.523621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322242, 0.589851, -0.740430,
		0.101230, -0.756196, -0.646467,
		-0.941229, -0.283273, 0.183967,
		31.868887, 28.737753, 30.578812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191051, 28.675837, 29.823587>,  <32.527748, 28.936045, 30.450033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191051, 28.675837, 29.823587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913446, 28.830246, 30.066677>,  <31.746883, 28.922892, 30.212530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913446, 28.830246, 30.066677>,  <32.191051, 28.675837, 29.823587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913446, 28.830246, 30.066677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482909, 0.376475, -0.790611,
		-0.533988, -0.842171, -0.074864,
		-0.694014, 0.386025, 0.607725,
		31.705242, 28.946053, 30.248995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450119, 28.567301, 29.501785>,  <32.191051, 28.675837, 29.823587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450119, 28.567301, 29.501785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444534, 28.882076, 29.748535>,  <31.441183, 29.070942, 29.896585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444534, 28.882076, 29.748535>,  <31.450119, 28.567301, 29.501785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444534, 28.882076, 29.748535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509648, 0.525179, -0.681502,
		-0.860270, -0.323904, 0.393728,
		-0.013964, 0.786939, 0.616873,
		31.440346, 29.118158, 29.933598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904932, 28.780556, 29.271849>,  <31.450119, 28.567301, 29.501785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904932, 28.780556, 29.271849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082388, 29.071983, 29.480606>,  <31.188862, 29.246840, 29.605860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082388, 29.071983, 29.480606>,  <30.904932, 28.780556, 29.271849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082388, 29.071983, 29.480606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308754, 0.670936, -0.674178,
		-0.841341, 0.137955, 0.522602,
		0.443639, 0.728569, 0.521892,
		31.215479, 29.290554, 29.637175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.320570, 29.220751, 29.406387>,  <30.904932, 28.780556, 29.271849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.320570, 29.220751, 29.406387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671192, 29.411671, 29.431164>,  <30.881565, 29.526222, 29.446030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671192, 29.411671, 29.431164>,  <30.320570, 29.220751, 29.406387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671192, 29.411671, 29.431164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376533, 0.760203, -0.529447,
		-0.299795, 0.440765, 0.846079,
		0.876554, 0.477302, 0.061942,
		30.934158, 29.554861, 29.449747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175909, 29.988155, 29.389042>,  <30.320570, 29.220751, 29.406387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.175909, 29.988155, 29.389042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562498, 29.976185, 29.287033>,  <30.794451, 29.969004, 29.225828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562498, 29.976185, 29.287033>,  <30.175909, 29.988155, 29.389042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562498, 29.976185, 29.287033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139306, 0.773203, -0.618669,
		0.215697, 0.633452, 0.743111,
		0.966472, -0.029925, -0.255021,
		30.852440, 29.967207, 29.210527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.559872, 30.703890, 29.633980>,  <30.175909, 29.988155, 29.389042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.559872, 30.703890, 29.633980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779118, 30.532135, 29.346870>,  <30.910666, 30.429081, 29.174604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779118, 30.532135, 29.346870>,  <30.559872, 30.703890, 29.633980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.779118, 30.532135, 29.346870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073645, 0.879607, -0.469966,
		0.833155, 0.204735, 0.513748,
		0.548115, -0.429389, -0.717771,
		30.943552, 30.403318, 29.131538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938747, 31.223877, 29.495848>,  <30.559872, 30.703890, 29.633980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938747, 31.223877, 29.495848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989563, 30.956852, 29.202393>,  <31.020052, 30.796637, 29.026320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989563, 30.956852, 29.202393>,  <30.938747, 31.223877, 29.495848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989563, 30.956852, 29.202393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093591, 0.728262, -0.678877,
		0.987472, 0.154906, 0.030041,
		0.127040, -0.667561, -0.733637,
		31.027676, 30.756584, 28.982302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598774, 31.463085, 29.043047>,  <30.938747, 31.223877, 29.495848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598774, 31.463085, 29.043047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334919, 31.241169, 28.840233>,  <31.176605, 31.108019, 28.718544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334919, 31.241169, 28.840233>,  <31.598774, 31.463085, 29.043047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334919, 31.241169, 28.840233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110618, 0.738944, -0.664625,
		0.743411, -0.382314, -0.548795,
		-0.659624, -0.554796, -0.507048,
		31.137028, 31.074732, 28.688122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806587, 31.682140, 28.327871>,  <31.598774, 31.463085, 29.043047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806587, 31.682140, 28.327871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448763, 31.504055, 28.312122>,  <31.234068, 31.397203, 28.302673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448763, 31.504055, 28.312122>,  <31.806587, 31.682140, 28.327871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448763, 31.504055, 28.312122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339890, 0.734840, -0.586929,
		0.290238, -0.511661, -0.808681,
		-0.894560, -0.445211, -0.039370,
		31.180395, 31.370491, 28.300312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677481, 31.639465, 27.634447>,  <31.806587, 31.682140, 28.327871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.677481, 31.639465, 27.634447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.314386, 31.635849, 27.802223>,  <31.096529, 31.633680, 27.902889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.314386, 31.635849, 27.802223>,  <31.677481, 31.639465, 27.634447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.314386, 31.635849, 27.802223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353764, 0.553936, -0.753662,
		-0.225532, -0.832510, -0.506026,
		-0.907737, -0.009039, 0.419442,
		31.042065, 31.633137, 27.928057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233225, 31.629686, 27.076632>,  <31.677481, 31.639465, 27.634447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233225, 31.629686, 27.076632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983770, 31.720985, 27.375690>,  <30.834097, 31.775764, 27.555126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983770, 31.720985, 27.375690>,  <31.233225, 31.629686, 27.076632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983770, 31.720985, 27.375690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464939, 0.660563, -0.589482,
		-0.628419, -0.715233, -0.305828,
		-0.623636, 0.228250, 0.747650,
		30.796680, 31.789461, 27.599985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608206, 31.768925, 26.683933>,  <31.233225, 31.629686, 27.076632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608206, 31.768925, 26.683933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568359, 31.939728, 27.043430>,  <30.544451, 32.042210, 27.259129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568359, 31.939728, 27.043430>,  <30.608206, 31.768925, 26.683933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.568359, 31.939728, 27.043430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615925, 0.682929, -0.392740,
		-0.781481, -0.592683, 0.194972,
		-0.099618, 0.427007, 0.898744,
		30.538473, 32.067829, 27.313053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.921274, 31.932198, 26.688759>,  <30.608206, 31.768925, 26.683933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.921274, 31.932198, 26.688759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.081331, 32.165279, 26.971699>,  <30.177366, 32.305130, 27.141462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.081331, 32.165279, 26.971699>,  <29.921274, 31.932198, 26.688759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081331, 32.165279, 26.971699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569115, 0.762967, -0.306578,
		-0.718327, -0.279887, 0.636922,
		0.400143, 0.582705, 0.707348,
		30.201374, 32.340092, 27.183903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382187, 32.140404, 27.080191>,  <29.921274, 31.932198, 26.688759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382187, 32.140404, 27.080191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.671257, 32.412384, 27.129845>,  <29.844698, 32.575573, 27.159637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.671257, 32.412384, 27.129845>,  <29.382187, 32.140404, 27.080191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.671257, 32.412384, 27.129845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623055, 0.718597, -0.308903,
		-0.299242, 0.145893, 0.942958,
		0.722673, 0.679952, 0.124135,
		29.888060, 32.616371, 27.167086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.091825, 32.712894, 27.463284>,  <29.382187, 32.140404, 27.080191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.091825, 32.712894, 27.463284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.417223, 32.870525, 27.292202>,  <29.612461, 32.965103, 27.189552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.417223, 32.870525, 27.292202>,  <29.091825, 32.712894, 27.463284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.417223, 32.870525, 27.292202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514404, 0.830665, -0.213036,
		0.271327, 0.393316, 0.878456,
		0.813493, 0.394078, -0.427705,
		29.661270, 32.988750, 27.163891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224627, 33.475136, 27.674616>,  <29.091825, 32.712894, 27.463284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224627, 33.475136, 27.674616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422419, 33.419689, 27.331390>,  <29.541094, 33.386421, 27.125454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422419, 33.419689, 27.331390>,  <29.224627, 33.475136, 27.674616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422419, 33.419689, 27.331390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416733, 0.828530, -0.373996,
		0.762774, 0.542517, 0.351925,
		0.494479, -0.138616, -0.858065,
		29.570763, 33.378105, 27.073971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.206194, 34.107006, 27.488766>,  <29.224627, 33.475136, 27.674616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.206194, 34.107006, 27.488766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308187, 33.902584, 27.160423>,  <29.369383, 33.779930, 26.963417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308187, 33.902584, 27.160423>,  <29.206194, 34.107006, 27.488766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.308187, 33.902584, 27.160423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605711, 0.577302, -0.547573,
		0.753722, 0.636825, -0.162348,
		0.254985, -0.511054, -0.820857,
		29.384684, 33.749268, 26.914165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400558, 34.694611, 27.009098>,  <29.206194, 34.107006, 27.488766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400558, 34.694611, 27.009098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.319384, 34.363819, 26.799366>,  <29.270678, 34.165344, 26.673527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.319384, 34.363819, 26.799366>,  <29.400558, 34.694611, 27.009098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319384, 34.363819, 26.799366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364455, 0.560792, -0.743428,
		0.908839, 0.040224, -0.415204,
		-0.202940, -0.826979, -0.524329,
		29.258501, 34.115726, 26.642067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639433, 34.835991, 26.316271>,  <29.400558, 34.694611, 27.009098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639433, 34.835991, 26.316271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344482, 34.565807, 26.318661>,  <29.167513, 34.403698, 26.320095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344482, 34.565807, 26.318661>,  <29.639433, 34.835991, 26.316271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.344482, 34.565807, 26.318661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470286, 0.507013, -0.722336,
		0.484870, -0.535449, -0.691517,
		-0.737382, -0.675450, 0.005978,
		29.123270, 34.363171, 26.320452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.458843, 34.784954, 25.623016>,  <29.639433, 34.835991, 26.316271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.458843, 34.784954, 25.623016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.139311, 34.619144, 25.797390>,  <28.947592, 34.519661, 25.902014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.139311, 34.619144, 25.797390>,  <29.458843, 34.784954, 25.623016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.139311, 34.619144, 25.797390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591128, 0.406598, -0.696595,
		0.111501, -0.814157, -0.569838,
		-0.798833, -0.414519, 0.435935,
		28.899660, 34.494789, 25.928171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023273, 34.512661, 25.066935>,  <29.458843, 34.784954, 25.623016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.023273, 34.512661, 25.066935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.770939, 34.551064, 25.374916>,  <28.619537, 34.574104, 25.559706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.770939, 34.551064, 25.374916>,  <29.023273, 34.512661, 25.066935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.770939, 34.551064, 25.374916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746681, 0.194712, -0.636047,
		-0.210984, -0.976151, -0.051145,
		-0.630836, 0.096007, 0.769954,
		28.581688, 34.579865, 25.605902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462778, 34.057411, 24.899218>,  <29.023273, 34.512661, 25.066935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.462778, 34.057411, 24.899218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.305340, 34.292721, 25.181782>,  <28.210876, 34.433907, 25.351320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.305340, 34.292721, 25.181782>,  <28.462778, 34.057411, 24.899218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.305340, 34.292721, 25.181782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847677, 0.065082, -0.526505,
		-0.355705, -0.806036, 0.473053,
		-0.393596, 0.588277, 0.706409,
		28.187262, 34.469204, 25.393703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.761230, 33.787010, 25.171764>,  <28.462778, 34.057411, 24.899218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.761230, 33.787010, 25.171764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.798794, 34.185154, 25.180233>,  <27.821331, 34.424038, 25.185314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.798794, 34.185154, 25.180233>,  <27.761230, 33.787010, 25.171764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.798794, 34.185154, 25.180233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757892, 0.085262, -0.646784,
		-0.645586, 0.044693, 0.762379,
		0.093908, 0.995356, 0.021172,
		27.826965, 34.483761, 25.186584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.083542, 33.998363, 25.000561>,  <27.761230, 33.787010, 25.171764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.083542, 33.998363, 25.000561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258139, 34.357590, 24.978836>,  <27.362896, 34.573128, 24.965801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258139, 34.357590, 24.978836>,  <27.083542, 33.998363, 25.000561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258139, 34.357590, 24.978836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731697, 0.319204, -0.602269,
		-0.523542, 0.302626, 0.796443,
		0.436490, 0.898068, -0.054314,
		27.389086, 34.627010, 24.962542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.511688, 34.381962, 24.915653>,  <27.083542, 33.998363, 25.000561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.511688, 34.381962, 24.915653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.805567, 34.641609, 24.836796>,  <26.981894, 34.797398, 24.789482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.805567, 34.641609, 24.836796>,  <26.511688, 34.381962, 24.915653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.805567, 34.641609, 24.836796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602665, 0.491088, -0.628989,
		-0.311475, 0.580926, 0.752002,
		0.734696, 0.649120, -0.197142,
		27.025976, 34.836346, 24.777653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.213497, 35.047195, 24.954041>,  <26.511688, 34.381962, 24.915653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.213497, 35.047195, 24.954041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.537655, 35.060673, 24.720074>,  <26.732149, 35.068760, 24.579693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.537655, 35.060673, 24.720074>,  <26.213497, 35.047195, 24.954041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.537655, 35.060673, 24.720074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554267, 0.367622, -0.746754,
		0.189868, 0.929365, 0.316593,
		0.810393, 0.033692, -0.584916,
		26.780773, 35.070782, 24.544600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.278145, 35.704849, 24.728085>,  <26.213497, 35.047195, 24.954041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.278145, 35.704849, 24.728085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.467058, 35.461361, 24.473083>,  <26.580406, 35.315269, 24.320082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.467058, 35.461361, 24.473083>,  <26.278145, 35.704849, 24.728085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.467058, 35.461361, 24.473083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660811, 0.234125, -0.713102,
		0.583334, 0.758054, -0.291675,
		0.472281, -0.608719, -0.637504,
		26.608742, 35.278744, 24.281832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.362682, 36.114704, 24.129404>,  <26.278145, 35.704849, 24.728085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.362682, 36.114704, 24.129404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.368683, 35.724079, 24.043522>,  <26.372284, 35.489704, 23.991993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.368683, 35.724079, 24.043522>,  <26.362682, 36.114704, 24.129404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.368683, 35.724079, 24.043522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480359, 0.181287, -0.858132,
		0.876944, 0.116010, -0.466381,
		0.015003, -0.976564, -0.214705,
		26.373184, 35.431110, 23.979111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.759815, 36.069515, 23.535173>,  <26.362682, 36.114704, 24.129404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.759815, 36.069515, 23.535173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.464655, 35.806129, 23.594406>,  <26.287560, 35.648098, 23.629946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.464655, 35.806129, 23.594406>,  <26.759815, 36.069515, 23.535173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.464655, 35.806129, 23.594406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359715, 0.198058, -0.911799,
		0.571059, -0.726084, -0.383007,
		-0.737900, -0.658464, 0.148080,
		26.243284, 35.608589, 23.638830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.724943, 35.520481, 22.941902>,  <26.759815, 36.069515, 23.535173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.724943, 35.520481, 22.941902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.373472, 35.668633, 23.062397>,  <26.162590, 35.757523, 23.134695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.373472, 35.668633, 23.062397>,  <26.724943, 35.520481, 22.941902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.373472, 35.668633, 23.062397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219199, 0.247555, -0.943752,
		-0.424121, -0.895284, -0.136333,
		-0.878677, 0.370381, 0.301239,
		26.109869, 35.779747, 23.152769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.161386, 35.299747, 22.426600>,  <26.724943, 35.520481, 22.941902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.161386, 35.299747, 22.426600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020975, 35.620651, 22.619747>,  <25.936728, 35.813194, 22.735636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020975, 35.620651, 22.619747>,  <26.161386, 35.299747, 22.426600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.020975, 35.620651, 22.619747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578970, 0.219332, -0.785294,
		-0.735916, -0.555228, 0.387490,
		-0.351029, 0.802256, 0.482870,
		25.915667, 35.861328, 22.764608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.434361, 35.392887, 22.683867>,  <26.161386, 35.299747, 22.426600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.434361, 35.392887, 22.683867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.558920, 35.746616, 22.544727>,  <25.633656, 35.958855, 22.461245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.558920, 35.746616, 22.544727>,  <25.434361, 35.392887, 22.683867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.558920, 35.746616, 22.544727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646573, -0.071083, -0.759533,
		-0.696401, 0.461427, 0.549646,
		0.311398, 0.884326, -0.347848,
		25.652340, 36.011913, 22.440372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.876431, 35.859695, 22.597275>,  <25.434361, 35.392887, 22.683867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.876431, 35.859695, 22.597275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.155069, 36.003376, 22.348846>,  <25.322252, 36.089584, 22.199789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.155069, 36.003376, 22.348846>,  <24.876431, 35.859695, 22.597275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.155069, 36.003376, 22.348846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674354, 0.032258, -0.737703,
		-0.244952, 0.932701, 0.264703,
		0.696595, 0.359205, -0.621069,
		25.364048, 36.111137, 22.162525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.560736, 36.437714, 22.308207>,  <24.876431, 35.859695, 22.597275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.560736, 36.437714, 22.308207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.872314, 36.344845, 22.075195>,  <25.059261, 36.289124, 21.935389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.872314, 36.344845, 22.075195>,  <24.560736, 36.437714, 22.308207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.872314, 36.344845, 22.075195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556077, 0.173650, -0.812788,
		0.289859, 0.957049, 0.006161,
		0.778948, -0.232168, -0.582527,
		25.105999, 36.275196, 21.900436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.765474, 36.461575, 21.609880>,  <24.560736, 36.437714, 22.308207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.765474, 36.461575, 21.609880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.470951, 36.650269, 21.803917>,  <24.294237, 36.763485, 21.920340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.470951, 36.650269, 21.803917>,  <24.765474, 36.461575, 21.609880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.470951, 36.650269, 21.803917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009294, 0.723890, -0.689852,
		-0.676581, -0.503437, -0.537391,
		-0.736309, 0.471736, 0.485092,
		24.250059, 36.791790, 21.949444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.295479, 36.646088, 21.179243>,  <24.765474, 36.461575, 21.609880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.295479, 36.646088, 21.179243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.278368, 36.910671, 21.478748>,  <24.268101, 37.069420, 21.658451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.278368, 36.910671, 21.478748>,  <24.295479, 36.646088, 21.179243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.278368, 36.910671, 21.478748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092772, 0.748839, -0.656227,
		-0.994768, 0.041391, -0.093399,
		-0.042779, 0.661458, 0.748761,
		24.265533, 37.109108, 21.703377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.915285, 37.182411, 20.875296>,  <24.295479, 36.646088, 21.179243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.915285, 37.182411, 20.875296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.087687, 37.354267, 21.192696>,  <24.191128, 37.457382, 21.383137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.087687, 37.354267, 21.192696>,  <23.915285, 37.182411, 20.875296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.087687, 37.354267, 21.192696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047637, 0.867313, -0.495478,
		-0.901091, 0.251354, 0.353350,
		0.431006, 0.429638, 0.793502,
		24.216988, 37.483158, 21.430746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.647373, 37.820686, 20.877754>,  <23.915285, 37.182411, 20.875296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.647373, 37.820686, 20.877754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.963827, 37.889709, 21.112473>,  <24.153700, 37.931122, 21.253304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.963827, 37.889709, 21.112473>,  <23.647373, 37.820686, 20.877754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.963827, 37.889709, 21.112473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130673, 0.889546, -0.437759,
		-0.597518, 0.423005, 0.681204,
		0.791137, 0.172554, 0.586795,
		24.201168, 37.941475, 21.288511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.584906, 38.575871, 21.043465>,  <23.647373, 37.820686, 20.877754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.584906, 38.575871, 21.043465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.964314, 38.481434, 21.127907>,  <24.191959, 38.424770, 21.178572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.964314, 38.481434, 21.127907>,  <23.584906, 38.575871, 21.043465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.964314, 38.481434, 21.127907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300195, 0.882650, -0.361679,
		-0.100943, 0.406434, 0.908087,
		0.948522, -0.236094, 0.211106,
		24.248871, 38.410606, 21.191238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.988089, 39.025803, 21.397379>,  <23.584906, 38.575871, 21.043465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.988089, 39.025803, 21.397379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.259729, 38.840366, 21.169727>,  <24.422714, 38.729107, 21.033136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.259729, 38.840366, 21.169727>,  <23.988089, 39.025803, 21.397379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.259729, 38.840366, 21.169727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311800, 0.884089, -0.348091,
		0.664532, 0.058934, 0.744932,
		0.679100, -0.463587, -0.569130,
		24.463459, 38.701290, 20.998989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.584175, 39.420700, 21.515867>,  <23.988089, 39.025803, 21.397379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.584175, 39.420700, 21.515867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.685335, 39.218937, 21.185627>,  <24.746031, 39.097878, 20.987484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.685335, 39.218937, 21.185627>,  <24.584175, 39.420700, 21.515867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.685335, 39.218937, 21.185627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385981, 0.835091, -0.391971,
		0.887164, -0.219536, 0.405888,
		0.252902, -0.504407, -0.825599,
		24.761206, 39.067616, 20.937946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.072275, 39.664902, 21.401619>,  <24.584175, 39.420700, 21.515867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.072275, 39.664902, 21.401619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.025242, 39.487640, 21.046139>,  <24.997023, 39.381283, 20.832851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.025242, 39.487640, 21.046139>,  <25.072275, 39.664902, 21.401619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.025242, 39.487640, 21.046139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418479, 0.789456, -0.449037,
		0.900583, -0.424700, 0.092626,
		-0.117582, -0.443157, -0.888699,
		24.989967, 39.354694, 20.779530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.688538, 39.836380, 21.049480>,  <25.072275, 39.664902, 21.401619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.688538, 39.836380, 21.049480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.437744, 39.723431, 20.759056>,  <25.287270, 39.655663, 20.584803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.437744, 39.723431, 20.759056>,  <25.688538, 39.836380, 21.049480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.437744, 39.723431, 20.759056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393480, 0.689595, -0.607974,
		0.672356, -0.666880, -0.321261,
		-0.626986, -0.282365, -0.726057,
		25.249649, 39.638721, 20.541239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.050707, 39.760544, 20.480331>,  <25.688538, 39.836380, 21.049480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.050707, 39.760544, 20.480331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684422, 39.814777, 20.329025>,  <25.464651, 39.847317, 20.238241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684422, 39.814777, 20.329025>,  <26.050707, 39.760544, 20.480331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.684422, 39.814777, 20.329025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353933, 0.717860, -0.599507,
		0.190261, -0.682858, -0.705341,
		-0.915714, 0.135581, -0.378267,
		25.409708, 39.855453, 20.215546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.116428, 39.915188, 19.766047>,  <26.050707, 39.760544, 20.480331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.116428, 39.915188, 19.766047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.755512, 40.078636, 19.821041>,  <25.538963, 40.176704, 19.854038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.755512, 40.078636, 19.821041>,  <26.116428, 39.915188, 19.766047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.755512, 40.078636, 19.821041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331532, 0.861478, -0.384632,
		-0.275613, -0.301467, -0.912773,
		-0.902288, 0.408624, 0.137489,
		25.484825, 40.201221, 19.862288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.926294, 40.068455, 19.125269>,  <26.116428, 39.915188, 19.766047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.926294, 40.068455, 19.125269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.735226, 40.286125, 19.401154>,  <25.620584, 40.416729, 19.566685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.735226, 40.286125, 19.401154>,  <25.926294, 40.068455, 19.125269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.735226, 40.286125, 19.401154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285483, 0.838607, -0.463937,
		-0.830861, -0.024709, -0.555932,
		-0.477672, 0.544176, 0.689712,
		25.591925, 40.449379, 19.608067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.707127, 40.647343, 18.727417>,  <25.926294, 40.068455, 19.125269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.707127, 40.647343, 18.727417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.647295, 40.791397, 19.095749>,  <25.611397, 40.877831, 19.316748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.647295, 40.791397, 19.095749>,  <25.707127, 40.647343, 18.727417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.647295, 40.791397, 19.095749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262927, 0.912265, -0.314073,
		-0.953150, 0.195133, -0.231145,
		-0.149580, 0.360133, 0.920831,
		25.602421, 40.899437, 19.371998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.286953, 41.192215, 18.582657>,  <25.707127, 40.647343, 18.727417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.286953, 41.192215, 18.582657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.490227, 41.247684, 18.922661>,  <25.612190, 41.280964, 19.126663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.490227, 41.247684, 18.922661>,  <25.286953, 41.192215, 18.582657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.490227, 41.247684, 18.922661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411354, 0.828020, -0.381013,
		-0.756662, 0.543280, 0.363743,
		0.508184, 0.138671, 0.850012,
		25.642681, 41.289288, 19.177664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.245579, 41.856972, 18.698444>,  <25.286953, 41.192215, 18.582657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.245579, 41.856972, 18.698444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.538771, 41.765491, 18.954708>,  <25.714685, 41.710606, 19.108465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.538771, 41.765491, 18.954708>,  <25.245579, 41.856972, 18.698444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.538771, 41.765491, 18.954708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387681, 0.914318, -0.117161,
		-0.558970, 0.334247, 0.758836,
		0.732978, -0.228696, 0.640657,
		25.758663, 41.696884, 19.146906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.298830, 42.482430, 19.225798>,  <25.245579, 41.856972, 18.698444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.298830, 42.482430, 19.225798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.640078, 42.273766, 19.222778>,  <25.844826, 42.148567, 19.220966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.640078, 42.273766, 19.222778>,  <25.298830, 42.482430, 19.225798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.640078, 42.273766, 19.222778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519090, 0.850187, -0.087911,
		0.052276, 0.071080, 0.996100,
		0.853119, -0.521661, -0.007548,
		25.896013, 42.117268, 19.220514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.712608, 42.765919, 19.754671>,  <25.298830, 42.482430, 19.225798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.712608, 42.765919, 19.754671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.975006, 42.553600, 19.540035>,  <26.132444, 42.426208, 19.411255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.975006, 42.553600, 19.540035>,  <25.712608, 42.765919, 19.754671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.975006, 42.553600, 19.540035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637928, 0.769879, 0.018309,
		0.403389, -0.354315, 0.843646,
		0.655992, -0.530799, -0.536587,
		26.171804, 42.394360, 19.379059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.450666, 42.911663, 20.058897>,  <25.712608, 42.765919, 19.754671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.450666, 42.911663, 20.058897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500252, 42.774727, 19.686352>,  <26.530003, 42.692566, 19.462826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500252, 42.774727, 19.686352>,  <26.450666, 42.911663, 20.058897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.500252, 42.774727, 19.686352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620750, 0.759017, -0.196374,
		0.774146, -0.553801, 0.306598,
		0.123961, -0.342343, -0.931362,
		26.537439, 42.672024, 19.406942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.942791, 43.207348, 19.822155>,  <26.450666, 42.911663, 20.058897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.942791, 43.207348, 19.822155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.846125, 43.057171, 19.464241>,  <26.788124, 42.967064, 19.249493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.846125, 43.057171, 19.464241>,  <26.942791, 43.207348, 19.822155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.846125, 43.057171, 19.464241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470489, 0.761140, -0.446436,
		0.848668, -0.528876, -0.007303,
		-0.241668, -0.375440, -0.894786,
		26.773624, 42.944538, 19.195805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.534006, 43.241081, 19.449577>,  <26.942791, 43.207348, 19.822155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.534006, 43.241081, 19.449577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.221115, 43.246372, 19.200436>,  <27.033381, 43.249546, 19.050951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.221115, 43.246372, 19.200436>,  <27.534006, 43.241081, 19.449577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.221115, 43.246372, 19.200436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356597, 0.829304, -0.430226,
		0.510842, -0.558642, -0.653422,
		-0.782227, 0.013231, -0.622853,
		26.986446, 43.250343, 19.013580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828138, 43.481892, 18.948727>,  <27.534006, 43.241081, 19.449577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828138, 43.481892, 18.948727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.462841, 43.536961, 18.795345>,  <27.243664, 43.570004, 18.703318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.462841, 43.536961, 18.795345>,  <27.828138, 43.481892, 18.948727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.462841, 43.536961, 18.795345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282074, 0.892780, -0.351253,
		0.293979, -0.428941, -0.854158,
		-0.913242, 0.137674, -0.383452,
		27.188869, 43.578262, 18.680309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.735157, 43.608974, 18.164930>,  <27.828138, 43.481892, 18.948727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.735157, 43.608974, 18.164930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.434725, 43.797657, 18.349701>,  <27.254465, 43.910866, 18.460564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.434725, 43.797657, 18.349701>,  <27.735157, 43.608974, 18.164930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.434725, 43.797657, 18.349701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299264, 0.866900, -0.398655,
		-0.588489, -0.161185, -0.792275,
		-0.751080, 0.471703, 0.461925,
		27.209400, 43.939167, 18.488277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440535, 44.230217, 17.725538>,  <27.735157, 43.608974, 18.164930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.440535, 44.230217, 17.725538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337822, 44.336071, 18.097351>,  <27.276194, 44.399586, 18.320438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337822, 44.336071, 18.097351>,  <27.440535, 44.230217, 17.725538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337822, 44.336071, 18.097351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104919, 0.948464, -0.299012,
		-0.960757, -0.174307, -0.215783,
		-0.256783, 0.264638, 0.929531,
		27.260788, 44.415462, 18.376211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.954657, 44.763199, 17.689110>,  <27.440535, 44.230217, 17.725538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.954657, 44.763199, 17.689110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162491, 44.789486, 18.029865>,  <27.287191, 44.805256, 18.234318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162491, 44.789486, 18.029865>,  <26.954657, 44.763199, 17.689110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.162491, 44.789486, 18.029865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277161, 0.930160, -0.240800,
		-0.808214, 0.361227, 0.465086,
		0.519587, 0.065715, 0.851887,
		27.318367, 44.809200, 18.285431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.637495, 45.264347, 18.169979>,  <26.954657, 44.763199, 17.689110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.637495, 45.264347, 18.169979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.035334, 45.224613, 18.157909>,  <27.274036, 45.200775, 18.150667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.035334, 45.224613, 18.157909>,  <26.637495, 45.264347, 18.169979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.035334, 45.224613, 18.157909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086188, 0.952100, -0.293390,
		0.057870, 0.289204, 0.955517,
		0.994597, -0.099332, -0.030172,
		27.333714, 45.194813, 18.148857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.798948, 45.096931, 18.952530>,  <26.637495, 45.264347, 18.169979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.798948, 45.096931, 18.952530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.964514, 44.941509, 19.281818>,  <27.063852, 44.848255, 19.479391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.964514, 44.941509, 19.281818>,  <26.798948, 45.096931, 18.952530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.964514, 44.941509, 19.281818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897669, -0.324441, 0.298209,
		0.151216, -0.862415, -0.483088,
		0.413914, -0.388559, 0.823223,
		27.088688, 44.824940, 19.528786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.749023, 44.322735, 18.946426>,  <26.798948, 45.096931, 18.952530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.749023, 44.322735, 18.946426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.723577, 44.546719, 19.276855>,  <26.708309, 44.681110, 19.475113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.723577, 44.546719, 19.276855>,  <26.749023, 44.322735, 18.946426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.723577, 44.546719, 19.276855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856803, -0.455068, 0.242492,
		0.511705, -0.692355, 0.508726,
		-0.063614, 0.559962, 0.826072,
		26.704493, 44.714706, 19.524677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.497459, 43.878834, 19.562082>,  <26.749023, 44.322735, 18.946426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.497459, 43.878834, 19.562082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.439619, 44.264027, 19.653088>,  <26.404915, 44.495140, 19.707691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.439619, 44.264027, 19.653088>,  <26.497459, 43.878834, 19.562082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.439619, 44.264027, 19.653088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959659, -0.192517, 0.204917,
		0.241131, -0.188705, 0.951970,
		-0.144601, 0.962979, 0.227514,
		26.396238, 44.552921, 19.721342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.399281, 44.037346, 20.220638>,  <26.497459, 43.878834, 19.562082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.399281, 44.037346, 20.220638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.180746, 44.313442, 20.030865>,  <26.049625, 44.479099, 19.917002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.180746, 44.313442, 20.030865>,  <26.399281, 44.037346, 20.220638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.180746, 44.313442, 20.030865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835962, -0.484402, 0.257920,
		-0.051790, 0.537519, 0.841660,
		-0.546338, 0.690238, -0.474432,
		26.016844, 44.520515, 19.888535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.938194, 44.242924, 20.701967>,  <26.399281, 44.037346, 20.220638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.938194, 44.242924, 20.701967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789614, 44.275906, 20.332054>,  <25.700466, 44.295692, 20.110106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789614, 44.275906, 20.332054>,  <25.938194, 44.242924, 20.701967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.789614, 44.275906, 20.332054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831854, -0.471939, 0.292048,
		-0.412361, 0.877767, 0.243891,
		-0.371452, 0.082453, -0.924784,
		25.678179, 44.300640, 20.054619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.228092, 44.542709, 20.835377>,  <25.938194, 44.242924, 20.701967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.228092, 44.542709, 20.835377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.307896, 44.307323, 20.521969>,  <25.355778, 44.166092, 20.333923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.307896, 44.307323, 20.521969>,  <25.228092, 44.542709, 20.835377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.307896, 44.307323, 20.521969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647657, -0.679234, 0.345227,
		-0.735348, 0.438577, -0.516637,
		0.199509, -0.588466, -0.783521,
		25.367748, 44.130783, 20.286913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.589151, 44.272396, 20.548395>,  <25.228092, 44.542709, 20.835377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.589151, 44.272396, 20.548395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.885735, 44.021374, 20.453392>,  <25.063684, 43.870758, 20.396391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.885735, 44.021374, 20.453392>,  <24.589151, 44.272396, 20.548395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.885735, 44.021374, 20.453392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546312, -0.770111, 0.329352,
		-0.389594, -0.114448, -0.913848,
		0.741458, -0.627559, -0.237506,
		25.108171, 43.833107, 20.382139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.383160, 43.666393, 20.172039>,  <24.589151, 44.272396, 20.548395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.383160, 43.666393, 20.172039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.693720, 43.561901, 20.401459>,  <24.880056, 43.499207, 20.539110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.693720, 43.561901, 20.401459>,  <24.383160, 43.666393, 20.172039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.693720, 43.561901, 20.401459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533531, -0.756853, 0.377516,
		0.335476, -0.599111, -0.726995,
		0.776402, -0.261227, 0.573551,
		24.926640, 43.483532, 20.573524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.589451, 42.936081, 19.945345>,  <24.383160, 43.666393, 20.172039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.589451, 42.936081, 19.945345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.673286, 43.034046, 20.323994>,  <24.723587, 43.092827, 20.551182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.673286, 43.034046, 20.323994>,  <24.589451, 42.936081, 19.945345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.673286, 43.034046, 20.323994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585903, -0.743613, 0.322113,
		0.782809, -0.622139, -0.012357,
		0.209588, 0.244914, 0.946621,
		24.736162, 43.107521, 20.607981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.746408, 42.334816, 20.244728>,  <24.589451, 42.936081, 19.945345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.746408, 42.334816, 20.244728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.666416, 42.574936, 20.554478>,  <24.618422, 42.719006, 20.740328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.666416, 42.574936, 20.554478>,  <24.746408, 42.334816, 20.244728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.666416, 42.574936, 20.554478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758590, -0.595069, 0.265395,
		0.620120, -0.534357, 0.574381,
		-0.199980, 0.600297, 0.774372,
		24.606422, 42.755024, 20.786789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.758293, 41.867191, 20.777945>,  <24.746408, 42.334816, 20.244728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.758293, 41.867191, 20.777945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.553637, 42.184307, 20.910431>,  <24.430841, 42.374577, 20.989923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.553637, 42.184307, 20.910431>,  <24.758293, 41.867191, 20.777945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.553637, 42.184307, 20.910431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670833, -0.609464, 0.422536,
		0.536847, -0.006002, 0.843658,
		-0.511643, 0.792791, 0.331216,
		24.400143, 42.422146, 21.009796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.655844, 41.805950, 21.459936>,  <24.758293, 41.867191, 20.777945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.655844, 41.805950, 21.459936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.368261, 42.068504, 21.368496>,  <24.195711, 42.226036, 21.313633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.368261, 42.068504, 21.368496>,  <24.655844, 41.805950, 21.459936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.368261, 42.068504, 21.368496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636212, -0.489042, 0.596718,
		0.279882, 0.574452, 0.769201,
		-0.718958, 0.656386, -0.228599,
		24.152575, 42.265419, 21.299915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.412231, 42.064133, 22.095884>,  <24.655844, 41.805950, 21.459936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.412231, 42.064133, 22.095884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.117767, 42.109325, 21.828960>,  <23.941090, 42.136440, 21.668806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.117767, 42.109325, 21.828960>,  <24.412231, 42.064133, 22.095884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.117767, 42.109325, 21.828960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648608, -0.399407, 0.647905,
		-0.193329, 0.909785, 0.367307,
		-0.736160, 0.112979, -0.667311,
		23.896919, 42.143219, 21.628767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.765072, 42.125099, 22.433674>,  <24.412231, 42.064133, 22.095884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.765072, 42.125099, 22.433674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.649351, 42.048538, 22.058510>,  <23.579920, 42.002602, 21.833412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.649351, 42.048538, 22.058510>,  <23.765072, 42.125099, 22.433674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.649351, 42.048538, 22.058510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744681, -0.570641, 0.346150,
		-0.601462, 0.798584, 0.022556,
		-0.289301, -0.191399, -0.937908,
		23.562561, 41.991119, 21.777138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.003483, 42.111233, 22.430140>,  <23.765072, 42.125099, 22.433674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.003483, 42.111233, 22.430140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.114557, 41.894379, 22.112907>,  <23.181202, 41.764267, 21.922567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.114557, 41.894379, 22.112907>,  <23.003483, 42.111233, 22.430140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.114557, 41.894379, 22.112907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614887, -0.734591, 0.286864,
		-0.738112, 0.408002, -0.537331,
		0.277677, -0.542135, -0.793085,
		23.197863, 41.731735, 21.874983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.291765, 41.767365, 22.051125>,  <23.003483, 42.111233, 22.430140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.291765, 41.767365, 22.051125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.601482, 41.564205, 21.900120>,  <22.787312, 41.442310, 21.809517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.601482, 41.564205, 21.900120>,  <22.291765, 41.767365, 22.051125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.601482, 41.564205, 21.900120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540330, -0.841128, 0.023393,
		-0.329419, 0.185869, -0.925708,
		0.774292, -0.507894, -0.377514,
		22.833771, 41.411839, 21.786865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.984909, 41.222473, 21.589312>,  <22.291765, 41.767365, 22.051125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.984909, 41.222473, 21.589312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.348139, 41.086521, 21.687195>,  <22.566076, 41.004948, 21.745924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.348139, 41.086521, 21.687195>,  <21.984909, 41.222473, 21.589312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.348139, 41.086521, 21.687195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356619, -0.933881, 0.026265,
		0.219600, -0.111118, -0.969241,
		0.908074, -0.339882, 0.244707,
		22.620562, 40.984558, 21.760607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.075508, 40.691448, 21.077955>,  <21.984909, 41.222473, 21.589312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.075508, 40.691448, 21.077955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.329847, 40.610195, 21.375797>,  <22.482450, 40.561443, 21.554502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.329847, 40.610195, 21.375797>,  <22.075508, 40.691448, 21.077955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.329847, 40.610195, 21.375797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151886, -0.978812, -0.137323,
		0.756721, -0.025778, -0.653229,
		0.635849, -0.203131, 0.744603,
		22.520601, 40.549255, 21.599178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.609770, 40.160278, 20.860971>,  <22.075508, 40.691448, 21.077955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.609770, 40.160278, 20.860971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.597157, 40.153736, 21.260719>,  <22.589588, 40.149811, 21.500568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.597157, 40.153736, 21.260719>,  <22.609770, 40.160278, 20.860971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.597157, 40.153736, 21.260719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023457, -0.999579, -0.017096,
		0.999227, -0.023982, 0.031137,
		-0.031534, -0.016352, 0.999369,
		22.587696, 40.148830, 21.560530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.047796, 39.576897, 21.039614>,  <22.609770, 40.160278, 20.860971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.047796, 39.576897, 21.039614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.869194, 39.663425, 21.386909>,  <22.762033, 39.715343, 21.595287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.869194, 39.663425, 21.386909>,  <23.047796, 39.576897, 21.039614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.869194, 39.663425, 21.386909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110577, -0.976238, 0.186363,
		0.887922, -0.012795, 0.459816,
		-0.446506, 0.216321, 0.868238,
		22.735243, 39.728321, 21.647381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.279726, 39.073364, 21.475857>,  <23.047796, 39.576897, 21.039614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.279726, 39.073364, 21.475857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.950249, 39.217335, 21.651119>,  <22.752562, 39.303719, 21.756277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.950249, 39.217335, 21.651119>,  <23.279726, 39.073364, 21.475857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.950249, 39.217335, 21.651119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195660, -0.905667, 0.376145,
		0.532207, 0.224099, 0.816416,
		-0.823695, 0.359927, 0.438155,
		22.703140, 39.325314, 21.782566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.333761, 38.876610, 22.144665>,  <23.279726, 39.073364, 21.475857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.333761, 38.876610, 22.144665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.942806, 38.924942, 22.075249>,  <22.708233, 38.953941, 22.033598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.942806, 38.924942, 22.075249>,  <23.333761, 38.876610, 22.144665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.942806, 38.924942, 22.075249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197352, -0.815981, 0.543348,
		-0.075955, 0.565310, 0.821374,
		-0.977386, 0.120830, -0.173542,
		22.649590, 38.961189, 22.023186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.933975, 38.708778, 22.781435>,  <23.333761, 38.876610, 22.144665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.933975, 38.708778, 22.781435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.650093, 38.638237, 22.508606>,  <22.479763, 38.595913, 22.344910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.650093, 38.638237, 22.508606>,  <22.933975, 38.708778, 22.781435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.650093, 38.638237, 22.508606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393129, -0.704271, 0.591145,
		-0.584610, 0.687680, 0.430496,
		-0.709705, -0.176349, -0.682071,
		22.437181, 38.585331, 22.303986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.285967, 38.730869, 23.132244>,  <22.933975, 38.708778, 22.781435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.285967, 38.730869, 23.132244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.184221, 38.559898, 22.785233>,  <22.123175, 38.457317, 22.577026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.184221, 38.559898, 22.785233>,  <22.285967, 38.730869, 23.132244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.184221, 38.559898, 22.785233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601142, -0.632809, 0.488038,
		-0.757580, 0.645647, -0.095979,
		-0.254364, -0.427424, -0.867529,
		22.107912, 38.431671, 22.524973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.564402, 38.596886, 23.165539>,  <22.285967, 38.730869, 23.132244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.564402, 38.596886, 23.165539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.716845, 38.358112, 22.883141>,  <21.808311, 38.214848, 22.713701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.716845, 38.358112, 22.883141>,  <21.564402, 38.596886, 23.165539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.716845, 38.358112, 22.883141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411362, -0.793359, 0.448736,
		-0.827973, 0.119404, -0.547909,
		0.381107, -0.596929, -0.705997,
		21.831177, 38.179035, 22.671341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.023174, 38.088959, 22.971289>,  <21.564402, 38.596886, 23.165539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.023174, 38.088959, 22.971289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.385094, 37.946526, 22.877865>,  <21.602245, 37.861065, 22.821812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.385094, 37.946526, 22.877865>,  <21.023174, 38.088959, 22.971289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.385094, 37.946526, 22.877865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161705, -0.794667, 0.585112,
		-0.393948, -0.491640, -0.776592,
		0.904796, -0.356082, -0.233557,
		21.656532, 37.839703, 22.807798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.506334, 37.507938, 22.766445>,  <21.023174, 38.088959, 22.971289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.506334, 37.507938, 22.766445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.420322, 37.722725, 22.440151>,  <20.368715, 37.851597, 22.244375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.420322, 37.722725, 22.440151>,  <20.506334, 37.507938, 22.766445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.420322, 37.722725, 22.440151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950993, -0.305178, 0.049798,
		-0.222205, 0.786467, 0.576276,
		-0.215031, 0.536969, -0.815737,
		20.355814, 37.883816, 22.195431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.937136, 37.958534, 22.783533>,  <20.506334, 37.507938, 22.766445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.937136, 37.958534, 22.783533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.844883, 38.100948, 23.145760>,  <19.789532, 38.186398, 23.363096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.844883, 38.100948, 23.145760>,  <19.937136, 37.958534, 22.783533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.844883, 38.100948, 23.145760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928634, -0.358478, -0.095566,
		0.290602, -0.862980, 0.413299,
		-0.230630, 0.356032, 0.905567,
		19.775694, 38.207760, 23.417429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.695721, 37.391994, 23.322624>,  <19.937136, 37.958534, 22.783533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.695721, 37.391994, 23.322624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.527729, 37.751759, 23.371090>,  <19.426933, 37.967617, 23.400169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.527729, 37.751759, 23.371090>,  <19.695721, 37.391994, 23.322624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.527729, 37.751759, 23.371090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900957, -0.397162, -0.174753,
		-0.109052, -0.182557, 0.977129,
		-0.419981, 0.899408, 0.121165,
		19.401735, 38.021580, 23.407440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.200329, 37.230724, 23.770710>,  <19.695721, 37.391994, 23.322624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.200329, 37.230724, 23.770710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.107327, 37.533180, 23.526024>,  <19.051525, 37.714653, 23.379213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.107327, 37.533180, 23.526024>,  <19.200329, 37.230724, 23.770710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.107327, 37.533180, 23.526024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797936, -0.507909, -0.324540,
		-0.556093, 0.412652, 0.721442,
		-0.232505, 0.756139, -0.611715,
		19.037575, 37.760021, 23.342510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.552977, 37.352268, 23.900320>,  <19.200329, 37.230724, 23.770710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.552977, 37.352268, 23.900320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.570744, 37.477623, 23.520885>,  <18.581404, 37.552837, 23.293224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.570744, 37.477623, 23.520885>,  <18.552977, 37.352268, 23.900320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.570744, 37.477623, 23.520885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962534, -0.240820, -0.124634,
		-0.267498, 0.918582, 0.290952,
		0.044420, 0.313391, -0.948585,
		18.584070, 37.571640, 23.236309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.002005, 38.022026, 23.768824>,  <18.552977, 37.352268, 23.900320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.002005, 38.022026, 23.768824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.097868, 37.744896, 23.496777>,  <18.155386, 37.578617, 23.333549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.097868, 37.744896, 23.496777>,  <18.002005, 38.022026, 23.768824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.097868, 37.744896, 23.496777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931641, -0.361210, 0.039669,
		-0.273149, 0.624117, -0.732030,
		0.239658, -0.692824, -0.680117,
		18.169765, 37.537048, 23.292742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.547873, 26.657761, 27.275097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.946871, 26.686058, 27.274979>,  <32.186268, 26.703037, 27.274908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.946871, 26.686058, 27.274979>,  <31.547873, 26.657761, 27.275097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946871, 26.686058, 27.274979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046754, 0.656082, -0.753240,
		-0.053093, 0.751367, 0.657745,
		0.997495, 0.070744, -0.000296,
		32.246120, 26.707281, 27.274889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764030, 27.263866, 27.416082>,  <31.547873, 26.657761, 27.275097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764030, 27.263866, 27.416082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.076778, 27.105595, 27.223366>,  <32.264427, 27.010632, 27.107737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.076778, 27.105595, 27.223366>,  <31.764030, 27.263866, 27.416082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076778, 27.105595, 27.223366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029041, 0.748834, -0.662121,
		0.622768, 0.531683, 0.573998,
		0.781868, -0.395678, -0.481790,
		32.311340, 26.986891, 27.078829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171543, 27.858521, 27.245159>,  <31.764030, 27.263866, 27.416082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171543, 27.858521, 27.245159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.294415, 27.572483, 26.993992>,  <32.368137, 27.400860, 26.843290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.294415, 27.572483, 26.993992>,  <32.171543, 27.858521, 27.245159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294415, 27.572483, 26.993992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020782, 0.654623, -0.755670,
		0.951426, 0.245173, 0.186223,
		0.307175, -0.715094, -0.627921,
		32.386566, 27.357954, 26.805616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745670, 28.157539, 26.949923>,  <32.171543, 27.858521, 27.245159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745670, 28.157539, 26.949923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.620384, 27.875347, 26.695618>,  <32.545212, 27.706032, 26.543036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.620384, 27.875347, 26.695618>,  <32.745670, 28.157539, 26.949923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620384, 27.875347, 26.695618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020220, 0.664340, -0.747157,
		0.949466, -0.246879, -0.193819,
		-0.313219, -0.705480, -0.635760,
		32.526417, 27.663704, 26.504890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198761, 28.129467, 26.368290>,  <32.745670, 28.157539, 26.949923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198761, 28.129467, 26.368290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.861832, 27.962212, 26.232262>,  <32.659672, 27.861858, 26.150646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.861832, 27.962212, 26.232262>,  <33.198761, 28.129467, 26.368290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861832, 27.962212, 26.232262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016977, 0.610064, -0.792170,
		0.538701, -0.673039, -0.506774,
		-0.842326, -0.418139, -0.340068,
		32.609135, 27.836769, 26.130241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426834, 28.023849, 25.659752>,  <33.198761, 28.129467, 26.368290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426834, 28.023849, 25.659752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.030602, 27.971146, 25.644840>,  <32.792862, 27.939524, 25.635893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.030602, 27.971146, 25.644840>,  <33.426834, 28.023849, 25.659752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030602, 27.971146, 25.644840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016820, 0.387256, -0.921819,
		0.135896, -0.912509, -0.385824,
		-0.990581, -0.131761, -0.037278,
		32.733429, 27.931618, 25.633657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234520, 27.751247, 24.999670>,  <33.426834, 28.023849, 25.659752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234520, 27.751247, 24.999670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.886402, 27.905495, 25.122234>,  <32.677532, 27.998043, 25.195772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.886402, 27.905495, 25.122234>,  <33.234520, 27.751247, 24.999670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886402, 27.905495, 25.122234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142997, 0.397490, -0.906396,
		-0.471316, -0.832647, -0.290791,
		-0.870295, 0.385617, 0.306410,
		32.625313, 28.021179, 25.214157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790306, 27.725077, 24.459949>,  <33.234520, 27.751247, 24.999670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790306, 27.725077, 24.459949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.594437, 27.986164, 24.691181>,  <32.476913, 28.142817, 24.829920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.594437, 27.986164, 24.691181>,  <32.790306, 27.725077, 24.459949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594437, 27.986164, 24.691181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195231, 0.564093, -0.802299,
		-0.849765, -0.505727, -0.148793,
		-0.489677, 0.652717, 0.578080,
		32.447533, 28.181980, 24.864605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294819, 27.971268, 24.005520>,  <32.790306, 27.725077, 24.459949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294819, 27.971268, 24.005520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.298843, 28.256554, 24.285870>,  <32.301258, 28.427725, 24.454079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.298843, 28.256554, 24.285870>,  <32.294819, 27.971268, 24.005520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298843, 28.256554, 24.285870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017565, 0.700928, -0.713016,
		-0.999795, -0.005135, 0.019582,
		0.010064, 0.713213, 0.700875,
		32.301861, 28.470518, 24.496132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797741, 28.390047, 23.705631>,  <32.294819, 27.971268, 24.005520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797741, 28.390047, 23.705631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.924067, 28.612411, 24.013195>,  <31.999863, 28.745831, 24.197733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.924067, 28.612411, 24.013195>,  <31.797741, 28.390047, 23.705631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924067, 28.612411, 24.013195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502628, 0.785357, -0.361358,
		-0.804753, -0.272354, 0.527443,
		0.315814, 0.555911, 0.768911,
		32.018810, 28.779184, 24.243868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168886, 28.786325, 24.078821>,  <31.797741, 28.390047, 23.705631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168886, 28.786325, 24.078821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.518023, 28.974709, 24.129963>,  <31.727505, 29.087738, 24.160648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.518023, 28.974709, 24.129963>,  <31.168886, 28.786325, 24.078821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518023, 28.974709, 24.129963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389217, 0.829874, -0.399775,
		-0.294381, 0.299177, 0.907653,
		0.872840, 0.470960, 0.127854,
		31.779875, 29.115997, 24.168320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023466, 29.384609, 24.377893>,  <31.168886, 28.786325, 24.078821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023466, 29.384609, 24.377893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.384029, 29.498131, 24.247097>,  <31.600367, 29.566244, 24.168619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.384029, 29.498131, 24.247097>,  <31.023466, 29.384609, 24.377893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384029, 29.498131, 24.247097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365520, 0.903609, -0.223350,
		0.232082, 0.320850, 0.918256,
		0.901406, 0.283806, -0.326989,
		31.654451, 29.583273, 24.149000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197014, 30.024014, 24.608244>,  <31.023466, 29.384609, 24.377893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197014, 30.024014, 24.608244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.415956, 29.982040, 24.276127>,  <31.547323, 29.956858, 24.076857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.415956, 29.982040, 24.276127>,  <31.197014, 30.024014, 24.608244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415956, 29.982040, 24.276127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304267, 0.899267, -0.314231,
		0.779629, 0.424628, 0.460293,
		0.547357, -0.104932, -0.830295,
		31.580164, 29.950562, 24.027039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558231, 30.711384, 24.566505>,  <31.197014, 30.024014, 24.608244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558231, 30.711384, 24.566505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.586519, 30.537193, 24.207539>,  <31.603493, 30.432678, 23.992159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.586519, 30.537193, 24.207539>,  <31.558231, 30.711384, 24.566505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586519, 30.537193, 24.207539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303579, 0.847596, -0.435225,
		0.950178, 0.303216, -0.072260,
		0.070720, -0.435478, -0.897417,
		31.607735, 30.406549, 23.938313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948879, 31.153603, 24.083015>,  <31.558231, 30.711384, 24.566505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948879, 31.153603, 24.083015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.725838, 30.912811, 23.854385>,  <31.592012, 30.768335, 23.717207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.725838, 30.912811, 23.854385>,  <31.948879, 31.153603, 24.083015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725838, 30.912811, 23.854385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269163, 0.782471, -0.561508,
		0.785245, -0.159266, -0.598352,
		-0.557621, -0.601975, -0.571563,
		31.558556, 30.732218, 23.682913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029568, 31.408892, 23.400951>,  <31.948879, 31.153603, 24.083015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029568, 31.408892, 23.400951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.716505, 31.163631, 23.358063>,  <31.528667, 31.016476, 23.332329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.716505, 31.163631, 23.358063>,  <32.029568, 31.408892, 23.400951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716505, 31.163631, 23.358063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403616, 0.631045, -0.662477,
		0.473859, -0.475216, -0.741369,
		-0.782657, -0.613149, -0.107222,
		31.481709, 30.979687, 23.325895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831949, 31.539627, 22.782085>,  <32.029568, 31.408892, 23.400951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831949, 31.539627, 22.782085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.508108, 31.360188, 22.933506>,  <31.313803, 31.252523, 23.024359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.508108, 31.360188, 22.933506>,  <31.831949, 31.539627, 22.782085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508108, 31.360188, 22.933506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586480, 0.591691, -0.553120,
		0.024144, -0.669821, -0.742130,
		-0.809604, -0.448599, 0.378551,
		31.265226, 31.225607, 23.047071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261703, 31.447355, 22.220352>,  <31.831949, 31.539627, 22.782085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261703, 31.447355, 22.220352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.095207, 31.480595, 22.582531>,  <30.995310, 31.500538, 22.799839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.095207, 31.480595, 22.582531>,  <31.261703, 31.447355, 22.220352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095207, 31.480595, 22.582531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765135, 0.505987, -0.398177,
		-0.491234, -0.858529, -0.147030,
		-0.416241, 0.083101, 0.905449,
		30.970335, 31.505526, 22.854166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471312, 31.272583, 22.086765>,  <31.261703, 31.447355, 22.220352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471312, 31.272583, 22.086765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.500725, 31.463997, 22.436760>,  <30.518373, 31.578844, 22.646757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.500725, 31.463997, 22.436760>,  <30.471312, 31.272583, 22.086765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500725, 31.463997, 22.436760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699297, 0.650272, -0.296867,
		-0.711039, -0.590044, 0.382454,
		0.073535, 0.478533, 0.874985,
		30.522785, 31.607557, 22.699255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789024, 31.474930, 22.205898>,  <30.471312, 31.272583, 22.086765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.789024, 31.474930, 22.205898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.010050, 31.701736, 22.450249>,  <30.142666, 31.837820, 22.596859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.010050, 31.701736, 22.450249>,  <29.789024, 31.474930, 22.205898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.010050, 31.701736, 22.450249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746695, 0.662403, 0.060575,
		-0.370298, -0.489609, 0.789406,
		0.552563, 0.567015, 0.610875,
		30.175819, 31.871841, 22.633511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301823, 31.764372, 22.639605>,  <29.789024, 31.474930, 22.205898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301823, 31.764372, 22.639605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.625555, 31.997902, 22.665329>,  <29.819794, 32.138020, 22.680763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.625555, 31.997902, 22.665329>,  <29.301823, 31.764372, 22.639605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625555, 31.997902, 22.665329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582530, 0.811861, -0.039250,
		-0.075128, -0.005698, 0.997158,
		0.809330, 0.583823, 0.064313,
		29.868355, 32.173050, 22.684624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239824, 32.271103, 23.194538>,  <29.301823, 31.764372, 22.639605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.239824, 32.271103, 23.194538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.484724, 32.397949, 22.904823>,  <29.631664, 32.474056, 22.730995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.484724, 32.397949, 22.904823>,  <29.239824, 32.271103, 23.194538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484724, 32.397949, 22.904823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665281, 0.701632, -0.255174,
		0.427262, 0.638083, 0.640544,
		0.612249, 0.317115, -0.724285,
		29.668398, 32.493084, 22.687538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893631, 32.987400, 23.396214>,  <29.239824, 32.271103, 23.194538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893631, 32.987400, 23.396214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.500940, 32.998703, 23.471493>,  <28.265326, 33.005486, 23.516661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.500940, 32.998703, 23.471493>,  <28.893631, 32.987400, 23.396214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500940, 32.998703, 23.471493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120205, -0.674606, 0.728325,
		0.147537, 0.737637, 0.658881,
		-0.981725, 0.028254, 0.188197,
		28.206423, 33.007179, 23.527952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870316, 33.046612, 24.128742>,  <28.893631, 32.987400, 23.396214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.870316, 33.046612, 24.128742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.517757, 32.900223, 24.009274>,  <28.306223, 32.812389, 23.937592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.517757, 32.900223, 24.009274>,  <28.870316, 33.046612, 24.128742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517757, 32.900223, 24.009274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061607, -0.715929, 0.695450,
		-0.468346, 0.594565, 0.653563,
		-0.881395, -0.365975, -0.298673,
		28.253340, 32.790432, 23.919672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.452917, 33.008415, 24.688917>,  <28.870316, 33.046612, 24.128742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.452917, 33.008415, 24.688917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.255400, 32.750553, 24.455479>,  <28.136889, 32.595837, 24.315414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.255400, 32.750553, 24.455479>,  <28.452917, 33.008415, 24.688917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.255400, 32.750553, 24.455479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098727, -0.625226, 0.774174,
		-0.863957, 0.439898, 0.245087,
		-0.493793, -0.644656, -0.583598,
		28.107262, 32.557156, 24.280399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920200, 32.805988, 25.023651>,  <28.452917, 33.008415, 24.688917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.920200, 32.805988, 25.023651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.920704, 32.503067, 24.762424>,  <27.921005, 32.321316, 24.605688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.920704, 32.503067, 24.762424>,  <27.920200, 32.805988, 25.023651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.920704, 32.503067, 24.762424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108248, -0.649333, 0.752761,
		-0.994123, 0.069746, -0.082793,
		0.001258, -0.757300, -0.653067,
		27.921082, 32.275879, 24.566505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272192, 32.400085, 25.108423>,  <27.920200, 32.805988, 25.023651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272192, 32.400085, 25.108423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.531778, 32.153862, 24.929569>,  <27.687531, 32.006126, 24.822258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.531778, 32.153862, 24.929569>,  <27.272192, 32.400085, 25.108423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.531778, 32.153862, 24.929569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212360, -0.710899, 0.670466,
		-0.730585, -0.340151, -0.592066,
		0.648959, -0.615564, -0.447138,
		27.726467, 31.969193, 24.795429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.936674, 31.683084, 25.114511>,  <27.272192, 32.400085, 25.108423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.936674, 31.683084, 25.114511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.326746, 31.644360, 25.034855>,  <27.560789, 31.621124, 24.987061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.326746, 31.644360, 25.034855>,  <26.936674, 31.683084, 25.114511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326746, 31.644360, 25.034855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021311, -0.854147, 0.519595,
		-0.220396, -0.510942, -0.830882,
		0.975178, -0.096810, -0.199139,
		27.619299, 31.615316, 24.975113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.981371, 30.876913, 25.011379>,  <26.936674, 31.683084, 25.114511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.981371, 30.876913, 25.011379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.325731, 31.056362, 25.107368>,  <27.532349, 31.164032, 25.164963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.325731, 31.056362, 25.107368>,  <26.981371, 30.876913, 25.011379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.325731, 31.056362, 25.107368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302197, -0.830352, 0.468181,
		0.409298, -0.330538, -0.850423,
		0.860902, 0.448621, 0.239974,
		27.584002, 31.190948, 25.179361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.498186, 30.365923, 24.930983>,  <26.981371, 30.876913, 25.011379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.498186, 30.365923, 24.930983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.697441, 30.630634, 25.155094>,  <27.816994, 30.789461, 25.289560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.697441, 30.630634, 25.155094>,  <27.498186, 30.365923, 24.930983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.697441, 30.630634, 25.155094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580194, -0.734577, 0.351813,
		0.644389, 0.149819, -0.749878,
		0.498135, 0.661779, 0.560277,
		27.846882, 30.829168, 25.323177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.254635, 30.186752, 24.872488>,  <27.498186, 30.365923, 24.930983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.254635, 30.186752, 24.872488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.230867, 30.393951, 25.213814>,  <28.216606, 30.518270, 25.418610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.230867, 30.393951, 25.213814>,  <28.254635, 30.186752, 24.872488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230867, 30.393951, 25.213814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610690, -0.657333, 0.441555,
		0.789637, 0.547348, -0.277279,
		-0.059420, 0.518000, 0.853314,
		28.213041, 30.549351, 25.469809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948956, 30.098434, 25.213951>,  <28.254635, 30.186752, 24.872488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948956, 30.098434, 25.213951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.691923, 30.234848, 25.488407>,  <28.537704, 30.316696, 25.653080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.691923, 30.234848, 25.488407>,  <28.948956, 30.098434, 25.213951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691923, 30.234848, 25.488407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432581, -0.577655, 0.692235,
		0.632428, 0.741627, 0.223664,
		-0.642580, 0.341035, 0.686138,
		28.499149, 30.337158, 25.694248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.417898, 30.319828, 25.796972>,  <28.948956, 30.098434, 25.213951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.417898, 30.319828, 25.796972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.049368, 30.233318, 25.926208>,  <28.828251, 30.181414, 26.003750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.049368, 30.233318, 25.926208>,  <29.417898, 30.319828, 25.796972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.049368, 30.233318, 25.926208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383252, -0.645024, 0.661106,
		0.065422, 0.732918, 0.677164,
		-0.921324, -0.216273, 0.323092,
		28.772970, 30.168436, 26.023136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.528028, 30.189238, 26.489098>,  <29.417898, 30.319828, 25.796972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.528028, 30.189238, 26.489098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.173201, 30.022915, 26.408882>,  <28.960304, 29.923120, 26.360752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.173201, 30.022915, 26.408882>,  <29.528028, 30.189238, 26.489098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173201, 30.022915, 26.408882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217622, -0.759763, 0.612700,
		-0.407126, 0.499864, 0.764450,
		-0.887068, -0.415807, -0.200538,
		28.907080, 29.898172, 26.348721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262289, 30.029913, 27.138849>,  <29.528028, 30.189238, 26.489098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.262289, 30.029913, 27.138849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.051987, 29.818798, 26.872009>,  <28.925806, 29.692129, 26.711905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.051987, 29.818798, 26.872009>,  <29.262289, 30.029913, 27.138849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.051987, 29.818798, 26.872009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119165, -0.822203, 0.556581,
		-0.842248, 0.213129, 0.495170,
		-0.525754, -0.527786, -0.667101,
		28.894260, 29.660461, 26.671879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.807129, 29.580559, 27.519361>,  <29.262289, 30.029913, 27.138849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.807129, 29.580559, 27.519361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.837839, 29.415859, 27.156139>,  <28.856266, 29.317039, 26.938206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.837839, 29.415859, 27.156139>,  <28.807129, 29.580559, 27.519361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837839, 29.415859, 27.156139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035025, -0.909070, 0.415169,
		-0.996433, -0.063680, -0.055374,
		0.076777, -0.411748, -0.908058,
		28.860872, 29.292336, 26.883722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.558437, 28.899374, 27.616396>,  <28.807129, 29.580559, 27.519361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.558437, 28.899374, 27.616396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.707952, 28.864628, 27.247021>,  <28.797663, 28.843781, 27.025396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.707952, 28.864628, 27.247021>,  <28.558437, 28.899374, 27.616396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707952, 28.864628, 27.247021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149747, -0.976891, 0.152508,
		-0.915346, -0.195288, -0.352144,
		0.373789, -0.086865, -0.923437,
		28.820089, 28.838568, 26.969990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.195658, 28.329149, 27.314770>,  <28.558437, 28.899374, 27.616396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.195658, 28.329149, 27.314770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.535311, 28.392498, 27.113220>,  <28.739103, 28.430508, 26.992290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.535311, 28.392498, 27.113220>,  <28.195658, 28.329149, 27.314770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.535311, 28.392498, 27.113220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263646, -0.953730, 0.144533,
		-0.457669, -0.255573, -0.851599,
		0.849134, 0.158372, -0.503874,
		28.790051, 28.440010, 26.962057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308470, 27.735252, 26.780504>,  <28.195658, 28.329149, 27.314770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308470, 27.735252, 26.780504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.665422, 27.903893, 26.844887>,  <28.879595, 28.005077, 26.883516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.665422, 27.903893, 26.844887>,  <28.308470, 27.735252, 26.780504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.665422, 27.903893, 26.844887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357795, -0.878347, 0.317000,
		0.275024, -0.225295, -0.934668,
		0.892382, 0.421602, 0.160957,
		28.933136, 28.030373, 26.893173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.760393, 27.375957, 26.361269>,  <28.308470, 27.735252, 26.780504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.760393, 27.375957, 26.361269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.975674, 27.547215, 26.651657>,  <29.104843, 27.649969, 26.825890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.975674, 27.547215, 26.651657>,  <28.760393, 27.375957, 26.361269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.975674, 27.547215, 26.651657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492043, -0.858947, 0.141784,
		0.684274, 0.280901, -0.672951,
		0.538203, 0.428140, 0.725971,
		29.137135, 27.675657, 26.869448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<29.440781, 27.040537, 26.132740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.424780, 27.165558, 26.512363>,  <29.415178, 27.240570, 26.740137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.424780, 27.165558, 26.512363>,  <29.440781, 27.040537, 26.132740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.424780, 27.165558, 26.512363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579940, -0.766201, 0.276777,
		0.813676, 0.561469, -0.150610,
		-0.040004, 0.312552, 0.949058,
		29.412779, 27.259323, 26.797081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170012, 26.935682, 26.454588>,  <29.440781, 27.040537, 26.132740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170012, 26.935682, 26.454588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.934288, 26.951115, 26.777382>,  <29.792854, 26.960375, 26.971058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.934288, 26.951115, 26.777382>,  <30.170012, 26.935682, 26.454588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.934288, 26.951115, 26.777382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579791, -0.675418, 0.455690,
		0.562633, 0.736425, 0.375661,
		-0.589310, 0.038581, 0.806985,
		29.757496, 26.962688, 27.019478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635378, 26.892109, 27.051762>,  <30.170012, 26.935682, 26.454588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635378, 26.892109, 27.051762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.278509, 26.814507, 27.214924>,  <30.064388, 26.767944, 27.312820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.278509, 26.814507, 27.214924>,  <30.635378, 26.892109, 27.051762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.278509, 26.814507, 27.214924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446729, -0.512497, 0.733335,
		0.066777, 0.836485, 0.543905,
		-0.892174, -0.194008, 0.407905,
		30.010857, 26.756304, 27.337296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621979, 27.090448, 27.804623>,  <30.635378, 26.892109, 27.051762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621979, 27.090448, 27.804623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.329475, 26.817921, 27.791557>,  <30.153975, 26.654404, 27.783718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.329475, 26.817921, 27.791557>,  <30.621979, 27.090448, 27.804623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329475, 26.817921, 27.791557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349406, -0.415281, 0.839915,
		-0.585814, 0.602782, 0.541734,
		-0.731257, -0.681319, -0.032662,
		30.110098, 26.613525, 27.781759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.380638, 27.007767, 28.584856>,  <30.621979, 27.090448, 27.804623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.380638, 27.007767, 28.584856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.295294, 26.686893, 28.361794>,  <30.244087, 26.494370, 28.227957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.295294, 26.686893, 28.361794>,  <30.380638, 27.007767, 28.584856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295294, 26.686893, 28.361794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244608, -0.596482, 0.764445,
		-0.945856, 0.026694, 0.323485,
		-0.213359, -0.802182, -0.557657,
		30.231285, 26.446239, 28.194496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057463, 26.511709, 29.090502>,  <30.380638, 27.007767, 28.584856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057463, 26.511709, 29.090502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.174435, 26.284828, 28.782536>,  <30.244617, 26.148701, 28.597755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.174435, 26.284828, 28.782536>,  <30.057463, 26.511709, 29.090502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.174435, 26.284828, 28.782536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094988, -0.783897, 0.613582,
		-0.951557, -0.252563, -0.175359,
		0.292431, -0.567201, -0.769913,
		30.262165, 26.114668, 28.551561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704252, 25.877062, 29.270142>,  <30.057463, 26.511709, 29.090502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704252, 25.877062, 29.270142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.009880, 25.826900, 29.017010>,  <30.193256, 25.796804, 28.865131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.009880, 25.826900, 29.017010>,  <29.704252, 25.877062, 29.270142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009880, 25.826900, 29.017010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397492, -0.681107, 0.614893,
		-0.508133, -0.721365, -0.470568,
		0.764069, -0.125400, -0.632830,
		30.239101, 25.789280, 28.827160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.787352, 25.212929, 29.206457>,  <29.704252, 25.877062, 29.270142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.787352, 25.212929, 29.206457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.149019, 25.320129, 29.073399>,  <30.366020, 25.384449, 28.993563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.149019, 25.320129, 29.073399>,  <29.787352, 25.212929, 29.206457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.149019, 25.320129, 29.073399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418172, -0.714340, 0.561115,
		-0.087245, -0.646447, -0.757954,
		0.904168, 0.268001, -0.332648,
		30.420269, 25.400530, 28.973604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080545, 24.573477, 28.839960>,  <29.787352, 25.212929, 29.206457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080545, 24.573477, 28.839960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.364189, 24.825626, 28.966324>,  <30.534374, 24.976915, 29.042141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.364189, 24.825626, 28.966324>,  <30.080545, 24.573477, 28.839960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364189, 24.825626, 28.966324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404300, -0.730570, 0.550281,
		0.577675, -0.262486, -0.772912,
		0.709107, 0.630372, 0.315909,
		30.576921, 25.014738, 29.061096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.609381, 24.258509, 28.836792>,  <30.080545, 24.573477, 28.839960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.609381, 24.258509, 28.836792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.727398, 24.559376, 29.072483>,  <30.798208, 24.739897, 29.213898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.727398, 24.559376, 29.072483>,  <30.609381, 24.258509, 28.836792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727398, 24.559376, 29.072483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451684, -0.653221, 0.607687,
		0.841981, 0.086852, -0.532471,
		0.295043, 0.752169, 0.589229,
		30.815910, 24.785027, 29.249252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344244, 24.135048, 28.948072>,  <30.609381, 24.258509, 28.836792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344244, 24.135048, 28.948072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.206985, 24.356041, 29.251919>,  <31.124630, 24.488636, 29.434227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.206985, 24.356041, 29.251919>,  <31.344244, 24.135048, 28.948072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206985, 24.356041, 29.251919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353841, -0.673104, 0.649406,
		0.870084, 0.491625, 0.035484,
		-0.343149, 0.552482, 0.759613,
		31.104040, 24.521786, 29.479803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737612, 24.001280, 29.488632>,  <31.344244, 24.135048, 28.948072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737612, 24.001280, 29.488632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.475187, 24.202946, 29.713276>,  <31.317734, 24.323946, 29.848063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.475187, 24.202946, 29.713276>,  <31.737612, 24.001280, 29.488632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475187, 24.202946, 29.713276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246394, -0.560282, 0.790806,
		0.713355, 0.657193, 0.243355,
		-0.656059, 0.504164, 0.561609,
		31.278370, 24.354195, 29.881758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075222, 24.179987, 30.152254>,  <31.737612, 24.001280, 29.488632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075222, 24.179987, 30.152254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.682482, 24.198936, 30.225704>,  <31.446836, 24.210306, 30.269773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.682482, 24.198936, 30.225704>,  <32.075222, 24.179987, 30.152254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682482, 24.198936, 30.225704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134446, -0.508992, 0.850207,
		0.133742, 0.859467, 0.493386,
		-0.981854, 0.047375, 0.183625,
		31.387926, 24.213148, 30.280792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001320, 24.493643, 30.822489>,  <32.075222, 24.179987, 30.152254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001320, 24.493643, 30.822489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.658995, 24.298851, 30.752697>,  <31.453600, 24.181976, 30.710821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.658995, 24.298851, 30.752697>,  <32.001320, 24.493643, 30.822489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658995, 24.298851, 30.752697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015502, -0.312998, 0.949627,
		-0.517061, 0.815404, 0.260317,
		-0.855808, -0.486980, -0.174479,
		31.402252, 24.152758, 30.700354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520399, 24.550806, 31.433264>,  <32.001320, 24.493643, 30.822489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520399, 24.550806, 31.433264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.394093, 24.227451, 31.234547>,  <31.318308, 24.033438, 31.115316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.394093, 24.227451, 31.234547>,  <31.520399, 24.550806, 31.433264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394093, 24.227451, 31.234547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041872, -0.511197, 0.858443,
		-0.947913, 0.291869, 0.127570,
		-0.315766, -0.808387, -0.496791,
		31.299362, 23.984936, 31.085510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075838, 24.300827, 31.816916>,  <31.520399, 24.550806, 31.433264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075838, 24.300827, 31.816916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.149086, 23.984745, 31.582977>,  <31.193035, 23.795095, 31.442614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.149086, 23.984745, 31.582977>,  <31.075838, 24.300827, 31.816916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149086, 23.984745, 31.582977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111159, -0.607734, 0.786322,
		-0.976786, -0.078978, -0.199126,
		0.183118, -0.790203, -0.584847,
		31.204021, 23.747684, 31.407522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455839, 23.871780, 31.781944>,  <31.075838, 24.300827, 31.816916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455839, 23.871780, 31.781944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.777166, 23.645180, 31.708450>,  <30.969963, 23.509220, 31.664354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.777166, 23.645180, 31.708450>,  <30.455839, 23.871780, 31.781944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777166, 23.645180, 31.708450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147159, -0.487759, 0.860486,
		-0.577086, -0.664203, -0.475190,
		0.803316, -0.566503, -0.183735,
		31.018162, 23.475229, 31.653330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.181990, 23.261017, 32.041210>,  <30.455839, 23.871780, 31.781944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.181990, 23.261017, 32.041210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.578239, 23.215496, 32.010983>,  <30.815989, 23.188183, 31.992846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.578239, 23.215496, 32.010983>,  <30.181990, 23.261017, 32.041210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578239, 23.215496, 32.010983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001948, -0.564923, 0.825141,
		-0.136595, -0.817258, -0.559849,
		0.990625, -0.113801, -0.075574,
		30.875427, 23.181356, 31.988310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207087, 22.546480, 32.216080>,  <30.181990, 23.261017, 32.041210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207087, 22.546480, 32.216080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.580997, 22.683895, 32.252235>,  <30.805344, 22.766344, 32.273930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.580997, 22.683895, 32.252235>,  <30.207087, 22.546480, 32.216080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580997, 22.683895, 32.252235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148005, -0.607967, 0.780045,
		0.322930, -0.715791, -0.619160,
		0.934778, 0.343538, 0.090390,
		30.861431, 22.786957, 32.279354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618896, 21.989714, 32.275116>,  <30.207087, 22.546480, 32.216080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618896, 21.989714, 32.275116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.846184, 22.272938, 32.442818>,  <30.982557, 22.442873, 32.543438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.846184, 22.272938, 32.442818>,  <30.618896, 21.989714, 32.275116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846184, 22.272938, 32.442818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029816, -0.526882, 0.849416,
		0.822337, -0.470154, -0.320496,
		0.568219, 0.708062, 0.419256,
		31.016649, 22.485355, 32.568596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302597, 21.697866, 32.510323>,  <30.618896, 21.989714, 32.275116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302597, 21.697866, 32.510323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.227060, 22.032455, 32.716103>,  <31.181738, 22.233208, 32.839569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.227060, 22.032455, 32.716103>,  <31.302597, 21.697866, 32.510323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227060, 22.032455, 32.716103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000376, -0.523811, 0.851834,
		0.982008, 0.161054, 0.098602,
		-0.188840, 0.836471, 0.514447,
		31.170408, 22.283398, 32.870438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660179, 21.549913, 33.060905>,  <31.302597, 21.697866, 32.510323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660179, 21.549913, 33.060905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.398048, 21.835590, 33.159271>,  <31.240770, 22.006996, 33.218292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.398048, 21.835590, 33.159271>,  <31.660179, 21.549913, 33.060905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398048, 21.835590, 33.159271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148614, -0.441117, 0.885059,
		0.740583, 0.543454, 0.395214,
		-0.655325, 0.714194, 0.245919,
		31.201450, 22.049849, 33.233047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360710, 21.493563, 33.297531>,  <31.660179, 21.549913, 33.060905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360710, 21.493563, 33.297531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.527710, 21.675335, 33.612286>,  <32.627911, 21.784399, 33.801136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.527710, 21.675335, 33.612286>,  <32.360710, 21.493563, 33.297531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527710, 21.675335, 33.612286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123193, 0.829664, -0.544501,
		-0.900288, 0.324267, 0.290400,
		0.417498, 0.454432, 0.786884,
		32.652958, 21.811665, 33.848351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013348, 22.121073, 33.505291>,  <32.360710, 21.493563, 33.297531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013348, 22.121073, 33.505291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.392349, 22.154190, 33.628830>,  <32.619751, 22.174061, 33.702953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.392349, 22.154190, 33.628830>,  <32.013348, 22.121073, 33.505291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392349, 22.154190, 33.628830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060686, 0.901779, -0.427916,
		-0.313936, 0.424194, 0.849414,
		0.947502, 0.082791, 0.308844,
		32.676601, 22.179028, 33.721481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224510, 22.851078, 33.600574>,  <32.013348, 22.121073, 33.505291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224510, 22.851078, 33.600574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.580742, 22.672348, 33.566586>,  <32.794479, 22.565109, 33.546192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.580742, 22.672348, 33.566586>,  <32.224510, 22.851078, 33.600574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580742, 22.672348, 33.566586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345987, 0.786793, -0.511126,
		0.295241, 0.425797, 0.855295,
		0.890576, -0.446827, -0.084973,
		32.847916, 22.538300, 33.541092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691288, 23.437002, 33.656597>,  <32.224510, 22.851078, 33.600574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691288, 23.437002, 33.656597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.909367, 23.157524, 33.471302>,  <33.040215, 22.989838, 33.360123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.909367, 23.157524, 33.471302>,  <32.691288, 23.437002, 33.656597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909367, 23.157524, 33.471302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515047, 0.715168, -0.472505,
		0.661431, 0.019017, 0.749765,
		0.545194, -0.698694, -0.463239,
		33.072926, 22.947916, 33.332329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391434, 23.693777, 33.622322>,  <32.691288, 23.437002, 33.656597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391434, 23.693777, 33.622322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.368572, 23.426464, 33.325638>,  <33.354855, 23.266077, 33.147629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.368572, 23.426464, 33.325638>,  <33.391434, 23.693777, 33.622322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368572, 23.426464, 33.325638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674366, 0.521979, -0.522273,
		0.736182, -0.530034, 0.420832,
		-0.057157, -0.668282, -0.741709,
		33.351425, 23.225979, 33.103127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059681, 23.559870, 33.339249>,  <33.391434, 23.693777, 33.622322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059681, 23.559870, 33.339249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.813000, 23.413750, 33.060326>,  <33.664993, 23.326077, 32.892971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.813000, 23.413750, 33.060326>,  <34.059681, 23.559870, 33.339249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813000, 23.413750, 33.060326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601385, 0.352953, -0.716771,
		0.507955, -0.861382, 0.002022,
		-0.616699, -0.365303, -0.697306,
		33.627991, 23.304159, 32.851135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483788, 23.523935, 32.832577>,  <34.059681, 23.559870, 33.339249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483788, 23.523935, 32.832577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.131046, 23.510048, 32.644478>,  <33.919403, 23.501717, 32.531620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.131046, 23.510048, 32.644478>,  <34.483788, 23.523935, 32.832577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131046, 23.510048, 32.644478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435083, 0.324542, -0.839866,
		0.181773, -0.945234, -0.271093,
		-0.881851, -0.034718, -0.470248,
		33.866489, 23.499632, 32.503403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775356, 23.466255, 32.112076>,  <34.483788, 23.523935, 32.832577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775356, 23.466255, 32.112076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.398582, 23.597454, 32.083282>,  <34.172520, 23.676172, 32.066006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.398582, 23.597454, 32.083282>,  <34.775356, 23.466255, 32.112076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398582, 23.597454, 32.083282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188361, 0.338612, -0.921880,
		-0.277998, -0.881907, -0.380731,
		-0.941933, 0.327996, -0.071983,
		34.116001, 23.695852, 32.061687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668938, 23.406897, 31.425093>,  <34.775356, 23.466255, 32.112076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668938, 23.406897, 31.425093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.409103, 23.662983, 31.589119>,  <34.253201, 23.816635, 31.687534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.409103, 23.662983, 31.589119>,  <34.668938, 23.406897, 31.425093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409103, 23.662983, 31.589119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041578, 0.568467, -0.821655,
		-0.759147, -0.516689, -0.395890,
		-0.649590, 0.640217, 0.410067,
		34.214226, 23.855047, 31.712139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293896, 23.659273, 30.794552>,  <34.668938, 23.406897, 31.425093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293896, 23.659273, 30.794552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.220303, 23.901493, 31.104252>,  <34.176147, 24.046825, 31.290071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.220303, 23.901493, 31.104252>,  <34.293896, 23.659273, 30.794552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220303, 23.901493, 31.104252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085724, 0.774807, -0.626358,
		-0.979184, -0.181611, -0.090641,
		-0.183983, 0.605550, 0.774247,
		34.165108, 24.083158, 31.336527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667572, 23.923386, 30.727957>,  <34.293896, 23.659273, 30.794552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667572, 23.923386, 30.727957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.841415, 24.202320, 30.955933>,  <33.945721, 24.369680, 31.092718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.841415, 24.202320, 30.955933>,  <33.667572, 23.923386, 30.727957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841415, 24.202320, 30.955933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268988, 0.704455, -0.656801,
		-0.859511, 0.132147, 0.493740,
		0.434612, 0.697338, 0.569941,
		33.971798, 24.411522, 31.126915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090332, 24.335321, 30.829269>,  <33.667572, 23.923386, 30.727957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090332, 24.335321, 30.829269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.431019, 24.541683, 30.865967>,  <33.635433, 24.665501, 30.887985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.431019, 24.541683, 30.865967>,  <33.090332, 24.335321, 30.829269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431019, 24.541683, 30.865967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337243, 0.673698, -0.657570,
		-0.401052, 0.529125, 0.747786,
		0.851719, 0.515905, 0.091745,
		33.686535, 24.696455, 30.893490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957230, 25.013689, 30.997494>,  <33.090332, 24.335321, 30.829269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957230, 25.013689, 30.997494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.325695, 25.031116, 30.842804>,  <33.546776, 25.041573, 30.749990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.325695, 25.031116, 30.842804>,  <32.957230, 25.013689, 30.997494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325695, 25.031116, 30.842804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286315, 0.748915, -0.597620,
		0.263586, 0.661232, 0.702349,
		0.921166, 0.043569, -0.386724,
		33.602043, 25.044188, 30.726788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990166, 25.663895, 30.784960>,  <32.957230, 25.013689, 30.997494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990166, 25.663895, 30.784960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.276775, 25.476486, 30.578239>,  <33.448742, 25.364040, 30.454206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.276775, 25.476486, 30.578239>,  <32.990166, 25.663895, 30.784960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276775, 25.476486, 30.578239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317973, 0.440050, -0.839792,
		0.620878, 0.766058, 0.166328,
		0.716522, -0.468520, -0.516803,
		33.491734, 25.335930, 30.423199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175964, 26.183086, 30.380764>,  <32.990166, 25.663895, 30.784960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175964, 26.183086, 30.380764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.327789, 25.855122, 30.209332>,  <33.418884, 25.658342, 30.106472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.327789, 25.855122, 30.209332>,  <33.175964, 26.183086, 30.380764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327789, 25.855122, 30.209332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169780, 0.393651, -0.903446,
		0.909456, 0.415675, 0.010209,
		0.379558, -0.819911, -0.428581,
		33.441658, 25.609148, 30.080757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552273, 26.396774, 29.797781>,  <33.175964, 26.183086, 30.380764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552273, 26.396774, 29.797781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.457535, 26.021477, 29.696903>,  <33.400692, 25.796297, 29.636375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.457535, 26.021477, 29.696903>,  <33.552273, 26.396774, 29.797781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457535, 26.021477, 29.696903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299140, 0.317394, -0.899875,
		0.924349, -0.137687, -0.355839,
		-0.236842, -0.938245, -0.252196,
		33.386482, 25.740004, 29.621244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782696, 26.289873, 29.076565>,  <33.552273, 26.396774, 29.797781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782696, 26.289873, 29.076565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.525551, 25.992672, 29.151054>,  <33.371265, 25.814352, 29.195747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.525551, 25.992672, 29.151054>,  <33.782696, 26.289873, 29.076565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525551, 25.992672, 29.151054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331756, 0.050945, -0.941989,
		0.690413, -0.667347, -0.279246,
		-0.642859, -0.743003, 0.186223,
		33.332691, 25.769772, 29.206921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937908, 25.759029, 28.678690>,  <33.782696, 26.289873, 29.076565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937908, 25.759029, 28.678690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.550640, 25.677631, 28.736980>,  <33.318279, 25.628792, 28.771955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.550640, 25.677631, 28.736980>,  <33.937908, 25.759029, 28.678690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550640, 25.677631, 28.736980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181037, 0.167299, -0.969142,
		0.172840, -0.964676, -0.198815,
		-0.968169, -0.203499, 0.145726,
		33.260189, 25.616583, 28.780699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789001, 25.396915, 28.087126>,  <33.937908, 25.759029, 28.678690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789001, 25.396915, 28.087126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.452686, 25.535454, 28.253559>,  <33.250896, 25.618576, 28.353418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.452686, 25.535454, 28.253559>,  <33.789001, 25.396915, 28.087126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452686, 25.535454, 28.253559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378548, 0.173317, -0.909210,
		-0.387013, -0.921958, -0.014615,
		-0.840787, 0.346344, 0.416081,
		33.200451, 25.639357, 28.378384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252918, 25.068699, 27.741631>,  <33.789001, 25.396915, 28.087126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252918, 25.068699, 27.741631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.102806, 25.402752, 27.902489>,  <33.012741, 25.603184, 27.999004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.102806, 25.402752, 27.902489>,  <33.252918, 25.068699, 27.741631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102806, 25.402752, 27.902489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446425, 0.217374, -0.868017,
		-0.812326, -0.505273, 0.291249,
		-0.375276, 0.835133, 0.402145,
		32.990223, 25.653292, 28.023132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524719, 25.262825, 27.379976>,  <33.252918, 25.068699, 27.741631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524719, 25.262825, 27.379976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.625076, 25.613647, 27.543842>,  <32.685291, 25.824141, 27.642162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.625076, 25.613647, 27.543842>,  <32.524719, 25.262825, 27.379976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625076, 25.613647, 27.543842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543154, 0.477852, -0.690392,
		-0.801272, -0.049300, 0.596265,
		0.250890, 0.877056, 0.409667,
		32.700344, 25.876764, 27.666742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885376, 25.722063, 27.462875>,  <32.524719, 25.262825, 27.379976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885376, 25.722063, 27.462875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.219719, 25.941433, 27.453274>,  <32.420326, 26.073055, 27.447514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.219719, 25.941433, 27.453274>,  <31.885376, 25.722063, 27.462875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219719, 25.941433, 27.453274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388624, 0.560292, -0.731467,
		-0.387705, 0.620730, 0.681454,
		0.835857, 0.548423, -0.024002,
		32.470474, 26.105959, 27.446074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<26.281122, 43.896172, 18.151159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.594610, 43.670113, 18.254223>,  <26.782703, 43.534477, 18.316061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.594610, 43.670113, 18.254223>,  <26.281122, 43.896172, 18.151159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.594610, 43.670113, 18.254223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565916, -0.820693, -0.078752,
		0.255967, -0.084095, -0.963021,
		0.783722, -0.565147, 0.257661,
		26.829727, 43.500568, 18.331522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075090, 43.168095, 18.038422>,  <26.281122, 43.896172, 18.151159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075090, 43.168095, 18.038422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.350828, 43.165363, 18.328182>,  <26.516270, 43.163727, 18.502039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.350828, 43.165363, 18.328182>,  <26.075090, 43.168095, 18.038422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.350828, 43.165363, 18.328182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387702, -0.848177, 0.360947,
		0.611959, -0.529669, -0.587330,
		0.689342, -0.006824, 0.724404,
		26.557631, 43.163315, 18.545504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.471535, 42.589935, 18.005363>,  <26.075090, 43.168095, 18.038422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.471535, 42.589935, 18.005363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.526546, 42.704556, 18.384621>,  <26.559553, 42.773327, 18.612175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.526546, 42.704556, 18.384621>,  <26.471535, 42.589935, 18.005363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.526546, 42.704556, 18.384621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319704, -0.893162, 0.316307,
		0.937483, -0.346627, -0.031226,
		0.137530, 0.286550, 0.948143,
		26.567806, 42.790520, 18.669064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.764114, 42.080208, 18.288054>,  <26.471535, 42.589935, 18.005363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.764114, 42.080208, 18.288054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.675381, 42.273037, 18.627087>,  <26.622141, 42.388733, 18.830505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.675381, 42.273037, 18.627087>,  <26.764114, 42.080208, 18.288054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.675381, 42.273037, 18.627087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280056, -0.864115, 0.418179,
		0.934001, -0.144603, 0.326699,
		-0.221836, 0.482073, 0.847581,
		26.608829, 42.417660, 18.881361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.964558, 41.597698, 18.724449>,  <26.764114, 42.080208, 18.288054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.964558, 41.597698, 18.724449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.723644, 41.849594, 18.920689>,  <26.579096, 42.000732, 19.038433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.723644, 41.849594, 18.920689>,  <26.964558, 41.597698, 18.724449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.723644, 41.849594, 18.920689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340245, -0.758455, 0.555859,
		0.722143, 0.167860, 0.671068,
		-0.602281, 0.629738, 0.490600,
		26.542959, 42.038517, 19.067869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.012566, 41.414913, 19.386490>,  <26.964558, 41.597698, 18.724449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.012566, 41.414913, 19.386490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.670900, 41.612862, 19.322605>,  <26.465900, 41.731632, 19.284275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.670900, 41.612862, 19.322605>,  <27.012566, 41.414913, 19.386490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.670900, 41.612862, 19.322605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507855, -0.727887, 0.460722,
		0.111747, 0.474642, 0.873057,
		-0.854164, 0.494870, -0.159710,
		26.414652, 41.761322, 19.274693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.674902, 41.536510, 20.025297>,  <27.012566, 41.414913, 19.386490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.674902, 41.536510, 20.025297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.384737, 41.573132, 19.752419>,  <26.210638, 41.595104, 19.588692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.384737, 41.573132, 19.752419>,  <26.674902, 41.536510, 20.025297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.384737, 41.573132, 19.752419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536081, -0.696805, 0.476529,
		-0.431732, 0.711393, 0.554551,
		-0.725413, 0.091551, -0.682198,
		26.167112, 41.600597, 19.547760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.165258, 41.573250, 20.369144>,  <26.674902, 41.536510, 20.025297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.165258, 41.573250, 20.369144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.995523, 41.472832, 20.021141>,  <25.893682, 41.412579, 19.812340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.995523, 41.472832, 20.021141>,  <26.165258, 41.573250, 20.369144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.995523, 41.472832, 20.021141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575987, -0.666527, 0.473266,
		-0.698695, 0.701937, 0.138232,
		-0.424338, -0.251049, -0.870006,
		25.868221, 41.397518, 19.760139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.449472, 41.464851, 20.509781>,  <26.165258, 41.573250, 20.369144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.449472, 41.464851, 20.509781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.499409, 41.273911, 20.161861>,  <25.529371, 41.159348, 19.953110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.499409, 41.273911, 20.161861>,  <25.449472, 41.464851, 20.509781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.499409, 41.273911, 20.161861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473752, -0.798945, 0.370466,
		-0.871764, 0.365821, -0.325886,
		0.124841, -0.477348, -0.869801,
		25.536861, 41.130707, 19.900921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.906895, 41.128899, 20.486515>,  <25.449472, 41.464851, 20.509781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.906895, 41.128899, 20.486515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.107742, 40.934227, 20.200573>,  <25.228251, 40.817425, 20.029007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.107742, 40.934227, 20.200573>,  <24.906895, 41.128899, 20.486515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.107742, 40.934227, 20.200573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535064, -0.824236, 0.185313,
		-0.679398, 0.289445, -0.674270,
		0.502119, -0.486679, -0.714856,
		25.258379, 40.788223, 19.986116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.383913, 40.804333, 20.067673>,  <24.906895, 41.128899, 20.486515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.383913, 40.804333, 20.067673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.729393, 40.606789, 20.027431>,  <24.936682, 40.488262, 20.003286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.729393, 40.606789, 20.027431>,  <24.383913, 40.804333, 20.067673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.729393, 40.606789, 20.027431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482713, -0.867972, 0.116674,
		-0.144942, -0.052208, -0.988062,
		0.863702, -0.493861, -0.100604,
		24.988504, 40.458630, 19.997250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.173166, 40.069332, 19.798864>,  <24.383913, 40.804333, 20.067673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.173166, 40.069332, 19.798864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.547037, 40.002647, 19.924458>,  <24.771360, 39.962639, 19.999813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.547037, 40.002647, 19.924458>,  <24.173166, 40.069332, 19.798864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.547037, 40.002647, 19.924458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295181, -0.856140, 0.424137,
		0.198107, -0.489114, -0.849424,
		0.934677, -0.166709, 0.313985,
		24.827440, 39.952633, 20.018652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.335062, 39.398567, 19.633734>,  <24.173166, 40.069332, 19.798864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.335062, 39.398567, 19.633734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.624039, 39.458855, 19.903656>,  <24.797424, 39.495026, 20.065609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.624039, 39.458855, 19.903656>,  <24.335062, 39.398567, 19.633734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.624039, 39.458855, 19.903656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122876, -0.932434, 0.339807,
		0.680424, -0.328409, -0.655112,
		0.722444, 0.150715, 0.674803,
		24.840773, 39.504070, 20.106096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.857687, 38.830067, 19.635340>,  <24.335062, 39.398567, 19.633734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.857687, 38.830067, 19.635340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.870874, 39.009556, 19.992565>,  <24.878786, 39.117249, 20.206900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.870874, 39.009556, 19.992565>,  <24.857687, 38.830067, 19.635340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.870874, 39.009556, 19.992565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063416, -0.890808, 0.449932,
		0.997443, -0.071467, -0.000910,
		0.032966, 0.448724, 0.893062,
		24.880764, 39.144173, 20.260485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.169765, 38.337132, 19.953753>,  <24.857687, 38.830067, 19.635340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.169765, 38.337132, 19.953753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.041973, 38.559025, 20.261051>,  <24.965298, 38.692162, 20.445431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.041973, 38.559025, 20.261051>,  <25.169765, 38.337132, 19.953753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.041973, 38.559025, 20.261051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376876, -0.818241, 0.434103,
		0.869423, -0.150847, 0.470477,
		-0.319480, 0.554731, 0.768249,
		24.946129, 38.725445, 20.491526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.481443, 38.051678, 20.506323>,  <25.169765, 38.337132, 19.953753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.481443, 38.051678, 20.506323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.160032, 38.242153, 20.649204>,  <24.967186, 38.356438, 20.734934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.160032, 38.242153, 20.649204>,  <25.481443, 38.051678, 20.506323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.160032, 38.242153, 20.649204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164010, -0.753944, 0.636136,
		0.572229, 0.452567, 0.683913,
		-0.803526, 0.476184, 0.357203,
		24.918974, 38.385010, 20.756365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.523918, 37.998127, 21.232405>,  <25.481443, 38.051678, 20.506323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.523918, 37.998127, 21.232405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.141445, 38.115093, 21.238132>,  <24.911961, 38.185272, 21.241570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.141445, 38.115093, 21.238132>,  <25.523918, 37.998127, 21.232405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.141445, 38.115093, 21.238132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210814, -0.721626, 0.659404,
		0.203154, 0.627493, 0.751652,
		-0.956183, 0.292419, 0.014317,
		24.854589, 38.202820, 21.242428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.328911, 38.032524, 21.919804>,  <25.523918, 37.998127, 21.232405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.328911, 38.032524, 21.919804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.974295, 38.005573, 21.736717>,  <24.761524, 37.989403, 21.626865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.974295, 38.005573, 21.736717>,  <25.328911, 38.032524, 21.919804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.974295, 38.005573, 21.736717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337018, -0.583741, 0.738692,
		-0.316956, 0.809140, 0.494805,
		-0.886543, -0.067375, -0.457715,
		24.708332, 37.985359, 21.599403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.846813, 38.071121, 22.449476>,  <25.328911, 38.032524, 21.919804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.846813, 38.071121, 22.449476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.634008, 37.912731, 22.150101>,  <24.506325, 37.817696, 21.970474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.634008, 37.912731, 22.150101>,  <24.846813, 38.071121, 22.449476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.634008, 37.912731, 22.150101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398419, -0.662879, 0.633919,
		-0.747145, 0.635446, 0.194894,
		-0.532013, -0.395980, -0.748440,
		24.474405, 37.793938, 21.925570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.155321, 37.889969, 22.740509>,  <24.846813, 38.071121, 22.449476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.155321, 37.889969, 22.740509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.190424, 37.651741, 22.421112>,  <24.211487, 37.508804, 22.229473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.190424, 37.651741, 22.421112>,  <24.155321, 37.889969, 22.740509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.190424, 37.651741, 22.421112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404771, -0.753749, 0.517710,
		-0.910197, 0.277774, -0.307217,
		0.087758, -0.595571, -0.798495,
		24.216751, 37.473068, 22.181564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.500668, 37.505108, 22.717552>,  <24.155321, 37.889969, 22.740509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.500668, 37.505108, 22.717552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.741533, 37.300465, 22.472389>,  <23.886053, 37.177677, 22.325293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.741533, 37.300465, 22.472389>,  <23.500668, 37.505108, 22.717552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.741533, 37.300465, 22.472389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351879, -0.859179, 0.371472,
		-0.716644, -0.008019, -0.697392,
		0.602164, -0.511612, -0.612905,
		23.922182, 37.146980, 22.288517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.823275, 37.479874, 23.094120>,  <23.500668, 37.505108, 22.717552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.823275, 37.479874, 23.094120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.450493, 37.386871, 22.982838>,  <22.226824, 37.331070, 22.916069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.450493, 37.386871, 22.982838>,  <22.823275, 37.479874, 23.094120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.450493, 37.386871, 22.982838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087694, 0.599984, -0.795191,
		0.351806, -0.765480, -0.538770,
		-0.931956, -0.232507, -0.278206,
		22.170906, 37.317120, 22.899376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.595768, 37.148743, 22.292118>,  <22.823275, 37.479874, 23.094120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.595768, 37.148743, 22.292118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.315153, 37.383705, 22.453510>,  <22.146784, 37.524685, 22.550346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.315153, 37.383705, 22.453510>,  <22.595768, 37.148743, 22.292118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.315153, 37.383705, 22.453510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128839, 0.661399, -0.738886,
		-0.700890, -0.466371, -0.539676,
		-0.701536, 0.587409, 0.403482,
		22.104692, 37.559929, 22.574554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.415276, 37.454136, 21.704412>,  <22.595768, 37.148743, 22.292118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.415276, 37.454136, 21.704412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.242142, 37.665504, 21.996555>,  <22.138262, 37.792324, 22.171841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.242142, 37.665504, 21.996555>,  <22.415276, 37.454136, 21.704412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.242142, 37.665504, 21.996555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022668, 0.803547, -0.594810,
		-0.901188, -0.274010, -0.335825,
		-0.432835, 0.528423, 0.730358,
		22.112291, 37.824032, 22.215662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.899620, 37.928135, 21.391575>,  <22.415276, 37.454136, 21.704412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.899620, 37.928135, 21.391575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.951391, 38.085873, 21.755497>,  <21.982454, 38.180515, 21.973850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.951391, 38.085873, 21.755497>,  <21.899620, 37.928135, 21.391575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.951391, 38.085873, 21.755497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073308, 0.918815, -0.387820,
		-0.988875, -0.016501, 0.147830,
		0.129429, 0.394343, 0.909803,
		21.990219, 38.204174, 22.028439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.413376, 38.461868, 21.505234>,  <21.899620, 37.928135, 21.391575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.413376, 38.461868, 21.505234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.730867, 38.517738, 21.742043>,  <21.921362, 38.551258, 21.884129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.730867, 38.517738, 21.742043>,  <21.413376, 38.461868, 21.505234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.730867, 38.517738, 21.742043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038951, 0.982954, -0.179680,
		-0.607026, 0.119557, 0.785637,
		0.793727, 0.139672, 0.592022,
		21.968985, 38.559639, 21.919649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.406803, 39.100826, 21.769218>,  <21.413376, 38.461868, 21.505234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.406803, 39.100826, 21.769218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.796089, 39.038727, 21.837040>,  <22.029661, 39.001469, 21.877733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.796089, 39.038727, 21.837040>,  <21.406803, 39.100826, 21.769218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.796089, 39.038727, 21.837040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191021, 0.956455, -0.220692,
		-0.127907, 0.247169, 0.960493,
		0.973217, -0.155247, 0.169551,
		22.088055, 38.992153, 21.887905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.560026, 39.635445, 22.268936>,  <21.406803, 39.100826, 21.769218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.560026, 39.635445, 22.268936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.906509, 39.542027, 22.092239>,  <22.114399, 39.485973, 21.986221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.906509, 39.542027, 22.092239>,  <21.560026, 39.635445, 22.268936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.906509, 39.542027, 22.092239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247960, 0.968427, -0.025782,
		0.433817, -0.087202, 0.896771,
		0.866209, -0.233548, -0.441743,
		22.166372, 39.471962, 21.959717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.936590, 40.023567, 22.706457>,  <21.560026, 39.635445, 22.268936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.936590, 40.023567, 22.706457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.169149, 39.907257, 22.402504>,  <22.308685, 39.837471, 22.220131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.169149, 39.907257, 22.402504>,  <21.936590, 40.023567, 22.706457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.169149, 39.907257, 22.402504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481204, 0.875989, 0.032969,
		0.656064, -0.384827, 0.649221,
		0.581397, -0.290778, -0.759885,
		22.343569, 39.820023, 22.174538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.536625, 40.313148, 22.870108>,  <21.936590, 40.023567, 22.706457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.536625, 40.313148, 22.870108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.543783, 40.237209, 22.477448>,  <22.548079, 40.191647, 22.241852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.543783, 40.237209, 22.477448>,  <22.536625, 40.313148, 22.870108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.543783, 40.237209, 22.477448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455582, 0.875512, -0.161013,
		0.890014, -0.444340, 0.102160,
		0.017898, -0.189846, -0.981651,
		22.549152, 40.180256, 22.182953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.270180, 40.399395, 22.640583>,  <22.536625, 40.313148, 22.870108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.270180, 40.399395, 22.640583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.027233, 40.447128, 22.326420>,  <22.881464, 40.475769, 22.137922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.027233, 40.447128, 22.326420>,  <23.270180, 40.399395, 22.640583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.027233, 40.447128, 22.326420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407315, 0.895592, -0.178911,
		0.682054, -0.428573, -0.592561,
		-0.607369, 0.119332, -0.785406,
		22.845022, 40.482929, 22.090797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.792107, 40.632080, 22.089748>,  <23.270180, 40.399395, 22.640583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.792107, 40.632080, 22.089748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.427174, 40.719379, 21.951172>,  <23.208214, 40.771759, 21.868027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.427174, 40.719379, 21.951172>,  <23.792107, 40.632080, 22.089748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.427174, 40.719379, 21.951172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355167, 0.842819, -0.404367,
		0.203736, -0.491961, -0.846443,
		-0.912331, 0.218244, -0.346441,
		23.153475, 40.784851, 21.847240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.855793, 40.780457, 21.385166>,  <23.792107, 40.632080, 22.089748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.855793, 40.780457, 21.385166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.519056, 40.961441, 21.502869>,  <23.317015, 41.070030, 21.573490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.519056, 40.961441, 21.502869>,  <23.855793, 40.780457, 21.385166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.519056, 40.961441, 21.502869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318596, 0.856659, -0.405749,
		-0.435662, -0.247826, -0.865321,
		-0.841840, 0.452457, 0.294257,
		23.266504, 41.097179, 21.591146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.562643, 41.152943, 20.782188>,  <23.855793, 40.780457, 21.385166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.562643, 41.152943, 20.782188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.431990, 41.328751, 21.116882>,  <23.353598, 41.434235, 21.317699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.431990, 41.328751, 21.116882>,  <23.562643, 41.152943, 20.782188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.431990, 41.328751, 21.116882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393316, 0.868209, -0.302516,
		-0.859425, 0.230290, -0.456459,
		-0.326636, 0.439523, 0.836737,
		23.334000, 41.460606, 21.367903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.026543, 41.732067, 20.636250>,  <23.562643, 41.152943, 20.782188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.026543, 41.732067, 20.636250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.202108, 41.811882, 20.986687>,  <23.307447, 41.859772, 21.196949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.202108, 41.811882, 20.986687>,  <23.026543, 41.732067, 20.636250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.202108, 41.811882, 20.986687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275639, 0.898119, -0.342645,
		-0.855206, 0.391877, 0.339197,
		0.438914, 0.199536, 0.876094,
		23.333782, 41.871742, 21.249516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.089516, 42.471581, 20.647781>,  <23.026543, 41.732067, 20.636250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.089516, 42.471581, 20.647781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.314749, 42.369652, 20.962234>,  <23.449888, 42.308495, 21.150906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.314749, 42.369652, 20.962234>,  <23.089516, 42.471581, 20.647781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.314749, 42.369652, 20.962234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556508, 0.820167, -0.132759,
		-0.610931, 0.512244, 0.603630,
		0.563083, -0.254819, 0.786133,
		23.483673, 42.293205, 21.198074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.140371, 43.046562, 21.015476>,  <23.089516, 42.471581, 20.647781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.140371, 43.046562, 21.015476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.451859, 42.809620, 21.098148>,  <23.638750, 42.667454, 21.147753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.451859, 42.809620, 21.098148>,  <23.140371, 43.046562, 21.015476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.451859, 42.809620, 21.098148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624125, 0.697956, -0.351177,
		0.063766, 0.402463, 0.913213,
		0.778718, -0.592352, 0.206681,
		23.685474, 42.631916, 21.160152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.687759, 43.496994, 21.326862>,  <23.140371, 43.046562, 21.015476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.687759, 43.496994, 21.326862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.893600, 43.163101, 21.248478>,  <24.017105, 42.962765, 21.201448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.893600, 43.163101, 21.248478>,  <23.687759, 43.496994, 21.326862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.893600, 43.163101, 21.248478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823693, 0.544749, -0.157413,
		0.238146, -0.080405, 0.967895,
		0.514603, -0.834736, -0.195959,
		24.047981, 42.912682, 21.189690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.266865, 43.534817, 21.728947>,  <23.687759, 43.496994, 21.326862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.266865, 43.534817, 21.728947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.376772, 43.278324, 21.442360>,  <24.442717, 43.124428, 21.270407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.376772, 43.278324, 21.442360>,  <24.266865, 43.534817, 21.728947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.376772, 43.278324, 21.442360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774288, 0.589354, -0.230521,
		0.570071, -0.491413, 0.658432,
		0.274769, -0.641229, -0.716469,
		24.459202, 43.085957, 21.227419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.921057, 43.374882, 21.921537>,  <24.266865, 43.534817, 21.728947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.921057, 43.374882, 21.921537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.862749, 43.305111, 21.532009>,  <24.827765, 43.263248, 21.298292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.862749, 43.305111, 21.532009>,  <24.921057, 43.374882, 21.921537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.862749, 43.305111, 21.532009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781327, 0.583506, -0.221468,
		0.606860, -0.793156, 0.051225,
		-0.145769, -0.174423, -0.973822,
		24.819017, 43.252785, 21.239862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.550022, 43.396931, 21.710915>,  <24.921057, 43.374882, 21.921537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.550022, 43.396931, 21.710915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.362158, 43.411243, 21.358067>,  <25.249439, 43.419830, 21.146357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.362158, 43.411243, 21.358067>,  <25.550022, 43.396931, 21.710915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.362158, 43.411243, 21.358067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778945, 0.487079, -0.394967,
		0.415530, -0.872625, -0.256635,
		-0.469659, 0.035784, -0.882122,
		25.221260, 43.421978, 21.093430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.934244, 43.189156, 21.079817>,  <25.550022, 43.396931, 21.710915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.934244, 43.189156, 21.079817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.691656, 43.490452, 20.977974>,  <25.546103, 43.671230, 20.916868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.691656, 43.490452, 20.977974>,  <25.934244, 43.189156, 21.079817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.691656, 43.490452, 20.977974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793153, 0.595548, -0.127398,
		0.055670, -0.279206, -0.958616,
		-0.606472, 0.753237, -0.254607,
		25.509714, 43.716423, 20.901592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.694202, 29.465435, 26.171860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066053, 29.593525, 26.244801>,  <28.289164, 29.670380, 26.288565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066053, 29.593525, 26.244801>,  <27.694202, 29.465435, 26.171860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066053, 29.593525, 26.244801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226922, 0.887343, -0.401408,
		-0.290348, 0.331780, 0.897563,
		0.929626, 0.320224, 0.182350,
		28.344942, 29.689592, 26.299505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.614717, 30.070200, 26.598080>,  <27.694202, 29.465435, 26.171860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.614717, 30.070200, 26.598080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.959446, 30.082363, 26.395561>,  <28.166283, 30.089661, 26.274050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.959446, 30.082363, 26.395561>,  <27.614717, 30.070200, 26.598080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.959446, 30.082363, 26.395561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273253, 0.868795, -0.412950,
		0.427311, 0.494236, 0.757057,
		0.861823, 0.030410, -0.506297,
		28.217993, 30.091486, 26.243671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.565340, 30.709179, 26.516483>,  <27.614717, 30.070200, 26.598080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.565340, 30.709179, 26.516483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.893772, 30.601200, 26.315304>,  <28.090832, 30.536413, 26.194597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.893772, 30.601200, 26.315304>,  <27.565340, 30.709179, 26.516483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.893772, 30.601200, 26.315304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016429, 0.869566, -0.493543,
		0.570577, 0.413501, 0.709549,
		0.821080, -0.269947, -0.502947,
		28.140097, 30.520216, 26.164419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.050058, 31.293299, 26.607479>,  <27.565340, 30.709179, 26.516483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.050058, 31.293299, 26.607479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.119957, 31.083393, 26.274231>,  <28.161896, 30.957451, 26.074282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.119957, 31.083393, 26.274231>,  <28.050058, 31.293299, 26.607479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.119957, 31.083393, 26.274231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221481, 0.803505, -0.552564,
		0.959380, 0.281078, 0.024182,
		0.174744, -0.524763, -0.833120,
		28.172380, 30.925964, 26.024296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502388, 31.638197, 26.067102>,  <28.050058, 31.293299, 26.607479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502388, 31.638197, 26.067102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301664, 31.383942, 25.832443>,  <28.181231, 31.231388, 25.691647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301664, 31.383942, 25.832443>,  <28.502388, 31.638197, 26.067102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.301664, 31.383942, 25.832443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080238, 0.641091, -0.763259,
		0.861250, -0.430079, -0.270702,
		-0.501806, -0.635636, -0.586649,
		28.151123, 31.193251, 25.656448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.821367, 31.540283, 25.474369>,  <28.502388, 31.638197, 26.067102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.821367, 31.540283, 25.474369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444178, 31.452614, 25.374161>,  <28.217863, 31.400011, 25.314035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444178, 31.452614, 25.374161>,  <28.821367, 31.540283, 25.474369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.444178, 31.452614, 25.374161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120296, 0.477360, -0.870435,
		0.310364, -0.850935, -0.423773,
		-0.942975, -0.219174, -0.250520,
		28.161285, 31.386862, 25.299006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.951031, 31.363379, 24.744989>,  <28.821367, 31.540283, 25.474369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.951031, 31.363379, 24.744989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559423, 31.429729, 24.792328>,  <28.324459, 31.469540, 24.820732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559423, 31.429729, 24.792328>,  <28.951031, 31.363379, 24.744989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.559423, 31.429729, 24.792328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047817, 0.377559, -0.924750,
		-0.198079, -0.911007, -0.361706,
		-0.979019, 0.165878, 0.118348,
		28.265718, 31.479492, 24.827833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.517881, 31.214500, 24.130491>,  <28.951031, 31.363379, 24.744989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.517881, 31.214500, 24.130491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284798, 31.455864, 24.348244>,  <28.144947, 31.600681, 24.478895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284798, 31.455864, 24.348244>,  <28.517881, 31.214500, 24.130491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.284798, 31.455864, 24.348244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120004, 0.598625, -0.791989,
		-0.803772, -0.526827, -0.276413,
		-0.582709, 0.603408, 0.544379,
		28.109985, 31.636887, 24.511557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.153713, 31.405514, 23.651659>,  <28.517881, 31.214500, 24.130491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.153713, 31.405514, 23.651659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.053856, 31.659355, 23.944221>,  <27.993942, 31.811661, 24.119759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.053856, 31.659355, 23.944221>,  <28.153713, 31.405514, 23.651659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.053856, 31.659355, 23.944221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152759, 0.720054, -0.676895,
		-0.956213, -0.280711, -0.082815,
		-0.249643, 0.634606, 0.731406,
		27.978964, 31.849737, 24.163643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567274, 31.762642, 23.428381>,  <28.153713, 31.405514, 23.651659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.567274, 31.762642, 23.428381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.727365, 32.005550, 23.702911>,  <27.823420, 32.151295, 23.867630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.727365, 32.005550, 23.702911>,  <27.567274, 31.762642, 23.428381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727365, 32.005550, 23.702911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165718, 0.784535, -0.597530,
		-0.901308, 0.125412, 0.414628,
		0.400228, 0.607270, 0.686324,
		27.847433, 32.187733, 23.908810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.079109, 32.350529, 23.616558>,  <27.567274, 31.762642, 23.428381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.079109, 32.350529, 23.616558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.446840, 32.486294, 23.696194>,  <27.667479, 32.567753, 23.743975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.446840, 32.486294, 23.696194>,  <27.079109, 32.350529, 23.616558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.446840, 32.486294, 23.696194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193803, 0.830882, -0.521608,
		-0.342462, 0.440944, 0.829631,
		0.919326, 0.339416, 0.199089,
		27.722637, 32.588120, 23.755920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.969374, 33.007816, 23.845938>,  <27.079109, 32.350529, 23.616558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.969374, 33.007816, 23.845938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.356007, 33.012775, 23.743515>,  <27.587986, 33.015751, 23.682062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.356007, 33.012775, 23.743515>,  <26.969374, 33.007816, 23.845938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.356007, 33.012775, 23.743515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132297, 0.879667, -0.456819,
		0.219581, 0.475428, 0.851911,
		0.966582, 0.012397, -0.256056,
		27.645981, 33.016495, 23.666698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.444557, 33.598038, 24.117140>,  <26.969374, 33.007816, 23.845938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.444557, 33.598038, 24.117140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.533695, 33.442837, 23.759415>,  <27.587177, 33.349716, 23.544779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.533695, 33.442837, 23.759415>,  <27.444557, 33.598038, 24.117140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.533695, 33.442837, 23.759415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151156, 0.892534, -0.424895,
		0.963064, 0.229866, 0.140246,
		0.222843, -0.388002, -0.894313,
		27.600548, 33.326435, 23.491121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.938963, 34.055340, 23.662224>,  <27.444557, 33.598038, 24.117140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.938963, 34.055340, 23.662224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.698618, 33.834122, 23.431362>,  <27.554411, 33.701393, 23.292845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.698618, 33.834122, 23.431362>,  <27.938963, 34.055340, 23.662224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.698618, 33.834122, 23.431362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248383, 0.815461, -0.522809,
		0.759783, -0.170782, -0.627347,
		-0.600863, -0.553044, -0.577154,
		27.518360, 33.668209, 23.258215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.353394, 34.523022, 23.564802>,  <27.938963, 34.055340, 23.662224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.353394, 34.523022, 23.564802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.124956, 34.789627, 23.756474>,  <26.987894, 34.949589, 23.871477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.124956, 34.789627, 23.756474>,  <27.353394, 34.523022, 23.564802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.124956, 34.789627, 23.756474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599058, -0.060703, 0.798401,
		0.561233, 0.743017, -0.364614,
		-0.571092, 0.666514, 0.479179,
		26.953629, 34.989582, 23.900227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820086, 35.119076, 23.772768>,  <27.353394, 34.523022, 23.564802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820086, 35.119076, 23.772768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.499630, 35.060535, 24.004890>,  <27.307356, 35.025410, 24.144165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.499630, 35.060535, 24.004890>,  <27.820086, 35.119076, 23.772768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.499630, 35.060535, 24.004890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574081, 0.086105, 0.814259,
		-0.169134, 0.985478, 0.015034,
		-0.801140, -0.146350, 0.580307,
		27.259289, 35.016632, 24.178982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.931124, 35.641529, 24.330517>,  <27.820086, 35.119076, 23.772768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.931124, 35.641529, 24.330517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.649199, 35.400951, 24.480988>,  <27.480043, 35.256607, 24.571270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.649199, 35.400951, 24.480988>,  <27.931124, 35.641529, 24.330517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.649199, 35.400951, 24.480988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490113, -0.029478, 0.871161,
		-0.512863, 0.798373, 0.315551,
		-0.704813, -0.601442, 0.376174,
		27.437756, 35.220520, 24.593840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.751575, 35.856892, 24.999611>,  <27.931124, 35.641529, 24.330517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.751575, 35.856892, 24.999611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.675198, 35.465694, 24.965973>,  <27.629372, 35.230976, 24.945791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.675198, 35.465694, 24.965973>,  <27.751575, 35.856892, 24.999611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.675198, 35.465694, 24.965973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552900, -0.177942, 0.814026,
		-0.811075, 0.108937, 0.574708,
		-0.190943, -0.977993, -0.084093,
		27.617914, 35.172298, 24.940744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976618, 35.623001, 25.674347>,  <27.751575, 35.856892, 24.999611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976618, 35.623001, 25.674347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.890331, 35.277981, 25.491276>,  <27.838558, 35.070969, 25.381433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.890331, 35.277981, 25.491276>,  <27.976618, 35.623001, 25.674347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.890331, 35.277981, 25.491276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495823, -0.500550, 0.709654,
		-0.841205, -0.073841, 0.535651,
		-0.215718, -0.862553, -0.457677,
		27.825615, 35.019215, 25.353973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.637350, 35.260090, 26.217041>,  <27.976618, 35.623001, 25.674347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.637350, 35.260090, 26.217041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.832951, 35.033501, 25.951714>,  <27.950312, 34.897549, 25.792517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.832951, 35.033501, 25.951714>,  <27.637350, 35.260090, 26.217041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.832951, 35.033501, 25.951714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493386, -0.447481, 0.745875,
		-0.719339, -0.692005, 0.060670,
		0.489001, -0.566471, -0.663316,
		27.979650, 34.863560, 25.752718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.777739, 34.685394, 26.614986>,  <27.637350, 35.260090, 26.217041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.777739, 34.685394, 26.614986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.021637, 34.645164, 26.300510>,  <28.167976, 34.621025, 26.111824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.021637, 34.645164, 26.300510>,  <27.777739, 34.685394, 26.614986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.021637, 34.645164, 26.300510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654087, -0.496359, 0.570787,
		-0.447637, -0.862272, -0.236870,
		0.609747, -0.100571, -0.786190,
		28.204561, 34.614994, 26.064653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.887033, 33.995010, 26.611395>,  <27.777739, 34.685394, 26.614986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.887033, 33.995010, 26.611395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180750, 34.142609, 26.383480>,  <28.356979, 34.231167, 26.246731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180750, 34.142609, 26.383480>,  <27.887033, 33.995010, 26.611395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.180750, 34.142609, 26.383480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672461, -0.510142, 0.536238,
		-0.092803, -0.776915, -0.622729,
		0.734292, 0.368996, -0.569787,
		28.401037, 34.253307, 26.212543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.316334, 33.417435, 26.317717>,  <27.887033, 33.995010, 26.611395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.316334, 33.417435, 26.317717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555887, 33.737766, 26.316704>,  <28.699619, 33.929966, 26.316097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555887, 33.737766, 26.316704>,  <28.316334, 33.417435, 26.317717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555887, 33.737766, 26.316704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741515, -0.553328, 0.379451,
		0.302476, -0.229124, -0.925208,
		0.598885, 0.800831, -0.002530,
		28.735554, 33.978016, 26.315945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924515, 33.119949, 25.921009>,  <28.316334, 33.417435, 26.317717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924515, 33.119949, 25.921009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.039862, 33.427086, 26.149837>,  <29.109070, 33.611366, 26.287134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.039862, 33.427086, 26.149837>,  <28.924515, 33.119949, 25.921009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.039862, 33.427086, 26.149837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761520, -0.546091, 0.349102,
		0.580458, 0.334975, -0.742200,
		0.288368, 0.767839, 0.572073,
		29.126371, 33.657436, 26.321459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.687859, 33.271526, 25.814835>,  <28.924515, 33.119949, 25.921009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.687859, 33.271526, 25.814835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.604254, 33.393173, 26.186604>,  <29.554090, 33.466160, 26.409666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.604254, 33.393173, 26.186604>,  <29.687859, 33.271526, 25.814835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.604254, 33.393173, 26.186604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889765, -0.335200, 0.309772,
		0.405750, 0.891714, -0.200532,
		-0.209010, 0.304117, 0.929423,
		29.541552, 33.484409, 26.465431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.364206, 33.282478, 26.069550>,  <29.687859, 33.271526, 25.814835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.364206, 33.282478, 26.069550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124350, 33.322067, 26.387199>,  <29.980436, 33.345821, 26.577789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124350, 33.322067, 26.387199>,  <30.364206, 33.282478, 26.069550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124350, 33.322067, 26.387199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658128, -0.503580, 0.559710,
		0.455299, 0.858262, 0.236834,
		-0.599642, 0.098968, 0.794125,
		29.944456, 33.351757, 26.625437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824884, 33.367058, 26.677414>,  <30.364206, 33.282478, 26.069550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824884, 33.367058, 26.677414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462948, 33.274979, 26.820671>,  <30.245785, 33.219730, 26.906626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462948, 33.274979, 26.820671>,  <30.824884, 33.367058, 26.677414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462948, 33.274979, 26.820671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424809, -0.543962, 0.723632,
		0.028235, 0.806916, 0.589991,
		-0.904843, -0.230201, 0.358144,
		30.191496, 33.205917, 26.928114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903950, 33.399971, 27.400696>,  <30.824884, 33.367058, 26.677414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903950, 33.399971, 27.400696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.578463, 33.177830, 27.332062>,  <30.383171, 33.044544, 27.290880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.578463, 33.177830, 27.332062>,  <30.903950, 33.399971, 27.400696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578463, 33.177830, 27.332062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351379, -0.705136, 0.615886,
		-0.463027, 0.440866, 0.768923,
		-0.813719, -0.555356, -0.171586,
		30.334347, 33.011223, 27.280586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260504, 34.042843, 27.539526>,  <30.903950, 33.399971, 27.400696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260504, 34.042843, 27.539526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594847, 34.112690, 27.747700>,  <31.795452, 34.154598, 27.872604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594847, 34.112690, 27.747700>,  <31.260504, 34.042843, 27.539526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594847, 34.112690, 27.747700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442157, 0.347705, -0.826800,
		-0.325333, 0.921200, 0.213422,
		0.835856, 0.174619, 0.520435,
		31.845604, 34.165077, 27.903830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375271, 34.837475, 27.588684>,  <31.260504, 34.042843, 27.539526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375271, 34.837475, 27.588684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707621, 34.617821, 27.624680>,  <31.907030, 34.486031, 27.646276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707621, 34.617821, 27.624680>,  <31.375271, 34.837475, 27.588684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707621, 34.617821, 27.624680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389142, 0.457805, -0.799364,
		0.397760, 0.699190, 0.594070,
		0.830876, -0.549133, 0.089987,
		31.956884, 34.453079, 27.651676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880716, 35.306469, 27.542847>,  <31.375271, 34.837475, 27.588684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880716, 35.306469, 27.542847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072838, 34.966728, 27.455296>,  <32.188110, 34.762882, 27.402765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072838, 34.966728, 27.455296>,  <31.880716, 35.306469, 27.542847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072838, 34.966728, 27.455296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490110, 0.466848, -0.736101,
		0.727391, 0.246280, 0.640506,
		0.480306, -0.849352, -0.218877,
		32.216930, 34.711922, 27.389633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515411, 35.569084, 27.466272>,  <31.880716, 35.306469, 27.542847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515411, 35.569084, 27.466272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520451, 35.216740, 27.276993>,  <32.523472, 35.005333, 27.163425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520451, 35.216740, 27.276993>,  <32.515411, 35.569084, 27.466272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520451, 35.216740, 27.276993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367151, 0.444256, -0.817213,
		0.930076, -0.163444, 0.329005,
		0.012594, -0.880865, -0.473201,
		32.524227, 34.952480, 27.135033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041260, 35.536758, 27.026781>,  <32.515411, 35.569084, 27.466272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041260, 35.536758, 27.026781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864140, 35.221462, 26.855854>,  <32.757870, 35.032284, 26.753298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864140, 35.221462, 26.855854>,  <33.041260, 35.536758, 27.026781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864140, 35.221462, 26.855854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301259, 0.318087, -0.898923,
		0.844496, -0.526775, 0.096617,
		-0.442797, -0.788244, -0.427319,
		32.731300, 34.984989, 26.727659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527672, 35.430080, 26.457647>,  <33.041260, 35.536758, 27.026781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527672, 35.430080, 26.457647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196140, 35.225456, 26.367008>,  <32.997219, 35.102680, 26.312624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196140, 35.225456, 26.367008>,  <33.527672, 35.430080, 26.457647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196140, 35.225456, 26.367008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086495, 0.282980, -0.955218,
		0.552773, -0.811313, -0.190295,
		-0.828831, -0.511559, -0.226599,
		32.947491, 35.071987, 26.299028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807426, 34.902767, 25.974369>,  <33.527672, 35.430080, 26.457647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807426, 34.902767, 25.974369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415260, 34.924583, 25.898674>,  <33.179962, 34.937672, 25.853256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415260, 34.924583, 25.898674>,  <33.807426, 34.902767, 25.974369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415260, 34.924583, 25.898674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188224, -0.023236, -0.981851,
		-0.057950, -0.998241, 0.012515,
		-0.980415, 0.054542, -0.189239,
		33.121136, 34.940945, 25.841902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658096, 34.329235, 25.433170>,  <33.807426, 34.902767, 25.974369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658096, 34.329235, 25.433170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348366, 34.581444, 25.411762>,  <33.162529, 34.732769, 25.398916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348366, 34.581444, 25.411762>,  <33.658096, 34.329235, 25.433170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348366, 34.581444, 25.411762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013146, -0.068534, -0.997562,
		-0.632650, -0.773142, 0.044779,
		-0.774327, 0.630519, -0.053521,
		33.116066, 34.770599, 25.395706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320766, 33.997299, 25.016504>,  <33.658096, 34.329235, 25.433170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320766, 33.997299, 25.016504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169693, 34.366341, 24.985115>,  <33.079048, 34.587765, 24.966282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169693, 34.366341, 24.985115>,  <33.320766, 33.997299, 25.016504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169693, 34.366341, 24.985115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017846, -0.077483, -0.996834,
		-0.925763, -0.377887, 0.012799,
		-0.377682, 0.922604, -0.078475,
		33.056389, 34.643124, 24.961573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664059, 33.945847, 24.491621>,  <33.320766, 33.997299, 25.016504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664059, 33.945847, 24.491621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816139, 34.314396, 24.523899>,  <32.907387, 34.535526, 24.543266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816139, 34.314396, 24.523899>,  <32.664059, 33.945847, 24.491621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816139, 34.314396, 24.523899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270278, -0.027242, -0.962397,
		-0.884531, 0.387717, -0.259385,
		0.380204, 0.921376, 0.080695,
		32.930199, 34.590809, 24.548107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267590, 34.351242, 24.100439>,  <32.664059, 33.945847, 24.491621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267590, 34.351242, 24.100439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622990, 34.527210, 24.152660>,  <32.836227, 34.632790, 24.183994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622990, 34.527210, 24.152660>,  <32.267590, 34.351242, 24.100439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622990, 34.527210, 24.152660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143120, 0.004654, -0.989694,
		-0.435995, 0.898024, -0.058826,
		0.888496, 0.439921, 0.130555,
		32.889538, 34.659187, 24.191826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287651, 34.740112, 23.456882>,  <32.267590, 34.351242, 24.100439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287651, 34.740112, 23.456882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665817, 34.747314, 23.587029>,  <32.892719, 34.751637, 23.665115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665817, 34.747314, 23.587029>,  <32.287651, 34.740112, 23.456882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665817, 34.747314, 23.587029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325329, 0.004966, -0.945588,
		-0.018643, 0.999826, -0.001163,
		0.945417, 0.018007, 0.325365,
		32.949444, 34.752716, 23.684637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.003981, 32.545647, 31.291666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.390696, 32.464714, 31.229198>,  <31.622725, 32.416153, 31.191717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.390696, 32.464714, 31.229198>,  <31.003981, 32.545647, 31.291666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390696, 32.464714, 31.229198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023694, 0.679330, -0.733451,
		0.254490, 0.705389, 0.661560,
		0.966785, -0.202331, -0.156169,
		31.680731, 32.404015, 31.182348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460705, 33.198719, 31.405928>,  <31.003981, 32.545647, 31.291666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460705, 33.198719, 31.405928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.631010, 32.940445, 31.152370>,  <31.733194, 32.785480, 31.000237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.631010, 32.940445, 31.152370>,  <31.460705, 33.198719, 31.405928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631010, 32.940445, 31.152370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222098, 0.753706, -0.618546,
		0.877152, 0.122569, 0.464307,
		0.425765, -0.645681, -0.633893,
		31.758739, 32.746742, 30.962202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111927, 33.541206, 31.112617>,  <31.460705, 33.198719, 31.405928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111927, 33.541206, 31.112617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.047523, 33.246628, 30.849796>,  <32.008881, 33.069881, 30.692104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.047523, 33.246628, 30.849796>,  <32.111927, 33.541206, 31.112617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047523, 33.246628, 30.849796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075483, 0.672976, -0.735803,
		0.984062, -0.068877, -0.163946,
		-0.161012, -0.736450, -0.657051,
		31.999220, 33.025692, 30.652681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558899, 33.688137, 30.584234>,  <32.111927, 33.541206, 31.112617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558899, 33.688137, 30.584234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.292793, 33.435123, 30.425583>,  <32.133129, 33.283314, 30.330393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.292793, 33.435123, 30.425583>,  <32.558899, 33.688137, 30.584234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292793, 33.435123, 30.425583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051045, 0.491463, -0.869401,
		0.744857, -0.598631, -0.294667,
		-0.665268, -0.632539, -0.396627,
		32.093212, 33.245361, 30.306595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864586, 33.424629, 29.967489>,  <32.558899, 33.688137, 30.584234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864586, 33.424629, 29.967489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.472919, 33.360447, 29.917698>,  <32.237919, 33.321938, 29.887823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.472919, 33.360447, 29.917698>,  <32.864586, 33.424629, 29.967489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472919, 33.360447, 29.917698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019876, 0.534289, -0.845068,
		0.202100, -0.829934, -0.519967,
		-0.979163, -0.160453, -0.124476,
		32.179169, 33.312309, 29.880356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776260, 33.095215, 29.310247>,  <32.864586, 33.424629, 29.967489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776260, 33.095215, 29.310247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.420223, 33.249325, 29.407650>,  <32.206600, 33.341789, 29.466091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.420223, 33.249325, 29.407650>,  <32.776260, 33.095215, 29.310247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420223, 33.249325, 29.407650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030945, 0.481949, -0.875653,
		-0.454723, -0.786950, -0.417058,
		-0.890095, 0.385274, 0.243506,
		32.153194, 33.364906, 29.480701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380199, 32.873775, 28.777296>,  <32.776260, 33.095215, 29.310247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380199, 32.873775, 28.777296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.181393, 33.184895, 28.931187>,  <32.062111, 33.371567, 29.023521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.181393, 33.184895, 28.931187>,  <32.380199, 32.873775, 28.777296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181393, 33.184895, 28.931187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203344, 0.326622, -0.923022,
		-0.843582, -0.536985, -0.004175,
		-0.497012, 0.777795, 0.384725,
		32.032288, 33.418232, 29.046604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773777, 32.894791, 28.460428>,  <32.380199, 32.873775, 28.777296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773777, 32.894791, 28.460428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.839228, 33.271774, 28.577045>,  <31.878498, 33.497963, 28.647015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.839228, 33.271774, 28.577045>,  <31.773777, 32.894791, 28.460428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839228, 33.271774, 28.577045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022889, 0.299072, -0.953956,
		-0.986257, 0.149418, 0.070507,
		0.163625, 0.942460, 0.291541,
		31.888315, 33.554512, 28.664509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466850, 33.349998, 27.898596>,  <31.773777, 32.894791, 28.460428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466850, 33.349998, 27.898596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.691734, 33.617561, 28.093113>,  <31.826664, 33.778099, 28.209824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.691734, 33.617561, 28.093113>,  <31.466850, 33.349998, 27.898596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691734, 33.617561, 28.093113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168032, 0.483365, -0.859141,
		-0.809744, 0.564731, 0.159355,
		0.562210, 0.668907, 0.486295,
		31.860397, 33.818233, 28.239002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807772, 33.052818, 28.086727>,  <31.466850, 33.349998, 27.898596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807772, 33.052818, 28.086727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.610935, 32.836178, 27.814106>,  <30.492834, 32.706192, 27.650534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.610935, 32.836178, 27.814106>,  <30.807772, 33.052818, 28.086727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610935, 32.836178, 27.814106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382476, -0.837803, 0.389614,
		-0.782022, -0.068951, 0.619425,
		-0.492092, -0.541602, -0.681552,
		30.463308, 32.673698, 27.609640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350552, 32.606094, 28.485975>,  <30.807772, 33.052818, 28.086727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350552, 32.606094, 28.485975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.409956, 32.433846, 28.129883>,  <30.445599, 32.330498, 27.916227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.409956, 32.433846, 28.129883>,  <30.350552, 32.606094, 28.485975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.409956, 32.433846, 28.129883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249543, -0.854761, 0.455096,
		-0.956908, -0.289736, -0.019481,
		0.148509, -0.430624, -0.890230,
		30.454508, 32.304657, 27.862814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987135, 31.999262, 28.546991>,  <30.350552, 32.606094, 28.485975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987135, 31.999262, 28.546991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.253408, 31.943417, 28.253769>,  <30.413172, 31.909910, 28.077835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.253408, 31.943417, 28.253769>,  <29.987135, 31.999262, 28.546991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253408, 31.943417, 28.253769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306872, -0.844222, 0.439453,
		-0.680216, -0.517492, -0.519141,
		0.665684, -0.139613, -0.733057,
		30.453114, 31.901533, 28.033852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.821125, 31.325182, 28.352818>,  <29.987135, 31.999262, 28.546991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.821125, 31.325182, 28.352818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.187788, 31.425018, 28.227955>,  <30.407785, 31.484921, 28.153036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.187788, 31.425018, 28.227955>,  <29.821125, 31.325182, 28.352818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187788, 31.425018, 28.227955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366316, -0.837039, 0.406421,
		-0.159850, -0.486897, -0.858708,
		0.916658, 0.249592, -0.312158,
		30.462786, 31.499895, 28.134308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093325, 30.687471, 28.180408>,  <29.821125, 31.325182, 28.352818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093325, 30.687471, 28.180408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.414288, 30.920635, 28.231575>,  <30.606865, 31.060534, 28.262276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.414288, 30.920635, 28.231575>,  <30.093325, 30.687471, 28.180408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414288, 30.920635, 28.231575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493398, -0.768562, 0.407272,
		0.335715, -0.263684, -0.904305,
		0.802405, 0.582909, 0.127916,
		30.655008, 31.095509, 28.269949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540802, 30.223776, 27.874500>,  <30.093325, 30.687471, 28.180408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540802, 30.223776, 27.874500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.731558, 30.486740, 28.107872>,  <30.846010, 30.644518, 28.247894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.731558, 30.486740, 28.107872>,  <30.540802, 30.223776, 27.874500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731558, 30.486740, 28.107872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386853, -0.753007, 0.532283,
		0.789254, -0.028139, -0.613421,
		0.476888, 0.657411, 0.583429,
		30.874624, 30.683964, 28.282900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208971, 29.985802, 27.928303>,  <30.540802, 30.223776, 27.874500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208971, 29.985802, 27.928303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.167986, 30.232914, 28.240162>,  <31.143394, 30.381182, 28.427277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.167986, 30.232914, 28.240162>,  <31.208971, 29.985802, 27.928303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167986, 30.232914, 28.240162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339323, -0.715055, 0.611193,
		0.935073, 0.327177, -0.136360,
		-0.102464, 0.617780, 0.779647,
		31.137247, 30.418247, 28.474056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831400, 29.901354, 28.288513>,  <31.208971, 29.985802, 27.928303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831400, 29.901354, 28.288513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.560083, 30.049160, 28.542561>,  <31.397293, 30.137844, 28.694990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.560083, 30.049160, 28.542561>,  <31.831400, 29.901354, 28.288513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560083, 30.049160, 28.542561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211410, -0.729665, 0.650303,
		0.703723, 0.575366, 0.416806,
		-0.678291, 0.369517, 0.635121,
		31.356596, 30.160015, 28.733097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112217, 29.772625, 28.927654>,  <31.831400, 29.901354, 28.288513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112217, 29.772625, 28.927654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.738590, 29.866505, 29.035305>,  <31.514414, 29.922832, 29.099895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.738590, 29.866505, 29.035305>,  <32.112217, 29.772625, 28.927654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738590, 29.866505, 29.035305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066033, -0.627147, 0.776097,
		0.350930, 0.742700, 0.570302,
		-0.934071, 0.234697, 0.269127,
		31.458368, 29.936914, 29.116043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116825, 30.171356, 29.578360>,  <32.112217, 29.772625, 28.927654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116825, 30.171356, 29.578360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.765081, 29.985294, 29.537643>,  <31.554035, 29.873657, 29.513214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.765081, 29.985294, 29.537643>,  <32.116825, 30.171356, 29.578360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765081, 29.985294, 29.537643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183602, -0.528474, 0.828858,
		-0.439342, 0.710173, 0.550121,
		-0.879357, -0.465155, -0.101792,
		31.501274, 29.845747, 29.507107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769157, 30.333412, 30.239752>,  <32.116825, 30.171356, 29.578360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769157, 30.333412, 30.239752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.577465, 30.028366, 30.065968>,  <31.462450, 29.845339, 29.961697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.577465, 30.028366, 30.065968>,  <31.769157, 30.333412, 30.239752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577465, 30.028366, 30.065968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058188, -0.521525, 0.851250,
		-0.875757, 0.382666, 0.294307,
		-0.479233, -0.762613, -0.434462,
		31.433695, 29.799582, 29.935629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296001, 30.122593, 30.751198>,  <31.769157, 30.333412, 30.239752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296001, 30.122593, 30.751198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.364706, 29.806660, 30.515686>,  <31.405928, 29.617100, 30.374378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.364706, 29.806660, 30.515686>,  <31.296001, 30.122593, 30.751198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364706, 29.806660, 30.515686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139424, -0.572157, 0.808206,
		-0.975223, -0.220908, 0.011848,
		0.171760, -0.789833, -0.588781,
		31.416235, 29.569710, 30.339052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840490, 29.574839, 30.983927>,  <31.296001, 30.122593, 30.751198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840490, 29.574839, 30.983927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.118763, 29.396706, 30.758465>,  <31.285727, 29.289825, 30.623188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.118763, 29.396706, 30.758465>,  <30.840490, 29.574839, 30.983927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.118763, 29.396706, 30.758465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146447, -0.680249, 0.718202,
		-0.703273, -0.582179, -0.408012,
		0.695672, -0.445341, -0.563659,
		31.327467, 29.263105, 30.589369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650742, 28.848904, 30.982988>,  <30.840490, 29.574839, 30.983927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650742, 28.848904, 30.982988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.036966, 28.809242, 30.886776>,  <31.268702, 28.785446, 30.829048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.036966, 28.809242, 30.886776>,  <30.650742, 28.848904, 30.982988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036966, 28.809242, 30.886776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064471, -0.804505, 0.590436,
		-0.252053, -0.585611, -0.770408,
		0.965564, -0.099153, -0.240533,
		31.326635, 28.779497, 30.814615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.161926, 27.540701, 29.604708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.781116, 27.637062, 29.680202>,  <35.552631, 27.694880, 29.725500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.781116, 27.637062, 29.680202>,  <36.161926, 27.540701, 29.604708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781116, 27.637062, 29.680202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098872, 0.341533, -0.934655,
		-0.289622, -0.908472, -0.301328,
		-0.952021, 0.240903, 0.188738,
		35.495510, 27.709333, 29.736824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731884, 27.229557, 28.985147>,  <36.161926, 27.540701, 29.604708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731884, 27.229557, 28.985147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.475929, 27.462868, 29.185280>,  <35.322357, 27.602854, 29.305359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.475929, 27.462868, 29.185280>,  <35.731884, 27.229557, 28.985147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475929, 27.462868, 29.185280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269738, 0.439171, -0.856954,
		-0.719571, -0.683314, -0.123689,
		-0.639890, 0.583276, 0.500331,
		35.283962, 27.637850, 29.335379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240597, 27.371227, 28.458797>,  <35.731884, 27.229557, 28.985147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240597, 27.371227, 28.458797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.137985, 27.634819, 28.741623>,  <35.076416, 27.792974, 28.911318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.137985, 27.634819, 28.741623>,  <35.240597, 27.371227, 28.458797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137985, 27.634819, 28.741623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402759, 0.592124, -0.697979,
		-0.878622, -0.463830, 0.113511,
		-0.256531, 0.658977, 0.707065,
		35.061028, 27.832512, 28.953743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493835, 27.464001, 28.481083>,  <35.240597, 27.371227, 28.458797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493835, 27.464001, 28.481083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.689384, 27.794052, 28.594337>,  <34.806713, 27.992083, 28.662291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.689384, 27.794052, 28.594337>,  <34.493835, 27.464001, 28.481083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689384, 27.794052, 28.594337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507428, 0.532977, -0.677091,
		-0.709595, 0.187336, 0.679250,
		0.488868, 0.825131, 0.283138,
		34.836044, 28.041592, 28.679279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965939, 28.030874, 28.492151>,  <34.493835, 27.464001, 28.481083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965939, 28.030874, 28.492151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.318249, 28.218513, 28.466309>,  <34.529636, 28.331097, 28.450804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.318249, 28.218513, 28.466309>,  <33.965939, 28.030874, 28.492151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318249, 28.218513, 28.466309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384976, 0.629934, -0.674520,
		-0.275719, 0.618975, 0.735425,
		0.880780, 0.469098, -0.064606,
		34.582481, 28.359243, 28.446926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770775, 28.752636, 28.557213>,  <33.965939, 28.030874, 28.492151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770775, 28.752636, 28.557213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.127811, 28.735600, 28.377670>,  <34.342033, 28.725378, 28.269945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.127811, 28.735600, 28.377670>,  <33.770775, 28.752636, 28.557213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127811, 28.735600, 28.377670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358537, 0.536582, -0.763892,
		0.273383, 0.842773, 0.463677,
		0.892588, -0.042590, -0.448857,
		34.395588, 28.722822, 28.243013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020355, 29.412533, 28.525291>,  <33.770775, 28.752636, 28.557213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020355, 29.412533, 28.525291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.229073, 29.219402, 28.243977>,  <34.354301, 29.103523, 28.075188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.229073, 29.219402, 28.243977>,  <34.020355, 29.412533, 28.525291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229073, 29.219402, 28.243977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230844, 0.713741, -0.661276,
		0.821245, 0.507398, 0.260968,
		0.521793, -0.482826, -0.703285,
		34.385612, 29.074554, 28.032991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307262, 30.032812, 28.059565>,  <34.020355, 29.412533, 28.525291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307262, 30.032812, 28.059565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.382145, 29.712185, 27.832428>,  <34.427074, 29.519808, 27.696146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.382145, 29.712185, 27.832428>,  <34.307262, 30.032812, 28.059565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382145, 29.712185, 27.832428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074455, 0.564820, -0.821849,
		0.979496, 0.196131, 0.046054,
		0.187202, -0.801568, -0.567841,
		34.438305, 29.471714, 27.662075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567081, 30.400440, 27.526659>,  <34.307262, 30.032812, 28.059565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567081, 30.400440, 27.526659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.476112, 30.038387, 27.382984>,  <34.421532, 29.821156, 27.296780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.476112, 30.038387, 27.382984>,  <34.567081, 30.400440, 27.526659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476112, 30.038387, 27.382984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049959, 0.357522, -0.932567,
		0.972515, -0.230029, -0.036088,
		-0.227420, -0.905132, -0.359188,
		34.407887, 29.766848, 27.275229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084110, 30.189798, 27.011040>,  <34.567081, 30.400440, 27.526659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084110, 30.189798, 27.011040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.751396, 29.989525, 26.915169>,  <34.551765, 29.869360, 26.857647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.751396, 29.989525, 26.915169>,  <35.084110, 30.189798, 27.011040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751396, 29.989525, 26.915169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005514, 0.424300, -0.905505,
		0.555068, -0.754508, -0.350166,
		-0.831786, -0.500686, -0.239676,
		34.501862, 29.839319, 26.843266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070568, 30.241798, 26.183975>,  <35.084110, 30.189798, 27.011040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070568, 30.241798, 26.183975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.717503, 30.089935, 26.294804>,  <34.505665, 29.998817, 26.361300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.717503, 30.089935, 26.294804>,  <35.070568, 30.241798, 26.183975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717503, 30.089935, 26.294804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428160, 0.406342, -0.807196,
		0.193873, -0.831111, -0.521217,
		-0.882662, -0.379659, 0.277070,
		34.452705, 29.976038, 26.377924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767796, 29.761984, 25.606634>,  <35.070568, 30.241798, 26.183975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767796, 29.761984, 25.606634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.492474, 29.938416, 25.837002>,  <34.327278, 30.044273, 25.975224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.492474, 29.938416, 25.837002>,  <34.767796, 29.761984, 25.606634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492474, 29.938416, 25.837002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335449, 0.510403, -0.791810,
		-0.643201, -0.738200, -0.203355,
		-0.688307, 0.441078, 0.575920,
		34.285980, 30.070740, 26.009777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198315, 29.736267, 25.183327>,  <34.767796, 29.761984, 25.606634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198315, 29.736267, 25.183327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.102596, 30.030384, 25.436966>,  <34.045166, 30.206854, 25.589149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.102596, 30.030384, 25.436966>,  <34.198315, 29.736267, 25.183327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102596, 30.030384, 25.436966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257331, 0.581692, -0.771631,
		-0.936227, -0.347818, 0.050019,
		-0.239292, 0.735294, 0.634100,
		34.030807, 30.250973, 25.627195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503284, 29.884340, 25.042547>,  <34.198315, 29.736267, 25.183327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503284, 29.884340, 25.042547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.697819, 30.190350, 25.211407>,  <33.814541, 30.373955, 25.312723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.697819, 30.190350, 25.211407>,  <33.503284, 29.884340, 25.042547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697819, 30.190350, 25.211407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209497, 0.571137, -0.793671,
		-0.848284, 0.297554, 0.438037,
		0.486339, 0.765026, 0.422150,
		33.843719, 30.419857, 25.338051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780903, 29.628489, 24.826593>,  <33.503284, 29.884340, 25.042547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780903, 29.628489, 24.826593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.551708, 29.358490, 24.640663>,  <32.414192, 29.196491, 24.529104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.551708, 29.358490, 24.640663>,  <32.780903, 29.628489, 24.826593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551708, 29.358490, 24.640663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240617, -0.680719, 0.691899,
		-0.783445, 0.284606, 0.552461,
		-0.572990, -0.674997, -0.464825,
		32.379810, 29.155991, 24.501215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482849, 29.327690, 25.451891>,  <32.780903, 29.628489, 24.826593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482849, 29.327690, 25.451891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.408104, 29.073872, 25.151909>,  <32.363258, 28.921581, 24.971920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.408104, 29.073872, 25.151909>,  <32.482849, 29.327690, 25.451891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408104, 29.073872, 25.151909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055067, -0.768968, 0.636910,
		-0.980842, 0.077715, 0.178631,
		-0.186859, -0.634545, -0.749957,
		32.352047, 28.883509, 24.926922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835251, 29.099924, 25.525658>,  <32.482849, 29.327690, 25.451891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835251, 29.099924, 25.525658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.028412, 28.809361, 25.330051>,  <32.144310, 28.635023, 25.212687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.028412, 28.809361, 25.330051>,  <31.835251, 29.099924, 25.525658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028412, 28.809361, 25.330051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230162, -0.644101, 0.729492,
		-0.844886, -0.239719, -0.478229,
		0.482901, -0.726408, -0.489018,
		32.173283, 28.591438, 25.183346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572905, 28.517256, 25.751881>,  <31.835251, 29.099924, 25.525658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572905, 28.517256, 25.751881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.902460, 28.367764, 25.581455>,  <32.100193, 28.278069, 25.479200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.902460, 28.367764, 25.581455>,  <31.572905, 28.517256, 25.751881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902460, 28.367764, 25.581455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047976, -0.795062, 0.604628,
		-0.564714, -0.477707, -0.672974,
		0.823891, -0.373728, -0.426064,
		32.149628, 28.255646, 25.453636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396931, 27.809221, 25.623644>,  <31.572905, 28.517256, 25.751881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396931, 27.809221, 25.623644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.793928, 27.858074, 25.626289>,  <32.032127, 27.887386, 25.627876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.793928, 27.858074, 25.626289>,  <31.396931, 27.809221, 25.623644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793928, 27.858074, 25.626289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084249, -0.721832, 0.686922,
		0.088672, -0.681207, -0.726702,
		0.992492, 0.122135, 0.006615,
		32.091675, 27.894714, 25.628273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693108, 27.119719, 25.605593>,  <31.396931, 27.809221, 25.623644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693108, 27.119719, 25.605593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.974890, 27.348808, 25.773273>,  <32.143959, 27.486261, 25.873882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.974890, 27.348808, 25.773273>,  <31.693108, 27.119719, 25.605593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974890, 27.348808, 25.773273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184618, -0.718169, 0.670932,
		0.685317, -0.395248, -0.611653,
		0.704455, 0.572723, 0.419203,
		32.186226, 27.520626, 25.899035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160187, 26.605400, 25.852774>,  <31.693108, 27.119719, 25.605593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160187, 26.605400, 25.852774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.276833, 26.943787, 26.031345>,  <32.346821, 27.146818, 26.138489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.276833, 26.943787, 26.031345>,  <32.160187, 26.605400, 25.852774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276833, 26.943787, 26.031345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393359, -0.531483, 0.750196,
		0.871912, -0.043158, -0.487756,
		0.291611, 0.845969, 0.446430,
		32.364315, 27.197577, 26.165274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818176, 26.430660, 26.036650>,  <32.160187, 26.605400, 25.852774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818176, 26.430660, 26.036650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.683739, 26.713779, 26.285187>,  <32.603077, 26.883650, 26.434309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.683739, 26.713779, 26.285187>,  <32.818176, 26.430660, 26.036650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683739, 26.713779, 26.285187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437245, -0.467053, 0.768556,
		0.834180, 0.529987, -0.152506,
		-0.336096, 0.707796, 0.621340,
		32.582909, 26.926119, 26.471588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327881, 26.397379, 26.515930>,  <32.818176, 26.430660, 26.036650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327881, 26.397379, 26.515930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.016262, 26.576057, 26.691910>,  <32.829292, 26.683266, 26.797497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.016262, 26.576057, 26.691910>,  <33.327881, 26.397379, 26.515930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016262, 26.576057, 26.691910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252746, -0.418411, 0.872383,
		0.573770, 0.790818, 0.213059,
		-0.779042, 0.446698, 0.439948,
		32.782551, 26.710066, 26.823895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570923, 26.621666, 27.203119>,  <33.327881, 26.397379, 26.515930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570923, 26.621666, 27.203119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.171272, 26.608799, 27.213730>,  <32.931480, 26.601080, 27.220097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.171272, 26.608799, 27.213730>,  <33.570923, 26.621666, 27.203119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171272, 26.608799, 27.213730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037835, -0.432317, 0.900928,
		-0.017512, 0.901148, 0.433158,
		-0.999131, -0.032166, 0.026524,
		32.871532, 26.599150, 27.221687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412758, 26.966818, 27.865030>,  <33.570923, 26.621666, 27.203119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412758, 26.966818, 27.865030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.123329, 26.724232, 27.733189>,  <32.949673, 26.578680, 27.654083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.123329, 26.724232, 27.733189>,  <33.412758, 26.966818, 27.865030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123329, 26.724232, 27.733189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120044, -0.580808, 0.805141,
		-0.679727, 0.543012, 0.493060,
		-0.723575, -0.606465, -0.329605,
		32.906258, 26.542292, 27.634308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860409, 26.976698, 28.273300>,  <33.412758, 26.966818, 27.865030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860409, 26.976698, 28.273300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.810635, 26.623505, 28.092255>,  <32.780769, 26.411589, 27.983627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.810635, 26.623505, 28.092255>,  <32.860409, 26.976698, 28.273300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810635, 26.623505, 28.092255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042554, -0.450988, 0.891515,
		-0.991315, 0.130193, 0.018542,
		-0.124431, -0.882983, -0.452612,
		32.773304, 26.358610, 27.956470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341217, 26.622587, 28.626751>,  <32.860409, 26.976698, 28.273300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341217, 26.622587, 28.626751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.554527, 26.338837, 28.442402>,  <32.682514, 26.168587, 28.331793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.554527, 26.338837, 28.442402>,  <32.341217, 26.622587, 28.626751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554527, 26.338837, 28.442402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278500, -0.367211, 0.887465,
		-0.798784, -0.601615, 0.001737,
		0.533274, -0.709376, -0.460873,
		32.714508, 26.126024, 28.304140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168758, 26.140524, 28.964619>,  <32.341217, 26.622587, 28.626751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168758, 26.140524, 28.964619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.486153, 25.980999, 28.780739>,  <32.676590, 25.885284, 28.670410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.486153, 25.980999, 28.780739>,  <32.168758, 26.140524, 28.964619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486153, 25.980999, 28.780739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297891, -0.404160, 0.864821,
		-0.530695, -0.823165, -0.201893,
		0.793488, -0.398814, -0.459699,
		32.724201, 25.861355, 28.642830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599718, 25.744566, 28.607697>,  <32.168758, 26.140524, 28.964619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599718, 25.744566, 28.607697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.226845, 25.631512, 28.698166>,  <31.003120, 25.563679, 28.752447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.226845, 25.631512, 28.698166>,  <31.599718, 25.744566, 28.607697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226845, 25.631512, 28.698166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347618, 0.524626, -0.777129,
		0.100988, -0.803047, -0.587296,
		-0.932182, -0.282635, 0.226173,
		30.947189, 25.546721, 28.766018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200480, 25.547073, 27.980488>,  <31.599718, 25.744566, 28.607697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200480, 25.547073, 27.980488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.905640, 25.615238, 28.242065>,  <30.728735, 25.656137, 28.399012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.905640, 25.615238, 28.242065>,  <31.200480, 25.547073, 27.980488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905640, 25.615238, 28.242065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526127, 0.462597, -0.713578,
		-0.424117, -0.870036, -0.251320,
		-0.737099, 0.170414, 0.653945,
		30.684509, 25.666363, 28.438250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.701565, 25.310122, 27.605247>,  <31.200480, 25.547073, 27.980488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.701565, 25.310122, 27.605247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.569777, 25.567547, 27.881588>,  <30.490704, 25.722002, 28.047392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.569777, 25.567547, 27.881588>,  <30.701565, 25.310122, 27.605247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569777, 25.567547, 27.881588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430150, 0.549042, -0.716606,
		-0.840488, -0.533269, 0.095936,
		-0.329471, 0.643566, 0.690849,
		30.470936, 25.760616, 28.088842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.923876, 25.360346, 27.511456>,  <30.701565, 25.310122, 27.605247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.923876, 25.360346, 27.511456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.032923, 25.687931, 27.713436>,  <30.098351, 25.884483, 27.834623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.032923, 25.687931, 27.713436>,  <29.923876, 25.360346, 27.511456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.032923, 25.687931, 27.713436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493830, 0.569530, -0.657090,
		-0.825718, -0.070225, 0.559694,
		0.272619, 0.818965, 0.504951,
		30.114708, 25.933620, 27.864922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247124, 25.731485, 27.633940>,  <29.923876, 25.360346, 27.511456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.247124, 25.731485, 27.633940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.542561, 25.997639, 27.677296>,  <29.719824, 26.157330, 27.703310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.542561, 25.997639, 27.677296>,  <29.247124, 25.731485, 27.633940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542561, 25.997639, 27.677296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495612, 0.644913, -0.581769,
		-0.457000, 0.375971, 0.806099,
		0.738593, 0.665381, 0.108390,
		29.764139, 26.197252, 27.709812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898302, 26.394438, 27.867308>,  <29.247124, 25.731485, 27.633940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.898302, 26.394438, 27.867308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.238922, 26.523254, 27.701824>,  <29.443295, 26.600544, 27.602535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.238922, 26.523254, 27.701824>,  <28.898302, 26.394438, 27.867308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238922, 26.523254, 27.701824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459323, 0.838704, -0.292571,
		0.252758, 0.439163, 0.862119,
		0.851549, 0.322041, -0.413707,
		29.494387, 26.619867, 27.577713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.018261, 27.041542, 28.020288>,  <28.898302, 26.394438, 27.867308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.018261, 27.041542, 28.020288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.254345, 27.023197, 27.697910>,  <29.395996, 27.012190, 27.504484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.254345, 27.023197, 27.697910>,  <29.018261, 27.041542, 28.020288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.254345, 27.023197, 27.697910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372831, 0.870037, -0.322541,
		0.715995, 0.490848, 0.496406,
		0.590211, -0.045862, -0.805945,
		29.431408, 27.009438, 27.456127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309042, 27.682449, 28.017227>,  <29.018261, 27.041542, 28.020288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309042, 27.682449, 28.017227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.367331, 27.563957, 27.639652>,  <29.402304, 27.492863, 27.413107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.367331, 27.563957, 27.639652>,  <29.309042, 27.682449, 28.017227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367331, 27.563957, 27.639652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228704, 0.918189, -0.323456,
		0.962528, 0.263016, 0.066051,
		0.145721, -0.296229, -0.943935,
		29.411047, 27.475088, 27.356472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.751812, 28.213081, 27.837639>,  <29.309042, 27.682449, 28.017227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.751812, 28.213081, 27.837639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.588165, 28.045319, 27.513485>,  <29.489977, 27.944662, 27.318993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.588165, 28.045319, 27.513485>,  <29.751812, 28.213081, 27.837639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.588165, 28.045319, 27.513485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187884, 0.907799, -0.374968,
		0.892928, -0.001149, -0.450198,
		-0.409120, -0.419405, -0.810383,
		29.465429, 27.919497, 27.270370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116510, 28.410858, 27.155279>,  <29.751812, 28.213081, 27.837639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.116510, 28.410858, 27.155279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.741943, 28.306011, 27.061974>,  <29.517202, 28.243103, 27.005989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.741943, 28.306011, 27.061974>,  <30.116510, 28.410858, 27.155279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741943, 28.306011, 27.061974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145333, 0.894832, -0.422082,
		0.319368, -0.361345, -0.876033,
		-0.936420, -0.262116, -0.233266,
		29.461018, 28.227377, 26.991993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945898, 28.597927, 26.434246>,  <30.116510, 28.410858, 27.155279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945898, 28.597927, 26.434246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.581810, 28.560299, 26.595566>,  <29.363358, 28.537722, 26.692358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.581810, 28.560299, 26.595566>,  <29.945898, 28.597927, 26.434246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.581810, 28.560299, 26.595566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328774, 0.756296, -0.565618,
		-0.251806, -0.647431, -0.719323,
		-0.910220, -0.094069, 0.403299,
		29.308744, 28.532078, 26.716555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.428154, 28.561399, 25.855331>,  <29.945898, 28.597927, 26.434246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.428154, 28.561399, 25.855331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.241003, 28.664551, 26.193466>,  <29.128714, 28.726440, 26.396347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.241003, 28.664551, 26.193466>,  <29.428154, 28.561399, 25.855331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241003, 28.664551, 26.193466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378673, 0.805748, -0.455387,
		-0.798561, -0.533170, -0.279339,
		-0.467875, 0.257876, 0.845336,
		29.100641, 28.741913, 26.447067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832693, 28.797068, 25.651382>,  <29.428154, 28.561399, 25.855331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.832693, 28.797068, 25.651382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.833744, 28.945255, 26.022919>,  <28.834375, 29.034168, 26.245840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.833744, 28.945255, 26.022919>,  <28.832693, 28.797068, 25.651382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.833744, 28.945255, 26.022919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453049, 0.828492, -0.329163,
		-0.891482, -0.419945, 0.170018,
		0.002629, 0.370469, 0.928841,
		28.834532, 29.056396, 26.301571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.159067, 29.057634, 25.771051>,  <28.832693, 28.797068, 25.651382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.159067, 29.057634, 25.771051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.372736, 29.234489, 26.059265>,  <28.500938, 29.340603, 26.232193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.372736, 29.234489, 26.059265>,  <28.159067, 29.057634, 25.771051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.372736, 29.234489, 26.059265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417621, 0.879077, -0.229818,
		-0.735017, -0.178148, 0.654227,
		0.534175, 0.442139, 0.720535,
		28.532988, 29.367130, 26.275425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.431240, 36.145123, 13.320919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.821445, 36.129391, 13.234353>,  <43.055569, 36.119953, 13.182413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.821445, 36.129391, 13.234353>,  <42.431240, 36.145123, 13.320919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821445, 36.129391, 13.234353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157103, -0.564050, 0.810658,
		-0.153952, -0.824803, -0.544057,
		0.975509, -0.039330, -0.216416,
		43.114098, 36.117592, 13.169428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.667698, 35.398796, 13.222591>,  <42.431240, 36.145123, 13.320919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.667698, 35.398796, 13.222591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.932110, 35.658115, 13.373719>,  <43.090755, 35.813709, 13.464396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.932110, 35.658115, 13.373719>,  <42.667698, 35.398796, 13.222591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.932110, 35.658115, 13.373719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065400, -0.551380, 0.831687,
		0.747505, -0.525059, -0.406877,
		0.661029, 0.648300, 0.377820,
		43.130417, 35.852604, 13.487065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.232754, 34.995678, 13.557767>,  <42.667698, 35.398796, 13.222591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.232754, 34.995678, 13.557767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.207058, 35.363052, 13.713897>,  <43.191639, 35.583477, 13.807575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.207058, 35.363052, 13.713897>,  <43.232754, 34.995678, 13.557767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.207058, 35.363052, 13.713897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220242, -0.368440, 0.903186,
		0.973327, 0.143988, -0.178609,
		-0.064242, 0.918433, 0.390325,
		43.187786, 35.638584, 13.830995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.695885, 34.967258, 14.067912>,  <43.232754, 34.995678, 13.557767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.695885, 34.967258, 14.067912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.490788, 35.295258, 14.169654>,  <43.367729, 35.492058, 14.230700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.490788, 35.295258, 14.169654>,  <43.695885, 34.967258, 14.067912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.490788, 35.295258, 14.169654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003706, -0.298374, 0.954442,
		0.858537, 0.488436, 0.156027,
		-0.512739, 0.820002, 0.254355,
		43.336967, 35.541260, 14.245960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.063858, 35.290077, 14.683650>,  <43.695885, 34.967258, 14.067912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.063858, 35.290077, 14.683650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.684647, 35.416485, 14.698504>,  <43.457119, 35.492329, 14.707417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.684647, 35.416485, 14.698504>,  <44.063858, 35.290077, 14.683650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.684647, 35.416485, 14.698504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047074, -0.254719, 0.965869,
		0.314688, 0.913921, 0.256357,
		-0.948027, 0.316015, 0.037135,
		43.400238, 35.511288, 14.709645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.054871, 35.558720, 15.396786>,  <44.063858, 35.290077, 14.683650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.054871, 35.558720, 15.396786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.679794, 35.501957, 15.269919>,  <43.454746, 35.467899, 15.193800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.679794, 35.501957, 15.269919>,  <44.054871, 35.558720, 15.396786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.679794, 35.501957, 15.269919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303801, -0.108166, 0.946576,
		-0.168635, 0.983952, 0.058314,
		-0.937693, -0.141910, -0.317166,
		43.398487, 35.459385, 15.174769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.683262, 35.903614, 15.833175>,  <44.054871, 35.558720, 15.396786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.683262, 35.903614, 15.833175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.411457, 35.646381, 15.691918>,  <43.248375, 35.492043, 15.607164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.411457, 35.646381, 15.691918>,  <43.683262, 35.903614, 15.833175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.411457, 35.646381, 15.691918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350893, -0.137849, 0.926214,
		-0.644310, 0.753290, -0.131983,
		-0.679513, -0.643081, -0.353142,
		43.207603, 35.453457, 15.585976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.001972, 36.112392, 16.135515>,  <43.683262, 35.903614, 15.833175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.001972, 36.112392, 16.135515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.987316, 35.723083, 16.044834>,  <42.978523, 35.489498, 15.990425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.987316, 35.723083, 16.044834>,  <43.001972, 36.112392, 16.135515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.987316, 35.723083, 16.044834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197935, -0.215293, 0.956280,
		-0.979530, 0.079916, -0.184756,
		-0.036645, -0.973274, -0.226704,
		42.976322, 35.431103, 15.976823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.341972, 35.871128, 16.409077>,  <43.001972, 36.112392, 16.135515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.341972, 35.871128, 16.409077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.550457, 35.531471, 16.374905>,  <42.675549, 35.327679, 16.354401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.550457, 35.531471, 16.374905>,  <42.341972, 35.871128, 16.409077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.550457, 35.531471, 16.374905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242930, -0.243579, 0.938965,
		-0.818123, -0.468645, -0.333238,
		0.521211, -0.849141, -0.085430,
		42.706821, 35.276730, 16.349276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963699, 35.388847, 16.787279>,  <42.341972, 35.871128, 16.409077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963699, 35.388847, 16.787279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.317444, 35.206753, 16.745968>,  <42.529690, 35.097496, 16.721182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.317444, 35.206753, 16.745968>,  <41.963699, 35.388847, 16.787279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.317444, 35.206753, 16.745968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056433, -0.323884, 0.944412,
		-0.463379, -0.829374, -0.312121,
		0.884361, -0.455235, -0.103276,
		42.582752, 35.070183, 16.714985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889938, 34.867332, 17.151625>,  <41.963699, 35.388847, 16.787279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889938, 34.867332, 17.151625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.289238, 34.848034, 17.137959>,  <42.528820, 34.836456, 17.129759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.289238, 34.848034, 17.137959>,  <41.889938, 34.867332, 17.151625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.289238, 34.848034, 17.137959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006356, -0.487018, 0.873369,
		-0.058773, -0.872059, -0.485860,
		0.998251, -0.048242, -0.034166,
		42.588715, 34.833561, 17.127708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.903221, 34.207985, 17.249205>,  <41.889938, 34.867332, 17.151625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.903221, 34.207985, 17.249205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.225491, 34.419331, 17.356331>,  <42.418850, 34.546139, 17.420607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.225491, 34.419331, 17.356331>,  <41.903221, 34.207985, 17.249205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.225491, 34.419331, 17.356331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032121, -0.412477, 0.910401,
		0.591495, -0.742085, -0.315348,
		0.805669, 0.528368, 0.267815,
		42.467190, 34.577843, 17.436676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.159233, 33.828114, 17.749884>,  <41.903221, 34.207985, 17.249205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.159233, 33.828114, 17.749884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.359333, 34.173283, 17.778469>,  <42.479393, 34.380386, 17.795620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.359333, 34.173283, 17.778469>,  <42.159233, 33.828114, 17.749884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.359333, 34.173283, 17.778469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002110, -0.081320, 0.996686,
		0.865879, -0.498742, -0.038860,
		0.500249, 0.862927, 0.071465,
		42.509407, 34.432159, 17.799910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.662872, 33.743866, 18.234667>,  <42.159233, 33.828114, 17.749884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.662872, 33.743866, 18.234667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.624283, 34.140697, 18.266846>,  <42.601128, 34.378796, 18.286154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.624283, 34.140697, 18.266846>,  <42.662872, 33.743866, 18.234667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624283, 34.140697, 18.266846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167461, -0.095851, 0.981208,
		0.981147, 0.081192, 0.175382,
		-0.096477, 0.992079, 0.080448,
		42.595341, 34.438320, 18.290979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.153423, 34.025902, 18.724234>,  <42.662872, 33.743866, 18.234667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.153423, 34.025902, 18.724234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.870129, 34.306866, 18.695908>,  <42.700153, 34.475445, 18.678911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.870129, 34.306866, 18.695908>,  <43.153423, 34.025902, 18.724234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.870129, 34.306866, 18.695908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292016, -0.200150, 0.935236,
		0.642749, 0.683048, 0.346870,
		-0.708238, 0.702414, -0.070814,
		42.657658, 34.517590, 18.674664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.179569, 34.319386, 19.369305>,  <43.153423, 34.025902, 18.724234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.179569, 34.319386, 19.369305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.830898, 34.433723, 19.210072>,  <42.621696, 34.502327, 19.114532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.830898, 34.433723, 19.210072>,  <43.179569, 34.319386, 19.369305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.830898, 34.433723, 19.210072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409084, 0.022893, 0.912210,
		0.269861, 0.958003, 0.096978,
		-0.871680, 0.285842, -0.398081,
		42.569393, 34.519478, 19.090647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.975296, 34.842808, 19.789520>,  <43.179569, 34.319386, 19.369305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.975296, 34.842808, 19.789520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.644718, 34.707222, 19.609703>,  <42.446369, 34.625870, 19.501812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.644718, 34.707222, 19.609703>,  <42.975296, 34.842808, 19.789520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644718, 34.707222, 19.609703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429642, -0.136319, 0.892650,
		-0.363855, 0.930872, -0.032971,
		-0.826449, -0.338961, -0.449542,
		42.396782, 34.605534, 19.474840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.347630, 35.220108, 20.090557>,  <42.975296, 34.842808, 19.789520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.347630, 35.220108, 20.090557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.193436, 34.883083, 19.940098>,  <42.100918, 34.680870, 19.849821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.193436, 34.883083, 19.940098>,  <42.347630, 35.220108, 20.090557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.193436, 34.883083, 19.940098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565086, -0.106693, 0.818104,
		-0.729436, 0.527927, -0.434991,
		-0.385488, -0.842562, -0.376150,
		42.077789, 34.630314, 19.827253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614033, 35.268738, 20.208464>,  <42.347630, 35.220108, 20.090557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614033, 35.268738, 20.208464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.713772, 34.884052, 20.162975>,  <41.773617, 34.653240, 20.135681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.713772, 34.884052, 20.162975>,  <41.614033, 35.268738, 20.208464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.713772, 34.884052, 20.162975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452865, -0.219600, 0.864112,
		-0.856001, -0.163966, -0.490284,
		0.249352, -0.961713, -0.113723,
		41.788578, 34.595539, 20.128859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003391, 34.820984, 20.352551>,  <41.614033, 35.268738, 20.208464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003391, 34.820984, 20.352551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.345306, 34.622124, 20.412121>,  <41.550457, 34.502808, 20.447863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.345306, 34.622124, 20.412121>,  <41.003391, 34.820984, 20.352551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345306, 34.622124, 20.412121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320948, -0.280892, 0.904485,
		-0.407831, -0.820941, -0.399662,
		0.854790, -0.497148, 0.148923,
		41.601742, 34.472980, 20.456799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750866, 34.151539, 20.693396>,  <41.003391, 34.820984, 20.352551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750866, 34.151539, 20.693396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.140892, 34.204700, 20.764484>,  <41.374908, 34.236595, 20.807138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.140892, 34.204700, 20.764484>,  <40.750866, 34.151539, 20.693396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140892, 34.204700, 20.764484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135963, -0.275181, 0.951730,
		0.175392, -0.952162, -0.250250,
		0.975065, 0.132901, 0.177723,
		41.433411, 34.244572, 20.817801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069405, 34.481400, 20.932812>,  <40.750866, 34.151539, 20.693396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069405, 34.481400, 20.932812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.669952, 34.468899, 20.949627>,  <39.430283, 34.461399, 20.959717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.669952, 34.468899, 20.949627>,  <40.069405, 34.481400, 20.932812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669952, 34.468899, 20.949627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032093, -0.269218, -0.962545,
		0.041403, -0.962572, 0.267845,
		-0.998627, -0.031256, 0.042039,
		39.370365, 34.459522, 20.962238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817127, 33.852341, 20.595699>,  <40.069405, 34.481400, 20.932812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817127, 33.852341, 20.595699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.557938, 34.154896, 20.559898>,  <39.402424, 34.336430, 20.538418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.557938, 34.154896, 20.559898>,  <39.817127, 33.852341, 20.595699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557938, 34.154896, 20.559898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039297, -0.150552, -0.987821,
		-0.760647, -0.636567, 0.127277,
		-0.647976, 0.756384, -0.089502,
		39.363544, 34.381809, 20.533049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160408, 33.696285, 20.373640>,  <39.817127, 33.852341, 20.595699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160408, 33.696285, 20.373640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.209328, 34.071106, 20.242813>,  <39.238678, 34.295998, 20.164318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.209328, 34.071106, 20.242813>,  <39.160408, 33.696285, 20.373640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209328, 34.071106, 20.242813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166025, -0.305580, -0.937580,
		-0.978509, 0.168964, 0.118202,
		0.122297, 0.937055, -0.327065,
		39.246017, 34.352222, 20.144693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704994, 33.819401, 19.732553>,  <39.160408, 33.696285, 20.373640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704994, 33.819401, 19.732553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.914677, 34.159142, 19.707882>,  <39.040485, 34.362988, 19.693079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.914677, 34.159142, 19.707882>,  <38.704994, 33.819401, 19.732553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914677, 34.159142, 19.707882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064042, -0.111542, -0.991694,
		-0.849179, 0.515903, -0.112866,
		0.524207, 0.849354, -0.061680,
		39.071938, 34.413948, 19.689379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351948, 34.228172, 19.172974>,  <38.704994, 33.819401, 19.732553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351948, 34.228172, 19.172974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.731434, 34.352047, 19.198368>,  <38.959126, 34.426373, 19.213604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.731434, 34.352047, 19.198368>,  <38.351948, 34.228172, 19.172974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731434, 34.352047, 19.198368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012006, 0.165378, -0.986157,
		-0.315902, 0.936345, 0.153178,
		0.948716, 0.309690, 0.063485,
		39.016048, 34.444954, 19.217413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359650, 34.836975, 18.749392>,  <38.351948, 34.228172, 19.172974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359650, 34.836975, 18.749392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.739063, 34.713749, 18.778728>,  <38.966713, 34.639812, 18.796331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.739063, 34.713749, 18.778728>,  <38.359650, 34.836975, 18.749392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739063, 34.713749, 18.778728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144045, 0.213468, -0.966272,
		0.282023, 0.927105, 0.246858,
		0.948533, -0.308070, 0.073342,
		39.023624, 34.621326, 18.800732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809784, 35.346272, 18.556475>,  <38.359650, 34.836975, 18.749392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809784, 35.346272, 18.556475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.996597, 35.002712, 18.472412>,  <39.108685, 34.796577, 18.421974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.996597, 35.002712, 18.472412>,  <38.809784, 35.346272, 18.556475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996597, 35.002712, 18.472412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025295, 0.250548, -0.967774,
		0.883876, 0.446670, 0.138741,
		0.467037, -0.858902, -0.210155,
		39.136707, 34.745041, 18.409367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239681, 35.576206, 18.070990>,  <38.809784, 35.346272, 18.556475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239681, 35.576206, 18.070990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.255543, 35.179260, 18.024265>,  <39.265060, 34.941093, 17.996231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.255543, 35.179260, 18.024265>,  <39.239681, 35.576206, 18.070990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255543, 35.179260, 18.024265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166319, 0.121826, -0.978518,
		0.985274, 0.019377, 0.169880,
		0.039657, -0.992362, -0.116809,
		39.267441, 34.881550, 17.989223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838223, 35.488953, 17.698872>,  <39.239681, 35.576206, 18.070990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838223, 35.488953, 17.698872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.625999, 35.153286, 17.651020>,  <39.498665, 34.951885, 17.622309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.625999, 35.153286, 17.651020>,  <39.838223, 35.488953, 17.698872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625999, 35.153286, 17.651020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156458, 0.041756, -0.986802,
		0.833082, -0.542276, 0.109140,
		-0.530561, -0.839162, -0.119630,
		39.466831, 34.901539, 17.615131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217911, 35.081562, 17.349422>,  <39.838223, 35.488953, 17.698872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217911, 35.081562, 17.349422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.857563, 34.920765, 17.283909>,  <39.641354, 34.824287, 17.244600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.857563, 34.920765, 17.283909>,  <40.217911, 35.081562, 17.349422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857563, 34.920765, 17.283909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188060, -0.021376, -0.981925,
		0.391229, -0.915392, 0.094856,
		-0.900873, -0.401996, -0.163786,
		39.587299, 34.800167, 17.234774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350353, 34.636627, 16.835764>,  <40.217911, 35.081562, 17.349422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350353, 34.636627, 16.835764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.957298, 34.709908, 16.823975>,  <39.721466, 34.753876, 16.816902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.957298, 34.709908, 16.823975>,  <40.350353, 34.636627, 16.835764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957298, 34.709908, 16.823975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039533, 0.051511, -0.997890,
		-0.181298, -0.981725, -0.057859,
		-0.982634, 0.183203, -0.029472,
		39.662510, 34.764870, 16.815132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195747, 34.308128, 16.257000>,  <40.350353, 34.636627, 16.835764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195747, 34.308128, 16.257000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.896976, 34.564243, 16.328697>,  <39.717712, 34.717911, 16.371716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.896976, 34.564243, 16.328697>,  <40.195747, 34.308128, 16.257000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896976, 34.564243, 16.328697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064409, 0.198636, -0.977955,
		-0.661775, -0.742009, -0.107127,
		-0.746930, 0.640286, 0.179244,
		39.672897, 34.756329, 16.382471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666340, 34.104092, 15.836971>,  <40.195747, 34.308128, 16.257000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666340, 34.104092, 15.836971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.592220, 34.485107, 15.933579>,  <39.547749, 34.713718, 15.991544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.592220, 34.485107, 15.933579>,  <39.666340, 34.104092, 15.836971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592220, 34.485107, 15.933579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164442, 0.212253, -0.963279,
		-0.968826, -0.218211, 0.117307,
		-0.185299, 0.952540, 0.241520,
		39.536629, 34.770870, 16.006035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043671, 34.253242, 15.497348>,  <39.666340, 34.104092, 15.836971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043671, 34.253242, 15.497348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.208862, 34.609642, 15.572785>,  <39.307980, 34.823483, 15.618048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.208862, 34.609642, 15.572785>,  <39.043671, 34.253242, 15.497348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208862, 34.609642, 15.572785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055736, 0.181963, -0.981724,
		-0.909032, 0.415946, 0.025487,
		0.412982, 0.890998, 0.188594,
		39.332756, 34.876942, 15.629363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763943, 34.649330, 15.035489>,  <39.043671, 34.253242, 15.497348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763943, 34.649330, 15.035489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.071632, 34.863304, 15.175281>,  <39.256248, 34.991688, 15.259155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.071632, 34.863304, 15.175281>,  <38.763943, 34.649330, 15.035489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071632, 34.863304, 15.175281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198719, 0.319541, -0.926501,
		-0.607288, 0.782139, 0.139499,
		0.769228, 0.534932, 0.349479,
		39.302402, 35.023785, 15.280125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774265, 35.231464, 14.537513>,  <38.763943, 34.649330, 15.035489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774265, 35.231464, 14.537513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.141350, 35.238148, 14.696275>,  <39.361599, 35.242157, 14.791532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.141350, 35.238148, 14.696275>,  <38.774265, 35.231464, 14.537513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141350, 35.238148, 14.696275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388299, 0.173242, -0.905103,
		-0.083883, 0.984737, 0.152498,
		0.917708, 0.016708, 0.396905,
		39.416660, 35.243160, 14.815346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054039, 35.928970, 14.367260>,  <38.774265, 35.231464, 14.537513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054039, 35.928970, 14.367260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.359112, 35.682262, 14.445144>,  <39.542156, 35.534237, 14.491874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.359112, 35.682262, 14.445144>,  <39.054039, 35.928970, 14.367260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359112, 35.682262, 14.445144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469112, 0.320268, -0.823020,
		0.445258, 0.719041, 0.533597,
		0.762679, -0.616773, 0.194709,
		39.587917, 35.497231, 14.503556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627621, 36.317104, 14.587863>,  <39.054039, 35.928970, 14.367260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627621, 36.317104, 14.587863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.766499, 35.970627, 14.444102>,  <39.849823, 35.762741, 14.357845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.766499, 35.970627, 14.444102>,  <39.627621, 36.317104, 14.587863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766499, 35.970627, 14.444102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364199, 0.477700, -0.799475,
		0.864186, 0.146677, 0.481320,
		0.347191, -0.866192, -0.359402,
		39.870655, 35.710770, 14.336282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271072, 36.456360, 14.396191>,  <39.627621, 36.317104, 14.587863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271072, 36.456360, 14.396191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.198025, 36.123779, 14.186299>,  <40.154198, 35.924232, 14.060365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.198025, 36.123779, 14.186299>,  <40.271072, 36.456360, 14.396191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198025, 36.123779, 14.186299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359949, 0.440111, -0.822641,
		0.914924, -0.339105, 0.218908,
		-0.182618, -0.831450, -0.524729,
		40.143238, 35.874344, 14.028880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812344, 36.394821, 13.828046>,  <40.271072, 36.456360, 14.396191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812344, 36.394821, 13.828046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.515491, 36.145950, 13.728332>,  <40.337379, 35.996628, 13.668503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.515491, 36.145950, 13.728332>,  <40.812344, 36.394821, 13.828046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515491, 36.145950, 13.728332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105076, 0.259331, -0.960056,
		0.661972, -0.738677, -0.127080,
		-0.742127, -0.622177, -0.249287,
		40.292854, 35.959297, 13.653545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100883, 36.000751, 13.299850>,  <40.812344, 36.394821, 13.828046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.100883, 36.000751, 13.299850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.702629, 35.964680, 13.290263>,  <40.463676, 35.943035, 13.284511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.702629, 35.964680, 13.290263>,  <41.100883, 36.000751, 13.299850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702629, 35.964680, 13.290263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006147, 0.319705, -0.947497,
		0.093105, -0.943216, -0.318864,
		-0.995638, -0.090177, -0.023968,
		40.403938, 35.937626, 13.283072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<30.935669, 27.808678, 30.574272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.249487, 28.031982, 30.682224>,  <31.437777, 28.165966, 30.746996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.249487, 28.031982, 30.682224>,  <30.935669, 27.808678, 30.574272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249487, 28.031982, 30.682224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293132, -0.717445, 0.631938,
		0.546412, -0.416672, -0.726511,
		0.784543, 0.558262, 0.269881,
		31.484850, 28.199461, 30.763189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577883, 27.306757, 30.628925>,  <30.935669, 27.808678, 30.574272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577883, 27.306757, 30.628925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.646566, 27.629768, 30.854637>,  <31.687777, 27.823576, 30.990065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.646566, 27.629768, 30.854637>,  <31.577883, 27.306757, 30.628925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646566, 27.629768, 30.854637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147621, -0.587412, 0.795711,
		0.974024, -0.053332, -0.220073,
		0.171710, 0.807529, 0.564281,
		31.698080, 27.872026, 31.023922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132275, 27.084200, 31.022186>,  <31.577883, 27.306757, 30.628925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132275, 27.084200, 31.022186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.972750, 27.396198, 31.215080>,  <31.877033, 27.583397, 31.330816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.972750, 27.396198, 31.215080>,  <32.132275, 27.084200, 31.022186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972750, 27.396198, 31.215080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135261, -0.570151, 0.810329,
		0.907000, 0.257945, 0.332889,
		-0.398817, 0.779995, 0.482237,
		31.853106, 27.630198, 31.359751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354259, 26.959467, 31.632803>,  <32.132275, 27.084200, 31.022186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354259, 26.959467, 31.632803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.070068, 27.228699, 31.714958>,  <31.899553, 27.390238, 31.764252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.070068, 27.228699, 31.714958>,  <32.354259, 26.959467, 31.632803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070068, 27.228699, 31.714958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283157, -0.540621, 0.792181,
		0.644236, 0.504672, 0.574688,
		-0.710480, 0.673078, 0.205386,
		31.856924, 27.430622, 31.776573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460598, 27.100771, 32.439999>,  <32.354259, 26.959467, 31.632803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460598, 27.100771, 32.439999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.101490, 27.195599, 32.291512>,  <31.886024, 27.252495, 32.202419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.101490, 27.195599, 32.291512>,  <32.460598, 27.100771, 32.439999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101490, 27.195599, 32.291512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435064, -0.608800, 0.663387,
		-0.068729, 0.757074, 0.649704,
		-0.897773, 0.237069, -0.371217,
		31.832159, 27.266720, 32.180145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086323, 27.187584, 33.036804>,  <32.460598, 27.100771, 32.439999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086323, 27.187584, 33.036804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.790857, 27.144218, 32.770683>,  <31.613579, 27.118198, 32.611012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.790857, 27.144218, 32.770683>,  <32.086323, 27.187584, 33.036804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790857, 27.144218, 32.770683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429537, -0.684945, 0.588513,
		-0.519500, 0.720483, 0.459373,
		-0.738660, -0.108415, -0.665303,
		31.569260, 27.111694, 32.571091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530352, 27.199478, 33.401157>,  <32.086323, 27.187584, 33.036804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530352, 27.199478, 33.401157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.375111, 27.031380, 33.073067>,  <31.281965, 26.930521, 32.876213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.375111, 27.031380, 33.073067>,  <31.530352, 27.199478, 33.401157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375111, 27.031380, 33.073067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532111, -0.624482, 0.571733,
		-0.752484, 0.658343, 0.018747,
		-0.388104, -0.420245, -0.820225,
		31.258678, 26.905306, 32.827000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848400, 27.280144, 33.398106>,  <31.530352, 27.199478, 33.401157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848400, 27.280144, 33.398106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.907274, 26.964230, 33.159920>,  <30.942598, 26.774681, 33.017010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.907274, 26.964230, 33.159920>,  <30.848400, 27.280144, 33.398106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907274, 26.964230, 33.159920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509000, -0.576669, 0.639040,
		-0.848090, 0.209036, -0.486876,
		0.147184, -0.789783, -0.595466,
		30.951429, 26.727295, 32.981281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262180, 26.898848, 33.429268>,  <30.848400, 27.280144, 33.398106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262180, 26.898848, 33.429268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.518917, 26.613869, 33.315807>,  <30.672958, 26.442881, 33.247730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.518917, 26.613869, 33.315807>,  <30.262180, 26.898848, 33.429268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518917, 26.613869, 33.315807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443361, -0.646576, 0.620782,
		-0.625677, -0.272684, -0.730871,
		0.641841, -0.712448, -0.283651,
		30.711470, 26.400135, 33.230713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813356, 26.367596, 33.359871>,  <30.262180, 26.898848, 33.429268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.813356, 26.367596, 33.359871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.181536, 26.212166, 33.376762>,  <30.402443, 26.118908, 33.386898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.181536, 26.212166, 33.376762>,  <29.813356, 26.367596, 33.359871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181536, 26.212166, 33.376762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347298, -0.763489, 0.544489,
		-0.179331, -0.515841, -0.837704,
		0.920448, -0.388577, 0.042233,
		30.457670, 26.095592, 33.389431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811977, 25.635508, 33.407784>,  <29.813356, 26.367596, 33.359871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.811977, 25.635508, 33.407784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.175711, 25.704479, 33.559246>,  <30.393951, 25.745863, 33.650124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.175711, 25.704479, 33.559246>,  <29.811977, 25.635508, 33.407784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.175711, 25.704479, 33.559246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177206, -0.662907, 0.727428,
		0.376442, -0.728576, -0.572249,
		0.909335, 0.172428, 0.378654,
		30.448511, 25.756208, 33.672844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.096428, 24.881596, 33.627823>,  <29.811977, 25.635508, 33.407784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.096428, 24.881596, 33.627823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.284527, 25.193359, 33.793423>,  <30.397387, 25.380417, 33.892780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.284527, 25.193359, 33.793423>,  <30.096428, 24.881596, 33.627823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284527, 25.193359, 33.793423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068844, -0.435274, 0.897662,
		0.879846, -0.450623, -0.151028,
		0.470246, 0.779407, 0.413997,
		30.425600, 25.427181, 33.917622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727150, 24.258013, 33.331409>,  <30.096428, 24.881596, 33.627823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727150, 24.258013, 33.331409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.741903, 23.877586, 33.208698>,  <29.750755, 23.649330, 33.135071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.741903, 23.877586, 33.208698>,  <29.727150, 24.258013, 33.331409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741903, 23.877586, 33.208698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998936, 0.043600, -0.015068,
		0.027707, -0.305898, 0.951661,
		0.036883, -0.951066, -0.306780,
		29.752968, 23.592266, 33.116665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355890, 23.883669, 33.719482>,  <29.727150, 24.258013, 33.331409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355890, 23.883669, 33.719482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.228876, 23.680271, 33.399330>,  <30.152668, 23.558233, 33.207241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.228876, 23.680271, 33.399330>,  <30.355890, 23.883669, 33.719482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228876, 23.680271, 33.399330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945146, -0.101530, -0.310468,
		0.076609, -0.855059, 0.512841,
		-0.317537, -0.508494, -0.800377,
		30.133615, 23.527723, 33.159218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401808, 23.044188, 33.660488>,  <30.355890, 23.883669, 33.719482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401808, 23.044188, 33.660488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.641247, 22.754936, 33.522640>,  <30.784910, 22.581385, 33.439930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.641247, 22.754936, 33.522640>,  <30.401808, 23.044188, 33.660488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641247, 22.754936, 33.522640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416767, 0.648544, -0.636942,
		0.684093, 0.237646, 0.689594,
		0.598599, -0.723129, -0.344622,
		30.820827, 22.537998, 33.419254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076626, 23.402967, 33.530037>,  <30.401808, 23.044188, 33.660488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076626, 23.402967, 33.530037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.091805, 23.060143, 33.324512>,  <31.100912, 22.854446, 33.201199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.091805, 23.060143, 33.324512>,  <31.076626, 23.402967, 33.530037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.091805, 23.060143, 33.324512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277685, 0.502975, -0.818479,
		0.959922, -0.111618, 0.257081,
		0.037948, -0.857063, -0.513812,
		31.103189, 22.803024, 33.170368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605970, 23.474588, 33.172195>,  <31.076626, 23.402967, 33.530037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605970, 23.474588, 33.172195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.374990, 23.204857, 32.988094>,  <31.236403, 23.043018, 32.877636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.374990, 23.204857, 32.988094>,  <31.605970, 23.474588, 33.172195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374990, 23.204857, 32.988094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104388, 0.498129, -0.860796,
		0.809725, -0.545111, -0.217253,
		-0.577450, -0.674330, -0.460251,
		31.201756, 23.002558, 32.850018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973997, 23.376101, 32.510078>,  <31.605970, 23.474588, 33.172195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973997, 23.376101, 32.510078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.630835, 23.187023, 32.429523>,  <31.424936, 23.073576, 32.381191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.630835, 23.187023, 32.429523>,  <31.973997, 23.376101, 32.510078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630835, 23.187023, 32.429523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061978, 0.293878, -0.953831,
		0.510054, -0.830780, -0.222824,
		-0.857907, -0.472695, -0.201384,
		31.373463, 23.045216, 32.369110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099819, 22.842794, 31.959814>,  <31.973997, 23.376101, 32.510078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099819, 22.842794, 31.959814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.711800, 22.939259, 31.948170>,  <31.478989, 22.997137, 31.941183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.711800, 22.939259, 31.948170>,  <32.099819, 22.842794, 31.959814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711800, 22.939259, 31.948170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096569, 0.272892, -0.957186,
		-0.222890, -0.931328, -0.288007,
		-0.970049, 0.241159, -0.029112,
		31.420784, 23.011606, 31.939436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893341, 22.600092, 31.329088>,  <32.099819, 22.842794, 31.959814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893341, 22.600092, 31.329088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.610825, 22.867119, 31.423328>,  <31.441315, 23.027336, 31.479872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.610825, 22.867119, 31.423328>,  <31.893341, 22.600092, 31.329088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610825, 22.867119, 31.423328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016295, 0.317387, -0.948156,
		-0.707736, -0.673511, -0.213289,
		-0.706289, 0.667569, 0.235601,
		31.398937, 23.067389, 31.494009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.557598, 22.677736, 30.739756>,  <31.893341, 22.600092, 31.329088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.557598, 22.677736, 30.739756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.443670, 23.008904, 30.933014>,  <31.375313, 23.207603, 31.048969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.443670, 23.008904, 30.933014>,  <31.557598, 22.677736, 30.739756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443670, 23.008904, 30.933014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128132, 0.466615, -0.875130,
		-0.949978, -0.311161, -0.026819,
		-0.284821, 0.827918, 0.483144,
		31.358225, 23.257278, 31.077957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909321, 22.925280, 30.424686>,  <31.557598, 22.677736, 30.739756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909321, 22.925280, 30.424686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.029781, 23.249676, 30.625328>,  <31.102058, 23.444313, 30.745712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.029781, 23.249676, 30.625328>,  <30.909321, 22.925280, 30.424686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029781, 23.249676, 30.625328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304647, 0.580280, -0.755291,
		-0.903603, 0.074645, 0.421818,
		0.301151, 0.810989, 0.501603,
		31.120127, 23.492973, 30.775808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.362041, 23.432598, 30.486967>,  <30.909321, 22.925280, 30.424686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.362041, 23.432598, 30.486967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.689980, 23.654617, 30.543217>,  <30.886742, 23.787828, 30.576965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.689980, 23.654617, 30.543217>,  <30.362041, 23.432598, 30.486967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689980, 23.654617, 30.543217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446398, 0.773393, -0.450102,
		-0.358585, 0.306240, 0.881835,
		0.819844, 0.555050, 0.140622,
		30.935932, 23.821133, 30.585403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106865, 24.153070, 30.443718>,  <30.362041, 23.432598, 30.486967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106865, 24.153070, 30.443718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.505116, 24.177994, 30.415859>,  <30.744066, 24.192947, 30.399145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.505116, 24.177994, 30.415859>,  <30.106865, 24.153070, 30.443718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505116, 24.177994, 30.415859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091741, 0.793550, -0.601550,
		0.017786, 0.605307, 0.795793,
		0.995624, 0.062308, -0.069645,
		30.803802, 24.196686, 30.394966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.290297, 24.824917, 30.517714>,  <30.106865, 24.153070, 30.443718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.290297, 24.824917, 30.517714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.616514, 24.694046, 30.326782>,  <30.812244, 24.615524, 30.212223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.616514, 24.694046, 30.326782>,  <30.290297, 24.824917, 30.517714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616514, 24.694046, 30.326782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059803, 0.772774, -0.631858,
		0.575595, 0.543855, 0.610666,
		0.815545, -0.327175, -0.477329,
		30.861177, 24.595894, 30.183584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.799828, 25.349430, 30.459568>,  <30.290297, 24.824917, 30.517714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.799828, 25.349430, 30.459568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.872055, 25.093014, 30.161182>,  <30.915392, 24.939163, 29.982151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.872055, 25.093014, 30.161182>,  <30.799828, 25.349430, 30.459568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872055, 25.093014, 30.161182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160895, 0.728962, -0.665377,
		0.970313, 0.240168, 0.028488,
		0.180569, -0.641041, -0.745963,
		30.926226, 24.900702, 29.937393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046228, 25.785543, 29.985638>,  <30.799828, 25.349430, 30.459568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046228, 25.785543, 29.985638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.996994, 25.453175, 29.768597>,  <30.967453, 25.253754, 29.638372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.996994, 25.453175, 29.768597>,  <31.046228, 25.785543, 29.985638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996994, 25.453175, 29.768597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100440, 0.554382, -0.826180,
		0.987301, -0.047190, -0.151693,
		-0.123083, -0.830923, -0.542602,
		30.960070, 25.203897, 29.605816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493578, 25.891268, 29.328060>,  <31.046228, 25.785543, 29.985638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493578, 25.891268, 29.328060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.184977, 25.643204, 29.271233>,  <30.999815, 25.494366, 29.237137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.184977, 25.643204, 29.271233>,  <31.493578, 25.891268, 29.328060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184977, 25.643204, 29.271233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235838, 0.486152, -0.841449,
		0.590901, -0.615676, -0.521325,
		-0.771503, -0.620161, -0.142068,
		30.953526, 25.457155, 29.228613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073704, 25.402987, 29.134739>,  <31.493578, 25.891268, 29.328060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073704, 25.402987, 29.134739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.448875, 25.464565, 29.010426>,  <32.673977, 25.501513, 28.935837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.448875, 25.464565, 29.010426>,  <32.073704, 25.402987, 29.134739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448875, 25.464565, 29.010426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346824, -0.414802, 0.841221,
		0.000591, -0.896794, -0.442449,
		0.937930, 0.153950, -0.310784,
		32.730255, 25.510750, 28.917191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478664, 24.756725, 29.379110>,  <32.073704, 25.402987, 29.134739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478664, 24.756725, 29.379110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.737228, 25.055771, 29.318150>,  <32.892368, 25.235197, 29.281572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.737228, 25.055771, 29.318150>,  <32.478664, 24.756725, 29.379110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737228, 25.055771, 29.318150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529867, -0.296142, 0.794696,
		0.548992, -0.594454, -0.587565,
		0.646412, 0.747613, -0.152402,
		32.931152, 25.280054, 29.272429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187778, 24.515905, 29.374590>,  <32.478664, 24.756725, 29.379110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187778, 24.515905, 29.374590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.211098, 24.904362, 29.467102>,  <33.225090, 25.137436, 29.522610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.211098, 24.904362, 29.467102>,  <33.187778, 24.515905, 29.374590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211098, 24.904362, 29.467102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541552, -0.225389, 0.809890,
		0.838643, 0.078033, -0.539062,
		0.058301, 0.971139, 0.231279,
		33.228588, 25.195704, 29.536486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907726, 24.632832, 29.414461>,  <33.187778, 24.515905, 29.374590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907726, 24.632832, 29.414461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.728374, 24.916370, 29.632267>,  <33.620762, 25.086493, 29.762951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.728374, 24.916370, 29.632267>,  <33.907726, 24.632832, 29.414461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728374, 24.916370, 29.632267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492890, -0.312118, 0.812183,
		0.745665, 0.632551, -0.209436,
		-0.448379, 0.708845, 0.544513,
		33.593861, 25.129025, 29.795622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497269, 24.781652, 29.873795>,  <33.907726, 24.632832, 29.414461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497269, 24.781652, 29.873795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.181381, 24.951900, 30.050514>,  <33.991848, 25.054050, 30.156546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.181381, 24.951900, 30.050514>,  <34.497269, 24.781652, 29.873795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181381, 24.951900, 30.050514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424710, -0.140349, 0.894385,
		0.442675, 0.893951, -0.069929,
		-0.789722, 0.425621, 0.441799,
		33.944466, 25.079586, 30.183054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829849, 25.260851, 30.387548>,  <34.497269, 24.781652, 29.873795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829849, 25.260851, 30.387548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.448647, 25.192749, 30.487785>,  <34.219925, 25.151888, 30.547928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.448647, 25.192749, 30.487785>,  <34.829849, 25.260851, 30.387548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448647, 25.192749, 30.487785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282542, -0.200946, 0.937972,
		-0.109340, 0.964693, 0.239607,
		-0.953003, -0.170257, 0.250594,
		34.162746, 25.141672, 30.562963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768894, 25.354906, 31.127731>,  <34.829849, 25.260851, 30.387548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768894, 25.354906, 31.127731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.452877, 25.128071, 31.034565>,  <34.263268, 24.991970, 30.978666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.452877, 25.128071, 31.034565>,  <34.768894, 25.354906, 31.127731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452877, 25.128071, 31.034565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089342, -0.482366, 0.871402,
		-0.606513, 0.667632, 0.431753,
		-0.790038, -0.567090, -0.232914,
		34.215866, 24.957945, 30.964691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651119, 25.897879, 31.668118>,  <34.768894, 25.354906, 31.127731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651119, 25.897879, 31.668118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.850716, 26.164146, 31.890072>,  <34.970474, 26.323906, 32.023243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.850716, 26.164146, 31.890072>,  <34.651119, 25.897879, 31.668118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850716, 26.164146, 31.890072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032412, 0.654181, -0.755643,
		-0.866002, 0.359073, 0.348005,
		0.498989, 0.665668, 0.554884,
		35.000412, 26.363846, 32.056538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171741, 26.522118, 31.684706>,  <34.651119, 25.897879, 31.668118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171741, 26.522118, 31.684706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.556004, 26.601486, 31.762451>,  <34.786560, 26.649107, 31.809097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.556004, 26.601486, 31.762451>,  <34.171741, 26.522118, 31.684706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556004, 26.601486, 31.762451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013150, 0.731473, -0.681744,
		-0.277442, 0.652363, 0.705300,
		0.960652, 0.198419, 0.194363,
		34.844200, 26.661013, 31.820761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277927, 27.220757, 31.743774>,  <34.171741, 26.522118, 31.684706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277927, 27.220757, 31.743774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.639477, 27.084637, 31.640076>,  <34.856407, 27.002964, 31.577856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.639477, 27.084637, 31.640076>,  <34.277927, 27.220757, 31.743774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639477, 27.084637, 31.640076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002968, 0.600995, -0.799247,
		0.427791, 0.723187, 0.542213,
		0.903873, -0.340302, -0.259247,
		34.910637, 26.982546, 31.562302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563751, 27.791981, 31.309481>,  <34.277927, 27.220757, 31.743774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563751, 27.791981, 31.309481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.799252, 27.478046, 31.232124>,  <34.940552, 27.289686, 31.185711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.799252, 27.478046, 31.232124>,  <34.563751, 27.791981, 31.309481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799252, 27.478046, 31.232124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187398, 0.365268, -0.911845,
		0.786290, 0.500610, 0.362129,
		0.588753, -0.784837, -0.193393,
		34.975876, 27.242596, 31.174107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197086, 28.087166, 31.097950>,  <34.563751, 27.791981, 31.309481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197086, 28.087166, 31.097950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.195770, 27.711464, 30.960667>,  <35.194981, 27.486042, 30.878298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.195770, 27.711464, 30.960667>,  <35.197086, 28.087166, 31.097950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195770, 27.711464, 30.960667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262921, 0.330320, -0.906511,
		0.964812, -0.093222, 0.245862,
		-0.003293, -0.939254, -0.343206,
		35.194782, 27.429688, 30.857704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793461, 27.992228, 30.847925>,  <35.197086, 28.087166, 31.097950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793461, 27.992228, 30.847925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.534061, 27.740723, 30.676296>,  <35.378422, 27.589819, 30.573318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.534061, 27.740723, 30.676296>,  <35.793461, 27.992228, 30.847925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534061, 27.740723, 30.676296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152778, 0.444692, -0.882558,
		0.745727, -0.637891, -0.192321,
		-0.648499, -0.628764, -0.429074,
		35.339512, 27.552094, 30.547573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019501, 27.993656, 30.214731>,  <35.793461, 27.992228, 30.847925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019501, 27.993656, 30.214731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.682701, 27.782013, 30.172611>,  <35.480621, 27.655027, 30.147339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.682701, 27.782013, 30.172611>,  <36.019501, 27.993656, 30.214731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682701, 27.782013, 30.172611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038196, 0.136233, -0.989940,
		0.538130, -0.837548, -0.094497,
		-0.841996, -0.529107, -0.105302,
		35.430103, 27.623281, 30.141020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.471809, 27.639492, 36.025299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.186916, 27.461777, 35.807922>,  <32.015980, 27.355146, 35.677498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.186916, 27.461777, 35.807922>,  <32.471809, 27.639492, 36.025299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186916, 27.461777, 35.807922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060852, 0.732202, -0.678364,
		0.699299, -0.516223, -0.494463,
		-0.712234, -0.444291, -0.543442,
		31.973246, 27.328489, 35.644890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711670, 27.590929, 35.339775>,  <32.471809, 27.639492, 36.025299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711670, 27.590929, 35.339775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.311928, 27.589256, 35.325535>,  <32.072083, 27.588253, 35.316990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.311928, 27.589256, 35.325535>,  <32.711670, 27.590929, 35.339775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311928, 27.589256, 35.325535> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018704, 0.786423, -0.617405,
		0.030577, -0.617674, -0.785839,
		-0.999357, -0.004180, -0.035600,
		32.012119, 27.588003, 35.314854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510483, 27.725443, 34.720325>,  <32.711670, 27.590929, 35.339775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510483, 27.725443, 34.720325> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.151161, 27.806759, 34.876137>,  <31.935570, 27.855549, 34.969624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.151161, 27.806759, 34.876137>,  <32.510483, 27.725443, 34.720325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151161, 27.806759, 34.876137> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174590, 0.648388, -0.741020,
		-0.403206, -0.733666, -0.546955,
		-0.898300, 0.203291, 0.389525,
		31.881672, 27.867746, 34.992992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066616, 27.724424, 34.199612>,  <32.510483, 27.725443, 34.720325>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066616, 27.724424, 34.199612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.857393, 27.932701, 34.469513>,  <31.731859, 28.057667, 34.631454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.857393, 27.932701, 34.469513>,  <32.066616, 27.724424, 34.199612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857393, 27.932701, 34.469513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230548, 0.675733, -0.700166,
		-0.820522, -0.521791, -0.233404,
		-0.523059, 0.520691, 0.674753,
		31.700476, 28.088909, 34.671940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413828, 27.886326, 33.849575>,  <32.066616, 27.724424, 34.199612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413828, 27.886326, 33.849575> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.463160, 28.156239, 34.140633>,  <31.492758, 28.318186, 34.315266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.463160, 28.156239, 34.140633>,  <31.413828, 27.886326, 33.849575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463160, 28.156239, 34.140633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117828, 0.738009, -0.664424,
		-0.985346, -0.003794, 0.170526,
		0.123328, 0.674780, 0.727641,
		31.500158, 28.358673, 34.358925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925331, 28.459747, 33.719971>,  <31.413828, 27.886326, 33.849575>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925331, 28.459747, 33.719971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.195160, 28.622162, 33.966576>,  <31.357058, 28.719610, 34.114536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.195160, 28.622162, 33.966576>,  <30.925331, 28.459747, 33.719971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195160, 28.622162, 33.966576> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109155, 0.771099, -0.627289,
		-0.730092, 0.490448, 0.475842,
		0.674574, 0.406038, 0.616509,
		31.397532, 28.743973, 34.151527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745056, 29.208567, 33.940643>,  <30.925331, 28.459747, 33.719971>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745056, 29.208567, 33.940643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.140583, 29.165970, 33.982399>,  <31.377899, 29.140411, 34.007454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.140583, 29.165970, 33.982399>,  <30.745056, 29.208567, 33.940643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140583, 29.165970, 33.982399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148810, 0.750213, -0.644233,
		-0.009710, 0.652564, 0.757671,
		0.988818, -0.106493, 0.104393,
		31.437229, 29.134022, 34.013718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972033, 29.886650, 34.200203>,  <30.745056, 29.208567, 33.940643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972033, 29.886650, 34.200203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.296343, 29.694130, 34.066940>,  <31.490929, 29.578617, 33.986984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.296343, 29.694130, 34.066940>,  <30.972033, 29.886650, 34.200203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296343, 29.694130, 34.066940> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325496, 0.843741, -0.426794,
		0.486511, 0.237595, 0.840747,
		0.810777, -0.481300, -0.333153,
		31.539576, 29.549740, 33.966995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391136, 30.401619, 34.082993>,  <30.972033, 29.886650, 34.200203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391136, 30.401619, 34.082993> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.577467, 30.096794, 33.903095>,  <31.689266, 29.913900, 33.795158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.577467, 30.096794, 33.903095>,  <31.391136, 30.401619, 34.082993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577467, 30.096794, 33.903095> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508714, 0.646501, -0.568547,
		0.724027, 0.036053, 0.688828,
		0.465826, -0.762061, -0.449744,
		31.717215, 29.868176, 33.768173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107235, 30.591436, 34.055569>,  <31.391136, 30.401619, 34.082993>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107235, 30.591436, 34.055569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.042328, 30.338802, 33.752316>,  <32.003384, 30.187222, 33.570362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.042328, 30.338802, 33.752316>,  <32.107235, 30.591436, 34.055569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042328, 30.338802, 33.752316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539702, 0.586403, -0.604031,
		0.826070, -0.507180, 0.245716,
		-0.162264, -0.631586, -0.758136,
		31.993649, 30.149326, 33.524876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746990, 30.495979, 33.655598>,  <32.107235, 30.591436, 34.055569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746990, 30.495979, 33.655598> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.464359, 30.407345, 33.386780>,  <32.294781, 30.354164, 33.225487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.464359, 30.407345, 33.386780>,  <32.746990, 30.495979, 33.655598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464359, 30.407345, 33.386780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363944, 0.700682, -0.613669,
		0.606872, -0.678192, -0.414441,
		-0.706577, -0.221585, -0.672049,
		32.252388, 30.340870, 33.185165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104221, 30.599905, 33.032074>,  <32.746990, 30.495979, 33.655598>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104221, 30.599905, 33.032074> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.714714, 30.574936, 32.944553>,  <32.481010, 30.559954, 32.892040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.714714, 30.574936, 32.944553>,  <33.104221, 30.599905, 33.032074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714714, 30.574936, 32.944553> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094651, 0.763351, -0.639012,
		0.206912, -0.642961, -0.737420,
		-0.973770, -0.062422, -0.218803,
		32.422585, 30.556210, 32.878914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596352, 30.183649, 32.546207>,  <33.104221, 30.599905, 33.032074>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596352, 30.183649, 32.546207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.900612, 30.410049, 32.673359>,  <34.083168, 30.545889, 32.749649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.900612, 30.410049, 32.673359>,  <33.596352, 30.183649, 32.546207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900612, 30.410049, 32.673359> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224069, -0.688509, 0.689746,
		0.609260, -0.453431, -0.650541,
		0.760655, 0.566000, 0.317881,
		34.128807, 30.579849, 32.768723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195744, 29.684456, 32.538094>,  <33.596352, 30.183649, 32.546207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195744, 29.684456, 32.538094> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.268360, 29.996979, 32.776958>,  <34.311928, 30.184492, 32.920277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.268360, 29.996979, 32.776958>,  <34.195744, 29.684456, 32.538094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268360, 29.996979, 32.776958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300347, -0.622287, 0.722876,
		0.936395, 0.048127, -0.347631,
		0.181537, 0.781308, 0.597162,
		34.322823, 30.231371, 32.956108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745853, 29.415289, 32.797859>,  <34.195744, 29.684456, 32.538094>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745853, 29.415289, 32.797859> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.672405, 29.711376, 33.056583>,  <34.628338, 29.889029, 33.211819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.672405, 29.711376, 33.056583>,  <34.745853, 29.415289, 32.797859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672405, 29.711376, 33.056583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473853, -0.509848, 0.717996,
		0.861247, 0.438332, -0.257135,
		-0.183621, 0.740216, 0.646810,
		34.617317, 29.933441, 33.250626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302654, 29.553951, 33.190056>,  <34.745853, 29.415289, 32.797859>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302654, 29.553951, 33.190056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.992596, 29.689064, 33.403618>,  <34.806561, 29.770132, 33.531754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.992596, 29.689064, 33.403618>,  <35.302654, 29.553951, 33.190056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992596, 29.689064, 33.403618> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291358, -0.558721, 0.776493,
		0.560588, 0.757452, 0.334675,
		-0.775146, 0.337782, 0.533902,
		34.760052, 29.790400, 33.563789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469345, 29.597319, 33.821487>,  <35.302654, 29.553951, 33.190056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469345, 29.597319, 33.821487> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.073200, 29.598598, 33.876873>,  <34.835514, 29.599367, 33.910103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.073200, 29.598598, 33.876873>,  <35.469345, 29.597319, 33.821487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073200, 29.598598, 33.876873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110343, -0.585983, 0.802775,
		0.083705, 0.810317, 0.579983,
		-0.990362, 0.003199, 0.138462,
		34.776093, 29.599558, 33.918411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394253, 29.637579, 34.622253>,  <35.469345, 29.597319, 33.821487>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394253, 29.637579, 34.622253> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.045059, 29.519234, 34.467148>,  <34.835545, 29.448227, 34.374084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.045059, 29.519234, 34.467148>,  <35.394253, 29.637579, 34.622253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045059, 29.519234, 34.467148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143328, -0.604308, 0.783753,
		-0.466214, 0.739782, 0.485146,
		-0.872984, -0.295862, -0.387768,
		34.783165, 29.430475, 34.350819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903442, 29.726965, 35.103344>,  <35.394253, 29.637579, 34.622253>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903442, 29.726965, 35.103344> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.739449, 29.465965, 34.848423>,  <34.641052, 29.309366, 34.695469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.739449, 29.465965, 34.848423>,  <34.903442, 29.726965, 35.103344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739449, 29.465965, 34.848423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138711, -0.645995, 0.750633,
		-0.901481, 0.396152, 0.174342,
		-0.409989, -0.652498, -0.637303,
		34.616451, 29.270216, 34.657230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453442, 29.440420, 35.514103>,  <34.903442, 29.726965, 35.103344>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453442, 29.440420, 35.514103> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.463787, 29.183628, 35.207588>,  <34.469994, 29.029552, 35.023682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.463787, 29.183628, 35.207588>,  <34.453442, 29.440420, 35.514103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463787, 29.183628, 35.207588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182677, -0.756667, 0.627761,
		-0.982833, 0.123748, -0.136843,
		0.025860, -0.641982, -0.766283,
		34.471546, 28.991034, 34.977703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899361, 28.947800, 35.518066>,  <34.453442, 29.440420, 35.514103>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899361, 28.947800, 35.518066> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.150375, 28.746799, 35.280182>,  <34.300983, 28.626200, 35.137451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.150375, 28.746799, 35.280182>,  <33.899361, 28.947800, 35.518066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150375, 28.746799, 35.280182> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201223, -0.842566, 0.499592,
		-0.752133, -0.193843, -0.629858,
		0.627539, -0.502501, -0.594716,
		34.338638, 28.596048, 35.101768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477177, 28.434759, 35.273056>,  <33.899361, 28.947800, 35.518066>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477177, 28.434759, 35.273056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.854027, 28.315945, 35.210873>,  <34.080135, 28.244656, 35.173561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.854027, 28.315945, 35.210873>,  <33.477177, 28.434759, 35.273056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854027, 28.315945, 35.210873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164925, -0.814342, 0.556459,
		-0.291887, -0.498616, -0.816201,
		0.942126, -0.297035, -0.155462,
		34.136665, 28.226833, 35.164234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430885, 27.745028, 35.121609>,  <33.477177, 28.434759, 35.273056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430885, 27.745028, 35.121609> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.804802, 27.771851, 35.261135>,  <34.029152, 27.787945, 35.344849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.804802, 27.771851, 35.261135>,  <33.430885, 27.745028, 35.121609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804802, 27.771851, 35.261135> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111192, -0.877414, 0.466669,
		0.337349, -0.475023, -0.812742,
		0.934790, 0.067059, 0.348813,
		34.085239, 27.791969, 35.365780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653973, 27.157574, 34.925423>,  <33.430885, 27.745028, 35.121609>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653973, 27.157574, 34.925423> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.894390, 27.278988, 35.221157>,  <34.038639, 27.351837, 35.398598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.894390, 27.278988, 35.221157>,  <33.653973, 27.157574, 34.925423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894390, 27.278988, 35.221157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058580, -0.905851, 0.419526,
		0.797066, -0.295463, -0.526675,
		0.601044, 0.303537, 0.739331,
		34.074703, 27.370049, 35.442955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114029, 26.610922, 35.092819>,  <33.653973, 27.157574, 34.925423>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114029, 26.610922, 35.092819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.106548, 26.840797, 35.420082>,  <34.102062, 26.978724, 35.616440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.106548, 26.840797, 35.420082>,  <34.114029, 26.610922, 35.092819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106548, 26.840797, 35.420082> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189664, -0.805481, 0.561451,
		0.981671, -0.144676, 0.124061,
		-0.018700, 0.574690, 0.818157,
		34.100937, 27.013205, 35.665531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455727, 26.258640, 35.563728>,  <34.114029, 26.610922, 35.092819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455727, 26.258640, 35.563728> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.241943, 26.514946, 35.784195>,  <34.113674, 26.668730, 35.916473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.241943, 26.514946, 35.784195>,  <34.455727, 26.258640, 35.563728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241943, 26.514946, 35.784195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348650, -0.761184, 0.546847,
		0.769936, 0.100102, 0.630220,
		-0.534454, 0.640764, 0.551162,
		34.081608, 26.707174, 35.949543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349304, 25.980406, 34.822163>,  <34.455727, 26.258640, 35.563728>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349304, 25.980406, 34.822163> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.607807, 25.678429, 34.777603>,  <34.762909, 25.497242, 34.750866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.607807, 25.678429, 34.777603>,  <34.349304, 25.980406, 34.822163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607807, 25.678429, 34.777603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403291, 0.461807, -0.789994,
		0.647847, 0.465614, 0.602908,
		0.646260, -0.754942, -0.111402,
		34.801685, 25.451946, 34.744183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058891, 26.266243, 34.864964>,  <34.349304, 25.980406, 34.822163>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058891, 26.266243, 34.864964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.023018, 25.935516, 34.642853>,  <35.001495, 25.737080, 34.509586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.023018, 25.935516, 34.642853>,  <35.058891, 26.266243, 34.864964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023018, 25.935516, 34.642853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436353, 0.468548, -0.768152,
		0.895295, -0.311184, 0.318765,
		-0.089680, -0.826817, -0.555275,
		34.996113, 25.687471, 34.476269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535137, 26.362434, 34.426952>,  <35.058891, 26.266243, 34.864964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535137, 26.362434, 34.426952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.328873, 26.074879, 34.240494>,  <35.205112, 25.902346, 34.128620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.328873, 26.074879, 34.240494>,  <35.535137, 26.362434, 34.426952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328873, 26.074879, 34.240494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368742, 0.304885, -0.878108,
		0.773382, -0.624695, 0.107867,
		-0.515664, -0.718889, -0.466144,
		35.174175, 25.859213, 34.100651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945034, 26.183493, 33.856972>,  <35.535137, 26.362434, 34.426952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945034, 26.183493, 33.856972> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.583935, 26.037086, 33.766571>,  <35.367275, 25.949244, 33.712330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.583935, 26.037086, 33.766571>,  <35.945034, 26.183493, 33.856972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583935, 26.037086, 33.766571> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192876, 0.125204, -0.973202,
		0.384503, -0.922148, -0.042432,
		-0.902749, -0.366015, -0.226002,
		35.313110, 25.927282, 33.698769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023567, 25.706865, 33.235798>,  <35.945034, 26.183493, 33.856972>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023567, 25.706865, 33.235798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.635742, 25.803646, 33.250759>,  <35.403046, 25.861715, 33.259735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.635742, 25.803646, 33.250759>,  <36.023567, 25.706865, 33.235798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635742, 25.803646, 33.250759> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028646, 0.263851, -0.964138,
		-0.243147, -0.933724, -0.262752,
		-0.969566, 0.241954, 0.037407,
		35.344872, 25.876232, 33.261982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717945, 25.434153, 32.625557>,  <36.023567, 25.706865, 33.235798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717945, 25.434153, 32.625557> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.464485, 25.716927, 32.751247>,  <35.312408, 25.886591, 32.826660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.464485, 25.716927, 32.751247>,  <35.717945, 25.434153, 32.625557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464485, 25.716927, 32.751247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008721, 0.412678, -0.910836,
		-0.773574, -0.574406, -0.267657,
		-0.633645, 0.706933, 0.314227,
		35.274391, 25.929007, 32.845516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148724, 25.405626, 32.166466>,  <35.717945, 25.434153, 32.625557>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148724, 25.405626, 32.166466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.154259, 25.779354, 32.308933>,  <35.157581, 26.003590, 32.394413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.154259, 25.779354, 32.308933>,  <35.148724, 25.405626, 32.166466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154259, 25.779354, 32.308933> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089264, 0.355940, -0.930236,
		-0.995912, -0.018917, 0.088327,
		0.013842, 0.934318, 0.356173,
		35.158413, 26.059649, 32.415787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657341, 25.216040, 31.845160>,  <35.148724, 25.405626, 32.166466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657341, 25.216040, 31.845160> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.420979, 24.984760, 31.620121>,  <34.279160, 24.845993, 31.485098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.420979, 24.984760, 31.620121>,  <34.657341, 25.216040, 31.845160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420979, 24.984760, 31.620121> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138935, -0.614015, 0.776970,
		-0.794688, 0.537280, 0.282492,
		-0.590905, -0.578201, -0.562597,
		34.243706, 24.811300, 31.451342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032410, 24.983196, 32.234325>,  <34.657341, 25.216040, 31.845160>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032410, 24.983196, 32.234325> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.052174, 24.697186, 31.955387>,  <34.064034, 24.525579, 31.788023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.052174, 24.697186, 31.955387>,  <34.032410, 24.983196, 32.234325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052174, 24.697186, 31.955387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306154, -0.675432, 0.670865,
		-0.950699, 0.180349, -0.252282,
		0.049410, -0.715028, -0.697347,
		34.066998, 24.482677, 31.746183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373463, 24.604746, 32.311825>,  <34.032410, 24.983196, 32.234325>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373463, 24.604746, 32.311825> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.619171, 24.367474, 32.103668>,  <33.766594, 24.225109, 31.978773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.619171, 24.367474, 32.103668>,  <33.373463, 24.604746, 32.311825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619171, 24.367474, 32.103668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248106, -0.771219, 0.586230,
		-0.749077, -0.230991, -0.620909,
		0.614270, -0.593182, -0.520392,
		33.803452, 24.189518, 31.947550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900600, 24.168282, 32.080112>,  <33.373463, 24.604746, 32.311825>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900600, 24.168282, 32.080112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.264584, 24.002399, 32.079426>,  <33.482971, 23.902870, 32.079014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.264584, 24.002399, 32.079426>,  <32.900600, 24.168282, 32.080112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264584, 24.002399, 32.079426> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381892, -0.839551, 0.386411,
		-0.161684, -0.350962, -0.922325,
		0.909954, -0.414705, -0.001712,
		33.537571, 23.877989, 32.078911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666500, 23.571337, 31.952383>,  <32.900600, 24.168282, 32.080112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666500, 23.571337, 31.952383> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.035824, 23.514256, 32.095005>,  <33.257420, 23.480007, 32.180576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.035824, 23.514256, 32.095005>,  <32.666500, 23.571337, 31.952383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035824, 23.514256, 32.095005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306793, -0.832544, 0.461246,
		0.231026, -0.535263, -0.812478,
		0.923312, -0.142703, 0.356554,
		33.312817, 23.471445, 32.201973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858150, 22.840195, 31.946861>,  <32.666500, 23.571337, 31.952383>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858150, 22.840195, 31.946861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.111427, 22.988762, 32.218483>,  <33.263393, 23.077902, 32.381454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.111427, 22.988762, 32.218483>,  <32.858150, 22.840195, 31.946861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111427, 22.988762, 32.218483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148656, -0.802646, 0.577634,
		0.759581, -0.466701, -0.453019,
		0.633196, 0.371416, 0.679053,
		33.301388, 23.100187, 32.422199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076698, 22.301277, 32.250996>,  <32.858150, 22.840195, 31.946861>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076698, 22.301277, 32.250996> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.208282, 22.572193, 32.514225>,  <33.287235, 22.734743, 32.672161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.208282, 22.572193, 32.514225>,  <33.076698, 22.301277, 32.250996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208282, 22.572193, 32.514225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071526, -0.676987, 0.732511,
		0.941630, -0.288039, -0.174259,
		0.328963, 0.677291, 0.658074,
		33.306973, 22.775381, 32.711647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703514, 22.019381, 32.637745>,  <33.076698, 22.301277, 32.250996>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703514, 22.019381, 32.637745> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.487438, 22.293221, 32.833508>,  <33.357792, 22.457523, 32.950966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.487438, 22.293221, 32.833508>,  <33.703514, 22.019381, 32.637745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487438, 22.293221, 32.833508> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345487, -0.710701, 0.612815,
		0.767354, 0.161954, 0.620434,
		-0.540191, 0.684598, 0.489407,
		33.325382, 22.498600, 32.980331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955475, 22.005678, 33.386242>,  <33.703514, 22.019381, 32.637745>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955475, 22.005678, 33.386242> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.582394, 22.149910, 33.389046>,  <33.358543, 22.236450, 33.390728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.582394, 22.149910, 33.389046>,  <33.955475, 22.005678, 33.386242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582394, 22.149910, 33.389046> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252226, -0.666069, 0.701950,
		0.257779, 0.652942, 0.712191,
		-0.932701, 0.360581, 0.007009,
		33.302582, 22.258085, 33.391148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<30.710968, 32.954636, 22.114271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.366812, 32.854916, 22.292068>,  <30.160318, 32.795082, 22.398746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.366812, 32.854916, 22.292068>,  <30.710968, 32.954636, 22.114271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.366812, 32.854916, 22.292068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497997, -0.596601, 0.629338,
		0.108291, 0.762834, 0.637462,
		-0.860391, -0.249302, 0.444496,
		30.108694, 32.780125, 22.425417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952486, 32.986908, 22.821022>,  <30.710968, 32.954636, 22.114271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952486, 32.986908, 22.821022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633760, 32.748188, 22.783241>,  <30.442526, 32.604958, 22.760572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633760, 32.748188, 22.783241>,  <30.952486, 32.986908, 22.821022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633760, 32.748188, 22.783241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467952, -0.708408, 0.528373,
		-0.382242, 0.376816, 0.843742,
		-0.796814, -0.596797, -0.094452,
		30.394716, 32.569149, 22.754906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929695, 32.610859, 23.355604>,  <30.952486, 32.986908, 22.821022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929695, 32.610859, 23.355604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698566, 32.389179, 23.115944>,  <30.559889, 32.256172, 22.972147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698566, 32.389179, 23.115944>,  <30.929695, 32.610859, 23.355604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698566, 32.389179, 23.115944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371532, -0.832244, 0.411501,
		-0.726694, 0.015172, 0.686794,
		-0.577824, -0.554201, -0.599150,
		30.525219, 32.222919, 22.936199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586254, 32.147903, 23.830996>,  <30.929695, 32.610859, 23.355604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586254, 32.147903, 23.830996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591160, 32.000343, 23.459240>,  <30.594103, 31.911808, 23.236187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591160, 32.000343, 23.459240>,  <30.586254, 32.147903, 23.830996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591160, 32.000343, 23.459240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385017, -0.856054, 0.344868,
		-0.922828, -0.362060, 0.131533,
		0.012264, -0.368896, -0.929390,
		30.594839, 31.889675, 23.180424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311249, 31.469587, 24.005577>,  <30.586254, 32.147903, 23.830996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311249, 31.469587, 24.005577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502502, 31.465019, 23.654293>,  <30.617254, 31.462278, 23.443521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502502, 31.465019, 23.654293>,  <30.311249, 31.469587, 24.005577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502502, 31.465019, 23.654293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575081, -0.751689, 0.322872,
		-0.663829, -0.659419, -0.352842,
		0.478136, -0.011419, -0.878212,
		30.645943, 31.461594, 23.390829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348314, 30.811991, 23.777056>,  <30.311249, 31.469587, 24.005577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.348314, 30.811991, 23.777056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.630926, 30.925781, 23.517860>,  <30.800493, 30.994057, 23.362343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.630926, 30.925781, 23.517860>,  <30.348314, 30.811991, 23.777056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.630926, 30.925781, 23.517860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505874, -0.843332, 0.181338,
		-0.494883, -0.455921, -0.739747,
		0.706528, 0.284478, -0.647989,
		30.842884, 31.011124, 23.323463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337517, 30.328888, 23.264765>,  <30.348314, 30.811991, 23.777056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337517, 30.328888, 23.264765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.691311, 30.513504, 23.292095>,  <30.903587, 30.624273, 23.308493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.691311, 30.513504, 23.292095>,  <30.337517, 30.328888, 23.264765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.691311, 30.513504, 23.292095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416798, -0.847422, 0.328870,
		0.209687, -0.262403, -0.941900,
		0.884484, 0.461542, 0.068325,
		30.956656, 30.651966, 23.312593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.823208, 29.934206, 22.878435>,  <30.337517, 30.328888, 23.264765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.823208, 29.934206, 22.878435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041216, 30.169075, 23.117828>,  <31.172020, 30.309996, 23.261465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041216, 30.169075, 23.117828>,  <30.823208, 29.934206, 22.878435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041216, 30.169075, 23.117828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484826, -0.803090, 0.346396,
		0.684030, 0.101368, -0.722377,
		0.545020, 0.587172, 0.598483,
		31.204721, 30.345226, 23.297373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501419, 29.868956, 22.737110>,  <30.823208, 29.934206, 22.878435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501419, 29.868956, 22.737110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537710, 30.035465, 23.098991>,  <31.559484, 30.135370, 23.316120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537710, 30.035465, 23.098991>,  <31.501419, 29.868956, 22.737110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537710, 30.035465, 23.098991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521790, -0.793639, 0.312844,
		0.848235, 0.443680, -0.289213,
		0.090728, 0.416274, 0.904701,
		31.564928, 30.160347, 23.370401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294880, 29.854321, 22.963604>,  <31.501419, 29.868956, 22.737110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294880, 29.854321, 22.963604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066242, 29.880238, 23.290794>,  <31.929060, 29.895788, 23.487108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066242, 29.880238, 23.290794>,  <32.294880, 29.854321, 22.963604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066242, 29.880238, 23.290794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617322, -0.622763, 0.480707,
		0.540551, 0.779723, 0.315969,
		-0.571592, 0.064792, 0.817976,
		31.894764, 29.899675, 23.536188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737244, 29.768711, 23.472641>,  <32.294880, 29.854321, 22.963604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737244, 29.768711, 23.472641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400322, 29.701385, 23.677464>,  <32.198170, 29.660990, 23.800358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400322, 29.701385, 23.677464>,  <32.737244, 29.768711, 23.472641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400322, 29.701385, 23.677464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503698, -0.583985, 0.636593,
		0.191885, 0.794123, 0.576670,
		-0.842300, -0.168315, 0.512056,
		32.147633, 29.650890, 23.831079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831814, 29.861326, 24.144913>,  <32.737244, 29.768711, 23.472641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831814, 29.861326, 24.144913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526840, 29.602501, 24.144268>,  <32.343857, 29.447206, 24.143881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526840, 29.602501, 24.144268>,  <32.831814, 29.861326, 24.144913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526840, 29.602501, 24.144268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469960, -0.555460, 0.686004,
		-0.444782, 0.522277, 0.727596,
		-0.762435, -0.647063, -0.001610,
		32.298111, 29.408382, 24.143785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218037, 30.307384, 24.554659>,  <32.831814, 29.861326, 24.144913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218037, 30.307384, 24.554659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488873, 30.514572, 24.763756>,  <33.651375, 30.638885, 24.889214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488873, 30.514572, 24.763756>,  <33.218037, 30.307384, 24.554659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488873, 30.514572, 24.763756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235843, 0.825606, -0.512594,
		-0.697088, 0.223786, 0.681167,
		0.677087, 0.517971, 0.522742,
		33.691998, 30.669964, 24.920578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871155, 30.986259, 24.497929>,  <33.218037, 30.307384, 24.554659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871155, 30.986259, 24.497929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250229, 31.034298, 24.616234>,  <33.477673, 31.063122, 24.687216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250229, 31.034298, 24.616234>,  <32.871155, 30.986259, 24.497929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250229, 31.034298, 24.616234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075279, 0.816314, -0.572682,
		-0.310212, 0.564986, 0.764565,
		0.947682, 0.120097, 0.295762,
		33.534534, 31.070328, 24.704962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914669, 31.712194, 24.638544>,  <32.871155, 30.986259, 24.497929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914669, 31.712194, 24.638544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287655, 31.575882, 24.590591>,  <33.511448, 31.494095, 24.561819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287655, 31.575882, 24.590591>,  <32.914669, 31.712194, 24.638544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287655, 31.575882, 24.590591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261297, 0.865393, -0.427574,
		0.249454, 0.367374, 0.895996,
		0.932468, -0.340781, -0.119882,
		33.567394, 31.473648, 24.554626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402439, 32.408092, 24.636341>,  <32.914669, 31.712194, 24.638544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402439, 32.408092, 24.636341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602356, 32.103222, 24.471764>,  <33.722305, 31.920298, 24.373016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602356, 32.103222, 24.471764>,  <33.402439, 32.408092, 24.636341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602356, 32.103222, 24.471764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570079, 0.647101, -0.506232,
		0.652086, 0.018456, 0.757920,
		0.499793, -0.762181, -0.411444,
		33.752293, 31.874567, 24.348330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163666, 32.634090, 24.748169>,  <33.402439, 32.408092, 24.636341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163666, 32.634090, 24.748169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116936, 32.384975, 24.438721>,  <34.088898, 32.235508, 24.253052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116936, 32.384975, 24.438721>,  <34.163666, 32.634090, 24.748169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116936, 32.384975, 24.438721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523392, 0.623400, -0.580890,
		0.844046, -0.472769, 0.253133,
		-0.116824, -0.622786, -0.773622,
		34.081890, 32.198139, 24.206635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840893, 32.510963, 24.504311>,  <34.163666, 32.634090, 24.748169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840893, 32.510963, 24.504311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589531, 32.412743, 24.209064>,  <34.438713, 32.353809, 24.031918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589531, 32.412743, 24.209064>,  <34.840893, 32.510963, 24.504311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589531, 32.412743, 24.209064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532376, 0.556083, -0.638238,
		0.567170, -0.794026, -0.218722,
		-0.628405, -0.245547, -0.738115,
		34.401009, 32.339077, 23.987629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218533, 32.252110, 24.056820>,  <34.840893, 32.510963, 24.504311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218533, 32.252110, 24.056820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903717, 32.375816, 23.843307>,  <34.714828, 32.450039, 23.715200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903717, 32.375816, 23.843307>,  <35.218533, 32.252110, 24.056820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903717, 32.375816, 23.843307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594002, 0.613478, -0.520391,
		0.166523, -0.726635, -0.666537,
		-0.787040, 0.309267, -0.533781,
		34.667606, 32.468597, 23.683172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490005, 32.386864, 23.282091>,  <35.218533, 32.252110, 24.056820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490005, 32.386864, 23.282091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152416, 32.599430, 23.311234>,  <34.949863, 32.726971, 23.328718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152416, 32.599430, 23.311234>,  <35.490005, 32.386864, 23.282091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152416, 32.599430, 23.311234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416810, 0.735232, -0.534512,
		-0.337615, -0.420746, -0.842015,
		-0.843970, 0.531420, 0.072854,
		34.899227, 32.758858, 23.333090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277081, 32.495697, 22.597614>,  <35.490005, 32.386864, 23.282091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277081, 32.495697, 22.597614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100803, 32.767265, 22.832512>,  <34.995037, 32.930206, 22.973450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100803, 32.767265, 22.832512>,  <35.277081, 32.495697, 22.597614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100803, 32.767265, 22.832512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362805, 0.733094, -0.575279,
		-0.821073, -0.040467, -0.569387,
		-0.440694, 0.678922, 0.587242,
		34.968594, 32.970943, 23.008684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088058, 33.071217, 22.179556>,  <35.277081, 32.495697, 22.597614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088058, 33.071217, 22.179556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095585, 33.258419, 22.532967>,  <35.100101, 33.370739, 22.745012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095585, 33.258419, 22.532967>,  <35.088058, 33.071217, 22.179556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095585, 33.258419, 22.532967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561180, 0.726416, -0.396732,
		-0.827480, 0.503281, -0.248968,
		0.018813, 0.468004, 0.883526,
		35.101231, 33.398819, 22.798025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125477, 33.769772, 22.011271>,  <35.088058, 33.071217, 22.179556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125477, 33.769772, 22.011271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.240597, 33.767494, 22.394341>,  <35.309669, 33.766129, 22.624182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.240597, 33.767494, 22.394341>,  <35.125477, 33.769772, 22.011271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240597, 33.767494, 22.394341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765877, 0.601742, -0.226581,
		-0.574983, 0.798670, 0.177539,
		0.287796, -0.005693, 0.957675,
		35.326935, 33.765785, 22.681643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260601, 34.507965, 22.168573>,  <35.125477, 33.769772, 22.011271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260601, 34.507965, 22.168573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469185, 34.289280, 22.430622>,  <35.594337, 34.158070, 22.587852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469185, 34.289280, 22.430622>,  <35.260601, 34.507965, 22.168573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469185, 34.289280, 22.430622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809053, 0.560757, -0.176027,
		-0.271129, 0.621820, 0.734730,
		0.521462, -0.546710, 0.655123,
		35.625622, 34.125267, 22.627159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675499, 34.955864, 22.371916>,  <35.260601, 34.507965, 22.168573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675499, 34.955864, 22.371916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848507, 34.611687, 22.479668>,  <35.952312, 34.405182, 22.544319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848507, 34.611687, 22.479668>,  <35.675499, 34.955864, 22.371916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848507, 34.611687, 22.479668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900104, 0.394736, -0.184378,
		0.052313, 0.322217, 0.945219,
		0.432522, -0.860441, 0.269379,
		35.978264, 34.353554, 22.560482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085800, 35.134274, 22.888653>,  <35.675499, 34.955864, 22.371916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085800, 35.134274, 22.888653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220921, 34.805515, 22.705181>,  <36.301991, 34.608261, 22.595098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220921, 34.805515, 22.705181>,  <36.085800, 35.134274, 22.888653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220921, 34.805515, 22.705181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926042, 0.377376, 0.005782,
		0.168342, -0.426710, 0.888583,
		0.337797, -0.821892, -0.458680,
		36.322258, 34.558949, 22.567577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223587, 35.610065, 23.468458>,  <36.085800, 35.134274, 22.888653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223587, 35.610065, 23.468458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012604, 35.949871, 23.464058>,  <35.886013, 36.153755, 23.461418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012604, 35.949871, 23.464058>,  <36.223587, 35.610065, 23.468458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012604, 35.949871, 23.464058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539011, -0.324602, 0.777239,
		0.656703, 0.415889, 0.629109,
		-0.527455, 0.849512, -0.011002,
		35.854366, 36.204723, 23.460758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363232, 35.929180, 24.043043>,  <36.223587, 35.610065, 23.468458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363232, 35.929180, 24.043043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991123, 36.001480, 23.915337>,  <35.767860, 36.044861, 23.838713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991123, 36.001480, 23.915337>,  <36.363232, 35.929180, 24.043043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991123, 36.001480, 23.915337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350258, -0.178582, 0.919471,
		0.109180, 0.967180, 0.229438,
		-0.930268, 0.180751, -0.319265,
		35.712044, 36.055706, 23.819557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091175, 36.402035, 24.508492>,  <36.363232, 35.929180, 24.043043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091175, 36.402035, 24.508492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824894, 36.160320, 24.333366>,  <35.665127, 36.015293, 24.228292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824894, 36.160320, 24.333366>,  <36.091175, 36.402035, 24.508492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824894, 36.160320, 24.333366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495412, -0.080855, 0.864887,
		-0.558037, 0.792656, -0.245544,
		-0.665704, -0.604284, -0.437811,
		35.625183, 35.979034, 24.202023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418362, 36.645103, 24.794771>,  <36.091175, 36.402035, 24.508492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418362, 36.645103, 24.794771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378887, 36.274792, 24.648792>,  <35.355202, 36.052605, 24.561205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378887, 36.274792, 24.648792>,  <35.418362, 36.645103, 24.794771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378887, 36.274792, 24.648792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432864, -0.290291, 0.853440,
		-0.896042, 0.242193, -0.372092,
		-0.098682, -0.925783, -0.364949,
		35.349281, 35.997055, 24.539307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702843, 36.434395, 25.009113>,  <35.418362, 36.645103, 24.794771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702843, 36.434395, 25.009113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922199, 36.108845, 24.932312>,  <35.053814, 35.913513, 24.886230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922199, 36.108845, 24.932312>,  <34.702843, 36.434395, 25.009113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922199, 36.108845, 24.932312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530873, -0.516251, 0.672055,
		-0.646095, -0.266619, -0.715175,
		0.548393, -0.813879, -0.192006,
		35.086716, 35.864681, 24.874710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238083, 35.890121, 25.129900>,  <34.702843, 36.434395, 25.009113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238083, 35.890121, 25.129900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580246, 35.683350, 25.116852>,  <34.785542, 35.559284, 25.109024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580246, 35.683350, 25.116852>,  <34.238083, 35.890121, 25.129900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580246, 35.683350, 25.116852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256377, -0.477283, 0.840519,
		-0.450061, -0.710620, -0.540799,
		0.855404, -0.516933, -0.032620,
		34.836868, 35.528271, 25.107065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173569, 35.126736, 25.137714>,  <34.238083, 35.890121, 25.129900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173569, 35.126736, 25.137714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526752, 35.217857, 25.301903>,  <34.738663, 35.272530, 25.400415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526752, 35.217857, 25.301903>,  <34.173569, 35.126736, 25.137714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526752, 35.217857, 25.301903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171184, -0.657920, 0.733374,
		0.437126, -0.717805, -0.541919,
		0.882959, 0.227809, 0.410471,
		34.791641, 35.286201, 25.425043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466171, 34.472656, 25.383894>,  <34.173569, 35.126736, 25.137714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466171, 34.472656, 25.383894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660831, 34.762466, 25.579136>,  <34.777626, 34.936352, 25.696281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660831, 34.762466, 25.579136>,  <34.466171, 34.472656, 25.383894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660831, 34.762466, 25.579136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014405, -0.565305, 0.824756,
		0.873480, -0.394333, -0.285540,
		0.486646, 0.724521, 0.488103,
		34.806824, 34.979824, 25.725567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063297, 34.133930, 25.692184>,  <34.466171, 34.472656, 25.383894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063297, 34.133930, 25.692184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010315, 34.463669, 25.912334>,  <34.978523, 34.661510, 26.044424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010315, 34.463669, 25.912334>,  <35.063297, 34.133930, 25.692184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010315, 34.463669, 25.912334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050371, -0.560147, 0.826861,
		0.989908, 0.081804, 0.115720,
		-0.132461, 0.824345, 0.550373,
		34.970577, 34.710972, 26.077446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554295, 34.113510, 26.187174>,  <35.063297, 34.133930, 25.692184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554295, 34.113510, 26.187174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273930, 34.355251, 26.338692>,  <35.105709, 34.500294, 26.429604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273930, 34.355251, 26.338692>,  <35.554295, 34.113510, 26.187174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273930, 34.355251, 26.338692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021149, -0.548461, 0.835908,
		0.712935, 0.577887, 0.397204,
		-0.700911, 0.604348, 0.378796,
		35.063656, 34.536556, 26.452330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848122, 34.208897, 26.830158>,  <35.554295, 34.113510, 26.187174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848122, 34.208897, 26.830158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461864, 34.312069, 26.842888>,  <35.230110, 34.373970, 26.850525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461864, 34.312069, 26.842888>,  <35.848122, 34.208897, 26.830158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461864, 34.312069, 26.842888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081730, -0.417631, 0.904933,
		0.246699, 0.871239, 0.424362,
		-0.965640, 0.257929, 0.031822,
		35.172173, 34.389446, 26.852434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821644, 34.664516, 27.352428>,  <35.848122, 34.208897, 26.830158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821644, 34.664516, 27.352428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460823, 34.501617, 27.295216>,  <35.244331, 34.403877, 27.260887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460823, 34.501617, 27.295216>,  <35.821644, 34.664516, 27.352428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460823, 34.501617, 27.295216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030177, -0.390068, 0.920291,
		-0.430579, 0.825831, 0.364150,
		-0.902048, -0.407247, -0.143034,
		35.190208, 34.379444, 27.252306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514839, 34.793739, 27.923771>,  <35.821644, 34.664516, 27.352428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514839, 34.793739, 27.923771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305573, 34.499363, 27.751869>,  <35.180012, 34.322739, 27.648727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305573, 34.499363, 27.751869>,  <35.514839, 34.793739, 27.923771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305573, 34.499363, 27.751869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073623, -0.463357, 0.883108,
		-0.849044, 0.493653, 0.188231,
		-0.523167, -0.735940, -0.429754,
		35.148621, 34.278580, 27.622942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047981, 34.574577, 28.452394>,  <35.514839, 34.793739, 27.923771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047981, 34.574577, 28.452394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955860, 34.288811, 28.188103>,  <34.900585, 34.117352, 28.029528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955860, 34.288811, 28.188103>,  <35.047981, 34.574577, 28.452394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955860, 34.288811, 28.188103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255770, -0.610668, 0.749444,
		-0.938904, 0.341596, -0.042088,
		-0.230305, -0.714421, -0.660729,
		34.886768, 34.074486, 27.989883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434471, 34.382851, 28.659716>,  <35.047981, 34.574577, 28.452394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434471, 34.382851, 28.659716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562820, 34.061562, 28.458965>,  <34.639828, 33.868790, 28.338514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562820, 34.061562, 28.458965>,  <34.434471, 34.382851, 28.659716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562820, 34.061562, 28.458965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219129, -0.578476, 0.785715,
		-0.921425, -0.142138, -0.361625,
		0.320871, -0.803220, -0.501876,
		34.659081, 33.820595, 28.308403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096855, 33.842442, 28.961645>,  <34.434471, 34.382851, 28.659716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096855, 33.842442, 28.961645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368801, 33.634789, 28.754463>,  <34.531971, 33.510197, 28.630154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368801, 33.634789, 28.754463>,  <34.096855, 33.842442, 28.961645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368801, 33.634789, 28.754463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206830, -0.813373, 0.543733,
		-0.703561, -0.262539, -0.660360,
		0.679870, -0.519132, -0.517956,
		34.572762, 33.479050, 28.599075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839512, 33.189278, 28.608051>,  <34.096855, 33.842442, 28.961645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839512, 33.189278, 28.608051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229813, 33.117088, 28.657600>,  <34.463993, 33.073772, 28.687330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229813, 33.117088, 28.657600>,  <33.839512, 33.189278, 28.608051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229813, 33.117088, 28.657600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218542, -0.835467, 0.504217,
		0.012495, -0.519060, -0.854647,
		0.975748, -0.180476, 0.123875,
		34.522537, 33.062946, 28.694763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940792, 32.444160, 28.512520>,  <33.839512, 33.189278, 28.608051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940792, 32.444160, 28.512520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271420, 32.553272, 28.709446>,  <34.469795, 32.618740, 28.827602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271420, 32.553272, 28.709446>,  <33.940792, 32.444160, 28.512520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271420, 32.553272, 28.709446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156457, -0.728873, 0.666533,
		0.540655, -0.627961, -0.559784,
		0.826567, 0.272782, 0.492317,
		34.519390, 32.635105, 28.857141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202473, 31.778206, 28.790823>,  <33.940792, 32.444160, 28.512520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202473, 31.778206, 28.790823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357388, 32.072472, 29.013103>,  <34.450336, 32.249031, 29.146473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357388, 32.072472, 29.013103>,  <34.202473, 31.778206, 28.790823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357388, 32.072472, 29.013103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172915, -0.534086, 0.827558,
		0.905600, -0.416590, -0.079636,
		0.387285, 0.735666, 0.555703,
		34.473572, 32.293171, 29.179815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640209, 31.469687, 29.203108>,  <34.202473, 31.778206, 28.790823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640209, 31.469687, 29.203108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616844, 31.821999, 29.391071>,  <34.602825, 32.033386, 29.503849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616844, 31.821999, 29.391071>,  <34.640209, 31.469687, 29.203108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616844, 31.821999, 29.391071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010557, -0.470140, 0.882529,
		0.998237, 0.056507, 0.018162,
		-0.058408, 0.880781, 0.469907,
		34.599323, 32.086231, 29.532043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131725, 31.444994, 29.688051>,  <34.640209, 31.469687, 29.203108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131725, 31.444994, 29.688051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898174, 31.744434, 29.813709>,  <34.758045, 31.924099, 29.889103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898174, 31.744434, 29.813709>,  <35.131725, 31.444994, 29.688051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898174, 31.744434, 29.813709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011643, -0.379189, 0.925246,
		0.811761, 0.543885, 0.212682,
		-0.583874, 0.748602, 0.314144,
		34.723011, 31.969015, 29.907953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465958, 31.799858, 30.287218>,  <35.131725, 31.444994, 29.688051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465958, 31.799858, 30.287218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069324, 31.843441, 30.315212>,  <34.831345, 31.869591, 30.332008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069324, 31.843441, 30.315212>,  <35.465958, 31.799858, 30.287218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069324, 31.843441, 30.315212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035965, -0.287462, 0.957116,
		0.124401, 0.951575, 0.281123,
		-0.991580, 0.108956, 0.069984,
		34.771851, 31.876127, 30.336208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394783, 32.193279, 30.870842>,  <35.465958, 31.799858, 30.287218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394783, 32.193279, 30.870842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020485, 32.057510, 30.832535>,  <34.795906, 31.976048, 30.809551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020485, 32.057510, 30.832535>,  <35.394783, 32.193279, 30.870842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020485, 32.057510, 30.832535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015978, -0.312069, 0.949925,
		-0.352315, 0.887357, 0.297441,
		-0.935745, -0.339426, -0.095768,
		34.739761, 31.955683, 30.803804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050011, 32.389690, 31.434500>,  <35.394783, 32.193279, 30.870842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050011, 32.389690, 31.434500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807026, 32.102341, 31.298897>,  <34.661236, 31.929932, 31.217535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807026, 32.102341, 31.298897>,  <35.050011, 32.389690, 31.434500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807026, 32.102341, 31.298897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050872, -0.390715, 0.919105,
		-0.792716, 0.575570, 0.200800,
		-0.607464, -0.718374, -0.339006,
		34.624786, 31.886827, 31.197195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458652, 32.316566, 31.881004>,  <35.050011, 32.389690, 31.434500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458652, 32.316566, 31.881004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471653, 31.964687, 31.691238>,  <34.479454, 31.753559, 31.577379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471653, 31.964687, 31.691238>,  <34.458652, 32.316566, 31.881004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471653, 31.964687, 31.691238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299022, -0.461482, 0.835236,
		-0.953693, 0.114717, -0.278047,
		0.032498, -0.879701, -0.474415,
		34.481403, 31.700777, 31.548914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997219, 32.111866, 32.127422>,  <34.458652, 32.316566, 31.881004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997219, 32.111866, 32.127422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186424, 31.778954, 32.011784>,  <34.299946, 31.579206, 31.942402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186424, 31.778954, 32.011784>,  <33.997219, 32.111866, 32.127422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186424, 31.778954, 32.011784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151067, -0.399873, 0.904036,
		-0.868010, -0.383945, -0.314874,
		0.473010, -0.832279, -0.289092,
		34.328327, 31.529270, 31.925056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573765, 31.583181, 32.156853>,  <33.997219, 32.111866, 32.127422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573765, 31.583181, 32.156853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921749, 31.388439, 32.188194>,  <34.130539, 31.271593, 32.206997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921749, 31.388439, 32.188194>,  <33.573765, 31.583181, 32.156853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921749, 31.388439, 32.188194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390412, -0.582951, 0.712563,
		-0.301242, -0.650491, -0.697219,
		0.869961, -0.486857, 0.078350,
		34.182735, 31.242382, 32.211700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430305, 30.889843, 32.291134>,  <33.573765, 31.583181, 32.156853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430305, 30.889843, 32.291134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816586, 30.924194, 32.389153>,  <34.048355, 30.944805, 32.447964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816586, 30.924194, 32.389153>,  <33.430305, 30.889843, 32.291134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816586, 30.924194, 32.389153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147421, -0.595544, 0.789680,
		0.213755, -0.798719, -0.562456,
		0.965700, 0.085880, 0.245048,
		34.106297, 30.949959, 32.462666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921661, 30.524851, 32.001522>,  <33.430305, 30.889843, 32.291134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921661, 30.524851, 32.001522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561798, 30.607239, 32.155506>,  <32.345879, 30.656672, 32.247898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561798, 30.607239, 32.155506>,  <32.921661, 30.524851, 32.001522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561798, 30.607239, 32.155506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130220, 0.715006, -0.686884,
		-0.416726, -0.668089, -0.616438,
		-0.899657, 0.205969, 0.384960,
		32.291901, 30.669029, 32.270996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434628, 30.493011, 31.471888>,  <32.921661, 30.524851, 32.001522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434628, 30.493011, 31.471888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299511, 30.738815, 31.757061>,  <32.218441, 30.886297, 31.928165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299511, 30.738815, 31.757061>,  <32.434628, 30.493011, 31.471888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299511, 30.738815, 31.757061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184361, 0.699585, -0.690356,
		-0.922989, -0.364632, -0.123021,
		-0.337790, 0.614511, 0.712933,
		32.198174, 30.923168, 31.970942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885740, 30.802441, 31.154665>,  <32.434628, 30.493011, 31.471888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885740, 30.802441, 31.154665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971220, 31.029900, 31.472401>,  <32.022507, 31.166374, 31.663042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971220, 31.029900, 31.472401>,  <31.885740, 30.802441, 31.154665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971220, 31.029900, 31.472401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268833, 0.815959, -0.511800,
		-0.939181, -0.104173, 0.327241,
		0.213700, 0.568646, 0.794339,
		32.035332, 31.200493, 31.710703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254290, 31.091867, 31.205767>,  <31.885740, 30.802441, 31.154665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254290, 31.091867, 31.205767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545927, 31.303734, 31.379147>,  <31.720909, 31.430853, 31.483175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545927, 31.303734, 31.379147>,  <31.254290, 31.091867, 31.205767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545927, 31.303734, 31.379147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222425, 0.782307, -0.581828,
		-0.647264, 0.327796, 0.688185,
		0.729093, 0.529666, 0.433449,
		31.764654, 31.462633, 31.509182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005840, 31.738684, 31.323849>,  <31.254290, 31.091867, 31.205767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005840, 31.738684, 31.323849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392857, 31.837383, 31.345669>,  <31.625067, 31.896603, 31.358761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392857, 31.837383, 31.345669>,  <31.005840, 31.738684, 31.323849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392857, 31.837383, 31.345669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165215, 0.780986, -0.602299,
		-0.191220, 0.573738, 0.796404,
		0.967543, 0.246750, 0.054550,
		31.683119, 31.911407, 31.362034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
