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
	<40.336872, 37.104221, 50.278530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.237171, 36.791748, 50.049572>,  <40.177353, 36.604263, 49.912197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.237171, 36.791748, 50.049572>,  <40.336872, 37.104221, 50.278530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237171, 36.791748, 50.049572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813610, -0.489489, 0.313750,
		-0.525275, -0.387502, 0.757581,
		-0.249248, -0.781180, -0.572392,
		40.162395, 36.557392, 49.877853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235050, 36.431301, 50.646355>,  <40.336872, 37.104221, 50.278530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235050, 36.431301, 50.646355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.344872, 36.332409, 50.274654>,  <40.410763, 36.273075, 50.051636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.344872, 36.332409, 50.274654>,  <40.235050, 36.431301, 50.646355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.344872, 36.332409, 50.274654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781493, -0.505691, 0.365439,
		-0.560259, -0.826531, 0.054371,
		0.274552, -0.247231, -0.929247,
		40.427238, 36.258240, 49.995880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490860, 35.788765, 50.644775>,  <40.235050, 36.431301, 50.646355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490860, 35.788765, 50.644775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673279, 35.908993, 50.309708>,  <40.782730, 35.981129, 50.108669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673279, 35.908993, 50.309708>,  <40.490860, 35.788765, 50.644775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673279, 35.908993, 50.309708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863315, -0.377994, 0.334376,
		-0.216129, -0.875659, -0.431869,
		0.456043, 0.300570, -0.837665,
		40.810093, 35.999165, 50.058407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979435, 35.248592, 50.497585>,  <40.490860, 35.788765, 50.644775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979435, 35.248592, 50.497585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.113235, 35.564945, 50.292603>,  <41.193516, 35.754757, 50.169613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.113235, 35.564945, 50.292603>,  <40.979435, 35.248592, 50.497585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.113235, 35.564945, 50.292603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928596, -0.183886, 0.322327,
		0.160689, -0.583686, -0.795921,
		0.334497, 0.790883, -0.512460,
		41.213585, 35.802212, 50.138863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439701, 35.030407, 50.023113>,  <40.979435, 35.248592, 50.497585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439701, 35.030407, 50.023113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526794, 35.416672, 50.079811>,  <41.579052, 35.648430, 50.113831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526794, 35.416672, 50.079811>,  <41.439701, 35.030407, 50.023113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526794, 35.416672, 50.079811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910642, -0.253253, 0.326486,
		0.351173, 0.057992, -0.934513,
		0.217735, 0.965660, 0.141746,
		41.592113, 35.706371, 50.122334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.167374, 35.176594, 49.778866>,  <41.439701, 35.030407, 50.023113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.167374, 35.176594, 49.778866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.100349, 35.492992, 50.014236>,  <42.060135, 35.682831, 50.155460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.100349, 35.492992, 50.014236>,  <42.167374, 35.176594, 49.778866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.100349, 35.492992, 50.014236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917307, -0.093590, 0.387025,
		0.361206, 0.604623, -0.709902,
		-0.167564, 0.790994, 0.588430,
		42.050079, 35.730289, 50.190765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.796310, 35.631023, 49.761395>,  <42.167374, 35.176594, 49.778866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.796310, 35.631023, 49.761395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623001, 35.740131, 50.104992>,  <42.519016, 35.805595, 50.311150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623001, 35.740131, 50.104992>,  <42.796310, 35.631023, 49.761395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623001, 35.740131, 50.104992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869016, -0.126238, 0.478409,
		0.238933, 0.953761, -0.182346,
		-0.433269, 0.272770, 0.858996,
		42.493019, 35.821960, 50.362690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.103199, 36.189777, 50.021049>,  <42.796310, 35.631023, 49.761395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.103199, 36.189777, 50.021049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.957882, 35.976387, 50.326576>,  <42.870693, 35.848354, 50.509892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.957882, 35.976387, 50.326576>,  <43.103199, 36.189777, 50.021049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.957882, 35.976387, 50.326576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865192, 0.110969, 0.489008,
		-0.345635, 0.838504, 0.421246,
		-0.363290, -0.533477, 0.763821,
		42.848896, 35.816345, 50.555721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.665565, 36.169262, 50.387333>,  <43.103199, 36.189777, 50.021049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.665565, 36.169262, 50.387333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.417587, 35.986092, 50.642197>,  <43.268799, 35.876190, 50.795116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.417587, 35.986092, 50.642197>,  <43.665565, 36.169262, 50.387333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.417587, 35.986092, 50.642197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765245, -0.173403, 0.619945,
		-0.173403, 0.871916, 0.457924,
		-0.619945, -0.457924, 0.637160,
		43.231606, 35.848713, 50.833344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.821873, 36.420864, 51.087341>,  <43.665565, 36.169262, 50.387333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.821873, 36.420864, 51.087341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.668640, 36.055809, 51.144398>,  <43.576698, 35.836777, 51.178631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.668640, 36.055809, 51.144398>,  <43.821873, 36.420864, 51.087341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.668640, 36.055809, 51.144398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867215, -0.302163, 0.395773,
		-0.318095, 0.275314, 0.907203,
		-0.383085, -0.912634, 0.142640,
		43.553715, 35.782021, 51.187191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.037575, 36.257908, 51.755909>,  <43.821873, 36.420864, 51.087341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.037575, 36.257908, 51.755909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958916, 35.910118, 51.574654>,  <43.911720, 35.701443, 51.465900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958916, 35.910118, 51.574654>,  <44.037575, 36.257908, 51.755909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.958916, 35.910118, 51.574654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844606, -0.384947, 0.372096,
		-0.497965, -0.309551, 0.810067,
		-0.196650, -0.869479, -0.453139,
		43.899921, 35.649273, 51.438713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.178387, 35.652390, 52.237305>,  <44.037575, 36.257908, 51.755909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.178387, 35.652390, 52.237305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.205196, 35.483917, 51.875507>,  <44.221283, 35.382835, 51.658428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.205196, 35.483917, 51.875507>,  <44.178387, 35.652390, 52.237305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.205196, 35.483917, 51.875507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768502, -0.556363, 0.316014,
		-0.636328, -0.716287, 0.286390,
		0.067020, -0.421179, -0.904498,
		44.225304, 35.357563, 51.604156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.495975, 35.103264, 52.428654>,  <44.178387, 35.652390, 52.237305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.495975, 35.103264, 52.428654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.518402, 35.080467, 52.029934>,  <44.531860, 35.066792, 51.790703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.518402, 35.080467, 52.029934>,  <44.495975, 35.103264, 52.428654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.518402, 35.080467, 52.029934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840923, -0.535517, 0.077918,
		-0.538243, -0.842600, 0.017897,
		0.056069, -0.056989, -0.996799,
		44.535221, 35.063370, 51.730896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.632515, 34.410580, 52.316353>,  <44.495975, 35.103264, 52.428654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.632515, 34.410580, 52.316353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.758190, 34.600006, 51.987228>,  <44.833595, 34.713661, 51.789753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.758190, 34.600006, 51.987228>,  <44.632515, 34.410580, 52.316353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.758190, 34.600006, 51.987228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834005, -0.551756, 0.000903,
		-0.453564, -0.686513, -0.568314,
		0.314190, 0.473567, -0.822811,
		44.852448, 34.742077, 51.740383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.123947, 33.969425, 52.034386>,  <44.632515, 34.410580, 52.316353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.123947, 33.969425, 52.034386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.212635, 34.304207, 51.834248>,  <45.265850, 34.505077, 51.714165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.212635, 34.304207, 51.834248>,  <45.123947, 33.969425, 52.034386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.212635, 34.304207, 51.834248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952124, -0.296577, -0.074175,
		-0.210471, -0.459941, -0.862645,
		0.221724, 0.836957, -0.500342,
		45.279152, 34.555294, 51.684143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.556961, 33.812981, 51.378517>,  <45.123947, 33.969425, 52.034386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.556961, 33.812981, 51.378517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.633156, 34.173183, 51.534878>,  <45.678875, 34.389305, 51.628693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.633156, 34.173183, 51.534878>,  <45.556961, 33.812981, 51.378517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.633156, 34.173183, 51.534878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971078, -0.114462, -0.209537,
		-0.143946, 0.419510, -0.896265,
		0.190491, 0.900505, 0.390901,
		45.690304, 34.443336, 51.652149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.237011, 34.000145, 50.989136>,  <45.556961, 33.812981, 51.378517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.237011, 34.000145, 50.989136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.187092, 34.321468, 51.222069>,  <46.157143, 34.514263, 51.361828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.187092, 34.321468, 51.222069>,  <46.237011, 34.000145, 50.989136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.187092, 34.321468, 51.222069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931907, 0.296354, -0.209103,
		-0.340553, 0.516588, -0.785596,
		-0.124795, 0.803313, 0.582336,
		46.149654, 34.562462, 51.396770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.504238, 34.754456, 50.664711>,  <46.237011, 34.000145, 50.989136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.504238, 34.754456, 50.664711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.525150, 34.760143, 51.064125>,  <46.537697, 34.763557, 51.303772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.525150, 34.760143, 51.064125>,  <46.504238, 34.754456, 50.664711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.525150, 34.760143, 51.064125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986626, 0.153849, -0.053852,
		-0.154389, 0.987992, -0.005988,
		0.052285, 0.014222, 0.998531,
		46.540836, 34.764408, 51.363686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.066925, 35.155163, 50.828972>,  <46.504238, 34.754456, 50.664711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.066925, 35.155163, 50.828972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.012138, 34.979507, 51.184139>,  <46.979267, 34.874115, 51.397240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.012138, 34.979507, 51.184139>,  <47.066925, 35.155163, 50.828972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.012138, 34.979507, 51.184139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971571, 0.115186, 0.206836,
		-0.193105, 0.891007, 0.410874,
		-0.136965, -0.439134, 0.887920,
		46.971050, 34.847767, 51.450516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.479130, 35.614803, 51.292488>,  <47.066925, 35.155163, 50.828972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.479130, 35.614803, 51.292488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.441154, 35.259754, 51.472759>,  <47.418369, 35.046726, 51.580921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.441154, 35.259754, 51.472759>,  <47.479130, 35.614803, 51.292488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.441154, 35.259754, 51.472759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897944, 0.119078, 0.423694,
		-0.429746, 0.444909, 0.785732,
		-0.094942, -0.887624, 0.450677,
		47.412670, 34.993465, 51.607964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.742004, 35.660534, 52.014111>,  <47.479130, 35.614803, 51.292488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.742004, 35.660534, 52.014111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.725407, 35.264793, 51.958317>,  <47.715446, 35.027348, 51.924843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.725407, 35.264793, 51.958317>,  <47.742004, 35.660534, 52.014111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.725407, 35.264793, 51.958317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969719, -0.073507, 0.232900,
		-0.240674, -0.125594, 0.962446,
		-0.041496, -0.989355, -0.139482,
		47.712959, 34.967987, 51.916473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.225330, 34.988304, 51.503925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.282330, 35.211937, 51.830635>,  <24.316528, 35.346119, 52.026661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.282330, 35.211937, 51.830635>,  <24.225330, 34.988304, 51.503925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.282330, 35.211937, 51.830635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658476, 0.562549, -0.499948,
		-0.738988, 0.609067, -0.287982,
		0.142498, 0.559085, 0.816773,
		24.325079, 35.379662, 52.075668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.337927, 35.665501, 51.181213>,  <24.225330, 34.988304, 51.503925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.337927, 35.665501, 51.181213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.476086, 35.697319, 51.555244>,  <24.558981, 35.716412, 51.779663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.476086, 35.697319, 51.555244>,  <24.337927, 35.665501, 51.181213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.476086, 35.697319, 51.555244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888205, 0.293971, -0.353091,
		-0.302973, 0.952498, 0.030884,
		0.345398, 0.079546, 0.935079,
		24.579704, 35.721184, 51.835770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.650192, 36.309776, 51.224445>,  <24.337927, 35.665501, 51.181213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.650192, 36.309776, 51.224445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.812473, 36.064053, 51.495159>,  <24.909842, 35.916618, 51.657585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.812473, 36.064053, 51.495159>,  <24.650192, 36.309776, 51.224445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.812473, 36.064053, 51.495159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911810, 0.323307, -0.253131,
		-0.063309, 0.719793, 0.691296,
		0.405703, -0.614305, 0.676783,
		24.934185, 35.879761, 51.698193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.076693, 36.727390, 51.689713>,  <24.650192, 36.309776, 51.224445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.076693, 36.727390, 51.689713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.225693, 36.356388, 51.702194>,  <25.315092, 36.133785, 51.709682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.225693, 36.356388, 51.702194>,  <25.076693, 36.727390, 51.689713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.225693, 36.356388, 51.702194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898650, 0.352107, -0.261628,
		0.231674, 0.125500, 0.964664,
		0.372499, -0.927508, 0.031206,
		25.337442, 36.078136, 51.711555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.567316, 36.711021, 52.112251>,  <25.076693, 36.727390, 51.689713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.567316, 36.711021, 52.112251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.658575, 36.380501, 51.906269>,  <25.713329, 36.182190, 51.782681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.658575, 36.380501, 51.906269>,  <25.567316, 36.711021, 52.112251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.658575, 36.380501, 51.906269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915440, 0.362156, -0.175538,
		0.331541, -0.431363, 0.839051,
		0.228146, -0.826298, -0.514956,
		25.727018, 36.132610, 51.751781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.261450, 36.515514, 52.335823>,  <25.567316, 36.711021, 52.112251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.261450, 36.515514, 52.335823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.217596, 36.334110, 51.982033>,  <26.191284, 36.225266, 51.769756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.217596, 36.334110, 51.982033>,  <26.261450, 36.515514, 52.335823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.217596, 36.334110, 51.982033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971197, 0.140519, -0.192434,
		0.211557, -0.880102, 0.425047,
		-0.109634, -0.453515, -0.884480,
		26.184706, 36.198055, 51.716690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.852877, 36.162201, 52.377342>,  <26.261450, 36.515514, 52.335823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.852877, 36.162201, 52.377342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.742094, 36.165161, 51.993000>,  <26.675625, 36.166935, 51.762394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.742094, 36.165161, 51.993000>,  <26.852877, 36.162201, 52.377342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.742094, 36.165161, 51.993000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960689, 0.022247, -0.276735,
		0.019329, -0.999725, -0.013267,
		-0.276954, 0.007396, -0.960855,
		26.659008, 36.167381, 51.704742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.311934, 35.822105, 52.029381>,  <26.852877, 36.162201, 52.377342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.311934, 35.822105, 52.029381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.149837, 36.013645, 51.717873>,  <27.052580, 36.128571, 51.530968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.149837, 36.013645, 51.717873>,  <27.311934, 35.822105, 52.029381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.149837, 36.013645, 51.717873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893436, 0.026873, -0.448385,
		-0.193780, -0.877486, -0.438711,
		-0.405241, 0.478848, -0.778771,
		27.028265, 36.157299, 51.484241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.473753, 35.406757, 51.410179>,  <27.311934, 35.822105, 52.029381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.473753, 35.406757, 51.410179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.395910, 35.787254, 51.314461>,  <27.349205, 36.015553, 51.257030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.395910, 35.787254, 51.314461>,  <27.473753, 35.406757, 51.410179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.395910, 35.787254, 51.314461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945971, 0.117505, -0.302210,
		-0.259357, -0.285181, -0.922717,
		-0.194608, 0.951244, -0.239297,
		27.337528, 36.072628, 51.242672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.751959, 35.510937, 50.731613>,  <27.473753, 35.406757, 51.410179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.751959, 35.510937, 50.731613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.718819, 35.865772, 50.913250>,  <27.698935, 36.078674, 51.022232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.718819, 35.865772, 50.913250>,  <27.751959, 35.510937, 50.731613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.718819, 35.865772, 50.913250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892402, 0.268856, -0.362403,
		-0.443571, 0.375211, -0.813917,
		-0.082849, 0.887092, 0.454096,
		27.693964, 36.131901, 51.049480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824100, 35.916603, 50.192261>,  <27.751959, 35.510937, 50.731613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.824100, 35.916603, 50.192261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.927090, 36.149208, 50.500946>,  <27.988884, 36.288773, 50.686157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.927090, 36.149208, 50.500946>,  <27.824100, 35.916603, 50.192261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.927090, 36.149208, 50.500946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791795, 0.330806, -0.513447,
		-0.553866, 0.743241, -0.375267,
		0.257474, 0.581515, 0.771717,
		28.004332, 36.323662, 50.732460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134968, 36.439053, 49.936268>,  <27.824100, 35.916603, 50.192261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134968, 36.439053, 49.936268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.246777, 36.507698, 50.314140>,  <28.313862, 36.548885, 50.540863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.246777, 36.507698, 50.314140>,  <28.134968, 36.439053, 49.936268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.246777, 36.507698, 50.314140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904497, 0.283014, -0.319044,
		-0.322108, 0.943638, -0.076113,
		0.279521, 0.171611, 0.944679,
		28.330633, 36.559181, 50.597546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.516577, 37.073616, 49.936604>,  <28.134968, 36.439053, 49.936268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.516577, 37.073616, 49.936604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.652367, 36.880871, 50.259727>,  <28.733841, 36.765224, 50.453602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.652367, 36.880871, 50.259727>,  <28.516577, 37.073616, 49.936604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.652367, 36.880871, 50.259727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915377, 0.366849, -0.165852,
		-0.216427, 0.795756, 0.565624,
		0.339477, -0.481865, 0.807813,
		28.754210, 36.736313, 50.502071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022257, 37.503143, 50.243340>,  <28.516577, 37.073616, 49.936604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022257, 37.503143, 50.243340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.116062, 37.144180, 50.392826>,  <29.172346, 36.928802, 50.482517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.116062, 37.144180, 50.392826>,  <29.022257, 37.503143, 50.243340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.116062, 37.144180, 50.392826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946864, 0.123823, -0.296845,
		0.220117, 0.423469, 0.878762,
		0.234515, -0.897408, 0.373712,
		29.186417, 36.874958, 50.504940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.619406, 37.606571, 50.546562>,  <29.022257, 37.503143, 50.243340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.619406, 37.606571, 50.546562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.597757, 37.212875, 50.479218>,  <29.584768, 36.976658, 50.438812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.597757, 37.212875, 50.479218>,  <29.619406, 37.606571, 50.546562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597757, 37.212875, 50.479218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918486, 0.017079, -0.395085,
		0.391733, -0.176020, 0.903085,
		-0.054119, -0.984239, -0.168362,
		29.581522, 36.917603, 50.428707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072805, 37.313782, 51.035561>,  <29.619406, 37.606571, 50.546562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.072805, 37.313782, 51.035561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.054577, 37.048466, 50.736771>,  <30.043640, 36.889275, 50.557499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.054577, 37.048466, 50.736771>,  <30.072805, 37.313782, 51.035561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.054577, 37.048466, 50.736771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997755, -0.066948, -0.001420,
		-0.049066, -0.745358, 0.664856,
		-0.045569, -0.663294, -0.746970,
		30.040907, 36.849476, 50.512680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644173, 36.896919, 51.069466>,  <30.072805, 37.313782, 51.035561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644173, 36.896919, 51.069466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.517254, 36.795631, 50.703907>,  <30.441103, 36.734859, 50.484573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.517254, 36.795631, 50.703907>,  <30.644173, 36.896919, 51.069466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517254, 36.795631, 50.703907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948312, -0.079556, -0.307206,
		0.005086, -0.964131, 0.265378,
		-0.317299, -0.253223, -0.913892,
		30.422064, 36.719666, 50.429741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220007, 36.431839, 50.872993>,  <30.644173, 36.896919, 51.069466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220007, 36.431839, 50.872993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.034483, 36.527908, 50.531891>,  <30.923168, 36.585548, 50.327229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.034483, 36.527908, 50.531891>,  <31.220007, 36.431839, 50.872993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034483, 36.527908, 50.531891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851863, -0.143472, -0.503732,
		-0.243328, -0.960070, -0.138047,
		-0.463812, 0.240170, -0.852759,
		30.895340, 36.599960, 50.276062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554123, 35.943157, 50.436069>,  <31.220007, 36.431839, 50.872993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554123, 35.943157, 50.436069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.393642, 36.213680, 50.188961>,  <31.297354, 36.375996, 50.040695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.393642, 36.213680, 50.188961>,  <31.554123, 35.943157, 50.436069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393642, 36.213680, 50.188961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789030, -0.087403, -0.608106,
		-0.465264, -0.731413, -0.498563,
		-0.401201, 0.676311, -0.617771,
		31.273283, 36.416573, 50.003628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697613, 35.758396, 49.712524>,  <31.554123, 35.943157, 50.436069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697613, 35.758396, 49.712524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.630323, 36.152676, 49.708630>,  <31.589949, 36.389244, 49.706291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.630323, 36.152676, 49.708630>,  <31.697613, 35.758396, 49.712524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630323, 36.152676, 49.708630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758950, 0.123212, -0.639385,
		-0.629043, -0.114950, -0.768825,
		-0.168225, 0.985700, -0.009736,
		31.579855, 36.448387, 49.705708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697714, 35.932976, 49.083607>,  <31.697613, 35.758396, 49.712524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697714, 35.932976, 49.083607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.828648, 36.284985, 49.221249>,  <31.907207, 36.496189, 49.303833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.828648, 36.284985, 49.221249>,  <31.697714, 35.932976, 49.083607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828648, 36.284985, 49.221249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743326, -0.014989, -0.668761,
		-0.583369, 0.474691, -0.659052,
		0.327334, 0.880025, 0.344106,
		31.926847, 36.548992, 49.324482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<23.879520, 34.920685, 35.303482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.137871, 35.070713, 35.037498>,  <24.292881, 35.160728, 34.877911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.137871, 35.070713, 35.037498>,  <23.879520, 34.920685, 35.303482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.137871, 35.070713, 35.037498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642608, 0.203167, 0.738768,
		0.412186, -0.904459, -0.109801,
		0.645877, 0.375069, -0.664955,
		24.331635, 35.183235, 34.838013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.651295, 34.532043, 35.424545>,  <23.879520, 34.920685, 35.303482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.651295, 34.532043, 35.424545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.649393, 34.894489, 35.255344>,  <24.648252, 35.111958, 35.153824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.649393, 34.894489, 35.255344>,  <24.651295, 34.532043, 35.424545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.649393, 34.894489, 35.255344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672282, 0.316043, 0.669443,
		0.740280, -0.281193, -0.610668,
		-0.004755, 0.906117, -0.423001,
		24.647966, 35.166325, 35.128445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.275009, 34.861115, 35.140949>,  <24.651295, 34.532043, 35.424545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.275009, 34.861115, 35.140949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.080738, 35.191246, 35.256153>,  <24.964176, 35.389324, 35.325275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.080738, 35.191246, 35.256153>,  <25.275009, 34.861115, 35.140949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.080738, 35.191246, 35.256153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851303, 0.371760, 0.370241,
		0.198498, 0.425005, -0.883159,
		-0.485677, 0.825328, 0.288014,
		24.935036, 35.438843, 35.342556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.767353, 35.479988, 34.929947>,  <25.275009, 34.861115, 35.140949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.767353, 35.479988, 34.929947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.503529, 35.560516, 35.219624>,  <25.345234, 35.608833, 35.393429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.503529, 35.560516, 35.219624>,  <25.767353, 35.479988, 34.929947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.503529, 35.560516, 35.219624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685832, 0.555462, 0.470210,
		-0.307596, 0.806804, -0.504432,
		-0.659560, 0.201321, 0.724190,
		25.305660, 35.620914, 35.436882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.691530, 36.215546, 35.101543>,  <25.767353, 35.479988, 34.929947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.691530, 36.215546, 35.101543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.687027, 35.976768, 35.422428>,  <25.684324, 35.833504, 35.614960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.687027, 35.976768, 35.422428>,  <25.691530, 36.215546, 35.101543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.687027, 35.976768, 35.422428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703611, 0.565309, 0.430532,
		-0.710496, 0.569289, 0.413648,
		-0.011259, -0.596939, 0.802208,
		25.683649, 35.797688, 35.663090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.481016, 36.601788, 35.723362>,  <25.691530, 36.215546, 35.101543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.481016, 36.601788, 35.723362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.738636, 36.296818, 35.748375>,  <25.893208, 36.113834, 35.763382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.738636, 36.296818, 35.748375>,  <25.481016, 36.601788, 35.723362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.738636, 36.296818, 35.748375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703137, 0.622194, 0.344199,
		-0.301330, -0.177714, 0.936812,
		0.644048, -0.762425, 0.062528,
		25.931850, 36.068089, 35.767132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.744612, 36.635242, 36.291939>,  <25.481016, 36.601788, 35.723362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.744612, 36.635242, 36.291939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.038008, 36.459229, 36.084721>,  <26.214045, 36.353622, 35.960392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.038008, 36.459229, 36.084721>,  <25.744612, 36.635242, 36.291939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.038008, 36.459229, 36.084721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671378, 0.587954, 0.451178,
		0.106052, -0.678735, 0.726685,
		0.733488, -0.440032, -0.518042,
		26.258055, 36.327221, 35.929310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.204510, 36.406635, 36.804790>,  <25.744612, 36.635242, 36.291939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.204510, 36.406635, 36.804790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.393339, 36.416519, 36.452305>,  <26.506638, 36.422451, 36.240814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.393339, 36.416519, 36.452305>,  <26.204510, 36.406635, 36.804790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.393339, 36.416519, 36.452305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710637, 0.580862, 0.396981,
		0.521672, -0.813626, 0.256650,
		0.472073, 0.024709, -0.881213,
		26.534962, 36.423931, 36.187943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.918068, 36.252529, 36.801548>,  <26.204510, 36.406635, 36.804790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.918068, 36.252529, 36.801548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.920938, 36.474037, 36.468491>,  <26.922661, 36.606941, 36.268658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.920938, 36.474037, 36.468491>,  <26.918068, 36.252529, 36.801548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.920938, 36.474037, 36.468491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729313, 0.566775, 0.383234,
		0.684142, -0.610005, -0.399804,
		0.007176, 0.553769, -0.832640,
		26.923092, 36.640167, 36.218700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.625988, 36.384495, 36.706825>,  <26.918068, 36.252529, 36.801548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.625988, 36.384495, 36.706825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.412239, 36.662395, 36.514259>,  <27.283991, 36.829136, 36.398720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.412239, 36.662395, 36.514259>,  <27.625988, 36.384495, 36.706825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.412239, 36.662395, 36.514259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585141, 0.715077, 0.382458,
		0.609965, -0.077322, -0.788647,
		-0.534371, 0.694756, -0.481417,
		27.251928, 36.870823, 36.369835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.975464, 36.766018, 36.070213>,  <27.625988, 36.384495, 36.706825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.975464, 36.766018, 36.070213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.705652, 36.968475, 36.285187>,  <27.543766, 37.089951, 36.414169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.705652, 36.968475, 36.285187>,  <27.975464, 36.766018, 36.070213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.705652, 36.968475, 36.285187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725968, 0.586996, 0.358338,
		-0.134098, 0.631866, -0.763389,
		-0.674528, 0.506143, 0.537430,
		27.503294, 37.120319, 36.446415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.111671, 37.470539, 35.861366>,  <27.975464, 36.766018, 36.070213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.111671, 37.470539, 35.861366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.921270, 37.439423, 36.211765>,  <27.807030, 37.420753, 36.422005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.921270, 37.439423, 36.211765>,  <28.111671, 37.470539, 35.861366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.921270, 37.439423, 36.211765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695882, 0.575746, 0.429261,
		-0.537743, 0.813920, -0.219924,
		-0.476005, -0.077791, 0.875996,
		27.778469, 37.416084, 36.474564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.916765, 38.105068, 36.166416>,  <28.111671, 37.470539, 35.861366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.916765, 38.105068, 36.166416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.035770, 37.834274, 36.435688>,  <28.107174, 37.671799, 36.597252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.035770, 37.834274, 36.435688>,  <27.916765, 38.105068, 36.166416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.035770, 37.834274, 36.435688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825574, 0.536561, 0.174729,
		-0.479492, 0.503776, 0.718538,
		0.297515, -0.676988, 0.673181,
		28.125025, 37.631180, 36.637642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.943634, 38.508469, 36.768517>,  <27.916765, 38.105068, 36.166416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.943634, 38.508469, 36.768517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.225512, 38.225655, 36.792202>,  <28.394638, 38.055965, 36.806412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.225512, 38.225655, 36.792202>,  <27.943634, 38.508469, 36.768517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.225512, 38.225655, 36.792202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656162, 0.681185, 0.324713,
		-0.269919, -0.189970, 0.943957,
		0.704695, -0.707035, 0.059214,
		28.436920, 38.013542, 36.809967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.406151, 38.933044, 36.985744>,  <27.943634, 38.508469, 36.768517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.406151, 38.933044, 36.985744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.608263, 38.587933, 36.978703>,  <28.729530, 38.380867, 36.974480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.608263, 38.587933, 36.978703>,  <28.406151, 38.933044, 36.985744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.608263, 38.587933, 36.978703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851943, 0.495479, 0.169391,
		-0.137425, -0.100585, 0.985392,
		0.505279, -0.862777, -0.017602,
		28.759846, 38.329098, 36.973423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857746, 39.036572, 37.522831>,  <28.406151, 38.933044, 36.985744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857746, 39.036572, 37.522831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.993494, 38.754303, 37.274036>,  <29.074942, 38.584942, 37.124760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.993494, 38.754303, 37.274036>,  <28.857746, 39.036572, 37.522831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.993494, 38.754303, 37.274036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906140, 0.422718, 0.014818,
		0.252466, -0.568632, 0.782891,
		0.339368, -0.705668, -0.621983,
		29.095304, 38.542603, 37.087440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.578402, 38.420227, 37.933022>,  <28.857746, 39.036572, 37.522831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.578402, 38.420227, 37.933022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.975529, 38.372387, 37.932121>,  <29.213806, 38.343681, 37.931580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.975529, 38.372387, 37.932121>,  <28.578402, 38.420227, 37.933022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.975529, 38.372387, 37.932121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115122, -0.960400, 0.253728,
		-0.032512, -0.251646, -0.967273,
		0.992819, -0.119604, -0.002254,
		29.273375, 38.336506, 37.931446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.746244, 37.724689, 37.550350>,  <28.578402, 38.420227, 37.933022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.746244, 37.724689, 37.550350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.045933, 37.841457, 37.788155>,  <29.225746, 37.911518, 37.930840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.045933, 37.841457, 37.788155>,  <28.746244, 37.724689, 37.550350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.045933, 37.841457, 37.788155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177289, -0.953264, 0.244654,
		0.638149, -0.077899, -0.765961,
		0.749222, 0.291922, 0.594514,
		29.270699, 37.929035, 37.966511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.220894, 37.227222, 37.530975>,  <28.746244, 37.724689, 37.550350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.220894, 37.227222, 37.530975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.332432, 37.401073, 37.873520>,  <29.399355, 37.505383, 38.079044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.332432, 37.401073, 37.873520>,  <29.220894, 37.227222, 37.530975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.332432, 37.401073, 37.873520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058701, -0.897773, 0.436529,
		0.958541, -0.071454, -0.275851,
		0.278843, 0.434624, 0.856358,
		29.416084, 37.531460, 38.130428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.797304, 36.903633, 37.827396>,  <29.220894, 37.227222, 37.530975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.797304, 36.903633, 37.827396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.663122, 37.100147, 38.148918>,  <29.582613, 37.218056, 38.341831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.663122, 37.100147, 38.148918>,  <29.797304, 36.903633, 37.827396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663122, 37.100147, 38.148918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017638, -0.849823, 0.526773,
		0.941891, 0.190886, 0.276412,
		-0.335455, 0.491287, 0.803808,
		29.562487, 37.247532, 38.390060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881655, 36.566143, 38.574074>,  <29.797304, 36.903633, 37.827396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881655, 36.566143, 38.574074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.687109, 36.842030, 38.788639>,  <29.570381, 37.007561, 38.917377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.687109, 36.842030, 38.788639>,  <29.881655, 36.566143, 38.574074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.687109, 36.842030, 38.788639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243293, -0.696535, 0.675017,
		0.839200, 0.197801, 0.506575,
		-0.486366, 0.689720, 0.536409,
		29.541199, 37.048946, 38.949562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.052408, 36.561878, 39.341927>,  <29.881655, 36.566143, 38.574074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.052408, 36.561878, 39.341927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.671925, 36.658154, 39.264702>,  <29.443634, 36.715919, 39.218369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.671925, 36.658154, 39.264702>,  <30.052408, 36.561878, 39.341927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.671925, 36.658154, 39.264702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308513, -0.731652, 0.607869,
		0.005055, 0.637772, 0.770209,
		-0.951207, 0.240692, -0.193062,
		29.386562, 36.730362, 39.206783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.599136, 36.805756, 39.960495>,  <30.052408, 36.561878, 39.341927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.599136, 36.805756, 39.960495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.405809, 36.617519, 39.665211>,  <29.289814, 36.504578, 39.488041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.405809, 36.617519, 39.665211>,  <29.599136, 36.805756, 39.960495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.405809, 36.617519, 39.665211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167508, -0.777947, 0.605591,
		-0.859271, 0.416347, 0.297166,
		-0.483316, -0.470589, -0.738208,
		29.260815, 36.476341, 39.443748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992384, 37.001064, 40.574619>,  <29.599136, 36.805756, 39.960495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992384, 37.001064, 40.574619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.231178, 36.680859, 40.553524>,  <30.374454, 36.488735, 40.540867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.231178, 36.680859, 40.553524>,  <29.992384, 37.001064, 40.574619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231178, 36.680859, 40.553524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557516, 0.366703, 0.744785,
		-0.576874, -0.474028, 0.665218,
		0.596986, -0.800516, -0.052736,
		30.410275, 36.440704, 40.537704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093540, 36.935776, 41.291088>,  <29.992384, 37.001064, 40.574619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093540, 36.935776, 41.291088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.395805, 36.747425, 41.108994>,  <30.577166, 36.634415, 40.999737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.395805, 36.747425, 41.108994>,  <30.093540, 36.935776, 41.291088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.395805, 36.747425, 41.108994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616037, 0.274956, 0.738171,
		-0.222419, -0.838255, 0.497854,
		0.755664, -0.470880, -0.455241,
		30.622505, 36.606159, 40.972420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209053, 36.491852, 41.730125>,  <30.093540, 36.935776, 41.291088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.209053, 36.491852, 41.730125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.535484, 36.595558, 41.523518>,  <30.731344, 36.657784, 41.399551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.535484, 36.595558, 41.523518>,  <30.209053, 36.491852, 41.730125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.535484, 36.595558, 41.523518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491110, 0.160046, 0.856269,
		0.304671, -0.952452, 0.003281,
		0.816080, 0.259268, -0.516520,
		30.780308, 36.673340, 41.368561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776413, 36.224457, 42.111759>,  <30.209053, 36.491852, 41.730125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776413, 36.224457, 42.111759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.874239, 36.554405, 41.907887>,  <30.932934, 36.752373, 41.785561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.874239, 36.554405, 41.907887>,  <30.776413, 36.224457, 42.111759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874239, 36.554405, 41.907887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417961, 0.384626, 0.823026,
		0.874927, -0.414311, -0.250697,
		0.244564, 0.824869, -0.509686,
		30.947609, 36.801865, 41.754982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435049, 36.285603, 42.052399>,  <30.776413, 36.224457, 42.111759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435049, 36.285603, 42.052399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.245052, 36.637543, 42.058769>,  <31.131054, 36.848705, 42.062592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.245052, 36.637543, 42.058769>,  <31.435049, 36.285603, 42.052399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245052, 36.637543, 42.058769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288468, 0.138580, 0.947408,
		0.831365, 0.454607, -0.319632,
		-0.474992, 0.879846, 0.015929,
		31.102554, 36.901497, 42.063549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803255, 36.867321, 42.293816>,  <31.435049, 36.285603, 42.052399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803255, 36.867321, 42.293816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.424227, 36.975536, 42.361835>,  <31.196810, 37.040466, 42.402649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.424227, 36.975536, 42.361835>,  <31.803255, 36.867321, 42.293816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424227, 36.975536, 42.361835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225801, 0.190356, 0.955394,
		0.226101, 0.943702, -0.241464,
		-0.947572, 0.270539, 0.170050,
		31.139956, 37.056698, 42.412849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789034, 37.495205, 42.520523>,  <31.803255, 36.867321, 42.293816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789034, 37.495205, 42.520523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.454948, 37.319557, 42.652939>,  <31.254498, 37.214169, 42.732388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.454948, 37.319557, 42.652939>,  <31.789034, 37.495205, 42.520523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454948, 37.319557, 42.652939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238041, 0.253976, 0.937461,
		-0.495735, 0.861783, -0.107596,
		-0.835215, -0.439120, 0.331044,
		31.204384, 37.187820, 42.752251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379143, 37.972424, 42.989468>,  <31.789034, 37.495205, 42.520523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379143, 37.972424, 42.989468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.320173, 37.583145, 43.060081>,  <31.284792, 37.349579, 43.102448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.320173, 37.583145, 43.060081>,  <31.379143, 37.972424, 42.989468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320173, 37.583145, 43.060081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345394, 0.116591, 0.931187,
		-0.926806, 0.198251, 0.318946,
		-0.147422, -0.973192, 0.176532,
		31.275946, 37.291187, 43.113041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949255, 37.963024, 43.544094>,  <31.379143, 37.972424, 42.989468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949255, 37.963024, 43.544094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.140404, 37.613789, 43.505417>,  <31.255093, 37.404247, 43.482212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.140404, 37.613789, 43.505417>,  <30.949255, 37.963024, 43.544094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140404, 37.613789, 43.505417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271747, 0.042263, 0.961440,
		-0.835338, -0.485722, 0.257456,
		0.477874, -0.873091, -0.096690,
		31.283766, 37.351860, 43.476410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822958, 37.570068, 44.107754>,  <30.949255, 37.963024, 43.544094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822958, 37.570068, 44.107754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.179588, 37.451618, 43.970699>,  <31.393566, 37.380547, 43.888466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.179588, 37.451618, 43.970699>,  <30.822958, 37.570068, 44.107754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179588, 37.451618, 43.970699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340610, -0.060132, 0.938280,
		-0.298454, -0.953254, 0.047252,
		0.891577, -0.296128, -0.342634,
		31.447062, 37.362782, 43.867908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904119, 36.940678, 44.399303>,  <30.822958, 37.570068, 44.107754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904119, 36.940678, 44.399303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.248981, 37.130039, 44.327110>,  <31.455898, 37.243656, 44.283794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.248981, 37.130039, 44.327110>,  <30.904119, 36.940678, 44.399303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248981, 37.130039, 44.327110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229471, -0.047266, 0.972167,
		0.451697, -0.879576, -0.149383,
		0.862156, 0.473404, -0.180487,
		31.507627, 37.272060, 44.272964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558002, 36.586536, 44.496433>,  <30.904119, 36.940678, 44.399303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558002, 36.586536, 44.496433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.539387, 36.976936, 44.581528>,  <31.528217, 37.211178, 44.632584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.539387, 36.976936, 44.581528>,  <31.558002, 36.586536, 44.496433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539387, 36.976936, 44.581528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303377, -0.189094, 0.933920,
		0.951733, 0.108001, -0.287296,
		-0.046538, 0.976002, 0.212732,
		31.525425, 37.269737, 44.645348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048500, 36.820656, 45.036579>,  <31.558002, 36.586536, 44.496433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048500, 36.820656, 45.036579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.727690, 37.058048, 45.063503>,  <31.535204, 37.200485, 45.079659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.727690, 37.058048, 45.063503>,  <32.048500, 36.820656, 45.036579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727690, 37.058048, 45.063503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047863, -0.048474, 0.997677,
		0.595368, 0.803385, 0.010471,
		-0.802026, 0.593484, 0.067312,
		31.487082, 37.236092, 45.083698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587143, 37.338516, 45.458122>,  <32.048500, 36.820656, 45.036579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587143, 37.338516, 45.458122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.817478, 37.127247, 45.707741>,  <32.955681, 37.000484, 45.857513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.817478, 37.127247, 45.707741>,  <32.587143, 37.338516, 45.458122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817478, 37.127247, 45.707741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346748, 0.533468, 0.771477,
		-0.740387, -0.660635, 0.124049,
		0.575841, -0.528178, 0.624047,
		32.990231, 36.968792, 45.894955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172581, 36.883087, 45.876324>,  <32.587143, 37.338516, 45.458122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172581, 36.883087, 45.876324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.501480, 37.048141, 46.033112>,  <32.698822, 37.147175, 46.127182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.501480, 37.048141, 46.033112>,  <32.172581, 36.883087, 45.876324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501480, 37.048141, 46.033112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556759, 0.440409, 0.704315,
		0.117996, -0.797355, 0.591863,
		0.822251, 0.412631, 0.391968,
		32.748154, 37.171932, 46.150703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989260, 37.035446, 46.547318>,  <32.172581, 36.883087, 45.876324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989260, 37.035446, 46.547318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.294868, 37.286011, 46.485500>,  <32.478233, 37.436348, 46.448410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.294868, 37.286011, 46.485500>,  <31.989260, 37.035446, 46.547318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294868, 37.286011, 46.485500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358198, 0.611042, 0.705919,
		0.536622, -0.483984, 0.691228,
		0.764023, 0.626408, -0.154537,
		32.524075, 37.473934, 46.439140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380394, 37.157661, 47.310867>,  <31.989260, 37.035446, 46.547318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380394, 37.157661, 47.310867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.397377, 37.484375, 47.080719>,  <32.407566, 37.680405, 46.942631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.397377, 37.484375, 47.080719>,  <32.380394, 37.157661, 47.310867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397377, 37.484375, 47.080719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531343, 0.506160, 0.679321,
		0.846092, 0.276876, 0.455486,
		0.042462, 0.816787, -0.575374,
		32.410114, 37.729412, 46.908108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141224, 37.249310, 47.983246>,  <32.380394, 37.157661, 47.310867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141224, 37.249310, 47.983246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.344994, 37.127090, 48.305023>,  <32.467255, 37.053761, 48.498089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.344994, 37.127090, 48.305023>,  <32.141224, 37.249310, 47.983246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344994, 37.127090, 48.305023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797776, -0.182719, -0.574601,
		0.322553, 0.934482, 0.150673,
		0.509424, -0.305543, 0.804444,
		32.497822, 37.035427, 48.546356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746861, 37.687332, 48.103264>,  <32.141224, 37.249310, 47.983246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746861, 37.687332, 48.103264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.818436, 37.320877, 48.246746>,  <32.861382, 37.101006, 48.332836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.818436, 37.320877, 48.246746>,  <32.746861, 37.687332, 48.103264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818436, 37.320877, 48.246746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807692, -0.071402, -0.585265,
		0.561796, 0.394451, 0.727182,
		0.178936, -0.916139, 0.358708,
		32.872116, 37.046036, 48.354359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469669, 37.780945, 48.151863>,  <32.746861, 37.687332, 48.103264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469669, 37.780945, 48.151863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.402760, 37.393852, 48.227249>,  <33.362614, 37.161598, 48.272480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.402760, 37.393852, 48.227249>,  <33.469669, 37.780945, 48.151863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402760, 37.393852, 48.227249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890593, -0.230316, -0.392173,
		0.422925, 0.102250, 0.900378,
		-0.167271, -0.967729, 0.188469,
		33.352577, 37.103535, 48.283791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090916, 37.598270, 48.452766>,  <33.469669, 37.780945, 48.151863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090916, 37.598270, 48.452766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.931854, 37.271797, 48.285091>,  <33.836418, 37.075912, 48.184486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.931854, 37.271797, 48.285091>,  <34.090916, 37.598270, 48.452766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931854, 37.271797, 48.285091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905025, -0.273714, -0.325593,
		0.151008, -0.508844, 0.847511,
		-0.397651, -0.816186, -0.419183,
		33.812557, 37.026943, 48.159336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612705, 37.158161, 48.627209>,  <34.090916, 37.598270, 48.452766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612705, 37.158161, 48.627209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.384918, 37.013557, 48.331909>,  <34.248245, 36.926796, 48.154728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.384918, 37.013557, 48.331909>,  <34.612705, 37.158161, 48.627209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384918, 37.013557, 48.331909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819024, -0.326032, -0.472125,
		-0.070018, -0.873508, 0.481747,
		-0.569470, -0.361506, -0.738253,
		34.214077, 36.905106, 48.110432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923035, 36.598038, 48.404091>,  <34.612705, 37.158161, 48.627209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923035, 36.598038, 48.404091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.691795, 36.673111, 48.086456>,  <34.553051, 36.718155, 47.895874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.691795, 36.673111, 48.086456>,  <34.923035, 36.598038, 48.404091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691795, 36.673111, 48.086456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687656, -0.411808, -0.597949,
		-0.439235, -0.891734, 0.109008,
		-0.578102, 0.187680, -0.794087,
		34.518364, 36.729416, 47.848228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897099, 35.964607, 47.922596>,  <34.923035, 36.598038, 48.404091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897099, 35.964607, 47.922596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.821114, 36.285915, 47.696793>,  <34.775524, 36.478703, 47.561310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.821114, 36.285915, 47.696793>,  <34.897099, 35.964607, 47.922596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821114, 36.285915, 47.696793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743319, -0.257958, -0.617200,
		-0.641399, -0.536851, -0.548087,
		-0.189961, 0.803274, -0.564505,
		34.764126, 36.526897, 47.527443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858665, 35.630981, 47.288029>,  <34.897099, 35.964607, 47.922596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858665, 35.630981, 47.288029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.888008, 36.025333, 47.227818>,  <34.905613, 36.261944, 47.191692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.888008, 36.025333, 47.227818>,  <34.858665, 35.630981, 47.288029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888008, 36.025333, 47.227818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706207, -0.157924, -0.690169,
		-0.704196, -0.055676, -0.707820,
		0.073356, 0.985880, -0.150528,
		34.910015, 36.321098, 47.182659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085125, 35.603119, 46.488560>,  <34.858665, 35.630981, 47.288029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085125, 35.603119, 46.488560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.168900, 35.945923, 46.676884>,  <35.219166, 36.151608, 46.789879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.168900, 35.945923, 46.676884>,  <35.085125, 35.603119, 46.488560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168900, 35.945923, 46.676884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795550, 0.130610, -0.591644,
		-0.568539, 0.498465, -0.654443,
		0.209437, 0.857014, 0.470811,
		35.231731, 36.203026, 46.818127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385578, 36.055496, 45.931488>,  <35.085125, 35.603119, 46.488560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385578, 36.055496, 45.931488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.519066, 36.179977, 46.287418>,  <35.599159, 36.254665, 46.500977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.519066, 36.179977, 46.287418>,  <35.385578, 36.055496, 45.931488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519066, 36.179977, 46.287418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915940, 0.116160, -0.384138,
		-0.222907, 0.943217, -0.246280,
		0.333717, 0.311205, 0.889823,
		35.619183, 36.273338, 46.554367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854111, 36.624851, 45.814365>,  <35.385578, 36.055496, 45.931488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854111, 36.624851, 45.814365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.954601, 36.464245, 46.166653>,  <36.014896, 36.367882, 46.378025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.954601, 36.464245, 46.166653>,  <35.854111, 36.624851, 45.814365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954601, 36.464245, 46.166653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964606, 0.028536, -0.262146,
		0.080125, 0.915406, 0.394477,
		0.251226, -0.401519, 0.880720,
		36.029968, 36.343788, 46.430870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447441, 36.999374, 46.046650>,  <35.854111, 36.624851, 45.814365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447441, 36.999374, 46.046650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.446957, 36.663025, 46.263142>,  <36.446667, 36.461216, 46.393036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.446957, 36.663025, 46.263142>,  <36.447441, 36.999374, 46.046650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446957, 36.663025, 46.263142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992693, -0.066312, -0.100812,
		0.120660, 0.537155, 0.834809,
		-0.001207, -0.840873, 0.541231,
		36.446594, 36.410763, 46.425510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009674, 37.095745, 46.488998>,  <36.447441, 36.999374, 46.046650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009674, 37.095745, 46.488998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.956055, 36.699356, 46.489662>,  <36.923882, 36.461521, 46.490063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.956055, 36.699356, 46.489662>,  <37.009674, 37.095745, 46.488998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956055, 36.699356, 46.489662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970539, -0.131624, -0.201814,
		0.200212, -0.025439, 0.979422,
		-0.134049, -0.990973, 0.001663,
		36.915840, 36.402065, 46.490162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474903, 36.671947, 46.863064>,  <37.009674, 37.095745, 46.488998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474903, 36.671947, 46.863064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.353477, 36.466465, 46.542076>,  <37.280624, 36.343178, 46.349483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.353477, 36.466465, 46.542076>,  <37.474903, 36.671947, 46.863064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353477, 36.466465, 46.542076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949383, -0.091680, -0.300445,
		0.080769, -0.853056, 0.515531,
		-0.303561, -0.513703, -0.802471,
		37.262409, 36.312355, 46.301334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886059, 36.069977, 46.787395>,  <37.474903, 36.671947, 46.863064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886059, 36.069977, 46.787395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.737221, 36.177044, 46.431889>,  <37.647919, 36.241283, 46.218586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.737221, 36.177044, 46.431889>,  <37.886059, 36.069977, 46.787395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737221, 36.177044, 46.431889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868142, -0.238458, -0.435279,
		-0.328442, -0.933538, -0.143643,
		-0.372096, 0.267666, -0.888763,
		37.625591, 36.257343, 46.165260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556908, 35.736404, 46.853104>,  <37.886059, 36.069977, 46.787395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556908, 35.736404, 46.853104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.374554, 35.594093, 47.179440>,  <38.265141, 35.508709, 47.375240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.374554, 35.594093, 47.179440>,  <38.556908, 35.736404, 46.853104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374554, 35.594093, 47.179440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813133, -0.539213, 0.219234,
		0.361912, 0.763330, 0.535114,
		-0.455889, -0.355775, 0.815837,
		38.237785, 35.487362, 47.424191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050377, 35.750126, 47.448971>,  <38.556908, 35.736404, 46.853104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050377, 35.750126, 47.448971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.783756, 35.456528, 47.501072>,  <38.623783, 35.280369, 47.532333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.783756, 35.456528, 47.501072>,  <39.050377, 35.750126, 47.448971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783756, 35.456528, 47.501072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744923, -0.649202, 0.153710,
		-0.028263, 0.199482, 0.979494,
		-0.666552, -0.733991, 0.130250,
		38.583790, 35.236332, 47.540146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387474, 35.231323, 47.912281>,  <39.050377, 35.750126, 47.448971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387474, 35.231323, 47.912281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.069454, 35.054607, 47.746044>,  <38.878643, 34.948578, 47.646301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.069454, 35.054607, 47.746044>,  <39.387474, 35.231323, 47.912281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069454, 35.054607, 47.746044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468847, -0.882326, 0.041021,
		-0.384813, -0.162237, 0.908624,
		-0.795048, -0.441791, -0.415595,
		38.830940, 34.922070, 47.621365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116890, 34.560501, 48.262440>,  <39.387474, 35.231323, 47.912281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116890, 34.560501, 48.262440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.036625, 34.555534, 47.870609>,  <38.988464, 34.552555, 47.635509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.036625, 34.555534, 47.870609>,  <39.116890, 34.560501, 48.262440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036625, 34.555534, 47.870609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402040, -0.912882, -0.070782,
		-0.893362, -0.408034, 0.188180,
		-0.200668, -0.012421, -0.979580,
		38.976425, 34.551807, 47.576736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664070, 34.572578, 48.816479>,  <39.116890, 34.560501, 48.262440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664070, 34.572578, 48.816479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.561283, 34.357056, 48.495567>,  <38.499611, 34.227741, 48.303020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.561283, 34.357056, 48.495567>,  <38.664070, 34.572578, 48.816479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561283, 34.357056, 48.495567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433170, 0.806312, -0.402771,
		0.863906, 0.244029, -0.440586,
		-0.256962, -0.538805, -0.802284,
		38.484196, 34.195415, 48.254883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692162, 35.046108, 49.430153>,  <38.664070, 34.572578, 48.816479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692162, 35.046108, 49.430153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.831650, 35.390266, 49.578804>,  <38.915344, 35.596764, 49.667995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.831650, 35.390266, 49.578804>,  <38.692162, 35.046108, 49.430153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831650, 35.390266, 49.578804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552798, -0.131376, 0.822894,
		0.756839, -0.492398, 0.429812,
		0.348724, 0.860398, 0.371627,
		38.936268, 35.648384, 49.690292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017216, 34.964947, 50.131542>,  <38.692162, 35.046108, 49.430153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017216, 34.964947, 50.131542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.875492, 35.338657, 50.115616>,  <38.790459, 35.562885, 50.106060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.875492, 35.338657, 50.115616>,  <39.017216, 34.964947, 50.131542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875492, 35.338657, 50.115616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338481, -0.088438, 0.936808,
		0.871721, 0.345395, 0.347570,
		-0.354308, 0.934281, -0.039816,
		38.769199, 35.618942, 50.103672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247925, 35.449368, 50.719604>,  <39.017216, 34.964947, 50.131542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247925, 35.449368, 50.719604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.886539, 35.570732, 50.598476>,  <38.669708, 35.643551, 50.525799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.886539, 35.570732, 50.598476>,  <39.247925, 35.449368, 50.719604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886539, 35.570732, 50.598476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293606, 0.076734, 0.952842,
		0.312342, 0.949764, 0.019758,
		-0.903459, 0.303414, -0.302824,
		38.615501, 35.661755, 50.507629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129116, 36.004814, 51.105122>,  <39.247925, 35.449368, 50.719604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129116, 36.004814, 51.105122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.768002, 35.877827, 50.989059>,  <38.551334, 35.801636, 50.919422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.768002, 35.877827, 50.989059>,  <39.129116, 36.004814, 51.105122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768002, 35.877827, 50.989059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364288, 0.205807, 0.908261,
		-0.228629, 0.925666, -0.301450,
		-0.902786, -0.317469, -0.290156,
		38.497166, 35.782585, 50.902012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675095, 36.443756, 51.394157>,  <39.129116, 36.004814, 51.105122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675095, 36.443756, 51.394157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.461639, 36.114914, 51.314785>,  <38.333565, 35.917610, 51.267162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.461639, 36.114914, 51.314785>,  <38.675095, 36.443756, 51.394157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461639, 36.114914, 51.314785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549709, 0.158874, 0.820109,
		-0.642687, 0.546724, -0.536699,
		-0.533641, -0.822102, -0.198433,
		38.301548, 35.868282, 51.255257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053295, 36.611683, 51.454716>,  <38.675095, 36.443756, 51.394157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053295, 36.611683, 51.454716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.995537, 36.216389, 51.474842>,  <37.960880, 35.979210, 51.486916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.995537, 36.216389, 51.474842>,  <38.053295, 36.611683, 51.454716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995537, 36.216389, 51.474842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545475, 0.121919, 0.829212,
		-0.825594, 0.092295, -0.556665,
		-0.144400, -0.988239, 0.050311,
		37.952217, 35.919918, 51.489937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454605, 36.648247, 51.709240>,  <38.053295, 36.611683, 51.454716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454605, 36.648247, 51.709240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.527847, 36.257381, 51.752380>,  <37.571793, 36.022861, 51.778263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.527847, 36.257381, 51.752380>,  <37.454605, 36.648247, 51.709240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527847, 36.257381, 51.752380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689430, -0.049426, 0.722664,
		-0.700828, -0.206674, -0.682734,
		0.183101, -0.977161, 0.107848,
		37.582779, 35.964233, 51.784733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794262, 36.226124, 51.629375>,  <37.454605, 36.648247, 51.709240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794262, 36.226124, 51.629375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.057037, 36.009201, 51.838886>,  <37.214703, 35.879047, 51.964592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.057037, 36.009201, 51.838886>,  <36.794262, 36.226124, 51.629375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057037, 36.009201, 51.838886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593799, 0.055924, 0.802667,
		-0.464585, -0.838316, -0.285284,
		0.656935, -0.542308, 0.523773,
		37.254116, 35.846508, 51.996017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382343, 35.699493, 51.902145>,  <36.794262, 36.226124, 51.629375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382343, 35.699493, 51.902145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.691879, 35.734241, 52.153103>,  <36.877602, 35.755089, 52.303677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.691879, 35.734241, 52.153103>,  <36.382343, 35.699493, 51.902145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691879, 35.734241, 52.153103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619549, -0.102028, 0.778299,
		0.131623, -0.990981, -0.025133,
		0.773844, 0.086871, 0.627391,
		36.924034, 35.760303, 52.341320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358212, 35.186527, 52.437057>,  <36.382343, 35.699493, 51.902145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358212, 35.186527, 52.437057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.603722, 35.448990, 52.612671>,  <36.751026, 35.606468, 52.718037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.603722, 35.448990, 52.612671>,  <36.358212, 35.186527, 52.437057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603722, 35.448990, 52.612671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563103, -0.025927, 0.825980,
		0.553352, -0.754182, 0.353569,
		0.613772, 0.656154, 0.439029,
		36.787853, 35.645836, 52.744381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546684, 34.964687, 53.140617>,  <36.358212, 35.186527, 52.437057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546684, 34.964687, 53.140617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.623512, 35.357140, 53.131695>,  <36.669609, 35.592609, 53.126343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.623512, 35.357140, 53.131695>,  <36.546684, 34.964687, 53.140617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623512, 35.357140, 53.131695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570511, 0.130119, 0.810917,
		0.798516, -0.143024, 0.584736,
		0.192066, 0.981128, -0.022305,
		36.681133, 35.651478, 53.125004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915836, 35.115082, 53.732395>,  <36.546684, 34.964687, 53.140617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915836, 35.115082, 53.732395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.762821, 35.465492, 53.614933>,  <36.671013, 35.675739, 53.544456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.762821, 35.465492, 53.614933>,  <36.915836, 35.115082, 53.732395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762821, 35.465492, 53.614933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397873, 0.130658, 0.908089,
		0.833882, 0.464219, 0.298566,
		-0.382542, 0.876030, -0.293654,
		36.648060, 35.728302, 53.526836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828201, 35.436081, 54.365356>,  <36.915836, 35.115082, 53.732395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828201, 35.436081, 54.365356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.641872, 35.688541, 54.117275>,  <36.530075, 35.840019, 53.968426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.641872, 35.688541, 54.117275>,  <36.828201, 35.436081, 54.365356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641872, 35.688541, 54.117275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492619, 0.397267, 0.774277,
		0.735074, 0.666202, 0.125861,
		-0.465825, 0.631153, -0.620205,
		36.502125, 35.877888, 53.931213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850304, 36.062466, 54.617401>,  <36.828201, 35.436081, 54.365356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850304, 36.062466, 54.617401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.520493, 36.097839, 54.393852>,  <36.322605, 36.119064, 54.259724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.520493, 36.097839, 54.393852>,  <36.850304, 36.062466, 54.617401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520493, 36.097839, 54.393852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460879, 0.468030, 0.754015,
		0.328250, 0.879277, -0.345144,
		-0.824526, 0.088436, -0.558871,
		36.273136, 36.124371, 54.226192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662811, 36.766476, 54.663006>,  <36.850304, 36.062466, 54.617401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662811, 36.766476, 54.663006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.329670, 36.574570, 54.552601>,  <36.129787, 36.459427, 54.486359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.329670, 36.574570, 54.552601>,  <36.662811, 36.766476, 54.663006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329670, 36.574570, 54.552601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487034, 0.398296, 0.777276,
		-0.262976, 0.781783, -0.565384,
		-0.832851, -0.479766, -0.276013,
		36.079815, 36.430641, 54.469795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133400, 37.203060, 54.778450>,  <36.662811, 36.766476, 54.663006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133400, 37.203060, 54.778450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.938229, 36.859200, 54.717899>,  <35.821125, 36.652882, 54.681568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.938229, 36.859200, 54.717899>,  <36.133400, 37.203060, 54.778450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938229, 36.859200, 54.717899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605379, 0.208336, 0.768188,
		-0.628839, 0.466465, -0.622071,
		-0.487932, -0.859655, -0.151378,
		35.791847, 36.601303, 54.672485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380177, 37.357662, 54.580780>,  <36.133400, 37.203060, 54.778450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380177, 37.357662, 54.580780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.385857, 36.992981, 54.745018>,  <35.389267, 36.774170, 54.843563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.385857, 36.992981, 54.745018>,  <35.380177, 37.357662, 54.580780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385857, 36.992981, 54.745018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598057, 0.321345, 0.734211,
		-0.801328, -0.255989, -0.540688,
		0.014202, -0.911705, 0.410598,
		35.390118, 36.719471, 54.868198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673267, 37.175220, 54.785843>,  <35.380177, 37.357662, 54.580780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673267, 37.175220, 54.785843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.892002, 36.929329, 55.013203>,  <35.023243, 36.781796, 55.149620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.892002, 36.929329, 55.013203>,  <34.673267, 37.175220, 54.785843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892002, 36.929329, 55.013203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446944, 0.359732, 0.819045,
		-0.707960, -0.701928, -0.078033,
		0.546840, -0.614727, 0.568398,
		35.056053, 36.744911, 55.183723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186600, 36.801300, 55.145470>,  <34.673267, 37.175220, 54.785843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186600, 36.801300, 55.145470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.548431, 36.790386, 55.315639>,  <34.765530, 36.783836, 55.417740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.548431, 36.790386, 55.315639>,  <34.186600, 36.801300, 55.145470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548431, 36.790386, 55.315639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380912, 0.396340, 0.835357,
		-0.191410, -0.917698, 0.348127,
		0.904582, -0.027290, 0.425425,
		34.819805, 36.782200, 55.443268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168018, 36.654694, 55.862698>,  <34.186600, 36.801300, 55.145470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168018, 36.654694, 55.862698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.546940, 36.780411, 55.887455>,  <34.774292, 36.855843, 55.902309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.546940, 36.780411, 55.887455>,  <34.168018, 36.654694, 55.862698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546940, 36.780411, 55.887455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218056, 0.491151, 0.843340,
		0.234656, -0.812398, 0.533803,
		0.947306, 0.314294, 0.061897,
		34.831131, 36.874699, 55.906025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411366, 36.438198, 56.478512>,  <34.168018, 36.654694, 55.862698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411366, 36.438198, 56.478512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.623741, 36.760830, 56.374561>,  <34.751167, 36.954411, 56.312191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.623741, 36.760830, 56.374561>,  <34.411366, 36.438198, 56.478512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623741, 36.760830, 56.374561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315271, 0.472665, 0.822916,
		0.786583, -0.354984, 0.505247,
		0.530935, 0.806582, -0.259874,
		34.783020, 37.002804, 56.296600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872841, 36.599468, 57.093628>,  <34.411366, 36.438198, 56.478512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872841, 36.599468, 57.093628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.833027, 36.932350, 56.875446>,  <34.809139, 37.132080, 56.744537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.833027, 36.932350, 56.875446>,  <34.872841, 36.599468, 57.093628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833027, 36.932350, 56.875446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138749, 0.531214, 0.835800,
		0.985313, 0.158871, 0.062595,
		-0.099533, 0.832209, -0.545455,
		34.803165, 37.182014, 56.711811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906464, 37.098122, 57.620922>,  <34.872841, 36.599468, 57.093628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906464, 37.098122, 57.620922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.780483, 37.312290, 57.307457>,  <34.704895, 37.440792, 57.119377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.780483, 37.312290, 57.307457>,  <34.906464, 37.098122, 57.620922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780483, 37.312290, 57.307457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548729, 0.570979, 0.610639,
		0.774405, 0.622341, 0.113971,
		-0.314950, 0.535421, -0.783665,
		34.685997, 37.472916, 57.072357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832577, 37.756176, 57.901638>,  <34.906464, 37.098122, 57.620922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832577, 37.756176, 57.901638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.590294, 37.722416, 57.585159>,  <34.444923, 37.702160, 57.395271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.590294, 37.722416, 57.585159>,  <34.832577, 37.756176, 57.901638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590294, 37.722416, 57.585159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622618, 0.669424, 0.405239,
		0.495444, 0.738070, -0.458026,
		-0.605708, -0.084402, -0.791198,
		34.408581, 37.697094, 57.347801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608730, 38.434769, 57.871895>,  <34.832577, 37.756176, 57.901638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608730, 38.434769, 57.871895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.358437, 38.190903, 57.677258>,  <34.208260, 38.044586, 57.560474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.358437, 38.190903, 57.677258>,  <34.608730, 38.434769, 57.871895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358437, 38.190903, 57.677258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774738, 0.413154, 0.478627,
		-0.090763, 0.676475, -0.730852,
		-0.625734, -0.609660, -0.486592,
		34.170715, 38.008003, 57.531281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165348, 38.828552, 57.643566>,  <34.608730, 38.434769, 57.871895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165348, 38.828552, 57.643566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.973637, 38.480209, 57.599934>,  <33.858612, 38.271202, 57.573753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.973637, 38.480209, 57.599934>,  <34.165348, 38.828552, 57.643566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973637, 38.480209, 57.599934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819842, 0.399861, 0.409842,
		-0.313295, 0.285860, -0.905610,
		-0.479276, -0.870859, -0.109086,
		33.829853, 38.218952, 57.567207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479038, 39.059357, 57.346748>,  <34.165348, 38.828552, 57.643566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479038, 39.059357, 57.346748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.422363, 38.694889, 57.501511>,  <33.388359, 38.476208, 57.594368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.422363, 38.694889, 57.501511>,  <33.479038, 39.059357, 57.346748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422363, 38.694889, 57.501511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718077, 0.363640, 0.593406,
		-0.681388, -0.193751, -0.705813,
		-0.141689, -0.911168, 0.386907,
		33.379856, 38.421539, 57.617584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704449, 38.953136, 57.492401>,  <33.479038, 39.059357, 57.346748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704449, 38.953136, 57.492401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.878384, 38.677631, 57.724442>,  <32.982746, 38.512329, 57.863667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.878384, 38.677631, 57.724442>,  <32.704449, 38.953136, 57.492401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878384, 38.677631, 57.724442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713275, 0.129790, 0.688762,
		-0.549687, -0.713272, -0.434841,
		0.434837, -0.688765, 0.580103,
		33.008835, 38.471001, 57.898472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238144, 38.386597, 57.608017>,  <32.704449, 38.953136, 57.492401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238144, 38.386597, 57.608017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.475426, 38.410675, 57.929138>,  <32.617794, 38.425121, 58.121811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.475426, 38.410675, 57.929138>,  <32.238144, 38.386597, 57.608017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475426, 38.410675, 57.929138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805019, 0.035100, 0.592210,
		0.007466, -0.997570, 0.069274,
		0.593202, 0.060189, 0.802800,
		32.653385, 38.428734, 58.169979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961283, 37.888531, 58.214371>,  <32.238144, 38.386597, 57.608017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961283, 37.888531, 58.214371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.208172, 38.148777, 58.391338>,  <32.356304, 38.304924, 58.497520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.208172, 38.148777, 58.391338>,  <31.961283, 37.888531, 58.214371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208172, 38.148777, 58.391338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706813, 0.211504, 0.675042,
		0.345623, -0.729356, 0.590411,
		0.617220, 0.650620, 0.442418,
		32.393337, 38.343964, 58.524063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889463, 37.779564, 58.906338>,  <31.961283, 37.888531, 58.214371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889463, 37.779564, 58.906338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.027309, 38.152390, 58.861626>,  <32.110016, 38.376083, 58.834797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.027309, 38.152390, 58.861626>,  <31.889463, 37.779564, 58.906338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027309, 38.152390, 58.861626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591094, 0.307956, 0.745500,
		0.729278, -0.190837, 0.657065,
		0.344616, 0.932064, -0.111783,
		32.130695, 38.432011, 58.828091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086597, 37.954433, 59.558777>,  <31.889463, 37.779564, 58.906338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086597, 37.954433, 59.558777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.028328, 38.299721, 59.365433>,  <31.993366, 38.506893, 59.249428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.028328, 38.299721, 59.365433>,  <32.086597, 37.954433, 59.558777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028328, 38.299721, 59.365433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627434, 0.297135, 0.719748,
		0.764921, 0.408126, 0.498326,
		-0.145678, 0.863217, -0.483357,
		31.984625, 38.558685, 59.220425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238594, 38.505211, 59.989716>,  <32.086597, 37.954433, 59.558777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238594, 38.505211, 59.989716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.016247, 38.673737, 59.703079>,  <31.882837, 38.774853, 59.531097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.016247, 38.673737, 59.703079>,  <32.238594, 38.505211, 59.989716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016247, 38.673737, 59.703079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591569, 0.405119, 0.697083,
		0.583997, 0.811400, 0.024043,
		-0.555873, 0.421317, -0.716587,
		31.849485, 38.800133, 59.488102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234226, 39.350395, 60.076553>,  <32.238594, 38.505211, 59.989716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234226, 39.350395, 60.076553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.895514, 39.241211, 59.893932>,  <31.692286, 39.175701, 59.784359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.895514, 39.241211, 59.893932>,  <32.234226, 39.350395, 60.076553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895514, 39.241211, 59.893932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531844, 0.450175, 0.717276,
		0.009740, 0.850196, -0.526376,
		-0.846786, -0.272963, -0.456557,
		31.641478, 39.159321, 59.756966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886806, 39.980843, 59.942448>,  <32.234226, 39.350395, 60.076553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886806, 39.980843, 59.942448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.618187, 39.685001, 59.924503>,  <31.457016, 39.507496, 59.913738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.618187, 39.685001, 59.924503>,  <31.886806, 39.980843, 59.942448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618187, 39.685001, 59.924503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562299, 0.469261, 0.680892,
		-0.482538, 0.482477, -0.731009,
		-0.671549, -0.739602, -0.044860,
		31.416723, 39.463120, 59.911045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212145, 40.298332, 59.755924>,  <31.886806, 39.980843, 59.942448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212145, 40.298332, 59.755924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.134378, 39.945667, 59.927917>,  <31.087719, 39.734070, 60.031113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.134378, 39.945667, 59.927917>,  <31.212145, 40.298332, 59.755924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134378, 39.945667, 59.927917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634914, 0.447238, 0.629970,
		-0.747722, -0.150525, -0.646726,
		-0.194414, -0.881658, 0.429980,
		31.076054, 39.681171, 60.056911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518114, 40.229073, 59.761349>,  <31.212145, 40.298332, 59.755924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518114, 40.229073, 59.761349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.641542, 39.995583, 60.061760>,  <30.715599, 39.855488, 60.242008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.641542, 39.995583, 60.061760>,  <30.518114, 40.229073, 59.761349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641542, 39.995583, 60.061760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682401, 0.414199, 0.602303,
		-0.662656, -0.698358, -0.270524,
		0.308573, -0.583725, 0.751032,
		30.734114, 39.820465, 60.287071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952484, 40.278542, 60.267693>,  <30.518114, 40.229073, 59.761349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.952484, 40.278542, 60.267693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.239674, 40.108242, 60.487968>,  <30.411987, 40.006062, 60.620132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.239674, 40.108242, 60.487968>,  <29.952484, 40.278542, 60.267693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.239674, 40.108242, 60.487968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459315, 0.304669, 0.834390,
		-0.523014, -0.852008, 0.023193,
		0.717974, -0.425745, 0.550686,
		30.455067, 39.980518, 60.653175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540213, 39.931404, 60.818260>,  <29.952484, 40.278542, 60.267693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.540213, 39.931404, 60.818260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.917547, 39.972527, 60.944466>,  <30.143948, 39.997200, 61.020187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.917547, 39.972527, 60.944466>,  <29.540213, 39.931404, 60.818260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.917547, 39.972527, 60.944466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328260, 0.428373, 0.841868,
		-0.048612, -0.897735, 0.437845,
		0.943336, 0.102802, 0.315514,
		30.200548, 40.003368, 61.039120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.482153, 39.865990, 61.586342>,  <29.540213, 39.931404, 60.818260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.482153, 39.865990, 61.586342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.836857, 40.040359, 61.524860>,  <30.049679, 40.144981, 61.487972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.836857, 40.040359, 61.524860>,  <29.482153, 39.865990, 61.586342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.836857, 40.040359, 61.524860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191227, 0.648721, 0.736610,
		0.420818, -0.623804, 0.658620,
		0.886761, 0.435924, -0.153706,
		30.102884, 40.171139, 61.478748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839365, 40.011345, 62.248196>,  <29.482153, 39.865990, 61.586342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839365, 40.011345, 62.248196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.039906, 40.258373, 62.005791>,  <30.160229, 40.406590, 61.860348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.039906, 40.258373, 62.005791>,  <29.839365, 40.011345, 62.248196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.039906, 40.258373, 62.005791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280627, 0.778593, 0.561286,
		0.818474, -0.111335, 0.563654,
		0.501348, 0.617574, -0.606014,
		30.190310, 40.443645, 61.823986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458088, 40.402790, 62.681232>,  <29.839365, 40.011345, 62.248196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458088, 40.402790, 62.681232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.316147, 40.593456, 62.359520>,  <30.230982, 40.707855, 62.166492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.316147, 40.593456, 62.359520>,  <30.458088, 40.402790, 62.681232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316147, 40.593456, 62.359520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101937, 0.835412, 0.540089,
		0.929349, 0.273638, -0.247858,
		-0.354852, 0.476665, -0.804282,
		30.209692, 40.736454, 62.118237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007349, 41.051552, 62.485298>,  <30.458088, 40.402790, 62.681232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007349, 41.051552, 62.485298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.623241, 41.106537, 62.388149>,  <30.392776, 41.139530, 62.329861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.623241, 41.106537, 62.388149>,  <31.007349, 41.051552, 62.485298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623241, 41.106537, 62.388149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080932, 0.695703, 0.713756,
		0.267082, 0.705054, -0.656936,
		-0.960269, 0.137464, -0.242872,
		30.335161, 41.147778, 62.315289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987785, 41.803440, 62.340923>,  <31.007349, 41.051552, 62.485298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987785, 41.803440, 62.340923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.643852, 41.626621, 62.443123>,  <30.437492, 41.520531, 62.504440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.643852, 41.626621, 62.443123>,  <30.987785, 41.803440, 62.340923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643852, 41.626621, 62.443123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111277, 0.650629, 0.751199,
		-0.498298, 0.617476, -0.608623,
		-0.859835, -0.442047, 0.255496,
		30.385902, 41.494007, 62.519772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710901, 42.282200, 62.676662>,  <30.987785, 41.803440, 62.340923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710901, 42.282200, 62.676662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.432495, 42.017094, 62.787159>,  <30.265451, 41.858032, 62.853458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.432495, 42.017094, 62.787159>,  <30.710901, 42.282200, 62.676662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432495, 42.017094, 62.787159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349077, 0.648530, 0.676427,
		-0.627462, 0.374374, -0.682742,
		-0.696015, -0.662762, 0.276242,
		30.223690, 41.818264, 62.870033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060104, 42.522552, 62.531509>,  <30.710901, 42.282200, 62.676662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060104, 42.522552, 62.531509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.061829, 42.273979, 62.844891>,  <30.062862, 42.124836, 63.032921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.061829, 42.273979, 62.844891>,  <30.060104, 42.522552, 62.531509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.061829, 42.273979, 62.844891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594081, 0.628629, 0.501891,
		-0.804394, -0.467600, -0.366470,
		0.004311, -0.621431, 0.783458,
		30.063122, 42.087551, 63.079929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360113, 42.592693, 62.786068>,  <30.060104, 42.522552, 62.531509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360113, 42.592693, 62.786068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.619776, 42.473045, 63.065819>,  <29.775574, 42.401257, 63.233669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.619776, 42.473045, 63.065819>,  <29.360113, 42.592693, 62.786068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.619776, 42.473045, 63.065819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330456, 0.717237, 0.613490,
		-0.685125, -0.629362, 0.366751,
		0.649155, -0.299122, 0.699373,
		29.814522, 42.383308, 63.275631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.234652, 41.968754, 62.512775>,  <29.360113, 42.592693, 62.786068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.234652, 41.968754, 62.512775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.989315, 42.273502, 62.429482>,  <28.842113, 42.456352, 62.379505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.989315, 42.273502, 62.429482>,  <29.234652, 41.968754, 62.512775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989315, 42.273502, 62.429482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528876, 0.200360, -0.824709,
		-0.586605, -0.615955, -0.525827,
		-0.613339, 0.761876, -0.208232,
		28.805313, 42.502064, 62.367012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800022, 41.825588, 61.843254>,  <29.234652, 41.968754, 62.512775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800022, 41.825588, 61.843254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.872726, 42.213722, 61.907013>,  <28.916349, 42.446602, 61.945271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.872726, 42.213722, 61.907013>,  <28.800022, 41.825588, 61.843254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.872726, 42.213722, 61.907013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433068, 0.066543, -0.898902,
		-0.882845, 0.232416, -0.408127,
		0.181762, 0.970337, 0.159399,
		28.927256, 42.504822, 61.954834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.538015, 42.291500, 61.312634>,  <28.800022, 41.825588, 61.843254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.538015, 42.291500, 61.312634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.834776, 42.514446, 61.461723>,  <29.012833, 42.648216, 61.551178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.834776, 42.514446, 61.461723>,  <28.538015, 42.291500, 61.312634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.834776, 42.514446, 61.461723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451964, -0.005088, -0.892022,
		-0.495290, 0.830249, -0.255686,
		0.741901, 0.557370, 0.372723,
		29.057346, 42.681656, 61.573540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.654533, 42.847691, 60.754272>,  <28.538015, 42.291500, 61.312634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.654533, 42.847691, 60.754272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.970877, 42.785530, 60.991051>,  <29.160683, 42.748234, 61.133118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.970877, 42.785530, 60.991051>,  <28.654533, 42.847691, 60.754272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.970877, 42.785530, 60.991051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577965, -0.128414, -0.805894,
		0.201247, 0.979470, -0.011743,
		0.790857, -0.155397, 0.591943,
		29.208134, 42.738911, 61.168633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079281, 43.303085, 60.667606>,  <28.654533, 42.847691, 60.754272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.079281, 43.303085, 60.667606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.305182, 43.000504, 60.799568>,  <29.440722, 42.818954, 60.878746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.305182, 43.000504, 60.799568>,  <29.079281, 43.303085, 60.667606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.305182, 43.000504, 60.799568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461146, -0.042258, -0.886318,
		0.684397, 0.652683, 0.324969,
		0.564752, -0.756451, 0.329903,
		29.474607, 42.773567, 60.898540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.833464, 43.321129, 60.577347>,  <29.079281, 43.303085, 60.667606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.833464, 43.321129, 60.577347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.795719, 42.923050, 60.566929>,  <29.773073, 42.684204, 60.560677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.795719, 42.923050, 60.566929>,  <29.833464, 43.321129, 60.577347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795719, 42.923050, 60.566929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540704, -0.029266, -0.840704,
		0.835904, -0.093412, 0.540869,
		-0.094361, -0.995197, -0.026045,
		29.767410, 42.624489, 60.559116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.457918, 43.079155, 60.401119>,  <29.833464, 43.321129, 60.577347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.457918, 43.079155, 60.401119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.206995, 42.778332, 60.320236>,  <30.056440, 42.597836, 60.271706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.206995, 42.778332, 60.320236>,  <30.457918, 43.079155, 60.401119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206995, 42.778332, 60.320236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392024, -0.080596, -0.916418,
		0.672905, -0.654147, 0.345384,
		-0.627309, -0.752061, -0.202208,
		30.018803, 42.552715, 60.259575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807138, 42.544018, 60.154690>,  <30.457918, 43.079155, 60.401119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807138, 42.544018, 60.154690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.441683, 42.468098, 60.010887>,  <30.222410, 42.422546, 59.924606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.441683, 42.468098, 60.010887>,  <30.807138, 42.544018, 60.154690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441683, 42.468098, 60.010887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363274, 0.015775, -0.931549,
		0.182476, -0.981697, 0.054535,
		-0.913638, -0.189797, -0.359504,
		30.167591, 42.411160, 59.903038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869242, 41.900101, 59.719681>,  <30.807138, 42.544018, 60.154690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869242, 41.900101, 59.719681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.580210, 42.161175, 59.628574>,  <30.406790, 42.317818, 59.573910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.580210, 42.161175, 59.628574>,  <30.869242, 41.900101, 59.719681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580210, 42.161175, 59.628574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178859, -0.141748, -0.973610,
		-0.667747, -0.744250, -0.014315,
		-0.722581, 0.652686, -0.227767,
		30.363436, 42.356979, 59.560246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760160, 41.523766, 59.136841>,  <30.869242, 41.900101, 59.719681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760160, 41.523766, 59.136841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.559601, 41.869457, 59.120316>,  <30.439266, 42.076874, 59.110401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.559601, 41.869457, 59.120316>,  <30.760160, 41.523766, 59.136841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.559601, 41.869457, 59.120316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023005, -0.034419, -0.999143,
		-0.864911, -0.501919, -0.002624,
		-0.501398, 0.864230, -0.041316,
		30.409182, 42.128727, 59.107922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326912, 41.399338, 58.673347>,  <30.760160, 41.523766, 59.136841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326912, 41.399338, 58.673347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.356085, 41.798019, 58.659119>,  <30.373589, 42.037228, 58.650581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.356085, 41.798019, 58.659119>,  <30.326912, 41.399338, 58.673347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356085, 41.798019, 58.659119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129618, -0.044836, -0.990550,
		-0.988878, 0.067631, -0.132461,
		0.072930, 0.996702, -0.035571,
		30.377964, 42.097031, 58.648449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.873867, 41.604019, 58.086651>,  <30.326912, 41.399338, 58.673347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.873867, 41.604019, 58.086651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.132935, 41.902218, 58.149593>,  <30.288374, 42.081139, 58.187359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.132935, 41.902218, 58.149593>,  <29.873867, 41.604019, 58.086651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132935, 41.902218, 58.149593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057195, 0.158367, -0.985722,
		-0.759774, 0.647420, 0.059930,
		0.647667, 0.745498, 0.157352,
		30.327234, 42.125866, 58.196800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636341, 42.149109, 57.699295>,  <29.873867, 41.604019, 58.086651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636341, 42.149109, 57.699295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.020033, 42.242588, 57.762871>,  <30.250248, 42.298676, 57.801018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.020033, 42.242588, 57.762871>,  <29.636341, 42.149109, 57.699295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020033, 42.242588, 57.762871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155225, 0.034318, -0.987283,
		-0.236182, 0.971703, -0.003357,
		0.959231, 0.233699, 0.158938,
		30.307802, 42.312698, 57.810551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711740, 42.819206, 57.312637>,  <29.636341, 42.149109, 57.699295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711740, 42.819206, 57.312637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.068859, 42.646034, 57.362419>,  <30.283131, 42.542130, 57.392288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.068859, 42.646034, 57.362419>,  <29.711740, 42.819206, 57.312637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068859, 42.646034, 57.362419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172350, 0.073044, -0.982324,
		0.416185, 0.898464, 0.139828,
		0.892796, -0.432928, 0.124451,
		30.336699, 42.516155, 57.399754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154978, 43.068031, 56.872036>,  <29.711740, 42.819206, 57.312637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154978, 43.068031, 56.872036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.391148, 42.755341, 56.952335>,  <30.532848, 42.567726, 57.000515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.391148, 42.755341, 56.952335>,  <30.154978, 43.068031, 56.872036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391148, 42.755341, 56.952335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258220, -0.052693, -0.964648,
		0.764672, 0.621388, 0.170747,
		0.590424, -0.781729, 0.200748,
		30.568275, 42.520821, 57.012558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828732, 43.158844, 56.563271>,  <30.154978, 43.068031, 56.872036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828732, 43.158844, 56.563271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.804810, 42.762741, 56.613564>,  <30.790457, 42.525078, 56.643742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.804810, 42.762741, 56.613564>,  <30.828732, 43.158844, 56.563271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804810, 42.762741, 56.613564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436737, -0.139224, -0.888750,
		0.897599, 0.001761, 0.440810,
		-0.059806, -0.990259, 0.125736,
		30.786867, 42.465664, 56.651283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382895, 42.948689, 56.132050>,  <30.828732, 43.158844, 56.563271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382895, 42.948689, 56.132050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.153606, 42.631966, 56.216400>,  <31.016033, 42.441933, 56.267010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.153606, 42.631966, 56.216400>,  <31.382895, 42.948689, 56.132050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153606, 42.631966, 56.216400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232082, -0.403697, -0.884967,
		0.785849, -0.458340, 0.415170,
		-0.573218, -0.791804, 0.210872,
		30.981642, 42.394424, 56.279663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757206, 42.392952, 55.963875>,  <31.382895, 42.948689, 56.132050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757206, 42.392952, 55.963875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.399967, 42.213516, 55.950371>,  <31.185623, 42.105854, 55.942268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.399967, 42.213516, 55.950371>,  <31.757206, 42.392952, 55.963875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399967, 42.213516, 55.950371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171420, -0.269972, -0.947486,
		0.415921, -0.851986, 0.318009,
		-0.893098, -0.448593, -0.033761,
		31.132038, 42.078938, 55.940243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755947, 41.679733, 55.661991>,  <31.757206, 42.392952, 55.963875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755947, 41.679733, 55.661991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.375658, 41.786804, 55.599411>,  <31.147484, 41.851048, 55.561863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.375658, 41.786804, 55.599411>,  <31.755947, 41.679733, 55.661991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375658, 41.786804, 55.599411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085504, -0.258669, -0.962174,
		-0.298025, -0.928136, 0.223034,
		-0.950721, 0.267682, -0.156450,
		31.090441, 41.867107, 55.552475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413120, 41.118660, 55.396366>,  <31.755947, 41.679733, 55.661991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413120, 41.118660, 55.396366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.326479, 41.478168, 55.243896>,  <31.274494, 41.693874, 55.152416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.326479, 41.478168, 55.243896>,  <31.413120, 41.118660, 55.396366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326479, 41.478168, 55.243896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301166, -0.309884, -0.901815,
		-0.928645, -0.310133, -0.203557,
		-0.216604, 0.898771, -0.381174,
		31.261497, 41.747799, 55.129543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970667, 41.133610, 54.772793>,  <31.413120, 41.118660, 55.396366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970667, 41.133610, 54.772793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.208729, 41.454449, 54.753098>,  <31.351566, 41.646954, 54.741280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.208729, 41.454449, 54.753098>,  <30.970667, 41.133610, 54.772793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208729, 41.454449, 54.753098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330332, -0.300039, -0.894906,
		-0.732577, 0.516345, -0.443530,
		0.595157, 0.802100, -0.049236,
		31.387276, 41.695080, 54.738327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874897, 41.512348, 54.119289>,  <30.970667, 41.133610, 54.772793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874897, 41.512348, 54.119289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.240051, 41.598515, 54.257992>,  <31.459143, 41.650215, 54.341213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.240051, 41.598515, 54.257992>,  <30.874897, 41.512348, 54.119289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240051, 41.598515, 54.257992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394265, -0.245058, -0.885721,
		-0.105822, 0.945274, -0.308640,
		0.912884, 0.215415, 0.346756,
		31.513916, 41.663139, 54.362019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.135336, 41.981693, 53.633919>,  <30.874897, 41.512348, 54.119289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.135336, 41.981693, 53.633919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.441309, 41.815872, 53.831108>,  <31.624893, 41.716381, 53.949421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.441309, 41.815872, 53.831108>,  <31.135336, 41.981693, 53.633919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441309, 41.815872, 53.831108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474073, -0.155770, -0.866597,
		0.436038, 0.896596, 0.077373,
		0.764935, -0.414550, 0.492974,
		31.670790, 41.691505, 53.979000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715006, 42.319038, 53.274475>,  <31.135336, 41.981693, 53.633919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715006, 42.319038, 53.274475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.825174, 41.978477, 53.453026>,  <31.891275, 41.774139, 53.560158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.825174, 41.978477, 53.453026>,  <31.715006, 42.319038, 53.274475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825174, 41.978477, 53.453026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500663, -0.269353, -0.822670,
		0.820658, 0.450066, 0.352081,
		0.275422, -0.851405, 0.446378,
		31.907801, 41.723057, 53.586941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352219, 42.133060, 52.924652>,  <31.715006, 42.319038, 53.274475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352219, 42.133060, 52.924652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.290306, 41.797237, 53.132957>,  <32.253159, 41.595745, 53.257938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.290306, 41.797237, 53.132957>,  <32.352219, 42.133060, 52.924652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290306, 41.797237, 53.132957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377350, -0.537385, -0.754204,
		0.913045, 0.079773, 0.399982,
		-0.154779, -0.839556, 0.520759,
		32.243874, 41.545372, 53.289185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939774, 41.829971, 52.745163>,  <32.352219, 42.133060, 52.924652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939774, 41.829971, 52.745163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.683136, 41.562851, 52.896111>,  <32.529152, 41.402580, 52.986679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.683136, 41.562851, 52.896111>,  <32.939774, 41.829971, 52.745163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683136, 41.562851, 52.896111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464117, -0.729673, -0.502169,
		0.610700, -0.147046, 0.778089,
		-0.641593, -0.667799, 0.377365,
		32.490658, 41.362511, 53.009319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323376, 41.274250, 52.939854>,  <32.939774, 41.829971, 52.745163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323376, 41.274250, 52.939854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.965096, 41.106441, 52.880886>,  <32.750130, 41.005756, 52.845505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.965096, 41.106441, 52.880886>,  <33.323376, 41.274250, 52.939854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965096, 41.106441, 52.880886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435915, -0.762962, -0.477354,
		0.087783, -0.491826, 0.866256,
		-0.895696, -0.419518, -0.147419,
		32.696388, 40.980587, 52.836658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312622, 40.575150, 53.235481>,  <33.323376, 41.274250, 52.939854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312622, 40.575150, 53.235481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.016273, 40.580082, 52.966866>,  <32.838463, 40.583042, 52.805698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.016273, 40.580082, 52.966866>,  <33.312622, 40.575150, 53.235481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016273, 40.580082, 52.966866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327711, -0.866104, -0.377451,
		-0.586273, -0.499711, 0.637631,
		-0.740871, 0.012330, -0.671534,
		32.794014, 40.583782, 52.765404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950874, 39.920620, 53.327225>,  <33.312622, 40.575150, 53.235481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950874, 39.920620, 53.327225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.850533, 40.042850, 52.959812>,  <32.790325, 40.116188, 52.739365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.850533, 40.042850, 52.959812>,  <32.950874, 39.920620, 53.327225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850533, 40.042850, 52.959812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322098, -0.868452, -0.376886,
		-0.912865, -0.390400, 0.119433,
		-0.250859, 0.305577, -0.918528,
		32.775276, 40.134525, 52.684254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814442, 39.355198, 52.934444>,  <32.950874, 39.920620, 53.327225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814442, 39.355198, 52.934444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.838383, 39.606827, 52.624428>,  <32.852749, 39.757805, 52.438419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.838383, 39.606827, 52.624428>,  <32.814442, 39.355198, 52.934444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838383, 39.606827, 52.624428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413434, -0.722329, -0.554358,
		-0.908565, -0.287249, -0.303312,
		0.059853, 0.629069, -0.775042,
		32.856339, 39.795547, 52.391914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777420, 38.963478, 52.323174>,  <32.814442, 39.355198, 52.934444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777420, 38.963478, 52.323174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.929287, 39.288719, 52.146664>,  <33.020409, 39.483864, 52.040760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.929287, 39.288719, 52.146664>,  <32.777420, 38.963478, 52.323174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929287, 39.288719, 52.146664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527111, -0.582118, -0.619106,
		-0.760268, 0.002454, -0.649605,
		0.379666, 0.813100, -0.441272,
		33.043186, 39.532650, 52.014282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542244, 38.972645, 51.621689>,  <32.777420, 38.963478, 52.323174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542244, 38.972645, 51.621689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.873863, 39.194927, 51.646603>,  <33.072834, 39.328297, 51.661552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.873863, 39.194927, 51.646603>,  <32.542244, 38.972645, 51.621689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873863, 39.194927, 51.646603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403844, -0.517969, -0.754068,
		-0.386776, 0.650310, -0.653836,
		0.829045, 0.555703, 0.062286,
		33.122578, 39.361637, 51.665287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761909, 38.974888, 50.916904>,  <32.542244, 38.972645, 51.621689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761909, 38.974888, 50.916904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.086246, 39.115574, 51.104027>,  <33.280849, 39.199986, 51.216301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.086246, 39.115574, 51.104027>,  <32.761909, 38.974888, 50.916904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086246, 39.115574, 51.104027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577233, -0.348561, -0.738450,
		-0.096663, 0.868795, -0.485646,
		0.810838, 0.351711, 0.467804,
		33.329498, 39.221088, 51.244370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111874, 39.304108, 50.450939>,  <32.761909, 38.974888, 50.916904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111874, 39.304108, 50.450939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.393826, 39.250877, 50.729630>,  <33.562996, 39.218941, 50.896843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.393826, 39.250877, 50.729630>,  <33.111874, 39.304108, 50.450939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393826, 39.250877, 50.729630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700055, -0.027742, -0.713549,
		0.114283, 0.990718, 0.073604,
		0.704884, -0.133073, 0.696728,
		33.605289, 39.210957, 50.938648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655537, 39.737152, 50.278160>,  <33.111874, 39.304108, 50.450939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655537, 39.737152, 50.278160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.816208, 39.446678, 50.501343>,  <33.912609, 39.272392, 50.635250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.816208, 39.446678, 50.501343>,  <33.655537, 39.737152, 50.278160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816208, 39.446678, 50.501343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667959, -0.184477, -0.720971,
		0.626489, 0.662285, 0.410962,
		0.401676, -0.726186, 0.557952,
		33.936710, 39.228821, 50.668728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368496, 39.801811, 50.223034>,  <33.655537, 39.737152, 50.278160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368496, 39.801811, 50.223034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.336430, 39.421486, 50.342712>,  <34.317188, 39.193291, 50.414520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.336430, 39.421486, 50.342712>,  <34.368496, 39.801811, 50.223034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336430, 39.421486, 50.342712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632293, -0.280552, -0.722146,
		0.770570, 0.131287, 0.623687,
		-0.080168, -0.950817, 0.299197,
		34.312378, 39.136242, 50.432472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997692, 39.598164, 50.341908>,  <34.368496, 39.801811, 50.223034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997692, 39.598164, 50.341908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.803715, 39.256393, 50.267307>,  <34.687328, 39.051331, 50.222546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.803715, 39.256393, 50.267307>,  <34.997692, 39.598164, 50.341908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803715, 39.256393, 50.267307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743707, -0.290702, -0.601990,
		0.460142, -0.430631, 0.776419,
		-0.484942, -0.854429, -0.186499,
		34.658234, 39.000065, 50.211357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449162, 39.126045, 50.445499>,  <34.997692, 39.598164, 50.341908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449162, 39.126045, 50.445499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.171909, 38.934628, 50.229885>,  <35.005558, 38.819778, 50.100517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.171909, 38.934628, 50.229885>,  <35.449162, 39.126045, 50.445499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171909, 38.934628, 50.229885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694315, -0.242369, -0.677631,
		0.193630, -0.843952, 0.500253,
		-0.693134, -0.478542, -0.539038,
		34.963970, 38.791065, 50.068172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781384, 38.436920, 50.210152>,  <35.449162, 39.126045, 50.445499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781384, 38.436920, 50.210152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.468182, 38.487389, 49.966515>,  <35.280262, 38.517670, 49.820332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.468182, 38.487389, 49.966515>,  <35.781384, 38.436920, 50.210152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468182, 38.487389, 49.966515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451375, -0.558500, -0.695944,
		-0.427983, -0.819854, 0.380357,
		-0.783002, 0.126168, -0.609089,
		35.233280, 38.525238, 49.783787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839718, 37.865482, 49.710396>,  <35.781384, 38.436920, 50.210152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839718, 37.865482, 49.710396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.597466, 38.105354, 49.501167>,  <35.452114, 38.249275, 49.375629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.597466, 38.105354, 49.501167>,  <35.839718, 37.865482, 49.710396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597466, 38.105354, 49.501167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387326, -0.352059, -0.852076,
		-0.695121, -0.718640, -0.019053,
		-0.605628, 0.599676, -0.523071,
		35.415775, 38.285255, 49.344246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497921, 37.467167, 49.120289>,  <35.839718, 37.865482, 49.710396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497921, 37.467167, 49.120289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.486122, 37.860329, 49.047600>,  <35.479042, 38.096226, 49.003986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.486122, 37.860329, 49.047600>,  <35.497921, 37.467167, 49.120289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486122, 37.860329, 49.047600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294669, -0.165173, -0.941216,
		-0.955144, -0.081308, -0.284760,
		-0.029494, 0.982907, -0.181723,
		35.477276, 38.155201, 48.993084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235390, 37.533566, 48.472172>,  <35.497921, 37.467167, 49.120289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235390, 37.533566, 48.472172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.382076, 37.901489, 48.528000>,  <35.470089, 38.122242, 48.561497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.382076, 37.901489, 48.528000>,  <35.235390, 37.533566, 48.472172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382076, 37.901489, 48.528000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392161, -0.016793, -0.919743,
		-0.843641, 0.392016, -0.366870,
		0.366715, 0.919805, 0.139566,
		35.492092, 38.177429, 48.569870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062473, 37.886372, 47.822987>,  <35.235390, 37.533566, 48.472172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062473, 37.886372, 47.822987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.358353, 38.101654, 47.984566>,  <35.535881, 38.230824, 48.081512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.358353, 38.101654, 47.984566>,  <35.062473, 37.886372, 47.822987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358353, 38.101654, 47.984566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400018, 0.131039, -0.907091,
		-0.541139, 0.832561, -0.118364,
		0.739698, 0.538210, 0.403951,
		35.580261, 38.263119, 48.105751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128143, 38.589531, 47.483124>,  <35.062473, 37.886372, 47.822987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128143, 38.589531, 47.483124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.477222, 38.458187, 47.627666>,  <35.686672, 38.379383, 47.714390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.477222, 38.458187, 47.627666>,  <35.128143, 38.589531, 47.483124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477222, 38.458187, 47.627666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417849, 0.119414, -0.900634,
		0.252577, 0.936975, 0.241416,
		0.872701, -0.328355, 0.361353,
		35.739033, 38.359680, 47.736073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809727, 39.172741, 47.713806>,  <35.128143, 38.589531, 47.483124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809727, 39.172741, 47.713806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.735542, 39.311371, 47.346004>,  <34.691032, 39.394550, 47.125324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.735542, 39.311371, 47.346004>,  <34.809727, 39.172741, 47.713806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735542, 39.311371, 47.346004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895157, 0.326398, 0.303575,
		0.405337, 0.879402, 0.249707,
		-0.185461, 0.346577, -0.919504,
		34.679905, 39.415344, 47.070152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619240, 39.789509, 47.834324>,  <34.809727, 39.172741, 47.713806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619240, 39.789509, 47.834324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.454979, 39.710171, 47.478340>,  <34.356422, 39.662567, 47.264751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.454979, 39.710171, 47.478340>,  <34.619240, 39.789509, 47.834324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454979, 39.710171, 47.478340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872006, 0.370617, 0.319764,
		0.266409, 0.907359, -0.325154,
		-0.410648, -0.198349, -0.889958,
		34.331783, 39.650665, 47.211353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243557, 40.335030, 47.661591>,  <34.619240, 39.789509, 47.834324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243557, 40.335030, 47.661591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.084919, 40.032269, 47.453815>,  <33.989738, 39.850613, 47.329151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.084919, 40.032269, 47.453815>,  <34.243557, 40.335030, 47.661591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084919, 40.032269, 47.453815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879795, 0.151859, 0.450444,
		-0.262059, 0.635643, -0.726142,
		-0.396593, -0.756899, -0.519439,
		33.965942, 39.805199, 47.297985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622135, 40.610748, 47.449379>,  <34.243557, 40.335030, 47.661591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622135, 40.610748, 47.449379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.572758, 40.215454, 47.413265>,  <33.543129, 39.978279, 47.391598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.572758, 40.215454, 47.413265>,  <33.622135, 40.610748, 47.449379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572758, 40.215454, 47.413265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903055, 0.074156, 0.423075,
		-0.411403, 0.133755, -0.901586,
		-0.123446, -0.988236, -0.090280,
		33.535725, 39.918983, 47.386181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936943, 40.603428, 47.354126>,  <33.622135, 40.610748, 47.449379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936943, 40.603428, 47.354126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.047222, 40.221436, 47.397949>,  <33.113388, 39.992241, 47.424244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.047222, 40.221436, 47.397949>,  <32.936943, 40.603428, 47.354126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047222, 40.221436, 47.397949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897848, -0.215131, 0.384170,
		-0.343305, -0.204285, -0.916739,
		0.275699, -0.954980, 0.109561,
		33.129932, 39.934940, 47.430817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581081, 40.190960, 46.750393>,  <32.936943, 40.603428, 47.354126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581081, 40.190960, 46.750393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.670475, 40.020844, 47.101204>,  <32.724113, 39.918774, 47.311691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.670475, 40.020844, 47.101204>,  <32.581081, 40.190960, 46.750393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670475, 40.020844, 47.101204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955763, 0.080916, 0.282788,
		-0.191233, -0.901433, -0.388394,
		0.223487, -0.425291, 0.877030,
		32.737522, 39.893257, 47.364311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074944, 39.642082, 46.878452>,  <32.581081, 40.190960, 46.750393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074944, 39.642082, 46.878452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.220150, 39.768555, 47.229050>,  <32.307274, 39.844437, 47.439407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.220150, 39.768555, 47.229050>,  <32.074944, 39.642082, 46.878452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220150, 39.768555, 47.229050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914418, -0.059859, 0.400319,
		0.179041, -0.946807, 0.267397,
		0.363019, 0.316187, 0.876495,
		32.329056, 39.863411, 47.491997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508821, 39.481636, 47.338463>,  <32.074944, 39.642082, 46.878452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508821, 39.481636, 47.338463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.735844, 39.683575, 47.598618>,  <31.872057, 39.804737, 47.754711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.735844, 39.683575, 47.598618>,  <31.508821, 39.481636, 47.338463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735844, 39.683575, 47.598618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809268, 0.196671, 0.553539,
		0.151538, -0.840506, 0.520178,
		0.567557, 0.504846, 0.650392,
		31.906111, 39.835030, 47.793736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473658, 39.170483, 48.095135>,  <31.508821, 39.481636, 47.338463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473658, 39.170483, 48.095135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.610243, 39.543819, 48.139469>,  <31.692194, 39.767822, 48.166069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.610243, 39.543819, 48.139469>,  <31.473658, 39.170483, 48.095135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610243, 39.543819, 48.139469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778523, 0.214794, 0.589717,
		0.526599, -0.287652, 0.799969,
		0.341462, 0.933338, 0.110833,
		31.712681, 39.823822, 48.172718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498714, 39.374794, 48.905075>,  <31.473658, 39.170483, 48.095135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498714, 39.374794, 48.905075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.458731, 39.710243, 48.690891>,  <31.434740, 39.911514, 48.562382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.458731, 39.710243, 48.690891>,  <31.498714, 39.374794, 48.905075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458731, 39.710243, 48.690891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771140, 0.274781, 0.574315,
		0.628770, 0.470321, 0.619231,
		-0.099959, 0.838626, -0.535457,
		31.428743, 39.961830, 48.530254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284504, 39.671307, 49.419289>,  <31.498714, 39.374794, 48.905075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284504, 39.671307, 49.419289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.202751, 39.912201, 49.110603>,  <31.153700, 40.056740, 48.925392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.202751, 39.912201, 49.110603>,  <31.284504, 39.671307, 49.419289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202751, 39.912201, 49.110603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680255, 0.479508, 0.554369,
		0.703904, 0.638263, 0.311673,
		-0.204384, 0.602240, -0.771709,
		31.141436, 40.092873, 48.879089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318375, 40.235733, 49.719780>,  <31.284504, 39.671307, 49.419289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318375, 40.235733, 49.719780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.099901, 40.327290, 49.397465>,  <30.968817, 40.382221, 49.204075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.099901, 40.327290, 49.397465>,  <31.318375, 40.235733, 49.719780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099901, 40.327290, 49.397465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536032, 0.643702, 0.546184,
		0.643702, 0.730245, -0.228888,
		-0.546184, 0.228888, -0.805787,
		30.936047, 40.395958, 49.155727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348717, 40.994995, 49.639076>,  <31.318375, 40.235733, 49.719780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348717, 40.994995, 49.639076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.013140, 40.841213, 49.485001>,  <30.811794, 40.748943, 49.392555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.013140, 40.841213, 49.485001>,  <31.348717, 40.994995, 49.639076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013140, 40.841213, 49.485001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541939, 0.525397, 0.655942,
		-0.049804, 0.759046, -0.649129,
		-0.838941, -0.384457, -0.385190,
		30.761457, 40.725876, 49.369442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906189, 41.592010, 49.421429>,  <31.348717, 40.994995, 49.639076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906189, 41.592010, 49.421429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.676296, 41.272392, 49.492100>,  <30.538361, 41.080624, 49.534500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.676296, 41.272392, 49.492100>,  <30.906189, 41.592010, 49.421429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676296, 41.272392, 49.492100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459259, 0.493628, 0.738521,
		-0.677321, 0.343312, -0.650671,
		-0.574733, -0.799042, 0.176675,
		30.503876, 41.032681, 49.545101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352877, 41.862007, 49.731030>,  <30.906189, 41.592010, 49.421429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352877, 41.862007, 49.731030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.288095, 41.476387, 49.815289>,  <30.249228, 41.245014, 49.865845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.288095, 41.476387, 49.815289>,  <30.352877, 41.862007, 49.731030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288095, 41.476387, 49.815289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316797, 0.252964, 0.914138,
		-0.934565, 0.081313, -0.346377,
		-0.161952, -0.964053, 0.210652,
		30.239510, 41.187172, 49.878483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743284, 41.880627, 50.094463>,  <30.352877, 41.862007, 49.731030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743284, 41.880627, 50.094463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.859934, 41.508675, 50.184155>,  <29.929924, 41.285503, 50.237968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.859934, 41.508675, 50.184155>,  <29.743284, 41.880627, 50.094463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859934, 41.508675, 50.184155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488366, 0.056817, 0.870788,
		-0.822469, -0.363445, -0.437553,
		0.291623, -0.929882, 0.224224,
		29.947420, 41.229710, 50.251423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.185488, 41.528587, 50.258854>,  <29.743284, 41.880627, 50.094463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.185488, 41.528587, 50.258854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.497143, 41.355038, 50.439827>,  <29.684135, 41.250908, 50.548412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.497143, 41.355038, 50.439827>,  <29.185488, 41.528587, 50.258854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.497143, 41.355038, 50.439827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398104, 0.215029, 0.891782,
		-0.484207, -0.874938, -0.005189,
		0.779138, -0.433873, 0.452435,
		29.730885, 41.224876, 50.575558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838388, 41.104664, 50.759449>,  <29.185488, 41.528587, 50.258854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838388, 41.104664, 50.759449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.218580, 41.151711, 50.874523>,  <29.446695, 41.179939, 50.943565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.218580, 41.151711, 50.874523>,  <28.838388, 41.104664, 50.759449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218580, 41.151711, 50.874523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301193, 0.120274, 0.945948,
		0.076647, -0.985750, 0.149739,
		0.950478, 0.117604, 0.287682,
		29.503723, 41.186993, 50.960827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777065, 40.744743, 51.414730>,  <28.838388, 41.104664, 50.759449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.777065, 40.744743, 51.414730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.106565, 40.970875, 51.431866>,  <29.304266, 41.106556, 51.442146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.106565, 40.970875, 51.431866>,  <28.777065, 40.744743, 51.414730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.106565, 40.970875, 51.431866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165151, 0.166991, 0.972028,
		0.542364, -0.807784, 0.230924,
		0.823751, 0.565331, 0.042837,
		29.353691, 41.140472, 51.444717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199963, 40.496086, 52.006531>,  <28.777065, 40.744743, 51.414730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199963, 40.496086, 52.006531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.327095, 40.868481, 51.934704>,  <29.403374, 41.091919, 51.891605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.327095, 40.868481, 51.934704>,  <29.199963, 40.496086, 52.006531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.327095, 40.868481, 51.934704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049842, 0.205535, 0.977380,
		0.946837, -0.301690, 0.111727,
		0.317829, 0.930988, -0.179572,
		29.422443, 41.147778, 51.880833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.684925, 40.564915, 52.462902>,  <29.199963, 40.496086, 52.006531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.684925, 40.564915, 52.462902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.592146, 40.937172, 52.349689>,  <29.536478, 41.160526, 52.281761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.592146, 40.937172, 52.349689>,  <29.684925, 40.564915, 52.462902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592146, 40.937172, 52.349689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231216, 0.229883, 0.945353,
		0.944849, 0.284715, 0.161858,
		-0.231948, 0.930640, -0.283035,
		29.522562, 41.216366, 52.264778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138178, 40.996628, 52.868862>,  <29.684925, 40.564915, 52.462902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138178, 40.996628, 52.868862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.810738, 41.196587, 52.755726>,  <29.614273, 41.316563, 52.687843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.810738, 41.196587, 52.755726>,  <30.138178, 40.996628, 52.868862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810738, 41.196587, 52.755726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175392, 0.251360, 0.951869,
		0.546930, 0.828808, -0.118086,
		-0.818600, 0.499894, -0.282843,
		29.565157, 41.346554, 52.670872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046715, 41.433723, 53.354851>,  <30.138178, 40.996628, 52.868862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046715, 41.433723, 53.354851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.687925, 41.458954, 53.179829>,  <29.472651, 41.474091, 53.074814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.687925, 41.458954, 53.179829>,  <30.046715, 41.433723, 53.354851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.687925, 41.458954, 53.179829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434636, 0.055054, 0.898922,
		0.080790, 0.996489, -0.021967,
		-0.896975, 0.063076, -0.437558,
		29.418833, 41.477879, 53.048561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714455, 41.926731, 53.730545>,  <30.046715, 41.433723, 53.354851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714455, 41.926731, 53.730545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.402973, 41.786797, 53.522224>,  <29.216084, 41.702835, 53.397232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.402973, 41.786797, 53.522224>,  <29.714455, 41.926731, 53.730545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402973, 41.786797, 53.522224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616998, 0.276531, 0.736780,
		-0.113732, 0.895068, -0.431183,
		-0.778703, -0.349834, -0.520804,
		29.169363, 41.681847, 53.365982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239246, 42.505508, 53.666351>,  <29.714455, 41.926731, 53.730545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.239246, 42.505508, 53.666351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.045006, 42.157635, 53.630909>,  <28.928461, 41.948910, 53.609646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.045006, 42.157635, 53.630909>,  <29.239246, 42.505508, 53.666351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.045006, 42.157635, 53.630909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527720, 0.210832, 0.822837,
		-0.696925, 0.446326, -0.561327,
		-0.485599, -0.869680, -0.088602,
		28.899326, 41.896732, 53.604328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.550997, 42.635506, 53.778049>,  <29.239246, 42.505508, 53.666351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.550997, 42.635506, 53.778049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.622885, 42.250969, 53.861507>,  <28.666018, 42.020248, 53.911583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.622885, 42.250969, 53.861507>,  <28.550997, 42.635506, 53.778049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.622885, 42.250969, 53.861507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361924, 0.132601, 0.922729,
		-0.914720, -0.241342, -0.324101,
		0.179718, -0.961338, 0.208640,
		28.676800, 41.962566, 53.924099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.923870, 42.245998, 53.939388>,  <28.550997, 42.635506, 53.778049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.923870, 42.245998, 53.939388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.250429, 42.093651, 54.113022>,  <28.446365, 42.002243, 54.217201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.250429, 42.093651, 54.113022>,  <27.923870, 42.245998, 53.939388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.250429, 42.093651, 54.113022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464596, 0.013274, 0.885423,
		-0.342991, -0.924534, -0.166113,
		0.816399, -0.380868, 0.434088,
		28.495348, 41.979389, 54.243248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.743801, 41.564316, 54.251987>,  <27.923870, 42.245998, 53.939388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.743801, 41.564316, 54.251987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.058123, 41.728798, 54.436775>,  <28.246716, 41.827488, 54.547649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.058123, 41.728798, 54.436775>,  <27.743801, 41.564316, 54.251987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.058123, 41.728798, 54.436775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429030, -0.175581, 0.886061,
		0.445470, -0.894471, 0.038449,
		0.785805, 0.411210, 0.461971,
		28.293863, 41.852161, 54.575367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.131903, 41.046021, 54.786224>,  <27.743801, 41.564316, 54.251987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.131903, 41.046021, 54.786224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.202908, 41.427628, 54.882843>,  <28.245510, 41.656590, 54.940815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.202908, 41.427628, 54.882843>,  <28.131903, 41.046021, 54.786224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.202908, 41.427628, 54.882843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334414, -0.172368, 0.926529,
		0.925558, -0.245246, 0.288439,
		0.177510, 0.954015, 0.241550,
		28.256161, 41.713833, 54.955307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571287, 41.073215, 55.360077>,  <28.131903, 41.046021, 54.786224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.571287, 41.073215, 55.360077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.388971, 41.429050, 55.372051>,  <28.279581, 41.642551, 55.379238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.388971, 41.429050, 55.372051>,  <28.571287, 41.073215, 55.360077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.388971, 41.429050, 55.372051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038553, -0.053335, 0.997832,
		0.889252, 0.453647, 0.058606,
		-0.455789, 0.889584, 0.029939,
		28.252235, 41.695927, 55.381031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.623835, 41.354980, 56.154377>,  <28.571287, 41.073215, 55.360077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.623835, 41.354980, 56.154377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.362045, 41.608856, 55.990021>,  <28.204971, 41.761181, 55.891407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.362045, 41.608856, 55.990021>,  <28.623835, 41.354980, 56.154377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.362045, 41.608856, 55.990021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380121, 0.193561, 0.904457,
		0.653582, 0.748133, 0.114579,
		-0.654476, 0.634690, -0.410889,
		28.165703, 41.799263, 55.866753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.672672, 41.914204, 56.590473>,  <28.623835, 41.354980, 56.154377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.672672, 41.914204, 56.590473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.319935, 41.926334, 56.402245>,  <28.108294, 41.933613, 56.289307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.319935, 41.926334, 56.402245>,  <28.672672, 41.914204, 56.590473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319935, 41.926334, 56.402245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460280, 0.161465, 0.872967,
		0.102457, 0.986412, -0.128427,
		-0.881842, 0.030329, -0.470569,
		28.055382, 41.935432, 56.261074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.337618, 42.543037, 56.944496>,  <28.672672, 41.914204, 56.590473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.337618, 42.543037, 56.944496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.038332, 42.349014, 56.763435>,  <27.858761, 42.232601, 56.654800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.038332, 42.349014, 56.763435>,  <28.337618, 42.543037, 56.944496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.038332, 42.349014, 56.763435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498204, -0.039781, 0.866146,
		-0.438137, 0.873578, -0.211892,
		-0.748217, -0.485056, -0.452650,
		27.813868, 42.203499, 56.627640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.698708, 42.622612, 57.299252>,  <28.337618, 42.543037, 56.944496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.698708, 42.622612, 57.299252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.569185, 42.306175, 57.091663>,  <27.491472, 42.116314, 56.967110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.569185, 42.306175, 57.091663>,  <27.698708, 42.622612, 57.299252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.569185, 42.306175, 57.091663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582177, -0.265785, 0.768393,
		-0.745801, 0.550943, -0.374490,
		-0.323807, -0.791088, -0.518970,
		27.472044, 42.068848, 56.935974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.990292, 42.580624, 57.533779>,  <27.698708, 42.622612, 57.299252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.990292, 42.580624, 57.533779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.088490, 42.242626, 57.343739>,  <27.147409, 42.039829, 57.229713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.088490, 42.242626, 57.343739>,  <26.990292, 42.580624, 57.533779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.088490, 42.242626, 57.343739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642787, -0.508755, 0.572707,
		-0.725642, 0.164791, -0.668047,
		0.245496, -0.844992, -0.475099,
		27.162138, 41.989128, 57.201210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.327986, 42.375919, 57.354740>,  <26.990292, 42.580624, 57.533779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.327986, 42.375919, 57.354740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.594044, 42.077549, 57.368412>,  <26.753679, 41.898525, 57.376614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.594044, 42.077549, 57.368412>,  <26.327986, 42.375919, 57.354740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.594044, 42.077549, 57.368412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613816, -0.520126, 0.593884,
		-0.425217, -0.416002, -0.803824,
		0.665147, -0.745929, 0.034182,
		26.793587, 41.853771, 57.378666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.908466, 41.828907, 57.346111>,  <26.327986, 42.375919, 57.354740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.908466, 41.828907, 57.346111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.250181, 41.660381, 57.467888>,  <26.455210, 41.559265, 57.540955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.250181, 41.660381, 57.467888>,  <25.908466, 41.828907, 57.346111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.250181, 41.660381, 57.467888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518694, -0.652758, 0.552145,
		-0.033897, -0.629605, -0.776175,
		0.854288, -0.421313, 0.304446,
		26.506468, 41.533989, 57.559223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.793657, 41.076878, 57.402256>,  <25.908466, 41.828907, 57.346111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.793657, 41.076878, 57.402256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.104359, 41.124680, 57.649601>,  <26.290779, 41.153362, 57.798008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.104359, 41.124680, 57.649601>,  <25.793657, 41.076878, 57.402256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.104359, 41.124680, 57.649601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464245, -0.554836, 0.690386,
		0.425594, -0.823332, -0.375492,
		0.776754, 0.119504, 0.618363,
		26.337385, 41.160530, 57.835110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.966612, 40.491299, 57.636444>,  <25.793657, 41.076878, 57.402256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.966612, 40.491299, 57.636444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.099600, 40.700520, 57.950356>,  <26.179392, 40.826054, 58.138702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.099600, 40.700520, 57.950356>,  <25.966612, 40.491299, 57.636444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.099600, 40.700520, 57.950356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536419, -0.579534, 0.613510,
		0.775706, -0.624943, 0.087899,
		0.332468, 0.523054, 0.784779,
		26.199341, 40.857437, 58.185791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.698202, 39.850998, 57.960300>,  <25.966612, 40.491299, 57.636444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.698202, 39.850998, 57.960300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.437405, 39.548470, 57.938816>,  <25.280926, 39.366955, 57.925926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.437405, 39.548470, 57.938816>,  <25.698202, 39.850998, 57.960300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.437405, 39.548470, 57.938816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436657, -0.316624, -0.842069,
		0.619866, -0.572478, 0.536689,
		-0.651995, -0.756319, -0.053712,
		25.241806, 39.321575, 57.922703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.068556, 39.290684, 57.807034>,  <25.698202, 39.850998, 57.960300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.068556, 39.290684, 57.807034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.695854, 39.204227, 57.690331>,  <25.472233, 39.152355, 57.620308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.695854, 39.204227, 57.690331>,  <26.068556, 39.290684, 57.807034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.695854, 39.204227, 57.690331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347224, -0.295432, -0.890031,
		0.106177, -0.930593, 0.350318,
		-0.931753, -0.216139, -0.291756,
		25.416328, 39.139385, 57.602802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.171360, 38.746250, 57.370308>,  <26.068556, 39.290684, 57.807034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.171360, 38.746250, 57.370308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.801476, 38.869247, 57.280552>,  <25.579544, 38.943047, 57.226700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.801476, 38.869247, 57.280552>,  <26.171360, 38.746250, 57.370308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.801476, 38.869247, 57.280552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175818, -0.177818, -0.968230,
		-0.337630, -0.934786, 0.110366,
		-0.924713, 0.307499, -0.224389,
		25.524061, 38.961498, 57.213234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.866398, 38.247684, 56.928265>,  <26.171360, 38.746250, 57.370308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.866398, 38.247684, 56.928265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.686079, 38.596107, 56.850246>,  <25.577887, 38.805161, 56.803436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.686079, 38.596107, 56.850246>,  <25.866398, 38.247684, 56.928265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.686079, 38.596107, 56.850246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261486, -0.080053, -0.961882,
		-0.853467, -0.484615, -0.191681,
		-0.450798, 0.871057, -0.195043,
		25.550840, 38.857426, 56.791733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.398569, 38.171329, 56.331474>,  <25.866398, 38.247684, 56.928265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.398569, 38.171329, 56.331474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.477060, 38.562668, 56.357807>,  <25.524155, 38.797470, 56.373608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.477060, 38.562668, 56.357807>,  <25.398569, 38.171329, 56.331474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.477060, 38.562668, 56.357807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273044, 0.009964, -0.961950,
		-0.941776, 0.206736, -0.265176,
		0.196227, 0.978346, 0.065832,
		25.535929, 38.856171, 56.377556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.129700, 38.301258, 55.751926>,  <25.398569, 38.171329, 56.331474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.129700, 38.301258, 55.751926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.327520, 38.636337, 55.844601>,  <25.446213, 38.837383, 55.900208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.327520, 38.636337, 55.844601>,  <25.129700, 38.301258, 55.751926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.327520, 38.636337, 55.844601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170774, 0.167717, -0.970931,
		-0.852205, 0.519744, -0.060112,
		0.494554, 0.837698, 0.231687,
		25.475887, 38.887646, 55.914108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.005007, 38.831566, 55.275372>,  <25.129700, 38.301258, 55.751926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.005007, 38.831566, 55.275372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.342531, 39.003006, 55.404541>,  <25.545046, 39.105869, 55.482044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.342531, 39.003006, 55.404541>,  <25.005007, 38.831566, 55.275372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.342531, 39.003006, 55.404541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318761, 0.083783, -0.944125,
		-0.431710, 0.899600, -0.065925,
		0.843812, 0.428602, 0.322927,
		25.595675, 39.131588, 55.501419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.098980, 39.414181, 54.772049>,  <25.005007, 38.831566, 55.275372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.098980, 39.414181, 54.772049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.467461, 39.378166, 54.923458>,  <25.688549, 39.356556, 55.014301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.467461, 39.378166, 54.923458>,  <25.098980, 39.414181, 54.772049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.467461, 39.378166, 54.923458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387962, 0.138788, -0.911166,
		0.029508, 0.986220, 0.162784,
		0.921203, -0.090041, 0.378521,
		25.743822, 39.351154, 55.037014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.586815, 39.966419, 54.595837>,  <25.098980, 39.414181, 54.772049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.586815, 39.966419, 54.595837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.832272, 39.660408, 54.673988>,  <25.979546, 39.476799, 54.720879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.832272, 39.660408, 54.673988>,  <25.586815, 39.966419, 54.595837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.832272, 39.660408, 54.673988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477740, 0.162727, -0.863299,
		0.628657, 0.623095, 0.465342,
		0.613641, -0.765031, 0.195378,
		26.016363, 39.430901, 54.732601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.195026, 40.207687, 54.309078>,  <25.586815, 39.966419, 54.595837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.195026, 40.207687, 54.309078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.217293, 39.811069, 54.355968>,  <26.230654, 39.573097, 54.384102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.217293, 39.811069, 54.355968>,  <26.195026, 40.207687, 54.309078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.217293, 39.811069, 54.355968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503060, -0.073566, -0.861115,
		0.862457, 0.106909, 0.494710,
		0.055667, -0.991544, 0.117229,
		26.233994, 39.513607, 54.391136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.879862, 40.008476, 54.080372>,  <26.195026, 40.207687, 54.309078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.879862, 40.008476, 54.080372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.698050, 39.652363, 54.069065>,  <26.588963, 39.438694, 54.062279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.698050, 39.652363, 54.069065>,  <26.879862, 40.008476, 54.080372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.698050, 39.652363, 54.069065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551669, -0.256451, -0.793659,
		0.699331, -0.376337, 0.607706,
		-0.454531, -0.890282, -0.028269,
		26.561689, 39.385277, 54.060585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.412144, 39.512177, 53.901047>,  <26.879862, 40.008476, 54.080372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.412144, 39.512177, 53.901047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.076157, 39.307945, 53.827541>,  <26.874565, 39.185406, 53.783440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.076157, 39.307945, 53.827541>,  <27.412144, 39.512177, 53.901047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.076157, 39.307945, 53.827541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396040, -0.345320, -0.850827,
		0.370956, -0.787443, 0.492266,
		-0.839967, -0.510576, -0.183760,
		26.824167, 39.154774, 53.772415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.672060, 38.926575, 53.573658>,  <27.412144, 39.512177, 53.901047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.672060, 38.926575, 53.573658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.291796, 38.975456, 53.459602>,  <27.063637, 39.004784, 53.391167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.291796, 38.975456, 53.459602>,  <27.672060, 38.926575, 53.573658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.291796, 38.975456, 53.459602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232997, -0.325606, -0.916348,
		-0.204822, -0.937576, 0.281069,
		-0.950663, 0.122200, -0.285143,
		27.006598, 39.012115, 53.374058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553602, 38.362213, 53.179703>,  <27.672060, 38.926575, 53.573658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.553602, 38.362213, 53.179703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.248167, 38.601555, 53.082623>,  <27.064905, 38.745159, 53.024376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.248167, 38.601555, 53.082623>,  <27.553602, 38.362213, 53.179703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.248167, 38.601555, 53.082623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259324, -0.060044, -0.963922,
		-0.591339, -0.798979, -0.109318,
		-0.763590, 0.598354, -0.242701,
		27.019091, 38.781059, 53.009811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.229212, 38.154659, 52.511395>,  <27.553602, 38.362213, 53.179703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.229212, 38.154659, 52.511395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.141096, 38.541973, 52.558559>,  <27.088226, 38.774361, 52.586857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.141096, 38.541973, 52.558559>,  <27.229212, 38.154659, 52.511395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141096, 38.541973, 52.558559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221584, 0.167395, -0.960666,
		-0.949933, -0.185499, -0.251431,
		-0.220290, 0.968281, 0.117910,
		27.075008, 38.832458, 52.593933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.839914, 38.235413, 51.964695>,  <27.229212, 38.154659, 52.511395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.839914, 38.235413, 51.964695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.941044, 38.602867, 52.086143>,  <27.001722, 38.823341, 52.159012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.941044, 38.602867, 52.086143>,  <26.839914, 38.235413, 51.964695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.941044, 38.602867, 52.086143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167209, 0.267608, -0.948908,
		-0.952954, 0.290674, -0.085947,
		0.252823, 0.918637, 0.303621,
		27.016891, 38.878460, 52.177231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.471409, 38.623451, 51.583488>,  <26.839914, 38.235413, 51.964695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.471409, 38.623451, 51.583488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.770302, 38.859455, 51.705818>,  <26.949638, 39.001057, 51.779217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.770302, 38.859455, 51.705818>,  <26.471409, 38.623451, 51.583488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.770302, 38.859455, 51.705818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160098, 0.286818, -0.944513,
		-0.644991, 0.754732, 0.119859,
		0.747232, 0.590013, 0.305826,
		26.994471, 39.036457, 51.797565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.460720, 39.177620, 51.124809>,  <26.471409, 38.623451, 51.583488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.460720, 39.177620, 51.124809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.827272, 39.182648, 51.284855>,  <27.047203, 39.185665, 51.380882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.827272, 39.182648, 51.284855>,  <26.460720, 39.177620, 51.124809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.827272, 39.182648, 51.284855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398910, 0.054766, -0.915353,
		-0.033416, 0.998420, 0.045174,
		0.916381, 0.012567, 0.400110,
		27.102186, 39.186417, 51.404888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.885859, 39.681206, 50.838028>,  <26.460720, 39.177620, 51.124809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.885859, 39.681206, 50.838028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.154633, 39.426022, 50.988503>,  <27.315897, 39.272911, 51.078785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.154633, 39.426022, 50.988503>,  <26.885859, 39.681206, 50.838028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.154633, 39.426022, 50.988503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464654, -0.032394, -0.884899,
		0.576713, 0.769391, 0.274663,
		0.671936, -0.637957, 0.376183,
		27.356213, 39.234634, 51.101357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.497265, 39.957951, 50.673809>,  <26.885859, 39.681206, 50.838028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.497265, 39.957951, 50.673809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.606339, 39.584698, 50.767532>,  <27.671782, 39.360744, 50.823765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.606339, 39.584698, 50.767532>,  <27.497265, 39.957951, 50.673809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.606339, 39.584698, 50.767532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614948, -0.018254, -0.788356,
		0.739921, 0.359059, 0.568853,
		0.272683, -0.933136, 0.234309,
		27.688143, 39.304756, 50.837826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.201977, 40.014687, 50.792839>,  <27.497265, 39.957951, 50.673809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.201977, 40.014687, 50.792839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.140097, 39.627872, 50.711941>,  <28.102968, 39.395782, 50.663403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.140097, 39.627872, 50.711941>,  <28.201977, 40.014687, 50.792839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140097, 39.627872, 50.711941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645447, 0.056053, -0.761746,
		0.747974, -0.248381, 0.615501,
		-0.154702, -0.967039, -0.202243,
		28.093685, 39.337761, 50.651268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743629, 39.929989, 50.364517>,  <28.201977, 40.014687, 50.792839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743629, 39.929989, 50.364517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.551054, 39.580494, 50.336800>,  <28.435509, 39.370796, 50.320171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.551054, 39.580494, 50.336800>,  <28.743629, 39.929989, 50.364517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.551054, 39.580494, 50.336800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649121, -0.302318, -0.698030,
		0.588945, -0.381039, 0.712708,
		-0.481441, -0.873735, -0.069292,
		28.406622, 39.318375, 50.316013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.212624, 39.472492, 50.564110>,  <28.743629, 39.929989, 50.364517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.212624, 39.472492, 50.564110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.939577, 39.265984, 50.357231>,  <28.775749, 39.142078, 50.233105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.939577, 39.265984, 50.357231>,  <29.212624, 39.472492, 50.564110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939577, 39.265984, 50.357231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725317, -0.392303, -0.565698,
		0.089157, -0.761287, 0.642256,
		-0.682617, -0.516275, -0.517197,
		28.734793, 39.111099, 50.202072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537954, 38.767933, 50.366894>,  <29.212624, 39.472492, 50.564110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537954, 38.767933, 50.366894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.257416, 38.839401, 50.090866>,  <29.089092, 38.882282, 49.925251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.257416, 38.839401, 50.090866>,  <29.537954, 38.767933, 50.366894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.257416, 38.839401, 50.090866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587062, -0.404318, -0.701345,
		-0.404318, -0.896997, 0.178674,
		0.701345, -0.178674, 0.690066,
		29.047012, 38.893002, 49.883846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.653839, 38.180889, 49.846970>,  <29.537954, 38.767933, 50.366894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.653839, 38.180889, 49.846970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.391308, 38.417877, 49.660114>,  <29.233789, 38.560070, 49.548000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.391308, 38.417877, 49.660114>,  <29.653839, 38.180889, 49.846970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391308, 38.417877, 49.660114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397154, -0.255122, -0.881579,
		-0.641484, -0.764130, -0.067858,
		-0.656328, 0.592468, -0.467134,
		29.194408, 38.595619, 49.519974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.253784, 37.759048, 49.355492>,  <29.653839, 38.180889, 49.846970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.253784, 37.759048, 49.355492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.266670, 38.144112, 49.247971>,  <29.274403, 38.375149, 49.183456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.266670, 38.144112, 49.247971>,  <29.253784, 37.759048, 49.355492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.266670, 38.144112, 49.247971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252493, -0.268059, -0.929727,
		-0.967062, -0.037918, -0.251700,
		0.032218, 0.962656, -0.268804,
		29.276335, 38.432907, 49.167328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061298, 37.761669, 48.709545>,  <29.253784, 37.759048, 49.355492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061298, 37.761669, 48.709545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.232765, 38.122921, 48.719402>,  <29.335646, 38.339672, 48.725315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.232765, 38.122921, 48.719402>,  <29.061298, 37.761669, 48.709545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.232765, 38.122921, 48.719402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505445, -0.217123, -0.835095,
		-0.748847, 0.370430, -0.549554,
		0.428665, 0.903128, 0.024640,
		29.361364, 38.393860, 48.726795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.974195, 38.013390, 48.073769>,  <29.061298, 37.761669, 48.709545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.974195, 38.013390, 48.073769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.283188, 38.219048, 48.222858>,  <29.468584, 38.342442, 48.312313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.283188, 38.219048, 48.222858>,  <28.974195, 38.013390, 48.073769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283188, 38.219048, 48.222858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553137, -0.256447, -0.792638,
		-0.311948, 0.818467, -0.482494,
		0.772482, 0.514147, 0.372726,
		29.514933, 38.373291, 48.334675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267345, 38.243790, 47.439968>,  <28.974195, 38.013390, 48.073769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267345, 38.243790, 47.439968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.557037, 38.289776, 47.711929>,  <29.730852, 38.317368, 47.875107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.557037, 38.289776, 47.711929>,  <29.267345, 38.243790, 47.439968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557037, 38.289776, 47.711929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662740, -0.388358, -0.640277,
		0.190437, 0.914309, -0.357453,
		0.724231, 0.114966, 0.679907,
		29.774307, 38.324265, 47.915901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810801, 38.504250, 47.065601>,  <29.267345, 38.243790, 47.439968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810801, 38.504250, 47.065601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.966621, 38.308071, 47.377422>,  <30.060114, 38.190365, 47.564514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.966621, 38.308071, 47.377422>,  <29.810801, 38.504250, 47.065601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.966621, 38.308071, 47.377422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667996, -0.432256, -0.605752,
		0.634059, 0.756713, 0.159232,
		0.389552, -0.490449, 0.779557,
		30.083487, 38.160938, 47.611290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.424860, 38.328125, 46.841301>,  <29.810801, 38.504250, 47.065601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.424860, 38.328125, 46.841301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.384022, 38.104370, 47.170338>,  <30.359518, 37.970116, 47.367760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.384022, 38.104370, 47.170338>,  <30.424860, 38.328125, 46.841301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384022, 38.104370, 47.170338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612889, -0.686701, -0.390906,
		0.783545, 0.464250, 0.412952,
		-0.102096, -0.559386, 0.822595,
		30.353394, 37.936554, 47.417118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997887, 38.010189, 46.875793>,  <30.424860, 38.328125, 46.841301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997887, 38.010189, 46.875793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.772491, 37.769520, 47.102234>,  <30.637255, 37.625118, 47.238098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.772491, 37.769520, 47.102234>,  <30.997887, 38.010189, 46.875793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772491, 37.769520, 47.102234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494431, -0.794591, -0.352367,
		0.661831, 0.081346, 0.745226,
		-0.563487, -0.601671, 0.566105,
		30.603445, 37.589020, 47.272064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504055, 37.463120, 47.120255>,  <30.997887, 38.010189, 46.875793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504055, 37.463120, 47.120255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.137829, 37.309578, 47.168255>,  <30.918093, 37.217453, 47.197056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.137829, 37.309578, 47.168255>,  <31.504055, 37.463120, 47.120255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.137829, 37.309578, 47.168255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301164, -0.852131, -0.427987,
		0.266540, -0.355709, 0.895783,
		-0.915564, -0.383853, 0.120000,
		30.863159, 37.194424, 47.204254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563358, 36.852730, 47.442619>,  <31.504055, 37.463120, 47.120255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563358, 36.852730, 47.442619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.182110, 36.793919, 47.336830>,  <30.953362, 36.758633, 47.273357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.182110, 36.793919, 47.336830>,  <31.563358, 36.852730, 47.442619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182110, 36.793919, 47.336830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204058, -0.957678, -0.203011,
		-0.223428, -0.247461, 0.942785,
		-0.953122, -0.147024, -0.264468,
		30.896173, 36.749813, 47.257488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373936, 36.303528, 47.790035>,  <31.563358, 36.852730, 47.442619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373936, 36.303528, 47.790035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.129305, 36.325024, 47.474293>,  <30.982527, 36.337921, 47.284847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.129305, 36.325024, 47.474293>,  <31.373936, 36.303528, 47.790035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129305, 36.325024, 47.474293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214634, -0.949007, -0.230907,
		-0.761517, -0.310640, 0.568854,
		-0.611575, 0.053744, -0.789359,
		30.945833, 36.341148, 47.237484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714161, 35.838017, 47.949203>,  <31.373936, 36.303528, 47.790035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714161, 35.838017, 47.949203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.762415, 35.895992, 47.556381>,  <30.791367, 35.930779, 47.320686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.762415, 35.895992, 47.556381>,  <30.714161, 35.838017, 47.949203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762415, 35.895992, 47.556381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396124, -0.914137, -0.086253,
		-0.910238, -0.378612, -0.167690,
		0.120635, 0.144937, -0.982059,
		30.798605, 35.939472, 47.261765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698933, 35.196510, 47.801697>,  <30.714161, 35.838017, 47.949203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698933, 35.196510, 47.801697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.826845, 35.386311, 47.473648>,  <30.903593, 35.500191, 47.276821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.826845, 35.386311, 47.473648>,  <30.698933, 35.196510, 47.801697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826845, 35.386311, 47.473648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416288, -0.847910, -0.328258,
		-0.851143, -0.236435, -0.468673,
		0.319781, 0.474497, -0.820117,
		30.922779, 35.528660, 47.227612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.407866, 34.785980, 47.218533>,  <30.698933, 35.196510, 47.801697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.407866, 34.785980, 47.218533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.740858, 34.984783, 47.120590>,  <30.940653, 35.104065, 47.061825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.740858, 34.984783, 47.120590>,  <30.407866, 34.785980, 47.218533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740858, 34.984783, 47.120590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440863, -0.861886, -0.250584,
		-0.335581, 0.100659, -0.936618,
		0.832481, 0.497011, -0.244856,
		30.990602, 35.133888, 47.047134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564693, 34.567127, 46.500759>,  <30.407866, 34.785980, 47.218533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564693, 34.567127, 46.500759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.910328, 34.699196, 46.652729>,  <31.117708, 34.778439, 46.743912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.910328, 34.699196, 46.652729>,  <30.564693, 34.567127, 46.500759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910328, 34.699196, 46.652729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421967, -0.886657, -0.189163,
		0.274405, 0.323769, -0.905470,
		0.864086, 0.330171, 0.379923,
		31.169554, 34.798248, 46.766705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084581, 34.267025, 46.111530>,  <30.564693, 34.567127, 46.500759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084581, 34.267025, 46.111530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.306864, 34.411530, 46.411045>,  <31.440233, 34.498230, 46.590755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.306864, 34.411530, 46.411045>,  <31.084581, 34.267025, 46.111530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306864, 34.411530, 46.411045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779744, -0.538937, -0.318664,
		0.288430, 0.760947, -0.581178,
		0.555705, 0.361257, 0.748789,
		31.473576, 34.519905, 46.635681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726660, 34.592720, 45.858040>,  <31.084581, 34.267025, 46.111530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726660, 34.592720, 45.858040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.742561, 34.444809, 46.229347>,  <31.752102, 34.356064, 46.452133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.742561, 34.444809, 46.229347>,  <31.726660, 34.592720, 45.858040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742561, 34.444809, 46.229347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608189, -0.728138, -0.316102,
		0.792796, 0.577130, 0.195949,
		0.039754, -0.369778, 0.928269,
		31.754488, 34.333874, 46.507828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417091, 34.491970, 46.056877>,  <31.726660, 34.592720, 45.858040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417091, 34.491970, 46.056877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.204102, 34.238495, 46.281349>,  <32.076309, 34.086411, 46.416031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.204102, 34.238495, 46.281349>,  <32.417091, 34.491970, 46.056877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204102, 34.238495, 46.281349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658163, -0.726845, -0.196259,
		0.532254, 0.264843, 0.804092,
		-0.532473, -0.633684, 0.561176,
		32.044361, 34.048389, 46.449703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013958, 34.323109, 46.506248>,  <32.417091, 34.491970, 46.056877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013958, 34.323109, 46.506248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.867390, 34.680885, 46.403713>,  <32.779449, 34.895550, 46.342190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.867390, 34.680885, 46.403713>,  <33.013958, 34.323109, 46.506248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867390, 34.680885, 46.403713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101557, 0.235409, 0.966576,
		0.924889, 0.380209, 0.004577,
		-0.366423, 0.894441, -0.256340,
		32.757462, 34.949219, 46.326813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252583, 33.614479, 46.365356>,  <33.013958, 34.323109, 46.506248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252583, 33.614479, 46.365356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.386139, 33.280975, 46.189465>,  <33.466274, 33.080872, 46.083931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.386139, 33.280975, 46.189465>,  <33.252583, 33.614479, 46.365356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386139, 33.280975, 46.189465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897575, 0.138751, 0.418459,
		-0.287883, -0.534406, 0.794691,
		0.333891, -0.833761, -0.439725,
		33.486305, 33.030846, 46.057549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580460, 33.187420, 46.821648>,  <33.252583, 33.614479, 46.365356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580460, 33.187420, 46.821648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.745506, 33.139961, 46.460392>,  <33.844536, 33.111485, 46.243637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.745506, 33.139961, 46.460392>,  <33.580460, 33.187420, 46.821648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745506, 33.139961, 46.460392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909159, 0.114971, 0.400263,
		0.056345, -0.986258, 0.155309,
		0.412619, -0.118648, -0.903144,
		33.869293, 33.104366, 46.189449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069813, 32.766525, 46.987328>,  <33.580460, 33.187420, 46.821648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069813, 32.766525, 46.987328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.183365, 32.950729, 46.650913>,  <34.251495, 33.061253, 46.449062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.183365, 32.950729, 46.650913>,  <34.069813, 32.766525, 46.987328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183365, 32.950729, 46.650913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921854, 0.110245, 0.371525,
		0.263810, -0.880783, -0.393223,
		0.283882, 0.460507, -0.841038,
		34.268528, 33.088882, 46.398602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724716, 32.555431, 46.793240>,  <34.069813, 32.766525, 46.987328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724716, 32.555431, 46.793240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.694565, 32.931049, 46.659073>,  <34.676476, 33.156422, 46.578571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.694565, 32.931049, 46.659073>,  <34.724716, 32.555431, 46.793240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694565, 32.931049, 46.659073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910898, 0.201697, 0.359975,
		0.405687, -0.278396, -0.870582,
		-0.075378, 0.939049, -0.335417,
		34.671951, 33.212765, 46.558449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186756, 32.662586, 46.172142>,  <34.724716, 32.555431, 46.793240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186756, 32.662586, 46.172142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.107559, 32.944931, 46.444187>,  <35.060040, 33.114338, 46.607414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.107559, 32.944931, 46.444187>,  <35.186756, 32.662586, 46.172142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107559, 32.944931, 46.444187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900791, -0.142553, 0.410187,
		0.386488, 0.693856, -0.607611,
		-0.197994, 0.705863, 0.680115,
		35.048161, 33.156689, 46.648220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637447, 33.252586, 46.102757>,  <35.186756, 32.662586, 46.172142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637447, 33.252586, 46.102757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.512138, 33.262135, 46.482502>,  <35.436954, 33.267864, 46.710350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.512138, 33.262135, 46.482502>,  <35.637447, 33.252586, 46.102757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512138, 33.262135, 46.482502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948314, -0.045412, 0.314068,
		0.050610, 0.998683, -0.008413,
		-0.313272, 0.023873, 0.949363,
		35.418156, 33.269295, 46.767311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990162, 33.715271, 46.435326>,  <35.637447, 33.252586, 46.102757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990162, 33.715271, 46.435326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.878593, 33.494797, 46.749878>,  <35.811653, 33.362511, 46.938610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.878593, 33.494797, 46.749878>,  <35.990162, 33.715271, 46.435326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878593, 33.494797, 46.749878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909670, 0.110761, 0.400290,
		-0.307735, 0.826998, 0.470504,
		-0.278925, -0.551186, 0.786380,
		35.794914, 33.329441, 46.985790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198818, 34.137234, 47.027752>,  <35.990162, 33.715271, 46.435326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198818, 34.137234, 47.027752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.137192, 33.766106, 47.163639>,  <36.100216, 33.543430, 47.245171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.137192, 33.766106, 47.163639>,  <36.198818, 34.137234, 47.027752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137192, 33.766106, 47.163639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834897, 0.061625, 0.546945,
		-0.528402, 0.367899, 0.765141,
		-0.154069, -0.927821, 0.339721,
		36.090973, 33.487759, 47.265556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173504, 34.184319, 47.786636>,  <36.198818, 34.137234, 47.027752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173504, 34.184319, 47.786636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.280445, 33.814106, 47.679367>,  <36.344612, 33.591980, 47.615005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.280445, 33.814106, 47.679367>,  <36.173504, 34.184319, 47.786636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280445, 33.814106, 47.679367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793063, 0.053267, 0.606807,
		-0.547331, -0.374915, 0.748243,
		0.267357, -0.925528, -0.268176,
		36.360653, 33.536449, 47.598915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267113, 33.814083, 48.343086>,  <36.173504, 34.184319, 47.786636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267113, 33.814083, 48.343086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.482845, 33.626621, 48.063232>,  <36.612286, 33.514145, 47.895321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.482845, 33.626621, 48.063232>,  <36.267113, 33.814083, 48.343086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482845, 33.626621, 48.063232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702430, -0.207858, 0.680726,
		-0.464449, -0.858579, 0.217091,
		0.539333, -0.468654, -0.699631,
		36.644646, 33.486027, 47.853344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713844, 33.575607, 48.788769>,  <36.267113, 33.814083, 48.343086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713844, 33.575607, 48.788769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.859535, 33.476051, 48.429794>,  <36.946949, 33.416317, 48.214409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.859535, 33.476051, 48.429794>,  <36.713844, 33.575607, 48.788769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859535, 33.476051, 48.429794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900032, -0.153565, 0.407872,
		-0.239329, -0.956281, 0.168073,
		0.364230, -0.248887, -0.897436,
		36.968803, 33.401386, 48.160564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005730, 32.881374, 48.747730>,  <36.713844, 33.575607, 48.788769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005730, 32.881374, 48.747730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.183380, 33.099960, 48.463722>,  <37.289970, 33.231110, 48.293316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.183380, 33.099960, 48.463722>,  <37.005730, 32.881374, 48.747730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183380, 33.099960, 48.463722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859512, -0.036115, 0.509838,
		0.252964, -0.836706, -0.485729,
		0.444127, 0.546461, -0.710022,
		37.316620, 33.263897, 48.250717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567501, 32.538570, 48.646107>,  <37.005730, 32.881374, 48.747730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567501, 32.538570, 48.646107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.639877, 32.914242, 48.529346>,  <37.683304, 33.139645, 48.459290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.639877, 32.914242, 48.529346>,  <37.567501, 32.538570, 48.646107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639877, 32.914242, 48.529346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701122, 0.084960, 0.707961,
		0.689700, -0.332761, -0.643105,
		0.180944, 0.939176, -0.291903,
		37.694160, 33.195995, 48.441776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258572, 32.468796, 48.489895>,  <37.567501, 32.538570, 48.646107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258572, 32.468796, 48.489895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.168068, 32.858006, 48.507950>,  <38.113766, 33.091530, 48.518784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.168068, 32.858006, 48.507950>,  <38.258572, 32.468796, 48.489895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168068, 32.858006, 48.507950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777445, 0.152480, 0.610188,
		0.586843, 0.173153, -0.790970,
		-0.226263, 0.973020, 0.045136,
		38.100189, 33.149910, 48.521492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810860, 32.836601, 48.343636>,  <38.258572, 32.468796, 48.489895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810860, 32.836601, 48.343636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.594013, 33.083973, 48.571198>,  <38.463905, 33.232395, 48.707733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.594013, 33.083973, 48.571198>,  <38.810860, 32.836601, 48.343636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594013, 33.083973, 48.571198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809670, 0.203305, 0.550547,
		0.224816, 0.759084, -0.610941,
		-0.542119, 0.618432, 0.568901,
		38.431377, 33.269505, 48.741867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085976, 33.485134, 48.383297>,  <38.810860, 32.836601, 48.343636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085976, 33.485134, 48.383297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.903294, 33.380749, 48.723488>,  <38.793682, 33.318115, 48.927605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.903294, 33.380749, 48.723488>,  <39.085976, 33.485134, 48.383297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903294, 33.380749, 48.723488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813645, 0.264034, 0.517946,
		-0.359722, 0.928538, 0.091748,
		-0.456708, -0.260967, 0.850479,
		38.766281, 33.302460, 48.978630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842705, 33.464317, 48.284081>,  <39.085976, 33.485134, 48.383297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842705, 33.464317, 48.284081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.009933, 33.827358, 48.268723>,  <40.110271, 34.045181, 48.259506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.009933, 33.827358, 48.268723>,  <39.842705, 33.464317, 48.284081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009933, 33.827358, 48.268723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750552, 0.321302, -0.577440,
		-0.511750, 0.270229, 0.815530,
		0.418072, 0.907602, -0.038395,
		40.135357, 34.099640, 48.257206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546085, 33.803905, 48.091560>,  <39.842705, 33.464317, 48.284081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.546085, 33.803905, 48.091560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.275074, 34.072418, 47.971340>,  <40.112465, 34.233524, 47.899208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.275074, 34.072418, 47.971340>,  <40.546085, 33.803905, 48.091560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275074, 34.072418, 47.971340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305977, 0.628857, 0.714785,
		0.668828, 0.392326, -0.631466,
		-0.677530, 0.671282, -0.300555,
		40.071815, 34.273804, 47.881172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170803, 34.039726, 47.819504>,  <40.546085, 33.803905, 48.091560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170803, 34.039726, 47.819504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.564941, 34.049843, 47.886982>,  <41.801422, 34.055912, 47.927471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.564941, 34.049843, 47.886982>,  <41.170803, 34.039726, 47.819504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564941, 34.049843, 47.886982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126352, 0.556183, -0.821399,
		-0.114602, 0.830675, 0.544835,
		0.985343, 0.025293, 0.168697,
		41.860546, 34.057430, 47.937592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319118, 34.729382, 47.897282>,  <41.170803, 34.039726, 47.819504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.319118, 34.729382, 47.897282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.631786, 34.522903, 47.757259>,  <41.819386, 34.399017, 47.673248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.631786, 34.522903, 47.757259>,  <41.319118, 34.729382, 47.897282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631786, 34.522903, 47.757259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104270, 0.445199, -0.889340,
		0.614918, 0.731668, 0.294173,
		0.781667, -0.516198, -0.350052,
		41.866287, 34.368046, 47.652245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.759064, 35.207344, 47.590069>,  <41.319118, 34.729382, 47.897282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.759064, 35.207344, 47.590069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.780437, 34.834915, 47.445705>,  <41.793262, 34.611458, 47.359085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.780437, 34.834915, 47.445705>,  <41.759064, 35.207344, 47.590069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.780437, 34.834915, 47.445705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158440, 0.348943, -0.923653,
		0.985922, 0.106534, -0.128874,
		0.053431, -0.931069, -0.360910,
		41.796467, 34.555595, 47.337433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298782, 34.954235, 47.148674>,  <41.759064, 35.207344, 47.590069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298782, 34.954235, 47.148674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.962139, 34.763474, 47.047272>,  <41.760155, 34.649017, 46.986431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.962139, 34.763474, 47.047272>,  <42.298782, 34.954235, 47.148674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962139, 34.763474, 47.047272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102155, 0.320343, -0.941778,
		0.530347, -0.818500, -0.220883,
		-0.841603, -0.476905, -0.253507,
		41.709660, 34.620403, 46.971218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.022652, 35.320728, 46.485245>,  <42.298782, 34.954235, 47.148674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.022652, 35.320728, 46.485245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.346489, 35.421017, 46.272942>,  <42.540791, 35.481190, 46.145557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.346489, 35.421017, 46.272942>,  <42.022652, 35.320728, 46.485245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.346489, 35.421017, 46.272942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541051, 0.669409, -0.509073,
		0.227662, 0.699308, 0.677598,
		0.809589, 0.250718, -0.530760,
		42.589367, 35.496231, 46.113712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.301243, 36.017971, 46.528038>,  <42.022652, 35.320728, 46.485245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.301243, 36.017971, 46.528038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.405666, 35.889698, 46.163837>,  <42.468319, 35.812733, 45.945316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.405666, 35.889698, 46.163837>,  <42.301243, 36.017971, 46.528038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.405666, 35.889698, 46.163837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305089, 0.867451, -0.392999,
		0.915844, 0.380379, 0.128616,
		0.261057, -0.320687, -0.910500,
		42.483982, 35.793491, 45.890686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.855392, 36.377098, 46.237099>,  <42.301243, 36.017971, 46.528038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.855392, 36.377098, 46.237099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.591812, 36.225521, 45.977196>,  <42.433662, 36.134575, 45.821255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.591812, 36.225521, 45.977196>,  <42.855392, 36.377098, 46.237099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.591812, 36.225521, 45.977196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275411, 0.925389, -0.260391,
		0.699951, 0.007365, -0.714152,
		-0.658951, -0.378947, -0.649756,
		42.394127, 36.111835, 45.782269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.117199, 36.634701, 45.560089>,  <42.855392, 36.377098, 46.237099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.117199, 36.634701, 45.560089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.722389, 36.576370, 45.533195>,  <42.485504, 36.541370, 45.517059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.722389, 36.576370, 45.533195>,  <43.117199, 36.634701, 45.560089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722389, 36.576370, 45.533195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101215, 0.890034, -0.444517,
		0.124665, -0.431943, -0.893243,
		-0.987023, -0.145826, -0.067237,
		42.426281, 36.532623, 45.513023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.809738, 36.430477, 44.827213>,  <43.117199, 36.634701, 45.560089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.809738, 36.430477, 44.827213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.617840, 36.684475, 45.069408>,  <42.502701, 36.836876, 45.214725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.617840, 36.684475, 45.069408>,  <42.809738, 36.430477, 44.827213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.617840, 36.684475, 45.069408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014708, 0.695817, -0.718069,
		-0.877282, -0.335587, -0.343157,
		-0.479749, 0.634996, 0.605492,
		42.473915, 36.874973, 45.251057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.910076, 35.686218, 44.814041>,  <42.809738, 36.430477, 44.827213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.910076, 35.686218, 44.814041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.750759, 35.960220, 44.570030>,  <42.655170, 36.124622, 44.423622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.750759, 35.960220, 44.570030>,  <42.910076, 35.686218, 44.814041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.750759, 35.960220, 44.570030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835755, -0.003050, -0.549094,
		-0.377993, -0.728532, -0.571282,
		-0.398291, 0.685005, -0.610027,
		42.631271, 36.165722, 44.387024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.880787, 35.356865, 44.110779>,  <42.910076, 35.686218, 44.814041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.880787, 35.356865, 44.110779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.935833, 35.744499, 44.192684>,  <42.968861, 35.977081, 44.241825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.935833, 35.744499, 44.192684>,  <42.880787, 35.356865, 44.110779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.935833, 35.744499, 44.192684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891411, -0.031057, -0.452131,
		-0.431796, 0.244748, -0.868130,
		0.137620, 0.969089, 0.204761,
		42.977119, 36.035225, 44.254112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.260914, 35.598091, 43.604408>,  <42.880787, 35.356865, 44.110779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.260914, 35.598091, 43.604408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.317814, 35.915661, 43.840862>,  <43.351955, 36.106205, 43.982735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.317814, 35.915661, 43.840862>,  <43.260914, 35.598091, 43.604408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.317814, 35.915661, 43.840862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911731, 0.127416, -0.390528,
		-0.385371, 0.594513, -0.705722,
		0.142254, 0.793927, 0.591138,
		43.360489, 36.153839, 44.018204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.992764, 35.097679, 43.296139>,  <43.260914, 35.598091, 43.604408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.992764, 35.097679, 43.296139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.296947, 35.056820, 43.552662>,  <43.479458, 35.032303, 43.706573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.296947, 35.056820, 43.552662>,  <42.992764, 35.097679, 43.296139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.296947, 35.056820, 43.552662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371072, 0.742092, 0.558216,
		-0.532929, -0.662469, 0.526424,
		0.760456, -0.102148, 0.641306,
		43.525085, 35.026176, 43.745052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.513233, 34.671089, 43.422600>,  <42.992764, 35.097679, 43.296139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.513233, 34.671089, 43.422600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.678326, 34.789360, 43.077991>,  <43.777382, 34.860321, 42.871227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.678326, 34.789360, 43.077991>,  <43.513233, 34.671089, 43.422600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.678326, 34.789360, 43.077991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861248, -0.434557, 0.263463,
		-0.296483, -0.850727, -0.434007,
		0.412735, 0.295675, -0.861525,
		43.802147, 34.878063, 42.819534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.177429, 34.498104, 42.950993>,  <43.513233, 34.671089, 43.422600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.177429, 34.498104, 42.950993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.154377, 34.100079, 42.983292>,  <44.140545, 33.861263, 43.002670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.154377, 34.100079, 42.983292>,  <44.177429, 34.498104, 42.950993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.154377, 34.100079, 42.983292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663574, -0.022250, -0.747780,
		0.745888, -0.096674, -0.659018,
		-0.057628, -0.995067, 0.080747,
		44.137089, 33.801559, 43.007515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.329121, 34.315804, 42.297497>,  <44.177429, 34.498104, 42.950993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.329121, 34.315804, 42.297497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.133793, 34.016285, 42.476757>,  <44.016594, 33.836575, 42.584312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.133793, 34.016285, 42.476757>,  <44.329121, 34.315804, 42.297497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.133793, 34.016285, 42.476757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614461, -0.069619, -0.785869,
		0.619659, -0.659129, -0.426113,
		-0.488324, -0.748801, 0.448149,
		43.987297, 33.791645, 42.611202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.358295, 33.657307, 41.959724>,  <44.329121, 34.315804, 42.297497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.358295, 33.657307, 41.959724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.021812, 33.621552, 42.173035>,  <43.819923, 33.600098, 42.301022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.021812, 33.621552, 42.173035>,  <44.358295, 33.657307, 41.959724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.021812, 33.621552, 42.173035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493041, -0.278134, -0.824350,
		0.222011, -0.956374, 0.189895,
		-0.841202, -0.089389, 0.533280,
		43.769451, 33.594734, 42.333019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.113762, 33.626148, 41.576103>,  <44.358295, 33.657307, 41.959724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.113762, 33.626148, 41.576103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.978275, 33.575935, 41.203114>,  <44.896984, 33.545807, 40.979321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.978275, 33.575935, 41.203114>,  <45.113762, 33.626148, 41.576103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.978275, 33.575935, 41.203114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043436, 0.992089, -0.117781,
		0.939884, 0.000608, -0.341492,
		-0.338719, -0.125533, -0.932476,
		44.876659, 33.538277, 40.923370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.514042, 33.780022, 41.040627>,  <45.113762, 33.626148, 41.576103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.514042, 33.780022, 41.040627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.134438, 33.849728, 40.935547>,  <44.906673, 33.891552, 40.872501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.134438, 33.849728, 40.935547>,  <45.514042, 33.780022, 41.040627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.134438, 33.849728, 40.935547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214287, 0.967795, -0.132117,
		0.231213, -0.181673, -0.955791,
		-0.949011, 0.174266, -0.262697,
		44.849735, 33.902008, 40.856739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.315403, 34.080433, 40.293892>,  <45.514042, 33.780022, 41.040627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.315403, 34.080433, 40.293892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.082630, 34.208519, 40.592911>,  <44.942966, 34.285370, 40.772320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.082630, 34.208519, 40.592911>,  <45.315403, 34.080433, 40.293892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.082630, 34.208519, 40.592911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298583, 0.939148, -0.169851,
		-0.756444, 0.124363, -0.642127,
		-0.581929, 0.320211, 0.747546,
		44.908051, 34.304581, 40.817173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.952198, 33.645428, 40.282314>,  <45.315403, 34.080433, 40.293892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.952198, 33.645428, 40.282314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.195251, 33.898727, 40.474056>,  <46.341084, 34.050709, 40.589100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.195251, 33.898727, 40.474056>,  <45.952198, 33.645428, 40.282314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.195251, 33.898727, 40.474056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735995, -0.675793, -0.040186,
		0.298494, 0.377218, -0.876703,
		0.607629, 0.633253, 0.479351,
		46.377541, 34.088703, 40.617863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.464447, 33.950241, 39.774834>,  <45.952198, 33.645428, 40.282314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.464447, 33.950241, 39.774834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.553558, 33.894718, 40.160809>,  <46.607025, 33.861404, 40.392395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.553558, 33.894718, 40.160809>,  <46.464447, 33.950241, 39.774834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.553558, 33.894718, 40.160809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756099, -0.600205, -0.260899,
		0.615374, 0.787710, -0.028762,
		0.222776, -0.138803, 0.964938,
		46.620392, 33.853077, 40.450291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.124233, 34.181179, 40.011395>,  <46.464447, 33.950241, 39.774834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.124233, 34.181179, 40.011395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.995270, 33.854076, 40.202114>,  <46.917892, 33.657814, 40.316544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.995270, 33.854076, 40.202114>,  <47.124233, 34.181179, 40.011395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.995270, 33.854076, 40.202114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839701, -0.479591, -0.254744,
		0.436985, 0.318234, 0.841291,
		-0.322408, -0.817753, 0.476795,
		46.898548, 33.608749, 40.345154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.485210, 34.131020, 40.631165>,  <47.124233, 34.181179, 40.011395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.485210, 34.131020, 40.631165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.386379, 33.783497, 40.459522>,  <47.327080, 33.574986, 40.356537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.386379, 33.783497, 40.459522>,  <47.485210, 34.131020, 40.631165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.386379, 33.783497, 40.459522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966967, -0.192433, -0.167165,
		0.062659, -0.456236, 0.887650,
		-0.247080, -0.868803, -0.429108,
		47.312256, 33.522858, 40.330791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.771187, 34.766209, 40.241158>,  <47.485210, 34.131020, 40.631165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.771187, 34.766209, 40.241158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.553474, 34.994446, 40.487141>,  <47.422848, 35.131390, 40.634731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.553474, 34.994446, 40.487141>,  <47.771187, 34.766209, 40.241158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.553474, 34.994446, 40.487141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638482, 0.757251, -0.137519,
		-0.544146, 0.317791, -0.776475,
		-0.544284, 0.570596, 0.614960,
		47.390190, 35.165623, 40.671627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.604702, 35.468040, 39.907368>,  <47.771187, 34.766209, 40.241158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.604702, 35.468040, 39.907368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.616772, 35.499783, 40.305923>,  <47.624016, 35.518829, 40.545055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.616772, 35.499783, 40.305923>,  <47.604702, 35.468040, 39.907368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.616772, 35.499783, 40.305923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231401, 0.969208, -0.084201,
		-0.972390, 0.233106, 0.010885,
		0.030178, 0.079357, 0.996389,
		47.625824, 35.523590, 40.604839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.409416, 36.233627, 39.707298>,  <47.604702, 35.468040, 39.907368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.409416, 36.233627, 39.707298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.802677, 36.306129, 39.716812>,  <48.038631, 36.349632, 39.722519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.802677, 36.306129, 39.716812>,  <47.409416, 36.233627, 39.707298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.802677, 36.306129, 39.716812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174739, -0.893521, -0.413625,
		-0.053719, 0.410811, -0.910137,
		0.983148, 0.181256, 0.023786,
		48.097622, 36.360508, 39.723949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.770081, 36.379372, 39.002098>,  <47.409416, 36.233627, 39.707298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.770081, 36.379372, 39.002098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.026020, 36.197033, 39.249580>,  <48.179585, 36.087631, 39.398067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.026020, 36.197033, 39.249580>,  <47.770081, 36.379372, 39.002098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.026020, 36.197033, 39.249580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141755, -0.721257, -0.678007,
		0.755312, 0.521528, -0.396878,
		0.639851, -0.455847, 0.618703,
		48.217976, 36.060280, 39.435192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.550098, 36.242744, 38.755337>,  <47.770081, 36.379372, 39.002098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.550098, 36.242744, 38.755337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.368290, 35.959782, 38.971848>,  <48.259205, 35.790005, 39.101753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.368290, 35.959782, 38.971848>,  <48.550098, 36.242744, 38.755337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.368290, 35.959782, 38.971848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277552, -0.689903, -0.668580,
		0.846388, -0.153652, 0.509919,
		-0.454524, -0.707407, 0.541279,
		48.231934, 35.747559, 39.134232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.021667, 35.728630, 38.614147>,  <48.550098, 36.242744, 38.755337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.021667, 35.728630, 38.614147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.632984, 35.654305, 38.672466>,  <48.399773, 35.609711, 38.707458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.632984, 35.654305, 38.672466>,  <49.021667, 35.728630, 38.614147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.632984, 35.654305, 38.672466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058541, -0.408560, -0.910852,
		0.228813, -0.893618, 0.386124,
		-0.971709, -0.185811, 0.145797,
		48.341473, 35.598560, 38.716206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.893845, 35.270939, 38.122444>,  <49.021667, 35.728630, 38.614147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.893845, 35.270939, 38.122444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.537903, 35.394558, 38.256702>,  <48.324337, 35.468727, 38.337257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.537903, 35.394558, 38.256702>,  <48.893845, 35.270939, 38.122444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.537903, 35.394558, 38.256702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367198, -0.048462, -0.928880,
		-0.270801, -0.949811, 0.156605,
		-0.889850, 0.309046, 0.335645,
		48.270947, 35.487270, 38.357395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.341232, 34.808338, 37.888748>,  <48.893845, 35.270939, 38.122444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.341232, 34.808338, 37.888748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.173668, 35.164566, 37.959637>,  <48.073132, 35.378304, 38.002171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.173668, 35.164566, 37.959637>,  <48.341232, 34.808338, 37.888748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.173668, 35.164566, 37.959637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492368, -0.058791, -0.868399,
		-0.762948, -0.451038, 0.463114,
		-0.418908, 0.890566, 0.177222,
		48.047997, 35.431736, 38.012802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.576103, 34.794952, 37.630161>,  <48.341232, 34.808338, 37.888748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.576103, 34.794952, 37.630161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.712490, 35.167583, 37.680603>,  <47.794323, 35.391163, 37.710869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.712490, 35.167583, 37.680603>,  <47.576103, 34.794952, 37.630161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.712490, 35.167583, 37.680603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355244, 0.251884, -0.900198,
		-0.870369, 0.262139, 0.416822,
		0.340968, 0.931578, 0.126109,
		47.814781, 35.447056, 37.718437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.980663, 35.298447, 37.595612>,  <47.576103, 34.794952, 37.630161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.980663, 35.298447, 37.595612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.340088, 35.442451, 37.495232>,  <47.555744, 35.528854, 37.435001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.340088, 35.442451, 37.495232>,  <46.980663, 35.298447, 37.595612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.340088, 35.442451, 37.495232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319496, 0.144644, -0.936483,
		-0.300849, 0.921665, 0.244995,
		0.898561, 0.360015, -0.250953,
		47.609657, 35.550457, 37.419945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.844707, 35.858906, 37.188633>,  <46.980663, 35.298447, 37.595612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.844707, 35.858906, 37.188633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.199993, 35.696083, 37.103416>,  <47.413162, 35.598389, 37.052284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.199993, 35.696083, 37.103416>,  <46.844707, 35.858906, 37.188633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.199993, 35.696083, 37.103416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196574, 0.082419, -0.977019,
		0.415261, 0.909677, -0.006811,
		0.888210, -0.407056, -0.213045,
		47.466457, 35.573967, 37.039501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.142769, 36.088272, 36.578930>,  <46.844707, 35.858906, 37.188633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.142769, 36.088272, 36.578930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.300880, 35.721516, 36.556755>,  <47.395748, 35.501461, 36.543449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.300880, 35.721516, 36.556755>,  <47.142769, 36.088272, 36.578930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.300880, 35.721516, 36.556755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265754, -0.056378, -0.962391,
		0.879280, 0.395142, -0.265951,
		0.395275, -0.916888, -0.055438,
		47.419464, 35.446449, 36.540123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.676590, 36.080521, 36.019100>,  <47.142769, 36.088272, 36.578930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.676590, 36.080521, 36.019100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.545322, 35.706398, 36.072021>,  <47.466560, 35.481926, 36.103775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.545322, 35.706398, 36.072021>,  <47.676590, 36.080521, 36.019100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.545322, 35.706398, 36.072021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230034, -0.056711, -0.971529,
		0.916181, -0.349261, -0.196541,
		-0.328171, -0.935308, 0.132300,
		47.446873, 35.425804, 36.111710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.891106, 35.695923, 35.417339>,  <47.676590, 36.080521, 36.019100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.891106, 35.695923, 35.417339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.597916, 35.479511, 35.582279>,  <47.422001, 35.349667, 35.681244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.597916, 35.479511, 35.582279>,  <47.891106, 35.695923, 35.417339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.597916, 35.479511, 35.582279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249084, -0.350612, -0.902789,
		0.633008, -0.764435, 0.122230,
		-0.732979, -0.541027, 0.412348,
		47.378021, 35.317204, 35.705982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.398540, 35.222458, 35.180107>,  <47.891106, 35.695923, 35.417339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.398540, 35.222458, 35.180107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.705212, 34.980286, 35.094646>,  <47.889214, 34.834980, 35.043369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.705212, 34.980286, 35.094646>,  <47.398540, 35.222458, 35.180107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.705212, 34.980286, 35.094646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539308, -0.787872, 0.297330,
		-0.348347, -0.112732, -0.930562,
		0.766682, -0.605434, -0.213656,
		47.935215, 34.798656, 35.030548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<31.166548, 34.788849, 55.792599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.377150, 35.092564, 55.945580>,  <31.503511, 35.274792, 56.037369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.377150, 35.092564, 55.945580>,  <31.166548, 34.788849, 55.792599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377150, 35.092564, 55.945580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646087, -0.064951, -0.760495,
		-0.552596, 0.647503, -0.524764,
		0.526507, 0.759290, 0.382451,
		31.535101, 35.320351, 56.060314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207722, 35.341183, 55.318188>,  <31.166548, 34.788849, 55.792599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207722, 35.341183, 55.318188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.526995, 35.357925, 55.558571>,  <31.718559, 35.367970, 55.702801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.526995, 35.357925, 55.558571>,  <31.207722, 35.341183, 55.318188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526995, 35.357925, 55.558571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600623, -0.132150, -0.788536,
		0.046411, 0.990345, -0.130620,
		0.798184, 0.041857, 0.600957,
		31.766451, 35.370483, 55.738857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581377, 35.671753, 54.963783>,  <31.207722, 35.341183, 55.318188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581377, 35.671753, 54.963783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.848345, 35.526646, 55.223923>,  <32.008526, 35.439579, 55.380005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.848345, 35.526646, 55.223923>,  <31.581377, 35.671753, 54.963783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848345, 35.526646, 55.223923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644882, -0.155167, -0.748365,
		0.372397, 0.918869, 0.130383,
		0.667418, -0.362771, 0.650346,
		32.048569, 35.417816, 55.419025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300095, 36.034500, 54.800381>,  <31.581377, 35.671753, 54.963783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300095, 36.034500, 54.800381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.374657, 35.700207, 55.006992>,  <32.419395, 35.499630, 55.130959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.374657, 35.700207, 55.006992>,  <32.300095, 36.034500, 54.800381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374657, 35.700207, 55.006992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827041, -0.150313, -0.541672,
		0.530336, 0.528159, 0.663169,
		0.186406, -0.835736, 0.516525,
		32.430580, 35.449486, 55.161949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049664, 36.071236, 54.980671>,  <32.300095, 36.034500, 54.800381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049664, 36.071236, 54.980671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.955482, 35.682732, 54.994579>,  <32.898972, 35.449627, 55.002922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.955482, 35.682732, 54.994579>,  <33.049664, 36.071236, 54.980671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955482, 35.682732, 54.994579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902566, -0.231790, -0.362833,
		0.360465, -0.054049, 0.931205,
		-0.235455, -0.971263, 0.034769,
		32.884846, 35.391354, 55.005009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659813, 35.774731, 55.088524>,  <33.049664, 36.071236, 54.980671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659813, 35.774731, 55.088524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.429825, 35.478523, 54.949356>,  <33.291832, 35.300800, 54.865856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.429825, 35.478523, 54.949356>,  <33.659813, 35.774731, 55.088524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429825, 35.478523, 54.949356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720734, -0.257150, -0.643752,
		0.387242, -0.620892, 0.681569,
		-0.574966, -0.740518, -0.347919,
		33.257336, 35.256367, 54.844982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171383, 35.081085, 55.056889>,  <33.659813, 35.774731, 55.088524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171383, 35.081085, 55.056889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.842911, 35.043030, 54.831814>,  <33.645828, 35.020199, 54.696770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.842911, 35.043030, 54.831814>,  <34.171383, 35.081085, 55.056889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842911, 35.043030, 54.831814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542800, -0.434592, -0.718678,
		-0.176169, -0.895589, 0.408516,
		-0.821178, -0.095134, -0.562687,
		33.596558, 35.014488, 54.663010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225773, 34.327431, 54.729164>,  <34.171383, 35.081085, 55.056889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225773, 34.327431, 54.729164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.976162, 34.563366, 54.524151>,  <33.826397, 34.704926, 54.401142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.976162, 34.563366, 54.524151>,  <34.225773, 34.327431, 54.729164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976162, 34.563366, 54.524151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300827, -0.424011, -0.854235,
		-0.721176, -0.687247, 0.087156,
		-0.624026, 0.589835, -0.512529,
		33.788956, 34.740318, 54.370392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075504, 33.950855, 54.224945>,  <34.225773, 34.327431, 54.729164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075504, 33.950855, 54.224945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.965096, 34.307110, 54.080402>,  <33.898849, 34.520863, 53.993675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.965096, 34.307110, 54.080402>,  <34.075504, 33.950855, 54.224945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965096, 34.307110, 54.080402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292880, -0.280145, -0.914188,
		-0.915443, -0.358167, -0.183525,
		-0.276018, 0.890638, -0.361357,
		33.882290, 34.574303, 53.971996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651505, 33.833168, 53.552032>,  <34.075504, 33.950855, 54.224945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651505, 33.833168, 53.552032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.828533, 34.191345, 53.532795>,  <33.934750, 34.406250, 53.521252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.828533, 34.191345, 53.532795>,  <33.651505, 33.833168, 53.552032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828533, 34.191345, 53.532795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049142, -0.077770, -0.995759,
		-0.895386, 0.438331, -0.078422,
		0.442571, 0.895443, -0.048094,
		33.961304, 34.459980, 53.518368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480339, 34.147572, 52.820572>,  <33.651505, 33.833168, 53.552032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480339, 34.147572, 52.820572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.778500, 34.372166, 52.964306>,  <33.957394, 34.506920, 53.050545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.778500, 34.372166, 52.964306>,  <33.480339, 34.147572, 52.820572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778500, 34.372166, 52.964306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397913, 0.057709, -0.915606,
		-0.534834, 0.825473, -0.180405,
		0.745398, 0.561483, 0.359331,
		34.002117, 34.540611, 53.072105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515621, 34.714054, 52.384521>,  <33.480339, 34.147572, 52.820572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515621, 34.714054, 52.384521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.873421, 34.696259, 52.562462>,  <34.088100, 34.685581, 52.669228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.873421, 34.696259, 52.562462>,  <33.515621, 34.714054, 52.384521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873421, 34.696259, 52.562462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443245, -0.041609, -0.895434,
		0.058349, 0.998143, -0.017498,
		0.894499, -0.044491, 0.444850,
		34.141769, 34.682911, 52.695915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004673, 35.134956, 51.954926>,  <33.515621, 34.714054, 52.384521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004673, 35.134956, 51.954926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.228729, 34.907036, 52.195446>,  <34.363163, 34.770283, 52.339760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.228729, 34.907036, 52.195446>,  <34.004673, 35.134956, 51.954926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228729, 34.907036, 52.195446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629546, -0.178995, -0.756064,
		0.538439, 0.802050, 0.258456,
		0.560139, -0.569804, 0.601305,
		34.396770, 34.736095, 52.375839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703621, 35.348991, 51.880730>,  <34.004673, 35.134956, 51.954926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703621, 35.348991, 51.880730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.711735, 34.972256, 52.014915>,  <34.716602, 34.746216, 52.095428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.711735, 34.972256, 52.014915>,  <34.703621, 35.348991, 51.880730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711735, 34.972256, 52.014915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591428, -0.259226, -0.763554,
		0.806103, 0.213891, 0.551769,
		0.020285, -0.941834, 0.335464,
		34.717819, 34.689705, 52.115555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340965, 35.209194, 52.016224>,  <34.703621, 35.348991, 51.880730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340965, 35.209194, 52.016224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.180786, 34.846252, 51.965069>,  <35.084679, 34.628487, 51.934376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.180786, 34.846252, 51.965069>,  <35.340965, 35.209194, 52.016224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180786, 34.846252, 51.965069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480787, -0.089239, -0.872284,
		0.780056, -0.410792, 0.471978,
		-0.400446, -0.907351, -0.127892,
		35.060654, 34.574047, 51.926701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927185, 34.759590, 51.796154>,  <35.340965, 35.209194, 52.016224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927185, 34.759590, 51.796154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.593300, 34.565147, 51.692650>,  <35.392971, 34.448483, 51.630547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.593300, 34.565147, 51.692650>,  <35.927185, 34.759590, 51.796154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593300, 34.565147, 51.692650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351208, -0.108001, -0.930048,
		0.424159, -0.867199, 0.260875,
		-0.834711, -0.486109, -0.258758,
		35.342888, 34.419315, 51.615021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185242, 34.267414, 51.351376>,  <35.927185, 34.759590, 51.796154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185242, 34.267414, 51.351376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.793827, 34.251835, 51.270424>,  <35.558979, 34.242485, 51.221851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.793827, 34.251835, 51.270424>,  <36.185242, 34.267414, 51.351376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793827, 34.251835, 51.270424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206074, -0.198530, -0.958185,
		-0.002855, -0.979321, 0.202295,
		-0.978532, -0.038952, -0.202379,
		35.500267, 34.240150, 51.209709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038673, 33.670193, 50.915878>,  <36.185242, 34.267414, 51.351376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038673, 33.670193, 50.915878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.748108, 33.936367, 50.847157>,  <35.573769, 34.096073, 50.805923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.748108, 33.936367, 50.847157>,  <36.038673, 33.670193, 50.915878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748108, 33.936367, 50.847157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254832, 0.028630, -0.966561,
		-0.638269, -0.745903, -0.190372,
		-0.726411, 0.665440, -0.171807,
		35.530186, 34.135998, 50.795616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765347, 33.424526, 50.369434>,  <36.038673, 33.670193, 50.915878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765347, 33.424526, 50.369434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.629612, 33.800621, 50.380802>,  <35.548172, 34.026276, 50.387623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.629612, 33.800621, 50.380802>,  <35.765347, 33.424526, 50.369434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629612, 33.800621, 50.380802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134139, 0.078267, -0.987867,
		-0.931051, -0.331410, -0.152681,
		-0.339339, 0.940235, 0.028415,
		35.527809, 34.082691, 50.389328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424911, 33.515945, 49.762478>,  <35.765347, 33.424526, 50.369434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424911, 33.515945, 49.762478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.481258, 33.899063, 49.862705>,  <35.515068, 34.128933, 49.922840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.481258, 33.899063, 49.862705>,  <35.424911, 33.515945, 49.762478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481258, 33.899063, 49.862705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152490, 0.229080, -0.961389,
		-0.978214, 0.173641, -0.113783,
		0.140871, 0.957795, 0.250568,
		35.523521, 34.186401, 49.937874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092113, 33.907631, 49.255890>,  <35.424911, 33.515945, 49.762478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092113, 33.907631, 49.255890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.365353, 34.163227, 49.397350>,  <35.529297, 34.316586, 49.482227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.365353, 34.163227, 49.397350>,  <35.092113, 33.907631, 49.255890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365353, 34.163227, 49.397350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264976, 0.234394, -0.935333,
		-0.680562, 0.732633, -0.009203,
		0.683098, 0.638990, 0.353650,
		35.570282, 34.354923, 49.503445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480854, 33.901478, 48.858250>,  <35.092113, 33.907631, 49.255890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480854, 33.901478, 48.858250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.184998, 33.957134, 48.594868>,  <34.007484, 33.990528, 48.436836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.184998, 33.957134, 48.594868>,  <34.480854, 33.901478, 48.858250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184998, 33.957134, 48.594868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664245, -0.308236, 0.681006,
		-0.108202, 0.941079, 0.320411,
		-0.739642, 0.139146, -0.658459,
		33.963104, 33.998878, 48.397331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120590, 34.481007, 48.913662>,  <34.480854, 33.901478, 48.858250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120590, 34.481007, 48.913662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.857922, 34.231979, 48.743397>,  <33.700321, 34.082561, 48.641235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.857922, 34.231979, 48.743397>,  <34.120590, 34.481007, 48.913662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857922, 34.231979, 48.743397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569885, 0.039929, 0.820754,
		-0.493979, 0.781545, -0.381013,
		-0.656670, -0.622569, -0.425667,
		33.660919, 34.045208, 48.615696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522064, 34.750984, 49.120815>,  <34.120590, 34.481007, 48.913662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522064, 34.750984, 49.120815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.425545, 34.377354, 49.015533>,  <33.367634, 34.153175, 48.952362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.425545, 34.377354, 49.015533>,  <33.522064, 34.750984, 49.120815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425545, 34.377354, 49.015533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599684, -0.069717, 0.797195,
		-0.762989, 0.350206, -0.543326,
		-0.241303, -0.934075, -0.263206,
		33.353153, 34.097130, 48.936573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843235, 34.667023, 49.205193>,  <33.522064, 34.750984, 49.120815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843235, 34.667023, 49.205193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.913254, 34.273380, 49.193203>,  <32.955265, 34.037197, 49.186008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.913254, 34.273380, 49.193203>,  <32.843235, 34.667023, 49.205193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913254, 34.273380, 49.193203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674426, -0.142032, 0.724552,
		-0.717292, -0.106614, -0.688568,
		0.175046, -0.984104, -0.029975,
		32.965767, 33.978149, 49.184212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164898, 34.373310, 49.185738>,  <32.843235, 34.667023, 49.205193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164898, 34.373310, 49.185738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.425190, 34.106262, 49.330421>,  <32.581367, 33.946033, 49.417233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.425190, 34.106262, 49.330421>,  <32.164898, 34.373310, 49.185738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425190, 34.106262, 49.330421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592943, -0.149232, 0.791295,
		-0.474304, -0.729394, -0.492970,
		0.650733, -0.667618, 0.361708,
		32.620411, 33.905975, 49.438934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777058, 33.702534, 49.311630>,  <32.164898, 34.373310, 49.185738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777058, 33.702534, 49.311630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.100868, 33.692940, 49.546268>,  <32.295155, 33.687183, 49.687050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.100868, 33.692940, 49.546268>,  <31.777058, 33.702534, 49.311630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100868, 33.692940, 49.546268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576058, -0.225187, 0.785779,
		0.113244, -0.974020, -0.196113,
		0.809527, -0.023988, 0.586593,
		32.343727, 33.685741, 49.722248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756418, 33.076923, 49.721066>,  <31.777058, 33.702534, 49.311630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756418, 33.076923, 49.721066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.016167, 33.297852, 49.930161>,  <32.172016, 33.430408, 50.055618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.016167, 33.297852, 49.930161>,  <31.756418, 33.076923, 49.721066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016167, 33.297852, 49.930161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510162, -0.193369, 0.838059,
		0.563959, -0.810895, 0.156204,
		0.649373, 0.552320, 0.522740,
		32.210979, 33.463547, 50.086983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917290, 32.647987, 50.279083>,  <31.756418, 33.076923, 49.721066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917290, 32.647987, 50.279083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.995270, 33.032650, 50.356251>,  <32.042057, 33.263447, 50.402550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.995270, 33.032650, 50.356251>,  <31.917290, 32.647987, 50.279083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995270, 33.032650, 50.356251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493142, -0.073916, 0.866803,
		0.847824, -0.264118, 0.459822,
		0.194950, 0.961654, 0.192915,
		32.053753, 33.321148, 50.414124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883186, 32.638470, 50.980972>,  <31.917290, 32.647987, 50.279083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883186, 32.638470, 50.980972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.942078, 33.029308, 50.919514>,  <31.977411, 33.263813, 50.882641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.942078, 33.029308, 50.919514>,  <31.883186, 32.638470, 50.980972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942078, 33.029308, 50.919514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280024, 0.190157, 0.940971,
		0.948637, -0.095511, 0.301606,
		0.147226, 0.977097, -0.153645,
		31.986246, 33.322437, 50.873421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200428, 32.951401, 51.564682>,  <31.883186, 32.638470, 50.980972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200428, 32.951401, 51.564682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.990286, 33.230309, 51.369617>,  <31.864201, 33.397652, 51.252579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.990286, 33.230309, 51.369617>,  <32.200428, 32.951401, 51.564682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990286, 33.230309, 51.369617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516119, 0.194521, 0.834136,
		0.676480, 0.689910, 0.257681,
		-0.525354, 0.697270, -0.487665,
		31.832680, 33.439491, 51.223316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198643, 33.614716, 51.912338>,  <32.200428, 32.951401, 51.564682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198643, 33.614716, 51.912338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.865633, 33.595505, 51.691578>,  <31.665827, 33.583977, 51.559120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.865633, 33.595505, 51.691578>,  <32.198643, 33.614716, 51.912338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865633, 33.595505, 51.691578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552907, 0.134221, 0.822361,
		0.034578, 0.989786, -0.138299,
		-0.832525, -0.048031, -0.551901,
		31.615875, 33.581097, 51.526009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769609, 33.989361, 52.322182>,  <32.198643, 33.614716, 51.912338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769609, 33.989361, 52.322182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.490391, 33.836262, 52.080109>,  <31.322861, 33.744404, 51.934864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.490391, 33.836262, 52.080109>,  <31.769609, 33.989361, 52.322182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490391, 33.836262, 52.080109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692334, 0.145026, 0.706853,
		-0.182777, 0.912400, -0.366222,
		-0.698044, -0.382745, -0.605178,
		31.280977, 33.721439, 51.898556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165312, 34.506348, 52.190220>,  <31.769609, 33.989361, 52.322182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165312, 34.506348, 52.190220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.062611, 34.120773, 52.162186>,  <31.000990, 33.889431, 52.145363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.062611, 34.120773, 52.162186>,  <31.165312, 34.506348, 52.190220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062611, 34.120773, 52.162186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646700, 0.117457, 0.753647,
		-0.718232, 0.238828, -0.653532,
		-0.256753, -0.963932, -0.070089,
		30.985584, 33.831593, 52.141159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476425, 34.592487, 52.111061>,  <31.165312, 34.506348, 52.190220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476425, 34.592487, 52.111061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.506596, 34.215851, 52.242340>,  <30.524698, 33.989868, 52.321106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.506596, 34.215851, 52.242340>,  <30.476425, 34.592487, 52.111061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.506596, 34.215851, 52.242340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655437, 0.201225, 0.727950,
		-0.751474, -0.270018, -0.601977,
		0.075427, -0.941593, 0.328195,
		30.529224, 33.933372, 52.340797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835897, 34.233673, 52.090687>,  <30.476425, 34.592487, 52.111061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835897, 34.233673, 52.090687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.042976, 34.051182, 52.380196>,  <30.167225, 33.941689, 52.553902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.042976, 34.051182, 52.380196>,  <29.835897, 34.233673, 52.090687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042976, 34.051182, 52.380196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811016, 0.007725, 0.584973,
		-0.272471, -0.889830, -0.366008,
		0.517699, -0.456226, 0.723772,
		30.198286, 33.914314, 52.597328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.373274, 33.996502, 52.384636>,  <29.835897, 34.233673, 52.090687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.373274, 33.996502, 52.384636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.672335, 33.943691, 52.644970>,  <29.851770, 33.912006, 52.801170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.672335, 33.943691, 52.644970>,  <29.373274, 33.996502, 52.384636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672335, 33.943691, 52.644970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660812, -0.050611, 0.748843,
		-0.065932, -0.989953, -0.125088,
		0.747651, -0.132033, 0.650836,
		29.896629, 33.904083, 52.840221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229876, 33.366325, 52.846870>,  <29.373274, 33.996502, 52.384636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.229876, 33.366325, 52.846870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.489304, 33.583652, 53.060097>,  <29.644960, 33.714050, 53.188030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.489304, 33.583652, 53.060097>,  <29.229876, 33.366325, 52.846870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.489304, 33.583652, 53.060097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597700, -0.070088, 0.798650,
		0.471285, -0.836594, 0.279287,
		0.648571, 0.543322, 0.533063,
		29.683874, 33.746651, 53.220016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176657, 33.159576, 53.569180>,  <29.229876, 33.366325, 52.846870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176657, 33.159576, 53.569180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.390612, 33.494587, 53.613808>,  <29.518986, 33.695591, 53.640587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.390612, 33.494587, 53.613808>,  <29.176657, 33.159576, 53.569180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390612, 33.494587, 53.613808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478541, 0.191463, 0.856937,
		0.696343, -0.511758, 0.503200,
		0.534888, 0.837524, 0.111573,
		29.551079, 33.745846, 53.647282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453876, 33.215923, 54.366596>,  <29.176657, 33.159576, 53.569180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453876, 33.215923, 54.366596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.435604, 33.577579, 54.196682>,  <29.424641, 33.794575, 54.094734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.435604, 33.577579, 54.196682>,  <29.453876, 33.215923, 54.366596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435604, 33.577579, 54.196682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299605, 0.393254, 0.869246,
		0.952969, 0.166977, 0.252921,
		-0.045682, 0.904140, -0.424786,
		29.421900, 33.848824, 54.069244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.777550, 33.819607, 54.860218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540579, 33.999470, 54.592834>,  <29.398397, 34.107388, 54.432404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540579, 33.999470, 54.592834>,  <29.777550, 33.819607, 54.860218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540579, 33.999470, 54.592834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313168, 0.635945, 0.705336,
		0.742266, 0.627199, -0.235931,
		-0.592425, 0.449661, -0.668459,
		29.362852, 34.134369, 54.392296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818184, 34.539986, 55.009331>,  <29.777550, 33.819607, 54.860218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818184, 34.539986, 55.009331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495703, 34.532272, 54.772800>,  <29.302214, 34.527645, 54.630882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495703, 34.532272, 54.772800>,  <29.818184, 34.539986, 55.009331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495703, 34.532272, 54.772800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467803, 0.632667, 0.617165,
		0.362215, 0.774184, -0.519075,
		-0.806201, -0.019279, -0.591327,
		29.253843, 34.526489, 54.595402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.656261, 35.212868, 54.814693>,  <29.818184, 34.539986, 55.009331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.656261, 35.212868, 54.814693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318897, 34.999367, 54.790146>,  <29.116478, 34.871265, 54.775417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318897, 34.999367, 54.790146>,  <29.656261, 35.212868, 54.814693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318897, 34.999367, 54.790146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407756, 0.561540, 0.720005,
		-0.349845, 0.632283, -0.691250,
		-0.843412, -0.533752, -0.061365,
		29.065874, 34.839241, 54.771736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.134550, 35.653015, 54.874573>,  <29.656261, 35.212868, 54.814693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.134550, 35.653015, 54.874573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.968159, 35.309914, 54.995388>,  <28.868324, 35.104053, 55.067879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.968159, 35.309914, 54.995388>,  <29.134550, 35.653015, 54.874573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968159, 35.309914, 54.995388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416280, 0.474907, 0.775354,
		-0.808501, 0.196795, -0.554614,
		-0.415976, -0.857750, 0.302041,
		28.843367, 35.052589, 55.085999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669373, 35.794861, 55.356335>,  <29.134550, 35.653015, 54.874573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669373, 35.794861, 55.356335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.647501, 35.401077, 55.423080>,  <28.634378, 35.164806, 55.463127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.647501, 35.401077, 55.423080>,  <28.669373, 35.794861, 55.356335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.647501, 35.401077, 55.423080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357492, 0.175339, 0.917309,
		-0.932314, -0.009495, -0.361525,
		-0.054679, -0.984462, 0.166865,
		28.631098, 35.105740, 55.473141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.841269, 35.639244, 55.476330>,  <28.669373, 35.794861, 55.356335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.841269, 35.639244, 55.476330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108128, 35.406872, 55.662853>,  <28.268242, 35.267448, 55.774765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108128, 35.406872, 55.662853>,  <27.841269, 35.639244, 55.476330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108128, 35.406872, 55.662853> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404393, 0.243271, 0.881638,
		-0.625606, -0.776751, -0.072626,
		0.667146, -0.580927, 0.466304,
		28.308271, 35.232594, 55.802746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.527208, 35.481049, 56.164551>,  <27.841269, 35.639244, 55.476330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.527208, 35.481049, 56.164551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912083, 35.387402, 56.220253>,  <28.143007, 35.331215, 56.253674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912083, 35.387402, 56.220253>,  <27.527208, 35.481049, 56.164551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.912083, 35.387402, 56.220253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136977, 0.026032, 0.990232,
		-0.235456, -0.971860, -0.007021,
		0.962184, -0.234117, 0.139252,
		28.200737, 35.317165, 56.262028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490583, 35.042511, 56.685493>,  <27.527208, 35.481049, 56.164551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490583, 35.042511, 56.685493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.876553, 35.147388, 56.690826>,  <28.108135, 35.210316, 56.694027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.876553, 35.147388, 56.690826>,  <27.490583, 35.042511, 56.685493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.876553, 35.147388, 56.690826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020002, 0.022797, 0.999540,
		0.261766, -0.964747, 0.027242,
		0.964924, 0.262190, 0.013329,
		28.166029, 35.226044, 56.694824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.709459, 34.753426, 57.291496>,  <27.490583, 35.042511, 56.685493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.709459, 34.753426, 57.291496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.987270, 35.022713, 57.189980>,  <28.153957, 35.184284, 57.129070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.987270, 35.022713, 57.189980>,  <27.709459, 34.753426, 57.291496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.987270, 35.022713, 57.189980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124514, 0.234951, 0.963999,
		0.708610, -0.701124, 0.079355,
		0.694528, 0.673218, -0.253789,
		28.195629, 35.224678, 57.113842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427969, 34.568073, 57.599197>,  <27.709459, 34.753426, 57.291496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.427969, 34.568073, 57.599197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359070, 34.955467, 57.527229>,  <28.317730, 35.187904, 57.484047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359070, 34.955467, 57.527229>,  <28.427969, 34.568073, 57.599197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.359070, 34.955467, 57.527229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122369, 0.202271, 0.971654,
		0.977423, 0.145347, -0.153353,
		-0.172246, 0.968484, -0.179919,
		28.307396, 35.246014, 57.473255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.685938, 34.883301, 58.178326>,  <28.427969, 34.568073, 57.599197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.685938, 34.883301, 58.178326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.469133, 35.182678, 58.025455>,  <28.339050, 35.362305, 57.933731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.469133, 35.182678, 58.025455>,  <28.685938, 34.883301, 58.178326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.469133, 35.182678, 58.025455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046907, 0.427121, 0.902977,
		0.839060, 0.507352, -0.196398,
		-0.542013, 0.748439, -0.382179,
		28.306530, 35.407211, 57.910801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922638, 35.464600, 58.465630>,  <28.685938, 34.883301, 58.178326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922638, 35.464600, 58.465630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.572510, 35.591816, 58.319935>,  <28.362432, 35.668144, 58.232517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.572510, 35.591816, 58.319935>,  <28.922638, 35.464600, 58.465630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.572510, 35.591816, 58.319935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146141, 0.544038, 0.826236,
		0.460935, 0.776449, -0.429727,
		-0.875318, 0.318040, -0.364237,
		28.309914, 35.687229, 58.210663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.839293, 36.148506, 58.748524>,  <28.922638, 35.464600, 58.465630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.839293, 36.148506, 58.748524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.464378, 36.042934, 58.657452>,  <28.239429, 35.979591, 58.602810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.464378, 36.042934, 58.657452>,  <28.839293, 36.148506, 58.748524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.464378, 36.042934, 58.657452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336134, 0.511514, 0.790802,
		-0.092257, 0.817737, -0.568150,
		-0.937285, -0.263931, -0.227679,
		28.183193, 35.963757, 58.589149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.479540, 36.771748, 58.686363>,  <28.839293, 36.148506, 58.748524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.479540, 36.771748, 58.686363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.194706, 36.494186, 58.729122>,  <28.023806, 36.327648, 58.754780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.194706, 36.494186, 58.729122>,  <28.479540, 36.771748, 58.686363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.194706, 36.494186, 58.729122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510945, 0.616604, 0.598945,
		-0.481526, 0.371881, -0.793623,
		-0.712087, -0.693905, 0.106900,
		27.981079, 36.286015, 58.761192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.019520, 37.213730, 58.854210>,  <28.479540, 36.771748, 58.686363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.019520, 37.213730, 58.854210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861593, 36.860840, 58.956814>,  <27.766838, 36.649105, 59.018375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861593, 36.860840, 58.956814>,  <28.019520, 37.213730, 58.854210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861593, 36.860840, 58.956814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631651, 0.463389, 0.621521,
		-0.667186, 0.083361, -0.740212,
		-0.394816, -0.882225, 0.256512,
		27.743149, 36.596172, 59.033768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.245321, 37.216404, 58.666100>,  <28.019520, 37.213730, 58.854210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.245321, 37.216404, 58.666100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.294954, 36.962322, 58.971027>,  <27.324734, 36.809875, 59.153984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.294954, 36.962322, 58.971027>,  <27.245321, 37.216404, 58.666100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.294954, 36.962322, 58.971027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697046, 0.490974, 0.522563,
		-0.706209, -0.596209, -0.381843,
		0.124082, -0.635200, 0.762315,
		27.332178, 36.771763, 59.199722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.501509, 37.030830, 58.782597>,  <27.245321, 37.216404, 58.666100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.501509, 37.030830, 58.782597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.745293, 36.964199, 59.092644>,  <26.891563, 36.924221, 59.278671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.745293, 36.964199, 59.092644>,  <26.501509, 37.030830, 58.782597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.745293, 36.964199, 59.092644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738680, 0.235777, 0.631475,
		-0.287944, -0.957425, 0.020650,
		0.609458, -0.166575, 0.775121,
		26.928131, 36.914227, 59.325180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.056160, 36.626198, 59.188511>,  <26.501509, 37.030830, 58.782597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.056160, 36.626198, 59.188511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.356266, 36.762505, 59.415131>,  <26.536329, 36.844288, 59.551102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.356266, 36.762505, 59.415131>,  <26.056160, 36.626198, 59.188511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.356266, 36.762505, 59.415131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640679, 0.163202, 0.750263,
		0.163202, -0.925874, 0.340766,
		-0.750263, -0.340766, -0.566554,
		26.581345, 36.864735, 59.585098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.899714, 36.207634, 59.776386>,  <26.056160, 36.626198, 59.188511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.899714, 36.207634, 59.776386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.114206, 36.533852, 59.863426>,  <26.242901, 36.729584, 59.915649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.114206, 36.533852, 59.863426>,  <25.899714, 36.207634, 59.776386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.114206, 36.533852, 59.863426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696296, 0.281683, 0.660172,
		0.477106, -0.505514, 0.718906,
		0.536230, 0.815543, 0.217595,
		26.275076, 36.778515, 59.928703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.997103, 36.192329, 60.475933>,  <25.899714, 36.207634, 59.776386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.997103, 36.192329, 60.475933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.031307, 36.577053, 60.371918>,  <26.051830, 36.807888, 60.309509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.031307, 36.577053, 60.371918>,  <25.997103, 36.192329, 60.475933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.031307, 36.577053, 60.371918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540932, 0.263994, 0.798561,
		0.836708, 0.072375, 0.542846,
		0.085512, 0.961805, -0.260036,
		26.056961, 36.865593, 60.293907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.087786, 36.513554, 61.074600>,  <25.997103, 36.192329, 60.475933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.087786, 36.513554, 61.074600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.016207, 36.835831, 60.848740>,  <25.973259, 37.029198, 60.713223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.016207, 36.835831, 60.848740>,  <26.087786, 36.513554, 61.074600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.016207, 36.835831, 60.848740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678460, 0.314576, 0.663878,
		0.712509, 0.501896, 0.490338,
		-0.178949, 0.805694, -0.564654,
		25.962523, 37.077538, 60.679344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.064688, 36.904385, 61.639439>,  <26.087786, 36.513554, 61.074600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.064688, 36.904385, 61.639439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.164129, 37.188042, 61.903351>,  <26.223795, 37.358234, 62.061699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.164129, 37.188042, 61.903351>,  <26.064688, 36.904385, 61.639439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.164129, 37.188042, 61.903351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421208, -0.534243, 0.732918,
		0.872227, -0.460112, 0.165881,
		0.248603, 0.709141, 0.659784,
		26.238710, 37.400784, 62.101288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.456509, 36.637276, 62.234451>,  <26.064688, 36.904385, 61.639439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.456509, 36.637276, 62.234451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.235077, 36.961166, 62.312313>,  <26.102219, 37.155502, 62.359032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.235077, 36.961166, 62.312313>,  <26.456509, 36.637276, 62.234451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.235077, 36.961166, 62.312313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498712, -0.509515, 0.701200,
		0.666961, 0.291093, 0.685878,
		-0.553580, 0.809728, 0.194655,
		26.069002, 37.204086, 62.370708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.975523, 36.228977, 62.582516>,  <26.456509, 36.637276, 62.234451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.975523, 36.228977, 62.582516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.301270, 36.307690, 62.800907>,  <27.496717, 36.354916, 62.931942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.301270, 36.307690, 62.800907>,  <26.975523, 36.228977, 62.582516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.301270, 36.307690, 62.800907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495872, 0.252858, -0.830767,
		-0.301530, 0.947281, 0.108343,
		0.814365, 0.196777, 0.545974,
		27.545580, 36.366722, 62.964699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.341366, 36.757137, 62.204517>,  <26.975523, 36.228977, 62.582516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.341366, 36.757137, 62.204517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615517, 36.660870, 62.479424>,  <27.780006, 36.603111, 62.644367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615517, 36.660870, 62.479424>,  <27.341366, 36.757137, 62.204517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.615517, 36.660870, 62.479424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710803, 0.426116, -0.559629,
		-0.158172, 0.872069, 0.463117,
		0.685377, -0.240667, 0.687269,
		27.821129, 36.588669, 62.685604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.715860, 37.386871, 62.355545>,  <27.341366, 36.757137, 62.204517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.715860, 37.386871, 62.355545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.948046, 37.066494, 62.414261>,  <28.087357, 36.874268, 62.449490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.948046, 37.066494, 62.414261>,  <27.715860, 37.386871, 62.355545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.948046, 37.066494, 62.414261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677418, 0.374959, -0.632858,
		0.451845, 0.466789, 0.760226,
		0.580465, -0.800945, 0.146788,
		28.122185, 36.826210, 62.458298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.440319, 37.742413, 62.411766>,  <27.715860, 37.386871, 62.355545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.440319, 37.742413, 62.411766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.518511, 37.351177, 62.383114>,  <28.565426, 37.116436, 62.365925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.518511, 37.351177, 62.383114>,  <28.440319, 37.742413, 62.411766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.518511, 37.351177, 62.383114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658035, 0.184967, -0.729915,
		0.727171, 0.095548, 0.679774,
		0.195478, -0.978089, -0.071628,
		28.577154, 37.057751, 62.361626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141661, 37.638523, 62.435886>,  <28.440319, 37.742413, 62.411766>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.141661, 37.638523, 62.435886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.988424, 37.332928, 62.228207>,  <28.896482, 37.149570, 62.103600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.988424, 37.332928, 62.228207>,  <29.141661, 37.638523, 62.435886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988424, 37.332928, 62.228207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629010, 0.195858, -0.752320,
		0.676452, -0.614787, 0.405524,
		-0.383092, -0.763987, -0.519196,
		28.873497, 37.103733, 62.072449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.748198, 37.355007, 62.255707>,  <29.141661, 37.638523, 62.435886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.748198, 37.355007, 62.255707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.459053, 37.206726, 62.022449>,  <29.285566, 37.117760, 61.882496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.459053, 37.206726, 62.022449>,  <29.748198, 37.355007, 62.255707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459053, 37.206726, 62.022449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591004, 0.105590, -0.799728,
		0.358033, -0.922731, 0.142758,
		-0.722860, -0.370700, -0.583143,
		29.242195, 37.095516, 61.847507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030783, 36.839878, 61.829552>,  <29.748198, 37.355007, 62.255707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030783, 36.839878, 61.829552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693716, 36.880074, 61.617962>,  <29.491476, 36.904190, 61.491009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693716, 36.880074, 61.617962>,  <30.030783, 36.839878, 61.829552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693716, 36.880074, 61.617962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536181, 0.066746, -0.841460,
		-0.049247, -0.992697, -0.110123,
		-0.842665, 0.100485, -0.528978,
		29.440916, 36.910217, 61.459267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153414, 36.466099, 61.221188>,  <30.030783, 36.839878, 61.829552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153414, 36.466099, 61.221188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.865013, 36.729027, 61.133476>,  <29.691973, 36.886784, 61.080849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.865013, 36.729027, 61.133476>,  <30.153414, 36.466099, 61.221188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865013, 36.729027, 61.133476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313037, 0.026659, -0.949367,
		-0.618193, -0.753139, -0.224987,
		-0.721003, 0.657320, -0.219280,
		29.648712, 36.926224, 61.067692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879807, 36.260796, 60.590065>,  <30.153414, 36.466099, 61.221188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879807, 36.260796, 60.590065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757273, 36.640553, 60.562344>,  <29.683752, 36.868408, 60.545712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757273, 36.640553, 60.562344>,  <29.879807, 36.260796, 60.590065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757273, 36.640553, 60.562344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249194, 0.009712, -0.968405,
		-0.918727, -0.313929, -0.239559,
		-0.306337, 0.949397, -0.069307,
		29.665371, 36.925373, 60.541550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.411583, 36.250042, 60.117157>,  <29.879807, 36.260796, 60.590065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.411583, 36.250042, 60.117157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539328, 36.627651, 60.150223>,  <29.615974, 36.854218, 60.170063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539328, 36.627651, 60.150223>,  <29.411583, 36.250042, 60.117157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.539328, 36.627651, 60.150223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075152, 0.061725, -0.995260,
		-0.944648, 0.324061, -0.051232,
		0.319362, 0.944021, 0.082662,
		29.635136, 36.910858, 60.175022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.953426, 36.666981, 59.668774>,  <29.411583, 36.250042, 60.117157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.953426, 36.666981, 59.668774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.295105, 36.867970, 59.722252>,  <29.500113, 36.988564, 59.754337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.295105, 36.867970, 59.722252>,  <28.953426, 36.666981, 59.668774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.295105, 36.867970, 59.722252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029383, 0.210068, -0.977245,
		-0.519120, 0.838687, 0.164676,
		0.854196, 0.502469, 0.133694,
		29.551363, 37.018711, 59.762360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920736, 37.151653, 59.169682>,  <28.953426, 36.666981, 59.668774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920736, 37.151653, 59.169682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307241, 37.138351, 59.271843>,  <29.539145, 37.130371, 59.333141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307241, 37.138351, 59.271843>,  <28.920736, 37.151653, 59.169682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.307241, 37.138351, 59.271843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257386, 0.088056, -0.962288,
		0.009513, 0.995560, 0.093645,
		0.966262, -0.033257, 0.255406,
		29.597120, 37.128376, 59.348465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.235203, 37.514992, 58.631786>,  <28.920736, 37.151653, 59.169682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.235203, 37.514992, 58.631786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555508, 37.339687, 58.795105>,  <29.747690, 37.234505, 58.893097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555508, 37.339687, 58.795105>,  <29.235203, 37.514992, 58.631786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.555508, 37.339687, 58.795105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413573, -0.088552, -0.906155,
		0.433290, 0.894474, 0.110344,
		0.800761, -0.438263, 0.408299,
		29.795736, 37.208210, 58.917595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.765635, 37.763016, 58.266727>,  <29.235203, 37.514992, 58.631786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.765635, 37.763016, 58.266727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940643, 37.435146, 58.414627>,  <30.045649, 37.238426, 58.503365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940643, 37.435146, 58.414627>,  <29.765635, 37.763016, 58.266727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940643, 37.435146, 58.414627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277844, -0.267838, -0.922532,
		0.855207, 0.506358, 0.110557,
		0.437520, -0.819673, 0.369746,
		30.071899, 37.189243, 58.525551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355295, 37.784786, 57.983986>,  <29.765635, 37.763016, 58.266727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355295, 37.784786, 57.983986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322531, 37.395630, 58.070503>,  <30.302872, 37.162136, 58.122414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322531, 37.395630, 58.070503>,  <30.355295, 37.784786, 57.983986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322531, 37.395630, 58.070503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469010, -0.229115, -0.852957,
		0.879386, 0.031574, 0.475061,
		-0.081912, -0.972887, 0.216289,
		30.297956, 37.103764, 58.135391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925083, 37.450359, 57.650856>,  <30.355295, 37.784786, 57.983986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925083, 37.450359, 57.650856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711990, 37.129444, 57.758583>,  <30.584135, 36.936893, 57.823219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711990, 37.129444, 57.758583>,  <30.925083, 37.450359, 57.650856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711990, 37.129444, 57.758583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376851, -0.509834, -0.773339,
		0.757747, -0.310489, 0.573947,
		-0.532731, -0.802288, 0.269317,
		30.552172, 36.888756, 57.839378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374542, 36.862041, 57.700317>,  <30.925083, 37.450359, 57.650856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374542, 36.862041, 57.700317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018848, 36.689602, 57.639118>,  <30.805431, 36.586136, 57.602398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018848, 36.689602, 57.639118>,  <31.374542, 36.862041, 57.700317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018848, 36.689602, 57.639118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407256, -0.593758, -0.693970,
		0.208328, -0.679413, 0.703561,
		-0.889237, -0.431102, -0.152998,
		30.752077, 36.560272, 57.593220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464588, 36.174126, 57.914642>,  <31.374542, 36.862041, 57.700317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464588, 36.174126, 57.914642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173143, 36.165874, 57.640797>,  <30.998278, 36.160923, 57.476490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173143, 36.165874, 57.640797>,  <31.464588, 36.174126, 57.914642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173143, 36.165874, 57.640797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558949, -0.595600, -0.576919,
		-0.395856, -0.803016, 0.445492,
		-0.728610, -0.020631, -0.684617,
		30.954561, 36.159687, 57.435410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413927, 35.495487, 57.692631>,  <31.464588, 36.174126, 57.914642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413927, 35.495487, 57.692631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214266, 35.666119, 57.390934>,  <31.094469, 35.768497, 57.209915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214266, 35.666119, 57.390934>,  <31.413927, 35.495487, 57.692631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214266, 35.666119, 57.390934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554109, -0.512065, -0.656317,
		-0.666191, -0.745533, 0.019227,
		-0.499151, 0.426579, -0.754240,
		31.064520, 35.794094, 57.164661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.148930, 35.005043, 57.261463>,  <31.413927, 35.495487, 57.692631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.148930, 35.005043, 57.261463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181742, 35.330925, 57.031845>,  <31.201429, 35.526455, 56.894073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181742, 35.330925, 57.031845>,  <31.148930, 35.005043, 57.261463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181742, 35.330925, 57.031845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603214, -0.499088, -0.622128,
		-0.793350, -0.295239, -0.532381,
		0.082029, 0.814705, -0.574044,
		31.206350, 35.575336, 56.859631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988802, 34.741024, 56.541344>,  <31.148930, 35.005043, 57.261463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988802, 34.741024, 56.541344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.163437, 35.096169, 56.483246>,  <31.268217, 35.309254, 56.448387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.163437, 35.096169, 56.483246>,  <30.988802, 34.741024, 56.541344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163437, 35.096169, 56.483246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489530, -0.369890, -0.789647,
		-0.754820, 0.273649, -0.596124,
		0.436586, 0.887861, -0.145241,
		31.294413, 35.362526, 56.439674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.715832, 33.669270, 51.603737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.729424, 34.057297, 51.699921>,  <47.737579, 34.290112, 51.757629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.729424, 34.057297, 51.699921>,  <47.715832, 33.669270, 51.603737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.729424, 34.057297, 51.699921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997106, 0.049273, -0.057886,
		-0.068001, -0.237798, 0.968931,
		0.033977, 0.970064, 0.240460,
		47.739616, 34.348316, 51.772060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.255207, 33.735287, 52.108185>,  <47.715832, 33.669270, 51.603737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.255207, 33.735287, 52.108185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.303963, 34.102089, 51.956268>,  <47.333214, 34.322170, 51.865120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.303963, 34.102089, 51.956268>,  <47.255207, 33.735287, 52.108185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.303963, 34.102089, 51.956268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989999, 0.084939, -0.112638,
		-0.071031, 0.389722, 0.918189,
		0.121887, 0.917007, -0.379791,
		47.340530, 34.377190, 51.842331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.954880, 34.191669, 52.537132>,  <47.255207, 33.735287, 52.108185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.954880, 34.191669, 52.537132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.948402, 34.360085, 52.174374>,  <46.944515, 34.461132, 51.956718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.948402, 34.360085, 52.174374>,  <46.954880, 34.191669, 52.537132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.948402, 34.360085, 52.174374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999701, 0.009788, 0.022392,
		0.018304, 0.906990, 0.420754,
		-0.016191, 0.421038, -0.906899,
		46.943546, 34.486397, 51.902306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.618866, 34.793777, 52.660099>,  <46.954880, 34.191669, 52.537132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.618866, 34.793777, 52.660099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.593063, 34.798367, 52.260960>,  <46.577583, 34.801121, 52.021477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.593063, 34.798367, 52.260960>,  <46.618866, 34.793777, 52.660099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.593063, 34.798367, 52.260960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997807, 0.014126, 0.064665,
		0.014837, 0.999834, 0.010535,
		-0.064505, 0.011471, -0.997851,
		46.573711, 34.801807, 51.961605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.045750, 35.242569, 52.498405>,  <46.618866, 34.793777, 52.660099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.045750, 35.242569, 52.498405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.109142, 35.014370, 52.176060>,  <46.147179, 34.877449, 51.982651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.109142, 35.014370, 52.176060>,  <46.045750, 35.242569, 52.498405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.109142, 35.014370, 52.176060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976288, 0.031358, -0.214193,
		0.147467, 0.820701, -0.552000,
		0.158479, -0.570498, -0.805864,
		46.156685, 34.843220, 51.934299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.035976, 35.653217, 51.848343>,  <46.045750, 35.242569, 52.498405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.035976, 35.653217, 51.848343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.923897, 35.273579, 51.790775>,  <45.856647, 35.045795, 51.756237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.923897, 35.273579, 51.790775>,  <46.035976, 35.653217, 51.848343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.923897, 35.273579, 51.790775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913459, 0.309707, -0.263958,
		0.295092, 0.057500, -0.953737,
		-0.280202, -0.949092, -0.143916,
		45.839836, 34.988850, 51.747601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.616035, 35.744930, 51.310074>,  <46.035976, 35.653217, 51.848343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.616035, 35.744930, 51.310074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.516052, 35.376694, 51.430088>,  <45.456062, 35.155750, 51.502098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.516052, 35.376694, 51.430088>,  <45.616035, 35.744930, 51.310074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.516052, 35.376694, 51.430088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938561, 0.154212, -0.308743,
		0.237958, -0.358778, -0.902582,
		-0.249959, -0.920596, 0.300039,
		45.441063, 35.100513, 51.520100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.331345, 35.571327, 50.751499>,  <45.616035, 35.744930, 51.310074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.331345, 35.571327, 50.751499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.208397, 35.331032, 51.046696>,  <45.134628, 35.186855, 51.223816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.208397, 35.331032, 51.046696>,  <45.331345, 35.571327, 50.751499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.208397, 35.331032, 51.046696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939532, 0.068504, -0.335539,
		0.151017, -0.796502, -0.585472,
		-0.307365, -0.600742, 0.737994,
		45.116188, 35.150810, 51.268093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.837925, 35.114311, 50.450260>,  <45.331345, 35.571327, 50.751499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.837925, 35.114311, 50.450260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.738525, 35.118195, 50.837692>,  <44.678886, 35.120525, 51.070152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.738525, 35.118195, 50.837692>,  <44.837925, 35.114311, 50.450260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.738525, 35.118195, 50.837692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960828, 0.124209, -0.247751,
		-0.122714, -0.992208, -0.021531,
		-0.248495, 0.009714, 0.968584,
		44.663975, 35.121109, 51.128269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.229481, 34.706318, 50.507168>,  <44.837925, 35.114311, 50.450260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.229481, 34.706318, 50.507168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.237339, 34.928345, 50.839798>,  <44.242054, 35.061562, 51.039375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.237339, 34.928345, 50.839798>,  <44.229481, 34.706318, 50.507168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.237339, 34.928345, 50.839798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981229, 0.170299, -0.090488,
		-0.191843, -0.814183, 0.547998,
		0.019649, 0.555071, 0.831571,
		44.243233, 35.094868, 51.089268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.618324, 34.519199, 50.903587>,  <44.229481, 34.706318, 50.507168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.618324, 34.519199, 50.903587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.729092, 34.872688, 51.054501>,  <43.795551, 35.084782, 51.145050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.729092, 34.872688, 51.054501>,  <43.618324, 34.519199, 50.903587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.729092, 34.872688, 51.054501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959720, 0.273766, 0.063161,
		-0.047471, -0.379581, 0.923940,
		0.276918, 0.883725, 0.377288,
		43.812168, 35.137806, 51.167686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.083927, 34.611996, 51.439041>,  <43.618324, 34.519199, 50.903587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.083927, 34.611996, 51.439041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.209602, 34.980186, 51.346077>,  <43.285007, 35.201099, 51.290298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.209602, 34.980186, 51.346077>,  <43.083927, 34.611996, 51.439041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.209602, 34.980186, 51.346077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944242, 0.277601, -0.177044,
		-0.098448, 0.275076, 0.956369,
		0.314189, 0.920473, -0.232409,
		43.303860, 35.256329, 51.276356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.466713, 35.028561, 51.475990>,  <43.083927, 34.611996, 51.439041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.466713, 35.028561, 51.475990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.709351, 35.296940, 51.305405>,  <42.854931, 35.457970, 51.203053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.709351, 35.296940, 51.305405>,  <42.466713, 35.028561, 51.475990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.709351, 35.296940, 51.305405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793649, 0.479623, -0.374277,
		-0.046578, 0.565498, 0.823434,
		0.606591, 0.670950, -0.426467,
		42.891327, 35.498226, 51.177464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.280655, 35.605457, 51.718376>,  <42.466713, 35.028561, 51.475990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.280655, 35.605457, 51.718376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.451305, 35.668987, 51.362225>,  <42.553696, 35.707104, 51.148533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.451305, 35.668987, 51.362225>,  <42.280655, 35.605457, 51.718376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.451305, 35.668987, 51.362225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770519, 0.579328, -0.265856,
		0.473594, 0.799471, 0.369532,
		0.426625, 0.158824, -0.890374,
		42.579292, 35.716633, 51.095112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943348, 36.183670, 51.496944>,  <42.280655, 35.605457, 51.718376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943348, 36.183670, 51.496944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.103790, 36.063625, 51.150753>,  <42.200054, 35.991600, 50.943039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.103790, 36.063625, 51.150753>,  <41.943348, 36.183670, 51.496944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.103790, 36.063625, 51.150753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783617, 0.376898, -0.493855,
		0.474406, 0.876290, -0.083995,
		0.401102, -0.300108, -0.865478,
		42.224121, 35.973595, 50.891109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827023, 36.689114, 50.999954>,  <41.943348, 36.183670, 51.496944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827023, 36.689114, 50.999954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.880775, 36.375507, 50.757545>,  <41.913029, 36.187344, 50.612103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.880775, 36.375507, 50.757545>,  <41.827023, 36.689114, 50.999954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.880775, 36.375507, 50.757545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749126, 0.319944, -0.580039,
		0.648652, 0.531933, -0.544332,
		0.134387, -0.784018, -0.606017,
		41.921093, 36.140301, 50.575741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.930382, 36.947407, 50.282524>,  <41.827023, 36.689114, 50.999954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.930382, 36.947407, 50.282524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.819962, 36.568943, 50.214901>,  <41.753708, 36.341866, 50.174328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.819962, 36.568943, 50.214901>,  <41.930382, 36.947407, 50.282524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.819962, 36.568943, 50.214901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662460, 0.314743, -0.679767,
		0.696378, -0.075655, -0.713677,
		-0.276052, -0.946157, -0.169061,
		41.737144, 36.285095, 50.164185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644066, 37.011063, 49.695225>,  <41.930382, 36.947407, 50.282524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644066, 37.011063, 49.695225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.528339, 36.641022, 49.793598>,  <41.458904, 36.418999, 49.852623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.528339, 36.641022, 49.793598>,  <41.644066, 37.011063, 49.695225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.528339, 36.641022, 49.793598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741302, 0.053984, -0.668997,
		0.605615, -0.375860, -0.701399,
		-0.289313, -0.925103, 0.245932,
		41.441547, 36.363491, 49.867378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442841, 36.614494, 49.123890>,  <41.644066, 37.011063, 49.695225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442841, 36.614494, 49.123890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.231342, 36.430115, 49.408974>,  <41.104446, 36.319489, 49.580025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.231342, 36.430115, 49.408974>,  <41.442841, 36.614494, 49.123890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231342, 36.430115, 49.408974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835184, 0.132831, -0.533689,
		0.151334, -0.877428, -0.455212,
		-0.528740, -0.460951, 0.712712,
		41.072720, 36.291828, 49.622787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844448, 36.283092, 48.739979>,  <41.442841, 36.614494, 49.123890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844448, 36.283092, 48.739979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.693939, 36.265743, 49.110176>,  <40.603634, 36.255333, 49.332294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.693939, 36.265743, 49.110176>,  <40.844448, 36.283092, 48.739979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693939, 36.265743, 49.110176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926387, 0.033854, -0.375048,
		-0.015062, -0.998485, -0.052926,
		-0.376271, -0.043381, 0.925493,
		40.581059, 36.252731, 49.387825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303303, 35.767624, 48.743126>,  <40.844448, 36.283092, 48.739979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303303, 35.767624, 48.743126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.233322, 36.022087, 49.043709>,  <40.191334, 36.174767, 49.224060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.233322, 36.022087, 49.043709>,  <40.303303, 35.767624, 48.743126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233322, 36.022087, 49.043709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906235, 0.194308, -0.375477,
		-0.384879, -0.746689, 0.542516,
		-0.174949, 0.636160, 0.751460,
		40.180836, 36.212936, 49.269146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863327, 35.195900, 48.516819>,  <40.303303, 35.767624, 48.743126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863327, 35.195900, 48.516819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.711353, 35.538475, 48.377010>,  <39.620171, 35.744022, 48.293125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.711353, 35.538475, 48.377010>,  <39.863327, 35.195900, 48.516819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711353, 35.538475, 48.377010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924743, -0.360822, 0.121067,
		-0.022428, 0.369213, 0.929074,
		-0.379930, 0.856439, -0.349520,
		39.597374, 35.795406, 48.272156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342876, 35.318382, 48.921299>,  <39.863327, 35.195900, 48.516819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342876, 35.318382, 48.921299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.239014, 35.526447, 48.595844>,  <39.176697, 35.651287, 48.400570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.239014, 35.526447, 48.595844>,  <39.342876, 35.318382, 48.921299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239014, 35.526447, 48.595844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889342, -0.457165, -0.008449,
		-0.376360, 0.721406, 0.581314,
		-0.259661, 0.520166, -0.813635,
		39.161114, 35.682499, 48.351753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709774, 35.655857, 49.027084>,  <39.342876, 35.318382, 48.921299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709774, 35.655857, 49.027084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.794411, 35.498520, 48.669201>,  <38.845192, 35.404118, 48.454472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.794411, 35.498520, 48.669201>,  <38.709774, 35.655857, 49.027084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794411, 35.498520, 48.669201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877358, -0.479825, 0.003459,
		-0.430665, 0.784249, -0.446632,
		0.211593, -0.393346, -0.894711,
		38.857887, 35.380516, 48.400787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001255, 35.208412, 48.964935>,  <38.709774, 35.655857, 49.027084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001255, 35.208412, 48.964935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.233284, 35.121773, 48.650837>,  <38.372501, 35.069790, 48.462379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.233284, 35.121773, 48.650837>,  <38.001255, 35.208412, 48.964935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233284, 35.121773, 48.650837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675075, -0.667297, -0.314624,
		-0.455844, 0.712602, -0.533296,
		0.580069, -0.216595, -0.785243,
		38.407303, 35.056793, 48.415264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882042, 34.463043, 48.598228>,  <38.001255, 35.208412, 48.964935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882042, 34.463043, 48.598228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.958076, 34.071129, 48.573284>,  <38.003696, 33.835979, 48.558319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.958076, 34.071129, 48.573284>,  <37.882042, 34.463043, 48.598228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958076, 34.071129, 48.573284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717116, -0.095182, -0.690424,
		0.670532, 0.175956, -0.720712,
		0.190083, -0.979786, -0.062358,
		38.015102, 33.777195, 48.554577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913879, 34.367832, 47.892490>,  <37.882042, 34.463043, 48.598228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913879, 34.367832, 47.892490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.857872, 34.009373, 48.060921>,  <37.824268, 33.794296, 48.161980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.857872, 34.009373, 48.060921>,  <37.913879, 34.367832, 47.892490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857872, 34.009373, 48.060921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704684, -0.208555, -0.678178,
		0.695568, -0.391686, -0.602302,
		-0.140019, -0.896151, 0.421079,
		37.815865, 33.740528, 48.187244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907990, 33.917133, 47.322762>,  <37.913879, 34.367832, 47.892490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907990, 33.917133, 47.322762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.722870, 33.719101, 47.616894>,  <37.611797, 33.600281, 47.793373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.722870, 33.719101, 47.616894>,  <37.907990, 33.917133, 47.322762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722870, 33.719101, 47.616894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603139, -0.432048, -0.670491,
		0.649648, -0.753807, -0.098654,
		-0.462798, -0.495085, 0.735330,
		37.584030, 33.570576, 47.837494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694592, 33.284138, 47.050774>,  <37.907990, 33.917133, 47.322762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694592, 33.284138, 47.050774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.462704, 33.331417, 47.373253>,  <37.323570, 33.359783, 47.566742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.462704, 33.331417, 47.373253>,  <37.694592, 33.284138, 47.050774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462704, 33.331417, 47.373253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770402, -0.401706, -0.495088,
		0.265337, -0.908109, 0.323936,
		-0.579721, 0.118196, 0.806196,
		37.288788, 33.366875, 47.615112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223114, 32.677940, 47.040817>,  <37.694592, 33.284138, 47.050774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223114, 32.677940, 47.040817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.050716, 32.906242, 47.320385>,  <36.947277, 33.043224, 47.488125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.050716, 32.906242, 47.320385>,  <37.223114, 32.677940, 47.040817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050716, 32.906242, 47.320385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901878, -0.247254, -0.354234,
		-0.029368, -0.783013, 0.621311,
		-0.430992, 0.570750, 0.698921,
		36.921417, 33.077469, 47.530060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552795, 32.280712, 47.358078>,  <37.223114, 32.677940, 47.040817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552795, 32.280712, 47.358078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.502686, 32.672459, 47.421501>,  <36.472618, 32.907509, 47.459553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.502686, 32.672459, 47.421501>,  <36.552795, 32.280712, 47.358078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502686, 32.672459, 47.421501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948964, -0.071666, -0.307133,
		-0.289434, -0.188941, 0.938365,
		-0.125279, 0.979370, 0.158556,
		36.465103, 32.966270, 47.469067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928940, 32.271870, 47.663227>,  <36.552795, 32.280712, 47.358078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928940, 32.271870, 47.663227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.969494, 32.661335, 47.581551>,  <35.993828, 32.895016, 47.532543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.969494, 32.661335, 47.581551>,  <35.928940, 32.271870, 47.663227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969494, 32.661335, 47.581551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970740, 0.051911, -0.234456,
		-0.217682, 0.221992, 0.950439,
		0.101385, 0.973666, -0.204196,
		35.999908, 32.953434, 47.520290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326664, 32.644375, 47.963161>,  <35.928940, 32.271870, 47.663227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326664, 32.644375, 47.963161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.479797, 32.851707, 47.657280>,  <35.571678, 32.976105, 47.473751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.479797, 32.851707, 47.657280>,  <35.326664, 32.644375, 47.963161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479797, 32.851707, 47.657280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917273, 0.114933, -0.381316,
		-0.109758, 0.847423, 0.519449,
		0.382838, 0.518329, -0.764703,
		35.594650, 33.007206, 47.427868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963943, 33.270809, 47.973957>,  <35.326664, 32.644375, 47.963161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963943, 33.270809, 47.973957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.117523, 33.233967, 47.606457>,  <35.209671, 33.211861, 47.385956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.117523, 33.233967, 47.606457>,  <34.963943, 33.270809, 47.973957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117523, 33.233967, 47.606457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873175, 0.287330, -0.393710,
		0.300246, 0.953393, 0.029899,
		0.383951, -0.092103, -0.918748,
		35.232708, 33.206337, 47.330833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742538, 33.922466, 47.616455>,  <34.963943, 33.270809, 47.973957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742538, 33.922466, 47.616455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.815754, 33.669247, 47.315590>,  <34.859684, 33.517315, 47.135071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.815754, 33.669247, 47.315590>,  <34.742538, 33.922466, 47.616455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815754, 33.669247, 47.315590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715438, 0.438971, -0.543556,
		0.674274, 0.637616, -0.372560,
		0.183037, -0.633049, -0.752161,
		34.870667, 33.479332, 47.089943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.304731, 32.778606, 51.908836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.539984, 33.088802, 52.000679>,  <30.681135, 33.274921, 52.055786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.539984, 33.088802, 52.000679>,  <30.304731, 32.778606, 51.908836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539984, 33.088802, 52.000679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502789, -0.128214, -0.854848,
		-0.633486, 0.618206, -0.465314,
		0.588131, 0.775489, 0.229605,
		30.716423, 33.321449, 52.069561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497021, 33.042892, 51.149204>,  <30.304731, 32.778606, 51.908836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497021, 33.042892, 51.149204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.726742, 33.269032, 51.386036>,  <30.864574, 33.404713, 51.528137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.726742, 33.269032, 51.386036>,  <30.497021, 33.042892, 51.149204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726742, 33.269032, 51.386036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486349, 0.346158, -0.802272,
		-0.658514, 0.748706, -0.076155,
		0.574304, 0.565345, 0.592081,
		30.899033, 33.438637, 51.563660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534771, 33.742718, 50.833107>,  <30.497021, 33.042892, 51.149204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534771, 33.742718, 50.833107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.866220, 33.684498, 51.049328>,  <31.065090, 33.649567, 51.179062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.866220, 33.684498, 51.049328>,  <30.534771, 33.742718, 50.833107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866220, 33.684498, 51.049328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559057, 0.165163, -0.812513,
		0.028984, 0.975467, 0.218230,
		0.828623, -0.145552, 0.540554,
		31.114807, 33.640831, 51.211494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040100, 34.320343, 50.585659>,  <30.534771, 33.742718, 50.833107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040100, 34.320343, 50.585659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.248535, 34.038681, 50.778584>,  <31.373596, 33.869682, 50.894341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.248535, 34.038681, 50.778584>,  <31.040100, 34.320343, 50.585659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248535, 34.038681, 50.778584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710932, 0.045406, -0.701793,
		0.472274, 0.708588, 0.524270,
		0.521087, -0.704159, 0.482315,
		31.404861, 33.827435, 50.923279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642603, 34.601475, 50.601917>,  <31.040100, 34.320343, 50.585659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642603, 34.601475, 50.601917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.713326, 34.210518, 50.648296>,  <31.755760, 33.975945, 50.676125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.713326, 34.210518, 50.648296>,  <31.642603, 34.601475, 50.601917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713326, 34.210518, 50.648296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667384, 0.032465, -0.744006,
		0.723421, 0.208929, 0.658036,
		0.176808, -0.977392, 0.115949,
		31.766367, 33.917301, 50.683083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381935, 34.587727, 50.592510>,  <31.642603, 34.601475, 50.601917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381935, 34.587727, 50.592510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.289730, 34.199539, 50.564068>,  <32.234406, 33.966625, 50.547005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.289730, 34.199539, 50.564068>,  <32.381935, 34.587727, 50.592510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289730, 34.199539, 50.564068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745825, -0.129275, -0.653478,
		0.624987, -0.203665, 0.753599,
		-0.230512, -0.970468, -0.071103,
		32.220577, 33.908398, 50.542736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076046, 34.136585, 50.679707>,  <32.381935, 34.587727, 50.592510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076046, 34.136585, 50.679707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.791084, 33.915810, 50.506348>,  <32.620106, 33.783344, 50.402332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.791084, 33.915810, 50.506348>,  <33.076046, 34.136585, 50.679707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791084, 33.915810, 50.506348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624550, -0.217025, -0.750225,
		0.320023, -0.805145, 0.499326,
		-0.712406, -0.551944, -0.433400,
		32.577362, 33.750225, 50.376328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393711, 33.521458, 50.483849>,  <33.076046, 34.136585, 50.679707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393711, 33.521458, 50.483849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.065948, 33.566307, 50.258995>,  <32.869289, 33.593216, 50.124084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.065948, 33.566307, 50.258995>,  <33.393711, 33.521458, 50.483849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065948, 33.566307, 50.258995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544525, -0.154076, -0.824472,
		-0.179051, -0.981677, 0.065199,
		-0.819411, 0.112120, -0.562135,
		32.820126, 33.599941, 50.090355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544235, 33.101513, 49.887596>,  <33.393711, 33.521458, 50.483849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544235, 33.101513, 49.887596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.267586, 33.363441, 49.765697>,  <33.101597, 33.520599, 49.692558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.267586, 33.363441, 49.765697>,  <33.544235, 33.101513, 49.887596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267586, 33.363441, 49.765697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354894, -0.059373, -0.933020,
		-0.629054, -0.753448, -0.191328,
		-0.691622, 0.654821, -0.304743,
		33.060101, 33.559887, 49.674274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339851, 32.751896, 49.225075>,  <33.544235, 33.101513, 49.887596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339851, 32.751896, 49.225075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.218800, 33.133137, 49.225571>,  <33.146168, 33.361881, 49.225868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.218800, 33.133137, 49.225571>,  <33.339851, 32.751896, 49.225075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218800, 33.133137, 49.225571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240931, 0.077757, -0.967422,
		-0.922153, -0.292476, -0.253165,
		-0.302633, 0.953106, 0.001237,
		33.128010, 33.419067, 49.225941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970623, 32.908012, 48.548916>,  <33.339851, 32.751896, 49.225075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970623, 32.908012, 48.548916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.103146, 33.262260, 48.679089>,  <33.182659, 33.474812, 48.757191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.103146, 33.262260, 48.679089>,  <32.970623, 32.908012, 48.548916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103146, 33.262260, 48.679089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360997, 0.199681, -0.910938,
		-0.871731, 0.419281, -0.253552,
		0.331310, 0.885625, 0.325427,
		33.202538, 33.527946, 48.776718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879250, 33.321503, 47.978302>,  <32.970623, 32.908012, 48.548916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879250, 33.321503, 47.978302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.105305, 33.581913, 48.181000>,  <33.240936, 33.738159, 48.302616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.105305, 33.581913, 48.181000>,  <32.879250, 33.321503, 47.978302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105305, 33.581913, 48.181000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385134, 0.335007, -0.859908,
		-0.729583, 0.681130, -0.061406,
		0.565138, 0.651023, 0.506742,
		33.274845, 33.777222, 48.333023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872757, 33.926350, 47.568245>,  <32.879250, 33.321503, 47.978302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872757, 33.926350, 47.568245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.206306, 33.957607, 47.786804>,  <33.406437, 33.976364, 47.917938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.206306, 33.957607, 47.786804>,  <32.872757, 33.926350, 47.568245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206306, 33.957607, 47.786804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520668, 0.217195, -0.825670,
		-0.183199, 0.972995, 0.140424,
		0.833872, 0.078147, 0.546397,
		33.456467, 33.981052, 47.950722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133083, 34.261848, 47.746731>,  <32.872757, 33.926350, 47.568245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133083, 34.261848, 47.746731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.066837, 34.333801, 47.358871>,  <32.027088, 34.376972, 47.126156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.066837, 34.333801, 47.358871>,  <32.133083, 34.261848, 47.746731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066837, 34.333801, 47.358871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601772, 0.760525, 0.243870,
		0.781308, 0.623894, -0.017706,
		-0.165615, 0.179883, -0.969646,
		32.017155, 34.387768, 47.067978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167545, 34.947300, 47.613487>,  <32.133083, 34.261848, 47.746731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167545, 34.947300, 47.613487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.967327, 34.828312, 47.288288>,  <31.847197, 34.756920, 47.093166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.967327, 34.828312, 47.288288>,  <32.167545, 34.947300, 47.613487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967327, 34.828312, 47.288288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465628, 0.884213, -0.036849,
		0.729828, 0.360112, -0.581094,
		-0.500541, -0.297467, -0.813002,
		31.817165, 34.739071, 47.044388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245720, 35.411621, 47.167381>,  <32.167545, 34.947300, 47.613487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245720, 35.411621, 47.167381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.917318, 35.232536, 47.025673>,  <31.720278, 35.125084, 46.940647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.917318, 35.232536, 47.025673>,  <32.245720, 35.411621, 47.167381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917318, 35.232536, 47.025673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465449, 0.884224, -0.038799,
		0.330624, 0.133040, -0.934339,
		-0.821003, -0.447715, -0.354269,
		31.671017, 35.098221, 46.919392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011616, 35.729469, 46.539520>,  <32.245720, 35.411621, 47.167381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011616, 35.729469, 46.539520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.690298, 35.550526, 46.696793>,  <31.497507, 35.443161, 46.791157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.690298, 35.550526, 46.696793>,  <32.011616, 35.729469, 46.539520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690298, 35.550526, 46.696793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527169, 0.841265, -0.119860,
		-0.277152, -0.303557, -0.911614,
		-0.803293, -0.447355, 0.393184,
		31.449310, 35.416321, 46.814747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491230, 35.821857, 46.113430>,  <32.011616, 35.729469, 46.539520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491230, 35.821857, 46.113430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.307514, 35.739025, 46.458954>,  <31.197285, 35.689327, 46.666267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.307514, 35.739025, 46.458954>,  <31.491230, 35.821857, 46.113430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307514, 35.739025, 46.458954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559369, 0.822845, -0.100156,
		-0.690043, -0.529191, -0.493758,
		-0.459289, -0.207081, 0.863812,
		31.169727, 35.676899, 46.718098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944641, 36.127277, 45.987740>,  <31.491230, 35.821857, 46.113430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944641, 36.127277, 45.987740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.899511, 36.068161, 46.380764>,  <30.872433, 36.032692, 46.616577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.899511, 36.068161, 46.380764>,  <30.944641, 36.127277, 45.987740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899511, 36.068161, 46.380764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663617, 0.747197, 0.036186,
		-0.739516, -0.647962, -0.182377,
		-0.112824, -0.147789, 0.982563,
		30.865664, 36.023823, 46.675533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300797, 36.376778, 46.117458>,  <30.944641, 36.127277, 45.987740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300797, 36.376778, 46.117458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.482994, 36.369896, 46.473488>,  <30.592312, 36.365768, 46.687107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.482994, 36.369896, 46.473488>,  <30.300797, 36.376778, 46.117458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482994, 36.369896, 46.473488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557139, 0.774306, 0.300078,
		-0.694351, -0.632578, 0.343107,
		0.455492, -0.017201, 0.890073,
		30.619642, 36.364735, 46.740509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828014, 36.685856, 46.598404>,  <30.300797, 36.376778, 46.117458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828014, 36.685856, 46.598404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.159174, 36.703575, 46.822056>,  <30.357870, 36.714207, 46.956245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.159174, 36.703575, 46.822056>,  <29.828014, 36.685856, 46.598404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159174, 36.703575, 46.822056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400475, 0.744638, 0.533980,
		-0.392692, -0.665997, 0.634225,
		0.827897, 0.044302, 0.559128,
		30.407543, 36.716866, 46.989796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541008, 36.854774, 47.219879>,  <29.828014, 36.685856, 46.598404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541008, 36.854774, 47.219879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.931250, 36.941372, 47.234440>,  <30.165396, 36.993332, 47.243176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.931250, 36.941372, 47.234440>,  <29.541008, 36.854774, 47.219879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.931250, 36.941372, 47.234440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192442, 0.763597, 0.616348,
		0.105641, -0.608317, 0.786632,
		0.975606, 0.216493, 0.036399,
		30.223930, 37.006321, 47.245361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831913, 36.749496, 47.893562>,  <29.541008, 36.854774, 47.219879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831913, 36.749496, 47.893562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.048447, 37.026543, 47.702885>,  <30.178366, 37.192772, 47.588478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.048447, 37.026543, 47.702885>,  <29.831913, 36.749496, 47.893562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048447, 37.026543, 47.702885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360418, 0.703369, 0.612675,
		0.759645, -0.159849, 0.630387,
		0.541331, 0.692618, -0.476698,
		30.210846, 37.234329, 47.559875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440117, 37.053627, 48.281982>,  <29.831913, 36.749496, 47.893562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440117, 37.053627, 48.281982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.332098, 37.336880, 48.021027>,  <30.267286, 37.506832, 47.864452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.332098, 37.336880, 48.021027>,  <30.440117, 37.053627, 48.281982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332098, 37.336880, 48.021027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217760, 0.615094, 0.757787,
		0.937899, 0.346703, -0.011901,
		-0.270047, 0.708136, -0.652394,
		30.251083, 37.549320, 47.825310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538383, 37.639240, 48.767376>,  <30.440117, 37.053627, 48.281982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538383, 37.639240, 48.767376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.398062, 37.784416, 48.422073>,  <30.313868, 37.871521, 48.214893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.398062, 37.784416, 48.422073>,  <30.538383, 37.639240, 48.767376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398062, 37.784416, 48.422073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354942, 0.801524, 0.481222,
		0.866574, 0.475222, -0.152359,
		-0.350807, 0.362936, -0.863257,
		30.292820, 37.893295, 48.163097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781458, 38.332714, 48.753391>,  <30.538383, 37.639240, 48.767376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781458, 38.332714, 48.753391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.475832, 38.336246, 48.495358>,  <30.292458, 38.338367, 48.340538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.475832, 38.336246, 48.495358>,  <30.781458, 38.332714, 48.753391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475832, 38.336246, 48.495358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443645, 0.718764, 0.535311,
		0.468388, 0.695198, -0.545263,
		-0.764063, 0.008830, -0.645082,
		30.246613, 38.338894, 48.301834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512819, 39.002262, 48.790470>,  <30.781458, 38.332714, 48.753391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512819, 39.002262, 48.790470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.197489, 38.821304, 48.623672>,  <30.008291, 38.712730, 48.523594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.197489, 38.821304, 48.623672>,  <30.512819, 39.002262, 48.790470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.197489, 38.821304, 48.623672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611493, 0.501222, 0.612252,
		-0.067973, 0.737642, -0.671762,
		-0.788324, -0.452394, -0.416994,
		29.960991, 38.685585, 48.498573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029495, 39.546085, 48.548561>,  <30.512819, 39.002262, 48.790470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029495, 39.546085, 48.548561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.830843, 39.212814, 48.645870>,  <29.711653, 39.012852, 48.704258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.830843, 39.212814, 48.645870>,  <30.029495, 39.546085, 48.548561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830843, 39.212814, 48.645870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586948, 0.528857, 0.613027,
		-0.639415, 0.161657, -0.751675,
		-0.496629, -0.833173, 0.243275,
		29.681854, 38.962864, 48.718853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.751335, 40.271477, 48.739426>,  <30.029495, 39.546085, 48.548561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.751335, 40.271477, 48.739426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.070396, 40.403374, 48.941422>,  <30.261833, 40.482510, 49.062618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.070396, 40.403374, 48.941422>,  <29.751335, 40.271477, 48.739426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070396, 40.403374, 48.941422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580606, -0.193218, -0.790926,
		-0.163225, 0.924088, -0.345569,
		0.797655, 0.329738, 0.504993,
		30.309692, 40.502296, 49.092918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084345, 40.652523, 48.248699>,  <29.751335, 40.271477, 48.739426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084345, 40.652523, 48.248699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.350866, 40.546059, 48.527325>,  <30.510778, 40.482182, 48.694500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.350866, 40.546059, 48.527325>,  <30.084345, 40.652523, 48.248699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.350866, 40.546059, 48.527325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643166, -0.267553, -0.717463,
		0.377328, 0.926053, -0.007086,
		0.666304, -0.266161, 0.696561,
		30.550758, 40.466209, 48.736294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711937, 41.022892, 48.057693>,  <30.084345, 40.652523, 48.248699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711937, 41.022892, 48.057693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.879406, 40.746964, 48.293953>,  <30.979887, 40.581406, 48.435707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.879406, 40.746964, 48.293953>,  <30.711937, 41.022892, 48.057693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879406, 40.746964, 48.293953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660073, -0.215539, -0.719615,
		0.623710, 0.691155, 0.365089,
		0.418675, -0.689817, 0.590647,
		31.005009, 40.540020, 48.471146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350084, 41.142693, 48.016487>,  <30.711937, 41.022892, 48.057693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350084, 41.142693, 48.016487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.377701, 40.782482, 48.188198>,  <31.394272, 40.566357, 48.291225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.377701, 40.782482, 48.188198>,  <31.350084, 41.142693, 48.016487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377701, 40.782482, 48.188198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845453, -0.175603, -0.504354,
		0.529568, 0.397756, 0.749231,
		0.069043, -0.900529, 0.429278,
		31.398413, 40.512321, 48.316982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036839, 41.096684, 48.355450>,  <31.350084, 41.142693, 48.016487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036839, 41.096684, 48.355450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.946125, 40.711987, 48.293983>,  <31.891697, 40.481167, 48.257103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.946125, 40.711987, 48.293983>,  <32.036839, 41.096684, 48.355450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946125, 40.711987, 48.293983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888848, -0.139882, -0.436327,
		0.398142, -0.235534, 0.886570,
		-0.226786, -0.961747, -0.153661,
		31.878090, 40.423462, 48.247887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592438, 40.732609, 48.439976>,  <32.036839, 41.096684, 48.355450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592438, 40.732609, 48.439976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.398045, 40.439964, 48.248737>,  <32.281410, 40.264378, 48.133995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.398045, 40.439964, 48.248737>,  <32.592438, 40.732609, 48.439976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398045, 40.439964, 48.248737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872865, -0.378802, -0.307598,
		0.043939, -0.566798, 0.822685,
		-0.485980, -0.731608, -0.478094,
		32.252251, 40.220482, 48.105309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822853, 40.141319, 48.704372>,  <32.592438, 40.732609, 48.439976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822853, 40.141319, 48.704372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.679359, 40.059444, 48.340084>,  <32.593262, 40.010319, 48.121510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.679359, 40.059444, 48.340084>,  <32.822853, 40.141319, 48.704372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679359, 40.059444, 48.340084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859057, -0.454058, -0.236332,
		-0.365145, -0.867141, 0.338727,
		-0.358735, -0.204691, -0.910720,
		32.571739, 39.998039, 48.066868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965282, 39.470982, 48.568031>,  <32.822853, 40.141319, 48.704372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965282, 39.470982, 48.568031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.903877, 39.607159, 48.196972>,  <32.867035, 39.688866, 47.974335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.903877, 39.607159, 48.196972>,  <32.965282, 39.470982, 48.568031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903877, 39.607159, 48.196972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705108, -0.619957, -0.344203,
		-0.692284, -0.706932, -0.144877,
		-0.153511, 0.340440, -0.927650,
		32.857822, 39.709290, 47.918678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168095, 38.881874, 48.199871>,  <32.965282, 39.470982, 48.568031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168095, 38.881874, 48.199871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.168713, 39.176758, 47.929604>,  <33.169083, 39.353687, 47.767445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.168713, 39.176758, 47.929604>,  <33.168095, 38.881874, 48.199871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168713, 39.176758, 47.929604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628527, -0.526243, -0.572732,
		-0.777786, -0.423788, -0.464169,
		0.001549, 0.737205, -0.675667,
		33.169178, 39.397919, 47.726902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451950, 38.637459, 47.595276>,  <33.168095, 38.881874, 48.199871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451950, 38.637459, 47.595276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.472847, 39.027061, 47.507118>,  <33.485386, 39.260822, 47.454224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.472847, 39.027061, 47.507118>,  <33.451950, 38.637459, 47.595276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472847, 39.027061, 47.507118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740144, -0.185924, -0.646234,
		-0.670416, -0.129367, -0.730621,
		0.052239, 0.974010, -0.220397,
		33.488518, 39.319263, 47.440998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582237, 38.680817, 46.789597>,  <33.451950, 38.637459, 47.595276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582237, 38.680817, 46.789597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.701515, 39.026279, 46.952164>,  <33.773083, 39.233559, 47.049706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.701515, 39.026279, 46.952164>,  <33.582237, 38.680817, 46.789597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701515, 39.026279, 46.952164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718396, 0.077282, -0.691327,
		-0.628479, 0.498120, -0.597403,
		0.298195, 0.863657, 0.406418,
		33.790974, 39.285378, 47.074089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544323, 39.277691, 46.258705>,  <33.582237, 38.680817, 46.789597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544323, 39.277691, 46.258705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.803375, 39.363556, 46.551144>,  <33.958805, 39.415077, 46.726604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.803375, 39.363556, 46.551144>,  <33.544323, 39.277691, 46.258705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803375, 39.363556, 46.551144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715919, 0.157036, -0.680294,
		-0.260844, 0.963980, -0.051982,
		0.647627, 0.214666, 0.731094,
		33.997662, 39.427956, 46.770473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.096855, 41.019489, 54.211178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.708191, 41.108810, 54.242191>,  <28.474993, 41.162403, 54.260799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.708191, 41.108810, 54.242191>,  <29.096855, 41.019489, 54.211178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.708191, 41.108810, 54.242191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061332, 0.078598, -0.995018,
		-0.228286, -0.971575, -0.062674,
		-0.971661, 0.223305, 0.077532,
		28.416693, 41.175800, 54.265450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.606003, 40.601711, 53.910362>,  <29.096855, 41.019489, 54.211178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.606003, 40.601711, 53.910362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.477438, 40.979153, 53.878601>,  <28.400299, 41.205620, 53.859547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.477438, 40.979153, 53.878601>,  <28.606003, 40.601711, 53.910362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.477438, 40.979153, 53.878601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323765, 0.030710, -0.945639,
		-0.889872, -0.329645, -0.315376,
		-0.321410, 0.943605, -0.079400,
		28.381016, 41.262234, 53.854782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291588, 40.748947, 53.337872>,  <28.606003, 40.601711, 53.910362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.291588, 40.748947, 53.337872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.425404, 41.117912, 53.415058>,  <28.505693, 41.339291, 53.461369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.425404, 41.117912, 53.415058>,  <28.291588, 40.748947, 53.337872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.425404, 41.117912, 53.415058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356341, 0.065743, -0.932040,
		-0.872413, 0.380565, -0.306700,
		0.334539, 0.922414, 0.192965,
		28.525764, 41.394638, 53.472946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167757, 41.138977, 52.717712>,  <28.291588, 40.748947, 53.337872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.167757, 41.138977, 52.717712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.451355, 41.326633, 52.928326>,  <28.621513, 41.439228, 53.054695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.451355, 41.326633, 52.928326>,  <28.167757, 41.138977, 52.717712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.451355, 41.326633, 52.928326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588147, 0.018608, -0.808540,
		-0.389115, 0.882929, -0.262729,
		0.708994, 0.469138, 0.526533,
		28.664053, 41.467377, 53.086285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280239, 41.781029, 52.621437>,  <28.167757, 41.138977, 52.717712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.280239, 41.781029, 52.621437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.647400, 41.702469, 52.759357>,  <28.867697, 41.655334, 52.842110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.647400, 41.702469, 52.759357>,  <28.280239, 41.781029, 52.621437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.647400, 41.702469, 52.759357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380355, 0.187820, -0.905568,
		0.113091, 0.962368, 0.247101,
		0.917900, -0.196398, 0.344801,
		28.922770, 41.643551, 52.862797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.637709, 42.105518, 52.166218>,  <28.280239, 41.781029, 52.621437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.637709, 42.105518, 52.166218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.924196, 41.877930, 52.327862>,  <29.096088, 41.741379, 52.424847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.924196, 41.877930, 52.327862>,  <28.637709, 42.105518, 52.166218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.924196, 41.877930, 52.327862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558913, 0.120900, -0.820365,
		0.417906, 0.813424, 0.404595,
		0.716220, -0.568969, 0.404109,
		29.139063, 41.707237, 52.449093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.225382, 42.445724, 51.918266>,  <28.637709, 42.105518, 52.166218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.225382, 42.445724, 51.918266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.310995, 42.067993, 52.018211>,  <29.362364, 41.841354, 52.078178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.310995, 42.067993, 52.018211>,  <29.225382, 42.445724, 51.918266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310995, 42.067993, 52.018211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459794, -0.128291, -0.878710,
		0.861846, 0.302961, 0.406737,
		0.214034, -0.944328, 0.249867,
		29.375206, 41.784695, 52.093170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972935, 42.304901, 51.795425>,  <29.225382, 42.445724, 51.918266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972935, 42.304901, 51.795425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.785347, 41.951633, 51.791901>,  <29.672794, 41.739674, 51.789783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.785347, 41.951633, 51.791901>,  <29.972935, 42.304901, 51.795425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.785347, 41.951633, 51.791901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453280, -0.232105, -0.860619,
		0.758026, -0.407601, 0.509173,
		-0.468971, -0.883170, -0.008816,
		29.644655, 41.686684, 51.789257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478891, 41.897778, 51.447784>,  <29.972935, 42.304901, 51.795425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478891, 41.897778, 51.447784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.150608, 41.669262, 51.444435>,  <29.953638, 41.532154, 51.442425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.150608, 41.669262, 51.444435>,  <30.478891, 41.897778, 51.447784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.150608, 41.669262, 51.444435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366499, -0.515158, -0.774785,
		0.438314, -0.638938, 0.632170,
		-0.820707, -0.571289, -0.008369,
		29.904396, 41.497875, 51.441925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741575, 41.205582, 51.361584>,  <30.478891, 41.897778, 51.447784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.741575, 41.205582, 51.361584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.358791, 41.185467, 51.247250>,  <30.129122, 41.173397, 51.178650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.358791, 41.185467, 51.247250>,  <30.741575, 41.205582, 51.361584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358791, 41.185467, 51.247250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275939, -0.462835, -0.842402,
		-0.089933, -0.885017, 0.456790,
		-0.956959, -0.050286, -0.285835,
		30.071703, 41.170380, 51.161499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675137, 40.542175, 51.026550>,  <30.741575, 41.205582, 51.361584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675137, 40.542175, 51.026550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.386877, 40.787357, 50.896965>,  <30.213923, 40.934467, 50.819214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.386877, 40.787357, 50.896965>,  <30.675137, 40.542175, 51.026550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386877, 40.787357, 50.896965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145334, -0.323333, -0.935058,
		-0.677898, -0.720930, 0.143925,
		-0.720647, 0.612957, -0.323962,
		30.170683, 40.971245, 50.799778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.385542, 40.116730, 50.619221>,  <30.675137, 40.542175, 51.026550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.385542, 40.116730, 50.619221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.260281, 40.482357, 50.516144>,  <30.185123, 40.701733, 50.454296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.260281, 40.482357, 50.516144>,  <30.385542, 40.116730, 50.619221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.260281, 40.482357, 50.516144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030639, -0.261479, -0.964723,
		-0.949208, -0.310001, 0.053876,
		-0.313153, 0.914072, -0.257696,
		30.166334, 40.756580, 50.438835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.833454, 40.013470, 50.204826>,  <30.385542, 40.116730, 50.619221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.833454, 40.013470, 50.204826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.989311, 40.360111, 50.080132>,  <30.082825, 40.568096, 50.005314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.989311, 40.360111, 50.080132>,  <29.833454, 40.013470, 50.204826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989311, 40.360111, 50.080132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100248, -0.376388, -0.921022,
		-0.915494, 0.327617, -0.233532,
		0.389641, 0.866602, -0.311739,
		30.106203, 40.620090, 49.986610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.695854, 40.071747, 49.465702>,  <29.833454, 40.013470, 50.204826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.695854, 40.071747, 49.465702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.943176, 40.384087, 49.501427>,  <30.091570, 40.571491, 49.522861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.943176, 40.384087, 49.501427>,  <29.695854, 40.071747, 49.465702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943176, 40.384087, 49.501427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350925, -0.172610, -0.920357,
		-0.703244, 0.600401, -0.380744,
		0.618304, 0.780848, 0.089309,
		30.128668, 40.618340, 49.528221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340410, 39.691280, 48.941753>,  <29.695854, 40.071747, 49.465702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.340410, 39.691280, 48.941753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.318260, 39.297081, 49.005905>,  <29.304970, 39.060562, 49.044395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.318260, 39.297081, 49.005905>,  <29.340410, 39.691280, 48.941753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318260, 39.297081, 49.005905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688366, 0.154032, 0.708820,
		-0.723247, -0.071147, -0.686915,
		-0.055377, -0.985501, 0.160378,
		29.301647, 39.001431, 49.054020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659840, 39.547100, 48.828510>,  <29.340410, 39.691280, 48.941753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659840, 39.547100, 48.828510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.831339, 39.273563, 49.064659>,  <28.934238, 39.109440, 49.206348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.831339, 39.273563, 49.064659>,  <28.659840, 39.547100, 48.828510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.831339, 39.273563, 49.064659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757854, 0.083465, 0.647064,
		-0.491765, -0.724840, -0.482467,
		0.428748, -0.683843, 0.590368,
		28.959963, 39.068409, 49.241768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.042940, 39.125484, 49.096745>,  <28.659840, 39.547100, 48.828510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.042940, 39.125484, 49.096745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.354269, 39.036186, 49.331478>,  <28.541065, 38.982609, 49.472321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.354269, 39.036186, 49.331478>,  <28.042940, 39.125484, 49.096745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.354269, 39.036186, 49.331478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615493, -0.086650, 0.783364,
		-0.124037, -0.970902, -0.204850,
		0.778320, -0.223249, 0.586836,
		28.587765, 38.969212, 49.507530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.986176, 38.498180, 49.330070>,  <28.042940, 39.125484, 49.096745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.986176, 38.498180, 49.330070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.202381, 38.699932, 49.599426>,  <28.332106, 38.820984, 49.761040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.202381, 38.699932, 49.599426>,  <27.986176, 38.498180, 49.330070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.202381, 38.699932, 49.599426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696874, -0.180045, 0.694226,
		0.471390, -0.844505, 0.254169,
		0.540516, 0.504375, 0.673386,
		28.364536, 38.851246, 49.801441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855156, 38.191856, 49.880516>,  <27.986176, 38.498180, 49.330070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855156, 38.191856, 49.880516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.047028, 38.500492, 50.047638>,  <28.162151, 38.685673, 50.147911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.047028, 38.500492, 50.047638>,  <27.855156, 38.191856, 49.880516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.047028, 38.500492, 50.047638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512465, -0.140152, 0.847194,
		0.712241, -0.620490, 0.328185,
		0.479680, 0.771589, 0.417801,
		28.190931, 38.731968, 50.172977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.906248, 38.067688, 50.564041>,  <27.855156, 38.191856, 49.880516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.906248, 38.067688, 50.564041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.961733, 38.463821, 50.563004>,  <27.995024, 38.701500, 50.562382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.961733, 38.463821, 50.563004>,  <27.906248, 38.067688, 50.564041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.961733, 38.463821, 50.563004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454439, 0.065979, 0.888331,
		0.879911, -0.122045, 0.459196,
		0.138714, 0.990329, -0.002593,
		28.003347, 38.760921, 50.562225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927359, 38.090115, 51.169373>,  <27.906248, 38.067688, 50.564041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.927359, 38.090115, 51.169373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.886326, 38.476498, 51.074383>,  <27.861706, 38.708328, 51.017387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.886326, 38.476498, 51.074383>,  <27.927359, 38.090115, 51.169373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.886326, 38.476498, 51.074383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456732, 0.166342, 0.873914,
		0.883670, 0.198109, 0.424122,
		-0.102581, 0.965962, -0.237474,
		27.855551, 38.766285, 51.003139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220428, 38.520428, 51.699902>,  <27.927359, 38.090115, 51.169373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.220428, 38.520428, 51.699902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.940390, 38.737038, 51.513737>,  <27.772366, 38.867004, 51.402039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.940390, 38.737038, 51.513737>,  <28.220428, 38.520428, 51.699902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.940390, 38.737038, 51.513737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351073, 0.306522, 0.884755,
		0.621780, 0.782809, -0.024479,
		-0.700098, 0.541529, -0.465412,
		27.730360, 38.899498, 51.374111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.347681, 39.200569, 51.924152>,  <28.220428, 38.520428, 51.699902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.347681, 39.200569, 51.924152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.978439, 39.208122, 51.770515>,  <27.756895, 39.212654, 51.678333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.978439, 39.208122, 51.770515>,  <28.347681, 39.200569, 51.924152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.978439, 39.208122, 51.770515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380629, 0.097490, 0.919575,
		0.054807, 0.995057, -0.082806,
		-0.923102, 0.018881, -0.384091,
		27.701509, 39.213787, 51.655289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.004021, 39.719212, 52.232651>,  <28.347681, 39.200569, 51.924152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.004021, 39.719212, 52.232651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.693068, 39.506531, 52.098206>,  <27.506496, 39.378922, 52.017540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.693068, 39.506531, 52.098206>,  <28.004021, 39.719212, 52.232651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.693068, 39.506531, 52.098206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452754, 0.102015, 0.885780,
		-0.436680, 0.840767, -0.320033,
		-0.777383, -0.531699, -0.336113,
		27.459852, 39.347023, 51.997372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.484077, 40.046120, 52.571262>,  <28.004021, 39.719212, 52.232651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.484077, 40.046120, 52.571262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.344231, 39.693256, 52.445053>,  <27.260323, 39.481537, 52.369328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.344231, 39.693256, 52.445053>,  <27.484077, 40.046120, 52.571262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.344231, 39.693256, 52.445053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498080, -0.110234, 0.860096,
		-0.793526, 0.457863, -0.400847,
		-0.349619, -0.882162, -0.315526,
		27.239346, 39.428608, 52.350395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.710091, 40.045128, 52.738071>,  <27.484077, 40.046120, 52.571262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.710091, 40.045128, 52.738071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.846472, 39.670429, 52.706425>,  <26.928301, 39.445610, 52.687435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.846472, 39.670429, 52.706425>,  <26.710091, 40.045128, 52.738071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.846472, 39.670429, 52.706425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446604, -0.235458, 0.863194,
		-0.827221, -0.258977, -0.498634,
		0.340955, -0.936744, -0.079116,
		26.948759, 39.389404, 52.682690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.083738, 39.647549, 52.838402>,  <26.710091, 40.045128, 52.738071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.083738, 39.647549, 52.838402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.409515, 39.423248, 52.898048>,  <26.604982, 39.288666, 52.933838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.409515, 39.423248, 52.898048>,  <26.083738, 39.647549, 52.838402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.409515, 39.423248, 52.898048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284320, -0.161647, 0.945004,
		-0.505809, -0.812051, -0.291086,
		0.814444, -0.560753, 0.149120,
		26.653849, 39.255024, 52.942783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.731134, 38.962784, 53.010319>,  <26.083738, 39.647549, 52.838402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.731134, 38.962784, 53.010319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.112671, 38.987053, 53.127968>,  <26.341593, 39.001614, 53.198559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.112671, 38.987053, 53.127968>,  <25.731134, 38.962784, 53.010319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.112671, 38.987053, 53.127968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288054, -0.092172, 0.953168,
		0.084939, -0.993893, -0.070441,
		0.953840, 0.060671, 0.294124,
		26.398823, 39.005253, 53.216206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.482529, 37.556137, 58.691055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.317863, 37.806156, 58.425774>,  <33.219063, 37.956169, 58.266605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.317863, 37.806156, 58.425774>,  <33.482529, 37.556137, 58.691055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317863, 37.806156, 58.425774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631803, -0.328715, -0.701977,
		-0.656778, -0.707994, -0.259590,
		-0.411664, 0.625053, -0.663206,
		33.194363, 37.993671, 58.226810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281338, 37.240963, 58.111675>,  <33.482529, 37.556137, 58.691055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281338, 37.240963, 58.111675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.315784, 37.606098, 57.952019>,  <33.336452, 37.825180, 57.856224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.315784, 37.606098, 57.952019>,  <33.281338, 37.240963, 58.111675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315784, 37.606098, 57.952019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602520, -0.366776, -0.708834,
		-0.793444, -0.179447, -0.581588,
		0.086115, 0.912839, -0.399136,
		33.341618, 37.879951, 57.832279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164265, 37.102085, 57.484821>,  <33.281338, 37.240963, 58.111675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164265, 37.102085, 57.484821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.388268, 37.432381, 57.511806>,  <33.522667, 37.630558, 57.527996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.388268, 37.432381, 57.511806>,  <33.164265, 37.102085, 57.484821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388268, 37.432381, 57.511806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562575, -0.319225, -0.762630,
		-0.608197, 0.465030, -0.643307,
		0.560006, 0.825738, 0.067462,
		33.556271, 37.680103, 57.532043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319542, 37.237812, 56.827526>,  <33.164265, 37.102085, 57.484821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319542, 37.237812, 56.827526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.557365, 37.495018, 57.020618>,  <33.700058, 37.649342, 57.136475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.557365, 37.495018, 57.020618>,  <33.319542, 37.237812, 56.827526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557365, 37.495018, 57.020618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640629, -0.016024, -0.767683,
		-0.485899, 0.765683, -0.421463,
		0.594556, 0.643018, 0.482733,
		33.735733, 37.687923, 57.165440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566986, 37.709328, 56.316040>,  <33.319542, 37.237812, 56.827526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566986, 37.709328, 56.316040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.822990, 37.700779, 56.623268>,  <33.976593, 37.695652, 56.807606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.822990, 37.700779, 56.623268>,  <33.566986, 37.709328, 56.316040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822990, 37.700779, 56.623268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768329, 0.007735, -0.640009,
		0.007735, 0.999742, 0.021368,
		0.640009, -0.021368, 0.768071,
		34.014992, 37.694370, 56.853691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105373, 38.232533, 56.201111>,  <33.566986, 37.709328, 56.316040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105373, 38.232533, 56.201111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.265625, 37.958717, 56.444717>,  <34.361774, 37.794430, 56.590881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.265625, 37.958717, 56.444717>,  <34.105373, 38.232533, 56.201111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265625, 37.958717, 56.444717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649368, -0.256795, -0.715806,
		0.646390, 0.682249, 0.341638,
		0.400627, -0.684538, 0.609020,
		34.385815, 37.753357, 56.627422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770737, 38.273106, 55.986164>,  <34.105373, 38.232533, 56.201111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770737, 38.273106, 55.986164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.792053, 37.938538, 56.204361>,  <34.804844, 37.737797, 56.335278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.792053, 37.938538, 56.204361>,  <34.770737, 38.273106, 55.986164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792053, 37.938538, 56.204361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572882, -0.421821, -0.702762,
		0.817904, 0.349954, 0.456691,
		0.053292, -0.836421, 0.545491,
		34.808041, 37.687611, 56.368008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514416, 38.029846, 56.080200>,  <34.770737, 38.273106, 55.986164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514416, 38.029846, 56.080200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.279533, 37.708324, 56.118324>,  <35.138603, 37.515411, 56.141201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.279533, 37.708324, 56.118324>,  <35.514416, 38.029846, 56.080200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279533, 37.708324, 56.118324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617701, -0.521096, -0.588986,
		0.523097, -0.286982, 0.802503,
		-0.587209, -0.803804, 0.095315,
		35.103371, 37.467182, 56.146919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935135, 37.444180, 56.080982>,  <35.514416, 38.029846, 56.080200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935135, 37.444180, 56.080982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.585514, 37.255875, 56.032948>,  <35.375740, 37.142891, 56.004128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.585514, 37.255875, 56.032948>,  <35.935135, 37.444180, 56.080982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585514, 37.255875, 56.032948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436758, -0.653115, -0.618614,
		0.212784, -0.593151, 0.776463,
		-0.874051, -0.470758, -0.120091,
		35.323299, 37.114647, 55.996922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945606, 36.701790, 56.111610>,  <35.935135, 37.444180, 56.080982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945606, 36.701790, 56.111610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.608349, 36.752995, 55.902718>,  <35.405994, 36.783718, 55.777382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.608349, 36.752995, 55.902718>,  <35.945606, 36.701790, 56.111610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608349, 36.752995, 55.902718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319867, -0.661286, -0.678518,
		-0.432205, -0.739131, 0.516609,
		-0.843139, 0.128013, -0.522234,
		35.355408, 36.791397, 55.746048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935780, 36.065166, 55.800694>,  <35.945606, 36.701790, 56.111610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935780, 36.065166, 55.800694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.648232, 36.260513, 55.602814>,  <35.475704, 36.377720, 55.484085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.648232, 36.260513, 55.602814>,  <35.935780, 36.065166, 55.800694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648232, 36.260513, 55.602814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232744, -0.501483, -0.833274,
		-0.655029, -0.714150, 0.246834,
		-0.718866, 0.488370, -0.494700,
		35.432571, 36.407024, 55.454403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436954, 35.598160, 55.455826>,  <35.935780, 36.065166, 55.800694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436954, 35.598160, 55.455826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.423687, 35.954727, 55.275036>,  <35.415726, 36.168667, 55.166561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.423687, 35.954727, 55.275036>,  <35.436954, 35.598160, 55.455826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423687, 35.954727, 55.275036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489328, -0.379831, -0.785039,
		-0.871469, -0.247201, -0.423596,
		-0.033168, 0.891414, -0.451974,
		35.413738, 36.222153, 55.139442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248947, 35.432941, 54.754688>,  <35.436954, 35.598160, 55.455826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248947, 35.432941, 54.754688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.391991, 35.804207, 54.713470>,  <35.477818, 36.026966, 54.688740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.391991, 35.804207, 54.713470>,  <35.248947, 35.432941, 54.754688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391991, 35.804207, 54.713470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373764, -0.243376, -0.895025,
		-0.855812, 0.281557, -0.433949,
		0.357613, 0.928167, -0.103048,
		35.499275, 36.082657, 54.682556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009468, 35.706413, 54.026718>,  <35.248947, 35.432941, 54.754688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009468, 35.706413, 54.026718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.336983, 35.886353, 54.169392>,  <35.533493, 35.994316, 54.254997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.336983, 35.886353, 54.169392>,  <35.009468, 35.706413, 54.026718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336983, 35.886353, 54.169392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501063, -0.256700, -0.826463,
		-0.280223, 0.855418, -0.435586,
		0.818786, 0.449850, 0.356686,
		35.582619, 36.021309, 54.276398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334320, 35.728191, 53.592396>,  <35.009468, 35.706413, 54.026718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334320, 35.728191, 53.592396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.239220, 35.342289, 53.547279>,  <34.182159, 35.110748, 53.520210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.239220, 35.342289, 53.547279>,  <34.334320, 35.728191, 53.592396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239220, 35.342289, 53.547279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521941, 0.028956, 0.852490,
		-0.819179, 0.261548, -0.510430,
		-0.237747, -0.964756, -0.112792,
		34.167896, 35.052860, 53.513443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615074, 35.778408, 53.514503>,  <34.334320, 35.728191, 53.592396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615074, 35.778408, 53.514503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.694355, 35.418037, 53.668930>,  <33.741924, 35.201817, 53.761585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.694355, 35.418037, 53.668930>,  <33.615074, 35.778408, 53.514503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694355, 35.418037, 53.668930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560315, 0.219035, 0.798793,
		-0.804216, -0.374643, -0.461389,
		0.198202, -0.900925, 0.386070,
		33.753815, 35.147758, 53.784752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965061, 35.433392, 53.592987>,  <33.615074, 35.778408, 53.514503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965061, 35.433392, 53.592987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.217697, 35.205608, 53.803440>,  <33.369278, 35.068939, 53.929710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.217697, 35.205608, 53.803440>,  <32.965061, 35.433392, 53.592987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217697, 35.205608, 53.803440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645419, -0.010181, 0.763761,
		-0.429572, -0.821958, -0.373969,
		0.631587, -0.569457, 0.526133,
		33.407173, 35.034771, 53.961281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577496, 34.904926, 53.883682>,  <32.965061, 35.433392, 53.592987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577496, 34.904926, 53.883682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.899231, 34.909229, 54.121311>,  <33.092274, 34.911812, 54.263889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.899231, 34.909229, 54.121311>,  <32.577496, 34.904926, 53.883682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899231, 34.909229, 54.121311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590923, -0.089826, 0.801711,
		0.061985, -0.995899, -0.065896,
		0.804343, 0.010755, 0.594068,
		33.140533, 34.912457, 54.299530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574738, 34.284519, 54.362968>,  <32.577496, 34.904926, 53.883682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574738, 34.284519, 54.362968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.797302, 34.569424, 54.534122>,  <32.930843, 34.740368, 54.636814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.797302, 34.569424, 54.534122>,  <32.574738, 34.284519, 54.362968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797302, 34.569424, 54.534122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553138, -0.066751, 0.830411,
		0.620033, -0.698731, 0.356838,
		0.556415, 0.712263, 0.427883,
		32.964226, 34.783104, 54.662487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579952, 34.154091, 55.093987>,  <32.574738, 34.284519, 54.362968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579952, 34.154091, 55.093987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.688183, 34.539085, 55.085926>,  <32.753120, 34.770084, 55.081089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.688183, 34.539085, 55.085926>,  <32.579952, 34.154091, 55.093987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688183, 34.539085, 55.085926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553939, 0.172778, 0.814432,
		0.787363, -0.209200, 0.579909,
		0.270574, 0.962488, -0.020155,
		32.769356, 34.827831, 55.079880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708965, 34.322128, 55.742783>,  <32.579952, 34.154091, 55.093987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708965, 34.322128, 55.742783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.650219, 34.681564, 55.577393>,  <32.614971, 34.897228, 55.478157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.650219, 34.681564, 55.577393>,  <32.708965, 34.322128, 55.742783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650219, 34.681564, 55.577393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607523, 0.247935, 0.754615,
		0.780607, 0.362021, 0.509504,
		-0.146862, 0.898593, -0.413476,
		32.606159, 34.951141, 55.453350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923847, 34.881977, 56.154007>,  <32.708965, 34.322128, 55.742783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923847, 34.881977, 56.154007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.646702, 35.053440, 55.922077>,  <32.480415, 35.156319, 55.782921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.646702, 35.053440, 55.922077>,  <32.923847, 34.881977, 56.154007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646702, 35.053440, 55.922077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541968, 0.220813, 0.810871,
		0.475617, 0.876069, 0.079324,
		-0.692863, 0.428655, -0.579824,
		32.438843, 35.182037, 55.748131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792160, 35.458759, 56.512955>,  <32.923847, 34.881977, 56.154007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792160, 35.458759, 56.512955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.476116, 35.439827, 56.268501>,  <32.286488, 35.428467, 56.121830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.476116, 35.439827, 56.268501>,  <32.792160, 35.458759, 56.512955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476116, 35.439827, 56.268501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610965, 0.141236, 0.778957,
		0.049448, 0.988844, -0.140507,
		-0.790111, -0.047327, -0.611134,
		32.239082, 35.425629, 56.085163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392227, 36.050716, 56.679592>,  <32.792160, 35.458759, 56.512955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392227, 36.050716, 56.679592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.133949, 35.851429, 56.448124>,  <31.978983, 35.731857, 56.309242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.133949, 35.851429, 56.448124>,  <32.392227, 36.050716, 56.679592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133949, 35.851429, 56.448124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759993, 0.345769, 0.550322,
		-0.074095, 0.795124, -0.601903,
		-0.645693, -0.498218, -0.578670,
		31.940241, 35.701965, 56.274525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906002, 36.473007, 56.229698>,  <32.392227, 36.050716, 56.679592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906002, 36.473007, 56.229698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.721693, 36.129780, 56.320393>,  <31.611107, 35.923843, 56.374809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.721693, 36.129780, 56.320393>,  <31.906002, 36.473007, 56.229698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721693, 36.129780, 56.320393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651646, 0.500529, 0.569936,
		-0.602533, 0.114857, -0.789786,
		-0.460772, -0.858067, 0.226739,
		31.583462, 35.872360, 56.388416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.141367, 36.605099, 56.066017>,  <31.906002, 36.473007, 56.229698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.141367, 36.605099, 56.066017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.170727, 36.301815, 56.325161>,  <31.188343, 36.119843, 56.480648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.170727, 36.301815, 56.325161>,  <31.141367, 36.605099, 56.066017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.170727, 36.301815, 56.325161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857985, 0.283150, 0.428588,
		-0.508403, -0.587315, -0.629752,
		0.073402, -0.758214, 0.647862,
		31.192747, 36.074352, 56.519520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.431904, 36.411045, 56.256439>,  <31.141367, 36.605099, 56.066017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.431904, 36.411045, 56.256439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.634892, 36.224213, 56.546078>,  <30.756683, 36.112114, 56.719860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.634892, 36.224213, 56.546078>,  <30.431904, 36.411045, 56.256439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.634892, 36.224213, 56.546078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698433, 0.269180, 0.663123,
		-0.504646, -0.842244, -0.189627,
		0.507468, -0.467084, 0.724092,
		30.787132, 36.084087, 56.763306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908680, 36.033394, 56.626316>,  <30.431904, 36.411045, 56.256439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.908680, 36.033394, 56.626316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.222097, 36.105465, 56.864170>,  <30.410149, 36.148708, 57.006882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.222097, 36.105465, 56.864170>,  <29.908680, 36.033394, 56.626316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222097, 36.105465, 56.864170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620589, 0.180007, 0.763195,
		0.030469, -0.967023, 0.252858,
		0.783544, 0.180175, 0.594639,
		30.457161, 36.159519, 57.042561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.393089, 35.529079, 56.616913>,  <29.908680, 36.033394, 56.626316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.393089, 35.529079, 56.616913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.009317, 35.424782, 56.659824>,  <28.779055, 35.362202, 56.685570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.009317, 35.424782, 56.659824>,  <29.393089, 35.529079, 56.616913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009317, 35.424782, 56.659824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044276, -0.515102, -0.855985,
		0.278452, -0.816507, 0.505748,
		-0.959429, -0.260743, 0.107279,
		28.721489, 35.346558, 56.692009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374073, 34.837776, 56.488815>,  <29.393089, 35.529079, 56.616913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374073, 34.837776, 56.488815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.003576, 34.975662, 56.427822>,  <28.781279, 35.058395, 56.391228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.003576, 34.975662, 56.427822>,  <29.374073, 34.837776, 56.488815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003576, 34.975662, 56.427822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007394, -0.421063, -0.907001,
		-0.376862, -0.838973, 0.392554,
		-0.926240, 0.344717, -0.152480,
		28.725704, 35.079079, 56.382080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.015791, 34.255489, 56.259708>,  <29.374073, 34.837776, 56.488815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.015791, 34.255489, 56.259708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.798037, 34.562820, 56.125053>,  <28.667383, 34.747219, 56.044262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.798037, 34.562820, 56.125053>,  <29.015791, 34.255489, 56.259708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.798037, 34.562820, 56.125053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066258, -0.360670, -0.930337,
		-0.836214, -0.528767, 0.145436,
		-0.544386, 0.768324, -0.336633,
		28.634720, 34.793316, 56.024063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.563648, 33.849319, 55.814644>,  <29.015791, 34.255489, 56.259708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.563648, 33.849319, 55.814644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.582804, 34.228676, 55.689255>,  <28.594297, 34.456287, 55.614021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.582804, 34.228676, 55.689255>,  <28.563648, 33.849319, 55.814644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.582804, 34.228676, 55.689255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210698, -0.316366, -0.924942,
		-0.976377, -0.021756, -0.214973,
		0.047887, 0.948387, -0.313477,
		28.597170, 34.513191, 55.595211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.158754, 33.925426, 55.283112>,  <28.563648, 33.849319, 55.814644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.158754, 33.925426, 55.283112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.396284, 34.243584, 55.234581>,  <28.538801, 34.434479, 55.205463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.396284, 34.243584, 55.234581>,  <28.158754, 33.925426, 55.283112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.396284, 34.243584, 55.234581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272451, -0.340668, -0.899842,
		-0.757064, 0.501290, -0.419002,
		0.593823, 0.795395, -0.121330,
		28.574430, 34.482201, 55.198181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.945391, 34.262417, 54.601238>,  <28.158754, 33.925426, 55.283112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.945391, 34.262417, 54.601238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.312832, 34.396828, 54.684433>,  <28.533297, 34.477474, 54.734348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.312832, 34.396828, 54.684433>,  <27.945391, 34.262417, 54.601238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.312832, 34.396828, 54.684433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294567, -0.231376, -0.927197,
		-0.263442, 0.912989, -0.311526,
		0.918601, 0.336028, 0.207983,
		28.588411, 34.497635, 54.746826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.163561, 34.461426, 53.946831>,  <27.945391, 34.262417, 54.601238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.163561, 34.461426, 53.946831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.509932, 34.491749, 54.144588>,  <28.717754, 34.509945, 54.263241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.509932, 34.491749, 54.144588>,  <28.163561, 34.461426, 53.946831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.509932, 34.491749, 54.144588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499352, -0.187570, -0.845852,
		0.028608, 0.979321, -0.200279,
		0.865927, 0.075812, 0.494392,
		28.769711, 34.514492, 54.292908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673367, 34.794800, 53.482708>,  <28.163561, 34.461426, 53.946831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673367, 34.794800, 53.482708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.893591, 34.610992, 53.761482>,  <29.025724, 34.500706, 53.928749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.893591, 34.610992, 53.761482>,  <28.673367, 34.794800, 53.482708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.893591, 34.610992, 53.761482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680890, -0.235832, -0.693377,
		0.482982, 0.856284, 0.183045,
		0.550560, -0.459522, 0.696938,
		29.058760, 34.473137, 53.970562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324028, 35.042706, 53.496338>,  <28.673367, 34.794800, 53.482708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324028, 35.042706, 53.496338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.372549, 34.687584, 53.673920>,  <29.401661, 34.474510, 53.780468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.372549, 34.687584, 53.673920>,  <29.324028, 35.042706, 53.496338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.372549, 34.687584, 53.673920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742851, -0.215461, -0.633837,
		0.658376, 0.406677, 0.633368,
		0.121301, -0.887801, 0.443955,
		29.408939, 34.421246, 53.807106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.037294, 34.994259, 53.525539>,  <29.324028, 35.042706, 53.496338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.037294, 34.994259, 53.525539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.895779, 34.624649, 53.583515>,  <29.810869, 34.402882, 53.618301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.895779, 34.624649, 53.583515>,  <30.037294, 34.994259, 53.525539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895779, 34.624649, 53.583515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742680, -0.371724, -0.556999,
		0.568560, -0.089417, 0.817768,
		-0.353789, -0.924027, 0.144939,
		29.789642, 34.347443, 53.626995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574148, 34.533443, 53.690907>,  <30.037294, 34.994259, 53.525539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574148, 34.533443, 53.690907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.288637, 34.280285, 53.570927>,  <30.117331, 34.128391, 53.498940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.288637, 34.280285, 53.570927>,  <30.574148, 34.533443, 53.690907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288637, 34.280285, 53.570927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659879, -0.464197, -0.590831,
		0.234698, -0.619650, 0.748966,
		-0.713776, -0.632894, -0.299948,
		30.074505, 34.090416, 53.480942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780668, 33.744186, 53.729618>,  <30.574148, 34.533443, 53.690907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780668, 33.744186, 53.729618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.501993, 33.792385, 53.446743>,  <30.334789, 33.821304, 53.277020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.501993, 33.792385, 53.446743>,  <30.780668, 33.744186, 53.729618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501993, 33.792385, 53.446743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537255, -0.565615, -0.625649,
		-0.475381, -0.815819, 0.329321,
		-0.696685, 0.120493, -0.707185,
		30.292988, 33.828533, 53.234589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662327, 33.017124, 53.361443>,  <30.780668, 33.744186, 53.729618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662327, 33.017124, 53.361443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.544907, 33.303162, 53.107681>,  <30.474455, 33.474785, 52.955425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.544907, 33.303162, 53.107681>,  <30.662327, 33.017124, 53.361443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.544907, 33.303162, 53.107681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479768, -0.463803, -0.744788,
		-0.826831, -0.523002, -0.206927,
		-0.293552, 0.715091, -0.634407,
		30.456841, 33.517689, 52.917358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716007, 32.697128, 52.701714>,  <30.662327, 33.017124, 53.361443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716007, 32.697128, 52.701714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.670906, 33.082863, 52.605930>,  <30.643845, 33.314304, 52.548462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.670906, 33.082863, 52.605930>,  <30.716007, 32.697128, 52.701714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670906, 33.082863, 52.605930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533348, -0.144593, -0.833447,
		-0.838347, -0.221688, -0.498024,
		-0.112754, 0.964338, -0.239456,
		30.637079, 33.372166, 52.534092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<25.751324, 38.472534, 53.637772> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.095663, 38.675163, 53.657047>,  <26.302267, 38.796741, 53.668613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.095663, 38.675163, 53.657047>,  <25.751324, 38.472534, 53.637772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.095663, 38.675163, 53.657047> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114972, 0.101377, 0.988182,
		0.495701, -0.856216, 0.145512,
		0.860849, 0.506573, 0.048188,
		26.353918, 38.827137, 53.671505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.116615, 38.178886, 54.110355>,  <25.751324, 38.472534, 53.637772>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.116615, 38.178886, 54.110355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.224480, 38.563992, 54.102684>,  <26.289198, 38.795055, 54.098080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.224480, 38.563992, 54.102684>,  <26.116615, 38.178886, 54.110355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.224480, 38.563992, 54.102684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139937, 0.058887, 0.988408,
		0.952733, -0.263853, 0.150606,
		0.269663, 0.962764, -0.019181,
		26.305378, 38.852821, 54.096931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.400677, 38.245892, 54.744869>,  <26.116615, 38.178886, 54.110355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.400677, 38.245892, 54.744869> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.347136, 38.620991, 54.616676>,  <26.315010, 38.846050, 54.539761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.347136, 38.620991, 54.616676>,  <26.400677, 38.245892, 54.744869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.347136, 38.620991, 54.616676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220459, 0.287108, 0.932184,
		0.966168, 0.195430, 0.168305,
		-0.133854, 0.937750, -0.320479,
		26.306980, 38.902317, 54.520531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.905163, 38.591404, 55.110916>,  <26.400677, 38.245892, 54.744869>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.905163, 38.591404, 55.110916> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.628771, 38.851665, 54.984932>,  <26.462936, 39.007820, 54.909340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.628771, 38.851665, 54.984932>,  <26.905163, 38.591404, 55.110916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.628771, 38.851665, 54.984932> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154906, 0.292308, 0.943695,
		0.706083, 0.700863, -0.101189,
		-0.690979, 0.650652, -0.314961,
		26.421476, 39.046860, 54.890442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952358, 39.154285, 55.527637>,  <26.905163, 38.591404, 55.110916>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.952358, 39.154285, 55.527637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.583241, 39.225605, 55.391014>,  <26.361771, 39.268398, 55.309040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.583241, 39.225605, 55.391014>,  <26.952358, 39.154285, 55.527637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.583241, 39.225605, 55.391014> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300615, 0.221308, 0.927714,
		0.241000, 0.958766, -0.150623,
		-0.922795, 0.178299, -0.341555,
		26.306402, 39.279095, 55.288548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.687376, 39.643734, 55.982742>,  <26.952358, 39.154285, 55.527637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.687376, 39.643734, 55.982742> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.340372, 39.518089, 55.828461>,  <26.132170, 39.442703, 55.735893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.340372, 39.518089, 55.828461>,  <26.687376, 39.643734, 55.982742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.340372, 39.518089, 55.828461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439391, 0.120438, 0.890185,
		-0.233164, 0.941716, -0.242498,
		-0.867508, -0.314111, -0.385700,
		26.080120, 39.423855, 55.712749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.115114, 39.986988, 56.212589>,  <26.687376, 39.643734, 55.982742>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.115114, 39.986988, 56.212589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.948874, 39.634983, 56.120632>,  <25.849129, 39.423779, 56.065456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.948874, 39.634983, 56.120632>,  <26.115114, 39.986988, 56.212589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.948874, 39.634983, 56.120632> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511929, 0.017403, 0.858851,
		-0.751801, 0.474628, -0.457738,
		-0.415601, -0.880015, -0.229893,
		25.824194, 39.370979, 56.051666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.429388, 40.094055, 56.239281>,  <26.115114, 39.986988, 56.212589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.429388, 40.094055, 56.239281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.447672, 39.701683, 56.314846>,  <25.458643, 39.466259, 56.360188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.447672, 39.701683, 56.314846>,  <25.429388, 40.094055, 56.239281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.447672, 39.701683, 56.314846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690576, 0.105618, 0.715506,
		-0.721814, -0.163167, -0.672578,
		0.045710, -0.980929, 0.188915,
		25.461386, 39.407406, 56.371521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.852711, 39.865185, 56.534092>,  <25.429388, 40.094055, 56.239281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.852711, 39.865185, 56.534092> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.051432, 39.532341, 56.632710>,  <25.170664, 39.332634, 56.691879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.051432, 39.532341, 56.632710>,  <24.852711, 39.865185, 56.534092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.051432, 39.532341, 56.632710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573008, -0.101145, 0.813284,
		-0.651805, -0.545310, -0.527055,
		0.496801, -0.832109, 0.246540,
		25.200472, 39.282707, 56.706673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.386408, 39.237965, 56.593060>,  <24.852711, 39.865185, 56.534092>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.386408, 39.237965, 56.593060> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.716602, 39.170811, 56.808613>,  <24.914719, 39.130520, 56.937943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.716602, 39.170811, 56.808613>,  <24.386408, 39.237965, 56.593060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.716602, 39.170811, 56.808613> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564353, -0.230132, 0.792809,
		-0.009088, -0.958569, -0.284717,
		0.825484, -0.167885, 0.538879,
		24.964247, 39.120445, 56.970276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.251549, 38.780903, 57.203896>,  <24.386408, 39.237965, 56.593060>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.251549, 38.780903, 57.203896> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.612232, 38.911545, 57.317211>,  <24.828642, 38.989929, 57.385201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.612232, 38.911545, 57.317211>,  <24.251549, 38.780903, 57.203896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.612232, 38.911545, 57.317211> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359195, 0.201243, 0.911307,
		0.240639, -0.923484, 0.298780,
		0.901705, 0.326616, 0.283284,
		24.882744, 39.009525, 57.402199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.404259, 38.308483, 57.866913>,  <24.251549, 38.780903, 57.203896>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.404259, 38.308483, 57.866913> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.665573, 38.609844, 57.896839>,  <24.822361, 38.790661, 57.914795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.665573, 38.609844, 57.896839>,  <24.404259, 38.308483, 57.866913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.665573, 38.609844, 57.896839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481001, 0.336695, 0.809490,
		0.584685, -0.564815, 0.582347,
		0.653286, 0.753406, 0.074816,
		24.861559, 38.835865, 57.919285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.807493, 38.228867, 58.475296>,  <24.404259, 38.308483, 57.866913>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.807493, 38.228867, 58.475296> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.547205, 38.361076, 58.748737>,  <24.391031, 38.440403, 58.912804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.547205, 38.361076, 58.748737>,  <24.807493, 38.228867, 58.475296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.547205, 38.361076, 58.748737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355962, -0.928020, 0.109865,
		0.670712, -0.171846, 0.721536,
		-0.650720, 0.330528, 0.683605,
		24.351990, 38.460236, 58.953819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.798609, 37.929878, 59.254852>,  <24.807493, 38.228867, 58.475296>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.798609, 37.929878, 59.254852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.452967, 38.057693, 59.099308>,  <24.245581, 38.134384, 59.005981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.452967, 38.057693, 59.099308>,  <24.798609, 37.929878, 59.254852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.452967, 38.057693, 59.099308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402059, -0.903009, 0.151406,
		-0.302767, 0.287177, 0.908769,
		-0.864107, 0.319538, -0.388863,
		24.193735, 38.153557, 58.982651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.956076, 37.782547, 60.082516>,  <24.798609, 37.929878, 59.254852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.956076, 37.782547, 60.082516> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.200289, 37.639648, 60.365253>,  <25.346817, 37.553909, 60.534897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.200289, 37.639648, 60.365253>,  <24.956076, 37.782547, 60.082516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.200289, 37.639648, 60.365253> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707067, -0.156217, -0.689676,
		0.356803, 0.920855, 0.157220,
		0.610531, -0.357243, 0.706845,
		25.383448, 37.532475, 60.577309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.673975, 38.006268, 59.847355>,  <24.956076, 37.782547, 60.082516>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.673975, 38.006268, 59.847355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.763161, 37.727928, 60.120438>,  <25.816671, 37.560925, 60.284286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.763161, 37.727928, 60.120438>,  <25.673975, 38.006268, 59.847355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.763161, 37.727928, 60.120438> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830129, -0.231617, -0.507187,
		0.511050, 0.679816, 0.526001,
		0.222963, -0.695847, 0.682704,
		25.830050, 37.519173, 60.325249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.339977, 38.086433, 59.916611>,  <25.673975, 38.006268, 59.847355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.339977, 38.086433, 59.916611> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.262251, 37.715836, 60.045513>,  <26.215616, 37.493477, 60.122852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.262251, 37.715836, 60.045513>,  <26.339977, 38.086433, 59.916611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.262251, 37.715836, 60.045513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746341, -0.352823, -0.564350,
		0.636566, 0.130850, 0.760040,
		-0.194314, -0.926496, 0.322254,
		26.203957, 37.437885, 60.142189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.941841, 37.817886, 60.274494>,  <26.339977, 38.086433, 59.916611>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.941841, 37.817886, 60.274494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.735167, 37.492374, 60.168056>,  <26.611162, 37.297070, 60.104195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.735167, 37.492374, 60.168056>,  <26.941841, 37.817886, 60.274494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.735167, 37.492374, 60.168056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824256, -0.388715, -0.411708,
		0.231602, -0.432054, 0.871602,
		-0.516685, -0.813775, -0.266095,
		26.580162, 37.248241, 60.088226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422686, 37.244160, 60.442734>,  <26.941841, 37.817886, 60.274494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.422686, 37.244160, 60.442734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.161360, 37.103271, 60.174667>,  <27.004564, 37.018738, 60.013828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.161360, 37.103271, 60.174667>,  <27.422686, 37.244160, 60.442734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.161360, 37.103271, 60.174667> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720266, -0.561853, -0.406863,
		-0.233231, -0.748508, 0.620757,
		-0.653315, -0.352217, -0.670167,
		26.965366, 36.997608, 59.973618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.640518, 36.537674, 60.409321>,  <27.422686, 37.244160, 60.442734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.640518, 36.537674, 60.409321> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.403791, 36.621048, 60.097858>,  <27.261755, 36.671074, 59.910980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.403791, 36.621048, 60.097858>,  <27.640518, 36.537674, 60.409321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403791, 36.621048, 60.097858> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527001, -0.630893, -0.569425,
		-0.609935, -0.747349, 0.263531,
		-0.591819, 0.208431, -0.778658,
		27.226248, 36.683578, 59.864262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.508717, 35.904781, 60.126759>,  <27.640518, 36.537674, 60.409321>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.508717, 35.904781, 60.126759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.477201, 36.179115, 59.837368>,  <27.458292, 36.343716, 59.663734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.477201, 36.179115, 59.837368>,  <27.508717, 35.904781, 60.126759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.477201, 36.179115, 59.837368> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518485, -0.591658, -0.617344,
		-0.851449, -0.423751, -0.308982,
		-0.078788, 0.685839, -0.723476,
		27.453566, 36.384869, 59.620327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.394636, 35.448162, 59.548431>,  <27.508717, 35.904781, 60.126759>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.394636, 35.448162, 59.548431> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.474882, 35.800014, 59.375919>,  <27.523029, 36.011127, 59.272411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.474882, 35.800014, 59.375919>,  <27.394636, 35.448162, 59.548431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.474882, 35.800014, 59.375919> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400512, -0.475402, -0.783316,
		-0.894061, -0.015589, -0.447675,
		0.200614, 0.879630, -0.431282,
		27.535067, 36.063904, 59.246536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.105469, 35.404236, 58.975052>,  <27.394636, 35.448162, 59.548431>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.105469, 35.404236, 58.975052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.380545, 35.689629, 58.921337>,  <27.545589, 35.860863, 58.889111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.380545, 35.689629, 58.921337>,  <27.105469, 35.404236, 58.975052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.380545, 35.689629, 58.921337> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274182, -0.426498, -0.861930,
		-0.672240, 0.555922, -0.488922,
		0.687690, 0.713477, -0.134285,
		27.586851, 35.903671, 58.881050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.972874, 35.592804, 58.242455>,  <27.105469, 35.404236, 58.975052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.972874, 35.592804, 58.242455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.337830, 35.729607, 58.332413>,  <27.556803, 35.811687, 58.386387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.337830, 35.729607, 58.332413>,  <26.972874, 35.592804, 58.242455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337830, 35.729607, 58.332413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288531, -0.147644, -0.946019,
		-0.290341, 0.928026, -0.233389,
		0.912388, 0.342008, 0.224897,
		27.611546, 35.832211, 58.399883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.159760, 36.117741, 57.756222>,  <26.972874, 35.592804, 58.242455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.159760, 36.117741, 57.756222> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.497234, 35.984234, 57.924412>,  <27.699718, 35.904129, 58.025326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.497234, 35.984234, 57.924412>,  <27.159760, 36.117741, 57.756222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.497234, 35.984234, 57.924412> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383144, -0.174252, -0.907103,
		0.376025, 0.926412, -0.019135,
		0.843686, -0.333763, 0.420472,
		27.750340, 35.884106, 58.050552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682669, 36.447620, 57.421108>,  <27.159760, 36.117741, 57.756222>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682669, 36.447620, 57.421108> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.875124, 36.126755, 57.562550>,  <27.990597, 35.934235, 57.647415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.875124, 36.126755, 57.562550>,  <27.682669, 36.447620, 57.421108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.875124, 36.126755, 57.562550> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420293, -0.142898, -0.896066,
		0.769323, 0.579748, 0.268392,
		0.481140, -0.802167, 0.353599,
		28.019466, 35.886105, 57.668629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.425421, 36.500477, 57.221161>,  <27.682669, 36.447620, 57.421108>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.425421, 36.500477, 57.221161> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.368677, 36.115425, 57.313442>,  <28.334631, 35.884396, 57.368809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.368677, 36.115425, 57.313442>,  <28.425421, 36.500477, 57.221161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368677, 36.115425, 57.313442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319182, -0.265090, -0.909863,
		0.937016, -0.055435, 0.344859,
		-0.141857, -0.962629, 0.230700,
		28.326120, 35.826637, 57.382652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.070024, 36.171669, 57.027367>,  <28.425421, 36.500477, 57.221161>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.070024, 36.171669, 57.027367> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.782120, 35.894005, 57.030846>,  <28.609377, 35.727406, 57.032932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.782120, 35.894005, 57.030846>,  <29.070024, 36.171669, 57.027367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782120, 35.894005, 57.030846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318438, -0.341264, -0.884385,
		0.616878, -0.633777, 0.466678,
		-0.719763, -0.694165, 0.008700,
		28.566191, 35.685757, 57.033455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694109, 35.926903, 57.379215>,  <29.070024, 36.171669, 57.027367>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.694109, 35.926903, 57.379215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.036373, 36.111477, 57.472954>,  <30.241732, 36.222221, 57.529198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.036373, 36.111477, 57.472954>,  <29.694109, 35.926903, 57.379215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.036373, 36.111477, 57.472954> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395603, 0.291213, 0.871030,
		0.333685, -0.838013, 0.431727,
		0.855659, 0.461442, 0.234348,
		30.293072, 36.249908, 57.543259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831984, 35.846756, 58.048615>,  <29.694109, 35.926903, 57.379215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831984, 35.846756, 58.048615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.046818, 36.177162, 57.980228>,  <30.175718, 36.375408, 57.939198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.046818, 36.177162, 57.980228>,  <29.831984, 35.846756, 58.048615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.046818, 36.177162, 57.980228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046871, 0.231595, 0.971682,
		0.842224, -0.513864, 0.163103,
		0.537087, 0.826019, -0.170970,
		30.207943, 36.424969, 57.928936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330830, 35.864460, 58.516209>,  <29.831984, 35.846756, 58.048615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.330830, 35.864460, 58.516209> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.315001, 36.247791, 58.403042>,  <30.305504, 36.477791, 58.335140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.315001, 36.247791, 58.403042>,  <30.330830, 35.864460, 58.516209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315001, 36.247791, 58.403042> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030118, 0.281867, 0.958981,
		0.998763, 0.046469, 0.017709,
		-0.039571, 0.958328, -0.282917,
		30.303129, 36.535290, 58.318165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597750, 36.161213, 59.074619>,  <30.330830, 35.864460, 58.516209>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.597750, 36.161213, 59.074619> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.435972, 36.477020, 58.889973>,  <30.338905, 36.666504, 58.779186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.435972, 36.477020, 58.889973>,  <30.597750, 36.161213, 59.074619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435972, 36.477020, 58.889973> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041532, 0.488365, 0.871650,
		0.913619, 0.371705, -0.164726,
		-0.404444, 0.789515, -0.461618,
		30.314638, 36.713875, 58.751488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923132, 36.660206, 59.319118>,  <30.597750, 36.161213, 59.074619>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923132, 36.660206, 59.319118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.579885, 36.828419, 59.201279>,  <30.373938, 36.929348, 59.130573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.579885, 36.828419, 59.201279>,  <30.923132, 36.660206, 59.319118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579885, 36.828419, 59.201279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101816, 0.423005, 0.900389,
		0.503262, 0.802632, -0.320170,
		-0.858115, 0.420533, -0.294603,
		30.322451, 36.954578, 59.112896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.912998, 37.199303, 59.646584>,  <30.923132, 36.660206, 59.319118>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.912998, 37.199303, 59.646584> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.525883, 37.193249, 59.546059>,  <30.293613, 37.189617, 59.485744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.525883, 37.193249, 59.546059>,  <30.912998, 37.199303, 59.646584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525883, 37.193249, 59.546059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248669, 0.213504, 0.944764,
		0.039353, 0.976825, -0.210391,
		-0.967789, -0.015138, -0.251308,
		30.235546, 37.188705, 59.470665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627981, 37.746868, 60.000717>,  <30.912998, 37.199303, 59.646584>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627981, 37.746868, 60.000717> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.294640, 37.543495, 59.913986>,  <30.094635, 37.421471, 59.861950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.294640, 37.543495, 59.913986>,  <30.627981, 37.746868, 60.000717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294640, 37.543495, 59.913986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360704, 0.203004, 0.910320,
		-0.418823, 0.836828, -0.352570,
		-0.833354, -0.508436, -0.216825,
		30.044634, 37.390965, 59.848938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.535210, 38.567242, 59.824970>,  <30.627981, 37.746868, 60.000717>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.535210, 38.567242, 59.824970> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.793112, 38.872684, 59.838795>,  <30.947853, 39.055950, 59.847088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.793112, 38.872684, 59.838795>,  <30.535210, 38.567242, 59.824970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793112, 38.872684, 59.838795> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412571, -0.309582, -0.856705,
		-0.643485, 0.566626, -0.514647,
		0.644757, 0.763605, 0.034562,
		30.986540, 39.101765, 59.849163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564293, 38.932396, 59.099613>,  <30.535210, 38.567242, 59.824970>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564293, 38.932396, 59.099613> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.905415, 38.987293, 59.301163>,  <31.110088, 39.020229, 59.422092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.905415, 38.987293, 59.301163>,  <30.564293, 38.932396, 59.099613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905415, 38.987293, 59.301163> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509866, -0.010083, -0.860195,
		-0.112973, 0.990486, -0.078573,
		0.852804, 0.137241, 0.503876,
		31.161255, 39.028465, 59.452324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033356, 39.372578, 58.706062>,  <30.564293, 38.932396, 59.099613>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033356, 39.372578, 58.706062> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.296782, 39.211369, 58.960262>,  <31.454836, 39.114643, 59.112782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.296782, 39.211369, 58.960262>,  <31.033356, 39.372578, 58.706062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296782, 39.211369, 58.960262> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634584, -0.156478, -0.756847,
		0.404471, 0.901712, 0.152704,
		0.658563, -0.403026, 0.635503,
		31.494350, 39.090462, 59.150913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676605, 39.528168, 58.470676>,  <31.033356, 39.372578, 58.706062>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676605, 39.528168, 58.470676> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.795767, 39.258156, 58.740665>,  <31.867264, 39.096149, 58.902660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.795767, 39.258156, 58.740665>,  <31.676605, 39.528168, 58.470676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795767, 39.258156, 58.740665> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776740, -0.239619, -0.582458,
		0.554913, 0.697794, 0.452940,
		0.297903, -0.675030, 0.674973,
		31.885138, 39.055645, 58.943157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456142, 39.669483, 58.535774>,  <31.676605, 39.528168, 58.470676>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456142, 39.669483, 58.535774> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.363010, 39.302349, 58.664379>,  <32.307133, 39.082069, 58.741543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.363010, 39.302349, 58.664379>,  <32.456142, 39.669483, 58.535774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363010, 39.302349, 58.664379> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815614, -0.364347, -0.449473,
		0.529683, 0.157577, 0.833430,
		-0.232831, -0.917835, 0.321510,
		32.293159, 39.027000, 58.760834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060547, 39.301807, 58.894234>,  <32.456142, 39.669483, 58.535774>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060547, 39.301807, 58.894234> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.840309, 39.013645, 58.725540>,  <32.708168, 38.840748, 58.624325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.840309, 39.013645, 58.725540>,  <33.060547, 39.301807, 58.894234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840309, 39.013645, 58.725540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758906, -0.221539, -0.612359,
		0.347719, -0.657215, 0.668700,
		-0.550594, -0.720409, -0.421731,
		32.675133, 38.797523, 58.599022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482395, 38.661156, 58.702915>,  <33.060547, 39.301807, 58.894234>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482395, 38.661156, 58.702915> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.181065, 38.760475, 58.459328>,  <33.000267, 38.820068, 58.313175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.181065, 38.760475, 58.459328>,  <33.482395, 38.661156, 58.702915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181065, 38.760475, 58.459328> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616477, -0.055859, -0.785389,
		-0.229032, -0.967070, -0.110993,
		-0.753326, 0.248304, -0.608970,
		32.955067, 38.834965, 58.276638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<26.709862, 41.738678, 58.991249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.576475, 41.460583, 58.736553>,  <26.496443, 41.293724, 58.583736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.576475, 41.460583, 58.736553>,  <26.709862, 41.738678, 58.991249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.576475, 41.460583, 58.736553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589646, 0.373184, -0.716276,
		0.735606, -0.614307, 0.285501,
		-0.333469, -0.695241, -0.636740,
		26.476435, 41.252010, 58.545532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304731, 41.418491, 58.664627>,  <26.709862, 41.738678, 58.991249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.304731, 41.418491, 58.664627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.010080, 41.375080, 58.397614>,  <26.833290, 41.349033, 58.237404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.010080, 41.375080, 58.397614>,  <27.304731, 41.418491, 58.664627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.010080, 41.375080, 58.397614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619744, 0.286809, -0.730519,
		0.270732, -0.951821, -0.144016,
		-0.736629, -0.108522, -0.667534,
		26.789091, 41.342522, 58.197353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.601578, 41.049831, 58.142303>,  <27.304731, 41.418491, 58.664627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.601578, 41.049831, 58.142303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.269520, 41.188961, 57.968002>,  <27.070286, 41.272438, 57.863422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.269520, 41.188961, 57.968002>,  <27.601578, 41.049831, 58.142303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.269520, 41.188961, 57.968002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531619, 0.258237, -0.806656,
		-0.168048, -0.901294, -0.399284,
		-0.830145, 0.347824, -0.435749,
		27.020475, 41.293308, 57.837276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.593801, 40.776192, 57.475269>,  <27.601578, 41.049831, 58.142303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.593801, 40.776192, 57.475269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.355110, 41.096989, 57.464508>,  <27.211895, 41.289467, 57.458050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.355110, 41.096989, 57.464508>,  <27.593801, 40.776192, 57.475269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.355110, 41.096989, 57.464508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379685, 0.252650, -0.889948,
		-0.706932, -0.541276, -0.455268,
		-0.596730, 0.801991, -0.026908,
		27.176090, 41.337585, 57.456436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.343441, 40.745934, 56.855434>,  <27.593801, 40.776192, 57.475269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.343441, 40.745934, 56.855434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.284470, 41.128544, 56.956089>,  <27.249086, 41.358109, 57.016483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.284470, 41.128544, 56.956089>,  <27.343441, 40.745934, 56.855434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.284470, 41.128544, 56.956089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529750, 0.291212, -0.796594,
		-0.835243, 0.015865, -0.549652,
		-0.147427, 0.956527, 0.251637,
		27.240242, 41.415501, 57.031582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.097893, 41.020527, 56.268356>,  <27.343441, 40.745934, 56.855434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.097893, 41.020527, 56.268356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236423, 41.330170, 56.480324>,  <27.319542, 41.515957, 56.607506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236423, 41.330170, 56.480324>,  <27.097893, 41.020527, 56.268356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.236423, 41.330170, 56.480324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365179, 0.409079, -0.836241,
		-0.864119, 0.483131, -0.141011,
		0.346329, 0.774106, 0.529922,
		27.340322, 41.562401, 56.639301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.846281, 41.545597, 55.954025>,  <27.097893, 41.020527, 56.268356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.846281, 41.545597, 55.954025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138931, 41.724918, 56.159451>,  <27.314522, 41.832512, 56.282707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138931, 41.724918, 56.159451>,  <26.846281, 41.545597, 55.954025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.138931, 41.724918, 56.159451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401660, 0.325217, -0.856097,
		-0.550809, 0.832622, 0.057873,
		0.731627, 0.448301, 0.513564,
		27.358419, 41.859409, 56.313519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.870790, 42.169674, 55.746620>,  <26.846281, 41.545597, 55.954025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.870790, 42.169674, 55.746620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.234529, 42.080120, 55.886883>,  <27.452774, 42.026386, 55.971039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.234529, 42.080120, 55.886883>,  <26.870790, 42.169674, 55.746620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.234529, 42.080120, 55.886883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400581, 0.243613, -0.883282,
		0.112329, 0.943678, 0.311213,
		0.909350, -0.223885, 0.350655,
		27.507334, 42.012955, 55.992081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262291, 42.605274, 55.463718>,  <26.870790, 42.169674, 55.746620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262291, 42.605274, 55.463718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.527763, 42.327160, 55.574070>,  <27.687046, 42.160290, 55.640282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.527763, 42.327160, 55.574070>,  <27.262291, 42.605274, 55.463718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.527763, 42.327160, 55.574070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560348, 0.217807, -0.799106,
		0.495519, 0.684937, 0.534156,
		0.663680, -0.695286, 0.275875,
		27.726868, 42.118576, 55.656834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912439, 42.970116, 55.413769>,  <27.262291, 42.605274, 55.463718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.912439, 42.970116, 55.413769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.979700, 42.576019, 55.401005>,  <28.020056, 42.339561, 55.393345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.979700, 42.576019, 55.401005>,  <27.912439, 42.970116, 55.413769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.979700, 42.576019, 55.401005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731288, 0.146384, -0.666175,
		0.661016, 0.088683, 0.745113,
		0.168151, -0.985245, -0.031910,
		28.030146, 42.280445, 55.391430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557819, 42.946579, 55.300247>,  <27.912439, 42.970116, 55.413769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.557819, 42.946579, 55.300247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.456114, 42.572136, 55.203041>,  <28.395090, 42.347469, 55.144718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.456114, 42.572136, 55.203041>,  <28.557819, 42.946579, 55.300247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.456114, 42.572136, 55.203041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777795, -0.048585, -0.626637,
		0.574791, -0.348349, 0.740452,
		-0.254263, -0.936105, -0.243018,
		28.379835, 42.291306, 55.130135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205471, 42.504147, 55.266933>,  <28.557819, 42.946579, 55.300247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.205471, 42.504147, 55.266933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.931881, 42.312523, 55.046867>,  <28.767727, 42.197548, 54.914829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.931881, 42.312523, 55.046867>,  <29.205471, 42.504147, 55.266933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.931881, 42.312523, 55.046867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675301, -0.130520, -0.725902,
		0.275942, -0.868025, 0.412781,
		-0.683977, -0.479058, -0.550162,
		28.726688, 42.168804, 54.881817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889635, 42.267715, 55.453804>,  <29.205471, 42.504147, 55.266933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889635, 42.267715, 55.453804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.260973, 42.121048, 55.478226>,  <30.483776, 42.033047, 55.492878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.260973, 42.121048, 55.478226>,  <29.889635, 42.267715, 55.453804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.260973, 42.121048, 55.478226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091673, -0.066669, 0.993555,
		-0.360235, -0.927960, -0.095505,
		0.928346, -0.366669, 0.061052,
		30.539476, 42.011047, 55.496540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.946661, 41.580486, 55.815025>,  <29.889635, 42.267715, 55.453804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.946661, 41.580486, 55.815025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312880, 41.734833, 55.860435>,  <30.532610, 41.827438, 55.887680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312880, 41.734833, 55.860435>,  <29.946661, 41.580486, 55.815025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312880, 41.734833, 55.860435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030281, -0.215325, 0.976073,
		0.401075, -0.897076, -0.185455,
		0.915545, 0.385863, 0.113526,
		30.587543, 41.850590, 55.894493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219563, 41.246975, 56.386387>,  <29.946661, 41.580486, 55.815025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219563, 41.246975, 56.386387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436419, 41.582893, 56.374920>,  <30.566532, 41.784443, 56.368038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436419, 41.582893, 56.374920>,  <30.219563, 41.246975, 56.386387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436419, 41.582893, 56.374920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061968, -0.005933, 0.998060,
		0.837999, -0.542867, -0.055257,
		0.542142, 0.839798, -0.028669,
		30.599062, 41.834831, 56.366318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805059, 41.200405, 56.820618>,  <30.219563, 41.246975, 56.386387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.805059, 41.200405, 56.820618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.776724, 41.598122, 56.788708>,  <30.759722, 41.836750, 56.769562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.776724, 41.598122, 56.788708>,  <30.805059, 41.200405, 56.820618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776724, 41.598122, 56.788708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067043, 0.084542, 0.994162,
		0.995232, 0.065077, -0.072649,
		-0.070839, 0.994292, -0.079776,
		30.755472, 41.896408, 56.764774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.198458, 41.479187, 57.412239>,  <30.805059, 41.200405, 56.820618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.198458, 41.479187, 57.412239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944590, 41.763165, 57.290146>,  <30.792269, 41.933552, 57.216888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944590, 41.763165, 57.290146>,  <31.198458, 41.479187, 57.412239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944590, 41.763165, 57.290146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028819, 0.372966, 0.927398,
		0.772247, 0.597387, -0.216249,
		-0.634668, 0.709948, -0.305238,
		30.754189, 41.976151, 57.198574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578825, 41.986691, 57.578167>,  <31.198458, 41.479187, 57.412239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578825, 41.986691, 57.578167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195400, 42.098923, 57.558418>,  <30.965345, 42.166260, 57.546570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195400, 42.098923, 57.558418>,  <31.578825, 41.986691, 57.578167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195400, 42.098923, 57.558418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002827, 0.163939, 0.986466,
		0.284876, 0.945727, -0.156353,
		-0.958560, 0.280578, -0.049376,
		30.907833, 42.183098, 57.543606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538683, 42.557194, 58.120342>,  <31.578825, 41.986691, 57.578167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538683, 42.557194, 58.120342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164825, 42.455692, 58.020702>,  <30.940512, 42.394791, 57.960918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164825, 42.455692, 58.020702>,  <31.538683, 42.557194, 58.120342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164825, 42.455692, 58.020702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296926, 0.171511, 0.939372,
		-0.195645, 0.951942, -0.235647,
		-0.934643, -0.253753, -0.249101,
		30.884432, 42.379566, 57.945972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133926, 43.067329, 58.327381>,  <31.538683, 42.557194, 58.120342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133926, 43.067329, 58.327381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859167, 42.780418, 58.280598>,  <30.694311, 42.608273, 58.252525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859167, 42.780418, 58.280598>,  <31.133926, 43.067329, 58.327381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859167, 42.780418, 58.280598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399259, 0.237968, 0.885417,
		-0.607258, 0.654891, -0.449839,
		-0.686899, -0.717279, -0.116963,
		30.653097, 42.565235, 58.245510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436745, 43.347157, 58.554543>,  <31.133926, 43.067329, 58.327381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436745, 43.347157, 58.554543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.430670, 42.949986, 58.601631>,  <30.427025, 42.711681, 58.629883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.430670, 42.949986, 58.601631>,  <30.436745, 43.347157, 58.554543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.430670, 42.949986, 58.601631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396407, 0.114068, 0.910961,
		-0.917949, -0.032831, -0.395337,
		-0.015188, -0.992930, 0.117722,
		30.426113, 42.652107, 58.636948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.911842, 43.297382, 58.981617>,  <30.436745, 43.347157, 58.554543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.911842, 43.297382, 58.981617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031832, 42.915997, 58.993797>,  <30.103825, 42.687164, 59.001106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031832, 42.915997, 58.993797>,  <29.911842, 43.297382, 58.981617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031832, 42.915997, 58.993797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316577, -0.069383, 0.946026,
		-0.899886, -0.293424, -0.322657,
		0.299974, -0.953461, 0.030454,
		30.121824, 42.629959, 59.002934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276215, 42.973621, 59.140720>,  <29.911842, 43.297382, 58.981617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276215, 42.973621, 59.140720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596472, 42.771935, 59.270172>,  <29.788626, 42.650925, 59.347843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596472, 42.771935, 59.270172>,  <29.276215, 42.973621, 59.140720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596472, 42.771935, 59.270172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426590, -0.100460, 0.898849,
		-0.420702, -0.857715, -0.295526,
		0.800644, -0.504215, 0.323629,
		29.836664, 42.620670, 59.367260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979338, 42.439377, 59.528610>,  <29.276215, 42.973621, 59.140720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979338, 42.439377, 59.528610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.369102, 42.429092, 59.617931>,  <29.602961, 42.422924, 59.671524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.369102, 42.429092, 59.617931>,  <28.979338, 42.439377, 59.528610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.369102, 42.429092, 59.617931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221510, -0.278579, 0.934520,
		0.038183, -0.960069, -0.277144,
		0.974410, -0.025707, 0.223302,
		29.661427, 42.421379, 59.684921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025496, 41.746250, 59.964241>,  <28.979338, 42.439377, 59.528610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025496, 41.746250, 59.964241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.330383, 41.997894, 60.025219>,  <29.513315, 42.148880, 60.061806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.330383, 41.997894, 60.025219>,  <29.025496, 41.746250, 59.964241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330383, 41.997894, 60.025219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008817, -0.225388, 0.974229,
		0.647261, -0.743919, -0.166248,
		0.762218, 0.629114, 0.152444,
		29.559050, 42.186630, 60.070953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.295843, 41.442066, 60.525841>,  <29.025496, 41.746250, 59.964241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.295843, 41.442066, 60.525841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434385, 41.817307, 60.526802>,  <29.517511, 42.042450, 60.527378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434385, 41.817307, 60.526802>,  <29.295843, 41.442066, 60.525841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434385, 41.817307, 60.526802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290917, 0.104976, 0.950972,
		0.891854, -0.330074, 0.309268,
		0.346356, 0.938100, 0.002401,
		29.538292, 42.098736, 60.527523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733313, 41.392311, 61.115803>,  <29.295843, 41.442066, 60.525841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733313, 41.392311, 61.115803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.911755, 41.208916, 61.423252>,  <30.018820, 41.098877, 61.607719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.911755, 41.208916, 61.423252>,  <29.733313, 41.392311, 61.115803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.911755, 41.208916, 61.423252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388392, -0.674553, -0.627798,
		0.806313, 0.578591, -0.122849,
		0.446106, -0.458489, 0.768621,
		30.045586, 41.071369, 61.653839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468956, 41.355106, 60.999374>,  <29.733313, 41.392311, 61.115803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468956, 41.355106, 60.999374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420155, 41.071941, 61.277649>,  <30.390875, 40.902042, 61.444614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420155, 41.071941, 61.277649>,  <30.468956, 41.355106, 60.999374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.420155, 41.071941, 61.277649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439222, -0.667060, -0.601760,
		0.890056, 0.232144, 0.392314,
		-0.122001, -0.707913, 0.695683,
		30.383554, 40.859566, 61.486355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089989, 40.876534, 61.098442>,  <30.468956, 41.355106, 60.999374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089989, 40.876534, 61.098442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773933, 40.660515, 61.214390>,  <30.584301, 40.530903, 61.283958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773933, 40.660515, 61.214390>,  <31.089989, 40.876534, 61.098442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773933, 40.660515, 61.214390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343335, -0.781744, -0.520573,
		0.507743, -0.311801, 0.803105,
		-0.790138, -0.540051, 0.289873,
		30.536892, 40.498501, 61.301353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449791, 40.338512, 61.408173>,  <31.089989, 40.876534, 61.098442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449791, 40.338512, 61.408173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.083839, 40.199360, 61.326218>,  <30.864269, 40.115868, 61.277042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.083839, 40.199360, 61.326218>,  <31.449791, 40.338512, 61.408173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083839, 40.199360, 61.326218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391716, -0.641949, -0.659136,
		0.097772, -0.683287, 0.723574,
		-0.914876, -0.347881, -0.204890,
		30.809376, 40.094997, 61.264751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415230, 39.614109, 61.475643>,  <31.449791, 40.338512, 61.408173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.415230, 39.614109, 61.475643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134995, 39.721401, 61.211151>,  <30.966854, 39.785778, 61.052456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134995, 39.721401, 61.211151>,  <31.415230, 39.614109, 61.475643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134995, 39.721401, 61.211151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340568, -0.688609, -0.640180,
		-0.627047, -0.673697, 0.391080,
		-0.700589, 0.268234, -0.661230,
		30.924818, 39.801872, 61.012783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186352, 38.905251, 61.132069>,  <31.415230, 39.614109, 61.475643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186352, 38.905251, 61.132069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027346, 39.167694, 60.875473>,  <30.931942, 39.325161, 60.721516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027346, 39.167694, 60.875473>,  <31.186352, 38.905251, 61.132069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027346, 39.167694, 60.875473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065643, -0.676971, -0.733076,
		-0.915245, -0.333518, 0.226037,
		-0.397514, 0.656107, -0.641488,
		30.908091, 39.364525, 60.683025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.743509, 38.526245, 60.591583>,  <31.186352, 38.905251, 61.132069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.743509, 38.526245, 60.591583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834654, 38.890274, 60.453106>,  <30.889341, 39.108692, 60.370018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834654, 38.890274, 60.453106>,  <30.743509, 38.526245, 60.591583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834654, 38.890274, 60.453106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192115, -0.390577, -0.900301,
		-0.954552, 0.138637, -0.263836,
		0.227863, 0.910071, -0.346192,
		30.903013, 39.163296, 60.349247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122492, 38.120117, 60.362694>,  <30.743509, 38.526245, 60.591583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122492, 38.120117, 60.362694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973263, 37.758354, 60.279884>,  <29.883724, 37.541294, 60.230198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973263, 37.758354, 60.279884>,  <30.122492, 38.120117, 60.362694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973263, 37.758354, 60.279884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419977, -0.034345, 0.906885,
		-0.827306, 0.425279, -0.367018,
		-0.373074, -0.904410, -0.207021,
		29.861341, 37.487030, 60.217777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392866, 38.141075, 60.674946>,  <30.122492, 38.120117, 60.362694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392866, 38.141075, 60.674946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.443544, 37.748730, 60.615807>,  <29.473951, 37.513325, 60.580322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.443544, 37.748730, 60.615807>,  <29.392866, 38.141075, 60.674946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.443544, 37.748730, 60.615807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462805, -0.190288, 0.865796,
		-0.877359, -0.041266, -0.478056,
		0.126696, -0.980861, -0.147853,
		29.481554, 37.454472, 60.571449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.721790, 37.796215, 60.773342>,  <29.392866, 38.141075, 60.674946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.721790, 37.796215, 60.773342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.994808, 37.514561, 60.851658>,  <29.158619, 37.345570, 60.898647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.994808, 37.514561, 60.851658>,  <28.721790, 37.796215, 60.773342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994808, 37.514561, 60.851658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578321, -0.356560, 0.733765,
		-0.446858, -0.614053, -0.650582,
		0.682542, -0.704134, 0.195788,
		29.199572, 37.303322, 60.910393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.361828, 37.106174, 60.778538>,  <28.721790, 37.796215, 60.773342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.361828, 37.106174, 60.778538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707487, 37.093967, 60.979462>,  <28.914883, 37.086643, 61.100018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707487, 37.093967, 60.979462>,  <28.361828, 37.106174, 60.778538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707487, 37.093967, 60.979462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482218, -0.335660, 0.809196,
		0.143914, -0.941489, -0.304775,
		0.864150, -0.030513, 0.502309,
		28.966732, 37.084812, 61.130154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.416924, 36.473442, 61.035965>,  <28.361828, 37.106174, 60.778538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.416924, 36.473442, 61.035965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.652521, 36.673450, 61.289917>,  <28.793880, 36.793453, 61.442287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.652521, 36.673450, 61.289917>,  <28.416924, 36.473442, 61.035965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.652521, 36.673450, 61.289917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460234, -0.438219, 0.772107,
		0.664283, -0.746958, -0.027983,
		0.588993, 0.500018, 0.634877,
		28.829220, 36.823456, 61.480381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549721, 35.942337, 61.531189>,  <28.416924, 36.473442, 61.035965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.549721, 35.942337, 61.531189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654713, 36.292515, 61.693520>,  <28.717707, 36.502621, 61.790916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654713, 36.292515, 61.693520>,  <28.549721, 35.942337, 61.531189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654713, 36.292515, 61.693520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292165, -0.328727, 0.898097,
		0.919644, -0.354299, 0.169492,
		0.262478, 0.875449, 0.405826,
		28.733456, 36.555149, 61.815266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775063, 35.815090, 62.136448>,  <28.549721, 35.942337, 61.531189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775063, 35.815090, 62.136448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.692238, 36.201160, 62.200405>,  <28.642542, 36.432800, 62.238781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.692238, 36.201160, 62.200405>,  <28.775063, 35.815090, 62.136448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.692238, 36.201160, 62.200405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428071, -0.236346, 0.872294,
		0.879704, 0.112174, 0.462101,
		-0.207064, 0.965172, 0.159896,
		28.630119, 36.490711, 62.248375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.988636, 35.929813, 62.753521>,  <28.775063, 35.815090, 62.136448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.988636, 35.929813, 62.753521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.708523, 36.198547, 62.656990>,  <28.540455, 36.359787, 62.599072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.708523, 36.198547, 62.656990>,  <28.988636, 35.929813, 62.753521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.708523, 36.198547, 62.656990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525294, -0.256041, 0.811486,
		0.483397, 0.695037, 0.532213,
		-0.700281, 0.671838, -0.241329,
		28.498438, 36.400101, 62.584591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946726, 36.365665, 63.271423>,  <28.988636, 35.929813, 62.753521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946726, 36.365665, 63.271423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.579067, 36.386993, 63.115307>,  <28.358473, 36.399792, 63.021637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.579067, 36.386993, 63.115307>,  <28.946726, 36.365665, 63.271423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.579067, 36.386993, 63.115307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393713, -0.092659, 0.914551,
		0.012604, 0.994269, 0.106161,
		-0.919147, 0.053324, -0.390289,
		28.303324, 36.402992, 62.998219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<36.605450, 35.137836, 46.347858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.723255, 35.511322, 46.429276>,  <36.793938, 35.735413, 46.478127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.723255, 35.511322, 46.429276>,  <36.605450, 35.137836, 46.347858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723255, 35.511322, 46.429276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887338, 0.188110, 0.421005,
		0.354811, -0.304607, 0.883925,
		0.294516, 0.933718, 0.203546,
		36.811611, 35.791439, 46.490341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576263, 35.344822, 47.107384>,  <36.605450, 35.137836, 46.347858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576263, 35.344822, 47.107384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.538853, 35.669590, 46.876892>,  <36.516407, 35.864452, 46.738598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.538853, 35.669590, 46.876892>,  <36.576263, 35.344822, 47.107384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538853, 35.669590, 46.876892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886655, 0.195335, 0.419151,
		0.452875, 0.550118, 0.701623,
		-0.093530, 0.811920, -0.576227,
		36.510792, 35.913166, 46.704025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287956, 35.931694, 47.602871>,  <36.576263, 35.344822, 47.107384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287956, 35.931694, 47.602871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.197155, 36.058289, 47.234455>,  <36.142673, 36.134243, 47.013405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.197155, 36.058289, 47.234455>,  <36.287956, 35.931694, 47.602871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197155, 36.058289, 47.234455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892395, 0.311126, 0.326851,
		0.390001, 0.896124, 0.211803,
		-0.227001, 0.316484, -0.921036,
		36.129055, 36.153233, 46.958145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043987, 36.661320, 47.739929>,  <36.287956, 35.931694, 47.602871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043987, 36.661320, 47.739929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.905579, 36.549175, 47.381786>,  <35.822533, 36.481888, 47.166901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.905579, 36.549175, 47.381786>,  <36.043987, 36.661320, 47.739929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905579, 36.549175, 47.381786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858718, 0.479099, 0.181843,
		0.377984, 0.831782, -0.406530,
		-0.346022, -0.280361, -0.895358,
		35.801773, 36.465069, 47.113178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714279, 37.266602, 47.419182>,  <36.043987, 36.661320, 47.739929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714279, 37.266602, 47.419182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.541348, 36.967651, 47.217381>,  <35.437588, 36.788280, 47.096302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.541348, 36.967651, 47.217381>,  <35.714279, 37.266602, 47.419182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541348, 36.967651, 47.217381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901685, 0.353767, 0.248622,
		-0.007338, 0.562387, -0.826841,
		-0.432331, -0.747375, -0.504500,
		35.411648, 36.743439, 47.066029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136086, 37.623737, 46.916687>,  <35.714279, 37.266602, 47.419182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136086, 37.623737, 46.916687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.072372, 37.237541, 46.999107>,  <35.034145, 37.005821, 47.048557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.072372, 37.237541, 46.999107>,  <35.136086, 37.623737, 46.916687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072372, 37.237541, 46.999107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921791, 0.220170, 0.319104,
		-0.353458, -0.139107, -0.925049,
		-0.159278, -0.965492, 0.206048,
		35.024590, 36.947895, 47.060921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536278, 37.503803, 46.688286>,  <35.136086, 37.623737, 46.916687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536278, 37.503803, 46.688286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.595921, 37.201012, 46.942764>,  <34.631706, 37.019337, 47.095451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.595921, 37.201012, 46.942764>,  <34.536278, 37.503803, 46.688286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595921, 37.201012, 46.942764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972830, 0.002942, 0.231504,
		-0.177115, -0.653433, -0.735973,
		0.149107, -0.756979, 0.636200,
		34.640652, 36.973919, 47.133625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950729, 37.048897, 46.714603>,  <34.536278, 37.503803, 46.688286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950729, 37.048897, 46.714603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.110668, 36.962341, 47.070873>,  <34.206631, 36.910408, 47.284634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.110668, 36.962341, 47.070873>,  <33.950729, 37.048897, 46.714603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110668, 36.962341, 47.070873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913954, -0.167655, 0.369568,
		0.069356, -0.961804, -0.264806,
		0.399848, -0.216389, 0.890673,
		34.230621, 36.897427, 47.338074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611202, 36.429527, 46.964882>,  <33.950729, 37.048897, 46.714603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611202, 36.429527, 46.964882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.759174, 36.574661, 47.306995>,  <33.847958, 36.661739, 47.512264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.759174, 36.574661, 47.306995>,  <33.611202, 36.429527, 46.964882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759174, 36.574661, 47.306995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916669, -0.007314, 0.399581,
		0.151237, -0.931825, 0.329892,
		0.369927, 0.362833, 0.855281,
		33.870152, 36.683510, 47.563580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361385, 35.974361, 47.578781>,  <33.611202, 36.429527, 46.964882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361385, 35.974361, 47.578781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.484974, 36.316818, 47.744457>,  <33.559128, 36.522293, 47.843864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.484974, 36.316818, 47.744457>,  <33.361385, 35.974361, 47.578781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484974, 36.316818, 47.744457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695697, -0.093497, 0.712224,
		0.648493, -0.508206, 0.566731,
		0.308969, 0.856146, 0.414189,
		33.577663, 36.573662, 47.868713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063805, 35.810646, 48.216393>,  <33.361385, 35.974361, 47.578781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063805, 35.810646, 48.216393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.166729, 36.194569, 48.261230>,  <33.228485, 36.424923, 48.288136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.166729, 36.194569, 48.261230>,  <33.063805, 35.810646, 48.216393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166729, 36.194569, 48.261230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623751, 0.076369, 0.777884,
		0.738055, -0.270081, 0.618329,
		0.257313, 0.959804, 0.112099,
		33.243923, 36.482510, 48.294861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269299, 35.983852, 48.955116>,  <33.063805, 35.810646, 48.216393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269299, 35.983852, 48.955116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.138844, 36.319481, 48.780945>,  <33.060570, 36.520859, 48.676441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.138844, 36.319481, 48.780945>,  <33.269299, 35.983852, 48.955116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138844, 36.319481, 48.780945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709826, 0.086846, 0.699003,
		0.624327, 0.537049, 0.567269,
		-0.326134, 0.839068, -0.435432,
		33.041004, 36.571201, 48.650314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069904, 36.467342, 49.582928>,  <33.269299, 35.983852, 48.955116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069904, 36.467342, 49.582928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.908615, 36.667645, 49.276554>,  <32.811840, 36.787827, 49.092731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.908615, 36.667645, 49.276554>,  <33.069904, 36.467342, 49.582928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908615, 36.667645, 49.276554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838345, 0.133406, 0.528564,
		0.366861, 0.855247, 0.366012,
		-0.403225, 0.500754, -0.765934,
		32.787647, 36.817871, 49.046772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832817, 37.190910, 49.704601>,  <33.069904, 36.467342, 49.582928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832817, 37.190910, 49.704601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.598495, 37.040504, 49.417423>,  <32.457901, 36.950260, 49.245117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.598495, 37.040504, 49.417423>,  <32.832817, 37.190910, 49.704601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598495, 37.040504, 49.417423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805216, 0.169511, 0.568238,
		-0.091966, 0.910977, -0.402073,
		-0.585807, -0.376015, -0.717944,
		32.422752, 36.927700, 49.202042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237717, 37.671322, 49.833836>,  <32.832817, 37.190910, 49.704601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237717, 37.671322, 49.833836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.118149, 37.338608, 49.646740>,  <32.046410, 37.138981, 49.534481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.118149, 37.338608, 49.646740>,  <32.237717, 37.671322, 49.833836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118149, 37.338608, 49.646740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916403, 0.113486, 0.383833,
		-0.266185, 0.543371, -0.796174,
		-0.298918, -0.831786, -0.467738,
		32.028473, 37.089073, 49.506420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541517, 37.775890, 49.562824>,  <32.237717, 37.671322, 49.833836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541517, 37.775890, 49.562824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.545385, 37.380756, 49.624912>,  <31.547707, 37.143677, 49.662167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.545385, 37.380756, 49.624912>,  <31.541517, 37.775890, 49.562824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545385, 37.380756, 49.624912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954716, 0.037040, 0.295204,
		-0.297362, -0.151047, -0.942741,
		0.009671, -0.987832, 0.155221,
		31.548286, 37.084408, 49.671478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836697, 37.579899, 49.440781>,  <31.541517, 37.775890, 49.562824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836697, 37.579899, 49.440781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.950260, 37.226547, 49.589935>,  <31.018398, 37.014538, 49.679428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.950260, 37.226547, 49.589935>,  <30.836697, 37.579899, 49.440781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950260, 37.226547, 49.589935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952941, -0.216837, 0.211863,
		-0.106299, -0.415489, -0.903366,
		0.283910, -0.883374, 0.372887,
		31.035433, 36.961536, 49.701801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494061, 36.979187, 49.122532>,  <30.836697, 37.579899, 49.440781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494061, 36.979187, 49.122532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.602551, 36.861225, 49.489021>,  <30.667645, 36.790447, 49.708916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.602551, 36.861225, 49.489021>,  <30.494061, 36.979187, 49.122532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602551, 36.861225, 49.489021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929933, -0.325867, 0.170396,
		0.248318, -0.898245, -0.362622,
		0.271224, -0.294902, 0.916226,
		30.683918, 36.772755, 49.763889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230856, 36.224857, 49.293922>,  <30.494061, 36.979187, 49.122532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230856, 36.224857, 49.293922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.258390, 36.416595, 49.643890>,  <30.274912, 36.531639, 49.853870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.258390, 36.416595, 49.643890>,  <30.230856, 36.224857, 49.293922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.258390, 36.416595, 49.643890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977503, -0.142859, 0.155177,
		0.199374, -0.865920, 0.458729,
		0.068838, 0.479347, 0.874921,
		30.279041, 36.560398, 49.906368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849024, 35.864120, 49.638329>,  <30.230856, 36.224857, 49.293922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849024, 35.864120, 49.638329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.896303, 36.185997, 49.871052>,  <29.924671, 36.379124, 50.010685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.896303, 36.185997, 49.871052>,  <29.849024, 35.864120, 49.638329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.896303, 36.185997, 49.871052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760170, -0.303643, 0.574406,
		0.638882, -0.510166, 0.575813,
		0.118201, 0.804693, 0.581805,
		29.931763, 36.427406, 50.045593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663055, 35.583740, 50.247437>,  <29.849024, 35.864120, 49.638329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663055, 35.583740, 50.247437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.642149, 35.975826, 50.323807>,  <29.629604, 36.211079, 50.369629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.642149, 35.975826, 50.323807>,  <29.663055, 35.583740, 50.247437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642149, 35.975826, 50.323807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781839, -0.159107, 0.602837,
		0.621286, -0.117762, 0.774684,
		-0.052267, 0.980213, 0.190922,
		29.626469, 36.269890, 50.381084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.525059, 35.760612, 51.023022>,  <29.663055, 35.583740, 50.247437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.525059, 35.760612, 51.023022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.416283, 36.116749, 50.876961>,  <29.351017, 36.330433, 50.789326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.416283, 36.116749, 50.876961>,  <29.525059, 35.760612, 51.023022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416283, 36.116749, 50.876961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912719, -0.118394, 0.391058,
		0.304944, 0.439624, 0.844831,
		-0.271942, 0.890345, -0.365150,
		29.334700, 36.383854, 50.767414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043602, 36.061584, 51.511215>,  <29.525059, 35.760612, 51.023022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.043602, 36.061584, 51.511215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.987333, 36.304432, 51.198391>,  <28.953573, 36.450142, 51.010696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.987333, 36.304432, 51.198391>,  <29.043602, 36.061584, 51.511215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.987333, 36.304432, 51.198391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950886, 0.137143, 0.277503,
		0.275732, 0.782687, 0.558008,
		-0.140671, 0.607119, -0.782061,
		28.945131, 36.486568, 50.963772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.795525, 36.739296, 51.785938>,  <29.043602, 36.061584, 51.511215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.795525, 36.739296, 51.785938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.643618, 36.665699, 51.423298>,  <28.552473, 36.621540, 51.205715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.643618, 36.665699, 51.423298>,  <28.795525, 36.739296, 51.785938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.643618, 36.665699, 51.423298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924763, 0.049791, 0.377273,
		-0.024274, 0.981666, -0.189056,
		-0.379769, -0.183990, -0.906600,
		28.529686, 36.610500, 51.151318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245205, 37.127178, 51.694595>,  <28.795525, 36.739296, 51.785938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.245205, 37.127178, 51.694595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.167387, 36.866192, 51.401627>,  <28.120697, 36.709599, 51.225845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.167387, 36.866192, 51.401627>,  <28.245205, 37.127178, 51.694595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.167387, 36.866192, 51.401627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968024, 0.007147, 0.250756,
		-0.158375, 0.757785, -0.632993,
		-0.194543, -0.652465, -0.732422,
		28.109024, 36.670452, 51.181900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.656767, 37.385929, 51.465153>,  <28.245205, 37.127178, 51.694595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.656767, 37.385929, 51.465153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.658785, 37.006165, 51.339554>,  <27.659996, 36.778305, 51.264194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.658785, 37.006165, 51.339554>,  <27.656767, 37.385929, 51.465153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.658785, 37.006165, 51.339554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991224, -0.046226, 0.123846,
		-0.132095, 0.310615, -0.941312,
		0.005044, -0.949411, -0.313996,
		27.660297, 36.721340, 51.245354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.054682, 37.261330, 50.906033>,  <27.656767, 37.385929, 51.465153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.054682, 37.261330, 50.906033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.147676, 36.896214, 51.040356>,  <27.203474, 36.677143, 51.120949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.147676, 36.896214, 51.040356>,  <27.054682, 37.261330, 50.906033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.147676, 36.896214, 51.040356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972592, -0.219491, 0.076730,
		0.003670, -0.344448, -0.938798,
		0.232488, -0.912786, 0.335813,
		27.217422, 36.622379, 51.141098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.548998, 36.915024, 50.542152>,  <27.054682, 37.261330, 50.906033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.548998, 36.915024, 50.542152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.673656, 36.694958, 50.852039>,  <26.748451, 36.562916, 51.037971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.673656, 36.694958, 50.852039>,  <26.548998, 36.915024, 50.542152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673656, 36.694958, 50.852039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937742, -0.309663, 0.157315,
		0.153353, -0.775515, -0.612421,
		0.311645, -0.550168, 0.774721,
		26.767149, 36.529907, 51.084457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.232155, 36.213196, 50.476711>,  <26.548998, 36.915024, 50.542152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.232155, 36.213196, 50.476711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.357422, 36.214943, 50.856586>,  <26.432583, 36.215992, 51.084511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.357422, 36.214943, 50.856586>,  <26.232155, 36.213196, 50.476711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.357422, 36.214943, 50.856586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822498, -0.498682, 0.273519,
		0.474786, -0.866774, -0.152581,
		0.313169, 0.004365, 0.949687,
		26.451372, 36.216251, 51.141491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.237835, 35.548370, 50.609531>,  <26.232155, 36.213196, 50.476711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.237835, 35.548370, 50.609531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.198299, 35.759270, 50.947109>,  <26.174578, 35.885811, 51.149654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.198299, 35.759270, 50.947109>,  <26.237835, 35.548370, 50.609531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.198299, 35.759270, 50.947109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781203, -0.566452, 0.262400,
		0.616403, -0.633354, 0.467879,
		-0.098839, 0.527252, 0.843940,
		26.168648, 35.917446, 51.200291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.832355, 35.094639, 50.988045>,  <26.237835, 35.548370, 50.609531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.832355, 35.094639, 50.988045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.827415, 35.403896, 51.241688>,  <25.824451, 35.589451, 51.393875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.827415, 35.403896, 51.241688>,  <25.832355, 35.094639, 50.988045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.827415, 35.403896, 51.241688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816586, -0.373792, 0.439847,
		0.577091, -0.512372, 0.635957,
		-0.012350, 0.773146, 0.634108,
		25.823709, 35.635841, 51.431919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.796827, 34.854103, 51.752476>,  <25.832355, 35.094639, 50.988045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.796827, 34.854103, 51.752476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.669994, 35.233150, 51.737114>,  <25.593895, 35.460579, 51.727898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.669994, 35.233150, 51.737114>,  <25.796827, 34.854103, 51.752476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.669994, 35.233150, 51.737114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835256, -0.259844, 0.484592,
		0.449230, 0.185733, 0.873897,
		-0.317081, 0.947620, -0.038405,
		25.574869, 35.517437, 51.725594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.604523, 35.177834, 52.515377>,  <25.796827, 34.854103, 51.752476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.604523, 35.177834, 52.515377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.382023, 35.382370, 52.253349>,  <25.248524, 35.505093, 52.096130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.382023, 35.382370, 52.253349>,  <25.604523, 35.177834, 52.515377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.382023, 35.382370, 52.253349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796343, -0.102669, 0.596068,
		0.237537, 0.853225, 0.464310,
		-0.556250, 0.511338, -0.655071,
		25.215147, 35.535770, 52.056828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.202904, 35.608597, 52.987587>,  <25.604523, 35.177834, 52.515377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.202904, 35.608597, 52.987587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.000507, 35.633984, 52.643509>,  <24.879068, 35.649216, 52.437061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.000507, 35.633984, 52.643509>,  <25.202904, 35.608597, 52.987587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.000507, 35.633984, 52.643509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861068, -0.095360, 0.499468,
		-0.050330, 0.993418, 0.102899,
		-0.505993, 0.063465, -0.860200,
		24.848709, 35.653023, 52.385448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.508730, 35.984699, 53.172581>,  <25.202904, 35.608597, 52.987587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.508730, 35.984699, 53.172581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.460371, 35.783695, 52.830151>,  <24.431356, 35.663094, 52.624691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.460371, 35.783695, 52.830151>,  <24.508730, 35.984699, 53.172581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.460371, 35.783695, 52.830151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893923, -0.319858, 0.313994,
		-0.431608, 0.803230, -0.410532,
		-0.120898, -0.502506, -0.856079,
		24.424101, 35.632942, 52.573326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<36.816689, 34.829102, 49.582592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.441284, 34.747673, 49.471046>,  <36.216042, 34.698818, 49.404118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.441284, 34.747673, 49.471046>,  <36.816689, 34.829102, 49.582592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441284, 34.747673, 49.471046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196493, -0.349212, 0.916211,
		-0.283893, 0.914665, 0.287738,
		-0.938507, -0.203568, -0.278864,
		36.159733, 34.686604, 49.387386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381290, 35.173424, 50.085621>,  <36.816689, 34.829102, 49.582592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381290, 35.173424, 50.085621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.140614, 34.919327, 49.891945>,  <35.996208, 34.766869, 49.775738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.140614, 34.919327, 49.891945>,  <36.381290, 35.173424, 50.085621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140614, 34.919327, 49.891945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425838, -0.257733, 0.867316,
		-0.675745, 0.728041, -0.115434,
		-0.601690, -0.635240, -0.484189,
		35.960106, 34.728756, 49.746689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701588, 35.387688, 50.315945>,  <36.381290, 35.173424, 50.085621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701588, 35.387688, 50.315945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.672905, 35.007931, 50.193626>,  <35.655697, 34.780075, 50.120235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.672905, 35.007931, 50.193626>,  <35.701588, 35.387688, 50.315945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672905, 35.007931, 50.193626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583604, -0.208691, 0.784764,
		-0.808866, 0.234733, -0.539106,
		-0.071703, -0.949394, -0.305794,
		35.651394, 34.723114, 50.101887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021011, 35.303776, 50.497097>,  <35.701588, 35.387688, 50.315945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021011, 35.303776, 50.497097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.156471, 34.930172, 50.451591>,  <35.237747, 34.706009, 50.424290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.156471, 34.930172, 50.451591>,  <35.021011, 35.303776, 50.497097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156471, 34.930172, 50.451591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540261, -0.292008, 0.789208,
		-0.770348, -0.205803, -0.603497,
		0.338648, -0.934011, -0.113761,
		35.258064, 34.649967, 50.417461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460583, 34.801674, 50.643070>,  <35.021011, 35.303776, 50.497097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460583, 34.801674, 50.643070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.791573, 34.579872, 50.678410>,  <34.990166, 34.446793, 50.699612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.791573, 34.579872, 50.678410>,  <34.460583, 34.801674, 50.643070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791573, 34.579872, 50.678410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231587, -0.193702, 0.953335,
		-0.511515, -0.809323, -0.288700,
		0.827478, -0.554505, 0.088348,
		35.039818, 34.413521, 50.704914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177620, 34.180012, 50.990948>,  <34.460583, 34.801674, 50.643070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177620, 34.180012, 50.990948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.573402, 34.193443, 51.047310>,  <34.810871, 34.201504, 51.081127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.573402, 34.193443, 51.047310>,  <34.177620, 34.180012, 50.990948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573402, 34.193443, 51.047310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140206, -0.022473, 0.989867,
		0.036408, -0.999183, -0.017528,
		0.989453, 0.033581, 0.140910,
		34.870239, 34.203518, 51.089584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249485, 33.748024, 51.544338>,  <34.177620, 34.180012, 50.990948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249485, 33.748024, 51.544338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.595001, 33.948582, 51.524452>,  <34.802311, 34.068916, 51.512520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.595001, 33.948582, 51.524452>,  <34.249485, 33.748024, 51.544338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595001, 33.948582, 51.524452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040810, 0.028725, 0.998754,
		0.502195, -0.864743, 0.004350,
		0.863791, 0.501392, -0.049716,
		34.854137, 34.098999, 51.509537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807640, 33.306675, 51.929562>,  <34.249485, 33.748024, 51.544338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807640, 33.306675, 51.929562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.855854, 33.703579, 51.917610>,  <34.884785, 33.941723, 51.910439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.855854, 33.703579, 51.917610>,  <34.807640, 33.306675, 51.929562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855854, 33.703579, 51.917610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129259, 0.045526, 0.990565,
		0.984257, -0.115539, 0.133746,
		0.120538, 0.992259, -0.029874,
		34.892014, 34.001255, 51.908649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802368, 33.484894, 52.583790>,  <34.807640, 33.306675, 51.929562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802368, 33.484894, 52.583790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.797543, 33.856670, 52.436279>,  <34.794647, 34.079735, 52.347771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.797543, 33.856670, 52.436279>,  <34.802368, 33.484894, 52.583790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797543, 33.856670, 52.436279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563756, 0.298279, 0.770201,
		0.825854, 0.217194, 0.520377,
		-0.012066, 0.929439, -0.368779,
		34.793922, 34.135502, 52.325645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128731, 33.967186, 53.122765>,  <34.802368, 33.484894, 52.583790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128731, 33.967186, 53.122765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.929482, 34.212078, 52.877148>,  <34.809933, 34.359013, 52.729778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.929482, 34.212078, 52.877148>,  <35.128731, 33.967186, 53.122765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929482, 34.212078, 52.877148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244539, 0.580219, 0.776883,
		0.831912, 0.537137, -0.139303,
		-0.498119, 0.612233, -0.614042,
		34.780045, 34.395748, 52.692936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151691, 34.610531, 53.466480>,  <35.128731, 33.967186, 53.122765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151691, 34.610531, 53.466480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.846687, 34.654240, 53.211411>,  <34.663685, 34.680466, 53.058369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.846687, 34.654240, 53.211411>,  <35.151691, 34.610531, 53.466480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846687, 34.654240, 53.211411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492727, 0.540667, 0.681835,
		0.419277, 0.834109, -0.358424,
		-0.762513, 0.109272, -0.637678,
		34.617935, 34.687023, 53.020107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987591, 35.301414, 53.413799>,  <35.151691, 34.610531, 53.466480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987591, 35.301414, 53.413799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.673294, 35.074692, 53.314724>,  <34.484718, 34.938660, 53.255280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.673294, 35.074692, 53.314724>,  <34.987591, 35.301414, 53.413799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673294, 35.074692, 53.314724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432807, 0.217703, 0.874805,
		-0.441921, 0.794568, -0.416374,
		-0.785738, -0.566804, -0.247687,
		34.437572, 34.904652, 53.240417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231289, 36.070683, 53.391579>,  <34.987591, 35.301414, 53.413799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231289, 36.070683, 53.391579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.536854, 36.065052, 53.649647>,  <35.720192, 36.061672, 53.804485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.536854, 36.065052, 53.649647>,  <35.231289, 36.070683, 53.391579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536854, 36.065052, 53.649647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644973, -0.016132, -0.764035,
		0.021166, 0.999771, -0.003242,
		0.763912, -0.014080, 0.645167,
		35.766026, 36.060829, 53.843197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746376, 36.468472, 53.088703>,  <35.231289, 36.070683, 53.391579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746376, 36.468472, 53.088703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.000942, 36.310696, 53.353851>,  <36.153683, 36.216030, 53.512939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.000942, 36.310696, 53.353851>,  <35.746376, 36.468472, 53.088703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000942, 36.310696, 53.353851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735807, 0.052610, -0.675145,
		0.231428, 0.917416, 0.323710,
		0.636419, -0.394436, 0.662866,
		36.191868, 36.192364, 53.552711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318214, 36.930370, 53.056934>,  <35.746376, 36.468472, 53.088703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318214, 36.930370, 53.056934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.404232, 36.563023, 53.189808>,  <36.455845, 36.342613, 53.269531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.404232, 36.563023, 53.189808>,  <36.318214, 36.930370, 53.056934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404232, 36.563023, 53.189808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787718, -0.037949, -0.614866,
		0.577283, 0.393890, 0.715259,
		0.215047, -0.918374, 0.332182,
		36.468746, 36.287510, 53.289463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030689, 36.885475, 52.980469>,  <36.318214, 36.930370, 53.056934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030689, 36.885475, 52.980469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.934361, 36.502827, 53.046043>,  <36.876564, 36.273235, 53.085388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.934361, 36.502827, 53.046043>,  <37.030689, 36.885475, 52.980469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934361, 36.502827, 53.046043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657252, -0.285020, -0.697699,
		0.714161, -0.060272, 0.697382,
		-0.240819, -0.956625, 0.163937,
		36.862114, 36.215839, 53.095222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644352, 36.466473, 53.217403>,  <37.030689, 36.885475, 52.980469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644352, 36.466473, 53.217403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.381035, 36.202148, 53.073196>,  <37.223045, 36.043552, 52.986671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.381035, 36.202148, 53.073196>,  <37.644352, 36.466473, 53.217403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381035, 36.202148, 53.073196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628336, -0.218634, -0.746588,
		0.414535, -0.718000, 0.559139,
		-0.658297, -0.660814, -0.360514,
		37.183544, 36.003902, 52.965042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031910, 35.903061, 53.028744>,  <37.644352, 36.466473, 53.217403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031910, 35.903061, 53.028744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.690022, 35.868938, 52.823929>,  <37.484890, 35.848465, 52.701042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.690022, 35.868938, 52.823929>,  <38.031910, 35.903061, 53.028744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690022, 35.868938, 52.823929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512488, -0.295527, -0.806238,
		-0.082541, -0.951518, 0.296312,
		-0.854718, -0.085309, -0.512034,
		37.433605, 35.843346, 52.670319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075069, 35.225010, 52.798874>,  <38.031910, 35.903061, 53.028744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075069, 35.225010, 52.798874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.817451, 35.401279, 52.548748>,  <37.662880, 35.507042, 52.398674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.817451, 35.401279, 52.548748>,  <38.075069, 35.225010, 52.798874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817451, 35.401279, 52.548748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539444, -0.317960, -0.779680,
		-0.542411, -0.839467, -0.032941,
		-0.644042, 0.440677, -0.625311,
		37.624237, 35.533482, 52.361156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132931, 34.815678, 52.186569>,  <38.075069, 35.225010, 52.798874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132931, 34.815678, 52.186569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.933884, 35.126286, 52.031960>,  <37.814457, 35.312649, 51.939194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.933884, 35.126286, 52.031960>,  <38.132931, 34.815678, 52.186569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933884, 35.126286, 52.031960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490607, -0.115517, -0.863690,
		-0.715321, -0.619415, -0.323482,
		-0.497615, 0.776518, -0.386522,
		37.784599, 35.359241, 51.916004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836029, 34.637447, 51.552143>,  <38.132931, 34.815678, 52.186569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836029, 34.637447, 51.552143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.897495, 35.032669, 51.547409>,  <37.934376, 35.269802, 51.544567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.897495, 35.032669, 51.547409>,  <37.836029, 34.637447, 51.552143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897495, 35.032669, 51.547409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374433, -0.069308, -0.924660,
		-0.914433, 0.137654, -0.380610,
		0.153662, 0.988053, -0.011835,
		37.943592, 35.329086, 51.543858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534836, 34.817242, 50.878826>,  <37.836029, 34.637447, 51.552143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534836, 34.817242, 50.878826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.760120, 35.121670, 51.007553>,  <37.895290, 35.304325, 51.084789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.760120, 35.121670, 51.007553>,  <37.534836, 34.817242, 50.878826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760120, 35.121670, 51.007553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253205, 0.211774, -0.943949,
		-0.786564, 0.613127, -0.073434,
		0.563209, 0.761070, 0.321820,
		37.929085, 35.349991, 51.104099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325943, 35.388245, 50.491039>,  <37.534836, 34.817242, 50.878826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325943, 35.388245, 50.491039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.691006, 35.481670, 50.625206>,  <37.910042, 35.537727, 50.705708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.691006, 35.481670, 50.625206>,  <37.325943, 35.388245, 50.491039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691006, 35.481670, 50.625206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297684, 0.182490, -0.937060,
		-0.280075, 0.955063, 0.097022,
		0.912657, 0.233565, 0.335418,
		37.964802, 35.551739, 50.725830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393093, 36.025169, 50.283245>,  <37.325943, 35.388245, 50.491039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393093, 36.025169, 50.283245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.768501, 35.903549, 50.348644>,  <37.993748, 35.830578, 50.387882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.768501, 35.903549, 50.348644>,  <37.393093, 36.025169, 50.283245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768501, 35.903549, 50.348644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211006, 0.130381, -0.968750,
		0.273235, 0.943691, 0.186522,
		0.938520, -0.304053, 0.163499,
		38.050056, 35.812332, 50.397694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062603, 36.527370, 49.833668>,  <37.393093, 36.025169, 50.283245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062603, 36.527370, 49.833668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.030304, 36.925873, 49.846077>,  <37.010925, 37.164974, 49.853523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.030304, 36.925873, 49.846077>,  <37.062603, 36.527370, 49.833668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030304, 36.925873, 49.846077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873833, 0.085727, -0.478609,
		-0.479475, -0.011538, -0.877480,
		-0.080746, 0.996252, 0.031022,
		37.006081, 37.224747, 49.855385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377293, 36.740643, 49.166901>,  <37.062603, 36.527370, 49.833668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377293, 36.740643, 49.166901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.384583, 37.046581, 49.424480>,  <37.388954, 37.230145, 49.579029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.384583, 37.046581, 49.424480>,  <37.377293, 36.740643, 49.166901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384583, 37.046581, 49.424480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917559, 0.243060, -0.314655,
		-0.397183, 0.596596, -0.697365,
		0.018220, 0.764849, 0.643952,
		37.390049, 37.276035, 49.617664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542919, 37.400623, 48.782833>,  <37.377293, 36.740643, 49.166901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542919, 37.400623, 48.782833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.639866, 37.436958, 49.169201>,  <37.698036, 37.458759, 49.401024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.639866, 37.436958, 49.169201>,  <37.542919, 37.400623, 48.782833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639866, 37.436958, 49.169201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960914, 0.114823, -0.251912,
		-0.133793, 0.989224, -0.059459,
		0.242370, 0.090839, 0.965922,
		37.712578, 37.464211, 49.458977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798351, 37.959885, 49.284447>,  <37.542919, 37.400623, 48.782833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798351, 37.959885, 49.284447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.670002, 38.300133, 49.451057>,  <37.592991, 38.504280, 49.551022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.670002, 38.300133, 49.451057>,  <37.798351, 37.959885, 49.284447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670002, 38.300133, 49.451057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098374, 0.407469, -0.907905,
		-0.941999, -0.332298, -0.047068,
		-0.320874, 0.850616, 0.416525,
		37.573738, 38.555317, 49.576015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227238, 38.046009, 48.913033>,  <37.798351, 37.959885, 49.284447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227238, 38.046009, 48.913033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.336319, 38.401890, 49.059494>,  <37.401768, 38.615417, 49.147369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.336319, 38.401890, 49.059494>,  <37.227238, 38.046009, 48.913033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336319, 38.401890, 49.059494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020688, 0.385911, -0.922304,
		-0.961877, 0.243938, 0.123644,
		0.272701, 0.889701, 0.366152,
		37.418129, 38.668800, 49.169338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716953, 38.160103, 48.495449>,  <37.227238, 38.046009, 48.913033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716953, 38.160103, 48.495449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.426647, 38.270039, 48.243187>,  <36.252464, 38.335999, 48.091831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.426647, 38.270039, 48.243187>,  <36.716953, 38.160103, 48.495449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426647, 38.270039, 48.243187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482904, 0.449381, 0.751572,
		0.489965, 0.850013, -0.193426,
		-0.725768, 0.274838, -0.630655,
		36.208916, 38.352489, 48.053989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663544, 38.870811, 48.590080>,  <36.716953, 38.160103, 48.495449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663544, 38.870811, 48.590080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.328030, 38.699638, 48.455429>,  <36.126720, 38.596935, 48.374638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.328030, 38.699638, 48.455429>,  <36.663544, 38.870811, 48.590080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328030, 38.699638, 48.455429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462665, 0.234260, 0.855023,
		-0.287033, 0.872924, -0.394482,
		-0.838781, -0.427933, -0.336630,
		36.076397, 38.571259, 48.354439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176579, 39.337128, 48.717968>,  <36.663544, 38.870811, 48.590080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176579, 39.337128, 48.717968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.985451, 38.987255, 48.685413>,  <35.870773, 38.777332, 48.665882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.985451, 38.987255, 48.685413>,  <36.176579, 39.337128, 48.717968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985451, 38.987255, 48.685413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685488, 0.313313, 0.657222,
		-0.549361, 0.369820, -0.749290,
		-0.477816, -0.874682, -0.081385,
		35.842106, 38.724850, 48.660999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451862, 39.419003, 48.593582>,  <36.176579, 39.337128, 48.717968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451862, 39.419003, 48.593582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.473820, 39.042744, 48.727554>,  <35.486996, 38.816990, 48.807938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.473820, 39.042744, 48.727554>,  <35.451862, 39.419003, 48.593582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473820, 39.042744, 48.727554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676105, 0.211815, 0.705703,
		-0.734758, -0.265185, -0.624346,
		0.054896, -0.940644, 0.334926,
		35.490288, 38.760551, 48.828033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753777, 39.248554, 48.852425>,  <35.451862, 39.419003, 48.593582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753777, 39.248554, 48.852425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.918640, 38.912220, 48.992783>,  <35.017559, 38.710419, 49.076996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.918640, 38.912220, 48.992783>,  <34.753777, 39.248554, 48.852425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918640, 38.912220, 48.992783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496229, 0.115826, 0.860431,
		-0.764119, -0.528760, -0.369506,
		0.412163, -0.840831, 0.350891,
		35.042290, 38.659969, 49.098049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216942, 38.771080, 48.951611>,  <34.753777, 39.248554, 48.852425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216942, 38.771080, 48.951611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.512020, 38.683506, 49.207073>,  <34.689068, 38.630962, 49.360352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.512020, 38.683506, 49.207073>,  <34.216942, 38.771080, 48.951611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512020, 38.683506, 49.207073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633306, 0.103408, 0.766962,
		-0.233955, -0.970245, -0.062369,
		0.737691, -0.218934, 0.638655,
		34.733326, 38.617825, 49.398670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999634, 38.214378, 49.438206>,  <34.216942, 38.771080, 48.951611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999634, 38.214378, 49.438206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.302673, 38.405334, 49.616261>,  <34.484497, 38.519909, 49.723091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.302673, 38.405334, 49.616261>,  <33.999634, 38.214378, 49.438206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302673, 38.405334, 49.616261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528114, 0.047534, 0.847842,
		0.383597, -0.877402, 0.288131,
		0.757594, 0.477395, 0.445134,
		34.529953, 38.548553, 49.749802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166512, 37.832409, 50.145485>,  <33.999634, 38.214378, 49.438206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166512, 37.832409, 50.145485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.270351, 38.218697, 50.145103>,  <34.332653, 38.450470, 50.144875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.270351, 38.218697, 50.145103>,  <34.166512, 37.832409, 50.145485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270351, 38.218697, 50.145103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479931, 0.129866, 0.867641,
		0.838019, -0.224781, 0.497190,
		0.259597, 0.965716, -0.000950,
		34.348232, 38.508411, 50.144817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254547, 37.959568, 50.874092>,  <34.166512, 37.832409, 50.145485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254547, 37.959568, 50.874092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.250801, 38.327400, 50.716972>,  <34.248554, 38.548100, 50.622700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.250801, 38.327400, 50.716972>,  <34.254547, 37.959568, 50.874092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250801, 38.327400, 50.716972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453089, 0.346272, 0.821466,
		0.891416, 0.185668, 0.413407,
		-0.009369, 0.919578, -0.392796,
		34.247990, 38.603275, 50.599133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316044, 38.244286, 51.498856>,  <34.254547, 37.959568, 50.874092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316044, 38.244286, 51.498856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.219650, 38.539310, 51.246529>,  <34.161812, 38.716324, 51.095135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.219650, 38.539310, 51.246529>,  <34.316044, 38.244286, 51.498856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219650, 38.539310, 51.246529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368794, 0.531622, 0.762475,
		0.897728, 0.416387, 0.143895,
		-0.240987, 0.737563, -0.630814,
		34.147354, 38.760578, 51.057285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556190, 38.884609, 51.750862>,  <34.316044, 38.244286, 51.498856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556190, 38.884609, 51.750862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.257515, 38.992268, 51.507545>,  <34.078308, 39.056862, 51.361557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.257515, 38.992268, 51.507545>,  <34.556190, 38.884609, 51.750862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257515, 38.992268, 51.507545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283676, 0.698298, 0.657197,
		0.601649, 0.663279, -0.445061,
		-0.746690, 0.269149, -0.608287,
		34.033508, 39.073013, 51.325058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463654, 39.560192, 51.901100>,  <34.556190, 38.884609, 51.750862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463654, 39.560192, 51.901100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.130642, 39.444912, 51.711853>,  <33.930836, 39.375744, 51.598305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.130642, 39.444912, 51.711853>,  <34.463654, 39.560192, 51.901100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130642, 39.444912, 51.711853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521104, 0.697253, 0.492228,
		0.188023, 0.656337, -0.730664,
		-0.832525, -0.288201, -0.473119,
		33.880886, 39.358452, 51.569916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179180, 40.106289, 51.772972>,  <34.463654, 39.560192, 51.901100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179180, 40.106289, 51.772972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.851665, 39.882935, 51.719597>,  <33.655159, 39.748924, 51.687572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.851665, 39.882935, 51.719597>,  <34.179180, 40.106289, 51.772972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851665, 39.882935, 51.719597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540054, 0.670278, 0.508988,
		-0.194772, 0.488812, -0.850368,
		-0.818783, -0.558382, -0.133434,
		33.606030, 39.715420, 51.679565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592381, 40.632812, 51.610283>,  <34.179180, 40.106289, 51.772972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592381, 40.632812, 51.610283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.422176, 40.291431, 51.730656>,  <33.320053, 40.086605, 51.802879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.422176, 40.291431, 51.730656>,  <33.592381, 40.632812, 51.610283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422176, 40.291431, 51.730656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703237, 0.521143, 0.483599,
		-0.569558, -0.005851, -0.821930,
		-0.425513, -0.853449, 0.300936,
		33.294521, 40.035397, 51.820938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913570, 40.672840, 51.424671>,  <33.592381, 40.632812, 51.610283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913570, 40.672840, 51.424671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.891449, 40.409622, 51.725048>,  <32.878174, 40.251690, 51.905273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.891449, 40.409622, 51.725048>,  <32.913570, 40.672840, 51.424671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891449, 40.409622, 51.725048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711983, 0.553275, 0.432397,
		-0.700016, -0.510743, -0.499119,
		-0.055306, -0.658049, 0.750942,
		32.874859, 40.212208, 51.950329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244122, 40.593784, 51.558563>,  <32.913570, 40.672840, 51.424671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244122, 40.593784, 51.558563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.409554, 40.455688, 51.895554>,  <32.508812, 40.372829, 52.097748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.409554, 40.455688, 51.895554>,  <32.244122, 40.593784, 51.558563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409554, 40.455688, 51.895554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611085, 0.580678, 0.537949,
		-0.674927, -0.737307, 0.029185,
		0.413580, -0.345242, 0.842472,
		32.533627, 40.352116, 52.148296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718332, 40.569016, 52.013908>,  <32.244122, 40.593784, 51.558563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718332, 40.569016, 52.013908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.047783, 40.570938, 52.240753>,  <32.245453, 40.572090, 52.376862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.047783, 40.570938, 52.240753>,  <31.718332, 40.569016, 52.013908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047783, 40.570938, 52.240753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424186, 0.668951, 0.610386,
		-0.376439, -0.743291, 0.553002,
		0.823626, 0.004802, 0.567113,
		32.294872, 40.572380, 52.410889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470963, 40.751137, 52.626766>,  <31.718332, 40.569016, 52.013908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470963, 40.751137, 52.626766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.863411, 40.794601, 52.690754>,  <32.098881, 40.820683, 52.729145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.863411, 40.794601, 52.690754>,  <31.470963, 40.751137, 52.626766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863411, 40.794601, 52.690754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186801, 0.746528, 0.638593,
		-0.050025, -0.656420, 0.752735,
		0.981123, 0.108666, 0.159965,
		32.157749, 40.827202, 52.738743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563211, 40.542576, 53.359894>,  <31.470963, 40.751137, 52.626766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563211, 40.542576, 53.359894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.857855, 40.794193, 53.260529>,  <32.034641, 40.945164, 53.200909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.857855, 40.794193, 53.260529>,  <31.563211, 40.542576, 53.359894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857855, 40.794193, 53.260529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210174, 0.562021, 0.799975,
		0.642836, -0.537057, 0.546198,
		0.736607, 0.629049, -0.248411,
		32.078838, 40.982906, 53.186005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988094, 40.515430, 54.013145>,  <31.563211, 40.542576, 53.359894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988094, 40.515430, 54.013145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.047195, 40.830818, 53.774319>,  <32.082657, 41.020050, 53.631023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.047195, 40.830818, 53.774319>,  <31.988094, 40.515430, 54.013145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047195, 40.830818, 53.774319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064104, 0.594792, 0.801320,
		0.986945, -0.156671, 0.037338,
		0.147752, 0.788465, -0.597070,
		32.091522, 41.067356, 53.595200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553093, 40.803013, 54.295055>,  <31.988094, 40.515430, 54.013145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553093, 40.803013, 54.295055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.340237, 41.070621, 54.087505>,  <32.212521, 41.231186, 53.962975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.340237, 41.070621, 54.087505>,  <32.553093, 40.803013, 54.295055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340237, 41.070621, 54.087505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003143, 0.611294, 0.791397,
		0.846647, 0.422769, -0.323195,
		-0.532145, 0.669019, -0.518879,
		32.180592, 41.271328, 53.931843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731113, 41.347900, 54.651009>,  <32.553093, 40.803013, 54.295055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731113, 41.347900, 54.651009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.433788, 41.490929, 54.424866>,  <32.255394, 41.576744, 54.289181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.433788, 41.490929, 54.424866>,  <32.731113, 41.347900, 54.651009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433788, 41.490929, 54.424866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263966, 0.619790, 0.739042,
		0.614663, 0.698574, -0.366311,
		-0.743311, 0.357568, -0.565361,
		32.210796, 41.598198, 54.255257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673271, 42.003731, 54.892788>,  <32.731113, 41.347900, 54.651009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673271, 42.003731, 54.892788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.318127, 41.904652, 54.737686>,  <32.105042, 41.845203, 54.644627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.318127, 41.904652, 54.737686>,  <32.673271, 42.003731, 54.892788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318127, 41.904652, 54.737686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460110, 0.473121, 0.751303,
		-0.002641, 0.845460, -0.534032,
		-0.887858, -0.247697, -0.387755,
		32.051769, 41.830341, 54.621361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164478, 42.586365, 54.887615>,  <32.673271, 42.003731, 54.892788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164478, 42.586365, 54.887615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.945427, 42.251678, 54.886478>,  <31.813995, 42.050865, 54.885796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.945427, 42.251678, 54.886478>,  <32.164478, 42.586365, 54.887615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945427, 42.251678, 54.886478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529444, 0.343882, 0.775522,
		-0.647914, 0.426204, -0.631314,
		-0.547628, -0.836717, -0.002845,
		31.781139, 42.000664, 54.885624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448038, 42.833317, 55.103149>,  <32.164478, 42.586365, 54.887615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448038, 42.833317, 55.103149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.523178, 42.450253, 55.190414>,  <31.568262, 42.220413, 55.242775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.523178, 42.450253, 55.190414>,  <31.448038, 42.833317, 55.103149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523178, 42.450253, 55.190414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438689, 0.116924, 0.891000,
		-0.878786, -0.263080, -0.398152,
		0.187850, -0.957663, 0.218161,
		31.579533, 42.162952, 55.255863>
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
