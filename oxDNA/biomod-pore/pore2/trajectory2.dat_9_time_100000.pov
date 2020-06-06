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
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
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
	<22.432354, 17.725843, -1.598165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.750957, 17.493847, -1.666496>,  <22.942120, 17.354649, -1.707494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.750957, 17.493847, -1.666496>,  <22.432354, 17.725843, -1.598165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.750957, 17.493847, -1.666496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248455, -0.571547, 0.782051,
		-0.551212, -0.580474, -0.599346,
		0.796515, -0.579987, -0.170822,
		22.989910, 17.319849, -1.717743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.317171, 16.964031, -1.740622>,  <22.432354, 17.725843, -1.598165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.317171, 16.964031, -1.740622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.653233, 17.058395, -1.545282>,  <22.854870, 17.115015, -1.428078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.653233, 17.058395, -1.545282>,  <22.317171, 16.964031, -1.740622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.653233, 17.058395, -1.545282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398906, -0.341253, 0.851129,
		0.367442, -0.909886, -0.192598,
		0.840155, 0.235912, 0.488350,
		22.905279, 17.129169, -1.398777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.457167, 16.507917, -1.337349>,  <22.317171, 16.964031, -1.740622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.457167, 16.507917, -1.337349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.661900, 16.787483, -1.137531>,  <22.784739, 16.955223, -1.017640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.661900, 16.787483, -1.137531>,  <22.457167, 16.507917, -1.337349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.661900, 16.787483, -1.137531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486978, -0.242996, 0.838931,
		0.707730, -0.672659, 0.215983,
		0.511831, 0.698915, 0.499545,
		22.815449, 16.997158, -0.987667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.894335, 16.257812, -0.755819>,  <22.457167, 16.507917, -1.337349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.894335, 16.257812, -0.755819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.799198, 16.635910, -0.666426>,  <22.742115, 16.862768, -0.612790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.799198, 16.635910, -0.666426>,  <22.894335, 16.257812, -0.755819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.799198, 16.635910, -0.666426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116726, -0.256232, 0.959542,
		0.964265, 0.202134, 0.171277,
		-0.237843, 0.945244, 0.223482,
		22.727846, 16.919483, -0.599381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.344681, 16.580893, -0.145059>,  <22.894335, 16.257812, -0.755819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.344681, 16.580893, -0.145059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.968464, 16.715679, -0.127926>,  <22.742733, 16.796551, -0.117646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.968464, 16.715679, -0.127926>,  <23.344681, 16.580893, -0.145059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.968464, 16.715679, -0.127926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070736, -0.317632, 0.945572,
		0.332232, 0.886320, 0.322582,
		-0.940542, 0.336967, 0.042833,
		22.686302, 16.816769, -0.115076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.189598, 17.167885, 0.308145>,  <23.344681, 16.580893, -0.145059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.189598, 17.167885, 0.308145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.876049, 16.922623, 0.268979>,  <22.687920, 16.775465, 0.245480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.876049, 16.922623, 0.268979>,  <23.189598, 17.167885, 0.308145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.876049, 16.922623, 0.268979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105354, -0.286743, 0.952197,
		-0.611920, 0.736084, 0.289368,
		-0.783872, -0.613154, -0.097914,
		22.640888, 16.738676, 0.239605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.703880, 17.277586, 0.862959>,  <23.189598, 17.167885, 0.308145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.703880, 17.277586, 0.862959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.693314, 16.906719, 0.713470>,  <22.686974, 16.684200, 0.623777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.693314, 16.906719, 0.713470>,  <22.703880, 17.277586, 0.862959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.693314, 16.906719, 0.713470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221266, -0.370002, 0.902297,
		-0.974855, -0.058857, 0.214924,
		-0.026415, -0.927164, -0.373722,
		22.685389, 16.628571, 0.601353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.230516, 16.754648, 1.309692>,  <22.703880, 17.277586, 0.862959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.230516, 16.754648, 1.309692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.526917, 16.581173, 1.104623>,  <22.704758, 16.477089, 0.981582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.526917, 16.581173, 1.104623>,  <22.230516, 16.754648, 1.309692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.526917, 16.581173, 1.104623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272950, -0.503026, 0.820039,
		-0.613526, -0.747584, -0.254369,
		0.741002, -0.433685, -0.512673,
		22.749216, 16.451067, 0.950821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.518059, 16.409794, 1.834754>,  <22.230516, 16.754648, 1.309692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.518059, 16.409794, 1.834754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.755844, 16.337677, 1.521294>,  <22.898516, 16.294407, 1.333218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.755844, 16.337677, 1.521294>,  <22.518059, 16.409794, 1.834754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.755844, 16.337677, 1.521294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499574, -0.680843, 0.535610,
		-0.630109, -0.709892, -0.314668,
		0.594465, -0.180292, -0.783649,
		22.934183, 16.283588, 1.286200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.476273, 15.635149, 1.615033>,  <22.518059, 16.409794, 1.834754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.476273, 15.635149, 1.615033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.827770, 15.816307, 1.554777>,  <23.038670, 15.925002, 1.518624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.827770, 15.816307, 1.554777>,  <22.476273, 15.635149, 1.615033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.827770, 15.816307, 1.554777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455834, -0.702781, 0.546182,
		0.141496, -0.548622, -0.824010,
		0.878746, 0.452894, -0.150639,
		23.091394, 15.952175, 1.509585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.971628, 15.139088, 1.322897>,  <22.476273, 15.635149, 1.615033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.971628, 15.139088, 1.322897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.159672, 15.423134, 1.532557>,  <23.272497, 15.593562, 1.658353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.159672, 15.423134, 1.532557>,  <22.971628, 15.139088, 1.322897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.159672, 15.423134, 1.532557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350540, -0.695238, 0.627508,
		0.810012, -0.111261, -0.575761,
		0.470108, 0.710117, 0.524150,
		23.300705, 15.636168, 1.689802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.828323, 15.180138, 1.418563>,  <22.971628, 15.139088, 1.322897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.828323, 15.180138, 1.418563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.590305, 15.295265, 1.718719>,  <23.447495, 15.364342, 1.898812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.590305, 15.295265, 1.718719>,  <23.828323, 15.180138, 1.418563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.590305, 15.295265, 1.718719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487131, -0.613462, 0.621585,
		0.639238, 0.735408, 0.224832,
		-0.595045, 0.287818, 0.750388,
		23.411793, 15.381611, 1.943835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.141930, 15.429091, 2.067921>,  <23.828323, 15.180138, 1.418563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.141930, 15.429091, 2.067921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.791927, 15.262119, 2.165995>,  <23.581926, 15.161936, 2.224840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.791927, 15.262119, 2.165995>,  <24.141930, 15.429091, 2.067921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.791927, 15.262119, 2.165995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481637, -0.699481, 0.527970,
		-0.048887, 0.580068, 0.813100,
		-0.875006, -0.417430, 0.245187,
		23.529425, 15.136890, 2.239551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.271074, 15.083752, 2.705414>,  <24.141930, 15.429091, 2.067921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.271074, 15.083752, 2.705414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.915718, 14.941784, 2.588935>,  <23.702505, 14.856603, 2.519047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.915718, 14.941784, 2.588935>,  <24.271074, 15.083752, 2.705414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.915718, 14.941784, 2.588935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117538, -0.788992, 0.603056,
		-0.443791, 0.501522, 0.742648,
		-0.888389, -0.354920, -0.291199,
		23.649202, 14.835308, 2.501575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.737768, 14.861568, 3.252860>,  <24.271074, 15.083752, 2.705414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.737768, 14.861568, 3.252860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.657604, 14.634068, 2.933771>,  <23.609507, 14.497567, 2.742318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.657604, 14.634068, 2.933771>,  <23.737768, 14.861568, 3.252860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.657604, 14.634068, 2.933771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046935, -0.807731, 0.587680,
		-0.978588, 0.155217, 0.135181,
		-0.200408, -0.568752, -0.797720,
		23.597483, 14.463442, 2.694455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.009836, 14.397399, 3.263106>,  <23.737768, 14.861568, 3.252860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.009836, 14.397399, 3.263106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.343060, 14.261311, 3.088630>,  <23.542994, 14.179658, 2.983945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.343060, 14.261311, 3.088630>,  <23.009836, 14.397399, 3.263106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.343060, 14.261311, 3.088630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082324, -0.855976, 0.510420,
		-0.547023, -0.389301, -0.741087,
		0.833060, -0.340221, -0.436189,
		23.592978, 14.159245, 2.957773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.398447, 14.473764, 2.777740>,  <23.009836, 14.397399, 3.263106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.398447, 14.473764, 2.777740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.037663, 14.305786, 2.737512>,  <21.821192, 14.204999, 2.713375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.037663, 14.305786, 2.737512>,  <22.398447, 14.473764, 2.777740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.037663, 14.305786, 2.737512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418347, 0.792066, 0.444542,
		-0.107024, 0.443033, -0.890095,
		-0.901960, -0.419945, -0.100572,
		21.767075, 14.179803, 2.707340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.914442, 14.944187, 2.524228>,  <22.398447, 14.473764, 2.777740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.914442, 14.944187, 2.524228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.738148, 14.686653, 2.774421>,  <21.632372, 14.532133, 2.924538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.738148, 14.686653, 2.774421>,  <21.914442, 14.944187, 2.524228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.738148, 14.686653, 2.774421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349720, 0.764912, 0.540930,
		-0.826710, 0.019663, -0.562285,
		-0.440735, -0.643835, 0.625484,
		21.605927, 14.493503, 2.962067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.371729, 15.475282, 2.822795>,  <21.914442, 14.944187, 2.524228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.371729, 15.475282, 2.822795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.462826, 15.207729, 3.105844>,  <21.517485, 15.047198, 3.275674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.462826, 15.207729, 3.105844>,  <21.371729, 15.475282, 2.822795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.462826, 15.207729, 3.105844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286413, 0.648555, 0.705227,
		-0.930645, -0.363284, -0.043871,
		0.227744, -0.668881, 0.707623,
		21.531149, 15.007065, 3.318131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.746489, 15.323517, 3.238772>,  <21.371729, 15.475282, 2.822795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.746489, 15.323517, 3.238772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.064846, 15.238228, 3.465430>,  <21.255861, 15.187055, 3.601424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.064846, 15.238228, 3.465430>,  <20.746489, 15.323517, 3.238772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.064846, 15.238228, 3.465430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422698, 0.474362, 0.772210,
		-0.433448, -0.854117, 0.287414,
		0.795896, -0.213223, 0.566644,
		21.303616, 15.174261, 3.635423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.563112, 14.865008, 3.783242>,  <20.746489, 15.323517, 3.238772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.563112, 14.865008, 3.783242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.853058, 15.132416, 3.849761>,  <21.027025, 15.292860, 3.889672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.853058, 15.132416, 3.849761>,  <20.563112, 14.865008, 3.783242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.853058, 15.132416, 3.849761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531654, 0.389365, 0.752156,
		0.438079, -0.633624, 0.637658,
		0.724866, 0.668517, 0.166296,
		21.070517, 15.332971, 3.899650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.732327, 14.777642, 4.557373>,  <20.563112, 14.865008, 3.783242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.732327, 14.777642, 4.557373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.836277, 15.122562, 4.383521>,  <20.898647, 15.329515, 4.279210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.836277, 15.122562, 4.383521>,  <20.732327, 14.777642, 4.557373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.836277, 15.122562, 4.383521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424523, 0.506287, 0.750636,
		0.867320, -0.010563, 0.497638,
		0.259877, 0.862301, -0.434628,
		20.914240, 15.381252, 4.253133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.065105, 15.060848, 5.081383>,  <20.732327, 14.777642, 4.557373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.065105, 15.060848, 5.081383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.954872, 15.340931, 4.817940>,  <20.888733, 15.508981, 4.659873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.954872, 15.340931, 4.817940>,  <21.065105, 15.060848, 5.081383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.954872, 15.340931, 4.817940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372220, 0.553963, 0.744699,
		0.886288, 0.450374, 0.107968,
		-0.275582, 0.700206, -0.658609,
		20.872198, 15.550993, 4.620357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.274162, 15.821223, 5.207817>,  <21.065105, 15.060848, 5.081383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.274162, 15.821223, 5.207817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.904671, 15.820255, 5.054603>,  <20.682976, 15.819674, 4.962674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.904671, 15.820255, 5.054603>,  <21.274162, 15.821223, 5.207817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.904671, 15.820255, 5.054603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372630, 0.237250, 0.897139,
		0.088704, 0.971446, -0.220057,
		-0.923731, -0.002420, -0.383035,
		20.627552, 15.819530, 4.939692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.009819, 16.455061, 5.277883>,  <21.274162, 15.821223, 5.207817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.009819, 16.455061, 5.277883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.712605, 16.187382, 5.281162>,  <20.534275, 16.026773, 5.283130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.712605, 16.187382, 5.281162>,  <21.009819, 16.455061, 5.277883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.712605, 16.187382, 5.281162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368248, 0.419047, 0.829935,
		-0.558827, 0.613655, -0.557799,
		-0.743038, -0.669199, 0.008198,
		20.489693, 15.986622, 5.283622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.356256, 17.069796, 5.270530>,  <21.009819, 16.455061, 5.277883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.356256, 17.069796, 5.270530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.350910, 17.264217, 4.921000>,  <21.347702, 17.380871, 4.711281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.350910, 17.264217, 4.921000>,  <21.356256, 17.069796, 5.270530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.350910, 17.264217, 4.921000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266777, 0.840493, 0.471594,
		0.963665, 0.239422, 0.118432,
		-0.013368, 0.486054, -0.873827,
		21.346899, 17.410034, 4.658852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.872711, 17.608339, 5.266047>,  <21.356256, 17.069796, 5.270530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.872711, 17.608339, 5.266047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.559883, 17.712910, 5.039765>,  <21.372187, 17.775652, 4.903996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.559883, 17.712910, 5.039765>,  <21.872711, 17.608339, 5.266047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.559883, 17.712910, 5.039765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083388, 0.855693, 0.510721,
		0.617584, 0.446593, -0.647414,
		-0.782072, 0.261426, -0.565703,
		21.325262, 17.791338, 4.870055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.998579, 18.332970, 5.001648>,  <21.872711, 17.608339, 5.266047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.998579, 18.332970, 5.001648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.614216, 18.228722, 5.039029>,  <21.383598, 18.166172, 5.061458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.614216, 18.228722, 5.039029>,  <21.998579, 18.332970, 5.001648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.614216, 18.228722, 5.039029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210260, 0.906508, 0.366106,
		-0.180130, 0.332145, -0.925869,
		-0.960908, -0.260620, 0.093452,
		21.325943, 18.150536, 5.067065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.546583, 18.784464, 4.585992>,  <21.998579, 18.332970, 5.001648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.546583, 18.784464, 4.585992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.382072, 18.644352, 4.922601>,  <21.283367, 18.560286, 5.124566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.382072, 18.644352, 4.922601>,  <21.546583, 18.784464, 4.585992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.382072, 18.644352, 4.922601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271116, 0.928441, 0.253957,
		-0.870258, -0.123704, -0.476811,
		-0.411275, -0.350279, 0.841521,
		21.258690, 18.539268, 5.175057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.912361, 19.217756, 4.725452>,  <21.546583, 18.784464, 4.585992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.912361, 19.217756, 4.725452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.013950, 19.067783, 5.082087>,  <21.074903, 18.977800, 5.296067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.013950, 19.067783, 5.082087>,  <20.912361, 19.217756, 4.725452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.013950, 19.067783, 5.082087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378358, 0.809842, 0.448333,
		-0.890137, -0.451202, 0.063819,
		0.253972, -0.374931, 0.891586,
		21.090141, 18.955303, 5.349562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.369110, 19.111340, 5.110930>,  <20.912361, 19.217756, 4.725452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.369110, 19.111340, 5.110930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.656170, 19.175358, 5.382036>,  <20.828405, 19.213768, 5.544700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.656170, 19.175358, 5.382036>,  <20.369110, 19.111340, 5.110930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.656170, 19.175358, 5.382036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544659, 0.735461, 0.403043,
		-0.433965, -0.658394, 0.614973,
		0.717649, 0.160044, 0.677765,
		20.871466, 19.223372, 5.585366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.602350, 19.660381, 5.654637>,  <20.369110, 19.111340, 5.110930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.602350, 19.660381, 5.654637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.849445, 19.501915, 5.926358>,  <20.997702, 19.406836, 6.089391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.849445, 19.501915, 5.926358>,  <20.602350, 19.660381, 5.654637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.849445, 19.501915, 5.926358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574387, 0.817308, -0.045680,
		-0.537103, 0.418401, 0.732435,
		0.617738, -0.396166, 0.679303,
		21.034767, 19.383064, 6.130149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.509293, 19.324930, 6.272582>,  <20.602350, 19.660381, 5.654637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.509293, 19.324930, 6.272582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.854870, 19.182240, 6.130402>,  <21.062218, 19.096624, 6.045094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.854870, 19.182240, 6.130402>,  <20.509293, 19.324930, 6.272582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.854870, 19.182240, 6.130402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314592, -0.168847, 0.934089,
		-0.393231, -0.918824, -0.033651,
		0.863945, -0.356727, -0.355450,
		21.114054, 19.075222, 6.023767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.782974, 18.611248, 6.503489>,  <20.509293, 19.324930, 6.272582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.782974, 18.611248, 6.503489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.098961, 18.833729, 6.400270>,  <21.288553, 18.967218, 6.338339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.098961, 18.833729, 6.400270>,  <20.782974, 18.611248, 6.503489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.098961, 18.833729, 6.400270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347004, -0.058577, 0.936033,
		0.505509, -0.828979, -0.239279,
		0.789968, 0.556204, -0.258047,
		21.335951, 19.000589, 6.322856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.420532, 18.323496, 6.787310>,  <20.782974, 18.611248, 6.503489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.420532, 18.323496, 6.787310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.464664, 18.718586, 6.743084>,  <21.491144, 18.955641, 6.716548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.464664, 18.718586, 6.743084>,  <21.420532, 18.323496, 6.787310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.464664, 18.718586, 6.743084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227156, 0.083239, 0.970294,
		0.967588, -0.132169, -0.215184,
		0.110331, 0.987726, -0.110564,
		21.497765, 19.014904, 6.709915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.053204, 18.549107, 7.086038>,  <21.420532, 18.323496, 6.787310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.053204, 18.549107, 7.086038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.813049, 18.868919, 7.092786>,  <21.668957, 19.060806, 7.096835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.813049, 18.868919, 7.092786>,  <22.053204, 18.549107, 7.086038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.813049, 18.868919, 7.092786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212954, 0.139507, 0.967051,
		0.770834, 0.584199, -0.254022,
		-0.600388, 0.799531, 0.016871,
		21.632933, 19.108778, 7.097847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.418053, 19.000334, 7.350183>,  <22.053204, 18.549107, 7.086038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.418053, 19.000334, 7.350183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.039658, 19.122196, 7.394527>,  <21.812620, 19.195314, 7.421134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.039658, 19.122196, 7.394527>,  <22.418053, 19.000334, 7.350183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.039658, 19.122196, 7.394527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221343, 0.357071, 0.907473,
		0.236882, 0.882998, -0.405218,
		-0.945989, 0.304656, 0.110861,
		21.755861, 19.213593, 7.427786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.403999, 19.678459, 7.731053>,  <22.418053, 19.000334, 7.350183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.403999, 19.678459, 7.731053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.041794, 19.521629, 7.795951>,  <21.824471, 19.427530, 7.834889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.041794, 19.521629, 7.795951>,  <22.403999, 19.678459, 7.731053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.041794, 19.521629, 7.795951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018854, 0.344808, 0.938484,
		-0.423901, 0.852868, -0.304836,
		-0.905512, -0.392077, 0.162244,
		21.770140, 19.404007, 7.844624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.258562, 20.013542, 8.256145>,  <22.403999, 19.678459, 7.731053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.258562, 20.013542, 8.256145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.948807, 19.760868, 8.270538>,  <21.762953, 19.609262, 8.279174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.948807, 19.760868, 8.270538>,  <22.258562, 20.013542, 8.256145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.948807, 19.760868, 8.270538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093671, 0.170704, 0.980860,
		-0.625739, 0.756195, -0.191362,
		-0.774388, -0.631687, 0.035982,
		21.716490, 19.571362, 8.281333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.658279, 20.304934, 8.606512>,  <22.258562, 20.013542, 8.256145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.658279, 20.304934, 8.606512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.559082, 19.917728, 8.621732>,  <21.499563, 19.685406, 8.630864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.559082, 19.917728, 8.621732>,  <21.658279, 20.304934, 8.606512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.559082, 19.917728, 8.621732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099797, 0.064595, 0.992909,
		-0.963608, 0.242438, -0.112625,
		-0.247994, -0.968014, 0.038050,
		21.484684, 19.627325, 8.633146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.976480, 20.162888, 8.903907>,  <21.658279, 20.304934, 8.606512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.976480, 20.162888, 8.903907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.180309, 19.822285, 8.953335>,  <21.302607, 19.617924, 8.982992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.180309, 19.822285, 8.953335>,  <20.976480, 20.162888, 8.903907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.180309, 19.822285, 8.953335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048336, 0.115059, 0.992182,
		-0.859069, -0.511562, 0.017472,
		0.509573, -0.851508, 0.123571,
		21.333181, 19.566832, 8.990406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.690826, 19.770367, 9.487363>,  <20.976480, 20.162888, 8.903907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.690826, 19.770367, 9.487363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.050949, 19.606426, 9.428756>,  <21.267023, 19.508062, 9.393592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.050949, 19.606426, 9.428756>,  <20.690826, 19.770367, 9.487363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.050949, 19.606426, 9.428756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149514, -0.024924, 0.988445,
		-0.408766, -0.911812, 0.038839,
		0.900309, -0.409850, -0.146517,
		21.321041, 19.483471, 9.384801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.727602, 19.308891, 10.007268>,  <20.690826, 19.770367, 9.487363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.727602, 19.308891, 10.007268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.106983, 19.330284, 9.882320>,  <21.334612, 19.343121, 9.807352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.106983, 19.330284, 9.882320>,  <20.727602, 19.308891, 10.007268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.106983, 19.330284, 9.882320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297760, 0.187092, 0.936128,
		0.108504, -0.980886, 0.161524,
		0.948454, 0.053479, -0.312369,
		21.391520, 19.346329, 9.788610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.059959, 18.670683, 10.266258>,  <20.727602, 19.308891, 10.007268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.059959, 18.670683, 10.266258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.338951, 18.951633, 10.209419>,  <21.506346, 19.120205, 10.175316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.338951, 18.951633, 10.209419>,  <21.059959, 18.670683, 10.266258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.338951, 18.951633, 10.209419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144825, 0.056040, 0.987869,
		0.701820, -0.709595, -0.062635,
		0.697477, 0.702378, -0.142098,
		21.548195, 19.162346, 10.166790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.574507, 18.390987, 10.584505>,  <21.059959, 18.670683, 10.266258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.574507, 18.390987, 10.584505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.644882, 18.784580, 10.573015>,  <21.687107, 19.020737, 10.566121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.644882, 18.784580, 10.573015>,  <21.574507, 18.390987, 10.584505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.644882, 18.784580, 10.573015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427233, -0.050037, 0.902756,
		0.886858, -0.171103, -0.429193,
		0.175940, 0.983982, -0.028725,
		21.697664, 19.079775, 10.564398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.229109, 18.561384, 11.069490>,  <21.574507, 18.390987, 10.584505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.229109, 18.561384, 11.069490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.080471, 18.931816, 11.043270>,  <21.991289, 19.154076, 11.027537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.080471, 18.931816, 11.043270>,  <22.229109, 18.561384, 11.069490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.080471, 18.931816, 11.043270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462238, 0.245784, 0.852013,
		0.805142, 0.286302, -0.519400,
		-0.371593, 0.926078, -0.065551,
		21.968992, 19.209641, 11.023604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.680445, 19.025864, 11.445724>,  <22.229109, 18.561384, 11.069490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.680445, 19.025864, 11.445724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.380592, 19.287590, 11.405866>,  <22.200682, 19.444626, 11.381950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.380592, 19.287590, 11.405866>,  <22.680445, 19.025864, 11.445724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.380592, 19.287590, 11.405866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236062, 0.404972, 0.883330,
		0.618330, 0.638647, -0.458038,
		-0.749629, 0.654315, -0.099646,
		22.155704, 19.483885, 11.375972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.927185, 19.726105, 11.646027>,  <22.680445, 19.025864, 11.445724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.927185, 19.726105, 11.646027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.528961, 19.756611, 11.668099>,  <22.290028, 19.774914, 11.681343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.528961, 19.756611, 11.668099>,  <22.927185, 19.726105, 11.646027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.528961, 19.756611, 11.668099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088660, 0.562672, 0.821912,
		0.031632, 0.823155, -0.566935,
		-0.995560, 0.076263, 0.055183,
		22.230293, 19.779490, 11.684654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.848894, 20.481350, 11.886039>,  <22.927185, 19.726105, 11.646027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.848894, 20.481350, 11.886039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.527279, 20.262581, 11.979327>,  <22.334309, 20.131319, 12.035300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.527279, 20.262581, 11.979327>,  <22.848894, 20.481350, 11.886039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.527279, 20.262581, 11.979327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010999, 0.405865, 0.913867,
		-0.594473, 0.732221, -0.332347,
		-0.804040, -0.546925, 0.233222,
		22.286066, 20.098503, 12.049294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.380335, 20.961626, 12.228320>,  <22.848894, 20.481350, 11.886039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.380335, 20.961626, 12.228320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.285957, 20.592838, 12.351153>,  <22.229332, 20.371565, 12.424853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.285957, 20.592838, 12.351153>,  <22.380335, 20.961626, 12.228320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.285957, 20.592838, 12.351153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149437, 0.277822, 0.948938,
		-0.960208, 0.269785, 0.072227,
		-0.235943, -0.921971, 0.307083,
		22.215174, 20.316246, 12.443278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.879086, 21.058470, 12.697676>,  <22.380335, 20.961626, 12.228320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.879086, 21.058470, 12.697676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.029125, 20.695293, 12.772447>,  <22.119150, 20.477388, 12.817309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.029125, 20.695293, 12.772447>,  <21.879086, 21.058470, 12.697676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.029125, 20.695293, 12.772447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062959, 0.176233, 0.982333,
		-0.924844, -0.380243, 0.008942,
		0.375101, -0.907941, 0.186928,
		22.141655, 20.422911, 12.828525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.379725, 20.686108, 13.166738>,  <21.879086, 21.058470, 12.697676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.379725, 20.686108, 13.166738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.746979, 20.529858, 13.193391>,  <21.967331, 20.436108, 13.209383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.746979, 20.529858, 13.193391>,  <21.379725, 20.686108, 13.166738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.746979, 20.529858, 13.193391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013007, 0.197769, 0.980162,
		-0.396056, -0.899054, 0.186659,
		0.918134, -0.390627, 0.066634,
		22.022419, 20.412670, 13.213381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.272247, 20.277990, 13.773357>,  <21.379725, 20.686108, 13.166738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.272247, 20.277990, 13.773357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.668148, 20.320976, 13.735740>,  <21.905687, 20.346767, 13.713169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.668148, 20.320976, 13.735740>,  <21.272247, 20.277990, 13.773357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.668148, 20.320976, 13.735740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082122, 0.110451, 0.990483,
		0.116879, -0.988049, 0.100489,
		0.989745, 0.107515, -0.094050,
		21.965073, 20.353216, 13.707526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.510088, 19.922407, 14.380389>,  <21.272247, 20.277990, 13.773357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.510088, 19.922407, 14.380389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.807629, 20.156960, 14.252114>,  <21.986153, 20.297691, 14.175149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.807629, 20.156960, 14.252114>,  <21.510088, 19.922407, 14.380389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.807629, 20.156960, 14.252114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252629, 0.197536, 0.947184,
		0.618759, -0.785580, -0.001199,
		0.743853, 0.586381, -0.320688,
		22.030785, 20.332874, 14.155908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.924709, 19.838104, 14.837817>,  <21.510088, 19.922407, 14.380389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.924709, 19.838104, 14.837817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.078861, 20.164783, 14.666011>,  <22.171352, 20.360792, 14.562927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.078861, 20.164783, 14.666011>,  <21.924709, 19.838104, 14.837817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.078861, 20.164783, 14.666011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310290, 0.323670, 0.893845,
		0.869024, -0.477744, -0.128678,
		0.385380, 0.816700, -0.429516,
		22.194475, 20.409794, 14.537156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.677435, 19.946793, 15.090020>,  <21.924709, 19.838104, 14.837817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.677435, 19.946793, 15.090020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.514599, 20.293430, 14.974580>,  <22.416897, 20.501413, 14.905315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.514599, 20.293430, 14.974580>,  <22.677435, 19.946793, 15.090020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.514599, 20.293430, 14.974580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273872, 0.417239, 0.866548,
		0.871362, 0.273723, -0.407190,
		-0.407090, 0.866595, -0.288601,
		22.392471, 20.553410, 14.888000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.127831, 20.477200, 15.168654>,  <22.677435, 19.946793, 15.090020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.127831, 20.477200, 15.168654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.794727, 20.698174, 15.154059>,  <22.594866, 20.830759, 15.145302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.794727, 20.698174, 15.154059>,  <23.127831, 20.477200, 15.168654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.794727, 20.698174, 15.154059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226139, 0.399564, 0.888375,
		0.505350, 0.731548, -0.457667,
		-0.832756, 0.552436, -0.036488,
		22.544901, 20.863905, 15.143113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.275272, 21.158054, 15.283704>,  <23.127831, 20.477200, 15.168654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.275272, 21.158054, 15.283704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.884686, 21.159782, 15.369950>,  <22.650333, 21.160818, 15.421698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.884686, 21.159782, 15.369950>,  <23.275272, 21.158054, 15.283704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.884686, 21.159782, 15.369950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194132, 0.453031, 0.870101,
		-0.093923, 0.891484, -0.443209,
		-0.976469, 0.004318, 0.215615,
		22.591745, 21.161077, 15.434635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.130657, 21.856827, 15.492207>,  <23.275272, 21.158054, 15.283704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.130657, 21.856827, 15.492207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.858341, 21.608921, 15.648368>,  <22.694952, 21.460176, 15.742064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.858341, 21.608921, 15.648368>,  <23.130657, 21.856827, 15.492207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.858341, 21.608921, 15.648368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089901, 0.458260, 0.884260,
		-0.726941, 0.637093, -0.256262,
		-0.680790, -0.619766, 0.390403,
		22.654104, 21.422991, 15.765489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.669281, 22.309841, 15.930854>,  <23.130657, 21.856827, 15.492207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.669281, 22.309841, 15.930854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.623623, 21.932735, 16.056179>,  <22.596228, 21.706472, 16.131374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.623623, 21.932735, 16.056179>,  <22.669281, 22.309841, 15.930854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.623623, 21.932735, 16.056179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063441, 0.307813, 0.949329,
		-0.991436, 0.128237, 0.024675,
		-0.114144, -0.942765, 0.313312,
		22.589380, 21.649906, 16.150173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.419550, 22.347324, 16.629156>,  <22.669281, 22.309841, 15.930854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.419550, 22.347324, 16.629156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.521046, 21.960423, 16.626772>,  <22.581944, 21.728281, 16.625341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.521046, 21.960423, 16.626772>,  <22.419550, 22.347324, 16.629156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.521046, 21.960423, 16.626772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081016, 0.015112, 0.996598,
		-0.963874, -0.253360, 0.082198,
		0.253740, -0.967254, -0.005961,
		22.597168, 21.670246, 16.624983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.073790, 22.211456, 17.163519>,  <22.419550, 22.347324, 16.629156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.073790, 22.211456, 17.163519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.332497, 21.915668, 17.088818>,  <22.487720, 21.738195, 17.043997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.332497, 21.915668, 17.088818>,  <22.073790, 22.211456, 17.163519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.332497, 21.915668, 17.088818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212549, -0.060406, 0.975281,
		-0.732473, -0.670473, 0.118105,
		0.646766, -0.739471, -0.186754,
		22.526525, 21.693827, 17.032791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.830341, 21.687622, 17.550508>,  <22.073790, 22.211456, 17.163519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.830341, 21.687622, 17.550508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.214874, 21.600636, 17.482925>,  <22.445595, 21.548445, 17.442375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.214874, 21.600636, 17.482925>,  <21.830341, 21.687622, 17.550508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.214874, 21.600636, 17.482925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181377, 0.038335, 0.982666,
		-0.207220, -0.975315, 0.076296,
		0.961333, -0.217466, -0.168956,
		22.503275, 21.535397, 17.432238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.990639, 21.190775, 17.995880>,  <21.830341, 21.687622, 17.550508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.990639, 21.190775, 17.995880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.346268, 21.350170, 17.905762>,  <22.559645, 21.445807, 17.851690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.346268, 21.350170, 17.905762>,  <21.990639, 21.190775, 17.995880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.346268, 21.350170, 17.905762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219722, 0.060286, 0.973698,
		0.401589, -0.915190, -0.033958,
		0.889072, 0.398488, -0.225298,
		22.612989, 21.469717, 17.838173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.446032, 20.705046, 18.312216>,  <21.990639, 21.190775, 17.995880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.446032, 20.705046, 18.312216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.622356, 21.057381, 18.243151>,  <22.728151, 21.268782, 18.201712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.622356, 21.057381, 18.243151>,  <22.446032, 20.705046, 18.312216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.622356, 21.057381, 18.243151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203178, 0.089452, 0.975047,
		0.874302, -0.464893, -0.139535,
		0.440811, 0.880836, -0.172664,
		22.754601, 21.321632, 18.191351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.980608, 20.664623, 18.828579>,  <22.446032, 20.705046, 18.312216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.980608, 20.664623, 18.828579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.985092, 21.051155, 18.725754>,  <22.987783, 21.283073, 18.664059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.985092, 21.051155, 18.725754>,  <22.980608, 20.664623, 18.828579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.985092, 21.051155, 18.725754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179622, 0.250954, 0.951188,
		0.983672, -0.056837, -0.170761,
		0.011210, 0.966329, -0.257065,
		22.988455, 21.341053, 18.648634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.572353, 21.094337, 19.154360>,  <22.980608, 20.664623, 18.828579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.572353, 21.094337, 19.154360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.289204, 21.366329, 19.077900>,  <23.119314, 21.529524, 19.032024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.289204, 21.366329, 19.077900>,  <23.572353, 21.094337, 19.154360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.289204, 21.366329, 19.077900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155076, 0.413632, 0.897140,
		0.689103, 0.605421, -0.398249,
		-0.707876, 0.679980, -0.191149,
		23.076841, 21.570324, 19.020555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.885529, 21.648909, 19.411835>,  <23.572353, 21.094337, 19.154360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.885529, 21.648909, 19.411835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.498470, 21.734413, 19.358217>,  <23.266235, 21.785715, 19.326046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.498470, 21.734413, 19.358217>,  <23.885529, 21.648909, 19.411835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.498470, 21.734413, 19.358217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028068, 0.619162, 0.784761,
		0.250746, 0.755609, -0.605130,
		-0.967646, 0.213760, -0.134044,
		23.208176, 21.798542, 19.318005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.897100, 22.338957, 19.553371>,  <23.885529, 21.648909, 19.411835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.897100, 22.338957, 19.553371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.517330, 22.222900, 19.601391>,  <23.289469, 22.153267, 19.630203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.517330, 22.222900, 19.601391>,  <23.897100, 22.338957, 19.553371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.517330, 22.222900, 19.601391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089014, 0.615341, 0.783219,
		-0.301117, 0.732920, -0.610046,
		-0.949423, -0.290143, 0.120049,
		23.232504, 22.135857, 19.637405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.551252, 22.942156, 19.749344>,  <23.897100, 22.338957, 19.553371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.551252, 22.942156, 19.749344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.304649, 22.640869, 19.841070>,  <23.156689, 22.460096, 19.896105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.304649, 22.640869, 19.841070>,  <23.551252, 22.942156, 19.749344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.304649, 22.640869, 19.841070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309246, 0.499488, 0.809246,
		-0.724078, 0.427991, -0.540866,
		-0.616506, -0.753217, 0.229313,
		23.119698, 22.414904, 19.909864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.904289, 23.137321, 19.947344>,  <23.551252, 22.942156, 19.749344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.904289, 23.137321, 19.947344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.901516, 22.781792, 20.130621>,  <22.899853, 22.568474, 20.240587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.901516, 22.781792, 20.130621>,  <22.904289, 23.137321, 19.947344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.901516, 22.781792, 20.130621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412298, 0.419985, 0.808470,
		-0.911023, -0.183309, -0.369372,
		-0.006931, -0.888825, 0.458193,
		22.899437, 22.515144, 20.268080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.167538, 22.941248, 20.222786>,  <22.904289, 23.137321, 19.947344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.167538, 22.941248, 20.222786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.455112, 22.764565, 20.437458>,  <22.627657, 22.658554, 20.566261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.455112, 22.764565, 20.437458>,  <22.167538, 22.941248, 20.222786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.455112, 22.764565, 20.437458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380880, 0.395521, 0.835759,
		-0.581429, -0.805269, 0.116117,
		0.718937, -0.441708, 0.536678,
		22.670794, 22.632051, 20.598461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.858450, 22.778000, 20.866854>,  <22.167538, 22.941248, 20.222786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.858450, 22.778000, 20.866854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.251057, 22.750412, 20.938255>,  <22.486622, 22.733860, 20.981096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.251057, 22.750412, 20.938255>,  <21.858450, 22.778000, 20.866854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.251057, 22.750412, 20.938255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154900, 0.261389, 0.952723,
		-0.112368, -0.962766, 0.245875,
		0.981519, -0.068969, 0.178505,
		22.545513, 22.729721, 20.991806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.931425, 22.203444, 21.349413>,  <21.858450, 22.778000, 20.866854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.931425, 22.203444, 21.349413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.251511, 22.441753, 21.376858>,  <22.443562, 22.584740, 21.393324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.251511, 22.441753, 21.376858>,  <21.931425, 22.203444, 21.349413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.251511, 22.441753, 21.376858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140599, 0.075155, 0.987210,
		0.582999, -0.799627, 0.143905,
		0.800215, 0.595776, 0.068611,
		22.491575, 22.620485, 21.397442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.390097, 21.915644, 21.862816>,  <21.931425, 22.203444, 21.349413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.390097, 21.915644, 21.862816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.495560, 22.300888, 21.841265>,  <22.558838, 22.532034, 21.828335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.495560, 22.300888, 21.841265>,  <22.390097, 21.915644, 21.862816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.495560, 22.300888, 21.841265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168939, 0.101093, 0.980428,
		0.949708, -0.249396, 0.189360,
		0.263658, 0.963111, -0.053876,
		22.574657, 22.589821, 21.825102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.688549, 22.047684, 22.443277>,  <22.390097, 21.915644, 21.862816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.688549, 22.047684, 22.443277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.635696, 22.434776, 22.357452>,  <22.603985, 22.667032, 22.305958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.635696, 22.434776, 22.357452>,  <22.688549, 22.047684, 22.443277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.635696, 22.434776, 22.357452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077089, 0.205775, 0.975558,
		0.988230, 0.145441, 0.047413,
		-0.132130, 0.967731, -0.214565,
		22.596058, 22.725096, 22.293083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.157518, 22.382732, 22.862909>,  <22.688549, 22.047684, 22.443277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.157518, 22.382732, 22.862909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.885082, 22.653824, 22.752060>,  <22.721621, 22.816479, 22.685551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.885082, 22.653824, 22.752060>,  <23.157518, 22.382732, 22.862909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.885082, 22.653824, 22.752060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240633, 0.150274, 0.958912,
		0.691526, 0.719794, 0.060733,
		-0.681093, 0.677728, -0.277125,
		22.680754, 22.857141, 22.668922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.329189, 23.077229, 23.137865>,  <23.157518, 22.382732, 22.862909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.329189, 23.077229, 23.137865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.936417, 23.020172, 23.088121>,  <22.700752, 22.985939, 23.058275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.936417, 23.020172, 23.088121>,  <23.329189, 23.077229, 23.137865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.936417, 23.020172, 23.088121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150403, 0.189425, 0.970308,
		-0.114847, 0.971479, -0.207456,
		-0.981931, -0.142639, -0.124359,
		22.641838, 22.977381, 23.050814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.129648, 23.666855, 23.593473>,  <23.329189, 23.077229, 23.137865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.129648, 23.666855, 23.593473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.860241, 23.391972, 23.484571>,  <22.698597, 23.227041, 23.419231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.860241, 23.391972, 23.484571>,  <23.129648, 23.666855, 23.593473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.860241, 23.391972, 23.484571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422509, 0.055696, 0.904646,
		-0.606515, 0.724323, -0.327864,
		-0.673517, -0.687207, -0.272253,
		22.658186, 23.185810, 23.402895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.700237, 23.562889, 24.190172>,  <23.129648, 23.666855, 23.593473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.700237, 23.562889, 24.190172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.536354, 23.304432, 23.932602>,  <22.438025, 23.149359, 23.778059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.536354, 23.304432, 23.932602>,  <22.700237, 23.562889, 24.190172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.536354, 23.304432, 23.932602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656722, -0.281005, 0.699823,
		-0.633130, 0.709604, -0.309204,
		-0.409709, -0.646141, -0.643926,
		22.413441, 23.110590, 23.739424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.976549, 23.579424, 24.116842>,  <22.700237, 23.562889, 24.190172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.976549, 23.579424, 24.116842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.035976, 23.196667, 24.017017>,  <22.071632, 22.967012, 23.957123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.035976, 23.196667, 24.017017>,  <21.976549, 23.579424, 24.116842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.035976, 23.196667, 24.017017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656616, -0.284156, 0.698649,
		-0.739448, 0.060069, -0.670529,
		0.148568, -0.956895, -0.249561,
		22.080547, 22.909597, 23.942150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.307661, 23.295536, 24.118717>,  <21.976549, 23.579424, 24.116842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.307661, 23.295536, 24.118717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.597351, 23.031231, 24.197605>,  <21.771164, 22.872648, 24.244938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.597351, 23.031231, 24.197605>,  <21.307661, 23.295536, 24.118717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.597351, 23.031231, 24.197605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555180, -0.389096, 0.735105,
		-0.409006, -0.641860, -0.648637,
		0.724217, -0.660773, 0.197205,
		21.814619, 22.833002, 24.256771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.081886, 23.839697, 23.669939>,  <21.307661, 23.295536, 24.118717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.081886, 23.839697, 23.669939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.687817, 23.823029, 23.736511>,  <20.451376, 23.813028, 23.776455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.687817, 23.823029, 23.736511>,  <21.081886, 23.839697, 23.669939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.687817, 23.823029, 23.736511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166027, 0.476069, -0.863593,
		-0.043245, -0.878420, -0.475929,
		-0.985173, -0.041671, 0.166429,
		20.392265, 23.810528, 23.786440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.637770, 23.511614, 23.120277>,  <21.081886, 23.839697, 23.669939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.637770, 23.511614, 23.120277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.420795, 23.779095, 23.323687>,  <20.290611, 23.939583, 23.445732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.420795, 23.779095, 23.323687>,  <20.637770, 23.511614, 23.120277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.420795, 23.779095, 23.323687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141325, 0.524054, -0.839877,
		-0.828124, -0.527448, -0.189762,
		-0.542438, 0.668704, 0.508524,
		20.258064, 23.979706, 23.476244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.910950, 23.536907, 22.832296>,  <20.637770, 23.511614, 23.120277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.910950, 23.536907, 22.832296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.030437, 23.881989, 22.995518>,  <20.102131, 24.089037, 23.093451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.030437, 23.881989, 22.995518>,  <19.910950, 23.536907, 22.832296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.030437, 23.881989, 22.995518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052109, 0.412194, -0.909605,
		-0.952917, 0.292981, 0.078176,
		0.298721, 0.862704, 0.408054,
		20.120054, 24.140800, 23.117933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.461332, 24.065964, 22.534575>,  <19.910950, 23.536907, 22.832296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.461332, 24.065964, 22.534575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.805012, 24.210335, 22.679630>,  <20.011219, 24.296957, 22.766665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.805012, 24.210335, 22.679630>,  <19.461332, 24.065964, 22.534575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.805012, 24.210335, 22.679630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168033, 0.470409, -0.866303,
		-0.483261, 0.805262, 0.343528,
		0.859200, 0.360926, 0.362641,
		20.062771, 24.318613, 22.788422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.307543, 24.673464, 22.314426>,  <19.461332, 24.065964, 22.534575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.307543, 24.673464, 22.314426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.694424, 24.611626, 22.395048>,  <19.926552, 24.574522, 22.443420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.694424, 24.611626, 22.395048>,  <19.307543, 24.673464, 22.314426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.694424, 24.611626, 22.395048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245263, 0.361882, -0.899382,
		0.066103, 0.919316, 0.387929,
		0.967200, -0.154596, 0.201553,
		19.984583, 24.565247, 22.455515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.649576, 25.206335, 22.104321>,  <19.307543, 24.673464, 22.314426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.649576, 25.206335, 22.104321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.944134, 24.935730, 22.107229>,  <20.120869, 24.773367, 22.108974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.944134, 24.935730, 22.107229>,  <19.649576, 25.206335, 22.104321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.944134, 24.935730, 22.107229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250557, 0.262721, -0.931772,
		0.628445, 0.687974, 0.362972,
		0.736395, -0.676513, 0.007271,
		20.165052, 24.732777, 22.109411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.164223, 25.530622, 21.717144>,  <19.649576, 25.206335, 22.104321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.164223, 25.530622, 21.717144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.282581, 25.148594, 21.710405>,  <20.353596, 24.919376, 21.706362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.282581, 25.148594, 21.710405>,  <20.164223, 25.530622, 21.717144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.282581, 25.148594, 21.710405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293037, 0.107548, -0.950033,
		0.909161, 0.276174, 0.311694,
		0.295897, -0.955071, -0.016849,
		20.371351, 24.862072, 21.705351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.665350, 25.627548, 21.281332>,  <20.164223, 25.530622, 21.717144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.665350, 25.627548, 21.281332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.612930, 25.231022, 21.277060>,  <20.581478, 24.993105, 21.274496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.612930, 25.231022, 21.277060>,  <20.665350, 25.627548, 21.281332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.612930, 25.231022, 21.277060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240800, -0.021378, -0.970340,
		0.961687, -0.129735, 0.241511,
		-0.131050, -0.991318, -0.010681,
		20.573616, 24.933626, 21.273855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.149191, 25.419306, 20.923058>,  <20.665350, 25.627548, 21.281332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.149191, 25.419306, 20.923058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.905865, 25.102898, 20.897017>,  <20.759869, 24.913054, 20.881392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.905865, 25.102898, 20.897017>,  <21.149191, 25.419306, 20.923058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.905865, 25.102898, 20.897017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327398, -0.175361, -0.928471,
		0.723024, -0.586118, 0.365654,
		-0.608315, -0.791021, -0.065103,
		20.723370, 24.865591, 20.877485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.508289, 24.844423, 20.608543>,  <21.149191, 25.419306, 20.923058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.508289, 24.844423, 20.608543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.121433, 24.760479, 20.551134>,  <20.889320, 24.710114, 20.516689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.121433, 24.760479, 20.551134>,  <21.508289, 24.844423, 20.608543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.121433, 24.760479, 20.551134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199273, -0.275129, -0.940529,
		0.157892, -0.938223, 0.307907,
		-0.967140, -0.209859, -0.143522,
		20.831291, 24.697521, 20.508078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.477793, 24.157084, 20.177763>,  <21.508289, 24.844423, 20.608543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.477793, 24.157084, 20.177763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.108814, 24.306808, 20.139853>,  <20.887426, 24.396645, 20.117107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.108814, 24.306808, 20.139853>,  <21.477793, 24.157084, 20.177763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.108814, 24.306808, 20.139853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023542, -0.190473, -0.981410,
		-0.385408, -0.907529, 0.166889,
		-0.922446, 0.374315, -0.094775,
		20.832081, 24.419102, 20.111420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.051363, 23.684652, 19.835079>,  <21.477793, 24.157084, 20.177763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.051363, 23.684652, 19.835079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.835804, 24.019459, 19.797146>,  <20.706469, 24.220343, 19.774385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.835804, 24.019459, 19.797146>,  <21.051363, 23.684652, 19.835079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.835804, 24.019459, 19.797146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151008, -0.206745, -0.966671,
		-0.828727, -0.506615, 0.237811,
		-0.538896, 0.837017, -0.094832,
		20.674135, 24.270563, 19.768696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.457132, 23.559521, 19.415358>,  <21.051363, 23.684652, 19.835079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.457132, 23.559521, 19.415358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.476372, 23.958546, 19.395151>,  <20.487915, 24.197962, 19.383026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.476372, 23.958546, 19.395151>,  <20.457132, 23.559521, 19.415358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.476372, 23.958546, 19.395151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331853, -0.031744, -0.942797,
		-0.942104, 0.062111, 0.329518,
		0.048098, 0.997564, -0.050517,
		20.490801, 24.257814, 19.379995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.868563, 23.699850, 18.976805>,  <20.457132, 23.559521, 19.415358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.868563, 23.699850, 18.976805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.092018, 24.031590, 18.972712>,  <20.226091, 24.230633, 18.970257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.092018, 24.031590, 18.972712>,  <19.868563, 23.699850, 18.976805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.092018, 24.031590, 18.972712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125361, 0.072235, -0.989478,
		-0.819882, 0.554045, 0.144321,
		0.558640, 0.829347, -0.010231,
		20.259609, 24.280394, 18.969643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.406925, 24.192871, 18.665655>,  <19.868563, 23.699850, 18.976805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.406925, 24.192871, 18.665655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.792439, 24.285908, 18.613459>,  <20.023746, 24.341730, 18.582142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.792439, 24.285908, 18.613459>,  <19.406925, 24.192871, 18.665655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.792439, 24.285908, 18.613459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171695, 0.166726, -0.970939,
		-0.204075, 0.958178, 0.200622,
		0.963781, 0.232590, -0.130490,
		20.081573, 24.355684, 18.574312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.254337, 24.437529, 18.109606>,  <19.406925, 24.192871, 18.665655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.254337, 24.437529, 18.109606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.653805, 24.416965, 18.107723>,  <19.893484, 24.404629, 18.106594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.653805, 24.416965, 18.107723>,  <19.254337, 24.437529, 18.109606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.653805, 24.416965, 18.107723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005020, -0.005978, -0.999970,
		0.051376, 0.998660, -0.006228,
		0.998667, -0.051406, -0.004707,
		19.953405, 24.401545, 18.106312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.468765, 24.972250, 17.701120>,  <19.254337, 24.437529, 18.109606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.468765, 24.972250, 17.701120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.758068, 24.696571, 17.718605>,  <19.931650, 24.531164, 17.729095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.758068, 24.696571, 17.718605>,  <19.468765, 24.972250, 17.701120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.758068, 24.696571, 17.718605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083760, 0.024719, -0.996179,
		0.685481, 0.724155, 0.075606,
		0.723257, -0.689195, 0.043711,
		19.975044, 24.489813, 17.731718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.092218, 25.105591, 17.256165>,  <19.468765, 24.972250, 17.701120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.092218, 25.105591, 17.256165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.194401, 24.722668, 17.310284>,  <20.255711, 24.492914, 17.342754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.194401, 24.722668, 17.310284>,  <20.092218, 25.105591, 17.256165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.194401, 24.722668, 17.310284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129146, -0.104899, -0.986062,
		0.958156, 0.269371, 0.096835,
		0.255458, -0.957306, 0.135298,
		20.271038, 24.435476, 17.350872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.725428, 25.073584, 16.949148>,  <20.092218, 25.105591, 17.256165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.725428, 25.073584, 16.949148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.566425, 24.707115, 16.969620>,  <20.471024, 24.487234, 16.981903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.566425, 24.707115, 16.969620>,  <20.725428, 25.073584, 16.949148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.566425, 24.707115, 16.969620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177329, -0.131424, -0.975337,
		0.900302, -0.378626, 0.214706,
		-0.397505, -0.916171, 0.051179,
		20.447174, 24.432264, 16.984974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.161842, 24.535696, 16.479586>,  <20.725428, 25.073584, 16.949148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.161842, 24.535696, 16.479586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.797474, 24.377907, 16.527937>,  <20.578852, 24.283234, 16.556948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.797474, 24.377907, 16.527937>,  <21.161842, 24.535696, 16.479586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.797474, 24.377907, 16.527937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082799, -0.112231, -0.990227,
		0.404183, -0.912028, 0.069572,
		-0.910923, -0.394472, 0.120877,
		20.524197, 24.259565, 16.564199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.191557, 24.060820, 15.951200>,  <21.161842, 24.535696, 16.479586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.191557, 24.060820, 15.951200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.797913, 24.044918, 16.020424>,  <20.561726, 24.035378, 16.061958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.797913, 24.044918, 16.020424>,  <21.191557, 24.060820, 15.951200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.797913, 24.044918, 16.020424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145971, -0.373839, -0.915935,
		0.101107, -0.926642, 0.362095,
		-0.984109, -0.039753, 0.173060,
		20.502680, 24.032991, 16.072342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.854168, 23.367962, 15.804551>,  <21.191557, 24.060820, 15.951200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.854168, 23.367962, 15.804551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.566418, 23.645248, 15.786883>,  <20.393768, 23.811621, 15.776282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.566418, 23.645248, 15.786883>,  <20.854168, 23.367962, 15.804551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.566418, 23.645248, 15.786883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162028, -0.229297, -0.959776,
		-0.675461, -0.683281, 0.277271,
		-0.719374, 0.693217, -0.044170,
		20.350605, 23.853214, 15.773632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.335531, 22.933207, 15.492299>,  <20.854168, 23.367962, 15.804551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.335531, 22.933207, 15.492299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.228508, 23.316662, 15.453462>,  <20.164295, 23.546736, 15.430160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.228508, 23.316662, 15.453462>,  <20.335531, 22.933207, 15.492299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.228508, 23.316662, 15.453462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325247, -0.184707, -0.927415,
		-0.906988, -0.216557, 0.361213,
		-0.267556, 0.958638, -0.097093,
		20.148241, 23.604254, 15.424334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.572735, 22.989471, 15.327015>,  <20.335531, 22.933207, 15.492299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.572735, 22.989471, 15.327015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.702736, 23.347717, 15.205527>,  <19.780737, 23.562664, 15.132634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.702736, 23.347717, 15.205527>,  <19.572735, 22.989471, 15.327015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.702736, 23.347717, 15.205527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388382, -0.166421, -0.906346,
		-0.862282, 0.412526, 0.293753,
		0.325005, 0.895615, -0.303720,
		19.800238, 23.616402, 15.114411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.055576, 23.295799, 14.982480>,  <19.572735, 22.989471, 15.327015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.055576, 23.295799, 14.982480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.374619, 23.497360, 14.849870>,  <19.566044, 23.618298, 14.770304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.374619, 23.497360, 14.849870>,  <19.055576, 23.295799, 14.982480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.374619, 23.497360, 14.849870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288435, -0.164085, -0.943335,
		-0.529748, 0.848032, 0.014468,
		0.797604, 0.503903, -0.331526,
		19.613899, 23.648531, 14.750412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.797670, 23.635925, 14.394210>,  <19.055576, 23.295799, 14.982480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.797670, 23.635925, 14.394210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.195305, 23.615269, 14.355994>,  <19.433886, 23.602875, 14.333065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.195305, 23.615269, 14.355994>,  <18.797670, 23.635925, 14.394210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.195305, 23.615269, 14.355994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107607, -0.349512, -0.930732,
		0.014673, 0.935508, -0.353001,
		0.994085, -0.051642, -0.095539,
		19.493530, 23.599775, 14.327332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.009619, 23.979826, 13.850646>,  <18.797670, 23.635925, 14.394210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.009619, 23.979826, 13.850646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.325886, 23.737434, 13.885589>,  <19.515646, 23.591999, 13.906554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.325886, 23.737434, 13.885589>,  <19.009619, 23.979826, 13.850646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.325886, 23.737434, 13.885589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119920, -0.293202, -0.948500,
		0.600384, 0.739474, -0.304495,
		0.790669, -0.605980, 0.087356,
		19.563086, 23.555641, 13.911796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.418310, 24.219986, 13.292892>,  <19.009619, 23.979826, 13.850646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.418310, 24.219986, 13.292892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.589436, 23.871857, 13.390477>,  <19.692110, 23.662979, 13.449028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.589436, 23.871857, 13.390477>,  <19.418310, 24.219986, 13.292892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.589436, 23.871857, 13.390477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149657, -0.197980, -0.968714,
		0.891392, 0.450938, 0.045551,
		0.427812, -0.870321, 0.243964,
		19.717779, 23.610760, 13.463666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.861252, 24.130096, 12.785971>,  <19.418310, 24.219986, 13.292892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.861252, 24.130096, 12.785971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.841049, 23.755234, 12.924063>,  <19.828928, 23.530315, 13.006918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.841049, 23.755234, 12.924063>,  <19.861252, 24.130096, 12.785971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.841049, 23.755234, 12.924063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089789, -0.348533, -0.932986,
		0.994679, -0.016124, 0.101750,
		-0.050507, -0.937158, 0.345231,
		19.825897, 23.474087, 13.027632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.556599, 23.799732, 12.708273>,  <19.861252, 24.130096, 12.785971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.556599, 23.799732, 12.708273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.301598, 23.492241, 12.728862>,  <20.148598, 23.307747, 12.741216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.301598, 23.492241, 12.728862>,  <20.556599, 23.799732, 12.708273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.301598, 23.492241, 12.728862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137386, -0.179164, -0.974179,
		0.758100, -0.613970, 0.219829,
		-0.637502, -0.768727, 0.051473,
		20.110348, 23.261623, 12.744304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.936340, 23.186314, 12.487105>,  <20.556599, 23.799732, 12.708273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.936340, 23.186314, 12.487105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.547588, 23.107895, 12.434935>,  <20.314337, 23.060844, 12.403632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.547588, 23.107895, 12.434935>,  <20.936340, 23.186314, 12.487105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.547588, 23.107895, 12.434935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186405, -0.302138, -0.934862,
		0.143869, -0.932887, 0.330186,
		-0.971882, -0.196046, -0.130426,
		20.256023, 23.049082, 12.395806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.915920, 22.586407, 12.066648>,  <20.936340, 23.186314, 12.487105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.915920, 22.586407, 12.066648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.547653, 22.739700, 12.036972>,  <20.326693, 22.831676, 12.019166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.547653, 22.739700, 12.036972>,  <20.915920, 22.586407, 12.066648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.547653, 22.739700, 12.036972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011414, -0.163551, -0.986469,
		-0.390182, -0.909056, 0.146202,
		-0.920667, 0.383233, -0.074191,
		20.271454, 22.854670, 12.014715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.561096, 22.098347, 11.622498>,  <20.915920, 22.586407, 12.066648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.561096, 22.098347, 11.622498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.372726, 22.451065, 11.612178>,  <20.259705, 22.662697, 11.605987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.372726, 22.451065, 11.612178>,  <20.561096, 22.098347, 11.622498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.372726, 22.451065, 11.612178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055954, -0.059042, -0.996686,
		-0.880398, -0.467919, 0.077144,
		-0.470923, 0.881797, -0.025799,
		20.231449, 22.715605, 11.604438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.910748, 21.986834, 11.205065>,  <20.561096, 22.098347, 11.622498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.910748, 21.986834, 11.205065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.969158, 22.382465, 11.213069>,  <20.004204, 22.619844, 11.217872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.969158, 22.382465, 11.213069>,  <19.910748, 21.986834, 11.205065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.969158, 22.382465, 11.213069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216727, 0.051721, -0.974861,
		-0.965249, 0.138019, 0.221913,
		0.146027, 0.989078, 0.020012,
		20.012966, 22.679190, 11.219072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.368645, 22.308468, 10.833520>,  <19.910748, 21.986834, 11.205065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.368645, 22.308468, 10.833520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.644413, 22.598209, 10.834629>,  <19.809874, 22.772055, 10.835295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.644413, 22.598209, 10.834629>,  <19.368645, 22.308468, 10.833520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.644413, 22.598209, 10.834629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145354, 0.142092, -0.979123,
		-0.709626, 0.674626, 0.203249,
		0.689422, 0.724354, 0.002772,
		19.851240, 22.815516, 10.835461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.042147, 22.679516, 10.473680>,  <19.368645, 22.308468, 10.833520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.042147, 22.679516, 10.473680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.430779, 22.772320, 10.454894>,  <19.663958, 22.828003, 10.443622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.430779, 22.772320, 10.454894>,  <19.042147, 22.679516, 10.473680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.430779, 22.772320, 10.454894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065823, 0.074210, -0.995068,
		-0.227382, 0.969878, 0.087372,
		0.971578, 0.232012, -0.046966,
		19.722252, 22.841923, 10.440804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.073442, 23.273132, 9.948679>,  <19.042147, 22.679516, 10.473680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.073442, 23.273132, 9.948679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.430473, 23.099880, 9.998800>,  <19.644691, 22.995930, 10.028873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.430473, 23.099880, 9.998800>,  <19.073442, 23.273132, 9.948679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.430473, 23.099880, 9.998800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049429, -0.182232, -0.982012,
		0.448173, 0.882718, -0.141247,
		0.892579, -0.433130, 0.125303,
		19.698248, 22.969942, 10.036391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.414614, 23.444551, 9.384362>,  <19.073442, 23.273132, 9.948679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.414614, 23.444551, 9.384362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.635651, 23.134789, 9.507608>,  <19.768272, 22.948931, 9.581556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.635651, 23.134789, 9.507608>,  <19.414614, 23.444551, 9.384362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.635651, 23.134789, 9.507608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046624, -0.397828, -0.916275,
		0.832147, 0.491960, -0.255942,
		0.552592, -0.774408, 0.308114,
		19.801428, 22.902466, 9.600042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.015568, 23.345789, 8.942972>,  <19.414614, 23.444551, 9.384362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.015568, 23.345789, 8.942972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.028488, 23.001167, 9.145627>,  <20.036240, 22.794394, 9.267220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.028488, 23.001167, 9.145627>,  <20.015568, 23.345789, 8.942972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.028488, 23.001167, 9.145627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006345, -0.506713, -0.862091,
		0.999458, 0.031060, -0.010900,
		0.032299, -0.861555, 0.506636,
		20.038177, 22.742701, 9.297618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.607944, 22.964821, 8.620153>,  <20.015568, 23.345789, 8.942972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.607944, 22.964821, 8.620153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.355206, 22.708477, 8.794539>,  <20.203562, 22.554670, 8.899171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.355206, 22.708477, 8.794539>,  <20.607944, 22.964821, 8.620153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.355206, 22.708477, 8.794539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121034, -0.473990, -0.872172,
		0.765584, -0.603847, 0.221924,
		-0.631848, -0.640861, 0.435965,
		20.165651, 22.516218, 8.925329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.926823, 22.202684, 8.734390>,  <20.607944, 22.964821, 8.620153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.926823, 22.202684, 8.734390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.530704, 22.171070, 8.688663>,  <20.293034, 22.152102, 8.661227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.530704, 22.171070, 8.688663>,  <20.926823, 22.202684, 8.734390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.530704, 22.171070, 8.688663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136960, -0.415352, -0.899291,
		0.023595, -0.906221, 0.422146,
		-0.990295, -0.079036, -0.114316,
		20.233616, 22.147360, 8.654368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.837830, 21.594746, 8.486736>,  <20.926823, 22.202684, 8.734390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.837830, 21.594746, 8.486736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.484398, 21.760128, 8.398787>,  <20.272339, 21.859358, 8.346017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.484398, 21.760128, 8.398787>,  <20.837830, 21.594746, 8.486736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.484398, 21.760128, 8.398787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034798, -0.526205, -0.849645,
		-0.466989, -0.743077, 0.479331,
		-0.883578, 0.413454, -0.219874,
		20.219324, 21.884165, 8.332824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.443970, 21.079920, 8.688310>,  <20.837830, 21.594746, 8.486736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.443970, 21.079920, 8.688310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.252480, 21.316399, 8.428677>,  <20.137587, 21.458286, 8.272897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.252480, 21.316399, 8.428677>,  <20.443970, 21.079920, 8.688310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.252480, 21.316399, 8.428677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157508, -0.785141, -0.598953,
		-0.863722, -0.184497, 0.468983,
		-0.478723, 0.591198, -0.649084,
		20.108862, 21.493757, 8.233952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.018164, 20.561934, 8.390346>,  <20.443970, 21.079920, 8.688310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.018164, 20.561934, 8.390346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.006817, 20.877926, 8.145357>,  <20.000008, 21.067522, 7.998364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.006817, 20.877926, 8.145357>,  <20.018164, 20.561934, 8.390346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.006817, 20.877926, 8.145357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227981, -0.601683, -0.765508,
		-0.973252, 0.117916, 0.197171,
		-0.028369, 0.789983, -0.612472,
		19.998306, 21.114922, 7.961616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.493137, 20.467184, 7.942359>,  <20.018164, 20.561934, 8.390346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.493137, 20.467184, 7.942359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.664318, 20.756828, 7.726018>,  <19.767027, 20.930614, 7.596213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.664318, 20.756828, 7.726018>,  <19.493137, 20.467184, 7.942359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.664318, 20.756828, 7.726018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378286, -0.399974, -0.834818,
		-0.820827, 0.561858, 0.102751,
		0.427951, 0.724111, -0.540852,
		19.792704, 20.974062, 7.563762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.765879, 20.176830, 7.879533>,  <19.493137, 20.467184, 7.942359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.765879, 20.176830, 7.879533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.411308, 19.996696, 7.836738>,  <18.198566, 19.888617, 7.811060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.411308, 19.996696, 7.836738>,  <18.765879, 20.176830, 7.879533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.411308, 19.996696, 7.836738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217725, 0.201693, 0.954943,
		-0.408465, 0.869781, -0.276835,
		-0.886426, -0.450335, -0.106988,
		18.145380, 19.861595, 7.804641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.363234, 20.613890, 8.199838>,  <18.765879, 20.176830, 7.879533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.363234, 20.613890, 8.199838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.132462, 20.288639, 8.168905>,  <17.993998, 20.093489, 8.150346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.132462, 20.288639, 8.168905>,  <18.363234, 20.613890, 8.199838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.132462, 20.288639, 8.168905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365052, 0.171995, 0.914961,
		-0.730677, 0.556098, -0.396062,
		-0.576929, -0.813125, -0.077332,
		17.959383, 20.044701, 8.145705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.679932, 20.808067, 8.243290>,  <18.363234, 20.613890, 8.199838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.679932, 20.808067, 8.243290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.745789, 20.437660, 8.379164>,  <17.785303, 20.215416, 8.460688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.745789, 20.437660, 8.379164>,  <17.679932, 20.808067, 8.243290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.745789, 20.437660, 8.379164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421469, 0.245312, 0.873033,
		-0.891772, -0.286905, -0.349898,
		0.164643, -0.926017, 0.339684,
		17.795181, 20.159855, 8.481069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.076645, 20.642618, 8.717175>,  <17.679932, 20.808067, 8.243290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.076645, 20.642618, 8.717175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.320637, 20.342247, 8.818394>,  <17.467031, 20.162025, 8.879125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.320637, 20.342247, 8.818394>,  <17.076645, 20.642618, 8.717175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.320637, 20.342247, 8.818394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198543, 0.164318, 0.966219,
		-0.767140, -0.639617, -0.048860,
		0.609981, -0.750926, 0.253047,
		17.503632, 20.116970, 8.894308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.714350, 20.342310, 9.258480>,  <17.076645, 20.642618, 8.717175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.714350, 20.342310, 9.258480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.088448, 20.215416, 9.321326>,  <17.312906, 20.139280, 9.359034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.088448, 20.215416, 9.321326>,  <16.714350, 20.342310, 9.258480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.088448, 20.215416, 9.321326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121685, 0.128695, 0.984190,
		-0.332438, -0.939575, 0.081758,
		0.935242, -0.317234, 0.157115,
		17.369020, 20.120247, 9.368461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.654182, 19.855476, 9.846333>,  <16.714350, 20.342310, 9.258480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.654182, 19.855476, 9.846333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.025337, 19.999268, 9.806737>,  <17.248030, 20.085543, 9.782980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.025337, 19.999268, 9.806737>,  <16.654182, 19.855476, 9.846333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.025337, 19.999268, 9.806737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028254, 0.196932, 0.980010,
		0.371788, -0.912136, 0.172574,
		0.927888, 0.359480, -0.098988,
		17.303703, 20.107111, 9.777040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.031885, 19.657818, 10.479117>,  <16.654182, 19.855476, 9.846333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.031885, 19.657818, 10.479117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.277023, 19.936157, 10.329337>,  <17.424107, 20.103161, 10.239469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.277023, 19.936157, 10.329337>,  <17.031885, 19.657818, 10.479117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.277023, 19.936157, 10.329337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003385, 0.471550, 0.881833,
		0.790196, -0.541694, 0.286631,
		0.612845, 0.695850, -0.374451,
		17.460876, 20.144913, 10.217002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.548277, 19.702774, 10.917032>,  <17.031885, 19.657818, 10.479117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.548277, 19.702774, 10.917032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.591202, 20.048321, 10.720170>,  <17.616957, 20.255650, 10.602053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.591202, 20.048321, 10.720170>,  <17.548277, 19.702774, 10.917032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.591202, 20.048321, 10.720170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141235, 0.476749, 0.867619,
		0.984143, -0.162616, -0.070848,
		0.107312, 0.863867, -0.492156,
		17.623396, 20.307482, 10.572523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.171919, 19.981037, 11.258417>,  <17.548277, 19.702774, 10.917032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.171919, 19.981037, 11.258417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.947227, 20.275616, 11.107628>,  <17.812412, 20.452362, 11.017155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.947227, 20.275616, 11.107628>,  <18.171919, 19.981037, 11.258417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.947227, 20.275616, 11.107628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142708, 0.535076, 0.832663,
		0.814920, 0.413935, -0.405665,
		-0.561730, 0.736445, -0.376972,
		17.778709, 20.496550, 10.994536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.538889, 20.660862, 11.422542>,  <18.171919, 19.981037, 11.258417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.538889, 20.660862, 11.422542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.161358, 20.770645, 11.348932>,  <17.934839, 20.836515, 11.304767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.161358, 20.770645, 11.348932>,  <18.538889, 20.660862, 11.422542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.161358, 20.770645, 11.348932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012733, 0.586693, 0.809710,
		0.330197, 0.761882, -0.557231,
		-0.943826, 0.274459, -0.184023,
		17.878210, 20.852983, 11.293725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.565258, 21.386282, 11.516854>,  <18.538889, 20.660862, 11.422542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.565258, 21.386282, 11.516854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.195663, 21.236794, 11.549300>,  <17.973906, 21.147100, 11.568768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.195663, 21.236794, 11.549300>,  <18.565258, 21.386282, 11.516854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.195663, 21.236794, 11.549300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092372, 0.423931, 0.900972,
		-0.371098, 0.824995, -0.426228,
		-0.923988, -0.373720, 0.081114,
		17.918467, 21.124678, 11.573634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.299976, 21.765627, 12.025882>,  <18.565258, 21.386282, 11.516854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.299976, 21.765627, 12.025882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.963394, 21.554111, 11.981447>,  <17.761446, 21.427202, 11.954786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.963394, 21.554111, 11.981447>,  <18.299976, 21.765627, 12.025882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.963394, 21.554111, 11.981447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319912, 0.321872, 0.891098,
		-0.435445, 0.785355, -0.440005,
		-0.841454, -0.528787, -0.111087,
		17.710958, 21.395475, 11.948121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.666485, 22.227320, 12.191640>,  <18.299976, 21.765627, 12.025882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.666485, 22.227320, 12.191640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.586433, 21.842934, 12.268049>,  <17.538403, 21.612301, 12.313895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.586433, 21.842934, 12.268049>,  <17.666485, 22.227320, 12.191640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.586433, 21.842934, 12.268049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239777, 0.237077, 0.941436,
		-0.949976, 0.142606, -0.277864,
		-0.200129, -0.960967, 0.191024,
		17.526394, 21.554644, 12.325356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.969961, 22.217136, 12.530916>,  <17.666485, 22.227320, 12.191640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.969961, 22.217136, 12.530916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.174660, 21.881798, 12.606054>,  <17.297480, 21.680593, 12.651137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.174660, 21.881798, 12.606054>,  <16.969961, 22.217136, 12.530916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.174660, 21.881798, 12.606054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037274, 0.196772, 0.979740,
		-0.858326, -0.508382, 0.069450,
		0.511749, -0.838348, 0.187844,
		17.328184, 21.630293, 12.662408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.518856, 21.835747, 12.979379>,  <16.969961, 22.217136, 12.530916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.518856, 21.835747, 12.979379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.903843, 21.733879, 13.016903>,  <17.134834, 21.672758, 13.039417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.903843, 21.733879, 13.016903>,  <16.518856, 21.835747, 12.979379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.903843, 21.733879, 13.016903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031274, 0.239284, 0.970446,
		-0.269590, -0.936956, 0.222339,
		0.962468, -0.254669, 0.093811,
		17.192583, 21.657478, 13.045046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.558096, 21.492775, 13.584141>,  <16.518856, 21.835747, 12.979379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.558096, 21.492775, 13.584141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.936546, 21.602535, 13.515376>,  <17.163616, 21.668392, 13.474117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.936546, 21.602535, 13.515376>,  <16.558096, 21.492775, 13.584141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.936546, 21.602535, 13.515376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176988, 0.006344, 0.984192,
		0.271155, -0.961594, -0.042564,
		0.946124, 0.274402, -0.171911,
		17.220383, 21.684856, 13.463803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.952852, 21.172958, 14.100243>,  <16.558096, 21.492775, 13.584141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.952852, 21.172958, 14.100243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.205482, 21.455803, 13.973052>,  <17.357061, 21.625509, 13.896738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.205482, 21.455803, 13.973052>,  <16.952852, 21.172958, 14.100243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.205482, 21.455803, 13.973052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355851, 0.099997, 0.929177,
		0.688827, -0.699997, -0.188470,
		0.631575, 0.707110, -0.317976,
		17.394955, 21.667936, 13.877660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.619587, 20.961432, 14.280361>,  <16.952852, 21.172958, 14.100243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.619587, 20.961432, 14.280361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.662281, 21.352161, 14.206149>,  <17.687899, 21.586599, 14.161622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.662281, 21.352161, 14.206149>,  <17.619587, 20.961432, 14.280361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.662281, 21.352161, 14.206149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300620, 0.146159, 0.942478,
		0.947753, -0.156371, -0.278052,
		0.106737, 0.976824, -0.185531,
		17.694302, 21.645208, 14.150490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.283556, 21.142500, 14.466292>,  <17.619587, 20.961432, 14.280361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.283556, 21.142500, 14.466292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.071129, 21.480618, 14.489781>,  <17.943672, 21.683487, 14.503875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.071129, 21.480618, 14.489781>,  <18.283556, 21.142500, 14.466292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.071129, 21.480618, 14.489781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397904, 0.187604, 0.898041,
		0.748090, 0.500286, -0.435975,
		-0.531068, 0.845292, 0.058722,
		17.911808, 21.734205, 14.507398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.766565, 21.676264, 14.848579>,  <18.283556, 21.142500, 14.466292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.766565, 21.676264, 14.848579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.392006, 21.807667, 14.897960>,  <18.167271, 21.886509, 14.927588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.392006, 21.807667, 14.897960>,  <18.766565, 21.676264, 14.848579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.392006, 21.807667, 14.897960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199764, 0.209736, 0.957134,
		0.288532, 0.920921, -0.262020,
		-0.936399, 0.328506, 0.123451,
		18.111086, 21.906219, 14.934995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.774052, 22.389870, 15.178519>,  <18.766565, 21.676264, 14.848579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.774052, 22.389870, 15.178519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.403225, 22.249512, 15.231311>,  <18.180729, 22.165297, 15.262985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.403225, 22.249512, 15.231311>,  <18.774052, 22.389870, 15.178519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.403225, 22.249512, 15.231311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123472, 0.046616, 0.991253,
		-0.353979, 0.935254, 0.000110,
		-0.927067, -0.350896, 0.131978,
		18.125105, 22.144243, 15.270905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.406157, 22.892027, 15.421390>,  <18.774052, 22.389870, 15.178519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.406157, 22.892027, 15.421390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.224628, 22.558884, 15.548129>,  <18.115711, 22.358997, 15.624172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.224628, 22.558884, 15.548129>,  <18.406157, 22.892027, 15.421390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.224628, 22.558884, 15.548129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269170, 0.210837, 0.939732,
		-0.849467, 0.511756, 0.128498,
		-0.453821, -0.832859, 0.316848,
		18.088482, 22.309027, 15.643184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.888821, 23.102345, 15.898093>,  <18.406157, 22.892027, 15.421390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.888821, 23.102345, 15.898093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.958992, 22.718422, 15.985726>,  <18.001095, 22.488068, 16.038305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.958992, 22.718422, 15.985726>,  <17.888821, 23.102345, 15.898093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.958992, 22.718422, 15.985726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186919, 0.250958, 0.949780,
		-0.966585, -0.125669, 0.223431,
		0.175430, -0.959806, 0.219082,
		18.011621, 22.430481, 16.051451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.565001, 23.048031, 16.561354>,  <17.888821, 23.102345, 15.898093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.565001, 23.048031, 16.561354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.845764, 22.766087, 16.520370>,  <18.014223, 22.596920, 16.495781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.845764, 22.766087, 16.520370>,  <17.565001, 23.048031, 16.561354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.845764, 22.766087, 16.520370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272158, 0.132479, 0.953089,
		-0.658221, -0.696866, 0.284821,
		0.701908, -0.704859, -0.102458,
		18.056337, 22.554628, 16.489634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.409290, 22.649891, 17.129957>,  <17.565001, 23.048031, 16.561354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.409290, 22.649891, 17.129957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.783783, 22.545227, 17.036148>,  <18.008478, 22.482430, 16.979862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.783783, 22.545227, 17.036148>,  <17.409290, 22.649891, 17.129957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.783783, 22.545227, 17.036148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233964, -0.033758, 0.971659,
		-0.262160, -0.964570, 0.029614,
		0.936233, -0.261659, -0.234525,
		18.064653, 22.466730, 16.965790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.595602, 22.176615, 17.652466>,  <17.409290, 22.649891, 17.129957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.595602, 22.176615, 17.652466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.944160, 22.299854, 17.499760>,  <18.153296, 22.373798, 17.408136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.944160, 22.299854, 17.499760>,  <17.595602, 22.176615, 17.652466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.944160, 22.299854, 17.499760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389351, 0.039099, 0.920259,
		0.298458, -0.950550, -0.085888,
		0.871395, 0.308099, -0.381768,
		18.205580, 22.392284, 17.385229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.176449, 21.726738, 17.946188>,  <17.595602, 22.176615, 17.652466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.176449, 21.726738, 17.946188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.366535, 22.055439, 17.820400>,  <18.480587, 22.252659, 17.744926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.366535, 22.055439, 17.820400>,  <18.176449, 21.726738, 17.946188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.366535, 22.055439, 17.820400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514021, 0.030790, 0.857225,
		0.714110, -0.569011, -0.407766,
		0.475215, 0.821753, -0.314471,
		18.509100, 22.301966, 17.726059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.828060, 21.570734, 17.990305>,  <18.176449, 21.726738, 17.946188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.828060, 21.570734, 17.990305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.852032, 21.970009, 17.988050>,  <18.866415, 22.209574, 17.986698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.852032, 21.970009, 17.988050>,  <18.828060, 21.570734, 17.990305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.852032, 21.970009, 17.988050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587915, -0.030732, 0.808339,
		0.806700, -0.051756, -0.588691,
		0.059928, 0.998187, -0.005637,
		18.870010, 22.269464, 17.986359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.558649, 21.752983, 18.056559>,  <18.828060, 21.570734, 17.990305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.558649, 21.752983, 18.056559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.369774, 22.082294, 18.182575>,  <19.256449, 22.279881, 18.258184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.369774, 22.082294, 18.182575>,  <19.558649, 21.752983, 18.056559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.369774, 22.082294, 18.182575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601868, 0.039988, 0.797594,
		0.644044, 0.566228, -0.514387,
		-0.472189, 0.823278, 0.315040,
		19.228117, 22.329277, 18.277086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.043139, 22.079769, 18.469978>,  <19.558649, 21.752983, 18.056559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.043139, 22.079769, 18.469978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.698700, 22.250160, 18.581015>,  <19.492037, 22.352396, 18.647636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.698700, 22.250160, 18.581015>,  <20.043139, 22.079769, 18.469978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.698700, 22.250160, 18.581015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287521, -0.042322, 0.956839,
		0.419342, 0.903743, -0.086034,
		-0.861095, 0.425979, 0.277592,
		19.440371, 22.377954, 18.664291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.191259, 22.458773, 19.081814>,  <20.043139, 22.079769, 18.469978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.191259, 22.458773, 19.081814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.794399, 22.459934, 19.131815>,  <19.556282, 22.460630, 19.161816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.794399, 22.459934, 19.131815>,  <20.191259, 22.458773, 19.081814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.794399, 22.459934, 19.131815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122783, -0.166365, 0.978390,
		0.023636, 0.986060, 0.164703,
		-0.992152, 0.002903, 0.125003,
		19.496754, 22.460806, 19.169315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.978136, 22.959921, 19.668837>,  <20.191259, 22.458773, 19.081814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.978136, 22.959921, 19.668837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.656700, 22.728455, 19.613131>,  <19.463839, 22.589575, 19.579706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.656700, 22.728455, 19.613131>,  <19.978136, 22.959921, 19.668837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.656700, 22.728455, 19.613131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089376, -0.114014, 0.989451,
		-0.588438, 0.807558, 0.039902,
		-0.803588, -0.578664, -0.139266,
		19.415625, 22.554855, 19.571350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.476339, 23.235922, 20.082766>,  <19.978136, 22.959921, 19.668837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.476339, 23.235922, 20.082766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.400070, 22.846107, 20.035572>,  <19.354309, 22.612219, 20.007256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.400070, 22.846107, 20.035572>,  <19.476339, 23.235922, 20.082766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.400070, 22.846107, 20.035572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141054, -0.091745, 0.985742,
		-0.971467, 0.204596, -0.119969,
		-0.190672, -0.974538, -0.117986,
		19.342869, 22.553745, 20.000175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.955652, 23.080858, 20.540665>,  <19.476339, 23.235922, 20.082766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.955652, 23.080858, 20.540665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.094864, 22.712646, 20.469669>,  <19.178391, 22.491720, 20.427073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.094864, 22.712646, 20.469669>,  <18.955652, 23.080858, 20.540665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.094864, 22.712646, 20.469669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021379, -0.197066, 0.980157,
		-0.937240, -0.337329, -0.088265,
		0.348029, -0.920530, -0.177486,
		19.199272, 22.436487, 20.416424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.605377, 22.584930, 21.101381>,  <18.955652, 23.080858, 20.540665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.605377, 22.584930, 21.101381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.926064, 22.402458, 20.946899>,  <19.118475, 22.292974, 20.854210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.926064, 22.402458, 20.946899>,  <18.605377, 22.584930, 21.101381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.926064, 22.402458, 20.946899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310932, -0.233531, 0.921295,
		-0.510467, -0.858699, -0.045384,
		0.801714, -0.456179, -0.386207,
		19.166578, 22.265604, 20.831038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.617254, 22.043669, 21.453249>,  <18.605377, 22.584930, 21.101381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.617254, 22.043669, 21.453249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.000519, 22.092381, 21.349634>,  <19.230476, 22.121607, 21.287464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.000519, 22.092381, 21.349634>,  <18.617254, 22.043669, 21.453249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.000519, 22.092381, 21.349634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279666, -0.205513, 0.937844,
		0.060974, -0.971048, -0.230971,
		0.958159, 0.121778, -0.259038,
		19.287966, 22.128914, 21.271923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.945446, 21.486572, 21.793421>,  <18.617254, 22.043669, 21.453249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.945446, 21.486572, 21.793421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.228642, 21.755875, 21.708117>,  <19.398558, 21.917456, 21.656933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.228642, 21.755875, 21.708117>,  <18.945446, 21.486572, 21.793421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.228642, 21.755875, 21.708117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365292, -0.090666, 0.926467,
		0.604414, -0.733829, -0.310125,
		0.707986, 0.673256, -0.213262,
		19.441038, 21.957851, 21.644138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.566683, 21.247953, 22.172947>,  <18.945446, 21.486572, 21.793421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.566683, 21.247953, 22.172947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.677975, 21.614506, 22.057823>,  <19.744751, 21.834436, 21.988749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.677975, 21.614506, 22.057823>,  <19.566683, 21.247953, 22.172947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.677975, 21.614506, 22.057823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364883, 0.176341, 0.914202,
		0.888509, -0.359376, -0.285308,
		0.278231, 0.916381, -0.287810,
		19.761444, 21.889420, 21.971479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.267883, 20.858814, 22.236534>,  <19.566683, 21.247953, 22.172947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.267883, 20.858814, 22.236534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.161461, 20.492455, 22.356760>,  <20.097607, 20.272638, 22.428896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.161461, 20.492455, 22.356760>,  <20.267883, 20.858814, 22.236534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.161461, 20.492455, 22.356760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113066, -0.279998, -0.953319,
		0.957303, -0.287621, -0.029062,
		-0.266057, -0.915901, 0.300563,
		20.081644, 20.217684, 22.446928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.696999, 20.356857, 21.890423>,  <20.267883, 20.858814, 22.236534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.696999, 20.356857, 21.890423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.354935, 20.181564, 22.001169>,  <20.149696, 20.076389, 22.067617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.354935, 20.181564, 22.001169>,  <20.696999, 20.356857, 21.890423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.354935, 20.181564, 22.001169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171023, -0.265680, -0.948770,
		0.489339, -0.858701, 0.152252,
		-0.855160, -0.438232, 0.276865,
		20.098387, 20.050095, 22.084229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.710335, 19.604939, 21.559351>,  <20.696999, 20.356857, 21.890423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.710335, 19.604939, 21.559351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.329685, 19.696949, 21.640841>,  <20.101295, 19.752155, 21.689735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.329685, 19.696949, 21.640841>,  <20.710335, 19.604939, 21.559351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.329685, 19.696949, 21.640841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275040, -0.342055, -0.898527,
		-0.136999, -0.911091, 0.388773,
		-0.951622, 0.230025, 0.203725,
		20.044199, 19.765957, 21.701958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.239485, 19.073523, 21.224569>,  <20.710335, 19.604939, 21.559351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.239485, 19.073523, 21.224569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.981728, 19.372417, 21.289555>,  <19.827074, 19.551754, 21.328547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.981728, 19.372417, 21.289555>,  <20.239485, 19.073523, 21.224569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.981728, 19.372417, 21.289555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392563, -0.140928, -0.908864,
		-0.656243, -0.649441, 0.384151,
		-0.644391, 0.747239, 0.162464,
		19.788410, 19.596588, 21.338293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.545763, 18.778488, 21.284491>,  <20.239485, 19.073523, 21.224569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.545763, 18.778488, 21.284491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.554070, 19.156799, 21.154833>,  <19.559053, 19.383787, 21.077038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.554070, 19.156799, 21.154833>,  <19.545763, 18.778488, 21.284491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.554070, 19.156799, 21.154833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413253, -0.287100, -0.864173,
		-0.910380, 0.151901, 0.384883,
		0.020768, 0.945780, -0.324144,
		19.560301, 19.440533, 21.057590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.890200, 18.844597, 20.881950>,  <19.545763, 18.778488, 21.284491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.890200, 18.844597, 20.881950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.083099, 19.187031, 20.807590>,  <19.198839, 19.392490, 20.762974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.083099, 19.187031, 20.807590>,  <18.890200, 18.844597, 20.881950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.083099, 19.187031, 20.807590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350033, -0.006231, -0.936717,
		-0.803065, 0.516801, 0.296653,
		0.482248, 0.856083, -0.185901,
		19.227774, 19.443855, 20.751820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.413631, 19.180424, 20.520149>,  <18.890200, 18.844597, 20.881950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.413631, 19.180424, 20.520149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.743607, 19.390770, 20.437262>,  <18.941591, 19.516977, 20.387529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.743607, 19.390770, 20.437262>,  <18.413631, 19.180424, 20.520149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.743607, 19.390770, 20.437262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180281, -0.102666, -0.978243,
		-0.535700, 0.844348, 0.010111,
		0.824939, 0.525868, -0.207218,
		18.991089, 19.548531, 20.375095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.297537, 19.821196, 20.158922>,  <18.413631, 19.180424, 20.520149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.297537, 19.821196, 20.158922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.674007, 19.766159, 20.035467>,  <18.899889, 19.733137, 19.961393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.674007, 19.766159, 20.035467>,  <18.297537, 19.821196, 20.158922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.674007, 19.766159, 20.035467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293254, 0.121243, -0.948315,
		0.167899, 0.983041, 0.073762,
		0.941176, -0.137590, -0.308637,
		18.956360, 19.724882, 19.942877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.480373, 20.305355, 19.565397>,  <18.297537, 19.821196, 20.158922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.480373, 20.305355, 19.565397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.755848, 20.017204, 19.532492>,  <18.921133, 19.844313, 19.512749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.755848, 20.017204, 19.532492>,  <18.480373, 20.305355, 19.565397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.755848, 20.017204, 19.532492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135377, -0.016294, -0.990660,
		0.712310, 0.693390, -0.108744,
		0.688685, -0.720378, -0.082263,
		18.962454, 19.801090, 19.507812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.963163, 20.461790, 19.075155>,  <18.480373, 20.305355, 19.565397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.963163, 20.461790, 19.075155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.021042, 20.066959, 19.102707>,  <19.055769, 19.830061, 19.119238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.021042, 20.066959, 19.102707>,  <18.963163, 20.461790, 19.075155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.021042, 20.066959, 19.102707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169604, -0.093325, -0.981084,
		0.974832, 0.130278, -0.180916,
		0.144697, -0.987076, 0.068880,
		19.064451, 19.770836, 19.123371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.388575, 20.228386, 18.465435>,  <18.963163, 20.461790, 19.075155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.388575, 20.228386, 18.465435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.229813, 19.878639, 18.577110>,  <19.134556, 19.668791, 18.644115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.229813, 19.878639, 18.577110>,  <19.388575, 20.228386, 18.465435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.229813, 19.878639, 18.577110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146945, -0.239721, -0.959657,
		0.906021, -0.421918, -0.033337,
		-0.396905, -0.874368, 0.279191,
		19.110741, 19.616329, 18.660868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.765686, 19.770105, 18.060589>,  <19.388575, 20.228386, 18.465435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.765686, 19.770105, 18.060589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.406612, 19.641819, 18.181456>,  <19.191168, 19.564846, 18.253975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.406612, 19.641819, 18.181456>,  <19.765686, 19.770105, 18.060589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.406612, 19.641819, 18.181456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246870, -0.201960, -0.947770,
		0.364992, -0.925393, 0.102121,
		-0.897684, -0.320718, 0.302165,
		19.137308, 19.545603, 18.272106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.705812, 19.178577, 17.612213>,  <19.765686, 19.770105, 18.060589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.705812, 19.178577, 17.612213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.340290, 19.271824, 17.745249>,  <19.120977, 19.327772, 17.825069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.340290, 19.271824, 17.745249>,  <19.705812, 19.178577, 17.612213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.340290, 19.271824, 17.745249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401777, -0.399002, -0.824241,
		-0.059440, -0.886823, 0.458271,
		-0.913806, 0.233115, 0.332588,
		19.066149, 19.341759, 17.845026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.279171, 18.662636, 17.265593>,  <19.705812, 19.178577, 17.612213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.279171, 18.662636, 17.265593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.061478, 18.969719, 17.400908>,  <18.930861, 19.153969, 17.482096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.061478, 18.969719, 17.400908>,  <19.279171, 18.662636, 17.265593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.061478, 18.969719, 17.400908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633104, -0.111268, -0.766028,
		-0.550444, -0.631068, 0.546594,
		-0.544234, 0.767706, 0.338285,
		18.898207, 19.200031, 17.502394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.523369, 18.384748, 17.227598>,  <19.279171, 18.662636, 17.265593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.523369, 18.384748, 17.227598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.484203, 18.781975, 17.253632>,  <18.460705, 19.020309, 17.269251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.484203, 18.781975, 17.253632>,  <18.523369, 18.384748, 17.227598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.484203, 18.781975, 17.253632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636694, -0.012244, -0.771019,
		-0.764875, -0.116931, 0.633477,
		-0.097912, 0.993065, 0.065084,
		18.454830, 19.079895, 17.273157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.816435, 18.478668, 17.007082>,  <18.523369, 18.384748, 17.227598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.816435, 18.478668, 17.007082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.986202, 18.838470, 16.965597>,  <18.088062, 19.054352, 16.940706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.986202, 18.838470, 16.965597>,  <17.816435, 18.478668, 17.007082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.986202, 18.838470, 16.965597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349626, 0.057144, -0.935145,
		-0.835243, 0.433154, 0.338744,
		0.424419, 0.899507, -0.103712,
		18.113527, 19.108322, 16.934483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.293394, 18.837440, 16.736910>,  <17.816435, 18.478668, 17.007082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.293394, 18.837440, 16.736910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.624523, 19.047062, 16.656830>,  <17.823200, 19.172834, 16.608782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.624523, 19.047062, 16.656830>,  <17.293394, 18.837440, 16.736910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.624523, 19.047062, 16.656830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354016, 0.211161, -0.911089,
		-0.435184, 0.825093, 0.360327,
		0.827821, 0.524053, -0.200202,
		17.872869, 19.204277, 16.596769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.064264, 19.480589, 16.460373>,  <17.293394, 18.837440, 16.736910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.064264, 19.480589, 16.460373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.443104, 19.442230, 16.337862>,  <17.670408, 19.419216, 16.264355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.443104, 19.442230, 16.337862>,  <17.064264, 19.480589, 16.460373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.443104, 19.442230, 16.337862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270158, 0.276965, -0.922120,
		0.173256, 0.956083, 0.236406,
		0.947099, -0.095896, -0.306280,
		17.727234, 19.413462, 16.245977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.281185, 20.138239, 16.076427>,  <17.064264, 19.480589, 16.460373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.281185, 20.138239, 16.076427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.532276, 19.845192, 15.971183>,  <17.682930, 19.669363, 15.908035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.532276, 19.845192, 15.971183>,  <17.281185, 20.138239, 16.076427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.532276, 19.845192, 15.971183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265261, 0.116457, -0.957118,
		0.731843, 0.670603, -0.121232,
		0.627728, -0.732618, -0.263113,
		17.720594, 19.625406, 15.892249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.619900, 20.436014, 15.537905>,  <17.281185, 20.138239, 16.076427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.619900, 20.436014, 15.537905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.670620, 20.042171, 15.489789>,  <17.701052, 19.805866, 15.460919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.670620, 20.042171, 15.489789>,  <17.619900, 20.436014, 15.537905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.670620, 20.042171, 15.489789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154980, 0.100114, -0.982832,
		0.979746, 0.143266, -0.139900,
		0.126800, -0.984608, -0.120290,
		17.708660, 19.746790, 15.453702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.992111, 20.408810, 14.920506>,  <17.619900, 20.436014, 15.537905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.992111, 20.408810, 14.920506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.859226, 20.033386, 14.957906>,  <17.779495, 19.808132, 14.980346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.859226, 20.033386, 14.957906>,  <17.992111, 20.408810, 14.920506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.859226, 20.033386, 14.957906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195951, -0.028289, -0.980206,
		0.922625, -0.343959, -0.174513,
		-0.332213, -0.938559, 0.093499,
		17.759562, 19.751820, 14.985955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.231844, 20.151625, 14.296309>,  <17.992111, 20.408810, 14.920506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.231844, 20.151625, 14.296309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.978333, 19.872337, 14.429465>,  <17.826225, 19.704765, 14.509359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.978333, 19.872337, 14.429465>,  <18.231844, 20.151625, 14.296309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.978333, 19.872337, 14.429465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398953, -0.073643, -0.914009,
		0.662693, -0.712087, -0.231883,
		-0.633777, -0.698218, 0.332892,
		17.788198, 19.662872, 14.529333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.298172, 19.488697, 13.920169>,  <18.231844, 20.151625, 14.296309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.298172, 19.488697, 13.920169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.923779, 19.504799, 14.060063>,  <17.699142, 19.514460, 14.144000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.923779, 19.504799, 14.060063>,  <18.298172, 19.488697, 13.920169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.923779, 19.504799, 14.060063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346933, -0.274151, -0.896927,
		0.059775, -0.960844, 0.270567,
		-0.935983, 0.040254, 0.349736,
		17.642984, 19.516876, 14.164984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.914156, 18.966772, 13.571290>,  <18.298172, 19.488697, 13.920169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.914156, 18.966772, 13.571290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.636600, 19.210915, 13.724120>,  <17.470066, 19.357399, 13.815819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.636600, 19.210915, 13.724120>,  <17.914156, 18.966772, 13.571290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.636600, 19.210915, 13.724120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585145, -0.168702, -0.793187,
		-0.419669, -0.773954, 0.474207,
		-0.693890, 0.610356, 0.382076,
		17.428432, 19.394022, 13.838743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.370369, 18.663858, 13.335894>,  <17.914156, 18.966772, 13.571290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.370369, 18.663858, 13.335894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.193230, 19.002426, 13.454187>,  <17.086946, 19.205566, 13.525164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.193230, 19.002426, 13.454187>,  <17.370369, 18.663858, 13.335894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.193230, 19.002426, 13.454187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736909, -0.155713, -0.657814,
		-0.510738, -0.509240, 0.692692,
		-0.442847, 0.846421, 0.295735,
		17.060375, 19.256351, 13.542908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.737373, 18.503637, 13.727772>,  <17.370369, 18.663858, 13.335894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.737373, 18.503637, 13.727772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.735943, 18.854919, 13.536464>,  <16.735085, 19.065689, 13.421679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.735943, 18.854919, 13.536464>,  <16.737373, 18.503637, 13.727772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.735943, 18.854919, 13.536464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718261, -0.335022, -0.609804,
		-0.695764, 0.341342, 0.631979,
		-0.003576, 0.878206, -0.478269,
		16.734871, 19.118382, 13.392983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.967546, 18.794132, 13.756245>,  <16.737373, 18.503637, 13.727772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.967546, 18.794132, 13.756245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.202976, 18.907074, 13.453232>,  <16.344234, 18.974838, 13.271424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.202976, 18.907074, 13.453232>,  <15.967546, 18.794132, 13.756245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.202976, 18.907074, 13.453232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725712, -0.228394, -0.648983,
		-0.356259, 0.931725, 0.070481,
		0.588576, 0.282355, -0.757532,
		16.379549, 18.991781, 13.225972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.488878, 18.853563, 13.290064>,  <15.967546, 18.794132, 13.756245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.488878, 18.853563, 13.290064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.802012, 18.900341, 13.045608>,  <15.989893, 18.928408, 12.898933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.802012, 18.900341, 13.045608>,  <15.488878, 18.853563, 13.290064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.802012, 18.900341, 13.045608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614295, -0.011101, -0.788998,
		-0.099053, 0.993076, 0.063147,
		0.782835, 0.116943, -0.611141,
		16.036863, 18.935425, 12.862266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.337956, 19.436005, 12.723160>,  <15.488878, 18.853563, 13.290064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.337956, 19.436005, 12.723160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.634839, 19.223713, 12.559473>,  <15.812968, 19.096338, 12.461261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.634839, 19.223713, 12.559473>,  <15.337956, 19.436005, 12.723160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.634839, 19.223713, 12.559473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402004, 0.135982, -0.905484,
		0.536213, 0.836562, -0.112428,
		0.742206, -0.530729, -0.409216,
		15.857501, 19.064495, 12.436708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.433524, 19.720900, 12.087147>,  <15.337956, 19.436005, 12.723160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.433524, 19.720900, 12.087147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.592862, 19.358311, 12.031099>,  <15.688465, 19.140759, 11.997471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.592862, 19.358311, 12.031099>,  <15.433524, 19.720900, 12.087147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.592862, 19.358311, 12.031099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373489, -0.020774, -0.927402,
		0.837751, 0.421758, -0.346832,
		0.398345, -0.906470, -0.140118,
		15.712365, 19.086370, 11.989064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.566301, 19.701607, 11.388936>,  <15.433524, 19.720900, 12.087147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.566301, 19.701607, 11.388936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.629422, 19.316734, 11.477759>,  <15.667295, 19.085812, 11.531054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.629422, 19.316734, 11.477759>,  <15.566301, 19.701607, 11.388936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.629422, 19.316734, 11.477759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393646, -0.267531, -0.879471,
		0.905616, 0.051370, -0.420975,
		0.157802, -0.962179, 0.222059,
		15.676763, 19.028080, 11.544377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.975770, 19.318464, 10.770225>,  <15.566301, 19.701607, 11.388936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.975770, 19.318464, 10.770225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.749656, 19.076588, 10.994653>,  <15.613987, 18.931461, 11.129310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.749656, 19.076588, 10.994653>,  <15.975770, 19.318464, 10.770225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.749656, 19.076588, 10.994653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368128, -0.423755, -0.827595,
		0.738197, -0.674373, 0.016938,
		-0.565285, -0.604693, 0.561070,
		15.580070, 18.895180, 11.162973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.917477, 18.794762, 10.349730>,  <15.975770, 19.318464, 10.770225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.917477, 18.794762, 10.349730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.625710, 18.705791, 10.608490>,  <15.450650, 18.652409, 10.763746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.625710, 18.705791, 10.608490>,  <15.917477, 18.794762, 10.349730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.625710, 18.705791, 10.608490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525580, -0.423073, -0.738089,
		0.437855, -0.878371, 0.191694,
		-0.729416, -0.222426, 0.646899,
		15.406885, 18.639063, 10.802560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.807196, 18.096777, 10.326916>,  <15.917477, 18.794762, 10.349730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.807196, 18.096777, 10.326916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.480405, 18.288166, 10.455670>,  <15.284330, 18.403000, 10.532923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.480405, 18.288166, 10.455670>,  <15.807196, 18.096777, 10.326916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.480405, 18.288166, 10.455670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523562, -0.381462, -0.761820,
		-0.241720, -0.790919, 0.562155,
		-0.816979, 0.478470, 0.321888,
		15.235312, 18.431707, 10.552237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.425478, 17.617321, 10.277600>,  <15.807196, 18.096777, 10.326916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.425478, 17.617321, 10.277600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.195203, 17.944157, 10.289936>,  <15.057037, 18.140257, 10.297338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.195203, 17.944157, 10.289936>,  <15.425478, 17.617321, 10.277600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.195203, 17.944157, 10.289936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622771, -0.413717, -0.664074,
		-0.529848, -0.401506, 0.747030,
		-0.575689, 0.817087, 0.030839,
		15.022496, 18.189283, 10.299188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.700816, 17.357479, 10.345744>,  <15.425478, 17.617321, 10.277600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.700816, 17.357479, 10.345744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.642390, 17.739033, 10.240849>,  <14.607335, 17.967966, 10.177913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.642390, 17.739033, 10.240849>,  <14.700816, 17.357479, 10.345744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.642390, 17.739033, 10.240849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672032, -0.290202, -0.681290,
		-0.725974, 0.076719, 0.683430,
		-0.146065, 0.953885, -0.262236,
		14.598571, 18.025198, 10.162179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.994193, 17.400839, 10.179169>,  <14.700816, 17.357479, 10.345744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.994193, 17.400839, 10.179169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.161267, 17.719154, 10.003778>,  <14.261512, 17.910143, 9.898544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.161267, 17.719154, 10.003778>,  <13.994193, 17.400839, 10.179169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.161267, 17.719154, 10.003778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485732, -0.212267, -0.847943,
		-0.767856, 0.567155, 0.297879,
		0.417686, 0.795787, -0.438476,
		14.286573, 17.957891, 9.872235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.406075, 17.723566, 9.826234>,  <13.994193, 17.400839, 10.179169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.406075, 17.723566, 9.826234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.763469, 17.820118, 9.674747>,  <13.977904, 17.878048, 9.583856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.763469, 17.820118, 9.674747>,  <13.406075, 17.723566, 9.826234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.763469, 17.820118, 9.674747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298462, -0.310963, -0.902343,
		-0.335573, 0.919260, -0.205798,
		0.893483, 0.241379, -0.378715,
		14.031513, 17.892532, 9.561133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.176038, 18.060089, 9.234567>,  <13.406075, 17.723566, 9.826234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.176038, 18.060089, 9.234567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.558707, 17.959553, 9.175775>,  <13.788309, 17.899231, 9.140499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.558707, 17.959553, 9.175775>,  <13.176038, 18.060089, 9.234567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.558707, 17.959553, 9.175775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206658, -0.230546, -0.950863,
		0.205105, 0.940041, -0.272499,
		0.956674, -0.251341, -0.146981,
		13.845709, 17.884150, 9.131680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.452370, 18.402153, 8.613969>,  <13.176038, 18.060089, 9.234567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.452370, 18.402153, 8.613969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.668920, 18.067783, 8.650069>,  <13.798850, 17.867161, 8.671729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.668920, 18.067783, 8.650069>,  <13.452370, 18.402153, 8.613969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.668920, 18.067783, 8.650069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190518, -0.226514, -0.955193,
		0.818911, 0.499924, -0.281887,
		0.541375, -0.835923, 0.090251,
		13.831332, 17.817007, 8.677144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.150401, 18.304522, 8.312283>,  <13.452370, 18.402153, 8.613969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.150401, 18.304522, 8.312283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.910750, 17.984303, 8.317480>,  <13.766960, 17.792171, 8.320599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.910750, 17.984303, 8.317480>,  <14.150401, 18.304522, 8.312283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.910750, 17.984303, 8.317480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232687, 0.158566, -0.959538,
		0.766096, -0.577910, -0.281278,
		-0.599128, -0.800548, 0.012995,
		13.731012, 17.744139, 8.321379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.233814, 18.030361, 7.732090>,  <14.150401, 18.304522, 8.312283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.233814, 18.030361, 7.732090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.869330, 17.879505, 7.798379>,  <13.650640, 17.788992, 7.838152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.869330, 17.879505, 7.798379>,  <14.233814, 18.030361, 7.732090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.869330, 17.879505, 7.798379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216574, 0.096370, -0.971498,
		0.350418, -0.921130, -0.169492,
		-0.911209, -0.377138, 0.165723,
		13.595967, 17.766363, 7.848096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.121744, 17.434946, 7.346140>,  <14.233814, 18.030361, 7.732090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.121744, 17.434946, 7.346140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.760646, 17.593182, 7.413738>,  <13.543986, 17.688122, 7.454297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.760646, 17.593182, 7.413738>,  <14.121744, 17.434946, 7.346140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.760646, 17.593182, 7.413738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068545, 0.255554, -0.964362,
		-0.424678, -0.882158, -0.203584,
		-0.902746, 0.395588, 0.168996,
		13.489822, 17.711859, 7.464437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.710840, 17.169001, 6.876137>,  <14.121744, 17.434946, 7.346140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.710840, 17.169001, 6.876137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.584201, 17.533588, 6.981198>,  <13.508217, 17.752342, 7.044235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.584201, 17.533588, 6.981198>,  <13.710840, 17.169001, 6.876137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.584201, 17.533588, 6.981198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001682, 0.277436, -0.960743,
		-0.948558, -0.303728, -0.089369,
		-0.316599, 0.911471, 0.262654,
		13.489222, 17.807030, 7.059994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.995378, 17.408230, 6.604908>,  <13.710840, 17.169001, 6.876137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.995378, 17.408230, 6.604908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.272962, 17.692146, 6.653272>,  <13.439512, 17.862495, 6.682290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.272962, 17.692146, 6.653272>,  <12.995378, 17.408230, 6.604908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.272962, 17.692146, 6.653272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105602, 0.266445, -0.958047,
		-0.712228, 0.652077, 0.259857,
		0.693959, 0.709790, 0.120909,
		13.481150, 17.905083, 6.689544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.457718, 17.566263, 6.032810>,  <12.995378, 17.408230, 6.604908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.457718, 17.566263, 6.032810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.587594, 17.788013, 5.726283>,  <13.665520, 17.921064, 5.542367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.587594, 17.788013, 5.726283>,  <13.457718, 17.566263, 6.032810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.587594, 17.788013, 5.726283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214040, 0.832263, 0.511395,
		0.921284, -0.002022, 0.388885,
		0.324689, 0.554377, -0.766318,
		13.685001, 17.954327, 5.496387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.928603, 18.169910, 6.243165>,  <13.457718, 17.566263, 6.032810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.928603, 18.169910, 6.243165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.719068, 18.253464, 5.912841>,  <13.593346, 18.303595, 5.714647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.719068, 18.253464, 5.912841>,  <13.928603, 18.169910, 6.243165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.719068, 18.253464, 5.912841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173931, 0.922813, 0.343749,
		0.833871, 0.323703, -0.447075,
		-0.523840, 0.208882, -0.825809,
		13.561915, 18.316128, 5.665098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.233894, 18.783699, 6.049476>,  <13.928603, 18.169910, 6.243165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.233894, 18.783699, 6.049476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.868482, 18.762939, 5.888100>,  <13.649234, 18.750484, 5.791274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.868482, 18.762939, 5.888100>,  <14.233894, 18.783699, 6.049476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.868482, 18.762939, 5.888100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162048, 0.956158, 0.243933,
		0.373094, 0.288218, -0.881891,
		-0.913533, -0.051899, -0.403441,
		13.594422, 18.747370, 5.767067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.278486, 19.289911, 5.537560>,  <14.233894, 18.783699, 6.049476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.278486, 19.289911, 5.537560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.912631, 19.233337, 5.689049>,  <13.693118, 19.199392, 5.779943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.912631, 19.233337, 5.689049>,  <14.278486, 19.289911, 5.537560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.912631, 19.233337, 5.689049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017982, 0.950110, 0.311397,
		-0.403872, 0.278006, -0.871551,
		-0.914639, -0.141436, 0.378724,
		13.638239, 19.190907, 5.802666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.113341, 19.969475, 5.481220>,  <14.278486, 19.289911, 5.537560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.113341, 19.969475, 5.481220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.840606, 19.777256, 5.701827>,  <13.676965, 19.661924, 5.834191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.840606, 19.777256, 5.701827>,  <14.113341, 19.969475, 5.481220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.840606, 19.777256, 5.701827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233708, 0.857543, 0.458258,
		-0.693164, 0.183563, -0.697014,
		-0.681839, -0.480546, 0.551518,
		13.636054, 19.633093, 5.867282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.442356, 20.082642, 5.156036>,  <14.113341, 19.969475, 5.481220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.442356, 20.082642, 5.156036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.468587, 20.037548, 5.552620>,  <13.484325, 20.010492, 5.790570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.468587, 20.037548, 5.552620>,  <13.442356, 20.082642, 5.156036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.468587, 20.037548, 5.552620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068613, 0.990736, 0.117192,
		-0.995486, -0.075711, 0.057234,
		0.065577, -0.112736, 0.991459,
		13.488260, 20.003727, 5.850058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.119226, 20.088799, 4.455779>,  <13.442356, 20.082642, 5.156036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.119226, 20.088799, 4.455779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.362632, 19.773098, 4.488750>,  <13.508676, 19.583677, 4.508532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.362632, 19.773098, 4.488750>,  <13.119226, 20.088799, 4.455779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.362632, 19.773098, 4.488750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176664, 0.033475, -0.983702,
		0.773627, 0.613160, 0.159802,
		0.608516, -0.789249, 0.082426,
		13.545187, 19.536324, 4.513477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.780343, 20.300945, 4.301014>,  <13.119226, 20.088799, 4.455779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.780343, 20.300945, 4.301014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.719958, 19.918808, 4.199403>,  <13.683727, 19.689526, 4.138436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.719958, 19.918808, 4.199403>,  <13.780343, 20.300945, 4.301014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.719958, 19.918808, 4.199403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125634, 0.236347, -0.963512,
		0.980524, -0.177368, 0.084344,
		-0.150961, -0.955343, -0.254028,
		13.674670, 19.632206, 4.123195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.126225, 20.304632, 3.703968>,  <13.780343, 20.300945, 4.301014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.126225, 20.304632, 3.703968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.946082, 19.948658, 3.675149>,  <13.837996, 19.735073, 3.657858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.946082, 19.948658, 3.675149>,  <14.126225, 20.304632, 3.703968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.946082, 19.948658, 3.675149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169731, 0.164557, -0.971654,
		0.876568, -0.425361, -0.225159,
		-0.450356, -0.889938, -0.072048,
		13.810975, 19.681677, 3.653535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.403177, 19.884687, 3.207382>,  <14.126225, 20.304632, 3.703968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.403177, 19.884687, 3.207382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.023974, 19.771549, 3.265735>,  <13.796453, 19.703667, 3.300747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.023974, 19.771549, 3.265735>,  <14.403177, 19.884687, 3.207382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.023974, 19.771549, 3.265735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208741, 0.206616, -0.955896,
		0.240237, -0.936645, -0.254916,
		-0.948005, -0.282853, 0.145880,
		13.739573, 19.686697, 3.309500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.089485, 19.408278, 2.630014>,  <14.403177, 19.884687, 3.207382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.089485, 19.408278, 2.630014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.835591, 19.646553, 2.826896>,  <13.683255, 19.789518, 2.945026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.835591, 19.646553, 2.826896>,  <14.089485, 19.408278, 2.630014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.835591, 19.646553, 2.826896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320189, 0.376964, -0.869124,
		-0.703272, -0.709262, -0.048539,
		-0.634734, 0.595689, 0.492206,
		13.645171, 19.825260, 2.974558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.524613, 19.309174, 2.387598>,  <14.089485, 19.408278, 2.630014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.524613, 19.309174, 2.387598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.487969, 19.673538, 2.548519>,  <13.465983, 19.892157, 2.645072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.487969, 19.673538, 2.548519>,  <13.524613, 19.309174, 2.387598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.487969, 19.673538, 2.548519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140823, 0.388091, -0.910799,
		-0.985787, -0.140091, 0.092724,
		-0.091610, 0.910912, 0.402303,
		13.460486, 19.946812, 2.669210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.862941, 19.635042, 2.165657>,  <13.524613, 19.309174, 2.387598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.862941, 19.635042, 2.165657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.150971, 19.895325, 2.262050>,  <13.323790, 20.051495, 2.319886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.150971, 19.895325, 2.262050>,  <12.862941, 19.635042, 2.165657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.150971, 19.895325, 2.262050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018398, 0.365072, -0.930797,
		-0.693652, 0.665811, 0.274851,
		0.720076, 0.650706, 0.240983,
		13.366994, 20.090536, 2.334345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.768194, 20.255388, 2.073196>,  <12.862941, 19.635042, 2.165657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.768194, 20.255388, 2.073196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.166020, 20.250275, 2.031869>,  <13.404716, 20.247206, 2.007072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.166020, 20.250275, 2.031869>,  <12.768194, 20.255388, 2.073196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.166020, 20.250275, 2.031869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086651, 0.448403, -0.889622,
		0.057703, 0.893740, 0.444858,
		0.994566, -0.012786, -0.103318,
		13.464390, 20.246439, 2.000873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.135681, 20.960014, 1.905859>,  <12.768194, 20.255388, 2.073196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.135681, 20.960014, 1.905859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.337726, 20.652058, 1.749845>,  <13.458952, 20.467283, 1.656237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.337726, 20.652058, 1.749845>,  <13.135681, 20.960014, 1.905859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.337726, 20.652058, 1.749845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180489, 0.347699, -0.920070,
		0.843970, 0.535135, 0.036670,
		0.505111, -0.769893, -0.390034,
		13.489259, 20.421089, 1.632835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.806738, 21.086170, 1.457818>,  <13.135681, 20.960014, 1.905859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.806738, 21.086170, 1.457818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.513433, 20.825836, 1.379094>,  <13.337449, 20.669636, 1.331859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.513433, 20.825836, 1.379094>,  <13.806738, 21.086170, 1.457818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.513433, 20.825836, 1.379094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307444, 0.575534, -0.757785,
		0.606471, -0.495145, -0.622113,
		-0.733261, -0.650840, -0.196815,
		13.293453, 20.630585, 1.320050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.744750, 21.048222, 0.779351>,  <13.806738, 21.086170, 1.457818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.744750, 21.048222, 0.779351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.386624, 20.908073, 0.889371>,  <13.171749, 20.823984, 0.955383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.386624, 20.908073, 0.889371>,  <13.744750, 21.048222, 0.779351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.386624, 20.908073, 0.889371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431535, 0.529195, -0.730568,
		0.110415, -0.772782, -0.624994,
		-0.895313, -0.350372, 0.275051,
		13.118031, 20.802961, 0.971886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.440750, 20.776529, 0.216102>,  <13.744750, 21.048222, 0.779351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.440750, 20.776529, 0.216102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.158576, 20.887230, 0.477106>,  <12.989271, 20.953650, 0.633709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.158576, 20.887230, 0.477106>,  <13.440750, 20.776529, 0.216102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.158576, 20.887230, 0.477106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316477, 0.700757, -0.639361,
		-0.634196, -0.657532, -0.406753,
		-0.705435, 0.276752, 0.652510,
		12.946945, 20.970255, 0.672859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.848579, 20.933294, -0.162153>,  <13.440750, 20.776529, 0.216102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.848579, 20.933294, -0.162153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.865584, 21.140167, 0.179775>,  <12.875788, 21.264292, 0.384931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.865584, 21.140167, 0.179775>,  <12.848579, 20.933294, -0.162153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.865584, 21.140167, 0.179775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350860, 0.808826, -0.471909,
		-0.935462, -0.279859, 0.215845,
		0.042513, 0.517184, 0.854818,
		12.878339, 21.295322, 0.436220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.176433, 21.203011, -0.017837>,  <12.848579, 20.933294, -0.162153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.176433, 21.203011, -0.017837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.440085, 21.449799, 0.154162>,  <12.598277, 21.597872, 0.257361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.440085, 21.449799, 0.154162>,  <12.176433, 21.203011, -0.017837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.440085, 21.449799, 0.154162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455859, 0.782548, -0.424041,
		-0.598112, 0.083481, 0.797052,
		0.659131, 0.616968, 0.429996,
		12.637825, 21.634890, 0.283161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.782158, 21.776968, 0.363672>,  <12.176433, 21.203011, -0.017837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.782158, 21.776968, 0.363672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.152440, 21.863518, 0.239573>,  <12.374609, 21.915447, 0.165114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.152440, 21.863518, 0.239573>,  <11.782158, 21.776968, 0.363672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.152440, 21.863518, 0.239573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331512, 0.859056, -0.390028,
		0.182128, 0.463902, 0.866963,
		0.925704, 0.216374, -0.310247,
		12.430152, 21.928431, 0.146499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.393214, 21.069185, 0.338231>,  <11.782158, 21.776968, 0.363672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.393214, 21.069185, 0.338231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.258941, 20.777611, 0.099579>,  <11.178376, 20.602667, -0.043613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.258941, 20.777611, 0.099579>,  <11.393214, 21.069185, 0.338231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.258941, 20.777611, 0.099579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859678, -0.495984, 0.122288,
		-0.385060, -0.471860, 0.793144,
		-0.335684, -0.728936, -0.596631,
		11.158236, 20.558929, -0.079411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.548934, 20.434008, 0.562841>,  <11.393214, 21.069185, 0.338231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.548934, 20.434008, 0.562841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.522729, 20.374973, 0.168090>,  <11.507006, 20.339554, -0.068760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.522729, 20.374973, 0.168090>,  <11.548934, 20.434008, 0.562841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.522729, 20.374973, 0.168090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883287, -0.468692, 0.011456,
		-0.464232, -0.870946, 0.161064,
		-0.065512, -0.147584, -0.986878,
		11.503076, 20.330698, -0.127973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.773543, 19.797455, 0.481698>,  <11.548934, 20.434008, 0.562841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.773543, 19.797455, 0.481698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.809695, 20.017509, 0.149630>,  <11.831387, 20.149542, -0.049611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.809695, 20.017509, 0.149630>,  <11.773543, 19.797455, 0.481698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.809695, 20.017509, 0.149630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953662, -0.288017, -0.087039,
		-0.286986, -0.783835, -0.550674,
		0.090379, 0.550135, -0.830170,
		11.836809, 20.182550, -0.099421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.091304, 19.388172, -0.027722>,  <11.773543, 19.797455, 0.481699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.091304, 19.388172, -0.027722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.169396, 19.767731, -0.126906>,  <12.216252, 19.995466, -0.186416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.169396, 19.767731, -0.126906>,  <12.091304, 19.388172, -0.027722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.169396, 19.767731, -0.126906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965266, -0.230664, -0.122702,
		-0.173627, -0.215391, -0.960969,
		0.195232, 0.948895, -0.247959,
		12.227966, 20.052399, -0.201293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.485383, 19.457636, -0.604043>,  <12.091304, 19.388172, -0.027722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.485383, 19.457636, -0.604043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.570748, 19.750847, -0.345702>,  <12.621967, 19.926773, -0.190697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.570748, 19.750847, -0.345702>,  <12.485383, 19.457636, -0.604043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.570748, 19.750847, -0.345702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956161, -0.292407, 0.015923,
		0.200524, 0.614142, -0.763295,
		0.213414, 0.733027, 0.645853,
		12.634772, 19.970755, -0.151946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.931585, 19.886620, -0.958379>,  <12.485383, 19.457636, -0.604043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.931585, 19.886620, -0.958379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.953158, 19.849140, -0.560724>,  <12.966103, 19.826653, -0.322131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.953158, 19.849140, -0.560724>,  <12.931585, 19.886620, -0.958379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.953158, 19.849140, -0.560724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869687, -0.484787, -0.092875,
		0.490648, 0.869599, 0.055343,
		0.053934, -0.093700, 0.994139,
		12.969338, 19.821030, -0.262482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.134596, 19.234468, -1.151999>,  <12.931585, 19.886620, -0.958379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.134596, 19.234468, -1.151999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.348958, 19.567108, -1.210304>,  <13.477575, 19.766693, -1.245287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.348958, 19.567108, -1.210304>,  <13.134596, 19.234468, -1.151999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.348958, 19.567108, -1.210304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820673, -0.553638, -0.141353,
		-0.198249, -0.043872, -0.979169,
		0.535904, 0.831601, -0.145763,
		13.509729, 19.816587, -1.254033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.489202, 19.230616, -1.847992>,  <13.134596, 19.234468, -1.151999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.489202, 19.230616, -1.847992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.684514, 19.438274, -1.567402>,  <13.801702, 19.562870, -1.399048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.684514, 19.438274, -1.567402>,  <13.489202, 19.230616, -1.847992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.684514, 19.438274, -1.567402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749223, -0.661549, -0.031920,
		0.447490, 0.541147, -0.711978,
		0.488281, 0.519146, 0.701476,
		13.830998, 19.594019, -1.356959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.170197, 19.451780, -2.118298>,  <13.489202, 19.230616, -1.847992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.170197, 19.451780, -2.118298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.186009, 19.393974, -1.722813>,  <14.195497, 19.359291, -1.485521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.186009, 19.393974, -1.722813>,  <14.170197, 19.451780, -2.118298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.186009, 19.393974, -1.722813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727440, -0.674198, -0.127626,
		0.685032, 0.724274, 0.078474,
		0.039530, -0.144513, 0.988713,
		14.197868, 19.350620, -1.426199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<22.411577, 17.581806, 16.512417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.605450, 17.922585, 16.433149>,  <22.721773, 18.127052, 16.385590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.605450, 17.922585, 16.433149>,  <22.411577, 17.581806, 16.512417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.605450, 17.922585, 16.433149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391143, 0.008459, -0.920291,
		-0.782362, 0.523560, 0.337333,
		0.484681, 0.851947, -0.198169,
		22.750854, 18.178169, 16.373699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.974253, 18.218594, 16.288774>,  <22.411577, 17.581806, 16.512417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.974253, 18.218594, 16.288774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.336704, 18.288029, 16.134478>,  <22.554176, 18.329689, 16.041901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.336704, 18.288029, 16.134478>,  <21.974253, 18.218594, 16.288774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.336704, 18.288029, 16.134478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413760, 0.174166, -0.893571,
		-0.087930, 0.969295, 0.229641,
		0.906130, 0.173588, -0.385741,
		22.608543, 18.340105, 16.018755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.875334, 18.766094, 15.875370>,  <21.974253, 18.218594, 16.288774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.875334, 18.766094, 15.875370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.222374, 18.613148, 15.748208>,  <22.430597, 18.521379, 15.671911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.222374, 18.613148, 15.748208>,  <21.875334, 18.766094, 15.875370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.222374, 18.613148, 15.748208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342684, 0.003505, -0.939444,
		0.360328, 0.924003, -0.127990,
		0.867601, -0.382368, -0.317904,
		22.482655, 18.498438, 15.652837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.154482, 19.244114, 15.361766>,  <21.875334, 18.766094, 15.875370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.154482, 19.244114, 15.361766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.299614, 18.878052, 15.291516>,  <22.386694, 18.658415, 15.249367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.299614, 18.878052, 15.291516>,  <22.154482, 19.244114, 15.361766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.299614, 18.878052, 15.291516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137427, 0.133856, -0.981426,
		0.921666, 0.380226, -0.077200,
		0.362830, -0.915156, -0.175624,
		22.408463, 18.603504, 15.238829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.405560, 19.287930, 14.759045>,  <22.154482, 19.244114, 15.361766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.405560, 19.287930, 14.759045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.412880, 18.888714, 14.782973>,  <22.417273, 18.649183, 14.797331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.412880, 18.888714, 14.782973>,  <22.405560, 19.287930, 14.759045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.412880, 18.888714, 14.782973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231598, -0.062436, -0.970806,
		0.972639, 0.003914, -0.232287,
		0.018303, -0.998041, 0.059822,
		22.418371, 18.589302, 14.800920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.678539, 19.015448, 14.112017>,  <22.405560, 19.287930, 14.759045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.678539, 19.015448, 14.112017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.491734, 18.708878, 14.288421>,  <22.379650, 18.524935, 14.394263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.491734, 18.708878, 14.288421>,  <22.678539, 19.015448, 14.112017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.491734, 18.708878, 14.288421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430506, -0.238566, -0.870489,
		0.772374, -0.596388, -0.218537,
		-0.467014, -0.766425, 0.441011,
		22.351629, 18.478951, 14.420724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.705557, 18.505367, 13.593786>,  <22.678539, 19.015448, 14.112017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.705557, 18.505367, 13.593786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.424149, 18.347904, 13.830462>,  <22.255304, 18.253428, 13.972468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.424149, 18.347904, 13.830462>,  <22.705557, 18.505367, 13.593786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.424149, 18.347904, 13.830462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475425, -0.358145, -0.803556,
		0.528235, -0.846621, 0.064808,
		-0.703518, -0.393656, 0.591690,
		22.213093, 18.229807, 14.007970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.612707, 17.793377, 13.313852>,  <22.705557, 18.505367, 13.593786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.612707, 17.793377, 13.313852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.305599, 17.924236, 13.534217>,  <22.121334, 18.002752, 13.666435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.305599, 17.924236, 13.534217>,  <22.612707, 17.793377, 13.313852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.305599, 17.924236, 13.534217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616861, -0.144944, -0.773610,
		-0.173239, -0.933789, 0.313093,
		-0.767770, 0.327154, 0.550908,
		22.075268, 18.022381, 13.699490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.105246, 17.254013, 13.247263>,  <22.612707, 17.793377, 13.313852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.105246, 17.254013, 13.247263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.919525, 17.593922, 13.347111>,  <21.808092, 17.797867, 13.407020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.919525, 17.593922, 13.347111>,  <22.105246, 17.254013, 13.247263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.919525, 17.593922, 13.347111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485944, -0.008792, -0.873946,
		-0.740461, -0.527075, 0.417025,
		-0.464301, 0.849774, 0.249619,
		21.780235, 17.848854, 13.421996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.412457, 17.006350, 13.281828>,  <22.105246, 17.254013, 13.247263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.412457, 17.006350, 13.281828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.424446, 17.404423, 13.244496>,  <21.431641, 17.643267, 13.222097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.424446, 17.404423, 13.244496>,  <21.412457, 17.006350, 13.281828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.424446, 17.404423, 13.244496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705576, -0.045069, -0.707199,
		-0.708000, 0.087049, 0.700827,
		0.029975, 0.995184, -0.093329,
		21.433439, 17.702978, 13.216497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.752544, 17.215517, 13.266293>,  <21.412457, 17.006350, 13.281828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.752544, 17.215517, 13.266293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.930412, 17.512756, 13.066261>,  <21.037132, 17.691099, 12.946242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.930412, 17.512756, 13.066261>,  <20.752544, 17.215517, 13.266293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.930412, 17.512756, 13.066261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749822, 0.003440, -0.661631,
		-0.489935, 0.669176, 0.558719,
		0.444669, 0.743096, -0.500077,
		21.063812, 17.735685, 12.916238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.218422, 17.702574, 13.154019>,  <20.752544, 17.215517, 13.266293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.218422, 17.702574, 13.154019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.486015, 17.817284, 12.879729>,  <20.646572, 17.886110, 12.715156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.486015, 17.817284, 12.879729>,  <20.218422, 17.702574, 13.154019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.486015, 17.817284, 12.879729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742683, 0.294730, -0.601295,
		0.029668, 0.911534, 0.410153,
		0.668985, 0.286775, -0.685725,
		20.686710, 17.903316, 12.674011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.919386, 18.330580, 12.844738>,  <20.218422, 17.702574, 13.154019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.919386, 18.330580, 12.844738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.191910, 18.221512, 12.573013>,  <20.355425, 18.156071, 12.409978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.191910, 18.221512, 12.573013>,  <19.919386, 18.330580, 12.844738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.191910, 18.221512, 12.573013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654750, 0.187929, -0.732110,
		0.327288, 0.943575, -0.050493,
		0.681311, -0.272671, -0.679313,
		20.396303, 18.139711, 12.369220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.905727, 18.834475, 12.292899>,  <19.919386, 18.330580, 12.844738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.905727, 18.834475, 12.292899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.063457, 18.508102, 12.123778>,  <20.158096, 18.312279, 12.022305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.063457, 18.508102, 12.123778>,  <19.905727, 18.834475, 12.292899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.063457, 18.508102, 12.123778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515242, 0.184668, -0.836913,
		0.760943, 0.547861, -0.347583,
		0.394325, -0.815932, -0.422803,
		20.181755, 18.263323, 11.996938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.081064, 19.045013, 11.683456>,  <19.905727, 18.834475, 12.292899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.081064, 19.045013, 11.683456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.071545, 18.651627, 11.611653>,  <20.065834, 18.415594, 11.568571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.071545, 18.651627, 11.611653>,  <20.081064, 19.045013, 11.683456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.071545, 18.651627, 11.611653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477183, 0.168959, -0.862409,
		0.878481, 0.065135, -0.473316,
		-0.023798, -0.983468, -0.179509,
		20.064405, 18.356586, 11.557800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.265944, 18.921595, 10.947991>,  <20.081064, 19.045013, 11.683456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.265944, 18.921595, 10.947991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.079838, 18.579578, 11.039587>,  <19.968174, 18.374369, 11.094544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.079838, 18.579578, 11.039587>,  <20.265944, 18.921595, 10.947991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.079838, 18.579578, 11.039587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392667, -0.032479, -0.919107,
		0.793309, -0.517546, -0.320634,
		-0.465266, -0.855039, 0.228989,
		19.940258, 18.323067, 11.108284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.267250, 18.445036, 10.388000>,  <20.265944, 18.921595, 10.947991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.267250, 18.445036, 10.388000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.976009, 18.290531, 10.614511>,  <19.801266, 18.197828, 10.750417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.976009, 18.290531, 10.614511>,  <20.267250, 18.445036, 10.388000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.976009, 18.290531, 10.614511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580863, -0.090961, -0.808903,
		0.363959, -0.917892, -0.158137,
		-0.728102, -0.386264, 0.566276,
		19.757578, 18.174652, 10.784393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.066982, 17.893110, 10.045217>,  <20.267250, 18.445036, 10.388000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.066982, 17.893110, 10.045217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.745522, 17.947872, 10.276873>,  <19.552645, 17.980730, 10.415867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.745522, 17.947872, 10.276873>,  <20.066982, 17.893110, 10.045217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.745522, 17.947872, 10.276873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593834, -0.120968, -0.795442,
		-0.038843, -0.983170, 0.178515,
		-0.803650, 0.136906, 0.579141,
		19.504427, 17.988943, 10.450615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.554514, 17.319454, 9.832932>,  <20.066982, 17.893110, 10.045217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.554514, 17.319454, 9.832932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.368004, 17.626129, 10.009467>,  <19.256098, 17.810133, 10.115388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.368004, 17.626129, 10.009467>,  <19.554514, 17.319454, 9.832932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.368004, 17.626129, 10.009467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689664, -0.002596, -0.724125,
		-0.554031, -0.642017, 0.529966,
		-0.466277, 0.766686, 0.441337,
		19.228121, 17.856134, 10.141869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.847731, 17.029253, 9.972763>,  <19.554514, 17.319454, 9.832932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.847731, 17.029253, 9.972763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.821793, 17.428402, 9.970045>,  <18.806231, 17.667891, 9.968414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.821793, 17.428402, 9.970045>,  <18.847731, 17.029253, 9.972763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.821793, 17.428402, 9.970045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814562, -0.056862, -0.577284,
		-0.576442, -0.031899, 0.816516,
		-0.064843, 0.997872, -0.006794,
		18.802340, 17.727764, 9.968007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.084602, 17.177607, 9.844553>,  <18.847731, 17.029253, 9.972763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.084602, 17.177607, 9.844553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.247585, 17.538891, 9.790606>,  <18.345375, 17.755661, 9.758239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.247585, 17.538891, 9.790606>,  <18.084602, 17.177607, 9.844553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.247585, 17.538891, 9.790606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682067, 0.202781, -0.702613,
		-0.607259, 0.378272, 0.698675,
		0.407457, 0.903211, -0.134867,
		18.369822, 17.809855, 9.750147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.558598, 17.662851, 9.872108>,  <18.084602, 17.177607, 9.844553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.558598, 17.662851, 9.872108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.861794, 17.834572, 9.675680>,  <18.043711, 17.937603, 9.557823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.861794, 17.834572, 9.675680>,  <17.558598, 17.662851, 9.872108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.861794, 17.834572, 9.675680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616923, 0.227400, -0.753456,
		-0.211789, 0.874065, 0.437213,
		0.757992, 0.429300, -0.491070,
		18.089191, 17.963362, 9.528359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.793091, 17.633776, 9.813593>,  <17.558598, 17.662851, 9.872108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.793091, 17.633776, 9.813593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.592052, 17.306786, 9.926114>,  <16.471430, 17.110592, 9.993627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.592052, 17.306786, 9.926114>,  <16.793091, 17.633776, 9.813593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.592052, 17.306786, 9.926114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631671, -0.125091, 0.765077,
		-0.590243, 0.562217, 0.579246,
		-0.502598, -0.817474, 0.281303,
		16.441273, 17.061543, 10.010505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.553377, 17.728247, 10.518229>,  <16.793091, 17.633776, 9.813593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.553377, 17.728247, 10.518229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.529938, 17.330452, 10.483440>,  <16.515873, 17.091776, 10.462566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.529938, 17.330452, 10.483440>,  <16.553377, 17.728247, 10.518229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.529938, 17.330452, 10.483440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364699, -0.102428, 0.925474,
		-0.929280, 0.022514, 0.368690,
		-0.058601, -0.994486, -0.086973,
		16.512358, 17.032106, 10.457349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.392132, 17.577969, 11.122410>,  <16.553377, 17.728247, 10.518229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.392132, 17.577969, 11.122410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.499901, 17.220066, 10.979959>,  <16.564562, 17.005325, 10.894489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.499901, 17.220066, 10.979959>,  <16.392132, 17.577969, 11.122410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.499901, 17.220066, 10.979959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417590, -0.224679, 0.880419,
		-0.867774, -0.385917, 0.313107,
		0.269420, -0.894755, -0.356125,
		16.580727, 16.951639, 10.873122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.179749, 17.185059, 11.629086>,  <16.392132, 17.577969, 11.122410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.179749, 17.185059, 11.629086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.462803, 16.983398, 11.431062>,  <16.632635, 16.862402, 11.312247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.462803, 16.983398, 11.431062>,  <16.179749, 17.185059, 11.629086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.462803, 16.983398, 11.431062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455974, -0.209400, 0.865008,
		-0.539761, -0.837844, 0.081702,
		0.707633, -0.504152, -0.495061,
		16.675093, 16.832153, 11.282543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.405966, 16.557198, 12.049228>,  <16.179749, 17.185059, 11.629086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.405966, 16.557198, 12.049228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.710796, 16.645470, 11.805740>,  <16.893694, 16.698433, 11.659648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.710796, 16.645470, 11.805740>,  <16.405966, 16.557198, 12.049228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.710796, 16.645470, 11.805740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619698, 0.023876, 0.784477,
		0.187652, -0.975054, -0.118560,
		0.762077, 0.220681, -0.608720,
		16.939419, 16.711674, 11.623124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.906317, 16.085306, 12.265466>,  <16.405966, 16.557198, 12.049228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.906317, 16.085306, 12.265466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.108139, 16.361984, 12.058784>,  <17.229233, 16.527990, 11.934774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.108139, 16.361984, 12.058784>,  <16.906317, 16.085306, 12.265466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.108139, 16.361984, 12.058784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745840, -0.047726, 0.664413,
		0.434910, -0.720612, -0.539973,
		0.504555, 0.691694, -0.516705,
		17.259506, 16.569492, 11.903772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.566656, 15.766948, 12.224476>,  <16.906317, 16.085306, 12.265466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.566656, 15.766948, 12.224476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.614002, 16.158012, 12.155004>,  <17.642410, 16.392651, 12.113320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.614002, 16.158012, 12.155004>,  <17.566656, 15.766948, 12.224476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.614002, 16.158012, 12.155004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906785, -0.035149, 0.420125,
		0.404636, -0.207220, -0.890691,
		0.118365, 0.977663, -0.173682,
		17.649511, 16.451311, 12.102899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.203835, 15.825562, 12.329229>,  <17.566656, 15.766948, 12.224476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.203835, 15.825562, 12.329229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.117031, 16.215717, 12.313628>,  <18.064949, 16.449810, 12.304267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.117031, 16.215717, 12.313628>,  <18.203835, 15.825562, 12.329229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.117031, 16.215717, 12.313628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805894, 0.201559, 0.556695,
		0.550856, 0.089374, -0.829801,
		-0.217008, 0.975390, -0.039004,
		18.051929, 16.508335, 12.301927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.877914, 16.205338, 12.131500>,  <18.203835, 15.825562, 12.329229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.877914, 16.205338, 12.131500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.621159, 16.441776, 12.326880>,  <18.467106, 16.583639, 12.444107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.621159, 16.441776, 12.326880>,  <18.877914, 16.205338, 12.131500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.621159, 16.441776, 12.326880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717898, 0.239420, 0.653682,
		0.269446, 0.770247, -0.578030,
		-0.641889, 0.591099, 0.488448,
		18.428593, 16.619106, 12.473413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.301538, 16.813002, 12.300022>,  <18.877914, 16.205338, 12.131500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.301538, 16.813002, 12.300022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.983688, 16.846989, 12.540473>,  <18.792978, 16.867382, 12.684743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.983688, 16.846989, 12.540473>,  <19.301538, 16.813002, 12.300022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.983688, 16.846989, 12.540473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590133, 0.340571, 0.731952,
		-0.142532, 0.936371, -0.320769,
		-0.794624, 0.084970, 0.601126,
		18.745300, 16.872480, 12.720811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.453228, 17.494293, 12.706197>,  <19.301538, 16.813002, 12.300022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.453228, 17.494293, 12.706197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.194328, 17.274700, 12.917738>,  <19.038988, 17.142944, 13.044662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.194328, 17.274700, 12.917738>,  <19.453228, 17.494293, 12.706197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.194328, 17.274700, 12.917738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560375, 0.127654, 0.818342,
		-0.516767, 0.826027, 0.225013,
		-0.647249, -0.548984, 0.528853,
		19.000153, 17.110004, 13.076394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.480034, 17.834118, 13.410089>,  <19.453228, 17.494293, 12.706197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.480034, 17.834118, 13.410089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.273617, 17.506325, 13.509807>,  <19.149767, 17.309649, 13.569636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.273617, 17.506325, 13.509807>,  <19.480034, 17.834118, 13.410089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.273617, 17.506325, 13.509807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363781, 0.053811, 0.929929,
		-0.775477, 0.570569, 0.270344,
		-0.516041, -0.819485, 0.249292,
		19.118805, 17.260479, 13.584594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.091616, 17.999777, 14.026642>,  <19.480034, 17.834118, 13.410089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.091616, 17.999777, 14.026642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.150890, 17.604591, 14.008906>,  <19.186455, 17.367479, 13.998265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.150890, 17.604591, 14.008906>,  <19.091616, 17.999777, 14.026642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.150890, 17.604591, 14.008906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391209, 0.017384, 0.920138,
		-0.908293, -0.153698, 0.389077,
		0.148187, -0.987965, -0.044338,
		19.195347, 17.308203, 13.995605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.894203, 17.910229, 14.657253>,  <19.091616, 17.999777, 14.026642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.894203, 17.910229, 14.657253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.080936, 17.573334, 14.549399>,  <19.192976, 17.371197, 14.484687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.080936, 17.573334, 14.549399>,  <18.894203, 17.910229, 14.657253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.080936, 17.573334, 14.549399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474949, -0.018412, 0.879821,
		-0.745982, -0.538793, 0.391424,
		0.466835, -0.842237, -0.269634,
		19.220987, 17.320663, 14.468509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.727472, 17.365908, 15.210717>,  <18.894203, 17.910229, 14.657253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.727472, 17.365908, 15.210717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.061291, 17.230549, 15.036813>,  <19.261581, 17.149334, 14.932470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.061291, 17.230549, 15.036813>,  <18.727472, 17.365908, 15.210717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.061291, 17.230549, 15.036813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388126, -0.198942, 0.899878,
		-0.391011, -0.919732, -0.034685,
		0.834547, -0.338400, -0.434760,
		19.311655, 17.129030, 14.906384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.983276, 16.764383, 15.706069>,  <18.727472, 17.365908, 15.210717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.983276, 16.764383, 15.706069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.286209, 16.893002, 15.478717>,  <19.467968, 16.970173, 15.342305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.286209, 16.893002, 15.478717>,  <18.983276, 16.764383, 15.706069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.286209, 16.893002, 15.478717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617571, -0.069751, 0.783416,
		0.212259, -0.944322, -0.251401,
		0.757332, 0.321545, -0.568381,
		19.513409, 16.989466, 15.308203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.479860, 16.236885, 15.684494>,  <18.983276, 16.764383, 15.706069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.479860, 16.236885, 15.684494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.669495, 16.582596, 15.617244>,  <19.783276, 16.790022, 15.576894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.669495, 16.582596, 15.617244>,  <19.479860, 16.236885, 15.684494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.669495, 16.582596, 15.617244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610672, -0.185205, 0.769921,
		0.634288, -0.467680, -0.615593,
		0.474088, 0.864277, -0.168125,
		19.811722, 16.841879, 15.566806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.132193, 16.168486, 15.920600>,  <19.479860, 16.236885, 15.684494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.132193, 16.168486, 15.920600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.155624, 16.566887, 15.893628>,  <20.169683, 16.805927, 15.877445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.155624, 16.566887, 15.893628>,  <20.132193, 16.168486, 15.920600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.155624, 16.566887, 15.893628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609972, 0.017758, 0.792224,
		0.790255, -0.087539, -0.606494,
		0.058580, 0.996003, -0.067430,
		20.173199, 16.865688, 15.873399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<20.827711, 16.328712, 16.031982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.661640, 16.686153, 16.100222>,  <20.561998, 16.900618, 16.141165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.661640, 16.686153, 16.100222>,  <20.827711, 16.328712, 16.031982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.661640, 16.686153, 16.100222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492241, 0.062954, 0.868180,
		0.765068, 0.444423, -0.466004,
		-0.415176, 0.893602, 0.170599,
		20.537086, 16.954235, 16.151402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.360865, 16.905914, 16.040291>,  <20.827711, 16.328712, 16.031982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.360865, 16.905914, 16.040291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.037262, 17.021229, 16.245190>,  <20.843100, 17.090418, 16.368130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.037262, 17.021229, 16.245190>,  <21.360865, 16.905914, 16.040291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.037262, 17.021229, 16.245190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577176, 0.224682, 0.785102,
		0.111242, 0.930811, -0.348161,
		-0.809007, 0.288287, 0.512248,
		20.794559, 17.107716, 16.398865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.566893, 17.532585, 16.437410>,  <21.360865, 16.905914, 16.040291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.566893, 17.532585, 16.437410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.243870, 17.374027, 16.612099>,  <21.050056, 17.278893, 16.716911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.243870, 17.374027, 16.612099>,  <21.566893, 17.532585, 16.437410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.243870, 17.374027, 16.612099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394233, 0.187948, 0.899586,
		-0.438670, 0.898637, 0.004492,
		-0.807558, -0.396392, 0.436719,
		21.001602, 17.255110, 16.743114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.367710, 17.976158, 17.035524>,  <21.566893, 17.532585, 16.437410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.367710, 17.976158, 17.035524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.185993, 17.627541, 17.109312>,  <21.076963, 17.418369, 17.153584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.185993, 17.627541, 17.109312>,  <21.367710, 17.976158, 17.035524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.185993, 17.627541, 17.109312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336628, 0.023772, 0.941338,
		-0.824803, 0.489740, 0.282587,
		-0.454293, -0.871544, 0.184468,
		21.049706, 17.366077, 17.164652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.960735, 18.083324, 17.720148>,  <21.367710, 17.976158, 17.035524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.960735, 18.083324, 17.720148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.971939, 17.685699, 17.678089>,  <20.978661, 17.447124, 17.652853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.971939, 17.685699, 17.678089>,  <20.960735, 18.083324, 17.720148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.971939, 17.685699, 17.678089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310522, -0.091333, 0.946169,
		-0.950154, -0.059152, 0.306120,
		0.028009, -0.994062, -0.105148,
		20.980341, 17.387482, 17.646545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.636513, 17.918242, 18.284426>,  <20.960735, 18.083324, 17.720148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.636513, 17.918242, 18.284426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.837002, 17.588772, 18.178341>,  <20.957294, 17.391090, 18.114689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.837002, 17.588772, 18.178341>,  <20.636513, 17.918242, 18.284426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.837002, 17.588772, 18.178341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419443, -0.036817, 0.907035,
		-0.756866, -0.565866, 0.327031,
		0.501220, -0.823675, -0.265214,
		20.987368, 17.341669, 18.098776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.435793, 17.399488, 18.812416>,  <20.636513, 17.918242, 18.284426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.435793, 17.399488, 18.812416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.785858, 17.311928, 18.639826>,  <20.995897, 17.259392, 18.536272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.785858, 17.311928, 18.639826>,  <20.435793, 17.399488, 18.812416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.785858, 17.311928, 18.639826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406710, -0.150185, 0.901128,
		-0.262061, -0.964119, -0.042407,
		0.875163, -0.218903, -0.431475,
		21.048407, 17.246258, 18.510384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.696718, 16.896976, 19.199406>,  <20.435793, 17.399488, 18.812416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.696718, 16.896976, 19.199406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.026333, 17.010590, 19.003328>,  <21.224102, 17.078758, 18.885683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.026333, 17.010590, 19.003328>,  <20.696718, 16.896976, 19.199406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.026333, 17.010590, 19.003328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525217, -0.058625, 0.848947,
		0.212393, -0.957020, -0.197489,
		0.824037, 0.284035, -0.490191,
		21.273544, 17.095800, 18.856272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.238020, 16.399319, 19.410278>,  <20.696718, 16.896976, 19.199406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.238020, 16.399319, 19.410278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.398640, 16.746544, 19.293509>,  <21.495012, 16.954880, 19.223446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.398640, 16.746544, 19.293509>,  <21.238020, 16.399319, 19.410278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.398640, 16.746544, 19.293509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398494, 0.121391, 0.909102,
		0.824597, -0.481381, -0.297174,
		0.401551, 0.868065, -0.291926,
		21.519104, 17.006964, 19.205931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.806278, 16.380363, 19.804708>,  <21.238020, 16.399319, 19.410278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.806278, 16.380363, 19.804708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.817425, 16.756912, 19.670223>,  <21.824112, 16.982841, 19.589533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.817425, 16.756912, 19.670223>,  <21.806278, 16.380363, 19.804708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.817425, 16.756912, 19.670223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400217, 0.297703, 0.866718,
		0.915997, -0.158709, -0.368458,
		0.027865, 0.941374, -0.336213,
		21.825785, 17.039324, 19.569359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.467306, 16.624640, 19.921408>,  <21.806278, 16.380363, 19.804708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.467306, 16.624640, 19.921408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.208046, 16.929165, 19.928370>,  <22.052490, 17.111879, 19.932547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.208046, 16.929165, 19.928370>,  <22.467306, 16.624640, 19.921408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.208046, 16.929165, 19.928370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353331, 0.280410, 0.892484,
		0.674579, 0.584614, -0.450743,
		-0.648151, 0.761313, 0.017403,
		22.013601, 17.157558, 19.933590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.794601, 17.124418, 20.184877>,  <22.467306, 16.624640, 19.921408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.794601, 17.124418, 20.184877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.434742, 17.295876, 20.218096>,  <22.218826, 17.398750, 20.238028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.434742, 17.295876, 20.218096>,  <22.794601, 17.124418, 20.184877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.434742, 17.295876, 20.218096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245452, 0.339217, 0.908122,
		0.361088, 0.837375, -0.410388,
		-0.899649, 0.428642, 0.083048,
		22.164846, 17.424469, 20.243010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.905291, 17.851084, 20.517353>,  <22.794601, 17.124418, 20.184877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.905291, 17.851084, 20.517353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.522415, 17.760071, 20.588932>,  <22.292690, 17.705463, 20.631880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.522415, 17.760071, 20.588932>,  <22.905291, 17.851084, 20.517353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.522415, 17.760071, 20.588932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056919, 0.458182, 0.887034,
		-0.283817, 0.859244, -0.425615,
		-0.957187, -0.227530, 0.178947,
		22.235258, 17.691813, 20.642616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.684399, 18.472174, 20.769978>,  <22.905291, 17.851084, 20.517353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.684399, 18.472174, 20.769978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.440121, 18.174347, 20.877810>,  <22.293554, 17.995651, 20.942509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.440121, 18.174347, 20.877810>,  <22.684399, 18.472174, 20.769978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.440121, 18.174347, 20.877810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158485, 0.218625, 0.962853,
		-0.775846, 0.630732, -0.015510,
		-0.610694, -0.744567, 0.269580,
		22.256912, 17.950977, 20.958683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.268177, 18.859495, 21.306801>,  <22.684399, 18.472174, 20.769978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.268177, 18.859495, 21.306801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.200356, 18.469227, 21.362398>,  <22.159662, 18.235065, 21.395758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.200356, 18.469227, 21.362398>,  <22.268177, 18.859495, 21.306801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.200356, 18.469227, 21.362398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017816, 0.137979, 0.990275,
		-0.985360, 0.170382, -0.006013,
		-0.169555, -0.975670, 0.138995,
		22.149488, 18.176525, 21.404097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.736490, 18.901623, 21.756683>,  <22.268177, 18.859495, 21.306801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.736490, 18.901623, 21.756683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.899521, 18.540730, 21.813047>,  <21.997339, 18.324194, 21.846867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.899521, 18.540730, 21.813047>,  <21.736490, 18.901623, 21.756683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.899521, 18.540730, 21.813047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086499, 0.191760, 0.977623,
		-0.909065, -0.386266, 0.156199,
		0.407576, -0.902234, 0.140910,
		22.021793, 18.270060, 21.855320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.281975, 18.541826, 22.251436>,  <21.736490, 18.901623, 21.756683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.281975, 18.541826, 22.251436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.642624, 18.371258, 22.280384>,  <21.859015, 18.268917, 22.297752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.642624, 18.371258, 22.280384>,  <21.281975, 18.541826, 22.251436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.642624, 18.371258, 22.280384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043008, 0.078107, 0.996017,
		-0.430376, -0.901146, 0.052083,
		0.901625, -0.426422, 0.072372,
		21.913111, 18.243332, 22.302095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.207279, 17.994503, 22.671461>,  <21.281975, 18.541826, 22.251436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.207279, 17.994503, 22.671461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.584568, 18.124249, 22.700081>,  <21.810942, 18.202097, 22.717253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.584568, 18.124249, 22.700081>,  <21.207279, 17.994503, 22.671461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.584568, 18.124249, 22.700081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119013, 0.128923, 0.984487,
		0.310111, -0.937105, 0.160207,
		0.943222, 0.324367, 0.071547,
		21.867535, 18.221558, 22.721544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.368071, 17.802006, 23.336588>,  <21.207279, 17.994503, 22.671461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.368071, 17.802006, 23.336588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.664833, 18.046833, 23.227085>,  <21.842892, 18.193729, 23.161383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.664833, 18.046833, 23.227085>,  <21.368071, 17.802006, 23.336588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.664833, 18.046833, 23.227085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009379, 0.398773, 0.917002,
		0.670437, -0.682898, 0.290112,
		0.741908, 0.612071, -0.273757,
		21.887405, 18.230453, 23.144958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.861538, 17.727123, 23.802481>,  <21.368071, 17.802006, 23.336588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.861538, 17.727123, 23.802481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.922817, 18.093071, 23.653057>,  <21.959585, 18.312639, 23.563404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.922817, 18.093071, 23.653057>,  <21.861538, 17.727123, 23.802481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.922817, 18.093071, 23.653057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102737, 0.361226, 0.926802,
		0.982840, -0.180364, -0.038651,
		0.153200, 0.914869, -0.373557,
		21.968777, 18.367531, 23.540991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.276859, 18.075809, 24.309912>,  <21.861538, 17.727123, 23.802481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.276859, 18.075809, 24.309912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.154125, 18.385571, 24.088587>,  <22.080484, 18.571426, 23.955791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.154125, 18.385571, 24.088587>,  <22.276859, 18.075809, 24.309912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.154125, 18.385571, 24.088587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114857, 0.546980, 0.829229,
		0.944807, 0.317988, -0.078886,
		-0.306834, 0.774401, -0.553314,
		22.062075, 18.617891, 23.922592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.696323, 18.721088, 24.449739>,  <22.276859, 18.075809, 24.309912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.696323, 18.721088, 24.449739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.339897, 18.836815, 24.309856>,  <22.126041, 18.906250, 24.225927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.339897, 18.836815, 24.309856>,  <22.696323, 18.721088, 24.449739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.339897, 18.836815, 24.309856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171068, 0.499592, 0.849202,
		0.420397, 0.816520, -0.395678,
		-0.891068, 0.289314, -0.349708,
		22.072577, 18.923609, 24.204945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.704315, 19.438364, 24.694241>,  <22.696323, 18.721088, 24.449739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.704315, 19.438364, 24.694241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.339394, 19.291348, 24.621996>,  <22.120441, 19.203138, 24.578650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.339394, 19.291348, 24.621996>,  <22.704315, 19.438364, 24.694241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.339394, 19.291348, 24.621996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348797, 0.466282, 0.812971,
		-0.214584, 0.804672, -0.553586,
		-0.912302, -0.367539, -0.180610,
		22.065702, 19.181086, 24.567812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.240742, 19.950907, 24.851732>,  <22.704315, 19.438364, 24.694241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.240742, 19.950907, 24.851732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.087345, 19.592480, 24.941170>,  <21.995308, 19.377422, 24.994833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.087345, 19.592480, 24.941170>,  <22.240742, 19.950907, 24.851732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.087345, 19.592480, 24.941170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250576, 0.333978, 0.908664,
		-0.888902, 0.292436, -0.352611,
		-0.383490, -0.896069, 0.223596,
		21.972298, 19.323658, 25.008249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.774672, 20.329659, 24.371384>,  <22.240742, 19.950907, 24.851732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.774672, 20.329659, 24.371384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.053276, 20.607464, 24.299250>,  <23.220438, 20.774147, 24.255968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.053276, 20.607464, 24.299250>,  <22.774672, 20.329659, 24.371384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.053276, 20.607464, 24.299250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024834, -0.274507, -0.961264,
		-0.717116, 0.665053, -0.208445,
		0.696511, 0.694515, -0.180337,
		23.262230, 20.815819, 24.245148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.479078, 20.683971, 23.995916>,  <22.774672, 20.329659, 24.371384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.479078, 20.683971, 23.995916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.869972, 20.721100, 23.919603>,  <23.104509, 20.743378, 23.873816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.869972, 20.721100, 23.919603>,  <22.479078, 20.683971, 23.995916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.869972, 20.721100, 23.919603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156425, -0.292275, -0.943455,
		-0.143335, 0.951819, -0.271101,
		0.977234, 0.092823, -0.190781,
		23.163143, 20.748947, 23.862370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.457901, 20.759346, 23.225353>,  <22.479078, 20.683971, 23.995916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.457901, 20.759346, 23.225353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.852463, 20.757187, 23.291054>,  <23.089199, 20.755892, 23.330475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.852463, 20.757187, 23.291054>,  <22.457901, 20.759346, 23.225353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.852463, 20.757187, 23.291054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162497, -0.117337, -0.979707,
		0.024560, 0.993077, -0.114865,
		0.986403, -0.005397, 0.164254,
		23.148384, 20.755568, 23.340330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.777956, 21.287991, 22.868431>,  <22.457901, 20.759346, 23.225353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.777956, 21.287991, 22.868431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.036102, 20.986935, 22.920641>,  <23.190990, 20.806301, 22.951967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.036102, 20.986935, 22.920641>,  <22.777956, 21.287991, 22.868431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.036102, 20.986935, 22.920641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022919, -0.151716, -0.988158,
		0.763530, 0.640715, -0.080662,
		0.645366, -0.752639, 0.130525,
		23.229712, 20.761143, 22.959799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.352512, 21.487823, 22.530279>,  <22.777956, 21.287991, 22.868431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.352512, 21.487823, 22.530279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.364216, 21.088184, 22.542618>,  <23.371239, 20.848402, 22.550020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.364216, 21.088184, 22.542618>,  <23.352512, 21.487823, 22.530279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.364216, 21.088184, 22.542618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102212, -0.027708, -0.994377,
		0.994332, 0.032250, 0.101308,
		0.029261, -0.999096, 0.030847,
		23.372993, 20.788456, 22.551872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.741735, 21.329748, 21.888914>,  <23.352512, 21.487823, 22.530279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.741735, 21.329748, 21.888914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.583408, 20.970360, 21.964893>,  <23.488411, 20.754726, 22.010481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.583408, 20.970360, 21.964893>,  <23.741735, 21.329748, 21.888914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.583408, 20.970360, 21.964893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044596, -0.187790, -0.981196,
		0.917245, -0.396847, 0.034263,
		-0.395819, -0.898469, 0.189947,
		23.464663, 20.700819, 22.021877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.108088, 20.829168, 21.483080>,  <23.741735, 21.329748, 21.888914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.108088, 20.829168, 21.483080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.767010, 20.649918, 21.590483>,  <23.562363, 20.542368, 21.654924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.767010, 20.649918, 21.590483>,  <24.108088, 20.829168, 21.483080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.767010, 20.649918, 21.590483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133979, -0.309195, -0.941514,
		0.504936, -0.838798, 0.203609,
		-0.852695, -0.448125, 0.268505,
		23.511202, 20.515480, 21.671034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.189835, 20.161009, 21.233152>,  <24.108088, 20.829168, 21.483080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.189835, 20.161009, 21.233152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.794361, 20.196915, 21.281233>,  <23.557077, 20.218458, 21.310081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.794361, 20.196915, 21.281233>,  <24.189835, 20.161009, 21.233152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.794361, 20.196915, 21.281233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146539, -0.406288, -0.901918,
		-0.032125, -0.909325, 0.414844,
		-0.988683, 0.089765, 0.120200,
		23.497757, 20.223845, 21.317293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.920876, 19.565310, 20.960701>,  <24.189835, 20.161009, 21.233152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.920876, 19.565310, 20.960701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.605713, 19.811020, 20.977970>,  <23.416615, 19.958447, 20.988331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.605713, 19.811020, 20.977970>,  <23.920876, 19.565310, 20.960701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.605713, 19.811020, 20.977970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333185, -0.366302, -0.868798,
		-0.517869, -0.698918, 0.493281,
		-0.787908, 0.614277, 0.043172,
		23.369341, 19.995302, 20.990921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.260843, 19.245430, 20.870913>,  <23.920876, 19.565310, 20.960701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.260843, 19.245430, 20.870913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.224438, 19.623055, 20.744127>,  <23.202595, 19.849628, 20.668056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.224438, 19.623055, 20.744127>,  <23.260843, 19.245430, 20.870913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.224438, 19.623055, 20.744127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332419, -0.328830, -0.883950,
		-0.938730, 0.024913, 0.343752,
		-0.091014, 0.944060, -0.316965,
		23.197134, 19.906273, 20.649038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.643156, 19.244797, 20.521734>,  <23.260843, 19.245430, 20.870913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.643156, 19.244797, 20.521734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.870316, 19.542252, 20.380598>,  <23.006611, 19.720724, 20.295916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.870316, 19.542252, 20.380598>,  <22.643156, 19.244797, 20.521734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.870316, 19.542252, 20.380598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066923, -0.385540, -0.920261,
		-0.820373, 0.546228, -0.169182,
		0.567899, 0.743636, -0.352842,
		23.040686, 19.765343, 20.274746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.239525, 19.518843, 19.979700>,  <22.643156, 19.244797, 20.521734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.239525, 19.518843, 19.979700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.618977, 19.606976, 19.888872>,  <22.846647, 19.659855, 19.834375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.618977, 19.606976, 19.888872>,  <22.239525, 19.518843, 19.979700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.618977, 19.606976, 19.888872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132691, -0.374464, -0.917698,
		-0.287225, 0.900684, -0.325992,
		0.948628, 0.220330, -0.227068,
		22.903564, 19.673075, 19.820751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.105303, 19.712366, 19.330357>,  <22.239525, 19.518843, 19.979700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.105303, 19.712366, 19.330357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.498806, 19.645451, 19.356400>,  <22.734907, 19.605301, 19.372025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.498806, 19.645451, 19.356400>,  <22.105303, 19.712366, 19.330357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.498806, 19.645451, 19.356400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035623, -0.173548, -0.984181,
		0.175941, 0.970513, -0.164770,
		0.983756, -0.167288, 0.065107,
		22.793932, 19.595264, 19.375931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.444244, 19.984018, 18.643553>,  <22.105303, 19.712366, 19.330357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.444244, 19.984018, 18.643553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.709583, 19.723957, 18.791752>,  <22.868788, 19.567921, 18.880672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.709583, 19.723957, 18.791752>,  <22.444244, 19.984018, 18.643553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.709583, 19.723957, 18.791752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093732, -0.419023, -0.903124,
		0.742416, 0.633815, -0.217019,
		0.663350, -0.650152, 0.370499,
		22.908588, 19.528912, 18.902901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.133202, 19.948200, 18.182117>,  <22.444244, 19.984018, 18.643553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.133202, 19.948200, 18.182117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.157104, 19.604679, 18.385643>,  <23.171446, 19.398567, 18.507757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.157104, 19.604679, 18.385643>,  <23.133202, 19.948200, 18.182117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.157104, 19.604679, 18.385643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178551, -0.492306, -0.851912,
		0.982114, 0.141756, 0.123922,
		0.059756, -0.858801, 0.508812,
		23.175032, 19.347038, 18.538286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.608612, 19.621496, 17.788197>,  <23.133202, 19.948200, 18.182117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.608612, 19.621496, 17.788197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.449280, 19.320911, 17.998581>,  <23.353680, 19.140560, 18.124811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.449280, 19.320911, 17.998581>,  <23.608612, 19.621496, 17.788197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.449280, 19.320911, 17.998581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063019, -0.594481, -0.801636,
		0.915074, -0.286171, 0.284157,
		-0.398331, -0.751464, 0.525960,
		23.329781, 19.095472, 18.156368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.051985, 18.980497, 17.728271>,  <23.608612, 19.621496, 17.788197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.051985, 18.980497, 17.728271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.666393, 18.893044, 17.788864>,  <23.435040, 18.840570, 17.825220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.666393, 18.893044, 17.788864>,  <24.051985, 18.980497, 17.728271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.666393, 18.893044, 17.788864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018633, -0.623617, -0.781508,
		0.265332, -0.750533, 0.605226,
		-0.963977, -0.218636, 0.151481,
		23.377201, 18.827454, 17.834309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.997528, 18.296368, 17.485989>,  <24.051985, 18.980497, 17.728271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.997528, 18.296368, 17.485989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.611969, 18.398975, 17.514559>,  <23.380634, 18.460541, 17.531700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.611969, 18.398975, 17.514559>,  <23.997528, 18.296368, 17.485989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.611969, 18.398975, 17.514559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205743, -0.547200, -0.811321,
		-0.169036, -0.796725, 0.580221,
		-0.963897, 0.256519, 0.071424,
		23.322800, 18.475931, 17.535986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.739588, 17.670919, 17.215126>,  <23.997528, 18.296368, 17.485989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.739588, 17.670919, 17.215126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.457348, 17.954052, 17.201845>,  <23.288004, 18.123932, 17.193876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.457348, 17.954052, 17.201845>,  <23.739588, 17.670919, 17.215126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.457348, 17.954052, 17.201845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229260, -0.272367, -0.934482,
		-0.670500, -0.651757, 0.354460,
		-0.705598, 0.707834, -0.033201,
		23.245668, 18.166403, 17.191885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.106926, 17.369417, 16.833961>,  <23.739588, 17.670919, 17.215126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.106926, 17.369417, 16.833961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.072708, 17.766022, 16.794796>,  <23.052177, 18.003984, 16.771297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.072708, 17.766022, 16.794796>,  <23.106926, 17.369417, 16.833961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.072708, 17.766022, 16.794796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278126, -0.118130, -0.953253,
		-0.956728, -0.054312, 0.285871,
		-0.085543, 0.991512, -0.097913,
		23.047045, 18.063475, 16.765423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<18.662230, 16.098965, 13.800068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.782230, 16.476265, 13.743110>,  <18.854231, 16.702644, 13.708935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.782230, 16.476265, 13.743110>,  <18.662230, 16.098965, 13.800068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.782230, 16.476265, 13.743110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601264, 0.071083, -0.795882,
		-0.740595, 0.324384, 0.588468,
		0.300001, 0.943251, -0.142397,
		18.872231, 16.759241, 13.700391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.115395, 16.448996, 13.809339>,  <18.662230, 16.098965, 13.800068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.115395, 16.448996, 13.809339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.384346, 16.644081, 13.586614>,  <18.545717, 16.761133, 13.452978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.384346, 16.644081, 13.586614>,  <18.115395, 16.448996, 13.809339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.384346, 16.644081, 13.586614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642854, 0.011850, -0.765897,
		-0.366941, 0.872922, 0.321497,
		0.672379, 0.487715, -0.556813,
		18.586060, 16.790396, 13.419570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.788670, 16.942102, 13.607233>,  <18.115395, 16.448996, 13.809339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.788670, 16.942102, 13.607233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.078705, 16.908871, 13.333782>,  <18.252726, 16.888931, 13.169711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.078705, 16.908871, 13.333782>,  <17.788670, 16.942102, 13.607233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.078705, 16.908871, 13.333782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688646, -0.081800, -0.720469,
		0.003936, 0.993180, -0.116525,
		0.725087, -0.083080, -0.683628,
		18.296230, 16.883947, 13.128694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.626276, 17.412674, 13.055176>,  <17.788670, 16.942102, 13.607233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.626276, 17.412674, 13.055176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.875248, 17.172840, 12.853950>,  <18.024632, 17.028940, 12.733213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.875248, 17.172840, 12.853950>,  <17.626276, 17.412674, 13.055176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.875248, 17.172840, 12.853950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659301, -0.055285, -0.749844,
		0.421784, 0.798398, -0.429719,
		0.622431, -0.599586, -0.503066,
		18.061977, 16.992964, 12.703030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.720354, 17.756924, 12.441272>,  <17.626276, 17.412674, 13.055176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.720354, 17.756924, 12.441272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.824589, 17.374836, 12.385194>,  <17.887129, 17.145584, 12.351547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.824589, 17.374836, 12.385194>,  <17.720354, 17.756924, 12.441272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.824589, 17.374836, 12.385194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634178, -0.059867, -0.770866,
		0.727951, 0.289787, -0.621378,
		0.260587, -0.955217, -0.140196,
		17.902765, 17.088270, 12.343135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.986992, 17.688086, 11.787118>,  <17.720354, 17.756924, 12.441272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.986992, 17.688086, 11.787118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.846893, 17.331425, 11.901860>,  <17.762835, 17.117428, 11.970706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.846893, 17.331425, 11.901860>,  <17.986992, 17.688086, 11.787118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.846893, 17.331425, 11.901860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515459, -0.072226, -0.853865,
		0.782068, -0.446925, -0.434313,
		-0.350245, -0.891651, 0.286857,
		17.741819, 17.063929, 11.987917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.896528, 17.396778, 11.147240>,  <17.986992, 17.688086, 11.787118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.896528, 17.396778, 11.147240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.711571, 17.137604, 11.389354>,  <17.600595, 16.982100, 11.534622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.711571, 17.137604, 11.389354>,  <17.896528, 17.396778, 11.147240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.711571, 17.137604, 11.389354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563531, -0.312291, -0.764792,
		0.684561, -0.694733, -0.220731,
		-0.462394, -0.647936, 0.605286,
		17.572853, 16.943224, 11.570940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.899414, 16.782251, 10.743170>,  <17.896528, 17.396778, 11.147240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.899414, 16.782251, 10.743170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.615456, 16.762333, 11.024186>,  <17.445080, 16.750381, 11.192796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.615456, 16.762333, 11.024186>,  <17.899414, 16.782251, 10.743170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.615456, 16.762333, 11.024186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680128, -0.210640, -0.702180,
		0.182951, -0.976295, 0.115663,
		-0.709897, -0.049799, 0.702542,
		17.402487, 16.747393, 11.234949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.569765, 16.098791, 10.675158>,  <17.899414, 16.782251, 10.743170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.569765, 16.098791, 10.675158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.292885, 16.318363, 10.862576>,  <17.126757, 16.450106, 10.975026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.292885, 16.318363, 10.862576>,  <17.569765, 16.098791, 10.675158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.292885, 16.318363, 10.862576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635654, -0.156281, -0.755989,
		-0.341758, -0.821131, 0.457106,
		-0.692203, 0.548927, 0.468545,
		17.085224, 16.483042, 11.003139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.926222, 15.736284, 10.623262>,  <17.569765, 16.098791, 10.675158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.926222, 15.736284, 10.623262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.835018, 16.121479, 10.680768>,  <16.780296, 16.352596, 10.715272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.835018, 16.121479, 10.680768>,  <16.926222, 15.736284, 10.623262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.835018, 16.121479, 10.680768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614253, -0.027703, -0.788622,
		-0.755450, -0.268120, 0.597835,
		-0.228008, 0.962987, 0.143765,
		16.766617, 16.410376, 10.723898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.324114, 15.702812, 10.410539>,  <16.926222, 15.736284, 10.623262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.324114, 15.702812, 10.410539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.371407, 16.099995, 10.413589>,  <16.399782, 16.338305, 10.415419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.371407, 16.099995, 10.413589>,  <16.324114, 15.702812, 10.410539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.371407, 16.099995, 10.413589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456750, 0.061202, -0.887487,
		-0.881703, 0.101448, 0.460769,
		0.118234, 0.992956, 0.007626,
		16.406878, 16.397882, 10.415876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.767731, 16.010752, 10.282868>,  <16.324114, 15.702812, 10.410539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.767731, 16.010752, 10.282868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.998178, 16.326809, 10.199192>,  <16.136446, 16.516443, 10.148987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.998178, 16.326809, 10.199192>,  <15.767731, 16.010752, 10.282868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.998178, 16.326809, 10.199192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556047, 0.191291, -0.808839,
		-0.599083, 0.582306, 0.549563,
		0.576118, 0.790144, -0.209190,
		16.171013, 16.563852, 10.136435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.261522, 16.495552, 10.155362>,  <15.767731, 16.010752, 10.282868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.261522, 16.495552, 10.155362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.614015, 16.548397, 9.973823>,  <15.825510, 16.580103, 9.864899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.614015, 16.548397, 9.973823>,  <15.261522, 16.495552, 10.155362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.614015, 16.548397, 9.973823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471149, 0.168134, -0.865881,
		-0.038085, 0.976871, 0.210408,
		0.881231, 0.132111, -0.453849,
		15.878384, 16.588030, 9.837667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.033275, 16.698524, 9.503056>,  <15.261522, 16.495552, 10.155362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.033275, 16.698524, 9.503056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.420302, 16.614952, 9.446261>,  <15.652519, 16.564810, 9.412185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.420302, 16.614952, 9.446261>,  <15.033275, 16.698524, 9.503056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.420302, 16.614952, 9.446261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086548, 0.253869, -0.963359,
		0.237320, 0.944404, 0.227553,
		0.967568, -0.208930, -0.141985,
		15.710573, 16.552273, 9.403666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.663670, 16.843288, 8.834923>,  <15.033275, 16.698524, 9.503056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.663670, 16.843288, 8.834923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.399293, 17.138645, 8.781353>,  <14.240666, 17.315859, 8.749211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.399293, 17.138645, 8.781353>,  <14.663670, 16.843288, 8.834923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.399293, 17.138645, 8.781353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370186, 0.476042, 0.797713,
		0.652776, 0.477666, -0.587978,
		-0.660943, 0.738390, -0.133924,
		14.201010, 17.360163, 8.741176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.122573, 17.547523, 8.954292>,  <14.663670, 16.843288, 8.834923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.122573, 17.547523, 8.954292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.737958, 17.650669, 8.992142>,  <14.507189, 17.712557, 9.014852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.737958, 17.650669, 8.992142>,  <15.122573, 17.547523, 8.954292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.737958, 17.650669, 8.992142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236119, 0.599954, 0.764397,
		0.140342, 0.757338, -0.637765,
		-0.961536, 0.257865, 0.094623,
		14.449497, 17.728029, 9.020529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.169096, 18.151728, 9.035288>,  <15.122573, 17.547523, 8.954292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.169096, 18.151728, 9.035288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.795320, 18.108120, 9.170897>,  <14.571054, 18.081955, 9.252262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.795320, 18.108120, 9.170897>,  <15.169096, 18.151728, 9.035288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.795320, 18.108120, 9.170897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191465, 0.648889, 0.736399,
		-0.300271, 0.753032, -0.585474,
		-0.934440, -0.109021, 0.339022,
		14.514988, 18.075413, 9.272603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.832509, 18.896860, 9.185351>,  <15.169096, 18.151728, 9.035288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.832509, 18.896860, 9.185351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.662879, 18.617226, 9.415633>,  <14.561101, 18.449444, 9.553802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.662879, 18.617226, 9.415633>,  <14.832509, 18.896860, 9.185351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.662879, 18.617226, 9.415633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153921, 0.570809, 0.806527,
		-0.892451, 0.430641, -0.134462,
		-0.424076, -0.699088, 0.575704,
		14.535656, 18.407499, 9.588345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.408764, 19.256153, 9.728503>,  <14.832509, 18.896860, 9.185351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.408764, 19.256153, 9.728503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.491818, 18.878475, 9.830784>,  <14.541651, 18.651869, 9.892153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.491818, 18.878475, 9.830784>,  <14.408764, 19.256153, 9.728503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.491818, 18.878475, 9.830784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336656, 0.314406, 0.887587,
		-0.918450, -0.098211, 0.383151,
		0.207636, -0.944195, 0.255702,
		14.554110, 18.595217, 9.907495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.203526, 19.246298, 10.399179>,  <14.408764, 19.256153, 9.728503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.203526, 19.246298, 10.399179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.458703, 18.939800, 10.368460>,  <14.611809, 18.755901, 10.350029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.458703, 18.939800, 10.368460>,  <14.203526, 19.246298, 10.399179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.458703, 18.939800, 10.368460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389707, 0.235214, 0.890395,
		-0.664198, -0.597949, 0.448664,
		0.637943, -0.766246, -0.076796,
		14.650085, 18.709927, 10.345421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.151653, 18.963800, 11.040792>,  <14.203526, 19.246298, 10.399179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.151653, 18.963800, 11.040792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.485902, 18.812920, 10.881064>,  <14.686451, 18.722391, 10.785228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.485902, 18.812920, 10.881064>,  <14.151653, 18.963800, 11.040792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.485902, 18.812920, 10.881064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450939, 0.055936, 0.890800,
		-0.313677, -0.924440, 0.216837,
		0.835620, -0.377203, -0.399320,
		14.736588, 18.699759, 10.761269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.417350, 18.416578, 11.531552>,  <14.151653, 18.963800, 11.040792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.417350, 18.416578, 11.531552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.734738, 18.478996, 11.296247>,  <14.925172, 18.516447, 11.155065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.734738, 18.478996, 11.296247>,  <14.417350, 18.416578, 11.531552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.734738, 18.478996, 11.296247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605244, -0.100855, 0.789625,
		0.063888, -0.982588, -0.174471,
		0.793472, 0.156045, -0.588262,
		14.972780, 18.525810, 11.119769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.949151, 17.912609, 11.748863>,  <14.417350, 18.416578, 11.531552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.949151, 17.912609, 11.748863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.141665, 18.213238, 11.568419>,  <15.257174, 18.393616, 11.460152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.141665, 18.213238, 11.568419>,  <14.949151, 17.912609, 11.748863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.141665, 18.213238, 11.568419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596188, 0.096604, 0.797011,
		0.642592, -0.652538, -0.401584,
		0.481285, 0.751573, -0.451112,
		15.286051, 18.438709, 11.433084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.619538, 17.809101, 11.997464>,  <14.949151, 17.912609, 11.748863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.619538, 17.809101, 11.997464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.654689, 18.176411, 11.843037>,  <15.675779, 18.396797, 11.750381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.654689, 18.176411, 11.843037>,  <15.619538, 17.809101, 11.997464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.654689, 18.176411, 11.843037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608062, 0.257533, 0.750958,
		0.789011, -0.300746, -0.535737,
		0.087877, 0.918275, -0.386069,
		15.681052, 18.451893, 11.727216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.354082, 17.941441, 11.906585>,  <15.619538, 17.809101, 11.997464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.354082, 17.941441, 11.906585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.151848, 18.284973, 11.939561>,  <16.030508, 18.491093, 11.959347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.151848, 18.284973, 11.939561>,  <16.354082, 17.941441, 11.906585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.151848, 18.284973, 11.939561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605700, 0.285268, 0.742798,
		0.614420, 0.425481, -0.664420,
		-0.505585, 0.858829, 0.082440,
		16.000172, 18.542622, 11.964293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.913088, 18.475296, 11.967969>,  <16.354082, 17.941441, 11.906585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.913088, 18.475296, 11.967969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.576790, 18.642918, 12.105105>,  <16.375011, 18.743490, 12.187387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.576790, 18.642918, 12.105105>,  <16.913088, 18.475296, 11.967969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.576790, 18.642918, 12.105105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475293, 0.267961, 0.838029,
		0.259312, 0.867520, -0.424461,
		-0.840746, 0.419054, 0.342841,
		16.324566, 18.768635, 12.207957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.044081, 19.158850, 12.066185>,  <16.913088, 18.475296, 11.967969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.044081, 19.158850, 12.066185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.750977, 19.059650, 12.319660>,  <16.575113, 19.000132, 12.471745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.750977, 19.059650, 12.319660>,  <17.044081, 19.158850, 12.066185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.750977, 19.059650, 12.319660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454769, 0.514266, 0.727129,
		-0.506210, 0.820992, -0.264052,
		-0.732760, -0.247997, 0.633688,
		16.531149, 18.985250, 12.509767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.019754, 19.806805, 12.367359>,  <17.044081, 19.158850, 12.066185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.019754, 19.806805, 12.367359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.833950, 19.540718, 12.601186>,  <16.722467, 19.381065, 12.741482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.833950, 19.540718, 12.601186>,  <17.019754, 19.806805, 12.367359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.833950, 19.540718, 12.601186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431988, 0.406026, 0.805313,
		-0.773056, 0.626603, 0.098761,
		-0.464512, -0.665216, 0.584566,
		16.694597, 19.341154, 12.776555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.912266, 20.424234, 12.178334>,  <17.019754, 19.806805, 12.367359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.912266, 20.424234, 12.178334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.166653, 20.718430, 12.084861>,  <17.319284, 20.894947, 12.028777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.166653, 20.718430, 12.084861>,  <16.912266, 20.424234, 12.178334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.166653, 20.718430, 12.084861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073507, -0.243699, -0.967061,
		-0.768208, 0.632195, -0.100921,
		0.635966, 0.735486, -0.233682,
		17.357443, 20.939075, 12.014756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.579733, 20.840019, 11.656238>,  <16.912266, 20.424234, 12.178334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.579733, 20.840019, 11.656238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.972851, 20.911865, 11.639030>,  <17.208721, 20.954973, 11.628704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.972851, 20.911865, 11.639030>,  <16.579733, 20.840019, 11.656238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.972851, 20.911865, 11.639030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004318, -0.210525, -0.977579,
		-0.184643, 0.960947, -0.206127,
		0.982796, 0.179613, -0.043021,
		17.267689, 20.965750, 11.626123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.660364, 21.197699, 10.963672>,  <16.579733, 20.840019, 11.656238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.660364, 21.197699, 10.963672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.032738, 21.098461, 11.070863>,  <17.256161, 21.038918, 11.135178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.032738, 21.098461, 11.070863>,  <16.660364, 21.197699, 10.963672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.032738, 21.098461, 11.070863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212935, -0.227388, -0.950239,
		0.296685, 0.941670, -0.158855,
		0.930933, -0.248096, 0.267977,
		17.312017, 21.024033, 11.151256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.214750, 21.623550, 10.510721>,  <16.660364, 21.197699, 10.963672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.214750, 21.623550, 10.510721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.372227, 21.277397, 10.634733>,  <17.466713, 21.069704, 10.709140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.372227, 21.277397, 10.634733>,  <17.214750, 21.623550, 10.510721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.372227, 21.277397, 10.634733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152642, -0.271041, -0.950388,
		0.906482, 0.421481, 0.025388,
		0.393689, -0.865385, 0.310029,
		17.490334, 21.017782, 10.727742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.723591, 21.461618, 10.108232>,  <17.214750, 21.623550, 10.510721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.723591, 21.461618, 10.108232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.661888, 21.091305, 10.246290>,  <17.624866, 20.869116, 10.329124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.661888, 21.091305, 10.246290>,  <17.723591, 21.461618, 10.108232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.661888, 21.091305, 10.246290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192186, -0.370768, -0.908623,
		0.969159, -0.073830, 0.235117,
		-0.154257, -0.925786, 0.345145,
		17.615610, 20.813568, 10.349833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.187847, 21.118773, 9.804173>,  <17.723591, 21.461618, 10.108232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.187847, 21.118773, 9.804173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.951504, 20.815346, 9.914055>,  <17.809698, 20.633289, 9.979983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.951504, 20.815346, 9.914055>,  <18.187847, 21.118773, 9.804173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.951504, 20.815346, 9.914055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231984, -0.485861, -0.842688,
		0.772704, -0.434181, 0.463050,
		-0.590857, -0.758568, 0.274704,
		17.774246, 20.587776, 9.996466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.522900, 20.569904, 9.558063>,  <18.187847, 21.118773, 9.804173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.522900, 20.569904, 9.558063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.161716, 20.419640, 9.641536>,  <17.945007, 20.329481, 9.691620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.161716, 20.419640, 9.641536>,  <18.522900, 20.569904, 9.558063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.161716, 20.419640, 9.641536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069577, -0.607003, -0.791648,
		0.424063, -0.700304, 0.574235,
		-0.902956, -0.375662, 0.208683,
		17.890829, 20.306940, 9.704141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.608330, 19.895699, 9.645811>,  <18.522900, 20.569904, 9.558063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.608330, 19.895699, 9.645811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.217777, 19.923454, 9.563968>,  <17.983446, 19.940107, 9.514862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.217777, 19.923454, 9.563968>,  <18.608330, 19.895699, 9.645811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.217777, 19.923454, 9.563968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126051, -0.586198, -0.800302,
		-0.175471, -0.807191, 0.563607,
		-0.976381, 0.069387, -0.204608,
		17.924862, 19.944271, 9.502585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.431799, 19.412207, 9.281790>,  <18.608330, 19.895699, 9.645811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.431799, 19.412207, 9.281790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.104778, 19.598900, 9.146872>,  <17.908566, 19.710915, 9.065921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.104778, 19.598900, 9.146872>,  <18.431799, 19.412207, 9.281790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.104778, 19.598900, 9.146872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200262, -0.318732, -0.926447,
		-0.539910, -0.824967, 0.167112,
		-0.817552, 0.466732, -0.337296,
		17.859512, 19.738920, 9.045683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.855247, 18.915554, 8.868562>,  <18.431799, 19.412207, 9.281790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.855247, 18.915554, 8.868562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.841091, 19.297253, 8.749793>,  <17.832598, 19.526272, 8.678532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.841091, 19.297253, 8.749793>,  <17.855247, 18.915554, 8.868562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.841091, 19.297253, 8.749793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173490, -0.286731, -0.942171,
		-0.984200, -0.084855, -0.155405,
		-0.035389, 0.954245, -0.296923,
		17.830475, 19.583527, 8.660716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.625278, 18.831383, 8.144029>,  <17.855247, 18.915554, 8.868562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.625278, 18.831383, 8.144029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.712933, 19.221661, 8.144469>,  <17.765526, 19.455828, 8.144733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.712933, 19.221661, 8.144469>,  <17.625278, 18.831383, 8.144029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.712933, 19.221661, 8.144469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012970, 0.004043, -0.999908,
		-0.975608, 0.219102, 0.013541,
		0.219136, 0.975694, 0.001102,
		17.778673, 19.514368, 8.144800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.058874, 19.176111, 7.806935>,  <17.625278, 18.831383, 8.144029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.058874, 19.176111, 7.806935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.401459, 19.382339, 7.796642>,  <17.607010, 19.506077, 7.790467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.401459, 19.382339, 7.796642>,  <17.058874, 19.176111, 7.806935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.401459, 19.382339, 7.796642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033024, -0.104467, -0.993980,
		-0.515154, 0.850455, -0.106499,
		0.856461, 0.515570, -0.025731,
		17.658398, 19.537010, 7.788923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.868484, 21.846716, 15.408936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.251919, 21.952354, 15.366282>,  <17.481979, 22.015738, 15.340691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.251919, 21.952354, 15.366282>,  <16.868484, 21.846716, 15.408936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.251919, 21.952354, 15.366282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085334, -0.090876, -0.992199,
		-0.271726, 0.960206, -0.064576,
		0.958584, 0.264096, -0.106632,
		17.539494, 22.031584, 15.334293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.904625, 22.387074, 15.000972>,  <16.868484, 21.846716, 15.408936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.904625, 22.387074, 15.000972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.265301, 22.216915, 14.970010>,  <17.481707, 22.114820, 14.951432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.265301, 22.216915, 14.970010>,  <16.904625, 22.387074, 15.000972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.265301, 22.216915, 14.970010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039168, 0.097925, -0.994423,
		0.430605, 0.899693, 0.071637,
		0.901690, -0.425398, -0.077406,
		17.535809, 22.089296, 14.946788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.227734, 22.792799, 14.492958>,  <16.904625, 22.387074, 15.000972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.227734, 22.792799, 14.492958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.456497, 22.464813, 14.502582>,  <17.593756, 22.268023, 14.508356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.456497, 22.464813, 14.502582>,  <17.227734, 22.792799, 14.492958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.456497, 22.464813, 14.502582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003041, -0.031449, -0.999501,
		0.820310, 0.571552, -0.020480,
		0.571911, -0.819963, 0.024060,
		17.628071, 22.218824, 14.509799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.652725, 22.928566, 13.989349>,  <17.227734, 22.792799, 14.492958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.652725, 22.928566, 13.989349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.681438, 22.533791, 14.047044>,  <17.698666, 22.296926, 14.081660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.681438, 22.533791, 14.047044>,  <17.652725, 22.928566, 13.989349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.681438, 22.533791, 14.047044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068665, -0.149156, -0.986427,
		0.995054, 0.060903, -0.078474,
		0.071781, -0.986937, 0.144236,
		17.702972, 22.237709, 14.090315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.264074, 22.584316, 13.587960>,  <17.652725, 22.928566, 13.989349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.264074, 22.584316, 13.587960> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.992516, 22.298397, 13.655089>,  <17.829580, 22.126846, 13.695367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.992516, 22.298397, 13.655089>,  <18.264074, 22.584316, 13.587960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.992516, 22.298397, 13.655089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188452, -0.390548, -0.901087,
		0.709636, -0.580120, 0.399846,
		-0.678898, -0.714796, 0.167822,
		17.788847, 22.083958, 13.705436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.463108, 22.005844, 13.157502>,  <18.264074, 22.584316, 13.587960>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.463108, 22.005844, 13.157502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.094589, 21.890594, 13.261958>,  <17.873478, 21.821444, 13.324632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.094589, 21.890594, 13.261958>,  <18.463108, 22.005844, 13.157502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.094589, 21.890594, 13.261958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081093, -0.514433, -0.853688,
		0.380309, -0.807677, 0.450581,
		-0.921298, -0.288126, 0.261140,
		17.818199, 21.804157, 13.340301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.470507, 21.296021, 13.028918>,  <18.463108, 22.005844, 13.157502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.470507, 21.296021, 13.028918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.088264, 21.413452, 13.038945>,  <17.858919, 21.483912, 13.044962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.088264, 21.413452, 13.038945>,  <18.470507, 21.296021, 13.028918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.088264, 21.413452, 13.038945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189203, -0.546183, -0.816019,
		-0.225873, -0.784536, 0.577482,
		-0.955607, 0.293578, 0.025068,
		17.801582, 21.501526, 13.046466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.997860, 20.654327, 13.119461>,  <18.470507, 21.296021, 13.028918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.997860, 20.654327, 13.119461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.794601, 20.958645, 12.957977>,  <17.672647, 21.141235, 12.861087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.794601, 20.958645, 12.957977>,  <17.997860, 20.654327, 13.119461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.794601, 20.958645, 12.957977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080052, -0.508429, -0.857375,
		-0.857543, -0.403353, 0.319258,
		-0.508145, 0.760793, -0.403710,
		17.642159, 21.186882, 12.836864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.420549, 20.326073, 12.671735>,  <17.997860, 20.654327, 13.119461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.420549, 20.326073, 12.671735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.454544, 20.706478, 12.552839>,  <17.474941, 20.934721, 12.481503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.454544, 20.706478, 12.552839>,  <17.420549, 20.326073, 12.671735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.454544, 20.706478, 12.552839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089374, -0.304391, -0.948345,
		-0.992365, 0.054033, -0.110866,
		0.084989, 0.951013, -0.297238,
		17.480042, 20.991781, 12.463668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.659018, 20.336275, 13.006749>,  <17.420549, 20.326073, 12.671735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.659018, 20.336275, 13.006749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.670986, 19.947994, 13.102116>,  <16.678167, 19.715025, 13.159336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.670986, 19.947994, 13.102116>,  <16.659018, 20.336275, 13.006749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.670986, 19.947994, 13.102116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540710, 0.216330, 0.812917,
		-0.840677, 0.104592, 0.531341,
		0.029920, -0.970702, 0.238417,
		16.679962, 19.656784, 13.173641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.574396, 20.419163, 13.708847>,  <16.659018, 20.336275, 13.006749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.574396, 20.419163, 13.708847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.743137, 20.063686, 13.636992>,  <16.844381, 19.850401, 13.593880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.743137, 20.063686, 13.636992>,  <16.574396, 20.419163, 13.708847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.743137, 20.063686, 13.636992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562082, 0.100879, 0.820907,
		-0.711411, -0.447270, 0.542073,
		0.421851, -0.888692, -0.179636,
		16.869692, 19.797079, 13.583102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.491659, 20.097366, 14.283296>,  <16.574396, 20.419163, 13.708847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.491659, 20.097366, 14.283296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.805313, 19.918842, 14.110812>,  <16.993505, 19.811728, 14.007322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.805313, 19.918842, 14.110812>,  <16.491659, 20.097366, 14.283296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.805313, 19.918842, 14.110812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444127, -0.081740, 0.892227,
		-0.433458, -0.891137, 0.134124,
		0.784133, -0.446312, -0.431208,
		17.040554, 19.784948, 13.981450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.510059, 19.593201, 14.789310>,  <16.491659, 20.097366, 14.283296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.510059, 19.593201, 14.789310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.852150, 19.595928, 14.582025>,  <17.057404, 19.597565, 14.457653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.852150, 19.595928, 14.582025>,  <16.510059, 19.593201, 14.789310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.852150, 19.595928, 14.582025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497584, -0.290407, 0.817358,
		-0.144918, -0.956879, -0.251756,
		0.855225, 0.006819, -0.518213,
		17.108717, 19.597973, 14.426560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.762032, 19.019785, 14.720423>,  <16.510059, 19.593201, 14.789310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.762032, 19.019785, 14.720423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.086548, 19.253315, 14.708095>,  <17.281258, 19.393433, 14.700698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.086548, 19.253315, 14.708095>,  <16.762032, 19.019785, 14.720423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.086548, 19.253315, 14.708095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349895, -0.442632, 0.825621,
		0.468378, -0.680604, -0.563382,
		0.811292, 0.583827, -0.030821,
		17.329935, 19.428463, 14.698849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.263718, 18.527445, 14.982951>,  <16.762032, 19.019785, 14.720423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.263718, 18.527445, 14.982951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.414902, 18.897411, 14.999337>,  <17.505611, 19.119390, 15.009169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.414902, 18.897411, 14.999337>,  <17.263718, 18.527445, 14.982951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.414902, 18.897411, 14.999337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393246, -0.200439, 0.897319,
		0.838155, -0.323041, -0.439477,
		0.377960, 0.924915, 0.040964,
		17.528290, 19.174887, 15.011626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.923548, 18.436460, 15.375631>,  <17.263718, 18.527445, 14.982951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.923548, 18.436460, 15.375631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.881031, 18.834019, 15.387441>,  <17.855520, 19.072554, 15.394526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.881031, 18.834019, 15.387441>,  <17.923548, 18.436460, 15.375631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.881031, 18.834019, 15.387441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458215, 0.022609, 0.888554,
		0.882463, 0.107974, -0.457821,
		-0.106291, 0.993897, 0.029523,
		17.849144, 19.132187, 15.396297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.507336, 18.699482, 15.491445>,  <17.923548, 18.436460, 15.375631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.507336, 18.699482, 15.491445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.284351, 19.009171, 15.611325>,  <18.150560, 19.194983, 15.683254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.284351, 19.009171, 15.611325>,  <18.507336, 18.699482, 15.491445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.284351, 19.009171, 15.611325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392312, -0.072486, 0.916972,
		0.731662, 0.628752, -0.263328,
		-0.557460, 0.774220, 0.299702,
		18.117113, 19.241436, 15.701236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.925671, 19.061064, 15.932944>,  <18.507336, 18.699482, 15.491445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.925671, 19.061064, 15.932944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.553932, 19.178699, 16.022232>,  <18.330889, 19.249281, 16.075806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.553932, 19.178699, 16.022232>,  <18.925671, 19.061064, 15.932944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.553932, 19.178699, 16.022232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271686, 0.135336, 0.952823,
		0.250006, 0.946148, -0.205674,
		-0.929346, 0.294090, 0.223220,
		18.275127, 19.266926, 16.089197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.014191, 19.674980, 16.362043>,  <18.925671, 19.061064, 15.932944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.014191, 19.674980, 16.362043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.646717, 19.532272, 16.429852>,  <18.426233, 19.446648, 16.470537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.646717, 19.532272, 16.429852>,  <19.014191, 19.674980, 16.362043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.646717, 19.532272, 16.429852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060515, 0.296984, 0.952963,
		-0.390333, 0.885730, -0.251244,
		-0.918683, -0.356769, 0.169522,
		18.371113, 19.425241, 16.480709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.700771, 20.178013, 16.603888>,  <19.014191, 19.674980, 16.362043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.700771, 20.178013, 16.603888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.534046, 19.831505, 16.714043>,  <18.434011, 19.623600, 16.780136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.534046, 19.831505, 16.714043>,  <18.700771, 20.178013, 16.603888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.534046, 19.831505, 16.714043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361484, 0.120007, 0.924623,
		-0.834023, 0.484945, 0.263123,
		-0.416815, -0.866272, 0.275389,
		18.409002, 19.571623, 16.796659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.350328, 20.329706, 17.273224>,  <18.700771, 20.178013, 16.603888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.350328, 20.329706, 17.273224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.399487, 19.933037, 17.257849>,  <18.428982, 19.695034, 17.248623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.399487, 19.933037, 17.257849>,  <18.350328, 20.329706, 17.273224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.399487, 19.933037, 17.257849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231490, -0.009021, 0.972796,
		-0.965044, -0.128449, 0.228454,
		0.122894, -0.991675, -0.038440,
		18.436356, 19.635534, 17.246317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.122162, 20.125372, 17.909119>,  <18.350328, 20.329706, 17.273224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.122162, 20.125372, 17.909119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.349171, 19.821262, 17.782690>,  <18.485376, 19.638796, 17.706833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.349171, 19.821262, 17.782690>,  <18.122162, 20.125372, 17.909119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.349171, 19.821262, 17.782690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247691, -0.208452, 0.946149,
		-0.785220, -0.615247, 0.070013,
		0.567520, -0.760276, -0.316072,
		18.519426, 19.593180, 17.687868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.940479, 19.633562, 18.260069>,  <18.122162, 20.125372, 17.909119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.940479, 19.633562, 18.260069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.314388, 19.558655, 18.139317>,  <18.538734, 19.513710, 18.066866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.314388, 19.558655, 18.139317>,  <17.940479, 19.633562, 18.260069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.314388, 19.558655, 18.139317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333224, 0.167665, 0.927820,
		-0.123137, -0.967894, 0.219131,
		0.934772, -0.187269, -0.301879,
		18.594820, 19.502474, 18.048752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<23.731876, 21.180487, 17.324348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.348248, 21.291237, 17.348089>,  <23.118071, 21.357687, 17.362333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.348248, 21.291237, 17.348089>,  <23.731876, 21.180487, 17.324348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.348248, 21.291237, 17.348089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159009, -0.353165, -0.921949,
		-0.234302, -0.893653, 0.382736,
		-0.959072, 0.276873, 0.059352,
		23.060526, 21.374300, 17.365894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.381763, 20.732105, 16.949066>,  <23.731876, 21.180487, 17.324348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.381763, 20.732105, 16.949066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.110851, 21.026028, 16.963766>,  <22.948303, 21.202381, 16.972586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.110851, 21.026028, 16.963766>,  <23.381763, 20.732105, 16.949066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.110851, 21.026028, 16.963766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451505, -0.375681, -0.809325,
		-0.580889, -0.564735, 0.586210,
		-0.677282, 0.734805, 0.036752,
		22.907667, 21.246469, 16.974792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.888918, 20.444603, 16.746256>,  <23.381763, 20.732105, 16.949066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.888918, 20.444603, 16.746256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.771378, 20.824566, 16.703686>,  <22.700853, 21.052544, 16.678144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.771378, 20.824566, 16.703686>,  <22.888918, 20.444603, 16.746256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.771378, 20.824566, 16.703686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608561, -0.271780, -0.745512,
		-0.737093, -0.154302, 0.657940,
		-0.293849, 0.949909, -0.106425,
		22.683224, 21.109539, 16.671759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.219355, 20.401371, 16.510319>,  <22.888918, 20.444603, 16.746256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.219355, 20.401371, 16.510319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.328114, 20.773487, 16.411827>,  <22.393370, 20.996758, 16.352732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.328114, 20.773487, 16.411827>,  <22.219355, 20.401371, 16.510319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.328114, 20.773487, 16.411827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476277, -0.092245, -0.874443,
		-0.836200, 0.355034, 0.417995,
		0.271899, 0.930291, -0.246230,
		22.409683, 21.052574, 16.337957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.651434, 20.723827, 16.191088>,  <22.219355, 20.401371, 16.510319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.651434, 20.723827, 16.191088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.971909, 20.925365, 16.061941>,  <22.164192, 21.046289, 15.984453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.971909, 20.925365, 16.061941>,  <21.651434, 20.723827, 16.191088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.971909, 20.925365, 16.061941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377696, 0.007271, -0.925901,
		-0.464165, 0.863763, 0.196126,
		0.801185, 0.503847, -0.322865,
		22.212263, 21.076519, 15.965081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.362200, 21.120106, 15.746439>,  <21.651434, 20.723827, 16.191088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.362200, 21.120106, 15.746439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.747372, 21.145824, 15.641646>,  <21.978474, 21.161255, 15.578771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.747372, 21.145824, 15.641646>,  <21.362200, 21.120106, 15.746439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.747372, 21.145824, 15.641646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248166, -0.169553, -0.953764,
		-0.105744, 0.983422, -0.147311,
		0.962929, 0.064297, -0.261981,
		22.036251, 21.165113, 15.563052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.507633, 21.660471, 15.154542>,  <21.362200, 21.120106, 15.746439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.507633, 21.660471, 15.154542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.823139, 21.414867, 15.166146>,  <22.012444, 21.267506, 15.173109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.823139, 21.414867, 15.166146>,  <21.507633, 21.660471, 15.154542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.823139, 21.414867, 15.166146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095730, -0.169321, -0.980901,
		0.607192, 0.770925, -0.192334,
		0.788767, -0.614007, 0.029010,
		22.059769, 21.230665, 15.174850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.870974, 21.691654, 14.452614>,  <21.507633, 21.660471, 15.154542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.870974, 21.691654, 14.452614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.046734, 21.358475, 14.587150>,  <22.152191, 21.158567, 14.667871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.046734, 21.358475, 14.587150>,  <21.870974, 21.691654, 14.452614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.046734, 21.358475, 14.587150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003580, -0.376044, -0.926595,
		0.898284, 0.405943, -0.168216,
		0.439402, -0.832947, 0.336341,
		22.178555, 21.108591, 14.688052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.510670, 21.548647, 14.047627>,  <21.870974, 21.691654, 14.452614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.510670, 21.548647, 14.047627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.417488, 21.189377, 14.196767>,  <22.361580, 20.973814, 14.286250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.417488, 21.189377, 14.196767>,  <22.510670, 21.548647, 14.047627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.417488, 21.189377, 14.196767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039445, -0.391807, -0.919201,
		0.971688, -0.199423, 0.126701,
		-0.232953, -0.898174, 0.372848,
		22.347603, 20.919924, 14.308621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.021790, 21.081335, 13.775540>,  <22.510670, 21.548647, 14.047627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.021790, 21.081335, 13.775540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.720570, 20.836525, 13.872153>,  <22.539837, 20.689638, 13.930121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.720570, 20.836525, 13.872153>,  <23.021790, 21.081335, 13.775540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.720570, 20.836525, 13.872153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060250, -0.429693, -0.900963,
		0.655197, -0.663919, 0.360455,
		-0.753051, -0.612026, 0.241533,
		22.494654, 20.652918, 13.944613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.216282, 20.403597, 13.546092>,  <23.021790, 21.081335, 13.775540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.216282, 20.403597, 13.546092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.818886, 20.391850, 13.590112>,  <22.580448, 20.384802, 13.616524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.818886, 20.391850, 13.590112>,  <23.216282, 20.403597, 13.546092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.818886, 20.391850, 13.590112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095952, -0.304809, -0.947568,
		0.061371, -0.951961, 0.300007,
		-0.993492, -0.029367, 0.110049,
		22.520838, 20.383039, 13.623126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.120216, 19.729872, 13.307569>,  <23.216282, 20.403597, 13.546092>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.120216, 19.729872, 13.307569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.775524, 19.932545, 13.297007>,  <22.568708, 20.054148, 13.290669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.775524, 19.932545, 13.297007>,  <23.120216, 19.729872, 13.307569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.775524, 19.932545, 13.297007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167768, -0.333669, -0.927642,
		-0.478831, -0.794945, 0.372537,
		-0.861728, 0.506683, -0.026404,
		22.517006, 20.084549, 13.289085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.742273, 19.287838, 13.058299>,  <23.120216, 19.729872, 13.307569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.742273, 19.287838, 13.058299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.525600, 19.617496, 12.992128>,  <22.395597, 19.815290, 12.952426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.525600, 19.617496, 12.992128>,  <22.742273, 19.287838, 13.058299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.525600, 19.617496, 12.992128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318931, -0.383587, -0.866686,
		-0.777730, -0.416708, 0.470627,
		-0.541682, 0.824145, -0.165426,
		22.363096, 19.864740, 12.942501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.086199, 19.109383, 12.923704>,  <22.742273, 19.287838, 13.058299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.086199, 19.109383, 12.923704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.114983, 19.472759, 12.758998>,  <22.132252, 19.690786, 12.660174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.114983, 19.472759, 12.758998>,  <22.086199, 19.109383, 12.923704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.114983, 19.472759, 12.758998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352335, -0.363069, -0.862579,
		-0.933104, 0.207150, 0.293950,
		0.071959, 0.908444, -0.411767,
		22.136570, 19.745293, 12.635468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.444818, 19.010624, 13.177505>,  <22.086199, 19.109383, 12.923704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.444818, 19.010624, 13.177505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.426926, 18.611046, 13.181649>,  <21.416189, 18.371300, 13.184136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.426926, 18.611046, 13.181649>,  <21.444818, 19.010624, 13.177505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.426926, 18.611046, 13.181649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551407, -0.016040, 0.834082,
		-0.833036, 0.043025, 0.551543,
		-0.044733, -0.998945, 0.010362,
		21.413506, 18.311363, 13.184758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.201572, 18.879494, 13.875687>,  <21.444818, 19.010624, 13.177505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.201572, 18.879494, 13.875687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.364285, 18.540596, 13.739038>,  <21.461912, 18.337257, 13.657048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.364285, 18.540596, 13.739038>,  <21.201572, 18.879494, 13.875687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.364285, 18.540596, 13.739038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395314, -0.173877, 0.901939,
		-0.823564, -0.501937, 0.264199,
		0.406778, -0.847246, -0.341622,
		21.486319, 18.286423, 13.636551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.922241, 18.368101, 14.330787>,  <21.201572, 18.879494, 13.875687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.922241, 18.368101, 14.330787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.269512, 18.271942, 14.157132>,  <21.477875, 18.214247, 14.052939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.269512, 18.271942, 14.157132>,  <20.922241, 18.368101, 14.330787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.269512, 18.271942, 14.157132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377796, -0.247061, 0.892318,
		-0.321770, -0.938706, -0.123671,
		0.868179, -0.240399, -0.434136,
		21.529966, 18.199823, 14.026892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.222918, 17.832724, 14.693084>,  <20.922241, 18.368101, 14.330787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.222918, 17.832724, 14.693084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.538395, 17.974602, 14.492225>,  <21.727682, 18.059729, 14.371710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.538395, 17.974602, 14.492225>,  <21.222918, 17.832724, 14.693084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.538395, 17.974602, 14.492225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533036, 0.012445, 0.846001,
		0.306323, -0.934899, -0.179251,
		0.788695, 0.354696, -0.502147,
		21.775003, 18.081011, 14.341580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.794964, 17.471025, 14.996992>,  <21.222918, 17.832724, 14.693084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.794964, 17.471025, 14.996992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.968353, 17.780106, 14.811505>,  <22.072388, 17.965553, 14.700213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.968353, 17.780106, 14.811505>,  <21.794964, 17.471025, 14.996992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.968353, 17.780106, 14.811505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647132, 0.091204, 0.756903,
		0.627152, -0.628185, -0.460505,
		0.433475, 0.772700, -0.463717,
		22.098396, 18.011915, 14.672390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.572029, 17.340992, 15.007092>,  <21.794964, 17.471025, 14.996992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.572029, 17.340992, 15.007092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.509373, 17.730480, 14.940959>,  <22.471779, 17.964172, 14.901279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.509373, 17.730480, 14.940959>,  <22.572029, 17.340992, 15.007092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.509373, 17.730480, 14.940959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518345, 0.223539, 0.825439,
		0.840704, 0.043597, -0.539737,
		-0.156639, 0.973720, -0.165332,
		22.462381, 18.022596, 14.891359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.192097, 17.607599, 15.095672>,  <22.572029, 17.340992, 15.007092>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.192097, 17.607599, 15.095672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.925812, 17.903881, 15.131852>,  <22.766041, 18.081650, 15.153561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.925812, 17.903881, 15.131852>,  <23.192097, 17.607599, 15.095672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.925812, 17.903881, 15.131852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551349, 0.406568, 0.728503,
		0.502831, 0.534845, -0.679045,
		-0.665714, 0.740704, 0.090451,
		22.726097, 18.126093, 15.158988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.603418, 18.175192, 15.175964>,  <23.192097, 17.607599, 15.095672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.603418, 18.175192, 15.175964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.244205, 18.242611, 15.338508>,  <23.028677, 18.283062, 15.436033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.244205, 18.242611, 15.338508>,  <23.603418, 18.175192, 15.175964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.244205, 18.242611, 15.338508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428433, 0.125310, 0.894842,
		0.099903, 0.977696, -0.184744,
		-0.898034, 0.168548, 0.406359,
		22.974796, 18.293175, 15.460415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.796635, 18.634687, 15.710280>,  <23.603418, 18.175192, 15.175964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.796635, 18.634687, 15.710280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.414570, 18.554237, 15.797193>,  <23.185331, 18.505966, 15.849340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.414570, 18.554237, 15.797193>,  <23.796635, 18.634687, 15.710280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.414570, 18.554237, 15.797193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127353, 0.383417, 0.914753,
		-0.267291, 0.901410, -0.340612,
		-0.955163, -0.201127, 0.217281,
		23.128021, 18.493898, 15.862377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.513750, 19.175331, 16.246677>,  <23.796635, 18.634687, 15.710280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.513750, 19.175331, 16.246677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.267292, 18.865372, 16.303099>,  <23.119417, 18.679396, 16.336950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.267292, 18.865372, 16.303099>,  <23.513750, 19.175331, 16.246677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.267292, 18.865372, 16.303099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137416, 0.070577, 0.987996,
		-0.775552, 0.628132, 0.062998,
		-0.616146, -0.774899, 0.141051,
		23.082449, 18.632902, 16.345413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.863718, 19.364977, 16.673616>,  <23.513750, 19.175331, 16.246677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.863718, 19.364977, 16.673616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.937969, 18.973789, 16.711807>,  <22.982519, 18.739077, 16.734722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.937969, 18.973789, 16.711807>,  <22.863718, 19.364977, 16.673616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.937969, 18.973789, 16.711807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027872, 0.091886, 0.995379,
		-0.982225, -0.187430, -0.010202,
		0.185626, -0.977971, 0.095477,
		22.993658, 18.680397, 16.740450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.333817, 19.077282, 16.970097>,  <22.863718, 19.364977, 16.673616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.333817, 19.077282, 16.970097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.569233, 18.768440, 17.065994>,  <22.710484, 18.583136, 17.123533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.569233, 18.768440, 17.065994>,  <22.333817, 19.077282, 16.970097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.569233, 18.768440, 17.065994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180554, 0.163524, 0.969877,
		-0.788048, -0.614098, -0.043166,
		0.588541, -0.772103, 0.239742,
		22.745796, 18.536810, 17.137917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.026306, 18.668251, 17.608131>,  <22.333817, 19.077282, 16.970097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.026306, 18.668251, 17.608131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.419888, 18.599400, 17.589327>,  <22.656036, 18.558088, 17.578045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.419888, 18.599400, 17.589327>,  <22.026306, 18.668251, 17.608131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.419888, 18.599400, 17.589327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091742, 0.262053, 0.960683,
		-0.153041, -0.949579, 0.273639,
		0.983952, -0.172128, -0.047011,
		22.715073, 18.547762, 17.575224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.276924, 18.203447, 18.103834>,  <22.026306, 18.668251, 17.608131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.276924, 18.203447, 18.103834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.601353, 18.422760, 18.022297>,  <22.796009, 18.554348, 17.973375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.601353, 18.422760, 18.022297>,  <22.276924, 18.203447, 18.103834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.601353, 18.422760, 18.022297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098486, 0.215510, 0.971522,
		0.576596, -0.808050, 0.120796,
		0.811071, 0.548280, -0.203844,
		22.844675, 18.587244, 17.961143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.363260, 17.444275, 18.316393>,  <22.276924, 18.203447, 18.103834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.363260, 17.444275, 18.316393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.023457, 17.318714, 18.486002>,  <21.819574, 17.243378, 18.587769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.023457, 17.318714, 18.486002>,  <22.363260, 17.444275, 18.316393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.023457, 17.318714, 18.486002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309716, -0.353918, -0.882506,
		0.427092, -0.881026, 0.203436,
		-0.849511, -0.313904, 0.424024,
		21.768604, 17.224543, 18.613209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.140989, 17.010042, 17.868063>,  <22.363260, 17.444275, 18.316393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.140989, 17.010042, 17.868063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.808537, 17.018433, 18.090334>,  <21.609064, 17.023466, 18.223696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.808537, 17.018433, 18.090334>,  <22.140989, 17.010042, 17.868063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.808537, 17.018433, 18.090334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553696, -0.123516, -0.823508,
		0.051362, -0.992121, 0.114272,
		-0.831134, 0.020975, 0.555677,
		21.559196, 17.024725, 18.257036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.814512, 16.426380, 17.715796>,  <22.140989, 17.010042, 17.868063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.814512, 16.426380, 17.715796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.552448, 16.708023, 17.825336>,  <21.395210, 16.877010, 17.891062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.552448, 16.708023, 17.825336>,  <21.814512, 16.426380, 17.715796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.552448, 16.708023, 17.825336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435569, -0.055859, -0.898421,
		-0.617290, -0.707890, 0.343285,
		-0.655159, 0.704110, 0.273854,
		21.355900, 16.919256, 17.907492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.163876, 16.132032, 17.434271>,  <21.814512, 16.426380, 17.715796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.163876, 16.132032, 17.434271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.098362, 16.518307, 17.514898>,  <21.059053, 16.750071, 17.563274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.098362, 16.518307, 17.514898>,  <21.163876, 16.132032, 17.434271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.098362, 16.518307, 17.514898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482904, 0.099688, -0.869980,
		-0.860220, -0.239828, 0.450005,
		-0.163785, 0.965684, 0.201568,
		21.049227, 16.808012, 17.575369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.415136, 16.269083, 17.436996>,  <21.163876, 16.132032, 17.434271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.415136, 16.269083, 17.436996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.618130, 16.600163, 17.341181>,  <20.739925, 16.798809, 17.283691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.618130, 16.600163, 17.341181>,  <20.415136, 16.269083, 17.436996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.618130, 16.600163, 17.341181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554831, 0.101197, -0.825785,
		-0.659259, 0.551977, 0.510587,
		0.507484, 0.827696, -0.239539,
		20.770374, 16.848471, 17.269320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.848934, 16.747053, 17.298874>,  <20.415136, 16.269083, 17.436996>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.848934, 16.747053, 17.298874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.179535, 16.913692, 17.147434>,  <20.377895, 17.013676, 17.056570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.179535, 16.913692, 17.147434>,  <19.848934, 16.747053, 17.298874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.179535, 16.913692, 17.147434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482883, 0.178998, -0.857195,
		-0.289337, 0.891295, 0.349111,
		0.826504, 0.416598, -0.378600,
		20.427486, 17.038671, 17.033854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.673166, 17.432896, 17.020693>,  <19.848934, 16.747053, 17.298874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.673166, 17.432896, 17.020693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.016029, 17.354641, 16.830112>,  <20.221746, 17.307688, 16.715763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.016029, 17.354641, 16.830112>,  <19.673166, 17.432896, 17.020693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.016029, 17.354641, 16.830112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464803, 0.104717, -0.879200,
		0.221895, 0.975070, -0.001173,
		0.857158, -0.195635, -0.476452,
		20.273176, 17.295950, 16.687178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.763241, 17.954378, 16.496988>,  <19.673166, 17.432896, 17.020693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.763241, 17.954378, 16.496988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.006554, 17.657120, 16.385468>,  <20.152540, 17.478765, 16.318556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.006554, 17.657120, 16.385468>,  <19.763241, 17.954378, 16.496988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.006554, 17.657120, 16.385468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348224, 0.065788, -0.935100,
		0.713257, 0.665888, -0.218763,
		0.608280, -0.743145, -0.278802,
		20.189037, 17.434175, 16.301826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.106310, 18.194782, 15.815111>,  <19.763241, 17.954378, 16.496988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.106310, 18.194782, 15.815111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.127880, 17.796246, 15.841643>,  <20.140821, 17.557123, 15.857562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.127880, 17.796246, 15.841643>,  <20.106310, 18.194782, 15.815111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.127880, 17.796246, 15.841643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367501, -0.081567, -0.926439,
		0.928458, 0.025583, -0.370554,
		0.053926, -0.996339, 0.066330,
		20.144058, 17.497343, 15.861543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.318378, 17.970436, 15.170940>,  <20.106310, 18.194782, 15.815111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.318378, 17.970436, 15.170940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.163597, 17.637074, 15.328778>,  <20.070728, 17.437056, 15.423481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.163597, 17.637074, 15.328778>,  <20.318378, 17.970436, 15.170940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.163597, 17.637074, 15.328778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301833, -0.289877, -0.908223,
		0.871301, -0.470541, -0.139380,
		-0.386953, -0.833404, 0.394595,
		20.047512, 17.387053, 15.447157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.478453, 17.599794, 14.569961>,  <20.318378, 17.970436, 15.170940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.478453, 17.599794, 14.569961> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.207085, 17.401817, 14.787135>,  <20.044264, 17.283031, 14.917439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.207085, 17.401817, 14.787135>,  <20.478453, 17.599794, 14.569961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.207085, 17.401817, 14.787135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514162, -0.208009, -0.832087,
		0.524770, -0.843662, -0.113363,
		-0.678420, -0.494942, 0.542936,
		20.003559, 17.253334, 14.950016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.352655, 17.011147, 14.236600>,  <20.478453, 17.599794, 14.569961>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.352655, 17.011147, 14.236600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.028240, 17.022892, 14.470304>,  <19.833591, 17.029940, 14.610525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.028240, 17.022892, 14.470304>,  <20.352655, 17.011147, 14.236600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.028240, 17.022892, 14.470304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567775, -0.280056, -0.774080,
		0.140897, -0.959534, 0.243807,
		-0.811036, 0.029362, 0.584258,
		19.784929, 17.031700, 14.645581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.013817, 16.391531, 14.009395>,  <20.352655, 17.011147, 14.236600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.013817, 16.391531, 14.009395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.758625, 16.656460, 14.166522>,  <19.605509, 16.815418, 14.260798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.758625, 16.656460, 14.166522>,  <20.013817, 16.391531, 14.009395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.758625, 16.656460, 14.166522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584562, -0.084489, -0.806938,
		-0.501266, -0.744438, 0.441071,
		-0.637981, 0.662324, 0.392819,
		19.567230, 16.855158, 14.284368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.391607, 16.109131, 14.115322>,  <20.013817, 16.391531, 14.009395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.391607, 16.109131, 14.115322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.315487, 16.491505, 14.025899>,  <19.269814, 16.720928, 13.972245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.315487, 16.491505, 14.025899>,  <19.391607, 16.109131, 14.115322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.315487, 16.491505, 14.025899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779131, -0.285606, -0.558018,
		-0.597277, 0.067989, 0.799148,
		-0.190302, 0.955932, -0.223558,
		19.258396, 16.778284, 13.958832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<18.094746, 18.933451, 18.581835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.419872, 19.151657, 18.500109>,  <18.614948, 19.282581, 18.451073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.419872, 19.151657, 18.500109>,  <18.094746, 18.933451, 18.581835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.419872, 19.151657, 18.500109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304215, -0.098406, 0.947507,
		0.496775, -0.832303, -0.245940,
		0.812815, 0.545516, -0.204313,
		18.663717, 19.315311, 18.438814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.580631, 18.510000, 18.837772>,  <18.094746, 18.933451, 18.581835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.580631, 18.510000, 18.837772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.716885, 18.885769, 18.822489>,  <18.798637, 19.111229, 18.813318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.716885, 18.885769, 18.822489>,  <18.580631, 18.510000, 18.837772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.716885, 18.885769, 18.822489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408331, -0.111210, 0.906034,
		0.846897, -0.324228, -0.421476,
		0.340634, 0.939419, -0.038209,
		18.819075, 19.167595, 18.811026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.195488, 18.480988, 19.227417>,  <18.580631, 18.510000, 18.837772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.195488, 18.480988, 19.227417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.163242, 18.877434, 19.185110>,  <19.143894, 19.115301, 19.159725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.163242, 18.877434, 19.185110>,  <19.195488, 18.480988, 19.227417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.163242, 18.877434, 19.185110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529083, 0.132479, 0.838165,
		0.844732, 0.011610, -0.535063,
		-0.080616, 0.991118, -0.105766,
		19.139057, 19.174768, 19.153379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.825588, 18.792601, 19.493366>,  <19.195488, 18.480988, 19.227417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.825588, 18.792601, 19.493366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.557583, 19.089401, 19.502439>,  <19.396780, 19.267483, 19.507883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.557583, 19.089401, 19.502439>,  <19.825588, 18.792601, 19.493366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.557583, 19.089401, 19.502439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407324, 0.341918, 0.846865,
		0.620621, 0.576649, -0.531325,
		-0.670013, 0.742003, 0.022681,
		19.356579, 19.312002, 19.509243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.195274, 19.446054, 19.756523>,  <19.825588, 18.792601, 19.493366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.195274, 19.446054, 19.756523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.814106, 19.559429, 19.799614>,  <19.585405, 19.627455, 19.825468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.814106, 19.559429, 19.799614>,  <20.195274, 19.446054, 19.756523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.814106, 19.559429, 19.799614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220530, 0.404006, 0.887776,
		0.208107, 0.869737, -0.447492,
		-0.952921, 0.283438, 0.107727,
		19.528231, 19.644461, 19.831932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.179380, 20.170300, 20.061729>,  <20.195274, 19.446054, 19.756523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.179380, 20.170300, 20.061729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.846668, 19.969334, 20.156149>,  <19.647041, 19.848753, 20.212801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.846668, 19.969334, 20.156149>,  <20.179380, 20.170300, 20.061729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.846668, 19.969334, 20.156149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007803, 0.414609, 0.909966,
		-0.555049, 0.758734, -0.340944,
		-0.831781, -0.502416, 0.236049,
		19.597134, 19.818609, 20.226963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.957684, 20.497961, 20.600349>,  <20.179380, 20.170300, 20.061729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.957684, 20.497961, 20.600349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.716946, 20.179180, 20.620926>,  <19.572502, 19.987911, 20.633272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.716946, 20.179180, 20.620926>,  <19.957684, 20.497961, 20.600349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.716946, 20.179180, 20.620926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125617, 0.158080, 0.979403,
		-0.788671, 0.582988, -0.195250,
		-0.601846, -0.796954, 0.051440,
		19.536392, 19.940094, 20.636358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.320969, 20.731646, 20.906635>,  <19.957684, 20.497961, 20.600349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.320969, 20.731646, 20.906635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.369946, 20.339188, 20.966457>,  <19.399332, 20.103714, 21.002350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.369946, 20.339188, 20.966457>,  <19.320969, 20.731646, 20.906635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.369946, 20.339188, 20.966457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089356, 0.139177, 0.986228,
		-0.988445, -0.134120, -0.070629,
		0.122443, -0.981143, 0.149554,
		19.406679, 20.044846, 21.011324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.864693, 20.509182, 21.529732>,  <19.320969, 20.731646, 20.906635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.864693, 20.509182, 21.529732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.141323, 20.226601, 21.469538>,  <19.307301, 20.057053, 21.433422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.141323, 20.226601, 21.469538>,  <18.864693, 20.509182, 21.529732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.141323, 20.226601, 21.469538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187099, -0.026020, 0.981996,
		-0.697651, -0.707281, 0.114182,
		0.691576, -0.706454, -0.150485,
		19.348797, 20.014664, 21.424393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.817707, 20.093449, 22.098444>,  <18.864693, 20.509182, 21.529732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.817707, 20.093449, 22.098444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.177418, 19.992775, 21.955359>,  <19.393244, 19.932371, 21.869507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.177418, 19.992775, 21.955359>,  <18.817707, 20.093449, 22.098444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.177418, 19.992775, 21.955359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284532, -0.284508, 0.915476,
		-0.332184, -0.925046, -0.184239,
		0.899275, -0.251685, -0.357714,
		19.447201, 19.917271, 21.848045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.032000, 19.412796, 22.341625>,  <18.817707, 20.093449, 22.098444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.032000, 19.412796, 22.341625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.360497, 19.630558, 22.273289>,  <19.557594, 19.761215, 22.232286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.360497, 19.630558, 22.273289>,  <19.032000, 19.412796, 22.341625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.360497, 19.630558, 22.273289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278365, -0.120908, 0.952835,
		0.498070, -0.830064, -0.250838,
		0.821242, 0.544403, -0.170840,
		19.606869, 19.793879, 22.222036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.593287, 19.071699, 22.752493>,  <19.032000, 19.412796, 22.341625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.593287, 19.071699, 22.752493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.693077, 19.448715, 22.663607>,  <19.752951, 19.674925, 22.610275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.693077, 19.448715, 22.663607>,  <19.593287, 19.071699, 22.752493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.693077, 19.448715, 22.663607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374860, 0.117584, 0.919595,
		0.892884, -0.312716, -0.323986,
		0.249477, 0.942540, -0.222214,
		19.767920, 19.731478, 22.596943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.235176, 19.239456, 22.997818>,  <19.593287, 19.071699, 22.752493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.235176, 19.239456, 22.997818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.036018, 19.586292, 22.991430>,  <19.916525, 19.794394, 22.987597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.036018, 19.586292, 22.991430>,  <20.235176, 19.239456, 22.997818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.036018, 19.586292, 22.991430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193717, 0.129147, 0.972520,
		0.845326, 0.481117, -0.232272,
		-0.497893, 0.867091, -0.015970,
		19.886650, 19.846420, 22.986639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.671148, 19.743782, 23.126221>,  <20.235176, 19.239456, 22.997818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.671148, 19.743782, 23.126221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.315033, 19.855804, 23.269863>,  <20.101364, 19.923018, 23.356049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.315033, 19.855804, 23.269863>,  <20.671148, 19.743782, 23.126221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.315033, 19.855804, 23.269863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427108, 0.239894, 0.871797,
		0.158004, 0.929527, -0.333189,
		-0.890289, 0.280055, 0.359104,
		20.047947, 19.939821, 23.377594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.054531, 19.395271, 23.600706>,  <20.671148, 19.743782, 23.126221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.054531, 19.395271, 23.600706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.388783, 19.278706, 23.786953>,  <21.589334, 19.208767, 23.898701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.388783, 19.278706, 23.786953>,  <21.054531, 19.395271, 23.600706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.388783, 19.278706, 23.786953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375240, -0.316199, -0.871328,
		0.401144, 0.902827, -0.154876,
		0.835631, -0.291412, 0.465618,
		21.639471, 19.191282, 23.926638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.639866, 19.624821, 23.216406>,  <21.054531, 19.395271, 23.600706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.639866, 19.624821, 23.216406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.785580, 19.319397, 23.429676>,  <21.873007, 19.136143, 23.557638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.785580, 19.319397, 23.429676>,  <21.639866, 19.624821, 23.216406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.785580, 19.319397, 23.429676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372195, -0.405437, -0.834920,
		0.853680, 0.502592, 0.136499,
		0.364282, -0.763559, 0.533176,
		21.894865, 19.090330, 23.589628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.388977, 19.529228, 23.118786>,  <21.639866, 19.624821, 23.216406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.388977, 19.529228, 23.118786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.222523, 19.183784, 23.232635>,  <22.122650, 18.976519, 23.300945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.222523, 19.183784, 23.232635>,  <22.388977, 19.529228, 23.118786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.222523, 19.183784, 23.232635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387237, -0.451524, -0.803850,
		0.822726, -0.224294, 0.522316,
		-0.416137, -0.863608, 0.284625,
		22.097681, 18.924702, 23.318024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.930014, 18.972380, 22.882139>,  <22.388977, 19.529228, 23.118786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.930014, 18.972380, 22.882139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.614033, 18.740459, 22.961945>,  <22.424444, 18.601307, 23.009829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.614033, 18.740459, 22.961945>,  <22.930014, 18.972380, 22.882139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.614033, 18.740459, 22.961945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217452, -0.569138, -0.792967,
		0.573314, -0.583022, 0.575670,
		-0.789953, -0.579799, 0.199515,
		22.377047, 18.566519, 23.021799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.205343, 18.309460, 22.826548>,  <22.930014, 18.972380, 22.882139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.205343, 18.309460, 22.826548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.808998, 18.289227, 22.776531>,  <22.571192, 18.277086, 22.746521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.808998, 18.289227, 22.776531>,  <23.205343, 18.309460, 22.826548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.808998, 18.289227, 22.776531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133853, -0.483126, -0.865259,
		-0.016640, -0.874088, 0.485482,
		-0.990862, -0.050586, -0.125039,
		22.511740, 18.274052, 22.739019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.095833, 17.697807, 22.384119>,  <23.205343, 18.309460, 22.826548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.095833, 17.697807, 22.384119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.724968, 17.845150, 22.356760>,  <22.502449, 17.933556, 22.340345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.724968, 17.845150, 22.356760>,  <23.095833, 17.697807, 22.384119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.724968, 17.845150, 22.356760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050188, -0.303032, -0.951658,
		-0.371276, -0.878912, 0.299447,
		-0.927165, 0.368356, -0.068398,
		22.446819, 17.955658, 22.336241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.782534, 17.223125, 21.924604>,  <23.095833, 17.697807, 22.384119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.782534, 17.223125, 21.924604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.531761, 17.534672, 21.917387>,  <22.381298, 17.721600, 21.913055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.531761, 17.534672, 21.917387>,  <22.782534, 17.223125, 21.924604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.531761, 17.534672, 21.917387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309391, -0.270161, -0.911752,
		-0.715008, -0.566021, 0.410346,
		-0.626930, 0.778867, -0.018045,
		22.343681, 17.768332, 21.911974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.046387, 16.929413, 21.700272>,  <22.782534, 17.223125, 21.924604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.046387, 16.929413, 21.700272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.066502, 17.320000, 21.616379>,  <22.078571, 17.554352, 21.566044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.066502, 17.320000, 21.616379>,  <22.046387, 16.929413, 21.700272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.066502, 17.320000, 21.616379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254033, -0.190585, -0.948232,
		-0.965887, 0.100963, 0.238470,
		0.050288, 0.976465, -0.209731,
		22.081589, 17.612940, 21.553459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.457951, 17.152725, 21.490011>,  <22.046387, 16.929413, 21.700272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.457951, 17.152725, 21.490011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.712818, 17.409008, 21.318657>,  <21.865738, 17.562777, 21.215845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.712818, 17.409008, 21.318657>,  <21.457951, 17.152725, 21.490011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.712818, 17.409008, 21.318657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450475, -0.141406, -0.881519,
		-0.625370, 0.754653, 0.198522,
		0.637169, 0.640705, -0.428384,
		21.903969, 17.601219, 21.190142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.008547, 17.371960, 20.927221>,  <21.457951, 17.152725, 21.490011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.008547, 17.371960, 20.927221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.377300, 17.489399, 20.826088>,  <21.598553, 17.559862, 20.765408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.377300, 17.489399, 20.826088>,  <21.008547, 17.371960, 20.927221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.377300, 17.489399, 20.826088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231751, -0.105122, -0.967078,
		-0.310513, 0.950131, -0.028868,
		0.921886, 0.293600, -0.252835,
		21.653866, 17.577478, 20.750237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.936148, 17.737934, 20.416441>,  <21.008547, 17.371960, 20.927221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.936148, 17.737934, 20.416441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.322712, 17.653553, 20.357727>,  <21.554651, 17.602924, 20.322498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.322712, 17.653553, 20.357727>,  <20.936148, 17.737934, 20.416441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.322712, 17.653553, 20.357727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199200, -0.253994, -0.946470,
		0.162375, 0.943921, -0.287485,
		0.966413, -0.210951, -0.146787,
		21.612637, 17.590267, 20.313690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.200838, 18.174623, 19.878244>,  <20.936148, 17.737934, 20.416441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.200838, 18.174623, 19.878244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.437782, 17.852936, 19.897591>,  <21.579948, 17.659924, 19.909199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.437782, 17.852936, 19.897591>,  <21.200838, 18.174623, 19.878244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.437782, 17.852936, 19.897591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121430, -0.148463, -0.981434,
		0.796470, 0.575490, -0.185600,
		0.592360, -0.804220, 0.048365,
		21.615490, 17.611670, 19.912100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.675123, 18.268425, 19.384598>,  <21.200838, 18.174623, 19.878244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.675123, 18.268425, 19.384598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.667130, 17.871254, 19.431402>,  <21.662333, 17.632952, 19.459486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.667130, 17.871254, 19.431402>,  <21.675123, 18.268425, 19.384598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.667130, 17.871254, 19.431402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084414, -0.114942, -0.989779,
		0.996230, -0.029657, -0.081520,
		-0.019983, -0.992929, 0.117012,
		21.661135, 17.573376, 19.466505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.015106, 18.068386, 18.778265>,  <21.675123, 18.268425, 19.384598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.015106, 18.068386, 18.778265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.830322, 17.751724, 18.938204>,  <21.719452, 17.561728, 19.034166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.830322, 17.751724, 18.938204>,  <22.015106, 18.068386, 18.778265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.830322, 17.751724, 18.938204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248144, -0.317459, -0.915229,
		0.851480, -0.522018, -0.049791,
		-0.461959, -0.791655, 0.399846,
		21.691734, 17.514229, 19.058157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.840889, 18.168322, 18.860357>,  <22.015106, 18.068386, 18.778265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.840889, 18.168322, 18.860357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.970081, 18.465885, 18.626337>,  <23.047598, 18.644423, 18.485926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.970081, 18.465885, 18.626337>,  <22.840889, 18.168322, 18.860357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.970081, 18.465885, 18.626337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102292, 0.587120, 0.803011,
		0.940861, -0.319205, 0.113533,
		0.322982, 0.743908, -0.585050,
		23.066977, 18.689058, 18.450823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.394709, 18.331532, 19.251539>,  <22.840889, 18.168322, 18.860357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.394709, 18.331532, 19.251539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.326729, 18.648052, 19.016605>,  <23.285942, 18.837965, 18.875645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.326729, 18.648052, 19.016605>,  <23.394709, 18.331532, 19.251539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.326729, 18.648052, 19.016605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157424, 0.610152, 0.776488,
		0.972798, 0.039501, -0.228263,
		-0.169947, 0.791299, -0.587336,
		23.275745, 18.885443, 18.840405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.892315, 18.799191, 19.405836>,  <23.394709, 18.331532, 19.251539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.892315, 18.799191, 19.405836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.601303, 19.030445, 19.258074>,  <23.426695, 19.169197, 19.169416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.601303, 19.030445, 19.258074>,  <23.892315, 18.799191, 19.405836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.601303, 19.030445, 19.258074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126403, 0.642165, 0.756073,
		0.674330, 0.503373, -0.540272,
		-0.727531, 0.578135, -0.369404,
		23.383043, 19.203886, 19.147253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.090225, 19.425491, 19.433477>,  <23.892315, 18.799191, 19.405836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.090225, 19.425491, 19.433477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.696323, 19.493843, 19.420462>,  <23.459982, 19.534855, 19.412653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.696323, 19.493843, 19.420462>,  <24.090225, 19.425491, 19.433477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.696323, 19.493843, 19.420462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065706, 0.538611, 0.839988,
		0.161062, 0.825044, -0.541628,
		-0.984755, 0.170879, -0.032540,
		23.400898, 19.545107, 19.410700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.014357, 20.192007, 19.621307>,  <24.090225, 19.425491, 19.433477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.014357, 20.192007, 19.621307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.662125, 20.011784, 19.680061>,  <23.450785, 19.903650, 19.715315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.662125, 20.011784, 19.680061>,  <24.014357, 20.192007, 19.621307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.662125, 20.011784, 19.680061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077682, 0.442999, 0.893150,
		-0.467486, 0.775080, -0.425097,
		-0.880581, -0.450558, 0.146886,
		23.397951, 19.876616, 19.724127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.628328, 20.788307, 19.868240>,  <24.014357, 20.192007, 19.621307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.628328, 20.788307, 19.868240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.440300, 20.459316, 19.996346>,  <23.327482, 20.261923, 20.073208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.440300, 20.459316, 19.996346>,  <23.628328, 20.788307, 19.868240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.440300, 20.459316, 19.996346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116969, 0.417701, 0.901024,
		-0.874844, 0.386084, -0.292553,
		-0.470070, -0.822475, 0.320263,
		23.299278, 20.212574, 20.092424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.999605, 21.059370, 20.190382>,  <23.628328, 20.788307, 19.868240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.999605, 21.059370, 20.190382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.059868, 20.696404, 20.347301>,  <23.096025, 20.478624, 20.441452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.059868, 20.696404, 20.347301>,  <22.999605, 21.059370, 20.190382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.059868, 20.696404, 20.347301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170155, 0.367103, 0.914485,
		-0.973833, -0.204524, -0.099095,
		0.150656, -0.907417, 0.392297,
		23.105064, 20.424179, 20.464991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.412119, 21.350424, 20.156572>,  <22.999605, 21.059370, 20.190382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.412119, 21.350424, 20.156572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.616699, 21.684971, 20.077669>,  <22.739447, 21.885698, 20.030327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.616699, 21.684971, 20.077669>,  <22.412119, 21.350424, 20.156572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.616699, 21.684971, 20.077669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062013, -0.193033, -0.979231,
		-0.857073, 0.513060, -0.046860,
		0.511449, 0.836366, -0.197259,
		22.770134, 21.935881, 20.018492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.114365, 21.616014, 19.616777>,  <22.412119, 21.350424, 20.156572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.114365, 21.616014, 19.616777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.471798, 21.795490, 19.622265>,  <22.686258, 21.903175, 19.625557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.471798, 21.795490, 19.622265>,  <22.114365, 21.616014, 19.616777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.471798, 21.795490, 19.622265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065360, -0.099809, -0.992858,
		-0.444116, 0.888097, -0.118513,
		0.893582, 0.448690, 0.013719,
		22.739872, 21.930098, 19.626381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.993084, 22.131660, 19.166706>,  <22.114365, 21.616014, 19.616777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.993084, 22.131660, 19.166706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.379204, 22.035587, 19.207712>,  <22.610876, 21.977943, 19.232315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.379204, 22.035587, 19.207712>,  <21.993084, 22.131660, 19.166706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.379204, 22.035587, 19.207712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025202, -0.305049, -0.952003,
		0.259927, 0.921552, -0.288410,
		0.965299, -0.240183, 0.102515,
		22.668793, 21.963531, 19.238466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.297140, 22.497374, 18.682699>,  <21.993084, 22.131660, 19.166706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.297140, 22.497374, 18.682699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.562607, 22.210831, 18.768841>,  <22.721888, 22.038906, 18.820526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.562607, 22.210831, 18.768841>,  <22.297140, 22.497374, 18.682699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.562607, 22.210831, 18.768841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080050, -0.218231, -0.972609,
		0.743731, 0.662729, -0.087489,
		0.663669, -0.716355, 0.215356,
		22.761707, 21.995924, 18.833448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.835773, 22.583544, 18.144489>,  <22.297140, 22.497374, 18.682699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.835773, 22.583544, 18.144489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.886414, 22.224442, 18.313251>,  <22.916798, 22.008980, 18.414509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.886414, 22.224442, 18.313251>,  <22.835773, 22.583544, 18.144489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.886414, 22.224442, 18.313251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149942, -0.403119, -0.902780,
		0.980556, 0.177555, 0.083576,
		0.126602, -0.897758, 0.421904,
		22.924395, 21.955114, 18.439823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.461428, 22.406294, 18.041712>,  <22.835773, 22.583544, 18.144489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.461428, 22.406294, 18.041712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.250881, 22.068481, 18.081127>,  <23.124554, 21.865795, 18.104776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.250881, 22.068481, 18.081127>,  <23.461428, 22.406294, 18.041712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.250881, 22.068481, 18.081127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170385, -0.218311, -0.960890,
		0.833013, -0.488988, 0.258807,
		-0.526364, -0.844530, 0.098540,
		23.092972, 21.815123, 18.110689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.795229, 21.919399, 17.647736>,  <23.461428, 22.406294, 18.041712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.795229, 21.919399, 17.647736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.423950, 21.774025, 17.679651>,  <23.201183, 21.686800, 17.698801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.423950, 21.774025, 17.679651>,  <23.795229, 21.919399, 17.647736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.423950, 21.774025, 17.679651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029614, -0.285914, -0.957798,
		0.370911, -0.886661, 0.276147,
		-0.928196, -0.363435, 0.079791,
		23.145491, 21.664995, 17.703588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<20.147215, 23.115282, 21.656853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.046261, 22.743084, 21.763046>,  <19.985689, 22.519766, 21.826761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.046261, 22.743084, 21.763046>,  <20.147215, 23.115282, 21.656853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.046261, 22.743084, 21.763046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167595, -0.228181, -0.959086,
		0.953003, -0.286551, -0.098357,
		-0.252384, -0.930495, 0.265481,
		19.970545, 22.463936, 21.842691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.531834, 22.679129, 21.260973>,  <20.147215, 23.115282, 21.656853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.531834, 22.679129, 21.260973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.214424, 22.459667, 21.366272>,  <20.023979, 22.327990, 21.429451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.214424, 22.459667, 21.366272>,  <20.531834, 22.679129, 21.260973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.214424, 22.459667, 21.366272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229843, -0.130327, -0.964462,
		0.563466, -0.825828, -0.022688,
		-0.793523, -0.548656, 0.263246,
		19.976368, 22.295071, 21.445246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.484646, 22.168341, 20.856323>,  <20.531834, 22.679129, 21.260973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.484646, 22.168341, 20.856323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.105625, 22.143070, 20.981640>,  <19.878212, 22.127909, 21.056829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.105625, 22.143070, 20.981640>,  <20.484646, 22.168341, 20.856323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.105625, 22.143070, 20.981640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312890, -0.016421, -0.949648,
		0.065139, -0.997867, -0.004207,
		-0.947553, -0.063175, 0.313292,
		19.821360, 22.124117, 21.075628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.173668, 21.550081, 20.497248>,  <20.484646, 22.168341, 20.856323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.173668, 21.550081, 20.497248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.869133, 21.791306, 20.592480>,  <19.686411, 21.936039, 20.649618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.869133, 21.791306, 20.592480>,  <20.173668, 21.550081, 20.497248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.869133, 21.791306, 20.592480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398700, -0.145902, -0.905401,
		-0.511274, -0.784240, 0.351521,
		-0.761339, 0.603059, 0.238080,
		19.640732, 21.972223, 20.663904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.738943, 21.283689, 20.061623>,  <20.173668, 21.550081, 20.497248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.738943, 21.283689, 20.061623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.545570, 21.615391, 20.173788>,  <19.429546, 21.814411, 20.241087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.545570, 21.615391, 20.173788>,  <19.738943, 21.283689, 20.061623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.545570, 21.615391, 20.173788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359814, 0.103783, -0.927234,
		-0.798016, -0.549149, 0.248206,
		-0.483430, 0.829255, 0.280412,
		19.400541, 21.864168, 20.257912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.021828, 21.267689, 19.746027>,  <19.738943, 21.283689, 20.061623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.021828, 21.267689, 19.746027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.116295, 21.648663, 19.823065>,  <19.172976, 21.877247, 19.869287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.116295, 21.648663, 19.823065>,  <19.021828, 21.267689, 19.746027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.116295, 21.648663, 19.823065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166478, 0.234931, -0.957649,
		-0.957345, 0.194103, 0.214043,
		0.236168, 0.952434, 0.192596,
		19.187145, 21.934393, 19.880844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.518595, 21.663740, 19.456165>,  <19.021828, 21.267689, 19.746027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.518595, 21.663740, 19.456165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.804115, 21.942535, 19.483572>,  <18.975428, 22.109812, 19.500015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.804115, 21.942535, 19.483572>,  <18.518595, 21.663740, 19.456165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.804115, 21.942535, 19.483572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208808, 0.305182, -0.929120,
		-0.668495, 0.648901, 0.363376,
		0.713802, 0.696988, 0.068516,
		19.018255, 22.151632, 19.504128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.210329, 22.316664, 19.250038>,  <18.518595, 21.663740, 19.456165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.210329, 22.316664, 19.250038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.607540, 22.343281, 19.211117>,  <18.845867, 22.359251, 19.187763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.607540, 22.343281, 19.211117>,  <18.210329, 22.316664, 19.250038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.607540, 22.343281, 19.211117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115245, 0.374331, -0.920106,
		-0.024804, 0.924904, 0.379390,
		0.993027, 0.066545, -0.097306,
		18.905449, 22.363245, 19.181925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.411684, 22.948606, 19.168974>,  <18.210329, 22.316664, 19.250038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.411684, 22.948606, 19.168974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.721478, 22.762798, 18.997210>,  <18.907354, 22.651314, 18.894152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.721478, 22.762798, 18.997210>,  <18.411684, 22.948606, 19.168974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.721478, 22.762798, 18.997210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311559, 0.310676, -0.898004,
		0.550547, 0.829279, 0.095889,
		0.774486, -0.464518, -0.429411,
		18.953823, 22.623444, 18.868385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.569572, 23.368731, 18.605019>,  <18.411684, 22.948606, 19.168974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.569572, 23.368731, 18.605019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.769497, 23.034817, 18.512651>,  <18.889452, 22.834469, 18.457232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.769497, 23.034817, 18.512651>,  <18.569572, 23.368731, 18.605019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.769497, 23.034817, 18.512651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283380, 0.094327, -0.954358,
		0.818464, 0.542438, -0.189416,
		0.499813, -0.834783, -0.230919,
		18.919441, 22.784382, 18.443377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.897511, 23.517073, 17.922890>,  <18.569572, 23.368731, 18.605019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.897511, 23.517073, 17.922890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.883492, 23.117989, 17.946035>,  <18.875080, 22.878538, 17.959923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.883492, 23.117989, 17.946035>,  <18.897511, 23.517073, 17.922890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.883492, 23.117989, 17.946035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203220, -0.049574, -0.977877,
		0.978506, -0.046033, -0.201017,
		-0.035049, -0.997709, 0.057863,
		18.872976, 22.818676, 17.963394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.111691, 23.314484, 17.262442>,  <18.897511, 23.517073, 17.922890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.111691, 23.314484, 17.262442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.917923, 22.993626, 17.402098>,  <18.801662, 22.801111, 17.485891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.917923, 22.993626, 17.402098>,  <19.111691, 23.314484, 17.262442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.917923, 22.993626, 17.402098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214701, -0.277878, -0.936316,
		0.848081, -0.528530, -0.037612,
		-0.484419, -0.802147, 0.349139,
		18.772596, 22.752981, 17.506840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.919573, 23.238514, 17.140024>,  <19.111691, 23.314484, 17.262442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.919573, 23.238514, 17.140024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.067722, 23.604187, 17.074181>,  <20.156612, 23.823591, 17.034674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.067722, 23.604187, 17.074181>,  <19.919573, 23.238514, 17.140024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.067722, 23.604187, 17.074181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219117, 0.086224, 0.971881,
		0.902669, -0.396028, -0.168377,
		0.370374, 0.914181, -0.164608,
		20.178835, 23.878441, 17.024797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.520117, 23.186970, 17.414431>,  <19.919573, 23.238514, 17.140024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.520117, 23.186970, 17.414431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.405312, 23.570110, 17.409645>,  <20.336430, 23.799995, 17.406775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.405312, 23.570110, 17.409645>,  <20.520117, 23.186970, 17.414431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.405312, 23.570110, 17.409645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310465, 0.104829, 0.944787,
		0.906221, 0.267450, -0.327467,
		-0.287012, 0.957852, -0.011964,
		20.319208, 23.857466, 17.406055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.959848, 23.551010, 17.751831>,  <20.520117, 23.186970, 17.414431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.959848, 23.551010, 17.751831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.686356, 23.842113, 17.730385>,  <20.522259, 24.016775, 17.717518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.686356, 23.842113, 17.730385>,  <20.959848, 23.551010, 17.751831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.686356, 23.842113, 17.730385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335297, 0.378569, 0.862706,
		0.648139, 0.571884, -0.502856,
		-0.683734, 0.727759, -0.053614,
		20.481236, 24.060442, 17.714300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.245928, 24.164177, 18.007296>,  <20.959848, 23.551010, 17.751831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.245928, 24.164177, 18.007296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.854832, 24.236729, 18.049479>,  <20.620174, 24.280260, 18.074789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.854832, 24.236729, 18.049479>,  <21.245928, 24.164177, 18.007296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.854832, 24.236729, 18.049479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163261, 0.342013, 0.925404,
		0.131782, 0.922024, -0.364013,
		-0.977742, 0.181381, 0.105459,
		20.561508, 24.291143, 18.081116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.197878, 24.900103, 18.334297>,  <21.245928, 24.164177, 18.007296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.197878, 24.900103, 18.334297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.863647, 24.700932, 18.427145>,  <20.663109, 24.581429, 18.482853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.863647, 24.700932, 18.427145>,  <21.197878, 24.900103, 18.334297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.863647, 24.700932, 18.427145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108554, 0.264542, 0.958245,
		-0.538540, 0.825886, -0.166994,
		-0.835578, -0.497925, 0.232119,
		20.612974, 24.551554, 18.496780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.939583, 25.342476, 18.782948>,  <21.197878, 24.900103, 18.334297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.939583, 25.342476, 18.782948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.726158, 25.009369, 18.842020>,  <20.598103, 24.809505, 18.877464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.726158, 25.009369, 18.842020>,  <20.939583, 25.342476, 18.782948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.726158, 25.009369, 18.842020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052800, 0.207070, 0.976900,
		-0.844111, 0.513439, -0.154455,
		-0.533562, -0.832768, 0.147681,
		20.566090, 24.759539, 18.886324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.673914, 25.499062, 19.355986>,  <20.939583, 25.342476, 18.782948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.673914, 25.499062, 19.355986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.588192, 25.108425, 19.348600>,  <20.536758, 24.874043, 19.344170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.588192, 25.108425, 19.348600>,  <20.673914, 25.499062, 19.355986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.588192, 25.108425, 19.348600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064824, -0.004641, 0.997886,
		-0.974613, 0.215050, -0.062312,
		-0.214306, -0.976592, -0.018463,
		20.523901, 24.815447, 19.343061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.176424, 25.469824, 19.843136>,  <20.673914, 25.499062, 19.355986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.176424, 25.469824, 19.843136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.305504, 25.094746, 19.791618>,  <20.382952, 24.869698, 19.760708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.305504, 25.094746, 19.791618>,  <20.176424, 25.469824, 19.843136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.305504, 25.094746, 19.791618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134109, -0.180000, 0.974482,
		-0.936953, -0.297191, -0.183839,
		0.322699, -0.937698, -0.128796,
		20.402313, 24.813437, 19.752979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.635242, 24.935829, 20.002647>,  <20.176424, 25.469824, 19.843136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.635242, 24.935829, 20.002647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.997791, 24.771103, 20.040382>,  <20.215321, 24.672266, 20.063025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.997791, 24.771103, 20.040382>,  <19.635242, 24.935829, 20.002647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.997791, 24.771103, 20.040382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156748, -0.120427, 0.980269,
		-0.392331, -0.903274, -0.173703,
		0.906370, -0.411818, 0.094339,
		20.269703, 24.647558, 20.068684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.599337, 24.407854, 20.355053>,  <19.635242, 24.935829, 20.002647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.599337, 24.407854, 20.355053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.989910, 24.483150, 20.397268>,  <20.224255, 24.528328, 20.422598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.989910, 24.483150, 20.397268>,  <19.599337, 24.407854, 20.355053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.989910, 24.483150, 20.397268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084460, -0.116702, 0.989569,
		0.198596, -0.975164, -0.098053,
		0.976436, 0.188243, 0.105539,
		20.282841, 24.539623, 20.428930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.822651, 23.961275, 20.874535>,  <19.599337, 24.407854, 20.355053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.822651, 23.961275, 20.874535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.114651, 24.234272, 20.860065>,  <20.289850, 24.398069, 20.851385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.114651, 24.234272, 20.860065>,  <19.822651, 23.961275, 20.874535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.114651, 24.234272, 20.860065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029333, 0.084164, 0.996020,
		0.682819, -0.726032, 0.081459,
		0.729999, 0.682491, -0.036172,
		20.333651, 24.439018, 20.849215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.321266, 23.652964, 21.128304>,  <19.822651, 23.961275, 20.874535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.321266, 23.652964, 21.128304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.375561, 24.046249, 21.177065>,  <20.408138, 24.282221, 21.206322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.375561, 24.046249, 21.177065>,  <20.321266, 23.652964, 21.128304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.375561, 24.046249, 21.177065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078828, -0.111933, 0.990584,
		0.987604, -0.144069, 0.062311,
		0.135738, 0.983217, 0.121903,
		20.416283, 24.341215, 21.213636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.806564, 23.668640, 21.619616>,  <20.321266, 23.652964, 21.128304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.806564, 23.668640, 21.619616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.631081, 24.026604, 21.652285>,  <20.525791, 24.241383, 21.671886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.631081, 24.026604, 21.652285>,  <20.806564, 23.668640, 21.619616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.631081, 24.026604, 21.652285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048401, -0.067222, 0.996563,
		0.897326, 0.441152, -0.013823,
		-0.438707, 0.894911, 0.081672,
		20.499468, 24.295076, 21.676786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.192379, 23.963242, 22.255932>,  <20.806564, 23.668640, 21.619616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.192379, 23.963242, 22.255932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.852524, 24.163250, 22.188889>,  <20.648611, 24.283255, 22.148663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.852524, 24.163250, 22.188889>,  <21.192379, 23.963242, 22.255932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.852524, 24.163250, 22.188889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154719, 0.067493, 0.985651,
		0.504160, 0.863378, 0.020019,
		-0.849638, 0.500023, -0.167608,
		20.597633, 24.313257, 22.138605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.930429, 23.830322, 22.245695>,  <21.192379, 23.963242, 22.255932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.930429, 23.830322, 22.245695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.156879, 23.530209, 22.382271>,  <22.292749, 23.350140, 22.464216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.156879, 23.530209, 22.382271>,  <21.930429, 23.830322, 22.245695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.156879, 23.530209, 22.382271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537740, 0.022201, -0.842819,
		0.624773, 0.660743, 0.416025,
		0.566123, -0.750283, 0.341438,
		22.326715, 23.305124, 22.484701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.583082, 23.954531, 21.988825>,  <21.930429, 23.830322, 22.245695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.583082, 23.954531, 21.988825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.592308, 23.567905, 22.090979>,  <22.597843, 23.335930, 22.152271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.592308, 23.567905, 22.090979>,  <22.583082, 23.954531, 21.988825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.592308, 23.567905, 22.090979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536256, -0.203631, -0.819124,
		0.843740, 0.155843, 0.513630,
		0.023063, -0.966565, 0.255383,
		22.599228, 23.277935, 22.167593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.128036, 23.717066, 21.559063>,  <22.583082, 23.954531, 21.988825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.128036, 23.717066, 21.559063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.947906, 23.375698, 21.664047>,  <22.839828, 23.170877, 21.727037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.947906, 23.375698, 21.664047>,  <23.128036, 23.717066, 21.559063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.947906, 23.375698, 21.664047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306073, -0.423695, -0.852527,
		0.838765, -0.303582, 0.452008,
		-0.450325, -0.853417, 0.262463,
		22.812809, 23.119673, 21.742786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.642567, 23.181534, 21.471401>,  <23.128036, 23.717066, 21.559063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.642567, 23.181534, 21.471401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.280907, 23.011906, 21.450708>,  <23.063911, 22.910128, 21.438293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.280907, 23.011906, 21.450708>,  <23.642567, 23.181534, 21.471401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.280907, 23.011906, 21.450708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259985, -0.450094, -0.854297,
		0.339000, -0.785861, 0.517205,
		-0.904150, -0.424072, -0.051730,
		23.009663, 22.884684, 21.435190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.816944, 22.508951, 21.258247>,  <23.642567, 23.181534, 21.471401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.816944, 22.508951, 21.258247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.423592, 22.549725, 21.198156>,  <23.187580, 22.574188, 21.162102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.423592, 22.549725, 21.198156>,  <23.816944, 22.508951, 21.258247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.423592, 22.549725, 21.198156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066249, -0.568936, -0.819709,
		-0.169026, -0.816040, 0.552729,
		-0.983383, 0.101935, -0.150227,
		23.128576, 22.580305, 21.153088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.613186, 21.855944, 20.996845>,  <23.816944, 22.508951, 21.258247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.613186, 21.855944, 20.996845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.310570, 22.102116, 20.908400>,  <23.129000, 22.249819, 20.855331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.310570, 22.102116, 20.908400>,  <23.613186, 21.855944, 20.996845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.310570, 22.102116, 20.908400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183242, -0.524082, -0.831721,
		-0.627749, -0.588713, 0.509262,
		-0.756540, 0.615431, -0.221115,
		23.083607, 22.286745, 20.842066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.012575, 21.406366, 20.903618>,  <23.613186, 21.855944, 20.996845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.012575, 21.406366, 20.903618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.965973, 21.747654, 20.700268>,  <22.938011, 21.952427, 20.578257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.965973, 21.747654, 20.700268>,  <23.012575, 21.406366, 20.903618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.965973, 21.747654, 20.700268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014816, -0.513299, -0.858082,
		-0.993079, -0.092439, 0.072443,
		-0.116506, 0.853217, -0.508377,
		22.931021, 22.003618, 20.547754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.444220, 20.914024, 20.912346>,  <23.012575, 21.406366, 20.903618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.444220, 20.914024, 20.912346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.710911, 20.616966, 20.937490>,  <22.870926, 20.438730, 20.952578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.710911, 20.616966, 20.937490>,  <22.444220, 20.914024, 20.912346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.710911, 20.616966, 20.937490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027749, 0.059551, 0.997839,
		-0.744786, -0.667031, 0.019097,
		0.666727, -0.742647, 0.062862,
		22.910929, 20.394173, 20.956348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.203657, 20.333706, 21.445591>,  <22.444220, 20.914024, 20.912346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.203657, 20.333706, 21.445591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.601868, 20.323730, 21.409140>,  <22.840794, 20.317745, 21.387268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.601868, 20.323730, 21.409140>,  <22.203657, 20.333706, 21.445591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.601868, 20.323730, 21.409140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091403, 0.010087, 0.995763,
		-0.023919, -0.999638, 0.012322,
		0.995527, -0.024944, -0.091128,
		22.900526, 20.316250, 21.381802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.401094, 19.927710, 21.975121>,  <22.203657, 20.333706, 21.445591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.401094, 19.927710, 21.975121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.747162, 20.094612, 21.863850>,  <22.954802, 20.194754, 21.797087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.747162, 20.094612, 21.863850>,  <22.401094, 19.927710, 21.975121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.747162, 20.094612, 21.863850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289971, 0.036329, 0.956346,
		0.409148, -0.908062, -0.089563,
		0.865167, 0.417258, -0.278176,
		23.006712, 20.219790, 21.780397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.926212, 19.498831, 22.276230>,  <22.401094, 19.927710, 21.975121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.926212, 19.498831, 22.276230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.074760, 19.864162, 22.209398>,  <23.163889, 20.083361, 22.169300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.074760, 19.864162, 22.209398>,  <22.926212, 19.498831, 22.276230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.074760, 19.864162, 22.209398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305174, 0.049880, 0.950989,
		0.876900, -0.404157, -0.260200,
		0.371370, 0.913329, -0.167078,
		23.186172, 20.138161, 22.159275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.635761, 19.532866, 22.529369>,  <22.926212, 19.498831, 22.276230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.635761, 19.532866, 22.529369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.499317, 19.908596, 22.543861>,  <23.417450, 20.134033, 22.552557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.499317, 19.908596, 22.543861>,  <23.635761, 19.532866, 22.529369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.499317, 19.908596, 22.543861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412655, 0.115003, 0.903599,
		0.844606, 0.323178, -0.426846,
		-0.341111, 0.939324, 0.036229,
		23.396984, 20.190393, 22.554729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.119265, 19.795588, 23.069366>,  <23.635761, 19.532866, 22.529369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.119265, 19.795588, 23.069366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.849716, 20.088734, 23.031836>,  <23.687986, 20.264622, 23.009317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.849716, 20.088734, 23.031836>,  <24.119265, 19.795588, 23.069366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.849716, 20.088734, 23.031836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151956, 0.261746, 0.953099,
		0.723052, 0.628011, -0.287747,
		-0.673873, 0.732865, -0.093826,
		23.647554, 20.308594, 23.003687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.381044, 20.333733, 23.399462>,  <24.119265, 19.795588, 23.069366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.381044, 20.333733, 23.399462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.004387, 20.464905, 23.369087>,  <23.778393, 20.543608, 23.350863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.004387, 20.464905, 23.369087>,  <24.381044, 20.333733, 23.399462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.004387, 20.464905, 23.369087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036290, 0.323178, 0.945642,
		0.334646, 0.887703, -0.316220,
		-0.941645, 0.327931, -0.075936,
		23.721893, 20.563284, 23.346306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.443939, 20.973606, 23.703489>,  <24.381044, 20.333733, 23.399462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.443939, 20.973606, 23.703489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.054684, 20.893177, 23.748335>,  <23.821131, 20.844919, 23.775242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.054684, 20.893177, 23.748335>,  <24.443939, 20.973606, 23.703489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.054684, 20.893177, 23.748335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031255, 0.597872, 0.800982,
		-0.228087, 0.775963, -0.588097,
		-0.973139, -0.201074, 0.112114,
		23.762741, 20.832855, 23.781969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.089144, 21.640768, 23.719334>,  <24.443939, 20.973606, 23.703489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.089144, 21.640768, 23.719334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.863213, 21.375786, 23.916159>,  <23.727654, 21.216797, 24.034254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.863213, 21.375786, 23.916159>,  <24.089144, 21.640768, 23.719334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.863213, 21.375786, 23.916159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137988, 0.663712, 0.735150,
		-0.813590, 0.347334, -0.466294,
		-0.564828, -0.662454, 0.492061,
		23.693764, 21.177050, 24.063778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<19.153679, 18.346903, 8.862985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.822170, 18.266758, 9.071980>,  <18.623264, 18.218672, 9.197376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.822170, 18.266758, 9.071980>,  <19.153679, 18.346903, 8.862985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.822170, 18.266758, 9.071980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522030, 0.059464, 0.850851,
		-0.201547, 0.977916, 0.055313,
		-0.828772, -0.200362, 0.522486,
		18.573538, 18.206650, 9.228725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.000782, 18.855867, 9.366742>,  <19.153679, 18.346903, 8.862985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.000782, 18.855867, 9.366742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.825130, 18.513912, 9.477258>,  <18.719740, 18.308739, 9.543567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.825130, 18.513912, 9.477258>,  <19.000782, 18.855867, 9.366742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.825130, 18.513912, 9.477258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401933, 0.088099, 0.911421,
		-0.803502, 0.511280, 0.304920,
		-0.439129, -0.854886, 0.276288,
		18.693392, 18.257446, 9.560144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.890038, 18.978168, 10.064905>,  <19.000782, 18.855867, 9.366742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.890038, 18.978168, 10.064905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.843239, 18.581966, 10.036028>,  <18.815161, 18.344246, 10.018702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.843239, 18.581966, 10.036028>,  <18.890038, 18.978168, 10.064905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.843239, 18.581966, 10.036028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513452, -0.122550, 0.849322,
		-0.850105, 0.062299, 0.522914,
		-0.116995, -0.990505, -0.072193,
		18.808140, 18.284815, 10.014370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.529202, 18.700071, 10.745805>,  <18.890038, 18.978168, 10.064905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.529202, 18.700071, 10.745805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.743202, 18.412785, 10.567844>,  <18.871603, 18.240412, 10.461068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.743202, 18.412785, 10.567844>,  <18.529202, 18.700071, 10.745805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.743202, 18.412785, 10.567844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497156, -0.158139, 0.853128,
		-0.683089, -0.677609, 0.272462,
		0.535001, -0.718218, -0.444901,
		18.903702, 18.197319, 10.434374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.467266, 18.053839, 11.182652>,  <18.529202, 18.700071, 10.745805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.467266, 18.053839, 11.182652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.786610, 18.014359, 10.945035>,  <18.978216, 17.990671, 10.802465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.786610, 18.014359, 10.945035>,  <18.467266, 18.053839, 11.182652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.786610, 18.014359, 10.945035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536964, -0.329837, 0.776451,
		-0.272571, -0.938864, -0.210331,
		0.798357, -0.098698, -0.594041,
		19.026117, 17.984749, 10.766823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.843744, 17.587111, 11.488868>,  <18.467266, 18.053839, 11.182652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.843744, 17.587111, 11.488868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.125645, 17.760609, 11.264300>,  <19.294785, 17.864708, 11.129560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.125645, 17.760609, 11.264300>,  <18.843744, 17.587111, 11.488868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.125645, 17.760609, 11.264300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696889, -0.274956, 0.662379,
		0.132938, -0.858058, -0.496048,
		0.704751, 0.433746, -0.561418,
		19.337070, 17.890732, 11.095875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.356060, 17.223391, 11.537670>,  <18.843744, 17.587111, 11.488868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.356060, 17.223391, 11.537670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.520222, 17.566711, 11.414454>,  <19.618719, 17.772703, 11.340524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.520222, 17.566711, 11.414454>,  <19.356060, 17.223391, 11.537670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.520222, 17.566711, 11.414454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704506, -0.083943, 0.704716,
		0.579001, -0.506235, -0.639128,
		0.410402, 0.858301, -0.308042,
		19.643343, 17.824202, 11.322041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.049650, 17.076221, 11.409609>,  <19.356060, 17.223391, 11.537670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.049650, 17.076221, 11.409609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.073555, 17.473404, 11.450538>,  <20.087898, 17.711714, 11.475095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.073555, 17.473404, 11.450538>,  <20.049650, 17.076221, 11.409609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.073555, 17.473404, 11.450538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730327, -0.113370, 0.673624,
		0.680478, 0.034472, -0.731957,
		0.059761, 0.992955, 0.102322,
		20.091484, 17.771290, 11.481235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.703350, 17.213120, 11.408403>,  <20.049650, 17.076221, 11.409609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.703350, 17.213120, 11.408403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.566429, 17.552563, 11.569744>,  <20.484276, 17.756229, 11.666549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.566429, 17.552563, 11.569744>,  <20.703350, 17.213120, 11.408403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.566429, 17.552563, 11.569744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726432, -0.033247, 0.686434,
		0.595923, 0.527977, -0.605075,
		-0.342304, 0.848607, 0.403353,
		20.463737, 17.807144, 11.690750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.234715, 17.659943, 11.418539>,  <20.703350, 17.213120, 11.408403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.234715, 17.659943, 11.418539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.992172, 17.815659, 11.695893>,  <20.846647, 17.909088, 11.862306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.992172, 17.815659, 11.695893>,  <21.234715, 17.659943, 11.418539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.992172, 17.815659, 11.695893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722136, -0.095516, 0.685125,
		0.332942, 0.916150, -0.223203,
		-0.606357, 0.389290, 0.693386,
		20.810265, 17.932446, 11.903909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.602865, 18.146664, 11.743935>,  <21.234715, 17.659943, 11.418539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.602865, 18.146664, 11.743935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.324287, 18.073765, 12.021568>,  <21.157141, 18.030025, 12.188148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.324287, 18.073765, 12.021568>,  <21.602865, 18.146664, 11.743935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.324287, 18.073765, 12.021568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685000, 0.119431, 0.718687,
		-0.213875, 0.975972, 0.041664,
		-0.696443, -0.182249, 0.694084,
		21.115355, 18.019091, 12.229794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.619295, 18.763283, 12.350055>,  <21.602865, 18.146664, 11.743935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.619295, 18.763283, 12.350055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.441582, 18.445633, 12.515936>,  <21.334953, 18.255043, 12.615464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.441582, 18.445633, 12.515936>,  <21.619295, 18.763283, 12.350055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.441582, 18.445633, 12.515936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597943, 0.081860, 0.797348,
		-0.667141, 0.602217, 0.438472,
		-0.444283, -0.794125, 0.414703,
		21.308296, 18.207396, 12.640347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.291475, 19.348494, 12.506491>,  <21.619295, 18.763283, 12.350055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.291475, 19.348494, 12.506491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.598812, 19.561604, 12.364618>,  <21.783215, 19.689470, 12.279495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.598812, 19.561604, 12.364618>,  <21.291475, 19.348494, 12.506491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.598812, 19.561604, 12.364618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384618, -0.058596, -0.921214,
		-0.511584, 0.844225, 0.159894,
		0.768343, 0.532776, -0.354681,
		21.829315, 19.721436, 12.258214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.964878, 19.801704, 11.931237>,  <21.291475, 19.348494, 12.506491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.964878, 19.801704, 11.931237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.359386, 19.814121, 11.866364>,  <21.596092, 19.821571, 11.827440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.359386, 19.814121, 11.866364>,  <20.964878, 19.801704, 11.931237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.359386, 19.814121, 11.866364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156947, -0.129072, -0.979136,
		-0.051329, 0.991149, -0.122428,
		0.986272, 0.031043, -0.162183,
		21.655268, 19.823435, 11.817710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.090530, 20.207064, 11.338779>,  <20.964878, 19.801704, 11.931237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.090530, 20.207064, 11.338779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.418652, 19.978558, 11.349795>,  <21.615524, 19.841454, 11.356404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.418652, 19.978558, 11.349795>,  <21.090530, 20.207064, 11.338779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.418652, 19.978558, 11.349795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101369, -0.192612, -0.976025,
		0.562871, 0.797847, -0.215909,
		0.820305, -0.571263, 0.027539,
		21.664743, 19.807178, 11.358057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.359472, 20.371094, 10.697755>,  <21.090530, 20.207064, 11.338779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.359472, 20.371094, 10.697755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.543736, 20.035465, 10.813519>,  <21.654293, 19.834089, 10.882977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.543736, 20.035465, 10.813519>,  <21.359472, 20.371094, 10.697755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.543736, 20.035465, 10.813519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064767, -0.293420, -0.953787,
		0.885212, 0.458112, -0.080822,
		0.460656, -0.839070, 0.289410,
		21.681932, 19.783745, 10.900341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.025328, 20.282917, 10.374454>,  <21.359472, 20.371094, 10.697755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.025328, 20.282917, 10.374454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.913139, 19.906452, 10.449872>,  <21.845827, 19.680573, 10.495122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.913139, 19.906452, 10.449872>,  <22.025328, 20.282917, 10.374454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.913139, 19.906452, 10.449872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205023, -0.250634, -0.946123,
		0.937712, -0.226702, 0.263255,
		-0.280469, -0.941164, 0.188543,
		21.828999, 19.624104, 10.506435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.553207, 19.956604, 10.025601>,  <22.025328, 20.282917, 10.374454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.553207, 19.956604, 10.025601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.238144, 19.711781, 10.053835>,  <22.049107, 19.564886, 10.070775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.238144, 19.711781, 10.053835>,  <22.553207, 19.956604, 10.025601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.238144, 19.711781, 10.053835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106724, -0.248371, -0.962768,
		0.606800, -0.750798, 0.260953,
		-0.787657, -0.612057, 0.070583,
		22.001846, 19.528164, 10.075010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.648390, 19.472998, 9.490289>,  <22.553207, 19.956604, 10.025601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.648390, 19.472998, 9.490289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.265190, 19.408878, 9.585401>,  <22.035271, 19.370407, 9.642467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.265190, 19.408878, 9.585401>,  <22.648390, 19.472998, 9.490289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.265190, 19.408878, 9.585401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180881, -0.305641, -0.934808,
		0.222525, -0.938556, 0.263810,
		-0.958000, -0.160300, 0.237779,
		21.977791, 19.360788, 9.656734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.508244, 18.848257, 9.218288>,  <22.648390, 19.472998, 9.490289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.508244, 18.848257, 9.218288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.156448, 19.029202, 9.277439>,  <21.945370, 19.137768, 9.312929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.156448, 19.029202, 9.277439>,  <22.508244, 18.848257, 9.218288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.156448, 19.029202, 9.277439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308186, -0.304564, -0.901256,
		-0.362659, -0.838217, 0.407272,
		-0.879488, 0.452365, 0.147874,
		21.892601, 19.164909, 9.321802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.950806, 18.418413, 8.972362>,  <22.508244, 18.848257, 9.218288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.950806, 18.418413, 8.972362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.767258, 18.773808, 8.974664>,  <21.657129, 18.987043, 8.976046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.767258, 18.773808, 8.974664>,  <21.950806, 18.418413, 8.972362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.767258, 18.773808, 8.974664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082897, -0.036361, -0.995895,
		-0.884628, -0.457464, 0.090337,
		-0.458870, 0.888485, 0.005757,
		21.629597, 19.040354, 8.976391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.299055, 18.397453, 8.719932>,  <21.950806, 18.418413, 8.972362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.299055, 18.397453, 8.719932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.362007, 18.790928, 8.685090>,  <21.399778, 19.027014, 8.664185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.362007, 18.790928, 8.685090>,  <21.299055, 18.397453, 8.719932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.362007, 18.790928, 8.685090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351683, -0.026593, -0.935742,
		-0.922795, 0.177902, 0.341761,
		0.157382, 0.983689, -0.087105,
		21.409222, 19.086035, 8.658958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.709297, 18.785797, 8.417965>,  <21.299055, 18.397453, 8.719932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.709297, 18.785797, 8.417965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.045830, 18.991615, 8.351746>,  <21.247749, 19.115107, 8.312015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.045830, 18.991615, 8.351746>,  <20.709297, 18.785797, 8.417965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.045830, 18.991615, 8.351746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241817, 0.084390, -0.966645,
		-0.483412, 0.853300, 0.195426,
		0.841331, 0.514545, -0.165548,
		21.298229, 19.145979, 8.302081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.509792, 19.324411, 8.112787>,  <20.709297, 18.785797, 8.417965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.509792, 19.324411, 8.112787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.902542, 19.308956, 8.038564>,  <21.138191, 19.299683, 7.994030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.902542, 19.308956, 8.038564>,  <20.509792, 19.324411, 8.112787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.902542, 19.308956, 8.038564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180497, 0.108138, -0.977613,
		0.057839, 0.993385, 0.099204,
		0.981873, -0.038638, -0.185558,
		21.197104, 19.297365, 7.982896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.538822, 19.649563, 7.573907>,  <20.509792, 19.324411, 8.112787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.538822, 19.649563, 7.573907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.914776, 19.516365, 7.543622>,  <21.140348, 19.436447, 7.525451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.914776, 19.516365, 7.543622>,  <20.538822, 19.649563, 7.573907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.914776, 19.516365, 7.543622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075163, 0.014556, -0.997065,
		0.333119, 0.942816, -0.011348,
		0.939884, -0.332995, -0.075713,
		21.196741, 19.416466, 7.520908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.826365, 20.160648, 7.072091>,  <20.538822, 19.649563, 7.573907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.826365, 20.160648, 7.072091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.085068, 19.855698, 7.080907>,  <21.240290, 19.672728, 7.086196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.085068, 19.855698, 7.080907>,  <20.826365, 20.160648, 7.072091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.085068, 19.855698, 7.080907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112187, -0.123676, -0.985960,
		0.754400, 0.635205, -0.165517,
		0.646757, -0.762377, 0.022039,
		21.279095, 19.626984, 7.087519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.433758, 20.413574, 6.591988>,  <20.826365, 20.160648, 7.072091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.433758, 20.413574, 6.591988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.105850, 20.641323, 6.616612>,  <19.909105, 20.777973, 6.631387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.105850, 20.641323, 6.616612>,  <20.433758, 20.413574, 6.591988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.105850, 20.641323, 6.616612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479076, 0.622892, 0.618459,
		0.313788, 0.536487, -0.783402,
		-0.819770, 0.569374, 0.061562,
		19.859919, 20.812136, 6.635081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.694178, 21.093554, 6.707276>,  <20.433758, 20.413574, 6.591988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.694178, 21.093554, 6.707276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.328178, 21.085503, 6.868459>,  <20.108580, 21.080673, 6.965168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.328178, 21.085503, 6.868459>,  <20.694178, 21.093554, 6.707276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.328178, 21.085503, 6.868459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269427, 0.712942, 0.647397,
		-0.300315, 0.700934, -0.646918,
		-0.914997, -0.020126, 0.402957,
		20.053679, 21.079466, 6.989346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.486872, 21.839176, 6.884161>,  <20.694178, 21.093554, 6.707276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.486872, 21.839176, 6.884161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.263447, 21.585754, 7.098308>,  <20.129393, 21.433701, 7.226795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.263447, 21.585754, 7.098308>,  <20.486872, 21.839176, 6.884161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.263447, 21.585754, 7.098308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212978, 0.514251, 0.830774,
		-0.801655, 0.578059, -0.152307,
		-0.558560, -0.633556, 0.535366,
		20.095879, 21.395687, 7.258917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.886330, 22.212111, 7.217637>,  <20.486872, 21.839176, 6.884161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.886330, 22.212111, 7.217637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.925587, 21.874844, 7.429084>,  <19.949141, 21.672483, 7.555952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.925587, 21.874844, 7.429084>,  <19.886330, 22.212111, 7.217637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.925587, 21.874844, 7.429084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116647, 0.517774, 0.847528,
		-0.988312, -0.144842, -0.047537,
		0.098144, -0.843167, 0.528618,
		19.955030, 21.621893, 7.587669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.268591, 22.235117, 7.556239>,  <19.886330, 22.212111, 7.217637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.268591, 22.235117, 7.556239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.527824, 21.995781, 7.744696>,  <19.683365, 21.852180, 7.857770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.527824, 21.995781, 7.744696>,  <19.268591, 22.235117, 7.556239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.527824, 21.995781, 7.744696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141146, 0.513561, 0.846364,
		-0.748373, -0.615017, 0.248378,
		0.648086, -0.598339, 0.471143,
		19.722250, 21.816278, 7.886038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.004469, 22.312080, 8.136319>,  <19.268591, 22.235117, 7.556239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.004469, 22.312080, 8.136319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.357521, 22.143169, 8.218925>,  <19.569353, 22.041822, 8.268488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.357521, 22.143169, 8.218925>,  <19.004469, 22.312080, 8.136319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.357521, 22.143169, 8.218925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056857, 0.340196, 0.938634,
		-0.466618, -0.840208, 0.276257,
		0.882630, -0.422276, 0.206513,
		19.622311, 22.016487, 8.280878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.936575, 22.019005, 8.775146>,  <19.004469, 22.312080, 8.136319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.936575, 22.019005, 8.775146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.330433, 22.079018, 8.739454>,  <19.566748, 22.115025, 8.718040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.330433, 22.079018, 8.739454>,  <18.936575, 22.019005, 8.775146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.330433, 22.079018, 8.739454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027159, 0.373263, 0.927328,
		0.172431, -0.915514, 0.363458,
		0.984647, 0.150029, -0.089227,
		19.625828, 22.124027, 8.712687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.293793, 21.726610, 9.501781>,  <18.936575, 22.019005, 8.775146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.293793, 21.726610, 9.501781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.561718, 21.962170, 9.320873>,  <19.722473, 22.103506, 9.212328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.561718, 21.962170, 9.320873>,  <19.293793, 21.726610, 9.501781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.561718, 21.962170, 9.320873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348947, 0.287999, 0.891792,
		0.655428, -0.755153, -0.012589,
		0.669813, 0.588898, -0.452271,
		19.762663, 22.138840, 9.185192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.949024, 21.601189, 9.835101>,  <19.293793, 21.726610, 9.501781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.949024, 21.601189, 9.835101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.988510, 21.958794, 9.660287>,  <20.012201, 22.173357, 9.555399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.988510, 21.958794, 9.660287>,  <19.949024, 21.601189, 9.835101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.988510, 21.958794, 9.660287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330697, 0.384748, 0.861748,
		0.938560, -0.229593, -0.257666,
		0.098715, 0.894011, -0.437035,
		20.018126, 22.226997, 9.529177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.604071, 21.953892, 10.053797>,  <19.949024, 21.601189, 9.835101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.604071, 21.953892, 10.053797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.355602, 22.242413, 9.931244>,  <20.206522, 22.415525, 9.857712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.355602, 22.242413, 9.931244>,  <20.604071, 21.953892, 10.053797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.355602, 22.242413, 9.931244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215386, 0.533034, 0.818219,
		0.753497, 0.442262, -0.486463,
		-0.621169, 0.721303, -0.306383,
		20.169252, 22.458803, 9.839329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.939606, 22.541611, 10.218289>,  <20.604071, 21.953892, 10.053797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.939606, 22.541611, 10.218289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.561729, 22.657413, 10.156649>,  <20.335005, 22.726896, 10.119664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.561729, 22.657413, 10.156649>,  <20.939606, 22.541611, 10.218289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.561729, 22.657413, 10.156649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028561, 0.540707, 0.840726,
		0.326722, 0.789823, -0.519069,
		-0.944689, 0.289509, -0.154103,
		20.278322, 22.744267, 10.110417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.972073, 23.212593, 10.449944>,  <20.939606, 22.541611, 10.218289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.972073, 23.212593, 10.449944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.584332, 23.115803, 10.432952>,  <20.351686, 23.057730, 10.422757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.584332, 23.115803, 10.432952>,  <20.972073, 23.212593, 10.449944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.584332, 23.115803, 10.432952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131243, 0.363872, 0.922156,
		-0.207681, 0.899470, -0.384477,
		-0.969352, -0.241974, -0.042480,
		20.293526, 23.043211, 10.420208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.683056, 23.745852, 10.692256>,  <20.972073, 23.212593, 10.449944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.683056, 23.745852, 10.692256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.449348, 23.425716, 10.746052>,  <20.309124, 23.233635, 10.778329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.449348, 23.425716, 10.746052>,  <20.683056, 23.745852, 10.692256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.449348, 23.425716, 10.746052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123449, 0.251435, 0.959969,
		-0.802116, 0.544278, -0.245706,
		-0.584270, -0.800339, 0.134489,
		20.274067, 23.185616, 10.786399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.109997, 23.941053, 11.159231>,  <20.683056, 23.745852, 10.692256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.109997, 23.941053, 11.159231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.087730, 23.543190, 11.194000>,  <20.074371, 23.304472, 11.214862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.087730, 23.543190, 11.194000>,  <20.109997, 23.941053, 11.159231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.087730, 23.543190, 11.194000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002160, 0.086936, 0.996212,
		-0.998447, 0.055642, -0.002691,
		-0.055665, -0.994659, 0.086922,
		20.071032, 23.244793, 11.220077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.709333, 23.911900, 11.650907>,  <20.109997, 23.941053, 11.159231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.709333, 23.911900, 11.650907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.863575, 23.544056, 11.620895>,  <19.956120, 23.323349, 11.602889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.863575, 23.544056, 11.620895>,  <19.709333, 23.911900, 11.650907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.863575, 23.544056, 11.620895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160186, -0.146805, 0.976109,
		-0.908653, -0.364373, -0.203917,
		0.385603, -0.919609, -0.075027,
		19.979256, 23.268173, 11.598388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.145510, 23.352413, 11.788838>,  <19.709333, 23.911900, 11.650907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.145510, 23.352413, 11.788838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.500736, 23.184299, 11.863352>,  <19.713871, 23.083431, 11.908060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.500736, 23.184299, 11.863352>,  <19.145510, 23.352413, 11.788838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.500736, 23.184299, 11.863352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255985, -0.115506, 0.959755,
		-0.381855, -0.900010, -0.210164,
		0.888064, -0.420286, 0.186282,
		19.767155, 23.058214, 11.919236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.962217, 22.864088, 12.315090>,  <19.145510, 23.352413, 11.788838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.962217, 22.864088, 12.315090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.353542, 22.943104, 12.340028>,  <19.588337, 22.990513, 12.354990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.353542, 22.943104, 12.340028>,  <18.962217, 22.864088, 12.315090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.353542, 22.943104, 12.340028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062711, -0.004400, 0.998022,
		0.197425, -0.980285, 0.008083,
		0.978310, 0.197541, 0.062343,
		19.647036, 23.002367, 12.358731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.211430, 22.343048, 12.728757>,  <18.962217, 22.864088, 12.315090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.211430, 22.343048, 12.728757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.481926, 22.637691, 12.724636>,  <19.644224, 22.814478, 12.722163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.481926, 22.637691, 12.724636>,  <19.211430, 22.343048, 12.728757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.481926, 22.637691, 12.724636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057064, -0.038435, 0.997631,
		0.734468, -0.675226, -0.068026,
		0.676240, 0.736609, -0.010302,
		19.684797, 22.858675, 12.721545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.710402, 22.206341, 13.268403>,  <19.211430, 22.343048, 12.728757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.710402, 22.206341, 13.268403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.737144, 22.598034, 13.191844>,  <19.753191, 22.833050, 13.145908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.737144, 22.598034, 13.191844>,  <19.710402, 22.206341, 13.268403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.737144, 22.598034, 13.191844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093496, 0.184834, 0.978312,
		0.993372, -0.083304, -0.079196,
		0.066859, 0.979233, -0.191398,
		19.757202, 22.891804, 13.134424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.252811, 22.442007, 13.704715>,  <19.710402, 22.206341, 13.268403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.252811, 22.442007, 13.704715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.086437, 22.799381, 13.636865>,  <19.986612, 23.013805, 13.596154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.086437, 22.799381, 13.636865>,  <20.252811, 22.442007, 13.704715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.086437, 22.799381, 13.636865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170084, 0.259662, 0.950604,
		0.893348, 0.366537, -0.259961,
		-0.415934, 0.893435, -0.169626,
		19.961657, 23.067411, 13.585977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.592409, 22.891150, 14.128492>,  <20.252811, 22.442007, 13.704715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.592409, 22.891150, 14.128492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.284946, 23.123310, 14.020938>,  <20.100468, 23.262606, 13.956405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.284946, 23.123310, 14.020938>,  <20.592409, 22.891150, 14.128492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.284946, 23.123310, 14.020938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178863, 0.598614, 0.780813,
		0.614143, 0.552085, -0.563942,
		-0.768659, 0.580400, -0.268887,
		20.054348, 23.297430, 13.940271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.828146, 23.598209, 14.061904>,  <20.592409, 22.891150, 14.128492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.828146, 23.598209, 14.061904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.443897, 23.583023, 14.172006>,  <20.213348, 23.573912, 14.238067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.443897, 23.583023, 14.172006>,  <20.828146, 23.598209, 14.061904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.443897, 23.583023, 14.172006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212133, 0.539598, 0.814760,
		-0.179460, 0.841066, -0.510296,
		-0.960622, -0.037966, 0.275254,
		20.155710, 23.571632, 14.254581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.680695, 24.209490, 14.311890>,  <20.828146, 23.598209, 14.061904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.680695, 24.209490, 14.311890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.363403, 24.031757, 14.478436>,  <20.173029, 23.925117, 14.578364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.363403, 24.031757, 14.478436>,  <20.680695, 24.209490, 14.311890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.363403, 24.031757, 14.478436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048890, 0.635095, 0.770886,
		-0.606960, 0.631844, -0.482051,
		-0.793227, -0.444329, 0.416368,
		20.125435, 23.898458, 14.603347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.304558, 24.749050, 14.704085>,  <20.680695, 24.209490, 14.311890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.304558, 24.749050, 14.704085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.163593, 24.399391, 14.837754>,  <20.079014, 24.189596, 14.917955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.163593, 24.399391, 14.837754>,  <20.304558, 24.749050, 14.704085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.163593, 24.399391, 14.837754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004068, 0.358508, 0.933518,
		-0.935836, 0.327624, -0.129899,
		-0.352413, -0.874148, 0.334172,
		20.057869, 24.137146, 14.938005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.890949, 24.910917, 15.290094>,  <20.304558, 24.749050, 14.704085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.890949, 24.910917, 15.290094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.958931, 24.518986, 15.332147>,  <19.999720, 24.283827, 15.357378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.958931, 24.518986, 15.332147>,  <19.890949, 24.910917, 15.290094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.958931, 24.518986, 15.332147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107367, 0.124459, 0.986399,
		-0.979586, -0.156355, 0.126353,
		0.169954, -0.979828, 0.105131,
		20.009916, 24.225037, 15.363686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.432211, 24.729671, 15.797557>,  <19.890949, 24.910917, 15.290094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.432211, 24.729671, 15.797557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.714653, 24.446430, 15.796531>,  <19.884117, 24.276485, 15.795915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.714653, 24.446430, 15.796531>,  <19.432211, 24.729671, 15.797557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.714653, 24.446430, 15.796531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088127, 0.084282, 0.992537,
		-0.702603, -0.701061, 0.121915,
		0.706104, -0.708103, -0.002565,
		19.926485, 24.233999, 15.795761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.219528, 24.221695, 16.315119>,  <19.432211, 24.729671, 15.797557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.219528, 24.221695, 16.315119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.609905, 24.152847, 16.261591>,  <19.844131, 24.111540, 16.229473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.609905, 24.152847, 16.261591>,  <19.219528, 24.221695, 16.315119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.609905, 24.152847, 16.261591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110557, -0.138329, 0.984196,
		-0.187911, -0.975315, -0.115973,
		0.975944, -0.172120, -0.133822,
		19.902689, 24.101212, 16.221445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.390879, 23.675493, 16.640795>,  <19.219528, 24.221695, 16.315119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.390879, 23.675493, 16.640795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.730896, 23.885841, 16.628887>,  <19.934906, 24.012051, 16.621742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.730896, 23.885841, 16.628887>,  <19.390879, 23.675493, 16.640795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.730896, 23.885841, 16.628887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089824, -0.089038, 0.991970,
		0.518995, -0.845893, -0.122922,
		0.850045, 0.525869, -0.029771,
		19.985909, 24.043602, 16.619955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.286167, 22.844286, 16.742880>,  <19.390879, 23.675493, 16.640795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.286167, 22.844286, 16.742880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.979221, 22.681221, 16.940853>,  <18.795053, 22.583382, 17.059637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.979221, 22.681221, 16.940853>,  <19.286167, 22.844286, 16.742880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.979221, 22.681221, 16.940853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403734, -0.292475, -0.866866,
		0.498145, -0.865026, 0.059848,
		-0.767366, -0.407663, 0.494935,
		18.749012, 22.558922, 17.089334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.283806, 22.087631, 16.624613>,  <19.286167, 22.844286, 16.742880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.283806, 22.087631, 16.624613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.916416, 22.209324, 16.725683>,  <18.695982, 22.282339, 16.786325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.916416, 22.209324, 16.725683>,  <19.283806, 22.087631, 16.624613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.916416, 22.209324, 16.725683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357983, -0.368027, -0.858140,
		-0.168081, -0.878635, 0.446934,
		-0.918475, 0.304231, 0.252678,
		18.640873, 22.300594, 16.801487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.831795, 21.499804, 16.499550>,  <19.283806, 22.087631, 16.624613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.831795, 21.499804, 16.499550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.593750, 21.821167, 16.507339>,  <18.450924, 22.013985, 16.512012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.593750, 21.821167, 16.507339>,  <18.831795, 21.499804, 16.499550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.593750, 21.821167, 16.507339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402228, -0.276793, -0.872696,
		-0.695741, -0.527183, 0.487876,
		-0.595111, 0.803408, 0.019472,
		18.415216, 22.062189, 16.513182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.166069, 21.192316, 16.352814>,  <18.831795, 21.499804, 16.499550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.166069, 21.192316, 16.352814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.169731, 21.572784, 16.229401>,  <18.171928, 21.801065, 16.155354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.169731, 21.572784, 16.229401>,  <18.166069, 21.192316, 16.352814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.169731, 21.572784, 16.229401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522638, -0.258498, -0.812421,
		-0.852505, 0.168688, 0.494751,
		0.009153, 0.951170, -0.308533,
		18.172478, 21.858135, 16.136841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.571297, 21.179031, 15.970826>,  <18.166069, 21.192316, 16.352814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.571297, 21.179031, 15.970826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.751534, 21.519806, 15.864112>,  <17.859674, 21.724270, 15.800083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.751534, 21.519806, 15.864112>,  <17.571297, 21.179031, 15.970826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.751534, 21.519806, 15.864112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288183, -0.144035, -0.946681,
		-0.844938, 0.503448, 0.180612,
		0.450590, 0.851936, -0.266786,
		17.886711, 21.775387, 15.784076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
