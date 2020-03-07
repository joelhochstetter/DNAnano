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
	<36.471062, 52.528446, 49.440815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784672, 52.632462, 49.666267>,  <36.972839, 52.694870, 49.801537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784672, 52.632462, 49.666267>,  <36.471062, 52.528446, 49.440815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784672, 52.632462, 49.666267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465373, -0.354628, 0.810967,
		0.410761, -0.898120, -0.157024,
		0.784030, 0.260039, 0.563628,
		37.019882, 52.710472, 49.835358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755722, 51.969486, 49.920979>,  <36.471062, 52.528446, 49.440815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755722, 51.969486, 49.920979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839432, 52.327988, 50.077408>,  <36.889660, 52.543087, 50.171265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839432, 52.327988, 50.077408>,  <36.755722, 51.969486, 49.920979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839432, 52.327988, 50.077408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345151, -0.306483, 0.887095,
		0.914917, -0.320628, 0.245203,
		0.209277, 0.896251, 0.391072,
		36.902214, 52.596863, 50.194729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284115, 51.849594, 50.464119>,  <36.755722, 51.969486, 49.920979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284115, 51.849594, 50.464119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028423, 52.152676, 50.516685>,  <36.875008, 52.334526, 50.548225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028423, 52.152676, 50.516685>,  <37.284115, 51.849594, 50.464119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028423, 52.152676, 50.516685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234991, -0.355172, 0.904783,
		0.732235, 0.547479, 0.405090,
		-0.639227, 0.757706, 0.131417,
		36.836655, 52.379986, 50.556110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400951, 52.365990, 51.109955>,  <37.284115, 51.849594, 50.464119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400951, 52.365990, 51.109955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009415, 52.387150, 51.030891>,  <36.774494, 52.399845, 50.983452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009415, 52.387150, 51.030891>,  <37.400951, 52.365990, 51.109955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009415, 52.387150, 51.030891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195851, -0.521986, 0.830164,
		-0.059259, 0.851312, 0.521303,
		-0.978841, 0.052903, -0.197663,
		36.715763, 52.403019, 50.971592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942715, 52.775707, 51.017952>,  <37.400951, 52.365990, 51.109955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942715, 52.775707, 51.017952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660252, 52.959763, 50.802689>,  <37.490772, 53.070194, 50.673531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660252, 52.959763, 50.802689>,  <37.942715, 52.775707, 51.017952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660252, 52.959763, 50.802689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608010, -0.783567, 0.127852,
		-0.362851, 0.417488, 0.833092,
		-0.706161, 0.460137, -0.538155,
		37.448402, 53.097805, 50.641243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524624, 52.419060, 51.420712>,  <37.942715, 52.775707, 51.017952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524624, 52.419060, 51.420712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646259, 52.078461, 51.591587>,  <38.719242, 51.874104, 51.694111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646259, 52.078461, 51.591587>,  <38.524624, 52.419060, 51.420712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646259, 52.078461, 51.591587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523487, -0.225295, -0.821708,
		0.795922, 0.473499, 0.377236,
		0.304088, -0.851493, 0.427188,
		38.737484, 51.823013, 51.719742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213516, 52.424469, 51.602077>,  <38.524624, 52.419060, 51.420712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213516, 52.424469, 51.602077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099056, 52.047127, 51.534916>,  <39.030380, 51.820721, 51.494621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099056, 52.047127, 51.534916>,  <39.213516, 52.424469, 51.602077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099056, 52.047127, 51.534916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534041, -0.011530, -0.845380,
		0.795561, -0.331572, 0.507092,
		-0.286151, -0.943359, -0.167900,
		39.013210, 51.764118, 51.484547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801418, 52.221737, 51.467022>,  <39.213516, 52.424469, 51.602077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801418, 52.221737, 51.467022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513329, 52.005043, 51.293678>,  <39.340473, 51.875027, 51.189671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513329, 52.005043, 51.293678>,  <39.801418, 52.221737, 51.467022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513329, 52.005043, 51.293678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514296, 0.002300, -0.857609,
		0.465592, -0.840547, 0.276955,
		-0.720224, -0.541734, -0.433361,
		39.297260, 51.842522, 51.163670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265633, 51.719833, 51.761528>,  <39.801418, 52.221737, 51.467022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265633, 51.719833, 51.761528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236248, 51.604897, 51.379524>,  <40.218616, 51.535934, 51.150322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236248, 51.604897, 51.379524>,  <40.265633, 51.719833, 51.761528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236248, 51.604897, 51.379524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778056, 0.615560, -0.125357,
		0.623885, 0.733840, -0.268788,
		-0.073463, -0.287341, -0.955007,
		40.214211, 51.518696, 51.093021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625942, 51.027771, 51.941761>,  <40.265633, 51.719833, 51.761528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625942, 51.027771, 51.941761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994293, 51.018147, 51.786114>,  <41.215302, 51.012371, 51.692726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994293, 51.018147, 51.786114>,  <40.625942, 51.027771, 51.941761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994293, 51.018147, 51.786114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385175, -0.098085, 0.917616,
		-0.060248, -0.994887, -0.081056,
		0.920875, -0.024064, -0.389115,
		41.270557, 51.010925, 51.669380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050385, 50.929775, 52.677292>,  <40.625942, 51.027771, 51.941761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050385, 50.929775, 52.677292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760124, 51.048920, 52.925388>,  <40.585968, 51.120407, 53.074249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760124, 51.048920, 52.925388>,  <41.050385, 50.929775, 52.677292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760124, 51.048920, 52.925388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680019, 0.173059, 0.712478,
		0.104880, 0.938792, -0.328132,
		-0.725654, 0.297860, 0.620246,
		40.542427, 51.138279, 53.111462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.294586, 51.486156, 53.100445>,  <41.050385, 50.929775, 52.677292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.294586, 51.486156, 53.100445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000481, 51.342033, 53.330078>,  <40.824017, 51.255558, 53.467857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000481, 51.342033, 53.330078>,  <41.294586, 51.486156, 53.100445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000481, 51.342033, 53.330078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601990, 0.042046, 0.797396,
		-0.311449, 0.931884, 0.185989,
		-0.735260, -0.360312, 0.574080,
		40.779903, 51.233940, 53.502304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.875763, 51.181210, 52.856503>,  <41.294586, 51.486156, 53.100445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.875763, 51.181210, 52.856503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155533, 51.463913, 52.813992>,  <42.323395, 51.633533, 52.788486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155533, 51.463913, 52.813992>,  <41.875763, 51.181210, 52.856503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.155533, 51.463913, 52.813992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713267, 0.699687, -0.041093,
		0.045318, 0.104545, 0.993487,
		0.699426, 0.706759, -0.106277,
		42.365360, 51.675941, 52.782108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.930691, 51.801628, 53.443596>,  <41.875763, 51.181210, 52.856503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.930691, 51.801628, 53.443596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051743, 51.908188, 53.077549>,  <42.124374, 51.972122, 52.857918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051743, 51.908188, 53.077549>,  <41.930691, 51.801628, 53.443596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.051743, 51.908188, 53.077549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513390, 0.854514, 0.078977,
		0.803024, 0.445913, 0.395366,
		0.302629, 0.266397, -0.915122,
		42.142532, 51.988106, 52.803013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.641186, 52.117031, 53.439690>,  <41.930691, 51.801628, 53.443596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.641186, 52.117031, 53.439690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766418, 52.450539, 53.257786>,  <42.841560, 52.650642, 53.148643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766418, 52.450539, 53.257786>,  <42.641186, 52.117031, 53.439690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.766418, 52.450539, 53.257786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482056, 0.552080, 0.680316,
		0.818292, 0.006226, 0.574770,
		0.313083, 0.833768, -0.454764,
		42.860344, 52.700668, 53.121357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.196659, 52.540745, 53.868168>,  <42.641186, 52.117031, 53.439690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.196659, 52.540745, 53.868168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.946156, 52.739792, 53.628105>,  <42.795853, 52.859219, 53.484070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.946156, 52.739792, 53.628105>,  <43.196659, 52.540745, 53.868168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.946156, 52.739792, 53.628105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343081, 0.515354, 0.785306,
		0.700071, 0.697704, -0.152021,
		-0.626255, 0.497614, -0.600154,
		42.758278, 52.889076, 53.448059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.988190, 53.352264, 53.931190>,  <43.196659, 52.540745, 53.868168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.988190, 53.352264, 53.931190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.656631, 53.172363, 53.798134>,  <42.457695, 53.064423, 53.718300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.656631, 53.172363, 53.798134>,  <42.988190, 53.352264, 53.931190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.656631, 53.172363, 53.798134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467212, 0.229587, 0.853817,
		-0.307633, 0.863143, -0.400433,
		-0.828900, -0.449749, -0.332642,
		42.407963, 53.037437, 53.698341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.321209, 53.787033, 54.064617>,  <42.988190, 53.352264, 53.931190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.321209, 53.787033, 54.064617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184803, 53.419537, 53.984993>,  <42.102959, 53.199039, 53.937218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184803, 53.419537, 53.984993>,  <42.321209, 53.787033, 54.064617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184803, 53.419537, 53.984993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589645, 0.044131, 0.806456,
		-0.732141, 0.392384, -0.556781,
		-0.341012, -0.918742, -0.199057,
		42.082500, 53.143913, 53.925274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.445560, 53.940479, 53.332214>,  <42.321209, 53.787033, 54.064617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.445560, 53.940479, 53.332214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.663445, 54.252041, 53.207893>,  <42.794174, 54.438976, 53.133301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.663445, 54.252041, 53.207893>,  <42.445560, 53.940479, 53.332214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.663445, 54.252041, 53.207893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289636, 0.173077, 0.941358,
		0.787022, -0.602786, -0.131323,
		0.544709, 0.778906, -0.310804,
		42.826859, 54.485714, 53.114651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.156857, 53.962757, 53.498363>,  <42.445560, 53.940479, 53.332214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.156857, 53.962757, 53.498363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.024616, 54.338440, 53.461296>,  <42.945274, 54.563850, 53.439056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.024616, 54.338440, 53.461296>,  <43.156857, 53.962757, 53.498363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.024616, 54.338440, 53.461296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278472, 0.190896, 0.941282,
		0.901753, 0.285379, -0.324653,
		-0.330597, 0.939211, -0.092671,
		42.925438, 54.620205, 53.433495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.715958, 54.494465, 53.634022>,  <43.156857, 53.962757, 53.498363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.715958, 54.494465, 53.634022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373638, 54.690029, 53.701630>,  <43.168247, 54.807369, 53.742195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373638, 54.690029, 53.701630>,  <43.715958, 54.494465, 53.634022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.373638, 54.690029, 53.701630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340328, 0.286055, 0.895739,
		0.389586, 0.824099, -0.411196,
		-0.855803, 0.488910, 0.169021,
		43.116898, 54.836700, 53.752335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.910870, 55.241489, 53.820652>,  <43.715958, 54.494465, 53.634022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.910870, 55.241489, 53.820652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.553204, 55.125397, 53.957031>,  <43.338604, 55.055740, 54.038857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.553204, 55.125397, 53.957031>,  <43.910870, 55.241489, 53.820652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.553204, 55.125397, 53.957031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236511, 0.340412, 0.910045,
		-0.380182, 0.894364, -0.235742,
		-0.894161, -0.290227, 0.340946,
		43.284954, 55.038330, 54.059315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.615597, 55.785957, 54.353199>,  <43.910870, 55.241489, 53.820652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.615597, 55.785957, 54.353199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.426861, 55.438446, 54.413330>,  <43.313618, 55.229939, 54.449409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.426861, 55.438446, 54.413330>,  <43.615597, 55.785957, 54.353199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.426861, 55.438446, 54.413330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169501, 0.077940, 0.982443,
		-0.865238, 0.489036, 0.110483,
		-0.471839, -0.868774, 0.150329,
		43.285309, 55.177814, 54.458427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.546249, 55.857861, 55.110958>,  <43.615597, 55.785957, 54.353199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.546249, 55.857861, 55.110958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.839893, 55.809273, 55.378189>,  <44.016079, 55.780121, 55.538528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.839893, 55.809273, 55.378189>,  <43.546249, 55.857861, 55.110958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.839893, 55.809273, 55.378189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659964, -0.103893, -0.744079,
		0.159793, 0.987143, 0.003897,
		0.734108, -0.121470, 0.668080,
		44.060127, 55.772831, 55.578613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.084606, 56.503716, 55.217068>,  <43.546249, 55.857861, 55.110958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.084606, 56.503716, 55.217068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.224831, 56.132843, 55.269882>,  <44.308968, 55.910320, 55.301571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.224831, 56.132843, 55.269882>,  <44.084606, 56.503716, 55.217068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.224831, 56.132843, 55.269882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742953, 0.189491, -0.641961,
		0.570198, 0.323142, 0.755284,
		0.350564, -0.927185, 0.132032,
		44.329998, 55.854687, 55.309490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.776546, 56.519806, 55.524467>,  <44.084606, 56.503716, 55.217068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.776546, 56.519806, 55.524467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.752182, 56.185066, 55.306854>,  <44.737564, 55.984222, 55.176289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.752182, 56.185066, 55.306854>,  <44.776546, 56.519806, 55.524467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.752182, 56.185066, 55.306854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830789, 0.259593, -0.492343,
		0.553244, -0.481964, 0.679435,
		-0.060915, -0.836852, -0.544029,
		44.733906, 55.934010, 55.143646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.230709, 55.878071, 55.689606>,  <44.776546, 56.519806, 55.524467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.230709, 55.878071, 55.689606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.164814, 55.895805, 55.295471>,  <45.125278, 55.906445, 55.058990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.164814, 55.895805, 55.295471>,  <45.230709, 55.878071, 55.689606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.164814, 55.895805, 55.295471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980680, 0.114212, -0.158818,
		0.105496, -0.992466, -0.062294,
		-0.164737, 0.044336, -0.985341,
		45.115395, 55.909107, 54.999870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.800137, 55.606762, 55.206429>,  <45.230709, 55.878071, 55.689606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.800137, 55.606762, 55.206429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.612026, 55.870586, 54.971886>,  <45.499161, 56.028881, 54.831158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.612026, 55.870586, 54.971886>,  <45.800137, 55.606762, 55.206429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.612026, 55.870586, 54.971886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861323, 0.198288, -0.467766,
		-0.192251, -0.725026, -0.661345,
		-0.470279, 0.659560, -0.586360,
		45.470943, 56.068455, 54.795979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.836548, 55.418541, 54.557526>,  <45.800137, 55.606762, 55.206429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.836548, 55.418541, 54.557526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.831959, 55.818512, 54.559418>,  <45.829205, 56.058495, 54.560555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.831959, 55.818512, 54.559418>,  <45.836548, 55.418541, 54.557526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.831959, 55.818512, 54.559418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777016, 0.011892, -0.629369,
		-0.629377, -0.003540, -0.777093,
		-0.011470, 0.999923, 0.004734,
		45.828518, 56.118488, 54.560837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.366512, 55.914837, 54.421162>,  <45.836548, 55.418541, 54.557526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.366512, 55.914837, 54.421162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.311996, 56.310135, 54.448853>,  <46.279289, 56.547314, 54.465469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.311996, 56.310135, 54.448853>,  <46.366512, 55.914837, 54.421162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.311996, 56.310135, 54.448853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982927, 0.143610, -0.115023,
		-0.123614, 0.052373, -0.990947,
		-0.136286, 0.988248, 0.069231,
		46.271111, 56.606609, 54.469624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.667271, 56.213871, 53.854504>,  <46.366512, 55.914837, 54.421162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.667271, 56.213871, 53.854504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.652424, 56.468410, 54.162704>,  <46.643517, 56.621136, 54.347626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.652424, 56.468410, 54.162704>,  <46.667271, 56.213871, 53.854504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.652424, 56.468410, 54.162704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931627, 0.300968, -0.203689,
		-0.361515, 0.710264, -0.604013,
		-0.037116, 0.636352, 0.770506,
		46.641289, 56.659317, 54.393856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.078609, 56.846741, 53.588379>,  <46.667271, 56.213871, 53.854504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.078609, 56.846741, 53.588379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.070831, 56.812462, 53.986832>,  <47.066162, 56.791893, 54.225903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.070831, 56.812462, 53.986832>,  <47.078609, 56.846741, 53.588379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.070831, 56.812462, 53.986832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999543, 0.021412, 0.021356,
		-0.023160, 0.996091, 0.085242,
		-0.019447, -0.085698, 0.996131,
		47.064999, 56.786751, 54.285671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.558853, 57.335754, 53.776134>,  <47.078609, 56.846741, 53.588379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.558853, 57.335754, 53.776134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.562309, 57.061455, 54.067249>,  <47.564384, 56.896873, 54.241917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.562309, 57.061455, 54.067249>,  <47.558853, 57.335754, 53.776134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.562309, 57.061455, 54.067249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999148, 0.035291, 0.021386,
		-0.040349, 0.726979, 0.685473,
		0.008644, -0.685752, 0.727784,
		47.564903, 56.855728, 54.285583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.075615, 57.564182, 54.048298>,  <47.558853, 57.335754, 53.776134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.075615, 57.564182, 54.048298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.007328, 57.199272, 54.197220>,  <47.966354, 56.980328, 54.286572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.007328, 57.199272, 54.197220>,  <48.075615, 57.564182, 54.048298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.007328, 57.199272, 54.197220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974914, -0.101626, 0.198026,
		-0.142818, 0.396774, 0.906738,
		-0.170720, -0.912273, 0.372307,
		47.956112, 56.925591, 54.308910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.196407, 57.488651, 54.842133>,  <48.075615, 57.564182, 54.048298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.196407, 57.488651, 54.842133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.270123, 57.140869, 54.658791>,  <48.314350, 56.932201, 54.548786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.270123, 57.140869, 54.658791>,  <48.196407, 57.488651, 54.842133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.270123, 57.140869, 54.658791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902172, -0.035421, 0.429920,
		-0.390031, -0.492741, 0.777870,
		0.184287, -0.869455, -0.458353,
		48.325409, 56.880032, 54.521286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.411968, 57.004818, 55.409039>,  <48.196407, 57.488651, 54.842133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.411968, 57.004818, 55.409039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.581356, 56.972088, 55.048157>,  <48.682991, 56.952450, 54.831627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.581356, 56.972088, 55.048157>,  <48.411968, 57.004818, 55.409039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.581356, 56.972088, 55.048157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895826, 0.186000, 0.403609,
		0.134785, -0.979137, 0.152067,
		0.423473, -0.081825, -0.902206,
		48.708397, 56.947540, 54.777496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.029133, 56.573685, 55.438194>,  <48.411968, 57.004818, 55.409039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.029133, 56.573685, 55.438194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.058083, 56.846561, 55.147163>,  <49.075451, 57.010288, 54.972546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.058083, 56.846561, 55.147163>,  <49.029133, 56.573685, 55.438194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.058083, 56.846561, 55.147163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887389, 0.288972, 0.359215,
		0.455305, -0.671643, -0.584459,
		0.072372, 0.682195, -0.727579,
		49.079796, 57.051220, 54.928890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.561939, 56.373497, 54.918900>,  <49.029133, 56.573685, 55.438194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.561939, 56.373497, 54.918900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.493401, 56.765282, 54.961403>,  <49.452278, 57.000355, 54.986904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.493401, 56.765282, 54.961403>,  <49.561939, 56.373497, 54.918900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.493401, 56.765282, 54.961403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907651, 0.114990, 0.403666,
		0.383158, 0.165612, -0.908715,
		-0.171346, 0.979464, 0.106259,
		49.441998, 57.059120, 54.993282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.270058, 56.832748, 54.597691>,  <49.561939, 56.373497, 54.918900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.270058, 56.832748, 54.597691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.052917, 56.980080, 54.899590>,  <49.922634, 57.068478, 55.080730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.052917, 56.980080, 54.899590>,  <50.270058, 56.832748, 54.597691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.052917, 56.980080, 54.899590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835519, 0.145938, 0.529727,
		0.084969, 0.918169, -0.386970,
		-0.542853, 0.368331, 0.754747,
		49.890060, 57.090580, 55.126015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.380672, 57.630920, 54.710365>,  <50.270058, 56.832748, 54.597691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.380672, 57.630920, 54.710365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.287289, 57.468330, 55.063698>,  <50.231258, 57.370777, 55.275700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.287289, 57.468330, 55.063698>,  <50.380672, 57.630920, 54.710365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.287289, 57.468330, 55.063698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960761, 0.043518, 0.273944,
		-0.149792, 0.912627, 0.380362,
		-0.233456, -0.406471, 0.883334,
		50.217251, 57.346390, 55.328697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.679527, 57.999733, 55.349384>,  <50.380672, 57.630920, 54.710365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.679527, 57.999733, 55.349384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.651356, 57.610046, 55.435112>,  <50.634453, 57.376232, 55.486549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.651356, 57.610046, 55.435112>,  <50.679527, 57.999733, 55.349384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.651356, 57.610046, 55.435112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997025, -0.062002, 0.045783,
		-0.031314, 0.216909, 0.975689,
		-0.070425, -0.974221, 0.214323,
		50.630230, 57.317780, 55.499409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.126591, 57.855194, 55.867840>,  <50.679527, 57.999733, 55.349384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.126591, 57.855194, 55.867840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.052425, 57.504799, 55.689728>,  <51.007927, 57.294563, 55.582863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.052425, 57.504799, 55.689728>,  <51.126591, 57.855194, 55.867840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.052425, 57.504799, 55.689728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951196, -0.273744, 0.142446,
		-0.246672, -0.397133, 0.883990,
		-0.185417, -0.875985, -0.445277,
		50.996799, 57.242004, 55.556145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.464733, 57.224178, 56.299213>,  <51.126591, 57.855194, 55.867840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.464733, 57.224178, 56.299213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.427376, 57.135372, 55.910988>,  <51.404961, 57.082088, 55.678055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.427376, 57.135372, 55.910988>,  <51.464733, 57.224178, 56.299213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.427376, 57.135372, 55.910988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976946, -0.208397, -0.046339,
		-0.191974, -0.952513, 0.236358,
		-0.093395, -0.222013, -0.970561,
		51.399357, 57.068768, 55.619820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.966717, 57.810474, 56.227818>,  <51.464733, 57.224178, 56.299213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.966717, 57.810474, 56.227818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.336250, 57.898155, 56.353340>,  <52.557972, 57.950764, 56.428654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.336250, 57.898155, 56.353340>,  <51.966717, 57.810474, 56.227818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.336250, 57.898155, 56.353340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017277, -0.842842, 0.537884,
		0.382394, -0.491496, -0.782436,
		0.923838, 0.219202, 0.313806,
		52.613403, 57.963917, 56.447483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.502033, 57.220718, 56.023849>,  <51.966717, 57.810474, 56.227818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.502033, 57.220718, 56.023849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.604378, 57.421272, 56.354462>,  <52.665787, 57.541603, 56.552830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.604378, 57.421272, 56.354462>,  <52.502033, 57.220718, 56.023849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.604378, 57.421272, 56.354462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107809, -0.834854, 0.539811,
		0.960683, -0.227225, -0.159555,
		0.255863, 0.501386, 0.826527,
		52.681137, 57.571690, 56.602421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.157761, 56.929829, 56.398849>,  <52.502033, 57.220718, 56.023849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.157761, 56.929829, 56.398849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.831791, 57.065407, 56.586899>,  <52.636208, 57.146755, 56.699726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.831791, 57.065407, 56.586899>,  <53.157761, 56.929829, 56.398849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.831791, 57.065407, 56.586899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120542, -0.892541, 0.434558,
		0.566894, 0.297462, 0.768211,
		-0.814924, 0.338950, 0.470119,
		52.587315, 57.167091, 56.727936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.908401, 56.719891, 56.517910>,  <53.157761, 56.929829, 56.398849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.908401, 56.719891, 56.517910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.758514, 56.389168, 56.350113>,  <53.668583, 56.190735, 56.249435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.758514, 56.389168, 56.350113>,  <53.908401, 56.719891, 56.517910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.758514, 56.389168, 56.350113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700178, 0.044219, -0.712598,
		0.607732, -0.560743, 0.562343,
		-0.374718, -0.826808, -0.419493,
		53.646099, 56.141125, 56.224266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.374092, 56.162148, 56.557102>,  <53.908401, 56.719891, 56.517910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.374092, 56.162148, 56.557102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.121605, 56.080303, 56.257851>,  <53.970112, 56.031197, 56.078300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.121605, 56.080303, 56.257851>,  <54.374092, 56.162148, 56.557102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.121605, 56.080303, 56.257851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770809, -0.058387, -0.634385,
		0.086121, -0.977101, 0.194572,
		-0.631219, -0.204611, -0.748129,
		53.932240, 56.018921, 56.033413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.991039, 55.788826, 56.473160>,  <54.374092, 56.162148, 56.557102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.991039, 55.788826, 56.473160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.734619, 55.508137, 56.348816>,  <54.580769, 55.339722, 56.274208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.734619, 55.508137, 56.348816>,  <54.991039, 55.788826, 56.473160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.734619, 55.508137, 56.348816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753612, -0.498813, -0.428083,
		0.145338, -0.508689, 0.848594,
		-0.641051, -0.701727, -0.310858,
		54.542305, 55.297619, 56.255558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.558731, 55.723198, 55.834427>,  <54.991039, 55.788826, 56.473160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.558731, 55.723198, 55.834427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.484375, 55.398613, 55.612808>,  <55.439762, 55.203861, 55.479836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.484375, 55.398613, 55.612808>,  <55.558731, 55.723198, 55.834427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.484375, 55.398613, 55.612808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573033, 0.547587, -0.609739,
		0.798172, 0.204145, -0.566786,
		-0.185889, -0.811464, -0.554050,
		55.428608, 55.155174, 55.446594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.931038, 55.743889, 55.192642>,  <55.558731, 55.723198, 55.834427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.931038, 55.743889, 55.192642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.579384, 55.555073, 55.166435>,  <55.368389, 55.441784, 55.150711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.579384, 55.555073, 55.166435>,  <55.931038, 55.743889, 55.192642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.579384, 55.555073, 55.166435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384861, 0.784299, -0.486576,
		0.281069, -0.402553, -0.871178,
		-0.879137, -0.472044, -0.065515,
		55.315643, 55.413460, 55.146782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.226841, 56.192486, 55.787151>,  <55.931038, 55.743889, 55.192642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.226841, 56.192486, 55.787151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.486771, 56.348026, 56.048386>,  <56.642731, 56.441353, 56.205124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.486771, 56.348026, 56.048386>,  <56.226841, 56.192486, 55.787151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.486771, 56.348026, 56.048386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430043, 0.520382, -0.737744,
		-0.626727, 0.760259, 0.170934,
		0.649828, 0.388855, 0.653081,
		56.681721, 56.464684, 56.244308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.287426, 56.960064, 55.674725>,  <56.226841, 56.192486, 55.787151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.287426, 56.960064, 55.674725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.625252, 56.825943, 55.841713>,  <56.827950, 56.745472, 55.941906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.625252, 56.825943, 55.841713>,  <56.287426, 56.960064, 55.674725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.625252, 56.825943, 55.841713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519064, 0.321275, -0.792058,
		0.131456, 0.885638, 0.445381,
		0.844566, -0.335302, 0.417469,
		56.878620, 56.725353, 55.966953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.823227, 57.448719, 55.426430>,  <56.287426, 56.960064, 55.674725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.823227, 57.448719, 55.426430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.999870, 57.110313, 55.545921>,  <57.105858, 56.907269, 55.617615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.999870, 57.110313, 55.545921>,  <56.823227, 57.448719, 55.426430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.999870, 57.110313, 55.545921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744063, 0.159286, -0.648844,
		0.501349, 0.508807, 0.699832,
		0.441610, -0.846016, 0.298726,
		57.132355, 56.856510, 55.635540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.523445, 57.571274, 55.620663>,  <56.823227, 57.448719, 55.426430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.523445, 57.571274, 55.620663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.499023, 57.188793, 55.506149>,  <57.484371, 56.959305, 55.437443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.499023, 57.188793, 55.506149>,  <57.523445, 57.571274, 55.620663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.499023, 57.188793, 55.506149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768382, 0.138037, -0.624928,
		0.637073, -0.258127, 0.726298,
		-0.061055, -0.956199, -0.286280,
		57.480705, 56.901932, 55.420265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.224129, 57.359612, 55.590397>,  <57.523445, 57.571274, 55.620663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.224129, 57.359612, 55.590397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.016632, 57.103378, 55.363922>,  <57.892136, 56.949638, 55.228039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.016632, 57.103378, 55.363922>,  <58.224129, 57.359612, 55.590397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.016632, 57.103378, 55.363922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771289, -0.064957, -0.633161,
		0.368813, -0.765139, 0.527768,
		-0.518739, -0.640581, -0.566186,
		57.861012, 56.911205, 55.194065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.586788, 56.735580, 55.304306>,  <58.224129, 57.359612, 55.590397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.586788, 56.735580, 55.304306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.308525, 56.877251, 55.054306>,  <58.141567, 56.962254, 54.904308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.308525, 56.877251, 55.054306>,  <58.586788, 56.735580, 55.304306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.308525, 56.877251, 55.054306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700560, 0.141941, -0.699334,
		-0.158972, -0.924346, -0.346861,
		-0.695660, 0.354172, -0.624996,
		58.099827, 56.983501, 54.866806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.772526, 56.706581, 56.047432>,  <58.586788, 56.735580, 55.304306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.772526, 56.706581, 56.047432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.575180, 56.585224, 56.373512>,  <58.456772, 56.512409, 56.569160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.575180, 56.585224, 56.373512>,  <58.772526, 56.706581, 56.047432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.575180, 56.585224, 56.373512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699535, -0.695392, 0.164562,
		0.516956, 0.651448, 0.555312,
		-0.493363, -0.303388, 0.815198,
		58.427170, 56.494209, 56.618073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.250065, 56.881020, 56.570457>,  <58.772526, 56.706581, 56.047432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.250065, 56.881020, 56.570457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.007385, 56.573849, 56.652634>,  <58.861778, 56.389545, 56.701939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.007385, 56.573849, 56.652634>,  <59.250065, 56.881020, 56.570457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.007385, 56.573849, 56.652634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783289, -0.621574, -0.010210,
		0.135535, 0.154723, 0.978617,
		-0.606703, -0.767923, 0.205438,
		58.825375, 56.343472, 56.714264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.559689, 56.184231, 56.689705>,  <59.250065, 56.881020, 56.570457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.559689, 56.184231, 56.689705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.766113, 56.501774, 56.561035>,  <59.889969, 56.692299, 56.483833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.766113, 56.501774, 56.561035>,  <59.559689, 56.184231, 56.689705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.766113, 56.501774, 56.561035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852366, -0.438878, 0.284354,
		0.084559, -0.420930, -0.903143,
		0.516063, 0.793854, -0.321675,
		59.920933, 56.739929, 56.464531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.161873, 55.847912, 56.364487>,  <59.559689, 56.184231, 56.689705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.161873, 55.847912, 56.364487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.253403, 56.230072, 56.439156>,  <60.308319, 56.459370, 56.483959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.253403, 56.230072, 56.439156>,  <60.161873, 55.847912, 56.364487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.253403, 56.230072, 56.439156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920163, -0.274864, 0.278836,
		0.317711, 0.107970, -0.942020,
		0.228821, 0.955402, 0.186677,
		60.322048, 56.516693, 56.495159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.817497, 55.930759, 56.245987>,  <60.161873, 55.847912, 56.364487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.817497, 55.930759, 56.245987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.753113, 56.270233, 56.447510>,  <60.714481, 56.473919, 56.568424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.753113, 56.270233, 56.447510>,  <60.817497, 55.930759, 56.245987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.753113, 56.270233, 56.447510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936593, -0.029643, 0.349164,
		0.311265, 0.528066, -0.790102,
		-0.160961, 0.848686, 0.503809,
		60.704826, 56.524837, 56.598652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.417355, 56.369602, 56.082703>,  <60.817497, 55.930759, 56.245987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.417355, 56.369602, 56.082703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.236908, 56.475639, 56.423576>,  <61.128639, 56.539261, 56.628101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.236908, 56.475639, 56.423576>,  <61.417355, 56.369602, 56.082703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.236908, 56.475639, 56.423576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891639, 0.092756, 0.443145,
		0.038431, 0.959750, -0.278213,
		-0.451114, 0.265096, 0.852186,
		61.101574, 56.555168, 56.679234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.703499, 57.026783, 56.313877>,  <61.417355, 56.369602, 56.082703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.703499, 57.026783, 56.313877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.579155, 56.764061, 56.588676>,  <61.504547, 56.606426, 56.753555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.579155, 56.764061, 56.588676>,  <61.703499, 57.026783, 56.313877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.579155, 56.764061, 56.588676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919991, -0.026398, 0.391049,
		-0.238709, 0.753594, 0.612465,
		-0.310860, -0.656810, 0.686999,
		61.485897, 56.567017, 56.794777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.013298, 57.368584, 56.877132>,  <61.703499, 57.026783, 56.313877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.013298, 57.368584, 56.877132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.974495, 56.971039, 56.898438>,  <61.951214, 56.732513, 56.911221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.974495, 56.971039, 56.898438>,  <62.013298, 57.368584, 56.877132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.974495, 56.971039, 56.898438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983828, -0.087659, 0.156202,
		-0.150574, 0.067550, 0.986288,
		-0.097009, -0.993858, 0.053258,
		61.945393, 56.672882, 56.914413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.427917, 57.104958, 57.602180>,  <62.013298, 57.368584, 56.877132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.427917, 57.104958, 57.602180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.386139, 56.846432, 57.299828>,  <62.361073, 56.691315, 57.118416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.386139, 56.846432, 57.299828>,  <62.427917, 57.104958, 57.602180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.386139, 56.846432, 57.299828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987591, -0.157035, -0.002196,
		-0.117281, -0.746735, 0.654700,
		-0.104451, -0.646318, -0.755885,
		62.354805, 56.652534, 57.073063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.415974, 56.513065, 58.215309>,  <62.427917, 57.104958, 57.602180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.415974, 56.513065, 58.215309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.449028, 56.271847, 57.897942>,  <62.468861, 56.127117, 57.707520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.449028, 56.271847, 57.897942>,  <62.415974, 56.513065, 58.215309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.449028, 56.271847, 57.897942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864413, 0.439569, -0.244067,
		0.495945, -0.665672, 0.557602,
		0.082636, -0.603042, -0.793417,
		62.473820, 56.090935, 57.659916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.672829, 56.219246, 58.813030>,  <62.415974, 56.513065, 58.215309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.672829, 56.219246, 58.813030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.550758, 55.953377, 59.085815>,  <62.477516, 55.793854, 59.249485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.550758, 55.953377, 59.085815>,  <62.672829, 56.219246, 58.813030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.550758, 55.953377, 59.085815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413782, 0.737542, 0.533682,
		-0.857701, -0.119316, -0.500112,
		-0.305177, -0.664677, 0.681961,
		62.459206, 55.753975, 59.290405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.973797, 56.834202, 59.055176>,  <62.672829, 56.219246, 58.813030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.973797, 56.834202, 59.055176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.259949, 56.988747, 59.288055>,  <63.431641, 57.081474, 59.427784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.259949, 56.988747, 59.288055>,  <62.973797, 56.834202, 59.055176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.259949, 56.988747, 59.288055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096937, 0.880040, -0.464900,
		-0.691978, 0.276144, 0.667016,
		0.715381, 0.386359, 0.582200,
		63.474564, 57.104656, 59.462715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.757309, 57.471046, 59.186298>,  <62.973797, 56.834202, 59.055176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.757309, 57.471046, 59.186298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.151863, 57.501282, 59.244728>,  <63.388596, 57.519424, 59.279785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.151863, 57.501282, 59.244728>,  <62.757309, 57.471046, 59.186298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.151863, 57.501282, 59.244728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003603, 0.897844, -0.440298,
		-0.164431, 0.433776, 0.885890,
		0.986382, 0.075590, 0.146071,
		63.447777, 57.523960, 59.288548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.971058, 58.076286, 59.682297>,  <62.757309, 57.471046, 59.186298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.971058, 58.076286, 59.682297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.214424, 57.974373, 59.381653>,  <63.360443, 57.913223, 59.201267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.214424, 57.974373, 59.381653>,  <62.971058, 58.076286, 59.682297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.214424, 57.974373, 59.381653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044117, 0.934744, -0.352574,
		0.792391, 0.247670, 0.557473,
		0.608417, -0.254782, -0.751608,
		63.396950, 57.897938, 59.156170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.590874, 58.614159, 59.607059>,  <62.971058, 58.076286, 59.682297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.590874, 58.614159, 59.607059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.522789, 58.451447, 59.248047>,  <63.481937, 58.353817, 59.032639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.522789, 58.451447, 59.248047>,  <63.590874, 58.614159, 59.607059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.522789, 58.451447, 59.248047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013094, 0.909805, -0.414830,
		0.985320, -0.082362, -0.149535,
		-0.170214, -0.406782, -0.897528,
		63.471725, 58.329411, 58.978790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.105309, 58.542377, 58.974323>,  <63.590874, 58.614159, 59.607059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.105309, 58.542377, 58.974323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.725632, 58.609421, 58.867783>,  <63.497826, 58.649647, 58.803860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.725632, 58.609421, 58.867783>,  <64.105309, 58.542377, 58.974323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.725632, 58.609421, 58.867783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285975, 0.812671, -0.507724,
		0.131355, -0.558097, -0.819313,
		-0.949191, 0.167611, -0.266350,
		63.440876, 58.659702, 58.787876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.161865, 58.713242, 58.267586>,  <64.105309, 58.542377, 58.974323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.161865, 58.713242, 58.267586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.810120, 58.852573, 58.397446>,  <63.599075, 58.936172, 58.475361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.810120, 58.852573, 58.397446>,  <64.161865, 58.713242, 58.267586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.810120, 58.852573, 58.397446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158717, 0.857236, -0.489853,
		-0.448931, -0.379228, -0.809102,
		-0.879358, 0.348329, 0.324650,
		63.546314, 58.957073, 58.494843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.841206, 58.972813, 57.652740>,  <64.161865, 58.713242, 58.267586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.841206, 58.972813, 57.652740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.685905, 59.146049, 57.978119>,  <63.592724, 59.249992, 58.173347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.685905, 59.146049, 57.978119>,  <63.841206, 58.972813, 57.652740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.685905, 59.146049, 57.978119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036425, 0.889211, -0.456045,
		-0.920834, -0.147430, -0.361012,
		-0.388250, 0.433091, 0.813445,
		63.569431, 59.275978, 58.222153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.107574, 59.220207, 57.526173>,  <63.841206, 58.972813, 57.652740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.107574, 59.220207, 57.526173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.336128, 59.418941, 57.787453>,  <63.473259, 59.538181, 57.944221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.336128, 59.418941, 57.787453>,  <63.107574, 59.220207, 57.526173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.336128, 59.418941, 57.787453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132826, 0.841419, -0.523805,
		-0.809863, 0.212531, 0.546765,
		0.571383, 0.496835, 0.653205,
		63.507542, 59.567993, 57.983414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.920719, 59.727146, 58.037560>,  <63.107574, 59.220207, 57.526173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.920719, 59.727146, 58.037560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.271133, 59.738247, 57.844978>,  <63.481380, 59.744907, 57.729431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.271133, 59.738247, 57.844978>,  <62.920719, 59.727146, 58.037560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.271133, 59.738247, 57.844978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318665, 0.782648, -0.534710,
		0.361966, 0.621845, 0.694470,
		0.876032, 0.027757, -0.481453,
		63.533943, 59.746574, 57.700542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.478813, 60.177853, 58.343277>,  <62.920719, 59.727146, 58.037560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.478813, 60.177853, 58.343277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.424820, 60.125046, 57.950470>,  <63.392422, 60.093361, 57.714787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.424820, 60.125046, 57.950470>,  <63.478813, 60.177853, 58.343277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.424820, 60.125046, 57.950470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424982, 0.903009, -0.062976,
		0.895081, 0.408837, -0.177997,
		-0.134986, -0.132014, -0.982014,
		63.384323, 60.085442, 57.655865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.242393, 59.946022, 58.400051>,  <63.478813, 60.177853, 58.343277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.242393, 59.946022, 58.400051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.017990, 59.987129, 58.071487>,  <63.883350, 60.011795, 57.874348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.017990, 59.987129, 58.071487>,  <64.242393, 59.946022, 58.400051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.017990, 59.987129, 58.071487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476435, 0.851536, -0.218854,
		0.676971, -0.514126, -0.526673,
		-0.560999, 0.102768, -0.821413,
		63.849689, 60.017960, 57.825062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.656662, 60.010708, 57.797287>,  <64.242393, 59.946022, 58.400051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.656662, 60.010708, 57.797287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.311714, 60.212288, 57.777840>,  <64.104744, 60.333237, 57.766171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.311714, 60.212288, 57.777840>,  <64.656662, 60.010708, 57.797287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.311714, 60.212288, 57.777840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504286, 0.846430, -0.171034,
		-0.045042, -0.172010, -0.984065,
		-0.862361, 0.503954, -0.048617,
		64.053009, 60.363476, 57.763256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.500221, 60.259403, 57.079090>,  <64.656662, 60.010708, 57.797287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.500221, 60.259403, 57.079090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.319221, 60.505665, 57.337151>,  <64.210617, 60.653419, 57.491985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.319221, 60.505665, 57.337151>,  <64.500221, 60.259403, 57.079090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.319221, 60.505665, 57.337151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328722, 0.787661, -0.521087,
		-0.828965, -0.023719, -0.558797,
		-0.452503, 0.615652, 0.645147,
		64.183472, 60.690361, 57.530693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.182281, 60.284279, 57.108166>,  <64.500221, 60.259403, 57.079090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.182281, 60.284279, 57.108166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.196045, 60.602859, 56.866676>,  <65.204300, 60.794010, 56.721783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.196045, 60.602859, 56.866676>,  <65.182281, 60.284279, 57.108166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.196045, 60.602859, 56.866676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999408, -0.026779, 0.021624,
		0.001056, -0.604106, -0.796904,
		0.034403, 0.796454, -0.603719,
		65.206367, 60.841797, 56.685562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.623436, 60.071999, 56.476833>,  <65.182281, 60.284279, 57.108166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.623436, 60.071999, 56.476833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.627686, 60.464317, 56.554726>,  <65.630234, 60.699711, 56.601460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.627686, 60.464317, 56.554726>,  <65.623436, 60.071999, 56.476833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.627686, 60.464317, 56.554726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997400, -0.024279, 0.067850,
		0.071275, 0.193500, -0.978508,
		0.010628, 0.980800, 0.194728,
		65.630875, 60.758556, 56.613144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.098213, 60.444679, 55.912914>,  <65.623436, 60.071999, 56.476833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.098213, 60.444679, 55.912914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.112160, 60.635139, 56.264381>,  <66.120529, 60.749416, 56.475262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.112160, 60.635139, 56.264381>,  <66.098213, 60.444679, 55.912914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.112160, 60.635139, 56.264381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987901, 0.116517, -0.102350,
		-0.151114, 0.871611, -0.466325,
		0.034874, 0.476150, 0.878672,
		66.122620, 60.777985, 56.527985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.684372, 60.826359, 55.857830>,  <66.098213, 60.444679, 55.912914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.684372, 60.826359, 55.857830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.595932, 60.817356, 56.247826>,  <66.542870, 60.811954, 56.481823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.595932, 60.817356, 56.247826>,  <66.684372, 60.826359, 55.857830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.595932, 60.817356, 56.247826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960821, 0.166305, 0.221733,
		-0.167137, 0.985817, -0.015142,
		-0.221107, -0.022511, 0.974990,
		66.529602, 60.810604, 56.540321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.766289, 61.490376, 56.085396>,  <66.684372, 60.826359, 55.857830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.766289, 61.490376, 56.085396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.809830, 61.199081, 56.356049>,  <66.835953, 61.024303, 56.518440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.809830, 61.199081, 56.356049>,  <66.766289, 61.490376, 56.085396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.809830, 61.199081, 56.356049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947407, 0.282075, 0.151176,
		-0.300952, 0.624586, 0.720639,
		0.108852, -0.728234, 0.676628,
		66.842484, 60.980610, 56.559036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.229591, 61.834366, 56.599056>,  <66.766289, 61.490376, 56.085396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.229591, 61.834366, 56.599056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.232834, 61.436104, 56.636169>,  <67.234779, 61.197147, 56.658436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.232834, 61.436104, 56.636169>,  <67.229591, 61.834366, 56.599056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.232834, 61.436104, 56.636169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996723, 0.015520, 0.079392,
		-0.080487, 0.091831, 0.992517,
		0.008113, -0.995654, 0.092779,
		67.235268, 61.137409, 56.664001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.551941, 61.646847, 57.222195>,  <67.229591, 61.834366, 56.599056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.551941, 61.646847, 57.222195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.596657, 61.338535, 56.971306>,  <67.623489, 61.153549, 56.820774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.596657, 61.338535, 56.971306>,  <67.551941, 61.646847, 57.222195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.596657, 61.338535, 56.971306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993392, 0.070193, 0.090809,
		-0.025967, -0.633225, 0.773532,
		0.111799, -0.770778, -0.627218,
		67.630196, 61.107304, 56.783142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.838242, 61.026375, 57.528774>,  <67.551941, 61.646847, 57.222195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.838242, 61.026375, 57.528774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.942360, 61.034828, 57.142654>,  <68.004829, 61.039902, 56.910984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.942360, 61.034828, 57.142654>,  <67.838242, 61.026375, 57.528774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.942360, 61.034828, 57.142654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944523, -0.212972, 0.250038,
		-0.200296, -0.976830, -0.075402,
		0.260303, 0.021138, -0.965295,
		68.020454, 61.041168, 56.853065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.268188, 60.517422, 57.829185>,  <67.838242, 61.026375, 57.528774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.268188, 60.517422, 57.829185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.236320, 60.178665, 57.618881>,  <68.217201, 59.975410, 57.492699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.236320, 60.178665, 57.618881>,  <68.268188, 60.517422, 57.829185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.236320, 60.178665, 57.618881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962880, 0.071077, -0.260402,
		0.257902, -0.526991, 0.809794,
		-0.079671, -0.846893, -0.525760,
		68.212418, 59.924599, 57.461155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.929001, 60.171516, 57.934544>,  <68.268188, 60.517422, 57.829185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.929001, 60.171516, 57.934544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.768013, 60.053047, 57.588066>,  <68.671417, 59.981964, 57.380180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.768013, 60.053047, 57.588066>,  <68.929001, 60.171516, 57.934544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.768013, 60.053047, 57.588066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893552, 0.078528, -0.442039,
		0.198942, -0.951900, 0.233043,
		-0.402476, -0.296176, -0.866194,
		68.647270, 59.964195, 57.328209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.682137, 60.343594, 58.211361>,  <68.929001, 60.171516, 57.934544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.682137, 60.343594, 58.211361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.542343, 60.288052, 58.582001>,  <69.458466, 60.254726, 58.804382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.542343, 60.288052, 58.582001>,  <69.682137, 60.343594, 58.211361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.542343, 60.288052, 58.582001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704326, -0.613258, -0.357546,
		0.617891, -0.777582, 0.116521,
		-0.349479, -0.138856, 0.926598,
		69.437500, 60.246395, 58.859982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.818977, 59.657803, 58.474758>,  <69.682137, 60.343594, 58.211361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.818977, 59.657803, 58.474758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.467842, 59.801796, 58.601135>,  <69.257164, 59.888191, 58.676964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.467842, 59.801796, 58.601135>,  <69.818977, 59.657803, 58.474758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.467842, 59.801796, 58.601135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474915, -0.739801, -0.476602,
		0.062170, -0.568425, 0.820383,
		-0.877832, 0.359982, 0.315947,
		69.204491, 59.909790, 58.695919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.551895, 59.192989, 58.872692>,  <69.818977, 59.657803, 58.474758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.551895, 59.192989, 58.872692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.249268, 59.405315, 58.719940>,  <69.067688, 59.532711, 58.628288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.249268, 59.405315, 58.719940>,  <69.551895, 59.192989, 58.872692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.249268, 59.405315, 58.719940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503303, -0.845541, -0.178175,
		-0.417470, 0.057397, 0.906876,
		-0.756574, 0.530816, -0.381876,
		69.022293, 59.564560, 58.605377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.130142, 58.705818, 58.514320>,  <69.551895, 59.192989, 58.872692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.130142, 58.705818, 58.514320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.399551, 58.618355, 58.796753>,  <70.561195, 58.565876, 58.966213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.399551, 58.618355, 58.796753>,  <70.130142, 58.705818, 58.514320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.399551, 58.618355, 58.796753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546589, -0.495721, -0.674908,
		0.497593, 0.840505, -0.214365,
		0.673529, -0.218660, 0.706078,
		70.601608, 58.552757, 59.008575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.772728, 59.023628, 58.357010>,  <70.130142, 58.705818, 58.514320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.772728, 59.023628, 58.357010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.812340, 58.679859, 58.557640>,  <70.836105, 58.473598, 58.678020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.812340, 58.679859, 58.557640>,  <70.772728, 59.023628, 58.357010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.812340, 58.679859, 58.557640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588580, -0.355839, -0.725915,
		0.802351, 0.367108, 0.470601,
		0.099031, -0.859425, 0.501580,
		70.842049, 58.422031, 58.708115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.516151, 58.893147, 58.481987>,  <70.772728, 59.023628, 58.357010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.516151, 58.893147, 58.481987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.255562, 58.591640, 58.447540>,  <71.099205, 58.410736, 58.426872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.255562, 58.591640, 58.447540>,  <71.516151, 58.893147, 58.481987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.255562, 58.591640, 58.447540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749844, -0.622472, -0.224193,
		0.115383, -0.210631, 0.970732,
		-0.651475, -0.753766, -0.086118,
		71.060120, 58.365509, 58.421703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.687195, 58.303635, 58.874294>,  <71.516151, 58.893147, 58.481987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.687195, 58.303635, 58.874294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.501762, 58.191795, 58.537979>,  <71.390503, 58.124691, 58.336189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.501762, 58.191795, 58.537979>,  <71.687195, 58.303635, 58.874294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.501762, 58.191795, 58.537979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739703, -0.644507, -0.193518,
		-0.487783, -0.711641, 0.505603,
		-0.463580, -0.279601, -0.840783,
		71.362686, 58.107914, 58.285744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.318504, 58.222359, 59.233833>,  <71.687195, 58.303635, 58.874294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.318504, 58.222359, 59.233833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.714317, 58.180939, 59.274048>,  <72.951805, 58.156086, 59.298176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.714317, 58.180939, 59.274048>,  <72.318504, 58.222359, 59.233833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.714317, 58.180939, 59.274048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032009, 0.521759, 0.852492,
		-0.140730, -0.846785, 0.512982,
		0.989531, -0.103551, 0.100532,
		73.011177, 58.149872, 59.304207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.417587, 57.808624, 59.832962>,  <72.318504, 58.222359, 59.233833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.417587, 57.808624, 59.832962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.697578, 58.080624, 59.745674>,  <72.865578, 58.243824, 59.693302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.697578, 58.080624, 59.745674>,  <72.417587, 57.808624, 59.832962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.697578, 58.080624, 59.745674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113420, 0.407534, 0.906119,
		0.705093, -0.609520, 0.362394,
		0.699985, 0.680001, -0.218218,
		72.907578, 58.284622, 59.680210>
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
